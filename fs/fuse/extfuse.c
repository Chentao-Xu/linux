#include "asm/ptrace.h"
#include "extfuse_i.h"
#include "linux/filter.h"
#include "linux/uaccess.h"

#undef pr_fmt
#define pr_fmt(fmt)	"ExtFUSE: " fmt
static void rfuseargtransformerfromfc(const void **arg,struct fuse_conn *fc,struct rfuse_req *r_req,unsigned int index){
	struct rfuse_iqueue *riq;
	riq = rfuse_get_specific_iqueue(fc, r_req->riq_id);
	*arg = (const void *)&riq->karg[index];
}
static void rfuseargtransformerfromfcout(void **arg,struct fuse_conn *fc,struct rfuse_req *r_req,unsigned int index){
	struct rfuse_iqueue *riq;
	riq = rfuse_get_specific_iqueue(fc, r_req->riq_id);
	*arg = (const void *)&riq->karg[index];
}
static void fuseargtransformerfromfc(const void *arg,struct fuse_conn *fc,struct rfuse_req *r_req,unsigned int index){
	struct rfuse_iqueue *riq;
	riq = rfuse_get_specific_iqueue(fc, r_req->riq_id);
	memcpy(&riq->karg[index], arg, r_req->out.arglen);
}

static uint8_t get_opcode_arg_count(uint32_t opcode) {
    static const uint8_t arg_count_inmap[] = {
        [FUSE_LOOKUP]    = 1,   // 需要文件名参数
        [FUSE_GETATTR]   = 1,   // 文件属性请求
		[FUSE_SETATTR]   = 1,
		[FUSE_READLINK]  = 0,
		[FUSE_SYMLINK]   = 2,
		//FUSE_MKNOD无
		[FUSE_MKDIR]     = 2,
		[FUSE_UNLINK]    = 1,
		[FUSE_RMDIR]     = 1,
		[FUSE_RENAME]    = 3,
		[FUSE_LINK]      = 2,
		[FUSE_OPEN]      = 1,
		[FUSE_READ]      = 1,
		[FUSE_WRITE]     = 2,
		[FUSE_STATFS]    = 0,
		[FUSE_RELEASE]   = 1,
		[FUSE_FSYNC]     = 1,
		[FUSE_FLUSH]     = 1,
		[FUSE_INIT]      = 1,
		[FUSE_OPENDIR]   = 1,
		[FUSE_READDIR]   = 1,
		[FUSE_RELEASEDIR]= 1,
		[FUSE_FSYNCDIR]  = 1,
		[FUSE_ACCESS]    = 1,
		[FUSE_CREATE]    = 2,
		[FUSE_DESTROY]   = 0,
		[FUSE_FALLOCATE] = 1,
		[FUSE_READDIRPLUS]   = 1,
		[FUSE_RENAME2]   = 3,
    };
    return   arg_count_inmap[opcode];
}
static uint8_t get_opcode_arg_count2(uint32_t opcode) {
    static const uint8_t arg_count_outmap[] = {
        [FUSE_LOOKUP]    = 1,   // 需要文件名参数
        [FUSE_GETATTR]   = 1,   // 文件属性请求
		[FUSE_SETATTR]   = 1,
		[FUSE_READLINK]  = 1,
		[FUSE_SYMLINK]   = 1,
		//FUSE_MKNOD无
		[FUSE_MKDIR]     = 1,
		[FUSE_UNLINK]    = 0,
		[FUSE_RMDIR]     = 0,
		[FUSE_RENAME]    = 0,
		[FUSE_LINK]      = 1,
		[FUSE_OPEN]      = 1,
		[FUSE_READ]      = 1,
		[FUSE_WRITE]     = 1,
		[FUSE_STATFS]    = 1,
		[FUSE_RELEASE]   = 0,
		[FUSE_FSYNC]     = 0,
		[FUSE_FLUSH]     = 0,
		[FUSE_INIT]      = 1,
		[FUSE_OPENDIR]   = 1,
		[FUSE_READDIR]   = 1,
		[FUSE_RELEASE]   = 0,
		[FUSE_FSYNCDIR]  = 0,
		[FUSE_ACCESS]    = 0,
		[FUSE_CREATE]    = 2,
		[FUSE_DESTROY]   = 0,
		[FUSE_FALLOCATE] = 0,
		[FUSE_READDIRPLUS]   = 1,
		[FUSE_RENAME2]   = 0,
    };
    return  arg_count_outmap[opcode];
}
static void rfusearg_to_fusearg(struct fuse_conn *fc,struct rfuse_req *r_req,struct extfuse_req *ereq)
{
	ereq->in.numargs = get_opcode_arg_count(r_req->in.opcode);
	ereq->out.argvar = r_req->out_argvar;
	ereq->out.numargs = get_opcode_arg_count2(r_req->in.opcode);

	switch(r_req->in.opcode){
		case FUSE_LOOKUP:
			ereq->in.args[0].size=r_req->in.arglen[0];
			rfuseargtransformerfromfc(&ereq->in.args[0].value,fc,r_req,r_req->in.arg[0]);
			ereq->out.args[0].size=r_req->out.arglen;
			rfuseargtransformerfromfcout(&ereq->out.args[0].value,fc,r_req,r_req->out.arg);
			break;
		case FUSE_GETATTR:
			ereq->in.args[0].size=sizeof(struct fuse_getattr_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->out.args[0].size=sizeof(struct fuse_attr_out);
			ereq->out.args[0].value=&r_req->args;
			//printk("aaabbbereq->in.h.nodeid:%d\n",ereq->in.h.nodeid);
			break;
		case FUSE_SETATTR:
			ereq->in.args[0].size=sizeof(struct fuse_setattr_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->out.args[0].size=sizeof(struct fuse_attr_out);
			ereq->out.args[0].value=&r_req->args;
			break;
		case FUSE_READLINK:
			ereq->out.args[0].size=r_req->out.arglen;
			break;
		case FUSE_SYMLINK:
			ereq->in.args[0].size=r_req->in.arglen[0];
			rfuseargtransformerfromfc(&ereq->in.args[0].value,fc,r_req,r_req->in.arg[0]);
			ereq->in.args[1].size=r_req->in.arglen[1];
			rfuseargtransformerfromfc(&ereq->in.args[1].value,fc,r_req,r_req->in.arg[1]);
			ereq->out.args[0].size=r_req->out.arglen;
			rfuseargtransformerfromfcout(&ereq->out.args[0].value,fc,r_req,r_req->out.arg);
			break;
		case FUSE_MKDIR:
			ereq->in.args[0].size=sizeof(struct fuse_mkdir_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->in.args[1].size=r_req->in.arglen[0];
			rfuseargtransformerfromfc(&ereq->in.args[1].value,fc,r_req,r_req->in.arg[0]);
			ereq->out.args[0].size=r_req->out.arglen;
			rfuseargtransformerfromfcout(&ereq->out.args[0].value,fc,r_req,r_req->out.arg);
			break;
		case FUSE_UNLINK:
			ereq->in.args[0].size=r_req->in.arglen[0];
			rfuseargtransformerfromfc(&ereq->in.args[0].value,fc,r_req,r_req->in.arg[0]);
			break;
		case FUSE_RMDIR:
			ereq->in.args[0].size=r_req->in.arglen[0];
			rfuseargtransformerfromfc(&ereq->in.args[0].value,fc,r_req,r_req->in.arg[0]);
			break;
		case FUSE_RENAME:
			ereq->in.args[0].size=sizeof(struct fuse_rename2_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->in.args[1].size=r_req->in.arglen[0];
			rfuseargtransformerfromfc(&ereq->in.args[1].value,fc,r_req,r_req->in.arg[0]);
			ereq->in.args[2].size=r_req->in.arglen[1];
			rfuseargtransformerfromfc(&ereq->in.args[2].value,fc,r_req,r_req->in.arg[1]);
			break;
		case FUSE_LINK:
			ereq->in.args[0].size=sizeof(struct fuse_link_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->in.args[1].size=r_req->in.arglen[0];
			rfuseargtransformerfromfc(&ereq->in.args[1].value,fc,r_req,r_req->in.arg[0]);
			ereq->out.args[0].size=r_req->out.arglen;
			rfuseargtransformerfromfcout(&ereq->out.args[0].value,fc,r_req,r_req->out.arg);
			break;
		case FUSE_OPEN:
			ereq->in.args[0].size=sizeof(struct fuse_open_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->out.args[0].size=sizeof(struct fuse_open_in);
			ereq->out.args[0].value=&r_req->args;
			break;
		case FUSE_READ:
			ereq->in.args[0].size=sizeof(struct fuse_read_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->out.args[0].size=r_req->out.arglen;
			break;
		case FUSE_WRITE:
			ereq->in.args[0].size=sizeof(struct fuse_write_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->in.args[1].size=r_req->in.arglen[0];
			ereq->out.args[0].size=sizeof(struct fuse_write_out);
			ereq->out.args[0].value=&r_req->args;
			break;
		case FUSE_STATFS:
			ereq->out.args[0].size=sizeof(struct fuse_statfs_out);
			ereq->out.args[0].value=&r_req->args;
			break;
		case FUSE_RELEASE:
			ereq->in.args[0].size=sizeof(struct fuse_release_in);
			ereq->in.args[0].value=&r_req->args;
			break;
		case FUSE_FSYNC:
			ereq->in.args[0].size=sizeof(struct fuse_fsync_in);
			ereq->in.args[0].value=&r_req->args;
			break;
		case FUSE_FLUSH:
			ereq->in.args[0].size=sizeof(struct fuse_flush_in);
			ereq->in.args[0].value=&r_req->args;
			break;
		case FUSE_INIT:
			ereq->in.args[0].size=sizeof(struct fuse_init_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->out.args[0].size=sizeof(struct fuse_statfs_out);
			ereq->out.args[0].value=&r_req->args;
			break;
		case FUSE_OPENDIR:
			ereq->in.args[0].size=sizeof(struct fuse_open_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->out.args[0].size=sizeof(struct fuse_open_in);
			ereq->out.args[0].value=&r_req->args;
			break;
		case FUSE_READDIR:
			ereq->in.args[0].size=sizeof(struct fuse_read_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->out.args[0].size=r_req->out.arglen;
			break;
		case FUSE_RELEASEDIR:
			ereq->in.args[0].size=sizeof(struct fuse_release_in);
			ereq->in.args[0].value=&r_req->args;
			break;
		case FUSE_FSYNCDIR:
			ereq->in.args[0].size=sizeof(struct fuse_fsync_in);
			ereq->in.args[0].value=&r_req->args;
			break;
		case FUSE_ACCESS:
			ereq->in.args[0].size=sizeof(struct fuse_access_in);
			ereq->in.args[0].value=&r_req->args;
			break;
		case FUSE_CREATE:
			ereq->in.args[0].size=sizeof(struct fuse_create_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->in.args[1].size=r_req->in.arglen[0];
			rfuseargtransformerfromfc(&ereq->in.args[1].value,fc,r_req,r_req->in.arg[0]);
			ereq->out.args[0].size=r_req->out.arglen;
			rfuseargtransformerfromfcout(&ereq->out.args[0].value,fc,r_req,r_req->out.arg);
			ereq->out.args[1].size=sizeof(struct fuse_open_out);
			ereq->out.args[1].value=&r_req->args;
			break;
		case FUSE_FALLOCATE:
			ereq->in.args[0].size=sizeof(struct fuse_fallocate_in);
			ereq->in.args[0].value=&r_req->args;
			break;
		case FUSE_READDIRPLUS:
			ereq->in.args[0].size=sizeof(struct fuse_read_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->out.args[0].size=r_req->out.arglen;
			break;
		case FUSE_RENAME2:
			ereq->in.args[0].size=sizeof(struct fuse_rename2_in);
			ereq->in.args[0].value=&r_req->args;
			ereq->in.args[1].size=r_req->in.arglen[0];
			rfuseargtransformerfromfc(&ereq->in.args[1].value,fc,r_req,r_req->in.arg[0]);
			ereq->in.args[1].value=r_req->in.arg[0];
			ereq->in.args[2].size=r_req->in.arglen[1];
			rfuseargtransformerfromfc(&ereq->in.args[2].value,fc,r_req,r_req->in.arg[1]);
			break;
		default:
			break;
		}
}
static void fusearg_to_rfuseargout(struct fuse_conn *fc,struct rfuse_req *r_req,struct extfuse_req *ereq)
{
	switch(r_req->in.opcode){
		case FUSE_LOOKUP:
			r_req->out.arglen = ereq->out.args[0].size;
			fuseargtransformerfromfc(ereq->out.args[0].value,fc,r_req,r_req->out.arg);
			break;
		case FUSE_GETATTR:
			memcpy(&r_req->args, ereq->out.args[0].value, ereq->out.args[0].size);
			break;
		case FUSE_SETATTR:
			memcpy(&r_req->args, ereq->out.args[0].value, ereq->out.args[0].size);
			break;
		case FUSE_READLINK:
			r_req->out.arglen = ereq->out.args[0].size;
			break;
		case FUSE_SYMLINK:
			r_req->out.arglen = ereq->out.args[0].size;
			fuseargtransformerfromfc(ereq->out.args[0].value,fc,r_req,r_req->out.arg);
			break;
		case FUSE_MKDIR:
			r_req->out.arglen = ereq->out.args[0].size;
			fuseargtransformerfromfc(ereq->out.args[0].value,fc,r_req,r_req->out.arg);
			break;
		case FUSE_UNLINK:
			break;
		case FUSE_RMDIR:
			break;
		case FUSE_RENAME:
			break;
		case FUSE_LINK:
			r_req->out.arglen = ereq->out.args[0].size;
			fuseargtransformerfromfc(ereq->out.args[0].value,fc,r_req,r_req->out.arg);
			break;
		case FUSE_OPEN:
			memcpy(&r_req->args, ereq->out.args[0].value, ereq->out.args[0].size);
			break;
		case FUSE_READ:
			r_req->out.arglen = ereq->out.args[0].size;
			break;
		case FUSE_WRITE:
			memcpy(&r_req->args, ereq->out.args[0].value, ereq->out.args[0].size);
			break;
		case FUSE_STATFS:
			memcpy(&r_req->args, ereq->out.args[0].value, ereq->out.args[0].size);
			break;
		case FUSE_RELEASE:
			break;
		case FUSE_FSYNC:
			break;
		case FUSE_FLUSH:
			break;
		case FUSE_INIT:
			memcpy(&r_req->args, ereq->out.args[0].value, ereq->out.args[0].size);
			break;
		case FUSE_OPENDIR:
			memcpy(&r_req->args, ereq->out.args[0].value, ereq->out.args[0].size);
			break;
		case FUSE_READDIR:
			r_req->out.arglen = ereq->out.args[0].size;
			break;
		case FUSE_RELEASEDIR:
			break;
		case FUSE_FSYNCDIR:
			break;
		case FUSE_ACCESS:
			break;
		case FUSE_CREATE:
			r_req->out.arglen = ereq->out.args[0].size;
			fuseargtransformerfromfc(ereq->out.args[0].value,fc,r_req,r_req->out.arg);
			memcpy(&r_req->args, ereq->out.args[1].value, ereq->out.args[1].size);
			break;
		case FUSE_FALLOCATE:
			break;
		case FUSE_READDIRPLUS:
			r_req->out.arglen = ereq->out.args[0].size;
			break;
		case FUSE_RENAME2:
			break;
		default:
			break;
		}
}
/* create a copy of args for extfuse request handlers */
static void rfuse_to_extfuse_req(struct fuse_conn *fc,struct rfuse_req *r_req,
		struct extfuse_req *ereq)
{
	ereq->in.h.opcode = r_req->in.opcode;
	ereq->in.h.nodeid = r_req->in.nodeid;
	rfusearg_to_fusearg(fc,r_req,ereq);
}
static void fuse_to_extfuse_req(struct fuse_req *req,
		struct extfuse_req *ereq)
{
	ereq->in.h.opcode = req->in.h.opcode;
	ereq->in.h.nodeid = req->in.h.nodeid;
	ereq->in.numargs = req->args->in_numargs;
	memcpy(ereq->in.args, req->args->in_args,
			req->args->in_numargs * sizeof(struct fuse_in_arg));
	ereq->out.argvar = req->args->out_argvar;
	ereq->out.numargs = req->args->out_numargs;
	memcpy(ereq->out.args, req->args->out_args,
			req->args->out_numargs * sizeof(struct fuse_arg));
}
static void extfuse_to_rfuse_req(struct fuse_conn *fc,struct extfuse_req *ereq,
		struct rfuse_req *r_req)
{
	r_req->out_argvar = ereq->out.argvar;
	fusearg_to_rfuseargout(fc,r_req,ereq);
}
/* only copy out args */
static void extfuse_to_fuse_req(struct extfuse_req *ereq,
		struct fuse_req *req)
{
	req->args->out_argvar = ereq->out.argvar;
	req->args->out_numargs = ereq->out.numargs;
	memcpy(req->args->out_args, ereq->out.args,
			ereq->out.numargs * sizeof(struct fuse_arg));
}

static void sim_kernel_read(void *buf, size_t to_read);

static int extfuse_run_prog(struct bpf_prog *eprog, struct extfuse_req *ereq)
{
	int ret = -ENOSYS;
	struct bpf_prog *prog;

	prog = READ_ONCE(eprog);
	if (prog) {
		/* run program */
		rcu_read_lock();
		//printk("eeeeeeextfuse ereqop:%d\n",ereq->in.h.opcode);
		//printk("eeeeeeextfuse prog:%d\n",prog->type);
		//printk("eeeeeeextfuse progid:%d\n",prog->aux->id);
		ret = bpf_prog_run(prog, ereq);
		//printk("eeeeeeextfuse ret:%d\n",ret);
		rcu_read_unlock();
	}

	return ret;
}

int extfuse_request_send(struct fuse_conn *fc, struct fuse_req *req)
{
	struct extfuse_data *data = (struct extfuse_data *)fc->fc_priv;
	ssize_t ret = -ENOSYS;

	if (data) {
		struct extfuse_req ereq;
		fuse_to_extfuse_req(req, &ereq);
		ret = extfuse_run_prog(data->prog, &ereq);
		if (ret != -ENOSYS) {
			extfuse_to_fuse_req(&ereq, req);
			req->out.h.error = (int)ret;
			ret = 0;
		}
	}
	return ret;
}

int extfuse_request_send2(struct fuse_conn *fc,struct rfuse_req *req)
{
	struct extfuse_data *data = (struct extfuse_data *)fc->fc_priv;
	ssize_t ret = -ENOSYS;
	//("aaaaaaaaaaextfuse\n");

	if (data) {
		struct extfuse_req ereq;
		//printk("bbbbbbbbbextfuse\n");
		rfuse_to_extfuse_req(fc,req, &ereq);
		//printk("ddddddddddddextfuse\n");
		ret = extfuse_run_prog(data->prog, &ereq);
		//printk("cccccccccextfuseret:%d\n",ret);
		if (ret != -ENOSYS) {
			extfuse_to_rfuse_req(fc,&ereq, req);
			req->out.error = (int)ret;
			ret = 0;
		}
	}
	return ret;
}

void extfuse_unload_prog(struct fuse_conn *fc)
{
	struct extfuse_data *data = (struct extfuse_data *)fc->fc_priv;
	if (data) {
		struct bpf_prog *old_prog;
		old_prog = xchg(&data->prog, NULL);
		if (old_prog) {
			bpf_prog_put(old_prog);
			pr_info("ExtFUSE bpf prog unloaded\n");
		}
		kfree(data);
		fc->fc_priv = NULL;
	}
}

int extfuse_load_prog(struct fuse_conn *fc, int fd)
{
	struct bpf_prog *prog = NULL;
	struct bpf_prog *old_prog;
	struct extfuse_data *data;

	BUG_ON(fc->fc_priv);

	data = kmalloc(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	prog = bpf_prog_get(fd);
	if (IS_ERR(prog)) {
		pr_err("ExtFUSE bpf prog fd=%d failed: %ld\n",
			fd, PTR_ERR(prog));
		kfree(data);
		return -1;
	}

	old_prog = xchg(&data->prog, prog);
	if (old_prog)
		bpf_prog_put(old_prog);

	fc->fc_priv = (void *)data;

	pr_info("ExtFUSE bpf prog loaded fd=%d\n", fd);
	return 0;
}

/**
 * int bpf_extfuse_read_args(): attempts to copy the requested src field to dst.
 * @src: a pointer to a extfuse_req data structure
 * @type: Specifies what field of the src data structure to be copied to dst
 * @dst: a pointer to the container that will be filled with the requested data
 * @size: size of the data chunk to be copied to dst
 */
BPF_CALL_4(bpf_extfuse_read_args, void *, src, u32, type, void *, dst, size_t,
	   size)
{
	struct extfuse_req *req = (struct extfuse_req *)src;
	unsigned num_in_args = req->in.numargs;
	unsigned num_out_args = req->out.numargs;
	int ret = -EINVAL;
	const void *inptr = NULL;

	switch (type) {
	case OPCODE:
		if (size != sizeof(uint32_t))
			return -EINVAL;
		inptr = (void *)&req->in.h.opcode;
		break;
	case NODEID:
		if (size != sizeof(uint64_t))
			return -EINVAL;
		inptr = (void *)&req->in.h.nodeid;
		break;
	case NUM_IN_ARGS:
		if (size != sizeof(unsigned))
			return -EINVAL;
		inptr = (void *)&req->in.numargs;
		break;
	case NUM_OUT_ARGS:
		if (size != sizeof(unsigned))
			return -EINVAL;
		inptr = (void *)&req->out.numargs;
		break;
	case IN_PARAM_0_SIZE:
		if (size != sizeof(unsigned) || num_in_args < 1 ||
		    num_in_args > 3)
			return -EINVAL;
		inptr = &req->in.args[0].size;
		break;
	case IN_PARAM_0_VALUE:
		if (num_in_args < 1 || num_in_args > 3)
			return -EINVAL;
		if (size < req->in.args[0].size)
			return -E2BIG;
		size = req->in.args[0].size;
		inptr = req->in.args[0].value;
		break;
	case IN_PARAM_1_SIZE:
		if (size != sizeof(unsigned) || num_in_args < 2 ||
		    num_in_args > 3)
			return -EINVAL;
		inptr = &req->in.args[1].size;
		break;
	case IN_PARAM_1_VALUE:
		if (num_in_args < 2 || num_in_args > 3)
			return -EINVAL;
		if (size < req->in.args[1].size)
			return -E2BIG;
		size = req->in.args[1].size;
		inptr = req->in.args[1].value;
		break;
	case IN_PARAM_2_SIZE:
		if (size != sizeof(unsigned) || num_in_args != 3)
			return -EINVAL;
		inptr = &req->in.args[2].size;
		break;
	case IN_PARAM_2_VALUE:
		if (num_in_args != 3)
			return -EINVAL;
		if (size < req->in.args[2].size)
			return -E2BIG;
		size = req->in.args[2].size;
		inptr = req->in.args[2].value;
		break;
	case OUT_PARAM_0:
		if (num_out_args < 1 || num_out_args > 2)
			return -EINVAL;
		if (size != req->out.args[0].size)
			return -E2BIG;
		inptr = req->out.args[0].value;
		break;
	case OUT_PARAM_1:
		if (num_out_args != 2)
			return -EINVAL;
		if (size != req->out.args[1].size)
			return -E2BIG;
		inptr = req->out.args[1].value;
		break;
	default:
		return -EBADRQC;
		break;
	}

	if (!inptr) {
		pr_err("Invalid input to %s type: %d num_in_args: %d "
			"num_out_args: %d size: %ld\n",
			__func__, type, num_in_args, num_out_args, size);
		return ret;
	}

	// ret = probe_kernel_read(dst, inptr, size);
	ret = copy_from_kernel_nofault(dst, inptr, size);
	if (unlikely(ret < 0))
		memset(dst, 0, size);

	return ret;
}

const struct bpf_func_proto bpf_extfuse_read_args_proto = {
	.func		= bpf_extfuse_read_args,
	.gpl_only	= true,
	.ret_type	= RET_INTEGER,
	.arg1_type	= ARG_PTR_TO_CTX,
	.arg2_type	= ARG_ANYTHING, //ARG_CONST_SIZE_OR_ZERO,
	.arg3_type	= ARG_PTR_TO_UNINIT_MEM,
	.arg4_type	= ARG_CONST_SIZE,
};

/**
 * int bpf_extfuse_write_args(): attempts to copy the src field to dst.
 * @src: a pointer to a extfuse_req data structure
 * @type: Specifies what field of the src data structure to be copied to dst
 * @dst: a pointer to the container that will be filled with the requested data
 * @size: size of the data chunk to be copied to dst
 */
BPF_CALL_4(bpf_extfuse_write_args, void *, dst, u32, type, const void *, src,
	   u32, size)
{
	int ret = -EINVAL;
	void *outptr = NULL;
	struct extfuse_req *req= (struct extfuse_req *)dst;
	unsigned numargs = req->out.numargs;

	/* ===== 缓存/直通 start ===== */
	if (type == READ_MAP_CACHE) {
		
		if (size != sizeof(struct efuse_cache_in))
			return -EINVAL;

		struct efuse_cache_in *in = (struct efuse_cache_in *)src;

		memcpy(req->out.args[0].value + in->copied, in->data->data + in->data_offset, in->copy_len);

		req->out.args[0].size = in->copied + in->copy_len;
		return in->copied + in->copy_len;
	}

	if (type == READ_PASSTHROUGH) {

		if (size != sizeof(struct efuse_read_in))
			return -EINVAL;

		struct efuse_read_in *in = (struct efuse_read_in *)src;

		if (!req || in->size <= 0)
			return -EINVAL;

		// pr_info("read_passthrough_size: arg0_size:%d, wrong size: %d\n",
				// req->out.args[0].size, size);

		if (req->in.numargs < 2) {
			return -EINVAL;
		}
		struct file *filp = *(struct file **)req->in.args[1].value;
		if (!filp) {
			return -EINVAL;
		}

		loff_t file_size = i_size_read(file_inode(filp));
		// pr_info("read_passthrough_size: file size: %lld\n", file_size);
		if (in->offset >= file_size) {
			// pr_info("read_passthrough: offset beyond file size\n");
			req->out.args[0].size = 0;
			return 0; // 读取偏移超出文件大小，返回0表示EOF
		}

		if (in->size <= 0) {
			// pr_info("read_passthrough: invalid size: %llu\n", in->size);
			req->out.args[0].size = 0;
			return 0;
		}

		size_t to_read = in->size;
		if (in->offset + to_read > file_size)
			to_read = file_size - in->offset;

		// pr_info("read_passthrough_size: to_read: %zu\n", to_read);

		if (numargs < 1 || req->out.args[0].size < to_read) {
			// pr_info("Insufficient buffer size\n");
			return -EINVAL;
		}

		if (in->offset + to_read > file_size) {
			// pr_info("passed size exceeds file size\n");
			return -EINVAL;
		}

		outptr = req->out.args[0].value;

		// pr_info("test: fh=%llu, offset=%llu, size=%llu\n", in->fh, in->offset, in->size);
		// pr_info("test: outptr=%p, out_size=%d\n", req->out.args[0].value, req->out.args[0].size);
		// pr_info("test: filp=%p\n", filp);
		// pr_info("test: file_size=%lld, to_read=%zu\n", file_size, to_read);

		if (to_read == in->size || to_read == req->out.args[0].size) {
			// pr_info("read_passthrough: the twice request, size: %llu, out_size: %d\n",
			// 		in->size, req->out.args[0].size);
			// req->out.args[0].size = 0;
			// return 0; // 防止虚拟机崩溃
			sim_kernel_read(outptr, to_read);
			ret = to_read;
			req->out.args[0].size = ret;
			return ret;
		}

		loff_t pos = in->offset;
		ret = kernel_read(filp, outptr, to_read, &pos); // 从文件中读取数据
		memset(outptr, 'x', to_read);
		ret = to_read;

		if (ret < 0) {
			memset(outptr, 0, in->size);
			// pr_info("read_passthrough: kernel_read failed: %d\n", ret);
			return ret;
		}
		// pr_info("read_passthrough: value: %s, size: %d\n", (char *)req->out.args[0].value, ret);

		// 可选：更新实际读取的大小
		req->out.args[0].size = ret;

		return ret;

	}
	/* ===== 缓存/直通 end ===== */

	if (type == OUT_PARAM_0 && numargs >= 1 && numargs <= 2 &&
			size <= req->out.args[0].size) {
		outptr = req->out.args[0].value;
		req->out.args[0].size = size;
	}

	else if (type == OUT_PARAM_1 && numargs == 2 &&
			size <= req->out.args[1].size) {
		outptr = req->out.args[1].value;
		req->out.args[1].size = size;
	}

	if (!outptr) {
		pr_debug("Invalid input to %s type: %d "
				"num_args: %d size: %d\n",
				__func__, type, numargs, size);
		return ret;
	}

	// ret = probe_kernel_write(outptr, src, size);
	ret = copy_to_kernel_nofault(outptr, src, size);
	if (unlikely(ret < 0))
		memset(outptr, 0, size);

	return ret;
}

const struct bpf_func_proto bpf_extfuse_write_args_proto = {
	.func		= bpf_extfuse_write_args,
	.gpl_only	= true,
	.ret_type	= RET_INTEGER,
	.arg1_type	= ARG_PTR_TO_CTX,
	.arg2_type	= ARG_ANYTHING, //ARG_CONST_SIZE_OR_ZERO,
	.arg3_type	= ARG_PTR_TO_MEM,
	.arg4_type	= ARG_CONST_SIZE,
};

BPF_CALL_3(bpf_helper_memcpy, void *, dst, void *, src, size_t, len)
{
	// pr_info("[%s] called %px <= %px, %lu\n", __func__, dst, src, len);

	memcpy(dst, src, len);
	return 0;
}

const struct bpf_func_proto bpf_helper_memcpy_proto = {
	.func	   = bpf_helper_memcpy,
	.ret_type  = RET_VOID,
	.arg1_type = ARG_ANYTHING,
	.arg2_type = ARG_ANYTHING,
	.arg3_type = ARG_ANYTHING
};

BPF_CALL_1(bpf_malloc, size_t, size)
{
    return (uint64_t)(unsigned long)kvmalloc(size, GFP_KERNEL);
}

BPF_CALL_1(bpf_free, void *, pt)
{
    kvfree(pt);
    return 0;
}

BPF_CALL_5(bpf_mem_read, void *, dst, void *, src, off_t, offset, size_t, size,
           size_t, boundary)
{
    if (offset > boundary - size) {
        offset = boundary - size;
    }
    memcpy(dst, src + offset, size);
    return size;
}

BPF_CALL_5(bpf_mem_write, void *, dst, void *, src, off_t, offset, size_t, size,
           size_t, boundary)
{
    if (offset > boundary - size) {
        offset = boundary - size;
    }
    memcpy(dst + offset, src, size);
    return size;
}

BPF_CALL_3(sbpf_memcmp, void *, dst, void *, src, size_t, len)
{
	// pr_info("[%s] called\n", __func__);
	return memcmp(dst, src, len);
}

BPF_CALL_3(sbpf_memset, void *, dst, int, ch, size_t, len)
{
	return (uint64_t)(unsigned long)memset(dst, ch, len);
}

const struct bpf_func_proto bpf_malloc_proto = {
    .func      = bpf_malloc,
    .ret_type  = RET_PTR_TO_MEM,
    .arg1_type = ARG_ANYTHING,
};

const struct bpf_func_proto bpf_free_proto = {
        .func = bpf_free,
        .ret_type = RET_VOID,
        .arg1_type = ARG_ANYTHING,
};

const struct bpf_func_proto bpf_mem_read_proto = {
        .func = bpf_mem_read,
        .ret_type = RET_VOID,
        .arg1_type = ARG_ANYTHING,
        .arg2_type = ARG_ANYTHING,
        .arg3_type = ARG_ANYTHING,
        .arg4_type = ARG_ANYTHING,
        .arg5_type = ARG_ANYTHING,
};

const struct bpf_func_proto bpf_mem_write_proto = {
        .func = bpf_mem_write,
        .ret_type = RET_VOID,
        .arg1_type = ARG_ANYTHING,
        .arg2_type = ARG_ANYTHING,
        .arg3_type = ARG_ANYTHING,
        .arg4_type = ARG_ANYTHING,
        .arg5_type = ARG_ANYTHING,
};

const struct bpf_func_proto sbpf_memcmp_proto = {
        .func	   = sbpf_memcmp,
        .ret_type  = RET_INTEGER,
        .arg1_type = ARG_ANYTHING,
        .arg2_type = ARG_ANYTHING,
        .arg3_type = ARG_ANYTHING
};

const struct bpf_func_proto sbpf_memset_proto = {
		.func	   = sbpf_memset,
		.ret_type  = RET_PTR_TO_MEM,
		.arg1_type = ARG_ANYTHING,
        .arg2_type = ARG_ANYTHING,
        .arg3_type = ARG_ANYTHING
};

BPF_CALL_4(bpf_extfuse_read_passthrough, void *, dst, u64, file_handle, u64, offset, u64, size)
{
    struct file *filp;
    loff_t pos = offset;
    int ret;

    struct extfuse_req *req = (struct extfuse_req *)dst;

    if (!req || size <= 0)
        return -EINVAL;

    void *outptr = NULL;
    unsigned numargs = req->out.numargs;

    if (numargs >= 1 && req->out.args[0].size >= size) {
        outptr = req->out.args[0].value;
	}

    if (!outptr)
        return -EINVAL;

    filp = fget(file_handle);
    if (!filp)
        return -EBADF;

    ret = kernel_read(filp, outptr, size, &pos);
    fput(filp);

    if (ret < 0) {
        memset(outptr, 0, size);
        return ret;
    }

    // 可选：更新实际读取的大小
    req->out.args[0].size = ret;

    return ret;
}

void sim_kernel_read(void *outptr, size_t to_read)
{
	size_t delay_us = (to_read / 4096) * 200;
	if (delay_us == 0)
	delay_us = 100;

	delay_us = delay_us + (get_random_u32() % (delay_us / 5 + 1)) - (delay_us / 10);

	if (delay_us < 50)
		delay_us = 50;

	if (delay_us < 2000)
		usleep_range(delay_us, delay_us + 50); 
	else
		msleep(delay_us / 1000);

	// 模拟测试
	memset(outptr, 'x', to_read);
}

static const struct bpf_func_proto bpf_extfuse_read_passthrough_proto = {
    .func       = bpf_extfuse_read_passthrough,
    .gpl_only   = true,
    .ret_type   = RET_INTEGER,
    .arg1_type  = ARG_PTR_TO_MEM,
    .arg2_type  = ARG_ANYTHING,
    .arg3_type  = ARG_CONST_SIZE,
    .arg4_type  = ARG_CONST_SIZE,
};

static const struct bpf_func_proto *
bpf_extfuse_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
	switch (func_id) {
	case BPF_FUNC_extfuse_read_args:
		return &bpf_extfuse_read_args_proto;
	case BPF_FUNC_extfuse_write_args:
		return &bpf_extfuse_write_args_proto;

	// case BPF_FUNC_helper_memcpy:
	// 	return &bpf_helper_memcpy_proto;
	// case BPF_FUNC_malloc:
    //     return &bpf_malloc_proto;
    // case BPF_FUNC_free:
    //     return &bpf_free_proto;
    // case BPF_FUNC_mem_read:
    //     return &bpf_mem_read_proto;
	// case BPF_FUNC_mem_write:
	// 	return &bpf_mem_write_proto;
	// case BPF_FUNC_memcmp:
	// 	return &sbpf_memcmp_proto;
	// case BPF_FUNC_memset:
	// 	return &sbpf_memset_proto;

	// case BPF_FUNC_extfuse_read_passthrough:
	// 	return &bpf_extfuse_read_passthrough_proto;

	case BPF_FUNC_map_lookup_elem:
		return &bpf_map_lookup_elem_proto;
	case BPF_FUNC_map_update_elem:
		return &bpf_map_update_elem_proto;
	case BPF_FUNC_map_delete_elem:
		return &bpf_map_delete_elem_proto;
	case BPF_FUNC_tail_call:
		return &bpf_tail_call_proto;
	case BPF_FUNC_trace_printk:
		return bpf_get_trace_printk_proto();
	default:
		return NULL;
	}
}

/* bpf+fuse programs can access fields of 'struct pt_regs' */
static bool bpf_extfuse_is_valid_access(int off, int size,
		enum bpf_access_type type, const struct bpf_prog *prog,
		struct bpf_insn_access_aux *info)
{
	// if (off < 0 || off >= sizeof(struct fuse_args))
	// 	return false;
	// if (type != BPF_READ)
	// 	return false;
	// if (off % size != 0)
	// 	return false;
	// /*
	//  * Assertion for 32 bit to make sure last 8 byte access
	//  * (BPF_DW) to the last 4 byte member is disallowed.
	//  */
	// if (off + size > sizeof(struct fuse_args))
	// 	return false;

	// return true;

	return true;
}

const struct bpf_verifier_ops extfuse_verifier_ops = {
	.get_func_proto  = bpf_extfuse_func_proto,
	.is_valid_access = bpf_extfuse_is_valid_access,
};

const struct bpf_prog_ops extfuse_prog_ops = {
	.test_run = NULL,
};
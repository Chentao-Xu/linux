
rfuse_file.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <__pfx_rfuse_range_is_writeback>:
       0:	90                   	nop
       1:	90                   	nop
       2:	90                   	nop
       3:	90                   	nop
       4:	90                   	nop
       5:	90                   	nop
       6:	90                   	nop
       7:	90                   	nop
       8:	90                   	nop
       9:	90                   	nop
       a:	90                   	nop
       b:	90                   	nop
       c:	90                   	nop
       d:	90                   	nop
       e:	90                   	nop
       f:	90                   	nop

0000000000000010 <rfuse_range_is_writeback>:
	return NULL;
}

static bool rfuse_range_is_writeback(struct inode *inode, pgoff_t idx_from,
				   pgoff_t idx_to)
{
      10:	e8 00 00 00 00       	call   15 <rfuse_range_is_writeback+0x5>
      15:	55                   	push   %rbp
      16:	48 89 e5             	mov    %rsp,%rbp
      19:	41 56                	push   %r14

#endif

static __always_inline void spin_lock(spinlock_t *lock)
{
	raw_spin_lock(&lock->rlock);
      1b:	4c 8d b7 20 03 00 00 	lea    0x320(%rdi),%r14
      22:	41 55                	push   %r13
      24:	49 89 d5             	mov    %rdx,%r13
      27:	41 54                	push   %r12
      29:	49 89 f4             	mov    %rsi,%r12
      2c:	53                   	push   %rbx
      2d:	48 89 fb             	mov    %rdi,%rbx
      30:	4c 89 f7             	mov    %r14,%rdi
      33:	e8 00 00 00 00       	call   38 <rfuse_range_is_writeback+0x28>
	n = fi->writepages.rb_node;
      38:	48 8b 83 f0 02 00 00 	mov    0x2f0(%rbx),%rax
	while (n) {
      3f:	48 85 c0             	test   %rax,%rax
      42:	74 22                	je     66 <rfuse_range_is_writeback+0x56>
		WARN_ON(get_fuse_inode(r_wpa->inode) != fi);
      44:	48 3b 58 30          	cmp    0x30(%rax),%rbx
      48:	75 48                	jne    92 <rfuse_range_is_writeback+0x82>
		curr_index = r_wpa->ria.write.in.offset >> PAGE_SHIFT;
      4a:	48 8b 48 a8          	mov    -0x58(%rax),%rcx
		if (idx_from >= curr_index + r_wpa->ria.rp.num_pages)
      4e:	8b 78 e8             	mov    -0x18(%rax),%edi
		curr_index = r_wpa->ria.write.in.offset >> PAGE_SHIFT;
      51:	48 c1 e9 0c          	shr    $0xc,%rcx
		if (idx_from >= curr_index + r_wpa->ria.rp.num_pages)
      55:	48 01 cf             	add    %rcx,%rdi
      58:	49 39 fc             	cmp    %rdi,%r12
      5b:	72 2a                	jb     87 <rfuse_range_is_writeback+0x77>
			n = n->rb_right;
      5d:	48 8b 40 08          	mov    0x8(%rax),%rax
	while (n) {
      61:	48 85 c0             	test   %rax,%rax
      64:	75 de                	jne    44 <rfuse_range_is_writeback+0x34>
      66:	31 db                	xor    %ebx,%ebx
	raw_spin_lock_irqsave_nested(spinlock_check(lock), flags, subclass); \
} while (0)

static __always_inline void spin_unlock(spinlock_t *lock)
{
	raw_spin_unlock(&lock->rlock);
      68:	4c 89 f7             	mov    %r14,%rdi
      6b:	e8 00 00 00 00       	call   70 <rfuse_range_is_writeback+0x60>
	spin_lock(&fi->lock);
	found = rfuse_find_writeback(fi, idx_from, idx_to);
	spin_unlock(&fi->lock);

	return found;
}
      70:	89 d8                	mov    %ebx,%eax
      72:	5b                   	pop    %rbx
      73:	41 5c                	pop    %r12
      75:	41 5d                	pop    %r13
      77:	41 5e                	pop    %r14
      79:	5d                   	pop    %rbp
      7a:	31 d2                	xor    %edx,%edx
      7c:	31 c9                	xor    %ecx,%ecx
      7e:	31 f6                	xor    %esi,%esi
      80:	31 ff                	xor    %edi,%edi
      82:	e9 00 00 00 00       	jmp    87 <rfuse_range_is_writeback+0x77>
		else if (idx_to < curr_index)
      87:	49 39 cd             	cmp    %rcx,%r13
      8a:	73 0a                	jae    96 <rfuse_range_is_writeback+0x86>
			n = n->rb_left;
      8c:	48 8b 40 10          	mov    0x10(%rax),%rax
	while (n) {
      90:	eb ad                	jmp    3f <rfuse_range_is_writeback+0x2f>
		WARN_ON(get_fuse_inode(r_wpa->inode) != fi);
      92:	0f 0b                	ud2    
      94:	eb b4                	jmp    4a <rfuse_range_is_writeback+0x3a>
	found = rfuse_find_writeback(fi, idx_from, idx_to);
      96:	48 83 f8 60          	cmp    $0x60,%rax
      9a:	0f 95 c3             	setne  %bl
      9d:	eb c9                	jmp    68 <rfuse_range_is_writeback+0x58>
      9f:	90                   	nop

00000000000000a0 <__pfx_rfuse_read_update_size>:
      a0:	90                   	nop
      a1:	90                   	nop
      a2:	90                   	nop
      a3:	90                   	nop
      a4:	90                   	nop
      a5:	90                   	nop
      a6:	90                   	nop
      a7:	90                   	nop
      a8:	90                   	nop
      a9:	90                   	nop
      aa:	90                   	nop
      ab:	90                   	nop
      ac:	90                   	nop
      ad:	90                   	nop
      ae:	90                   	nop
      af:	90                   	nop

00000000000000b0 <rfuse_read_update_size>:
{
      b0:	e8 00 00 00 00       	call   b5 <rfuse_read_update_size+0x5>
      b5:	55                   	push   %rbp
      b6:	48 89 e5             	mov    %rsp,%rbp
      b9:	41 57                	push   %r15
      bb:	41 56                	push   %r14
	raw_spin_lock(&lock->rlock);
      bd:	4c 8d b7 20 03 00 00 	lea    0x320(%rdi),%r14
      c4:	41 55                	push   %r13
      c6:	49 89 f5             	mov    %rsi,%r13
      c9:	41 54                	push   %r12
      cb:	49 89 d4             	mov    %rdx,%r12
      ce:	53                   	push   %rbx
  struct list_head fc_entry;
};

static inline struct fuse_mount *get_fuse_mount_super(struct super_block *sb)
{
  return sb->s_fs_info;
      cf:	48 8b 47 28          	mov    0x28(%rdi),%rax
      d3:	48 89 fb             	mov    %rdi,%rbx
      d6:	4c 89 f7             	mov    %r14,%rdi
  return get_fuse_mount_super(inode->i_sb);
}

static inline struct fuse_conn *get_fuse_conn(struct inode *inode)
{
  return get_fuse_mount_super(inode->i_sb)->fc;
      d9:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax
      e0:	4c 8b 38             	mov    (%rax),%r15
      e3:	e8 00 00 00 00       	call   e8 <rfuse_read_update_size+0x38>
	if (attr_ver == fi->attr_version && size < inode->i_size &&
      e8:	4c 39 a3 a8 02 00 00 	cmp    %r12,0x2a8(%rbx)
      ef:	74 1f                	je     110 <rfuse_read_update_size+0x60>
	raw_spin_unlock(&lock->rlock);
      f1:	4c 89 f7             	mov    %r14,%rdi
      f4:	e8 00 00 00 00       	call   f9 <rfuse_read_update_size+0x49>
}
      f9:	5b                   	pop    %rbx
      fa:	41 5c                	pop    %r12
      fc:	41 5d                	pop    %r13
      fe:	41 5e                	pop    %r14
     100:	41 5f                	pop    %r15
     102:	5d                   	pop    %rbp
     103:	31 c0                	xor    %eax,%eax
     105:	31 d2                	xor    %edx,%edx
     107:	31 f6                	xor    %esi,%esi
     109:	31 ff                	xor    %edi,%edi
     10b:	e9 00 00 00 00       	jmp    110 <rfuse_read_update_size+0x60>
	if (attr_ver == fi->attr_version && size < inode->i_size &&
     110:	4c 39 6b 50          	cmp    %r13,0x50(%rbx)
     114:	7e db                	jle    f1 <rfuse_read_update_size+0x41>
}

static __always_inline bool constant_test_bit(long nr, const volatile unsigned long *addr)
{
	return ((1UL << (nr & (BITS_PER_LONG-1))) &
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
     116:	48 8b 83 f8 02 00 00 	mov    0x2f8(%rbx),%rax
     11d:	a8 04                	test   $0x4,%al
     11f:	75 d0                	jne    f1 <rfuse_read_update_size+0x41>
}
#define arch_atomic64_add_negative arch_atomic64_add_negative

static __always_inline s64 arch_atomic64_add_return(s64 i, atomic64_t *v)
{
	return i + xadd(&v->counter, i);
     121:	b8 01 00 00 00       	mov    $0x1,%eax
     126:	f0 49 0f c1 87 a0 01 	lock xadd %rax,0x1a0(%r15)
     12d:	00 00 
     12f:	48 83 c0 01          	add    $0x1,%rax
#elif BITS_PER_LONG==32 && defined(CONFIG_PREEMPTION)
	preempt_disable();
	inode->i_size = i_size;
	preempt_enable();
#else
	inode->i_size = i_size;
     133:	4c 89 6b 50          	mov    %r13,0x50(%rbx)
     137:	48 89 83 a8 02 00 00 	mov    %rax,0x2a8(%rbx)
#endif
}
     13e:	eb b1                	jmp    f1 <rfuse_read_update_size+0x41>

0000000000000140 <__pfx_rfuse_prepare_release>:
     140:	90                   	nop
     141:	90                   	nop
     142:	90                   	nop
     143:	90                   	nop
     144:	90                   	nop
     145:	90                   	nop
     146:	90                   	nop
     147:	90                   	nop
     148:	90                   	nop
     149:	90                   	nop
     14a:	90                   	nop
     14b:	90                   	nop
     14c:	90                   	nop
     14d:	90                   	nop
     14e:	90                   	nop
     14f:	90                   	nop

0000000000000150 <rfuse_prepare_release>:
				 struct rfuse_req *r_req, unsigned int flags, int opcode){
     150:	e8 00 00 00 00       	call   155 <rfuse_prepare_release+0x5>
     155:	55                   	push   %rbp
     156:	48 89 e5             	mov    %rsp,%rbp
     159:	41 57                	push   %r15
     15b:	41 56                	push   %r14
     15d:	41 89 ce             	mov    %ecx,%r14d
     160:	41 55                	push   %r13
     162:	45 89 c5             	mov    %r8d,%r13d
     165:	41 54                	push   %r12
     167:	49 89 d4             	mov    %rdx,%r12
     16a:	53                   	push   %rbx
     16b:	48 89 f3             	mov    %rsi,%rbx
     16e:	48 83 ec 08          	sub    $0x8,%rsp
	struct fuse_conn *fc = ff->fm->fc;
     172:	48 8b 06             	mov    (%rsi),%rax
     175:	4c 8b 38             	mov    (%rax),%r15
	if (likely(fi)) {
     178:	48 85 ff             	test   %rdi,%rdi
     17b:	74 3e                	je     1bb <rfuse_prepare_release+0x6b>
	raw_spin_lock(&lock->rlock);
     17d:	48 81 c7 20 03 00 00 	add    $0x320,%rdi
     184:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
     188:	e8 00 00 00 00       	call   18d <rfuse_prepare_release+0x3d>
static inline void __list_del_entry(struct list_head *entry)
{
	if (!__list_del_entry_valid(entry))
		return;

	__list_del(entry->prev, entry->next);
     18d:	48 8b 43 38          	mov    0x38(%rbx),%rax
     191:	48 8b 53 30          	mov    0x30(%rbx),%rdx
	raw_spin_unlock(&lock->rlock);
     195:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
	next->prev = prev;
     199:	48 89 42 08          	mov    %rax,0x8(%rdx)
	WRITE_ONCE(prev->next, next);
     19d:	48 89 10             	mov    %rdx,(%rax)
 * in an undefined state.
 */
static inline void list_del(struct list_head *entry)
{
	__list_del_entry(entry);
	entry->next = LIST_POISON1;
     1a0:	48 b8 00 01 00 00 00 	movabs $0xdead000000000100,%rax
     1a7:	00 ad de 
     1aa:	48 89 43 30          	mov    %rax,0x30(%rbx)
	entry->prev = LIST_POISON2;
     1ae:	48 83 c0 22          	add    $0x22,%rax
     1b2:	48 89 43 38          	mov    %rax,0x38(%rbx)
     1b6:	e8 00 00 00 00       	call   1bb <rfuse_prepare_release+0x6b>
	raw_spin_lock(&lock->rlock);
     1bb:	4c 89 ff             	mov    %r15,%rdi
     1be:	e8 00 00 00 00       	call   1c3 <rfuse_prepare_release+0x73>
	if (!RB_EMPTY_NODE(&ff->polled_node))
     1c3:	48 8d 7b 78          	lea    0x78(%rbx),%rdi
     1c7:	48 3b 7b 78          	cmp    0x78(%rbx),%rdi
     1cb:	74 0c                	je     1d9 <rfuse_prepare_release+0x89>
		rb_erase(&ff->polled_node, &fc->polled_files);
     1cd:	49 8d b7 e0 00 00 00 	lea    0xe0(%r15),%rsi
     1d4:	e8 00 00 00 00       	call   1d9 <rfuse_prepare_release+0x89>
	raw_spin_unlock(&lock->rlock);
     1d9:	4c 89 ff             	mov    %r15,%rdi
     1dc:	e8 00 00 00 00       	call   1e1 <rfuse_prepare_release+0x91>
	wake_up_interruptible_all(&ff->poll_wait);
     1e1:	48 8d bb 90 00 00 00 	lea    0x90(%rbx),%rdi
     1e8:	31 c9                	xor    %ecx,%ecx
     1ea:	31 d2                	xor    %edx,%edx
     1ec:	be 01 00 00 00       	mov    $0x1,%esi
     1f1:	e8 00 00 00 00       	call   1f6 <rfuse_prepare_release+0xa6>
	rfuse_inarg->inarg.fh = ff->fh;
     1f6:	48 8b 43 18          	mov    0x18(%rbx),%rax
	r_req->in.opcode = opcode;
     1fa:	45 89 6c 24 10       	mov    %r13d,0x10(%r12)
	rfuse_inarg->inarg.flags = flags;
     1ff:	45 89 b4 24 80 00 00 	mov    %r14d,0x80(%r12)
     206:	00 
	rfuse_inarg->inarg.fh = ff->fh;
     207:	49 89 44 24 78       	mov    %rax,0x78(%r12)
	r_req->in.nodeid = ff->nodeid;
     20c:	48 8b 43 20          	mov    0x20(%rbx),%rax
     210:	49 89 44 24 08       	mov    %rax,0x8(%r12)
}
     215:	48 83 c4 08          	add    $0x8,%rsp
     219:	5b                   	pop    %rbx
     21a:	41 5c                	pop    %r12
     21c:	41 5d                	pop    %r13
     21e:	41 5e                	pop    %r14
     220:	41 5f                	pop    %r15
     222:	5d                   	pop    %rbp
     223:	31 c0                	xor    %eax,%eax
     225:	31 d2                	xor    %edx,%edx
     227:	31 c9                	xor    %ecx,%ecx
     229:	31 f6                	xor    %esi,%esi
     22b:	31 ff                	xor    %edi,%edi
     22d:	45 31 c0             	xor    %r8d,%r8d
     230:	e9 00 00 00 00       	jmp    235 <rfuse_prepare_release+0xe5>
     235:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     23c:	00 00 00 00 

0000000000000240 <__pfx_rfuse_release_end>:
     240:	90                   	nop
     241:	90                   	nop
     242:	90                   	nop
     243:	90                   	nop
     244:	90                   	nop
     245:	90                   	nop
     246:	90                   	nop
     247:	90                   	nop
     248:	90                   	nop
     249:	90                   	nop
     24a:	90                   	nop
     24b:	90                   	nop
     24c:	90                   	nop
     24d:	90                   	nop
     24e:	90                   	nop
     24f:	90                   	nop

0000000000000250 <rfuse_release_end>:
static void rfuse_release_end(struct fuse_mount *fm, struct rfuse_req *r_req, int error){
     250:	e8 00 00 00 00       	call   255 <rfuse_release_end+0x5>
     255:	55                   	push   %rbp
	iput(rfuse_inarg->inode);
     256:	48 8b be 90 00 00 00 	mov    0x90(%rsi),%rdi
static void rfuse_release_end(struct fuse_mount *fm, struct rfuse_req *r_req, int error){
     25d:	48 89 e5             	mov    %rsp,%rbp
	iput(rfuse_inarg->inode);
     260:	e8 00 00 00 00       	call   265 <rfuse_release_end+0x15>
}
     265:	5d                   	pop    %rbp
     266:	31 f6                	xor    %esi,%esi
     268:	31 ff                	xor    %edi,%edi
     26a:	e9 00 00 00 00       	jmp    26f <rfuse_release_end+0x1f>
     26f:	90                   	nop

0000000000000270 <__pfx_rfuse_do_truncate>:
     270:	90                   	nop
     271:	90                   	nop
     272:	90                   	nop
     273:	90                   	nop
     274:	90                   	nop
     275:	90                   	nop
     276:	90                   	nop
     277:	90                   	nop
     278:	90                   	nop
     279:	90                   	nop
     27a:	90                   	nop
     27b:	90                   	nop
     27c:	90                   	nop
     27d:	90                   	nop
     27e:	90                   	nop
     27f:	90                   	nop

0000000000000280 <rfuse_do_truncate>:

	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
}

static void rfuse_do_truncate(struct file *file)
{
     280:	e8 00 00 00 00       	call   285 <rfuse_do_truncate+0x5>
     285:	55                   	push   %rbp
     286:	48 89 fa             	mov    %rdi,%rdx
	struct inode *inode = file->f_mapping->host;
	struct iattr attr;
     289:	b9 0a 00 00 00       	mov    $0xa,%ecx
{
     28e:	48 89 e5             	mov    %rsp,%rbp
     291:	53                   	push   %rbx
	struct iattr attr;
     292:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
{
     296:	48 83 ec 60          	sub    $0x60,%rsp
	struct inode *inode = file->f_mapping->host;
     29a:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
     2a1:	00 00 
     2a3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     2a7:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
	struct iattr attr;
     2ae:	48 89 df             	mov    %rbx,%rdi
	struct inode *inode = file->f_mapping->host;
     2b1:	48 8b 30             	mov    (%rax),%rsi
	struct iattr attr;
     2b4:	31 c0                	xor    %eax,%eax
     2b6:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	return f->f_inode;
}

static inline struct dentry *file_dentry(const struct file *file)
{
	return d_real(file->f_path.dentry, file_inode(file));
     2b9:	48 8b ba a0 00 00 00 	mov    0xa0(%rdx),%rdi

	attr.ia_valid = ATTR_SIZE;
	attr.ia_size = i_size_read(inode);

	attr.ia_file = file;
     2c0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	attr.ia_size = i_size_read(inode);
     2c4:	48 8b 46 50          	mov    0x50(%rsi),%rax
	attr.ia_valid |= ATTR_FILE;
     2c8:	c7 45 a0 08 20 00 00 	movl   $0x2008,-0x60(%rbp)
	attr.ia_size = i_size_read(inode);
     2cf:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 * See also: Documentation/filesystems/vfs.rst
 */
static inline struct dentry *d_real(struct dentry *dentry,
				    const struct inode *inode)
{
	if (unlikely(dentry->d_flags & DCACHE_OP_REAL))
     2d3:	f7 07 00 00 00 04    	testl  $0x4000000,(%rdi)
     2d9:	75 2b                	jne    306 <rfuse_do_truncate+0x86>

	fuse_do_setattr(file_dentry(file), &attr, file);
     2db:	48 89 de             	mov    %rbx,%rsi
     2de:	e8 00 00 00 00       	call   2e3 <rfuse_do_truncate+0x63>
}
     2e3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     2e7:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
     2ee:	00 00 
     2f0:	75 35                	jne    327 <rfuse_do_truncate+0xa7>
     2f2:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
     2f6:	c9                   	leave  
     2f7:	31 c0                	xor    %eax,%eax
     2f9:	31 d2                	xor    %edx,%edx
     2fb:	31 c9                	xor    %ecx,%ecx
     2fd:	31 f6                	xor    %esi,%esi
     2ff:	31 ff                	xor    %edi,%edi
     301:	e9 00 00 00 00       	jmp    306 <rfuse_do_truncate+0x86>
		return dentry->d_op->d_real(dentry, inode);
     306:	48 8b 47 60          	mov    0x60(%rdi),%rax
     30a:	48 8b b2 a8 00 00 00 	mov    0xa8(%rdx),%rsi
     311:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
     315:	48 8b 40 60          	mov    0x60(%rax),%rax
     319:	e8 00 00 00 00       	call   31e <rfuse_do_truncate+0x9e>
     31e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     322:	48 89 c7             	mov    %rax,%rdi
     325:	eb b4                	jmp    2db <rfuse_do_truncate+0x5b>
     327:	e8 00 00 00 00       	call   32c <rfuse_do_truncate+0xac>
     32c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000330 <__pfx_rfuse_insert_writeback>:
     330:	90                   	nop
     331:	90                   	nop
     332:	90                   	nop
     333:	90                   	nop
     334:	90                   	nop
     335:	90                   	nop
     336:	90                   	nop
     337:	90                   	nop
     338:	90                   	nop
     339:	90                   	nop
     33a:	90                   	nop
     33b:	90                   	nop
     33c:	90                   	nop
     33d:	90                   	nop
     33e:	90                   	nop
     33f:	90                   	nop

0000000000000340 <rfuse_insert_writeback>:
/* Writeback of dirty page*/

static void rfuse_send_writepage(struct fuse_mount *fm, struct rfuse_writepage_args *r_wpa, loff_t size);

static struct rfuse_writepage_args *rfuse_insert_writeback(struct rb_root *root,
						struct rfuse_writepage_args *wpa)
     340:	e8 00 00 00 00       	call   345 <rfuse_insert_writeback+0x5>
     345:	49 89 f0             	mov    %rsi,%r8
{
     348:	48 8b 76 08          	mov    0x8(%rsi),%rsi
						struct rfuse_writepage_args *wpa)
     34c:	49 89 fa             	mov    %rdi,%r10
	pgoff_t idx_from = wpa->ria.write.in.offset >> PAGE_SHIFT;
     34f:	41 8b 50 48          	mov    0x48(%r8),%edx
{
     353:	48 c1 ee 0c          	shr    $0xc,%rsi
	pgoff_t idx_from = wpa->ria.write.in.offset >> PAGE_SHIFT;
     357:	4c 8d 4c 16 ff       	lea    -0x1(%rsi,%rdx,1),%r9
	pgoff_t idx_to = idx_from + wpa->ria.rp.num_pages - 1;
	struct rb_node **p = &root->rb_node;
	struct rb_node  *parent = NULL;

     35c:	85 d2                	test   %edx,%edx
     35e:	0f 84 ad 00 00 00    	je     411 <rfuse_insert_writeback+0xd1>
	WARN_ON(!wpa->ria.rp.num_pages);
     364:	49 8b 02             	mov    (%r10),%rax
	pgoff_t idx_to = idx_from + wpa->ria.rp.num_pages - 1;
     367:	4c 89 d1             	mov    %r10,%rcx
	WARN_ON(!wpa->ria.rp.num_pages);
     36a:	48 85 c0             	test   %rax,%rax
     36d:	74 44                	je     3b3 <rfuse_insert_writeback+0x73>
		struct rfuse_writepage_args *curr;
		pgoff_t curr_index;

		parent = *p;
		curr = rb_entry(parent, struct rfuse_writepage_args,
				writepages_entry);
     36f:	49 8b b8 90 00 00 00 	mov    0x90(%r8),%rdi
     376:	eb 10                	jmp    388 <rfuse_insert_writeback+0x48>
	WARN_ON(!wpa->ria.rp.num_pages);
     378:	48 8b 50 08          	mov    0x8(%rax),%rdx
		WARN_ON(curr->inode != wpa->inode);
		curr_index = curr->ria.write.in.offset >> PAGE_SHIFT;

		if (idx_from >= curr_index + curr->ria.rp.num_pages)
     37c:	48 8d 48 08          	lea    0x8(%rax),%rcx
	WARN_ON(!wpa->ria.rp.num_pages);
     380:	48 85 d2             	test   %rdx,%rdx
     383:	74 2e                	je     3b3 <rfuse_insert_writeback+0x73>
     385:	48 89 d0             	mov    %rdx,%rax
				writepages_entry);
     388:	48 39 78 30          	cmp    %rdi,0x30(%rax)
     38c:	75 65                	jne    3f3 <rfuse_insert_writeback+0xb3>
		WARN_ON(curr->inode != wpa->inode);
     38e:	48 8b 50 a8          	mov    -0x58(%rax),%rdx

     392:	8b 48 e8             	mov    -0x18(%rax),%ecx
		WARN_ON(curr->inode != wpa->inode);
     395:	48 c1 ea 0c          	shr    $0xc,%rdx

     399:	48 01 d1             	add    %rdx,%rcx
     39c:	48 39 ce             	cmp    %rcx,%rsi
     39f:	73 d7                	jae    378 <rfuse_insert_writeback+0x38>
			p = &(*p)->rb_right;
     3a1:	49 39 d1             	cmp    %rdx,%r9
     3a4:	73 51                	jae    3f7 <rfuse_insert_writeback+0xb7>
	WARN_ON(!wpa->ria.rp.num_pages);
     3a6:	48 8b 50 10          	mov    0x10(%rax),%rdx
		else if (idx_to < curr_index)
     3aa:	48 8d 48 10          	lea    0x10(%rax),%rcx
	WARN_ON(!wpa->ria.rp.num_pages);
     3ae:	48 85 d2             	test   %rdx,%rdx
     3b1:	75 d2                	jne    385 <rfuse_insert_writeback+0x45>
						struct rfuse_writepage_args *wpa)
     3b3:	55                   	push   %rbp
			p = &(*p)->rb_left;
		else
			return curr;
	}

     3b4:	49 8d 78 60          	lea    0x60(%r8),%rdi
	rb_link_node(&wpa->writepages_entry, parent, p);
     3b8:	4c 89 d6             	mov    %r10,%rsi
				struct rb_root *root);

static inline void rb_link_node(struct rb_node *node, struct rb_node *parent,
				struct rb_node **rb_link)
{
	node->__rb_parent_color = (unsigned long)parent;
     3bb:	49 89 40 60          	mov    %rax,0x60(%r8)
	node->rb_left = node->rb_right = NULL;
     3bf:	49 c7 40 68 00 00 00 	movq   $0x0,0x68(%r8)
     3c6:	00 
     3c7:	49 c7 40 70 00 00 00 	movq   $0x0,0x70(%r8)
     3ce:	00 
						struct rfuse_writepage_args *wpa)
     3cf:	48 89 e5             	mov    %rsp,%rbp

	*rb_link = node;
     3d2:	48 89 39             	mov    %rdi,(%rcx)
	rb_link_node(&wpa->writepages_entry, parent, p);
     3d5:	e8 00 00 00 00       	call   3da <rfuse_insert_writeback+0x9a>
	rb_insert_color(&wpa->writepages_entry, root);
     3da:	31 c0                	xor    %eax,%eax
	return NULL;
     3dc:	5d                   	pop    %rbp
     3dd:	31 d2                	xor    %edx,%edx
     3df:	31 c9                	xor    %ecx,%ecx
     3e1:	31 f6                	xor    %esi,%esi
     3e3:	31 ff                	xor    %edi,%edi
     3e5:	45 31 c0             	xor    %r8d,%r8d
     3e8:	45 31 c9             	xor    %r9d,%r9d
     3eb:	45 31 d2             	xor    %r10d,%r10d
     3ee:	e9 00 00 00 00       	jmp    3f3 <rfuse_insert_writeback+0xb3>
				writepages_entry);
     3f3:	0f 0b                	ud2    
     3f5:	eb 97                	jmp    38e <rfuse_insert_writeback+0x4e>
		parent = *p;
     3f7:	48 83 e8 60          	sub    $0x60,%rax
	return NULL;
     3fb:	31 d2                	xor    %edx,%edx
     3fd:	31 c9                	xor    %ecx,%ecx
     3ff:	31 f6                	xor    %esi,%esi
     401:	31 ff                	xor    %edi,%edi
     403:	45 31 c0             	xor    %r8d,%r8d
     406:	45 31 c9             	xor    %r9d,%r9d
     409:	45 31 d2             	xor    %r10d,%r10d
     40c:	e9 00 00 00 00       	jmp    411 <rfuse_insert_writeback+0xd1>

     411:	0f 0b                	ud2    
     413:	e9 4c ff ff ff       	jmp    364 <rfuse_insert_writeback+0x24>
     418:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     41f:	00 

0000000000000420 <__pfx_rfuse_writepage_add_to_bucket>:
     420:	90                   	nop
     421:	90                   	nop
     422:	90                   	nop
     423:	90                   	nop
     424:	90                   	nop
     425:	90                   	nop
     426:	90                   	nop
     427:	90                   	nop
     428:	90                   	nop
     429:	90                   	nop
     42a:	90                   	nop
     42b:	90                   	nop
     42c:	90                   	nop
     42d:	90                   	nop
     42e:	90                   	nop
     42f:	90                   	nop

0000000000000430 <rfuse_writepage_add_to_bucket>:
	WARN_ON(!ff);
	return ff;
}

static void rfuse_writepage_add_to_bucket(struct fuse_conn *fc,
					 struct rfuse_writepage_args *wpa)
     430:	e8 00 00 00 00       	call   435 <rfuse_writepage_add_to_bucket+0x5>
{
     435:	f6 87 3b 01 00 00 01 	testb  $0x1,0x13b(%rdi)
     43c:	75 0f                	jne    44d <rfuse_writepage_add_to_bucket+0x1d>
     43e:	31 c0                	xor    %eax,%eax
     440:	31 d2                	xor    %edx,%edx
     442:	31 c9                	xor    %ecx,%ecx
     444:	31 f6                	xor    %esi,%esi
     446:	31 ff                	xor    %edi,%edi
     448:	e9 00 00 00 00       	jmp    44d <rfuse_writepage_add_to_bucket+0x1d>
					 struct rfuse_writepage_args *wpa)
     44d:	55                   	push   %rbp
     44e:	48 89 e5             	mov    %rsp,%rbp
     451:	41 54                	push   %r12
     453:	49 89 f4             	mov    %rsi,%r12
     456:	53                   	push   %rbx
     457:	48 89 fb             	mov    %rdi,%rbx
 * read-side critical sections may be preempted and they may also block, but
 * only when acquiring spinlocks that are subject to priority inheritance.
 */
static __always_inline void rcu_read_lock(void)
{
	__rcu_read_lock();
     45a:	e8 00 00 00 00       	call   45f <rfuse_writepage_add_to_bucket+0x2f>
	if (!fc->sync_fs)
		return;

	rcu_read_lock();
	/* Prevent resurrection of dead bucket in unlikely race with syncfs */
	do {
     45f:	48 8b 93 10 02 00 00 	mov    0x210(%rbx),%rdx
     466:	49 89 94 24 98 00 00 	mov    %rdx,0x98(%r12)
     46d:	00 
{
	/*
	 * Note for KASAN: we deliberately don't use READ_ONCE_NOCHECK() here,
	 * it's non-inlined function that increases binary size and stack usage.
	 */
	return __READ_ONCE((v)->counter);
     46e:	8b 02                	mov    (%rdx),%eax
	return arch_atomic_fetch_add_unless(v, a, u);
#else
	int c = raw_atomic_read(v);

	do {
		if (unlikely(c == u))
     470:	85 c0                	test   %eax,%eax
     472:	74 eb                	je     45f <rfuse_writepage_add_to_bucket+0x2f>
			break;
	} while (!raw_atomic_try_cmpxchg(v, &c, c + a));
     474:	8d 48 01             	lea    0x1(%rax),%ecx
}
#define arch_atomic_cmpxchg arch_atomic_cmpxchg

static __always_inline bool arch_atomic_try_cmpxchg(atomic_t *v, int *old, int new)
{
	return arch_try_cmpxchg(&v->counter, old, new);
     477:	f0 0f b1 0a          	lock cmpxchg %ecx,(%rdx)
     47b:	75 f3                	jne    470 <rfuse_writepage_add_to_bucket+0x40>
static inline void rcu_read_unlock(void)
{
	RCU_LOCKDEP_WARN(!rcu_is_watching(),
			 "rcu_read_unlock() used illegally while idle");
	__release(RCU);
	__rcu_read_unlock();
     47d:	e8 00 00 00 00       	call   482 <rfuse_writepage_add_to_bucket+0x52>
		wpa->bucket = rcu_dereference(fc->curr_bucket);
	} while (unlikely(!atomic_inc_not_zero(&wpa->bucket->count)));
	rcu_read_unlock();
     482:	5b                   	pop    %rbx
     483:	41 5c                	pop    %r12
     485:	5d                   	pop    %rbp
     486:	31 c0                	xor    %eax,%eax
     488:	31 d2                	xor    %edx,%edx
     48a:	31 c9                	xor    %ecx,%ecx
     48c:	31 f6                	xor    %esi,%esi
     48e:	31 ff                	xor    %edi,%edi
     490:	e9 00 00 00 00       	jmp    495 <rfuse_writepage_add_to_bucket+0x65>
     495:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     49c:	00 00 00 00 

00000000000004a0 <__pfx_rfuse_wait_on_page_writeback.part.0>:
     4a0:	90                   	nop
     4a1:	90                   	nop
     4a2:	90                   	nop
     4a3:	90                   	nop
     4a4:	90                   	nop
     4a5:	90                   	nop
     4a6:	90                   	nop
     4a7:	90                   	nop
     4a8:	90                   	nop
     4a9:	90                   	nop
     4aa:	90                   	nop
     4ab:	90                   	nop
     4ac:	90                   	nop
     4ad:	90                   	nop
     4ae:	90                   	nop
     4af:	90                   	nop

00000000000004b0 <rfuse_wait_on_page_writeback.part.0>:
void rfuse_wait_on_page_writeback(struct inode *inode, pgoff_t index)
     4b0:	e8 00 00 00 00       	call   4b5 <rfuse_wait_on_page_writeback.part.0+0x5>
     4b5:	55                   	push   %rbp
     4b6:	48 89 e5             	mov    %rsp,%rbp
     4b9:	41 55                	push   %r13
     4bb:	41 54                	push   %r12
     4bd:	49 89 fc             	mov    %rdi,%r12
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
     4c0:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
void rfuse_wait_on_page_writeback(struct inode *inode, pgoff_t index)
     4c4:	53                   	push   %rbx
     4c5:	48 89 f3             	mov    %rsi,%rbx
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
     4c8:	31 f6                	xor    %esi,%esi
     4ca:	4d 8d ac 24 d8 02 00 	lea    0x2d8(%r12),%r13
     4d1:	00 
void rfuse_wait_on_page_writeback(struct inode *inode, pgoff_t index)
     4d2:	48 83 ec 30          	sub    $0x30,%rsp
     4d6:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
     4dd:	00 00 
     4df:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     4e3:	31 c0                	xor    %eax,%eax
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
     4e5:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
     4ec:	00 
     4ed:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
     4f4:	00 
     4f5:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
     4fc:	00 
     4fd:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
     504:	00 
     505:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
     50c:	00 
     50d:	e8 00 00 00 00       	call   512 <rfuse_wait_on_page_writeback.part.0+0x62>
     512:	eb 05                	jmp    519 <rfuse_wait_on_page_writeback.part.0+0x69>
     514:	e8 00 00 00 00       	call   519 <rfuse_wait_on_page_writeback.part.0+0x69>
     519:	ba 02 00 00 00       	mov    $0x2,%edx
     51e:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
     522:	4c 89 ef             	mov    %r13,%rdi
     525:	e8 00 00 00 00       	call   52a <rfuse_wait_on_page_writeback.part.0+0x7a>
	return rfuse_range_is_writeback(inode, index, index);
     52a:	48 89 da             	mov    %rbx,%rdx
     52d:	48 89 de             	mov    %rbx,%rsi
     530:	4c 89 e7             	mov    %r12,%rdi
     533:	e8 d8 fa ff ff       	call   10 <rfuse_range_is_writeback>
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
     538:	84 c0                	test   %al,%al
     53a:	75 d8                	jne    514 <rfuse_wait_on_page_writeback.part.0+0x64>
     53c:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
     540:	4c 89 ef             	mov    %r13,%rdi
     543:	e8 00 00 00 00       	call   548 <rfuse_wait_on_page_writeback.part.0+0x98>
}
     548:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     54c:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
     553:	00 00 
     555:	75 17                	jne    56e <rfuse_wait_on_page_writeback.part.0+0xbe>
     557:	48 83 c4 30          	add    $0x30,%rsp
     55b:	5b                   	pop    %rbx
     55c:	41 5c                	pop    %r12
     55e:	41 5d                	pop    %r13
     560:	5d                   	pop    %rbp
     561:	31 c0                	xor    %eax,%eax
     563:	31 d2                	xor    %edx,%edx
     565:	31 f6                	xor    %esi,%esi
     567:	31 ff                	xor    %edi,%edi
     569:	e9 00 00 00 00       	jmp    56e <rfuse_wait_on_page_writeback.part.0+0xbe>
     56e:	e8 00 00 00 00       	call   573 <rfuse_wait_on_page_writeback.part.0+0xc3>
     573:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     57a:	00 00 00 00 
     57e:	66 90                	xchg   %ax,%ax

0000000000000580 <__pfx_zero_user_segments.constprop.0>:
     580:	90                   	nop
     581:	90                   	nop
     582:	90                   	nop
     583:	90                   	nop
     584:	90                   	nop
     585:	90                   	nop
     586:	90                   	nop
     587:	90                   	nop
     588:	90                   	nop
     589:	90                   	nop
     58a:	90                   	nop
     58b:	90                   	nop
     58c:	90                   	nop
     58d:	90                   	nop
     58e:	90                   	nop
     58f:	90                   	nop

0000000000000590 <zero_user_segments.constprop.0>:
 */
#ifdef CONFIG_HIGHMEM
void zero_user_segments(struct page *page, unsigned start1, unsigned end1,
		unsigned start2, unsigned end2);
#else
static inline void zero_user_segments(struct page *page,
     590:	55                   	push   %rbp
     591:	48 89 e5             	mov    %rsp,%rbp
     594:	41 57                	push   %r15
 */
#include <linux/vmstat.h>

static __always_inline void *lowmem_page_address(const struct page *page)
{
	return page_to_virt(page);
     596:	4c 8b 3d 00 00 00 00 	mov    0x0(%rip),%r15        # 59d <zero_user_segments.constprop.0+0xd>
     59d:	41 56                	push   %r14
     59f:	4c 8b 35 00 00 00 00 	mov    0x0(%rip),%r14        # 5a6 <zero_user_segments.constprop.0+0x16>
     5a6:	41 55                	push   %r13
     5a8:	41 89 f5             	mov    %esi,%r13d
     5ab:	41 54                	push   %r12
     5ad:	41 89 d4             	mov    %edx,%r12d
     5b0:	53                   	push   %rbx
     5b1:	48 8b 07             	mov    (%rdi),%rax
     5b4:	48 89 fb             	mov    %rdi,%rbx
	if (!test_bit(PG_head, &folio->flags))
     5b7:	a9 00 00 01 00       	test   $0x10000,%eax
     5bc:	0f 84 81 00 00 00    	je     643 <zero_user_segments.constprop.0+0xb3>
	return folio->_folio_order;
     5c2:	0f b6 4f 51          	movzbl 0x51(%rdi),%ecx
	return PAGE_SIZE << compound_order(page);
     5c6:	80 f9 3f             	cmp    $0x3f,%cl
     5c9:	0f 87 00 00 00 00    	ja     5cf <zero_user_segments.constprop.0+0x3f>
		unsigned start2, unsigned end2)
{
	void *kaddr = kmap_local_page(page);
	unsigned int i;

	BUG_ON(end1 > page_size(page) || end2 > page_size(page));
     5cf:	89 d0                	mov    %edx,%eax
     5d1:	ba 00 10 00 00       	mov    $0x1000,%edx
     5d6:	48 d3 e2             	shl    %cl,%rdx
     5d9:	48 39 c2             	cmp    %rax,%rdx
     5dc:	72 7c                	jb     65a <zero_user_segments.constprop.0+0xca>
     5de:	48 8b 07             	mov    (%rdi),%rax

	if (end1 > start1)
     5e1:	45 39 e5             	cmp    %r12d,%r13d
     5e4:	72 3a                	jb     620 <zero_user_segments.constprop.0+0x90>
static inline void zero_user_segments(struct page *page,
     5e6:	31 c0                	xor    %eax,%eax
     5e8:	eb 03                	jmp    5ed <zero_user_segments.constprop.0+0x5d>

	if (end2 > start2)
		memset(kaddr + start2, 0, end2 - start2);

	kunmap_local(kaddr);
	for (i = 0; i < compound_nr(page); i++)
     5ea:	83 c0 01             	add    $0x1,%eax
     5ed:	48 8b 33             	mov    (%rbx),%rsi
     5f0:	89 c1                	mov    %eax,%ecx
		return 1;
     5f2:	ba 01 00 00 00       	mov    $0x1,%edx
	if (!test_bit(PG_head, &folio->flags))
     5f7:	f7 c6 00 00 01 00    	test   $0x10000,%esi
     5fd:	74 03                	je     602 <zero_user_segments.constprop.0+0x72>
	return folio->_folio_nr_pages;
     5ff:	8b 53 60             	mov    0x60(%rbx),%edx
     602:	48 39 d1             	cmp    %rdx,%rcx
     605:	72 e3                	jb     5ea <zero_user_segments.constprop.0+0x5a>
		flush_dcache_page(page + i);
}
     607:	5b                   	pop    %rbx
     608:	41 5c                	pop    %r12
     60a:	41 5d                	pop    %r13
     60c:	41 5e                	pop    %r14
     60e:	41 5f                	pop    %r15
     610:	5d                   	pop    %rbp
     611:	31 c0                	xor    %eax,%eax
     613:	31 d2                	xor    %edx,%edx
     615:	31 c9                	xor    %ecx,%ecx
     617:	31 f6                	xor    %esi,%esi
     619:	31 ff                	xor    %edi,%edi
     61b:	e9 00 00 00 00       	jmp    620 <zero_user_segments.constprop.0+0x90>
	return page_to_virt(page);
     620:	48 89 df             	mov    %rbx,%rdi
		memset(kaddr + start1, 0, end1 - start1);
     623:	44 89 e2             	mov    %r12d,%edx
     626:	31 f6                	xor    %esi,%esi
     628:	4c 29 ff             	sub    %r15,%rdi
     62b:	44 29 ea             	sub    %r13d,%edx
     62e:	48 c1 ff 06          	sar    $0x6,%rdi
     632:	48 c1 e7 0c          	shl    $0xc,%rdi
     636:	4c 01 f7             	add    %r14,%rdi
     639:	4c 01 ef             	add    %r13,%rdi
     63c:	e8 00 00 00 00       	call   641 <zero_user_segments.constprop.0+0xb1>
     641:	eb a3                	jmp    5e6 <zero_user_segments.constprop.0+0x56>
     643:	48 8b 07             	mov    (%rdi),%rax
	if (!test_bit(PG_head, &folio->flags))
     646:	a9 00 00 01 00       	test   $0x10000,%eax
     64b:	74 94                	je     5e1 <zero_user_segments.constprop.0+0x51>
	return folio->_folio_order;
     64d:	0f b6 47 51          	movzbl 0x51(%rdi),%eax
	return PAGE_SIZE << compound_order(page);
     651:	3c 3f                	cmp    $0x3f,%al
     653:	76 8c                	jbe    5e1 <zero_user_segments.constprop.0+0x51>
     655:	e9 00 00 00 00       	jmp    65a <zero_user_segments.constprop.0+0xca>
	BUG_ON(end1 > page_size(page) || end2 > page_size(page));
     65a:	0f 0b                	ud2    
     65c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000660 <__pfx_rfuse_file_put>:
     660:	90                   	nop
     661:	90                   	nop
     662:	90                   	nop
     663:	90                   	nop
     664:	90                   	nop
     665:	90                   	nop
     666:	90                   	nop
     667:	90                   	nop
     668:	90                   	nop
     669:	90                   	nop
     66a:	90                   	nop
     66b:	90                   	nop
     66c:	90                   	nop
     66d:	90                   	nop
     66e:	90                   	nop
     66f:	90                   	nop

0000000000000670 <rfuse_file_put>:
				 bool sync, bool isdir){
     670:	e8 00 00 00 00       	call   675 <rfuse_file_put+0x5>
     675:	55                   	push   %rbp
	return xadd(&v->counter, -i);
     676:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     67b:	48 89 e5             	mov    %rsp,%rbp
     67e:	41 56                	push   %r14
     680:	41 55                	push   %r13
     682:	41 54                	push   %r12
     684:	53                   	push   %rbx
     685:	48 89 fb             	mov    %rdi,%rbx
     688:	48 83 ec 08          	sub    $0x8,%rsp
     68c:	f0 0f c1 47 28       	lock xadd %eax,0x28(%rdi)
	int old = atomic_fetch_sub_release(i, &r->refs);

	if (oldp)
		*oldp = old;

	if (old == i) {
     691:	83 f8 01             	cmp    $0x1,%eax
     694:	74 23                	je     6b9 <rfuse_file_put+0x49>
		smp_acquire__after_ctrl_dep();
		return true;
	}

	if (unlikely(old < 0 || old - i < 0))
     696:	85 c0                	test   %eax,%eax
     698:	0f 8e af 01 00 00    	jle    84d <rfuse_file_put+0x1dd>
}
     69e:	48 83 c4 08          	add    $0x8,%rsp
     6a2:	5b                   	pop    %rbx
     6a3:	41 5c                	pop    %r12
     6a5:	41 5d                	pop    %r13
     6a7:	41 5e                	pop    %r14
     6a9:	5d                   	pop    %rbp
     6aa:	31 c0                	xor    %eax,%eax
     6ac:	31 d2                	xor    %edx,%edx
     6ae:	31 c9                	xor    %ecx,%ecx
     6b0:	31 f6                	xor    %esi,%esi
     6b2:	31 ff                	xor    %edi,%edi
     6b4:	e9 00 00 00 00       	jmp    6b9 <rfuse_file_put+0x49>
     6b9:	41 89 d5             	mov    %edx,%r13d
     6bc:	41 89 ce             	mov    %ecx,%r14d
		if(!r_req || isdir ? r_req->in.opcode != FUSE_RELEASEDIR : r_req->in.opcode != FUSE_RELEASE) {
     6bf:	48 85 f6             	test   %rsi,%rsi
     6c2:	74 22                	je     6e6 <rfuse_file_put+0x76>
     6c4:	84 c9                	test   %cl,%cl
     6c6:	75 1e                	jne    6e6 <rfuse_file_put+0x76>
     6c8:	83 7e 10 12          	cmpl   $0x12,0x10(%rsi)
     6cc:	75 22                	jne    6f0 <rfuse_file_put+0x80>
     6ce:	48 8b 17             	mov    (%rdi),%rdx
			if (isdir ? ff->fm->fc->no_opendir : ff->fm->fc->no_open) {
     6d1:	48 8b 02             	mov    (%rdx),%rax
     6d4:	0f b6 80 36 01 00 00 	movzbl 0x136(%rax),%eax
     6db:	c0 e8 04             	shr    $0x4,%al
     6de:	83 e0 01             	and    $0x1,%eax
     6e1:	e9 e3 00 00 00       	jmp    7c9 <rfuse_file_put+0x159>
		if(!r_req || isdir ? r_req->in.opcode != FUSE_RELEASEDIR : r_req->in.opcode != FUSE_RELEASE) {
     6e6:	83 7e 10 1d          	cmpl   $0x1d,0x10(%rsi)
     6ea:	0f 84 bd 00 00 00    	je     7ad <rfuse_file_put+0x13d>
			if (isdir ? ff->fm->fc->no_opendir : ff->fm->fc->no_open) {
     6f0:	48 8b 3b             	mov    (%rbx),%rdi
				new_r_req = rfuse_get_req(ff->fm, false, true);
     6f3:	ba 01 00 00 00       	mov    $0x1,%edx
			if(sync)
     6f8:	45 84 ed             	test   %r13b,%r13b
     6fb:	0f 85 10 01 00 00    	jne    811 <rfuse_file_put+0x1a1>
				new_r_req = rfuse_get_req(ff->fm, true, true);
     701:	be 01 00 00 00       	mov    $0x1,%esi
     706:	e8 00 00 00 00       	call   70b <rfuse_file_put+0x9b>
     70b:	49 89 c4             	mov    %rax,%r12
			new_rfuse_inarg->inarg = ff->release_args->inarg;
     70e:	48 8b 43 08          	mov    0x8(%rbx),%rax
     712:	48 8b 50 70          	mov    0x70(%rax),%rdx
     716:	49 89 54 24 78       	mov    %rdx,0x78(%r12)
     71b:	48 8b 50 78          	mov    0x78(%rax),%rdx
     71f:	49 89 94 24 80 00 00 	mov    %rdx,0x80(%r12)
     726:	00 
     727:	48 8b 80 80 00 00 00 	mov    0x80(%rax),%rax
     72e:	49 89 84 24 88 00 00 	mov    %rax,0x88(%r12)
     735:	00 
			new_rfuse_inarg->inode = ff->release_args->inode;
     736:	48 8b 43 08          	mov    0x8(%rbx),%rax
     73a:	48 8b b8 88 00 00 00 	mov    0x88(%rax),%rdi
     741:	49 89 bc 24 90 00 00 	mov    %rdi,0x90(%r12)
     748:	00 
			new_r_req->in.opcode = ff->release_args->args.opcode;
     749:	48 8b 43 08          	mov    0x8(%rbx),%rax
     74d:	8b 40 08             	mov    0x8(%rax),%eax
     750:	41 89 44 24 10       	mov    %eax,0x10(%r12)
			new_r_req->in.nodeid = ff->release_args->args.nodeid;
     755:	48 8b 43 08          	mov    0x8(%rbx),%rax
     759:	48 8b 00             	mov    (%rax),%rax
     75c:	49 89 44 24 08       	mov    %rax,0x8(%r12)
			if (isdir ? ff->fm->fc->no_opendir : ff->fm->fc->no_open) {
     761:	48 8b 03             	mov    (%rbx),%rax
     764:	48 8b 00             	mov    (%rax),%rax
     767:	0f b6 80 36 01 00 00 	movzbl 0x136(%rax),%eax
     76e:	45 84 f6             	test   %r14b,%r14b
     771:	0f 84 ff 00 00 00    	je     876 <rfuse_file_put+0x206>
     777:	c0 e8 05             	shr    $0x5,%al
     77a:	83 e0 01             	and    $0x1,%eax
     77d:	84 c0                	test   %al,%al
     77f:	0f 85 c1 00 00 00    	jne    846 <rfuse_file_put+0x1d6>
			} else if (sync) {
     785:	45 84 ed             	test   %r13b,%r13b
     788:	0f 84 f3 00 00 00    	je     881 <rfuse_file_put+0x211>
				rfuse_simple_request(new_r_req);
     78e:	4c 89 e7             	mov    %r12,%rdi
     791:	e8 00 00 00 00       	call   796 <rfuse_file_put+0x126>
	iput(rfuse_inarg->inode);
     796:	49 8b bc 24 90 00 00 	mov    0x90(%r12),%rdi
     79d:	00 
     79e:	e8 00 00 00 00       	call   7a3 <rfuse_file_put+0x133>
				rfuse_put_request(new_r_req);
     7a3:	4c 89 e7             	mov    %r12,%rdi
     7a6:	e8 00 00 00 00       	call   7ab <rfuse_file_put+0x13b>
     7ab:	eb 41                	jmp    7ee <rfuse_file_put+0x17e>
			if (isdir ? ff->fm->fc->no_opendir : ff->fm->fc->no_open) {
     7ad:	48 8b 13             	mov    (%rbx),%rdx
     7b0:	48 8b 02             	mov    (%rdx),%rax
     7b3:	0f b6 80 36 01 00 00 	movzbl 0x136(%rax),%eax
     7ba:	45 84 f6             	test   %r14b,%r14b
     7bd:	0f 84 0e ff ff ff    	je     6d1 <rfuse_file_put+0x61>
     7c3:	c0 e8 05             	shr    $0x5,%al
     7c6:	83 e0 01             	and    $0x1,%eax
     7c9:	84 c0                	test   %al,%al
     7cb:	75 72                	jne    83f <rfuse_file_put+0x1cf>
			} else if (sync) {
     7cd:	45 84 ed             	test   %r13b,%r13b
     7d0:	74 4e                	je     820 <rfuse_file_put+0x1b0>
				rfuse_simple_request(r_req);
     7d2:	48 89 f7             	mov    %rsi,%rdi
     7d5:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
     7d9:	e8 00 00 00 00       	call   7de <rfuse_file_put+0x16e>
	iput(rfuse_inarg->inode);
     7de:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
     7e2:	48 8b be 90 00 00 00 	mov    0x90(%rsi),%rdi
     7e9:	e8 00 00 00 00       	call   7ee <rfuse_file_put+0x17e>
		kfree(ff);
     7ee:	48 89 df             	mov    %rbx,%rdi
     7f1:	e8 00 00 00 00       	call   7f6 <rfuse_file_put+0x186>
}
     7f6:	48 83 c4 08          	add    $0x8,%rsp
     7fa:	5b                   	pop    %rbx
     7fb:	41 5c                	pop    %r12
     7fd:	41 5d                	pop    %r13
     7ff:	41 5e                	pop    %r14
     801:	5d                   	pop    %rbp
     802:	31 c0                	xor    %eax,%eax
     804:	31 d2                	xor    %edx,%edx
     806:	31 c9                	xor    %ecx,%ecx
     808:	31 f6                	xor    %esi,%esi
     80a:	31 ff                	xor    %edi,%edi
     80c:	e9 00 00 00 00       	jmp    811 <rfuse_file_put+0x1a1>
				new_r_req = rfuse_get_req(ff->fm, false, true);
     811:	31 f6                	xor    %esi,%esi
     813:	e8 00 00 00 00       	call   818 <rfuse_file_put+0x1a8>
     818:	49 89 c4             	mov    %rax,%r12
     81b:	e9 ee fe ff ff       	jmp    70e <rfuse_file_put+0x9e>
				r_req->end = rfuse_release_end;
     820:	48 c7 86 f8 00 00 00 	movq   $0x0,0xf8(%rsi)
     827:	00 00 00 00 
				if (rfuse_simple_background(ff->fm, r_req))
     82b:	48 8b 3b             	mov    (%rbx),%rdi
     82e:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
     832:	e8 00 00 00 00       	call   837 <rfuse_file_put+0x1c7>
     837:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
     83b:	84 c0                	test   %al,%al
     83d:	74 af                	je     7ee <rfuse_file_put+0x17e>
	iput(rfuse_inarg->inode);
     83f:	48 8b be 90 00 00 00 	mov    0x90(%rsi),%rdi
     846:	e8 00 00 00 00       	call   84b <rfuse_file_put+0x1db>
}
     84b:	eb a1                	jmp    7ee <rfuse_file_put+0x17e>
     84d:	48 83 c7 28          	add    $0x28,%rdi
		refcount_warn_saturate(r, REFCOUNT_SUB_UAF);
     851:	be 03 00 00 00       	mov    $0x3,%esi
     856:	e8 00 00 00 00       	call   85b <rfuse_file_put+0x1eb>
}
     85b:	48 83 c4 08          	add    $0x8,%rsp
     85f:	5b                   	pop    %rbx
     860:	41 5c                	pop    %r12
     862:	41 5d                	pop    %r13
     864:	41 5e                	pop    %r14
     866:	5d                   	pop    %rbp
     867:	31 c0                	xor    %eax,%eax
     869:	31 d2                	xor    %edx,%edx
     86b:	31 c9                	xor    %ecx,%ecx
     86d:	31 f6                	xor    %esi,%esi
     86f:	31 ff                	xor    %edi,%edi
     871:	e9 00 00 00 00       	jmp    876 <rfuse_file_put+0x206>
			if (isdir ? ff->fm->fc->no_opendir : ff->fm->fc->no_open) {
     876:	c0 e8 04             	shr    $0x4,%al
     879:	83 e0 01             	and    $0x1,%eax
     87c:	e9 fc fe ff ff       	jmp    77d <rfuse_file_put+0x10d>
				new_r_req->end = rfuse_release_end;
     881:	49 c7 84 24 f8 00 00 	movq   $0x0,0xf8(%r12)
     888:	00 00 00 00 00 
				if (rfuse_simple_background(ff->fm, new_r_req))
     88d:	48 8b 3b             	mov    (%rbx),%rdi
     890:	4c 89 e6             	mov    %r12,%rsi
     893:	e8 00 00 00 00       	call   898 <rfuse_file_put+0x228>
     898:	84 c0                	test   %al,%al
     89a:	0f 84 4e ff ff ff    	je     7ee <rfuse_file_put+0x17e>
	iput(rfuse_inarg->inode);
     8a0:	49 8b bc 24 90 00 00 	mov    0x90(%r12),%rdi
     8a7:	00 
     8a8:	e8 00 00 00 00       	call   8ad <rfuse_file_put+0x23d>
}
     8ad:	e9 3c ff ff ff       	jmp    7ee <rfuse_file_put+0x17e>
     8b2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     8b9:	00 00 00 00 
     8bd:	0f 1f 00             	nopl   (%rax)

00000000000008c0 <__pfx_rfuse_writepage_free>:
     8c0:	90                   	nop
     8c1:	90                   	nop
     8c2:	90                   	nop
     8c3:	90                   	nop
     8c4:	90                   	nop
     8c5:	90                   	nop
     8c6:	90                   	nop
     8c7:	90                   	nop
     8c8:	90                   	nop
     8c9:	90                   	nop
     8ca:	90                   	nop
     8cb:	90                   	nop
     8cc:	90                   	nop
     8cd:	90                   	nop
     8ce:	90                   	nop
     8cf:	90                   	nop

00000000000008d0 <rfuse_writepage_free>:
		wb_writeout_inc(&bdi->wb);
	}
	wake_up(&fi->page_waitq);
}

static void rfuse_writepage_free(struct rfuse_writepage_args *r_wpa)
     8d0:	e8 00 00 00 00       	call   8d5 <rfuse_writepage_free+0x5>
     8d5:	55                   	push   %rbp
     8d6:	48 89 e5             	mov    %rsp,%rbp
     8d9:	41 55                	push   %r13
     8db:	41 54                	push   %r12
     8dd:	49 89 fc             	mov    %rdi,%r12
     8e0:	53                   	push   %rbx
{
	struct rfuse_req *r_req = r_wpa->ria.r_req;
	struct rfuse_pages *rp = &r_wpa->ria.rp;
	int i;

     8e1:	48 8b 9f 98 00 00 00 	mov    0x98(%rdi),%rbx
{
     8e8:	4c 8b 6f 30          	mov    0x30(%rdi),%r13

     8ec:	48 85 db             	test   %rbx,%rbx
     8ef:	74 0f                	je     900 <rfuse_writepage_free+0x30>
	__rcu_read_lock();
     8f1:	e8 00 00 00 00       	call   8f6 <rfuse_writepage_free+0x26>
	return GEN_UNARY_RMWcc(LOCK_PREFIX "decl", v->counter, e);
     8f6:	f0 ff 0b             	lock decl (%rbx)
	rcu_read_lock();
     8f9:	74 6a                	je     965 <rfuse_writepage_free+0x95>
	__rcu_read_unlock();
     8fb:	e8 00 00 00 00       	call   900 <rfuse_writepage_free+0x30>
	if (r_wpa->bucket)
		rfuse_sync_bucket_dec(r_wpa->bucket);

     900:	41 8b 44 24 48       	mov    0x48(%r12),%eax
     905:	85 c0                	test   %eax,%eax
     907:	74 1f                	je     928 <rfuse_writepage_free+0x58>
     909:	31 db                	xor    %ebx,%ebx
	for (i = 0; i < rp->num_pages; i++)
     90b:	49 8b 44 24 38       	mov    0x38(%r12),%rax
     910:	48 63 d3             	movslq %ebx,%rdx
     913:	31 f6                	xor    %esi,%esi

     915:	83 c3 01             	add    $0x1,%ebx
	for (i = 0; i < rp->num_pages; i++)
     918:	48 8b 3c d0          	mov    (%rax,%rdx,8),%rdi
     91c:	e8 00 00 00 00       	call   921 <rfuse_writepage_free+0x51>

     921:	41 3b 5c 24 48       	cmp    0x48(%r12),%ebx
     926:	72 e3                	jb     90b <rfuse_writepage_free+0x3b>
		__free_page(rp->pages[i]);

     928:	49 8b 7c 24 58       	mov    0x58(%r12),%rdi
     92d:	48 85 ff             	test   %rdi,%rdi
     930:	74 0c                	je     93e <rfuse_writepage_free+0x6e>
	if (r_wpa->ria.ff)
     932:	31 c9                	xor    %ecx,%ecx
     934:	31 d2                	xor    %edx,%edx
     936:	4c 89 ee             	mov    %r13,%rsi
     939:	e8 32 fd ff ff       	call   670 <rfuse_file_put>
		rfuse_file_put(r_wpa->ria.ff, r_req, false, false);

     93e:	49 8b 7c 24 38       	mov    0x38(%r12),%rdi
     943:	e8 00 00 00 00       	call   948 <rfuse_writepage_free+0x78>
	kfree(rp->pages);
     948:	4c 89 e7             	mov    %r12,%rdi
     94b:	e8 00 00 00 00       	call   950 <rfuse_writepage_free+0x80>
	kfree(r_wpa);
     950:	5b                   	pop    %rbx
     951:	41 5c                	pop    %r12
     953:	41 5d                	pop    %r13
     955:	5d                   	pop    %rbp
     956:	31 c0                	xor    %eax,%eax
     958:	31 d2                	xor    %edx,%edx
     95a:	31 c9                	xor    %ecx,%ecx
     95c:	31 f6                	xor    %esi,%esi
     95e:	31 ff                	xor    %edi,%edi
     960:	e9 00 00 00 00       	jmp    965 <rfuse_writepage_free+0x95>
	if (atomic_dec_and_test(&bucket->count))
     965:	48 8d 7b 08          	lea    0x8(%rbx),%rdi
     969:	31 c9                	xor    %ecx,%ecx
     96b:	ba 01 00 00 00       	mov    $0x1,%edx
     970:	be 03 00 00 00       	mov    $0x3,%esi
     975:	e8 00 00 00 00       	call   97a <rfuse_writepage_free+0xaa>
     97a:	e9 7c ff ff ff       	jmp    8fb <rfuse_writepage_free+0x2b>
     97f:	90                   	nop

0000000000000980 <__pfx_rfuse_writepage_finish.constprop.0>:
     980:	90                   	nop
     981:	90                   	nop
     982:	90                   	nop
     983:	90                   	nop
     984:	90                   	nop
     985:	90                   	nop
     986:	90                   	nop
     987:	90                   	nop
     988:	90                   	nop
     989:	90                   	nop
     98a:	90                   	nop
     98b:	90                   	nop
     98c:	90                   	nop
     98d:	90                   	nop
     98e:	90                   	nop
     98f:	90                   	nop

0000000000000990 <rfuse_writepage_finish.constprop.0>:

     990:	e8 00 00 00 00       	call   995 <rfuse_writepage_finish.constprop.0+0x5>
     995:	55                   	push   %rbp
     996:	48 89 e5             	mov    %rsp,%rbp
     999:	41 57                	push   %r15
     99b:	41 56                	push   %r14
     99d:	41 55                	push   %r13
     99f:	41 54                	push   %r12
     9a1:	49 89 fc             	mov    %rdi,%r12
     9a4:	53                   	push   %rbx
     9a5:	48 83 ec 08          	sub    $0x8,%rsp
	struct rfuse_pages *rp = &r_wpa->ria.rp;
     9a9:	48 8b 87 90 00 00 00 	mov    0x90(%rdi),%rax
	struct fuse_inode *fi = get_fuse_inode(inode);
     9b0:	48 89 c7             	mov    %rax,%rdi
	struct rfuse_pages *rp = &r_wpa->ria.rp;
     9b3:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
	struct fuse_inode *fi = get_fuse_inode(inode);
     9b7:	e8 00 00 00 00       	call   9bc <rfuse_writepage_finish.constprop.0+0x2c>

     9bc:	41 8b 54 24 48       	mov    0x48(%r12),%edx
     9c1:	85 d2                	test   %edx,%edx
     9c3:	74 5b                	je     a20 <rfuse_writepage_finish.constprop.0+0x90>
     9c5:	4c 8d 78 60          	lea    0x60(%rax),%r15
     9c9:	4c 8d a8 e8 00 00 00 	lea    0xe8(%rax),%r13
     9d0:	31 db                	xor    %ebx,%ebx
     9d2:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
}

static inline void wb_stat_mod(struct bdi_writeback *wb,
				 enum wb_stat_item item, s64 amount)
{
	percpu_counter_add_batch(&wb->stat[item], amount, WB_STAT_BATCH);
     9d8:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
     9df:	4c 89 ef             	mov    %r13,%rdi
	 * top 32 bits will be cleared.
	 *
	 * We cannot do this on 32 bits because at the very least some
	 * 486 CPUs did not behave this way.
	 */
	asm("bsrl %1,%0"
     9e2:	44 89 f0             	mov    %r14d,%eax
     9e5:	0f bd 05 00 00 00 00 	bsr    0x0(%rip),%eax        # 9ec <rfuse_writepage_finish.constprop.0+0x5c>
     9ec:	8d 14 c5 08 00 00 00 	lea    0x8(,%rax,8),%edx
     9f3:	e8 00 00 00 00       	call   9f8 <rfuse_writepage_finish.constprop.0+0x68>
		dec_wb_stat(&bdi->wb, WB_WRITEBACK);
     9f8:	49 8b 44 24 38       	mov    0x38(%r12),%rax
     9fd:	48 63 d3             	movslq %ebx,%rdx
     a00:	be 16 00 00 00       	mov    $0x16,%esi

     a05:	83 c3 01             	add    $0x1,%ebx
		dec_wb_stat(&bdi->wb, WB_WRITEBACK);
     a08:	48 8b 3c d0          	mov    (%rax,%rdx,8),%rdi
     a0c:	e8 00 00 00 00       	call   a11 <rfuse_writepage_finish.constprop.0+0x81>
		dec_node_page_state(rp->pages[i], NR_WRITEBACK_TEMP);
     a11:	4c 89 ff             	mov    %r15,%rdi
     a14:	e8 00 00 00 00       	call   a19 <rfuse_writepage_finish.constprop.0+0x89>

     a19:	41 3b 5c 24 48       	cmp    0x48(%r12),%ebx
     a1e:	72 b8                	jb     9d8 <rfuse_writepage_finish.constprop.0+0x48>
	}
     a20:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
     a24:	31 c9                	xor    %ecx,%ecx
     a26:	ba 01 00 00 00       	mov    $0x1,%edx
     a2b:	be 03 00 00 00       	mov    $0x3,%esi
     a30:	48 81 c7 d8 02 00 00 	add    $0x2d8,%rdi
     a37:	e8 00 00 00 00       	call   a3c <rfuse_writepage_finish.constprop.0+0xac>
	wake_up(&fi->page_waitq);
     a3c:	48 83 c4 08          	add    $0x8,%rsp
     a40:	5b                   	pop    %rbx
     a41:	41 5c                	pop    %r12
     a43:	41 5d                	pop    %r13
     a45:	41 5e                	pop    %r14
     a47:	41 5f                	pop    %r15
     a49:	5d                   	pop    %rbp
     a4a:	31 c0                	xor    %eax,%eax
     a4c:	31 d2                	xor    %edx,%edx
     a4e:	31 c9                	xor    %ecx,%ecx
     a50:	31 f6                	xor    %esi,%esi
     a52:	31 ff                	xor    %edi,%edi
     a54:	e9 00 00 00 00       	jmp    a59 <rfuse_writepage_finish.constprop.0+0xc9>
     a59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000a60 <__pfx_rfuse_send_writepage>:
     a60:	90                   	nop
     a61:	90                   	nop
     a62:	90                   	nop
     a63:	90                   	nop
     a64:	90                   	nop
     a65:	90                   	nop
     a66:	90                   	nop
     a67:	90                   	nop
     a68:	90                   	nop
     a69:	90                   	nop
     a6a:	90                   	nop
     a6b:	90                   	nop
     a6c:	90                   	nop
     a6d:	90                   	nop
     a6e:	90                   	nop
     a6f:	90                   	nop

0000000000000a70 <rfuse_send_writepage>:

/* Called under fi->lock, may release and reacquire it */
static void rfuse_send_writepage(struct fuse_mount *fm,
				struct rfuse_writepage_args *r_wpa, loff_t size)
__releases(fi->lock)
__acquires(fi->lock)
     a70:	e8 00 00 00 00       	call   a75 <rfuse_send_writepage+0x5>
     a75:	55                   	push   %rbp
     a76:	48 89 e5             	mov    %rsp,%rbp
     a79:	41 57                	push   %r15
     a7b:	49 89 ff             	mov    %rdi,%r15
     a7e:	41 56                	push   %r14
     a80:	41 55                	push   %r13
     a82:	41 54                	push   %r12
     a84:	53                   	push   %rbx
     a85:	48 89 f3             	mov    %rsi,%rbx
     a88:	48 83 ec 08          	sub    $0x8,%rsp
{
	struct rfuse_writepage_args *aux, *next;
     a8c:	4c 8b b6 90 00 00 00 	mov    0x90(%rsi),%r14
	struct fuse_inode *fi = get_fuse_inode(r_wpa->inode);
	struct fuse_write_in *inarg;
	struct rfuse_req *r_req;
	struct rfuse_io_args *ria = &r_wpa->ria;
     a93:	44 8b 66 48          	mov    0x48(%rsi),%r12d
__acquires(fi->lock)
     a97:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
	__u64 data_size = r_wpa->ria.rp.num_pages * PAGE_SIZE;
	int err;

     a9b:	be 01 00 00 00       	mov    $0x1,%esi
     aa0:	ba 01 00 00 00       	mov    $0x1,%edx
     aa5:	4d 8d ae 20 03 00 00 	lea    0x320(%r14),%r13
	struct rfuse_io_args *ria = &r_wpa->ria;
     aac:	49 c1 e4 0c          	shl    $0xc,%r12

     ab0:	4c 89 e9             	mov    %r13,%rcx
     ab3:	e8 00 00 00 00       	call   ab8 <rfuse_send_writepage+0x48>
	r_req->nocreds = true;

	rfuse_write_args_fill(&r_wpa->ria, r_wpa->ria.ff, r_wpa->pos, 0);
	inarg = (struct fuse_write_in *)&r_req->args;

	fi->writectr++;
     ab8:	4c 8b 45 d0          	mov    -0x30(%rbp),%r8

     abc:	48 89 43 30          	mov    %rax,0x30(%rbx)

     ac0:	48 89 c6             	mov    %rax,%rsi
	r_req->in_pages = true;
     ac3:	80 88 e8 00 00 00 0c 	orb    $0xc,0xe8(%rax)

     aca:	48 8b 4b 58          	mov    0x58(%rbx),%rcx
     ace:	48 8b 93 a0 00 00 00 	mov    0xa0(%rbx),%rdx
	struct rfuse_req *r_req = ria->r_req;
     ad5:	48 8b 43 30          	mov    0x30(%rbx),%rax
	in->fh = ff->fh;
     ad9:	48 8b 79 18          	mov    0x18(%rcx),%rdi
	in->offset = pos;
     add:	48 89 90 80 00 00 00 	mov    %rdx,0x80(%rax)
	in->fh = ff->fh;
     ae4:	48 89 78 78          	mov    %rdi,0x78(%rax)
	in->size = count;
     ae8:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%rax)
     aef:	00 00 00 
	r_req->in.opcode = FUSE_WRITE;
     af2:	c7 40 10 10 00 00 00 	movl   $0x10,0x10(%rax)
	r_req->in.nodeid = ff->nodeid;
     af9:	48 8b 49 20          	mov    0x20(%rcx),%rcx
	r_req->in.arglen[0] = count;
     afd:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%rax)
	r_req->in.nodeid = ff->nodeid;
     b04:	48 89 48 08          	mov    %rcx,0x8(%rax)
	ria->write.in.offset = pos;
     b08:	48 89 53 08          	mov    %rdx,0x8(%rbx)
	struct rfuse_pages *rp = &ria->rp;
     b0c:	48 8d 53 38          	lea    0x38(%rbx),%rdx
	ria->write.in.size = count;
     b10:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%rbx)
	struct rfuse_pages *rp = &ria->rp;
     b17:	48 89 90 f0 00 00 00 	mov    %rdx,0xf0(%rax)

     b1e:	41 8b 96 d0 02 00 00 	mov    0x2d0(%r14),%edx
     b25:	8d 42 01             	lea    0x1(%rdx),%eax
     b28:	41 89 86 d0 02 00 00 	mov    %eax,0x2d0(%r14)
	fi->writectr++;
     b2f:	48 8b 86 80 00 00 00 	mov    0x80(%rsi),%rax
     b36:	4a 8d 0c 20          	lea    (%rax,%r12,1),%rcx
     b3a:	49 39 c8             	cmp    %rcx,%r8
     b3d:	73 0b                	jae    b4a <rfuse_send_writepage+0xda>
	if (inarg->offset + data_size <= size) {
		inarg->size = data_size;
     b3f:	4c 39 c0             	cmp    %r8,%rax
     b42:	73 52                	jae    b96 <rfuse_send_writepage+0x126>
	} else if (inarg->offset < size) {
     b44:	45 89 c4             	mov    %r8d,%r12d
     b47:	41 29 c4             	sub    %eax,%r12d
	if (inarg->offset + data_size <= size) {
     b4a:	44 89 a6 88 00 00 00 	mov    %r12d,0x88(%rsi)
		goto out_free;
	}

	r_req->in.arglen[0] = inarg->size;
	r_req->end = rfuse_writepage_end;

     b51:	4c 89 ff             	mov    %r15,%rdi

     b54:	44 89 66 28          	mov    %r12d,0x28(%rsi)
	r_req->in.arglen[0] = inarg->size;
     b58:	48 c7 86 f8 00 00 00 	movq   $0x0,0xf8(%rsi)
     b5f:	00 00 00 00 

     b63:	e8 00 00 00 00       	call   b68 <rfuse_send_writepage+0xf8>
	err = rfuse_simple_background(fm, r_req);
	/* Fails on broken connection only */
     b68:	84 c0                	test   %al,%al
     b6a:	75 20                	jne    b8c <rfuse_send_writepage+0x11c>
		aux->next = NULL;
		rfuse_writepage_free(aux);
	}

	rfuse_writepage_free(r_wpa);
	spin_lock(&fi->lock);
     b6c:	48 83 c4 08          	add    $0x8,%rsp
     b70:	5b                   	pop    %rbx
     b71:	41 5c                	pop    %r12
     b73:	41 5d                	pop    %r13
     b75:	41 5e                	pop    %r14
     b77:	41 5f                	pop    %r15
     b79:	5d                   	pop    %rbp
     b7a:	31 c0                	xor    %eax,%eax
     b7c:	31 d2                	xor    %edx,%edx
     b7e:	31 c9                	xor    %ecx,%ecx
     b80:	31 f6                	xor    %esi,%esi
     b82:	31 ff                	xor    %edi,%edi
     b84:	45 31 c0             	xor    %r8d,%r8d
     b87:	e9 00 00 00 00       	jmp    b8c <rfuse_send_writepage+0x11c>
 out_free:
     b8c:	41 8b 86 d0 02 00 00 	mov    0x2d0(%r14),%eax
     b93:	8d 50 ff             	lea    -0x1(%rax),%edx
     b96:	41 89 96 d0 02 00 00 	mov    %edx,0x2d0(%r14)
	fi->writectr--;
     b9d:	49 8d b6 f0 02 00 00 	lea    0x2f0(%r14),%rsi
     ba4:	48 8d 7b 60          	lea    0x60(%rbx),%rdi
     ba8:	e8 00 00 00 00       	call   bad <rfuse_send_writepage+0x13d>
	rb_erase(&r_wpa->writepages_entry, &fi->writepages);
     bad:	48 89 df             	mov    %rbx,%rdi
     bb0:	e8 db fd ff ff       	call   990 <rfuse_writepage_finish.constprop.0>
     bb5:	4c 89 ef             	mov    %r13,%rdi
     bb8:	e8 00 00 00 00       	call   bbd <rfuse_send_writepage+0x14d>
	/* After rfuse_writepage_finish() aux request list is private */
     bbd:	4c 8b a3 88 00 00 00 	mov    0x88(%rbx),%r12
     bc4:	4d 85 e4             	test   %r12,%r12
     bc7:	74 20                	je     be9 <rfuse_send_writepage+0x179>
	for (aux = r_wpa->next; aux; aux = next) {
     bc9:	4c 89 e7             	mov    %r12,%rdi
     bcc:	4d 8b a4 24 88 00 00 	mov    0x88(%r12),%r12
     bd3:	00 
		next = aux->next;
     bd4:	48 c7 87 88 00 00 00 	movq   $0x0,0x88(%rdi)
     bdb:	00 00 00 00 
		aux->next = NULL;
     bdf:	e8 ec fc ff ff       	call   8d0 <rfuse_writepage_free>
	/* After rfuse_writepage_finish() aux request list is private */
     be4:	4d 85 e4             	test   %r12,%r12
     be7:	75 e0                	jne    bc9 <rfuse_send_writepage+0x159>

     be9:	48 89 df             	mov    %rbx,%rdi
     bec:	e8 df fc ff ff       	call   8d0 <rfuse_writepage_free>
	raw_spin_lock(&lock->rlock);
     bf1:	4c 89 ef             	mov    %r13,%rdi
     bf4:	e8 00 00 00 00       	call   bf9 <rfuse_send_writepage+0x189>
	spin_lock(&fi->lock);
     bf9:	48 83 c4 08          	add    $0x8,%rsp
     bfd:	5b                   	pop    %rbx
     bfe:	41 5c                	pop    %r12
     c00:	41 5d                	pop    %r13
     c02:	41 5e                	pop    %r14
     c04:	41 5f                	pop    %r15
     c06:	5d                   	pop    %rbp
     c07:	31 c0                	xor    %eax,%eax
     c09:	31 d2                	xor    %edx,%edx
     c0b:	31 c9                	xor    %ecx,%ecx
     c0d:	31 f6                	xor    %esi,%esi
     c0f:	31 ff                	xor    %edi,%edi
     c11:	45 31 c0             	xor    %r8d,%r8d
     c14:	e9 00 00 00 00       	jmp    c19 <rfuse_send_writepage+0x1a9>
     c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000c20 <__pfx_rfuse_writepage_args_alloc>:
     c20:	90                   	nop
     c21:	90                   	nop
     c22:	90                   	nop
     c23:	90                   	nop
     c24:	90                   	nop
     c25:	90                   	nop
     c26:	90                   	nop
     c27:	90                   	nop
     c28:	90                   	nop
     c29:	90                   	nop
     c2a:	90                   	nop
     c2b:	90                   	nop
     c2c:	90                   	nop
     c2d:	90                   	nop
     c2e:	90                   	nop
     c2f:	90                   	nop

0000000000000c30 <rfuse_writepage_args_alloc>:
static struct rfuse_writepage_args *rfuse_writepage_args_alloc(void)
     c30:	e8 00 00 00 00       	call   c35 <rfuse_writepage_args_alloc+0x5>
     c35:	55                   	push   %rbp

		if (size > KMALLOC_MAX_CACHE_SIZE)
			return kmalloc_large(size, flags);

		index = kmalloc_index(size);
		return kmalloc_trace(
     c36:	ba a8 00 00 00       	mov    $0xa8,%edx
     c3b:	be 40 0d 00 00       	mov    $0xd40,%esi
     c40:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # c47 <rfuse_writepage_args_alloc+0x17>
     c47:	48 89 e5             	mov    %rsp,%rbp
     c4a:	41 54                	push   %r12
     c4c:	53                   	push   %rbx
     c4d:	e8 00 00 00 00       	call   c52 <rfuse_writepage_args_alloc+0x22>
	r_wpa = kzalloc(sizeof(*r_wpa), GFP_NOFS);
     c52:	48 85 c0             	test   %rax,%rax
     c55:	74 4e                	je     ca5 <rfuse_writepage_args_alloc+0x75>
     c57:	ba 10 00 00 00       	mov    $0x10,%edx
     c5c:	be 40 0d 00 00       	mov    $0xd40,%esi
     c61:	48 89 c3             	mov    %rax,%rbx
     c64:	49 89 c4             	mov    %rax,%r12
		rp = &r_wpa->ria.rp;
     c67:	c7 40 48 00 00 00 00 	movl   $0x0,0x48(%rax)
     c6e:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # c75 <rfuse_writepage_args_alloc+0x45>
     c75:	e8 00 00 00 00       	call   c7a <rfuse_writepage_args_alloc+0x4a>
{
  struct page **pages;

  pages = kzalloc(
      npages * (sizeof(struct page *) + sizeof(struct fuse_page_desc)), flags);
  *desc = (void *)(pages + npages);
     c7a:	48 8d 50 08          	lea    0x8(%rax),%rdx
		rp->num_pages = 0;
     c7e:	48 89 43 38          	mov    %rax,0x38(%rbx)
     c82:	48 89 53 40          	mov    %rdx,0x40(%rbx)
		rp->pages = fuse_pages_alloc(1, GFP_NOFS, &rp->descs);
     c86:	48 85 c0             	test   %rax,%rax
     c89:	74 12                	je     c9d <rfuse_writepage_args_alloc+0x6d>

     c8b:	4c 89 e0             	mov    %r12,%rax
     c8e:	5b                   	pop    %rbx
     c8f:	41 5c                	pop    %r12
     c91:	5d                   	pop    %rbp
     c92:	31 d2                	xor    %edx,%edx
     c94:	31 f6                	xor    %esi,%esi
     c96:	31 ff                	xor    %edi,%edi
     c98:	e9 00 00 00 00       	jmp    c9d <rfuse_writepage_args_alloc+0x6d>
		if (!rp->pages) {
     c9d:	48 89 df             	mov    %rbx,%rdi
     ca0:	e8 00 00 00 00       	call   ca5 <rfuse_writepage_args_alloc+0x75>

     ca5:	45 31 e4             	xor    %r12d,%r12d
	}
     ca8:	eb e1                	jmp    c8b <rfuse_writepage_args_alloc+0x5b>
     caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000cb0 <__pfx_rfuse_aio_complete>:
     cb0:	90                   	nop
     cb1:	90                   	nop
     cb2:	90                   	nop
     cb3:	90                   	nop
     cb4:	90                   	nop
     cb5:	90                   	nop
     cb6:	90                   	nop
     cb7:	90                   	nop
     cb8:	90                   	nop
     cb9:	90                   	nop
     cba:	90                   	nop
     cbb:	90                   	nop
     cbc:	90                   	nop
     cbd:	90                   	nop
     cbe:	90                   	nop
     cbf:	90                   	nop

0000000000000cc0 <rfuse_aio_complete>:
{
     cc0:	e8 00 00 00 00       	call   cc5 <rfuse_aio_complete+0x5>
     cc5:	55                   	push   %rbp
     cc6:	48 89 e5             	mov    %rsp,%rbp
     cc9:	41 57                	push   %r15
     ccb:	41 56                	push   %r14
     ccd:	4c 8d 77 08          	lea    0x8(%rdi),%r14
     cd1:	41 55                	push   %r13
     cd3:	49 89 d5             	mov    %rdx,%r13
     cd6:	41 54                	push   %r12
     cd8:	41 89 f4             	mov    %esi,%r12d
     cdb:	53                   	push   %rbx
     cdc:	48 89 fb             	mov    %rdi,%rbx
     cdf:	4c 89 f7             	mov    %r14,%rdi
     ce2:	e8 00 00 00 00       	call   ce7 <rfuse_aio_complete+0x27>
	if (err)
     ce7:	45 85 e4             	test   %r12d,%r12d
     cea:	74 4b                	je     d37 <rfuse_aio_complete+0x77>
		io->err = io->err ? : err;
     cec:	8b 43 2c             	mov    0x2c(%rbx),%eax
     cef:	85 c0                	test   %eax,%eax
     cf1:	41 0f 44 c4          	cmove  %r12d,%eax
     cf5:	89 43 2c             	mov    %eax,0x2c(%rbx)
	left = --io->reqs;
     cf8:	83 6b 0c 01          	subl   $0x1,0xc(%rbx)
	if (!left && io->blocking)
     cfc:	74 56                	je     d54 <rfuse_aio_complete+0x94>
	raw_spin_unlock(&lock->rlock);
     cfe:	4c 89 f7             	mov    %r14,%rdi
     d01:	e8 00 00 00 00       	call   d06 <rfuse_aio_complete+0x46>
	return xadd(&v->counter, -i);
     d06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     d0b:	f0 0f c1 03          	lock xadd %eax,(%rbx)
	if (old == i) {
     d0f:	83 f8 01             	cmp    $0x1,%eax
     d12:	0f 84 19 01 00 00    	je     e31 <rfuse_aio_complete+0x171>
	if (unlikely(old < 0 || old - i < 0))
     d18:	85 c0                	test   %eax,%eax
     d1a:	0f 8e 46 01 00 00    	jle    e66 <rfuse_aio_complete+0x1a6>
}
     d20:	5b                   	pop    %rbx
     d21:	41 5c                	pop    %r12
     d23:	41 5d                	pop    %r13
     d25:	41 5e                	pop    %r14
     d27:	41 5f                	pop    %r15
     d29:	5d                   	pop    %rbp
     d2a:	31 c0                	xor    %eax,%eax
     d2c:	31 d2                	xor    %edx,%edx
     d2e:	31 f6                	xor    %esi,%esi
     d30:	31 ff                	xor    %edi,%edi
     d32:	e9 00 00 00 00       	jmp    d37 <rfuse_aio_complete+0x77>
	else if (pos >= 0 && (io->bytes < 0 || pos < io->bytes))
     d37:	4d 85 ed             	test   %r13,%r13
     d3a:	78 bc                	js     cf8 <rfuse_aio_complete+0x38>
     d3c:	48 8b 43 10          	mov    0x10(%rbx),%rax
     d40:	48 85 c0             	test   %rax,%rax
     d43:	78 05                	js     d4a <rfuse_aio_complete+0x8a>
     d45:	4c 39 e8             	cmp    %r13,%rax
     d48:	7e ae                	jle    cf8 <rfuse_aio_complete+0x38>
	left = --io->reqs;
     d4a:	83 6b 0c 01          	subl   $0x1,0xc(%rbx)
		io->bytes = pos;
     d4e:	4c 89 6b 10          	mov    %r13,0x10(%rbx)
	if (!left && io->blocking)
     d52:	75 aa                	jne    cfe <rfuse_aio_complete+0x3e>
     d54:	44 0f b6 63 40       	movzbl 0x40(%rbx),%r12d
     d59:	41 80 fc 01          	cmp    $0x1,%r12b
     d5d:	0f 87 00 00 00 00    	ja     d63 <rfuse_aio_complete+0xa3>
     d63:	41 83 e4 01          	and    $0x1,%r12d
     d67:	0f 85 e3 00 00 00    	jne    e50 <rfuse_aio_complete+0x190>
     d6d:	4c 89 f7             	mov    %r14,%rdi
     d70:	e8 00 00 00 00       	call   d75 <rfuse_aio_complete+0xb5>
	if (!left && !io->blocking) {
     d75:	44 0f b6 63 40       	movzbl 0x40(%rbx),%r12d
     d7a:	41 80 fc 01          	cmp    $0x1,%r12b
     d7e:	0f 87 00 00 00 00    	ja     d84 <rfuse_aio_complete+0xc4>
     d84:	41 83 e4 01          	and    $0x1,%r12d
     d88:	0f 85 78 ff ff ff    	jne    d06 <rfuse_aio_complete+0x46>
		printk("io is non blocking\n");
     d8e:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     d95:	e8 00 00 00 00       	call   d9a <rfuse_aio_complete+0xda>
	if (io->err)
     d9a:	4c 63 63 2c          	movslq 0x2c(%rbx),%r12
     d9e:	45 85 e4             	test   %r12d,%r12d
     da1:	0f 85 e7 00 00 00    	jne    e8e <rfuse_aio_complete+0x1ce>
	if (io->bytes >= 0 && io->write)
     da7:	4c 8b 63 10          	mov    0x10(%rbx),%r12
     dab:	4d 85 e4             	test   %r12,%r12
     dae:	0f 88 d6 00 00 00    	js     e8a <rfuse_aio_complete+0x1ca>
     db4:	0f b6 43 28          	movzbl 0x28(%rbx),%eax
     db8:	41 89 c5             	mov    %eax,%r13d
     dbb:	41 83 e5 01          	and    $0x1,%r13d
     dbf:	3c 01                	cmp    $0x1,%al
     dc1:	0f 87 00 00 00 00    	ja     dc7 <rfuse_aio_complete+0x107>
     dc7:	45 84 ed             	test   %r13b,%r13b
     dca:	0f 85 c8 00 00 00    	jne    e98 <rfuse_aio_complete+0x1d8>
			struct inode *inode = file_inode(io->iocb->ki_filp);
     dd0:	48 8b 43 30          	mov    0x30(%rbx),%rax
	return f->f_inode;
     dd4:	48 8b 00             	mov    (%rax),%rax
     dd7:	4c 8b a8 a8 00 00 00 	mov    0xa8(%rax),%r13
  return sb->s_fs_info;
     dde:	49 8b 45 28          	mov    0x28(%r13),%rax
	raw_spin_lock(&lock->rlock);
     de2:	4d 8d bd 20 03 00 00 	lea    0x320(%r13),%r15
     de9:	4c 89 ff             	mov    %r15,%rdi
  return get_fuse_mount_super(inode->i_sb)->fc;
     dec:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax
     df3:	4c 8b 30             	mov    (%rax),%r14
     df6:	e8 00 00 00 00       	call   dfb <rfuse_aio_complete+0x13b>
     dfb:	b8 01 00 00 00       	mov    $0x1,%eax
     e00:	f0 49 0f c1 86 a0 01 	lock xadd %rax,0x1a0(%r14)
     e07:	00 00 
     e09:	48 83 c0 01          	add    $0x1,%rax
	raw_spin_unlock(&lock->rlock);
     e0d:	4c 89 ff             	mov    %r15,%rdi
     e10:	49 89 85 a8 02 00 00 	mov    %rax,0x2a8(%r13)
     e17:	e8 00 00 00 00       	call   e1c <rfuse_aio_complete+0x15c>
		io->iocb->ki_complete(io->iocb, res);
     e1c:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
     e20:	4c 89 e6             	mov    %r12,%rsi
     e23:	48 8b 47 10          	mov    0x10(%rdi),%rax
     e27:	e8 00 00 00 00       	call   e2c <rfuse_aio_complete+0x16c>
     e2c:	e9 d5 fe ff ff       	jmp    d06 <rfuse_aio_complete+0x46>
	kfree(container_of(kref, struct fuse_io_priv, refcnt));
     e31:	48 89 df             	mov    %rbx,%rdi
     e34:	e8 00 00 00 00       	call   e39 <rfuse_aio_complete+0x179>
}
     e39:	5b                   	pop    %rbx
     e3a:	41 5c                	pop    %r12
     e3c:	41 5d                	pop    %r13
     e3e:	41 5e                	pop    %r14
     e40:	41 5f                	pop    %r15
     e42:	5d                   	pop    %rbp
     e43:	31 c0                	xor    %eax,%eax
     e45:	31 d2                	xor    %edx,%edx
     e47:	31 f6                	xor    %esi,%esi
     e49:	31 ff                	xor    %edi,%edi
     e4b:	e9 00 00 00 00       	jmp    e50 <rfuse_aio_complete+0x190>
		complete(io->done);
     e50:	48 8b 7b 38          	mov    0x38(%rbx),%rdi
     e54:	e8 00 00 00 00       	call   e59 <rfuse_aio_complete+0x199>
     e59:	4c 89 f7             	mov    %r14,%rdi
     e5c:	e8 00 00 00 00       	call   e61 <rfuse_aio_complete+0x1a1>
	if (!left && !io->blocking) {
     e61:	e9 0f ff ff ff       	jmp    d75 <rfuse_aio_complete+0xb5>
		refcount_warn_saturate(r, REFCOUNT_SUB_UAF);
     e66:	48 89 df             	mov    %rbx,%rdi
     e69:	be 03 00 00 00       	mov    $0x3,%esi
     e6e:	e8 00 00 00 00       	call   e73 <rfuse_aio_complete+0x1b3>
}
     e73:	5b                   	pop    %rbx
     e74:	41 5c                	pop    %r12
     e76:	41 5d                	pop    %r13
     e78:	41 5e                	pop    %r14
     e7a:	41 5f                	pop    %r15
     e7c:	5d                   	pop    %rbp
     e7d:	31 c0                	xor    %eax,%eax
     e7f:	31 d2                	xor    %edx,%edx
     e81:	31 f6                	xor    %esi,%esi
     e83:	31 ff                	xor    %edi,%edi
     e85:	e9 00 00 00 00       	jmp    e8a <rfuse_aio_complete+0x1ca>
	return io->bytes < 0 ? io->size : io->bytes;
     e8a:	4c 8b 63 18          	mov    0x18(%rbx),%r12
		if (res >= 0) {
     e8e:	4d 85 e4             	test   %r12,%r12
     e91:	78 89                	js     e1c <rfuse_aio_complete+0x15c>
     e93:	e9 38 ff ff ff       	jmp    dd0 <rfuse_aio_complete+0x110>
		return -EIO;
     e98:	49 c7 c4 fb ff ff ff 	mov    $0xfffffffffffffffb,%r12
     e9f:	e9 78 ff ff ff       	jmp    e1c <rfuse_aio_complete+0x15c>
     ea4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     eab:	00 00 00 00 
     eaf:	90                   	nop

0000000000000eb0 <__pfx_rfuse_io_alloc>:
     eb0:	90                   	nop
     eb1:	90                   	nop
     eb2:	90                   	nop
     eb3:	90                   	nop
     eb4:	90                   	nop
     eb5:	90                   	nop
     eb6:	90                   	nop
     eb7:	90                   	nop
     eb8:	90                   	nop
     eb9:	90                   	nop
     eba:	90                   	nop
     ebb:	90                   	nop
     ebc:	90                   	nop
     ebd:	90                   	nop
     ebe:	90                   	nop
     ebf:	90                   	nop

0000000000000ec0 <rfuse_io_alloc>:
	SetPageUptodate(page);

	return 0;
}

static struct rfuse_io_args *rfuse_io_alloc(struct fuse_io_priv *io, unsigned int npages)
     ec0:	e8 00 00 00 00       	call   ec5 <rfuse_io_alloc+0x5>
     ec5:	55                   	push   %rbp
     ec6:	ba 60 00 00 00       	mov    $0x60,%edx
     ecb:	48 89 e5             	mov    %rsp,%rbp
     ece:	41 56                	push   %r14
     ed0:	41 55                	push   %r13
     ed2:	49 89 fd             	mov    %rdi,%r13
     ed5:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # edc <rfuse_io_alloc+0x1c>
     edc:	41 54                	push   %r12
     ede:	41 89 f4             	mov    %esi,%r12d
     ee1:	be c0 0d 00 00       	mov    $0xdc0,%esi
     ee6:	53                   	push   %rbx
     ee7:	e8 00 00 00 00       	call   eec <rfuse_io_alloc+0x2c>
{
	struct rfuse_io_args *ria;

	ria = kzalloc(sizeof(*ria), GFP_KERNEL);
     eec:	48 85 c0             	test   %rax,%rax
     eef:	74 56                	je     f47 <rfuse_io_alloc+0x87>
	if (ria) {
     ef1:	4c 89 68 50          	mov    %r13,0x50(%rax)
  pages = kzalloc(
     ef5:	4c 89 e7             	mov    %r12,%rdi
				kmalloc_caches[kmalloc_type(flags)][index],
				flags, size);
	}
	return __kmalloc(size, flags);
     ef8:	be c0 0d 00 00       	mov    $0xdc0,%esi
     efd:	48 89 c3             	mov    %rax,%rbx
     f00:	48 c1 e7 04          	shl    $0x4,%rdi
     f04:	49 89 c6             	mov    %rax,%r14
     f07:	e8 00 00 00 00       	call   f0c <rfuse_io_alloc+0x4c>
  *desc = (void *)(pages + npages);
     f0c:	4a 8d 14 e0          	lea    (%rax,%r12,8),%rdx
		ria->io = io;
     f10:	48 89 43 38          	mov    %rax,0x38(%rbx)
     f14:	48 89 53 40          	mov    %rdx,0x40(%rbx)
		ria->rp.pages = fuse_pages_alloc(npages, GFP_KERNEL,
						&ria->rp.descs);
     f18:	48 85 c0             	test   %rax,%rax
     f1b:	74 16                	je     f33 <rfuse_io_alloc+0x73>
			printk("no rp.pages\n");
			kfree(ria);
			ria = NULL;
		}
	}
	return ria;
     f1d:	5b                   	pop    %rbx
     f1e:	4c 89 f0             	mov    %r14,%rax
     f21:	41 5c                	pop    %r12
     f23:	41 5d                	pop    %r13
     f25:	41 5e                	pop    %r14
     f27:	5d                   	pop    %rbp
     f28:	31 d2                	xor    %edx,%edx
     f2a:	31 f6                	xor    %esi,%esi
     f2c:	31 ff                	xor    %edi,%edi
     f2e:	e9 00 00 00 00       	jmp    f33 <rfuse_io_alloc+0x73>
		if (!ria->rp.pages) {
     f33:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
     f3a:	e8 00 00 00 00       	call   f3f <rfuse_io_alloc+0x7f>
			printk("no rp.pages\n");
     f3f:	48 89 df             	mov    %rbx,%rdi
     f42:	e8 00 00 00 00       	call   f47 <rfuse_io_alloc+0x87>

     f47:	45 31 f6             	xor    %r14d,%r14d
	}
     f4a:	eb d1                	jmp    f1d <rfuse_io_alloc+0x5d>
     f4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000f50 <__pfx_rfuse_writepage_end>:
     f50:	90                   	nop
     f51:	90                   	nop
     f52:	90                   	nop
     f53:	90                   	nop
     f54:	90                   	nop
     f55:	90                   	nop
     f56:	90                   	nop
     f57:	90                   	nop
     f58:	90                   	nop
     f59:	90                   	nop
     f5a:	90                   	nop
     f5b:	90                   	nop
     f5c:	90                   	nop
     f5d:	90                   	nop
     f5e:	90                   	nop
     f5f:	90                   	nop

0000000000000f60 <rfuse_writepage_end>:
			       int error)
     f60:	e8 00 00 00 00       	call   f65 <rfuse_writepage_end+0x5>
     f65:	55                   	push   %rbp
     f66:	48 89 e5             	mov    %rsp,%rbp
     f69:	41 57                	push   %r15
     f6b:	41 56                	push   %r14
     f6d:	41 55                	push   %r13
     f6f:	41 54                	push   %r12
     f71:	49 89 f4             	mov    %rsi,%r12
     f74:	53                   	push   %rbx
     f75:	48 83 ec 20          	sub    $0x20,%rsp
{
     f79:	48 8b 9e f0 00 00 00 	mov    0xf0(%rsi),%rbx

     f80:	4c 8b 73 58          	mov    0x58(%rbx),%r14
	struct rfuse_pages *rp = r_req->rp;
     f84:	48 8d 43 c8          	lea    -0x38(%rbx),%rax
     f88:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  return sb->s_fs_info;
     f8c:	49 8b 46 28          	mov    0x28(%r14),%rax
  return get_fuse_mount_super(inode->i_sb)->fc;
     f90:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax
     f97:	4c 8b 38             	mov    (%rax),%r15
 * mapping_set_error to record the error in the mapping so that it can be
 * reported when the application calls fsync(2).
 */
static inline void mapping_set_error(struct address_space *mapping, int error)
{
	if (likely(!error))
     f9a:	85 d2                	test   %edx,%edx
     f9c:	0f 85 3b 01 00 00    	jne    10dd <rfuse_writepage_end+0x17d>
	 */
     fa2:	41 f6 87 35 01 00 00 	testb  $0x40,0x135(%r15)
     fa9:	40 
     faa:	0f 84 20 01 00 00    	je     10d0 <rfuse_writepage_end+0x170>
	raw_spin_lock(&lock->rlock);
     fb0:	49 8d 86 20 03 00 00 	lea    0x320(%r14),%rax
     fb7:	48 89 c7             	mov    %rax,%rdi
     fba:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
     fbe:	e8 00 00 00 00       	call   fc3 <rfuse_writepage_end+0x63>
	spin_lock(&fi->lock);
     fc3:	49 8d 86 f0 02 00 00 	lea    0x2f0(%r14),%rax
     fca:	48 8d 7b 28          	lea    0x28(%rbx),%rdi
     fce:	48 89 c6             	mov    %rax,%rsi
     fd1:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     fd5:	e8 00 00 00 00       	call   fda <rfuse_writepage_end+0x7a>
	rb_erase(&r_wpa->writepages_entry, &fi->writepages);
     fda:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
     fde:	4d 85 ff             	test   %r15,%r15
     fe1:	74 7b                	je     105e <rfuse_writepage_end+0xfe>
  return sb->s_fs_info;
     fe3:	49 8b 46 28          	mov    0x28(%r14),%rax
     fe7:	4c 8b a8 80 03 00 00 	mov    0x380(%rax),%r13

     fee:	49 8b 87 88 00 00 00 	mov    0x88(%r15),%rax
     ff5:	48 89 43 50          	mov    %rax,0x50(%rbx)
	return xadd(&v->counter, i);
     ff9:	b8 01 00 00 00       	mov    $0x1,%eax
		r_wpa->next = next->next;
     ffe:	49 c7 87 88 00 00 00 	movq   $0x0,0x88(%r15)
    1005:	00 00 00 00 
		next->next = NULL;
    1009:	48 8b 53 20          	mov    0x20(%rbx),%rdx
	refcount_inc(&ff->count);
    100d:	48 8d 7a 28          	lea    0x28(%rdx),%rdi
    1011:	f0 0f c1 42 28       	lock xadd %eax,0x28(%rdx)
	if (unlikely(!old))
    1016:	85 c0                	test   %eax,%eax
    1018:	0f 84 9b 00 00 00    	je     10b9 <rfuse_writepage_end+0x159>
	else if (unlikely(old < 0 || old + i < 0))
    101e:	8d 70 01             	lea    0x1(%rax),%esi
    1021:	09 c6                	or     %eax,%esi
    1023:	78 79                	js     109e <rfuse_writepage_end+0x13e>
		next->next = NULL;
    1025:	49 89 57 58          	mov    %rdx,0x58(%r15)
{
    1029:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    102d:	4c 89 fe             	mov    %r15,%rsi
    1030:	e8 0b f3 ff ff       	call   340 <rfuse_insert_writeback>
    1035:	48 85 c0             	test   %rax,%rax
    1038:	75 7b                	jne    10b5 <rfuse_writepage_end+0x155>

    103a:	41 8b 94 24 88 00 00 	mov    0x88(%r12),%edx
    1041:	00 
    1042:	4c 89 fe             	mov    %r15,%rsi
    1045:	49 03 94 24 80 00 00 	add    0x80(%r12),%rdx
    104c:	00 
    104d:	4c 89 ef             	mov    %r13,%rdi
    1050:	e8 1b fa ff ff       	call   a70 <rfuse_send_writepage>
	rb_erase(&r_wpa->writepages_entry, &fi->writepages);
    1055:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1059:	4d 85 ff             	test   %r15,%r15
    105c:	75 85                	jne    fe3 <rfuse_writepage_end+0x83>
	}
    105e:	41 83 ae d0 02 00 00 	subl   $0x1,0x2d0(%r14)
    1065:	01 
	fi->writectr--;
    1066:	48 8b 5d c0          	mov    -0x40(%rbp),%rbx
    106a:	48 89 df             	mov    %rbx,%rdi
    106d:	e8 1e f9 ff ff       	call   990 <rfuse_writepage_finish.constprop.0>
	raw_spin_unlock(&lock->rlock);
    1072:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    1076:	e8 00 00 00 00       	call   107b <rfuse_writepage_end+0x11b>
	spin_unlock(&fi->lock);
    107b:	48 89 df             	mov    %rbx,%rdi
    107e:	e8 4d f8 ff ff       	call   8d0 <rfuse_writepage_free>
	rfuse_writepage_free(r_wpa);
    1083:	48 83 c4 20          	add    $0x20,%rsp
    1087:	5b                   	pop    %rbx
    1088:	41 5c                	pop    %r12
    108a:	41 5d                	pop    %r13
    108c:	41 5e                	pop    %r14
    108e:	41 5f                	pop    %r15
    1090:	5d                   	pop    %rbp
    1091:	31 c0                	xor    %eax,%eax
    1093:	31 d2                	xor    %edx,%edx
    1095:	31 f6                	xor    %esi,%esi
    1097:	31 ff                	xor    %edi,%edi
    1099:	e9 00 00 00 00       	jmp    109e <rfuse_writepage_end+0x13e>
		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
    109e:	be 01 00 00 00       	mov    $0x1,%esi
    10a3:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    10a7:	e8 00 00 00 00       	call   10ac <rfuse_writepage_end+0x14c>
    10ac:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    10b0:	e9 70 ff ff ff       	jmp    1025 <rfuse_writepage_end+0xc5>
{
    10b5:	0f 0b                	ud2    
    10b7:	eb 81                	jmp    103a <rfuse_writepage_end+0xda>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
    10b9:	be 02 00 00 00       	mov    $0x2,%esi
    10be:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    10c2:	e8 00 00 00 00       	call   10c7 <rfuse_writepage_end+0x167>
    10c7:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    10cb:	e9 55 ff ff ff       	jmp    1025 <rfuse_writepage_end+0xc5>
	if (!fc->writeback_cache)
    10d0:	4c 89 f7             	mov    %r14,%rdi
    10d3:	e8 00 00 00 00       	call   10d8 <rfuse_writepage_end+0x178>
    10d8:	e9 d3 fe ff ff       	jmp    fb0 <rfuse_writepage_end+0x50>
    10dd:	41 89 d5             	mov    %edx,%r13d

    10e0:	49 8b 56 30          	mov    0x30(%r14),%rdx
		return;

	/* Record in wb_err for checkers using errseq_t based tracking */
	__filemap_set_wb_err(mapping, error);
    10e4:	44 89 ee             	mov    %r13d,%esi
    10e7:	48 89 d7             	mov    %rdx,%rdi
    10ea:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    10ee:	e8 00 00 00 00       	call   10f3 <rfuse_writepage_end+0x193>

	/* Record it in superblock */
	if (mapping->host)
    10f3:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    10f7:	48 8b 02             	mov    (%rdx),%rax
    10fa:	48 85 c0             	test   %rax,%rax
    10fd:	74 17                	je     1116 <rfuse_writepage_end+0x1b6>
		errseq_set(&mapping->host->i_sb->s_wb_err, error);
    10ff:	48 8b 78 28          	mov    0x28(%rax),%rdi
    1103:	44 89 ee             	mov    %r13d,%esi
    1106:	48 81 c7 6c 04 00 00 	add    $0x46c,%rdi
    110d:	e8 00 00 00 00       	call   1112 <rfuse_writepage_end+0x1b2>
    1112:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx

	/* Record it in flags for now, for legacy callers */
	if (error == -ENOSPC)
    1116:	41 83 fd e4          	cmp    $0xffffffe4,%r13d
    111a:	74 0d                	je     1129 <rfuse_writepage_end+0x1c9>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    111c:	f0 80 8a 98 00 00 00 	lock orb $0x1,0x98(%rdx)
    1123:	01 
 */
static __always_inline void set_bit(long nr, volatile unsigned long *addr)
{
	instrument_atomic_write(addr + BIT_WORD(nr), sizeof(long));
	arch_set_bit(nr, addr);
}
    1124:	e9 79 fe ff ff       	jmp    fa2 <rfuse_writepage_end+0x42>
    1129:	f0 80 8a 98 00 00 00 	lock orb $0x2,0x98(%rdx)
    1130:	02 
    1131:	e9 6c fe ff ff       	jmp    fa2 <rfuse_writepage_end+0x42>
    1136:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    113d:	00 00 00 

0000000000001140 <__pfx_rfuse_aio_complete_req>:
    1140:	90                   	nop
    1141:	90                   	nop
    1142:	90                   	nop
    1143:	90                   	nop
    1144:	90                   	nop
    1145:	90                   	nop
    1146:	90                   	nop
    1147:	90                   	nop
    1148:	90                   	nop
    1149:	90                   	nop
    114a:	90                   	nop
    114b:	90                   	nop
    114c:	90                   	nop
    114d:	90                   	nop
    114e:	90                   	nop
    114f:	90                   	nop

0000000000001150 <rfuse_aio_complete_req>:
{
    1150:	e8 00 00 00 00       	call   1155 <rfuse_aio_complete_req+0x5>
    1155:	55                   	push   %rbp
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	41 57                	push   %r15
    115b:	41 56                	push   %r14
    115d:	41 55                	push   %r13
    115f:	41 54                	push   %r12
    1161:	53                   	push   %rbx
    1162:	48 83 ec 28          	sub    $0x28,%rsp
	struct rfuse_pages *rp = r_req->rp;
    1166:	48 8b 9e f0 00 00 00 	mov    0xf0(%rsi),%rbx
{
    116d:	48 89 75 b8          	mov    %rsi,-0x48(%rbp)
    1171:	89 55 d4             	mov    %edx,-0x2c(%rbp)
	struct rfuse_io_args *ria = container_of(rp, typeof(*ria),rp);
    1174:	48 8d 43 c8          	lea    -0x38(%rbx),%rax
    1178:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
	struct fuse_io_priv *io = ria->io;
    117c:	48 8b 43 18          	mov    0x18(%rbx),%rax
	rfuse_release_user_pages(r_req->rp, io->should_dirty);
    1180:	44 0f b6 68 29       	movzbl 0x29(%rax),%r13d
	struct fuse_io_priv *io = ria->io;
    1185:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	rfuse_release_user_pages(r_req->rp, io->should_dirty);
    1189:	41 80 fd 01          	cmp    $0x1,%r13b
    118d:	0f 87 00 00 00 00    	ja     1193 <rfuse_aio_complete_req+0x43>
    1193:	49 89 df             	mov    %rbx,%r15
	for (i = 0; i < rp->num_pages; i++) {
    1196:	41 8b 57 10          	mov    0x10(%r15),%edx
	rfuse_release_user_pages(r_req->rp, io->should_dirty);
    119a:	41 83 e5 01          	and    $0x1,%r13d
	for (i = 0; i < rp->num_pages; i++) {
    119e:	45 31 e4             	xor    %r12d,%r12d
    11a1:	85 d2                	test   %edx,%edx
    11a3:	75 2f                	jne    11d4 <rfuse_aio_complete_req+0x84>
    11a5:	e9 82 00 00 00       	jmp    122c <rfuse_aio_complete_req+0xdc>
		put_page(rp->pages[i]);
    11aa:	49 8b 07             	mov    (%r15),%rax
    11ad:	4a 8b 3c f0          	mov    (%rax,%r14,8),%rdi
	return page_fixed_fake_head(page) != page;
}

static inline unsigned long _compound_head(const struct page *page)
{
	unsigned long head = READ_ONCE(page->compound_head);
    11b1:	48 8b 47 08          	mov    0x8(%rdi),%rax

	if (unlikely(head & 1))
    11b5:	a8 01                	test   $0x1,%al
    11b7:	75 3e                	jne    11f7 <rfuse_aio_complete_req+0xa7>

#ifdef CONFIG_HAVE_JUMP_LABEL_HACK

static __always_inline bool arch_static_branch(struct static_key *key, bool branch)
{
	asm_volatile_goto("1:"
    11b9:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    11be:	66 90                	xchg   %ax,%ax
	return GEN_UNARY_RMWcc(LOCK_PREFIX "decl", v->counter, e);
    11c0:	f0 ff 4f 34          	lock decl 0x34(%rdi)
	if (folio_put_testzero(folio))
    11c4:	0f 84 1a 01 00 00    	je     12e4 <rfuse_aio_complete_req+0x194>
	for (i = 0; i < rp->num_pages; i++) {
    11ca:	41 83 c4 01          	add    $0x1,%r12d
    11ce:	45 3b 67 10          	cmp    0x10(%r15),%r12d
    11d2:	73 58                	jae    122c <rfuse_aio_complete_req+0xdc>
			set_page_dirty_lock(rp->pages[i]);
    11d4:	45 89 e6             	mov    %r12d,%r14d
		if (should_dirty)
    11d7:	45 84 ed             	test   %r13b,%r13b
    11da:	74 ce                	je     11aa <rfuse_aio_complete_req+0x5a>
			set_page_dirty_lock(rp->pages[i]);
    11dc:	49 8b 07             	mov    (%r15),%rax
    11df:	4a 8b 3c f0          	mov    (%rax,%r14,8),%rdi
    11e3:	e8 00 00 00 00       	call   11e8 <rfuse_aio_complete_req+0x98>
		put_page(rp->pages[i]);
    11e8:	49 8b 07             	mov    (%r15),%rax
    11eb:	4a 8b 3c f0          	mov    (%rax,%r14,8),%rdi
	unsigned long head = READ_ONCE(page->compound_head);
    11ef:	48 8b 47 08          	mov    0x8(%rdi),%rax
	if (unlikely(head & 1))
    11f3:	a8 01                	test   $0x1,%al
    11f5:	74 c2                	je     11b9 <rfuse_aio_complete_req+0x69>
		return head - 1;
    11f7:	48 8d 78 ff          	lea    -0x1(%rax),%rdi
    11fb:	eb c1                	jmp    11be <rfuse_aio_complete_req+0x6e>
#define ZONEID_MASK		((1UL << ZONEID_SHIFT) - 1)

static inline enum zone_type page_zonenum(const struct page *page)
{
	ASSERT_EXCLUSIVE_BITS(page->flags, ZONES_MASK << ZONES_PGSHIFT);
	return (page->flags >> ZONES_PGSHIFT) & ZONES_MASK;
    11fd:	48 8b 07             	mov    (%rdi),%rax
    1200:	48 c1 e8 33          	shr    $0x33,%rax
    1204:	83 e0 07             	and    $0x7,%eax
	if (!is_zone_device_page(page))
    1207:	83 f8 04             	cmp    $0x4,%eax
    120a:	75 b4                	jne    11c0 <rfuse_aio_complete_req+0x70>
	return __put_devmap_managed_page_refs(page, refs);
    120c:	be 01 00 00 00       	mov    $0x1,%esi
    1211:	48 89 7d b0          	mov    %rdi,-0x50(%rbp)
    1215:	e8 00 00 00 00       	call   121a <rfuse_aio_complete_req+0xca>
	if (put_devmap_managed_page(&folio->page))
    121a:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
    121e:	84 c0                	test   %al,%al
    1220:	74 9e                	je     11c0 <rfuse_aio_complete_req+0x70>
	for (i = 0; i < rp->num_pages; i++) {
    1222:	41 83 c4 01          	add    $0x1,%r12d
    1226:	45 3b 67 10          	cmp    0x10(%r15),%r12d
    122a:	72 a8                	jb     11d4 <rfuse_aio_complete_req+0x84>
	if (err) {
    122c:	8b 45 d4             	mov    -0x2c(%rbp),%eax
	ssize_t pos = -1;
    122f:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
	if (err) {
    1236:	85 c0                	test   %eax,%eax
    1238:	75 43                	jne    127d <rfuse_aio_complete_req+0x12d>
	} else if (io->write) {
    123a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    123e:	0f b6 40 28          	movzbl 0x28(%rax),%eax
    1242:	3c 01                	cmp    $0x1,%al
    1244:	0f 87 00 00 00 00    	ja     124a <rfuse_aio_complete_req+0xfa>
    124a:	a8 01                	test   $0x1,%al
    124c:	0f 84 9c 00 00 00    	je     12ee <rfuse_aio_complete_req+0x19e>
		if (outarg->size > ria->write.in.size) {
    1252:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1256:	8b 4b d8             	mov    -0x28(%rbx),%ecx
	ssize_t pos = -1;
    1259:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
		if (outarg->size > ria->write.in.size) {
    1260:	8b 40 78             	mov    0x78(%rax),%eax
    1263:	39 c1                	cmp    %eax,%ecx
    1265:	0f 82 b3 00 00 00    	jb     131e <rfuse_aio_complete_req+0x1ce>
		} else if (ria->write.in.size != outarg->size) {
    126b:	39 c8                	cmp    %ecx,%eax
    126d:	74 0e                	je     127d <rfuse_aio_complete_req+0x12d>
				outarg->size;
    126f:	89 c2                	mov    %eax,%edx
			pos = ria->write.in.offset - io->offset +
    1271:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1275:	48 03 53 d0          	add    -0x30(%rbx),%rdx
    1279:	48 2b 50 20          	sub    0x20(%rax),%rdx
	rfuse_aio_complete(io, err, pos);
    127d:	8b 75 d4             	mov    -0x2c(%rbp),%esi
    1280:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    1284:	e8 37 fa ff ff       	call   cc0 <rfuse_aio_complete>
}

static void rfuse_io_free(struct rfuse_io_args *ria)
{
    1289:	48 8b 3b             	mov    (%rbx),%rdi
    128c:	e8 00 00 00 00       	call   1291 <rfuse_aio_complete_req+0x141>
	kfree(ria->rp.pages);
    1291:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
    1295:	e8 00 00 00 00       	call   129a <rfuse_aio_complete_req+0x14a>
}
    129a:	48 83 c4 28          	add    $0x28,%rsp
    129e:	5b                   	pop    %rbx
    129f:	41 5c                	pop    %r12
    12a1:	41 5d                	pop    %r13
    12a3:	41 5e                	pop    %r14
    12a5:	41 5f                	pop    %r15
    12a7:	5d                   	pop    %rbp
    12a8:	31 c0                	xor    %eax,%eax
    12aa:	31 d2                	xor    %edx,%edx
    12ac:	31 c9                	xor    %ecx,%ecx
    12ae:	31 f6                	xor    %esi,%esi
    12b0:	31 ff                	xor    %edi,%edi
    12b2:	e9 00 00 00 00       	jmp    12b7 <rfuse_aio_complete_req+0x167>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    12b7:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
    12bd:	0f 85 fb fe ff ff    	jne    11be <rfuse_aio_complete_req+0x6e>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    12c3:	48 8b 07             	mov    (%rdi),%rax
    12c6:	a9 00 00 01 00       	test   $0x10000,%eax
    12cb:	0f 84 ed fe ff ff    	je     11be <rfuse_aio_complete_req+0x6e>
		unsigned long head = READ_ONCE(page[1].compound_head);
    12d1:	48 8b 47 48          	mov    0x48(%rdi),%rax
			return (const struct page *)(head - 1);
    12d5:	48 8d 70 ff          	lea    -0x1(%rax),%rsi
    12d9:	a8 01                	test   $0x1,%al
    12db:	48 0f 45 fe          	cmovne %rsi,%rdi
    12df:	e9 da fe ff ff       	jmp    11be <rfuse_aio_complete_req+0x6e>
		__folio_put(folio);
    12e4:	e8 00 00 00 00       	call   12e9 <rfuse_aio_complete_req+0x199>
    12e9:	e9 dc fe ff ff       	jmp    11ca <rfuse_aio_complete_req+0x7a>
		u32 outsize = r_req->out.arglen;
    12ee:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
	ssize_t pos = -1;
    12f2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
		u32 outsize = r_req->out.arglen;
    12f9:	8b 41 38             	mov    0x38(%rcx),%eax
		if (inarg->size != outsize)
    12fc:	39 81 88 00 00 00    	cmp    %eax,0x88(%rcx)
    1302:	0f 84 75 ff ff ff    	je     127d <rfuse_aio_complete_req+0x12d>
			pos = inarg->offset - io->offset + outsize;
    1308:	89 c2                	mov    %eax,%edx
    130a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    130e:	48 03 91 80 00 00 00 	add    0x80(%rcx),%rdx
    1315:	48 2b 50 20          	sub    0x20(%rax),%rdx
    1319:	e9 5f ff ff ff       	jmp    127d <rfuse_aio_complete_req+0x12d>
			err = -EIO;
    131e:	c7 45 d4 fb ff ff ff 	movl   $0xfffffffb,-0x2c(%rbp)
    1325:	e9 53 ff ff ff       	jmp    127d <rfuse_aio_complete_req+0x12d>
    132a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001330 <__pfx_rfuse_async_req_send>:
    1330:	90                   	nop
    1331:	90                   	nop
    1332:	90                   	nop
    1333:	90                   	nop
    1334:	90                   	nop
    1335:	90                   	nop
    1336:	90                   	nop
    1337:	90                   	nop
    1338:	90                   	nop
    1339:	90                   	nop
    133a:	90                   	nop
    133b:	90                   	nop
    133c:	90                   	nop
    133d:	90                   	nop
    133e:	90                   	nop
    133f:	90                   	nop

0000000000001340 <rfuse_async_req_send>:
{
    1340:	e8 00 00 00 00       	call   1345 <rfuse_async_req_send+0x5>
    1345:	55                   	push   %rbp
    1346:	48 89 e5             	mov    %rsp,%rbp
    1349:	41 57                	push   %r15
    134b:	41 56                	push   %r14
    134d:	49 89 fe             	mov    %rdi,%r14
    1350:	41 55                	push   %r13
    1352:	49 89 d5             	mov    %rdx,%r13
    1355:	41 54                	push   %r12
    1357:	49 89 f4             	mov    %rsi,%r12
    135a:	53                   	push   %rbx
	struct fuse_io_priv *io = ria->io;
    135b:	48 8b 5e 50          	mov    0x50(%rsi),%rbx
	raw_spin_lock(&lock->rlock);
    135f:	4c 8d 7b 08          	lea    0x8(%rbx),%r15
    1363:	4c 89 ff             	mov    %r15,%rdi
    1366:	e8 00 00 00 00       	call   136b <rfuse_async_req_send+0x2b>
	return xadd(&v->counter, i);
    136b:	b8 01 00 00 00       	mov    $0x1,%eax
    1370:	f0 0f c1 03          	lock xadd %eax,(%rbx)
	if (unlikely(!old))
    1374:	85 c0                	test   %eax,%eax
    1376:	0f 84 b9 00 00 00    	je     1435 <rfuse_async_req_send+0xf5>
	else if (unlikely(old < 0 || old + i < 0))
    137c:	8d 50 01             	lea    0x1(%rax),%edx
    137f:	09 c2                	or     %eax,%edx
    1381:	0f 88 9c 00 00 00    	js     1423 <rfuse_async_req_send+0xe3>
	io->size += num_bytes;
    1387:	4c 01 6b 18          	add    %r13,0x18(%rbx)
	raw_spin_unlock(&lock->rlock);
    138b:	4c 89 ff             	mov    %r15,%rdi
	io->reqs++;
    138e:	83 43 0c 01          	addl   $0x1,0xc(%rbx)
    1392:	e8 00 00 00 00       	call   1397 <rfuse_async_req_send+0x57>
	ria->r_req->end = rfuse_aio_complete_req;
    1397:	49 8b 44 24 30       	mov    0x30(%r12),%rax
    139c:	48 c7 80 f8 00 00 00 	movq   $0x0,0xf8(%rax)
    13a3:	00 00 00 00 
	ria->r_req->may_block = io->should_dirty;
    13a7:	0f b6 5b 29          	movzbl 0x29(%rbx),%ebx
    13ab:	4d 8b 7c 24 30       	mov    0x30(%r12),%r15
    13b0:	80 fb 01             	cmp    $0x1,%bl
    13b3:	0f 87 00 00 00 00    	ja     13b9 <rfuse_async_req_send+0x79>
    13b9:	41 0f b6 87 e9 00 00 	movzbl 0xe9(%r15),%eax
    13c0:	00 
    13c1:	83 e3 01             	and    $0x1,%ebx
	err = rfuse_simple_background(fm, ria->r_req);
    13c4:	4c 89 f7             	mov    %r14,%rdi
	ria->r_req->may_block = io->should_dirty;
    13c7:	83 e0 fe             	and    $0xfffffffe,%eax
    13ca:	09 d8                	or     %ebx,%eax
    13cc:	41 88 87 e9 00 00 00 	mov    %al,0xe9(%r15)
	err = rfuse_simple_background(fm, ria->r_req);
    13d3:	49 8b 74 24 30       	mov    0x30(%r12),%rsi
    13d8:	e8 00 00 00 00       	call   13dd <rfuse_async_req_send+0x9d>
	if (err) {
    13dd:	84 c0                	test   %al,%al
    13df:	75 18                	jne    13f9 <rfuse_async_req_send+0xb9>
}
    13e1:	5b                   	pop    %rbx
    13e2:	4c 89 e8             	mov    %r13,%rax
    13e5:	41 5c                	pop    %r12
    13e7:	41 5d                	pop    %r13
    13e9:	41 5e                	pop    %r14
    13eb:	41 5f                	pop    %r15
    13ed:	5d                   	pop    %rbp
    13ee:	31 d2                	xor    %edx,%edx
    13f0:	31 f6                	xor    %esi,%esi
    13f2:	31 ff                	xor    %edi,%edi
    13f4:	e9 00 00 00 00       	jmp    13f9 <rfuse_async_req_send+0xb9>
		rfuse_aio_complete_req(fm, ria->r_req, err);
    13f9:	49 8b 74 24 30       	mov    0x30(%r12),%rsi
    13fe:	4c 89 f7             	mov    %r14,%rdi
    1401:	ba 01 00 00 00       	mov    $0x1,%edx
    1406:	e8 45 fd ff ff       	call   1150 <rfuse_aio_complete_req>
}
    140b:	4c 89 e8             	mov    %r13,%rax
    140e:	5b                   	pop    %rbx
    140f:	41 5c                	pop    %r12
    1411:	41 5d                	pop    %r13
    1413:	41 5e                	pop    %r14
    1415:	41 5f                	pop    %r15
    1417:	5d                   	pop    %rbp
    1418:	31 d2                	xor    %edx,%edx
    141a:	31 f6                	xor    %esi,%esi
    141c:	31 ff                	xor    %edi,%edi
    141e:	e9 00 00 00 00       	jmp    1423 <rfuse_async_req_send+0xe3>
		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
    1423:	be 01 00 00 00       	mov    $0x1,%esi
    1428:	48 89 df             	mov    %rbx,%rdi
    142b:	e8 00 00 00 00       	call   1430 <rfuse_async_req_send+0xf0>
    1430:	e9 52 ff ff ff       	jmp    1387 <rfuse_async_req_send+0x47>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
    1435:	be 02 00 00 00       	mov    $0x2,%esi
    143a:	48 89 df             	mov    %rbx,%rdi
    143d:	e8 00 00 00 00       	call   1442 <rfuse_async_req_send+0x102>
    1442:	e9 40 ff ff ff       	jmp    1387 <rfuse_async_req_send+0x47>
    1447:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    144e:	00 00 

0000000000001450 <__pfx_rfuse_direct_io>:
    1450:	90                   	nop
    1451:	90                   	nop
    1452:	90                   	nop
    1453:	90                   	nop
    1454:	90                   	nop
    1455:	90                   	nop
    1456:	90                   	nop
    1457:	90                   	nop
    1458:	90                   	nop
    1459:	90                   	nop
    145a:	90                   	nop
    145b:	90                   	nop
    145c:	90                   	nop
    145d:	90                   	nop
    145e:	90                   	nop
    145f:	90                   	nop

0000000000001460 <rfuse_direct_io>:
{
    1460:	e8 00 00 00 00       	call   1465 <rfuse_direct_io+0x5>
    1465:	55                   	push   %rbp
    1466:	89 c8                	mov    %ecx,%eax
    1468:	48 89 e5             	mov    %rsp,%rbp
    146b:	41 57                	push   %r15
    146d:	41 56                	push   %r14
    146f:	41 55                	push   %r13
	int cuse = flags & FUSE_DIO_CUSE;
    1471:	41 89 cd             	mov    %ecx,%r13d
{
    1474:	41 54                	push   %r12
	int cuse = flags & FUSE_DIO_CUSE;
    1476:	41 83 e5 02          	and    $0x2,%r13d
{
    147a:	53                   	push   %rbx
    147b:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    147f:	48 89 b5 68 ff ff ff 	mov    %rsi,-0x98(%rbp)
    1486:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    148a:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
    1491:	65 48 8b 14 25 28 00 	mov    %gs:0x28,%rdx
    1498:	00 00 
    149a:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    149e:	31 d2                	xor    %edx,%edx
	struct file *file = io->iocb->ki_filp;
    14a0:	48 8b 57 30          	mov    0x30(%rdi),%rdx
	size_t nmax = write ? fc->max_write : fc->max_read;
    14a4:	83 e0 01             	and    $0x1,%eax
    14a7:	89 45 84             	mov    %eax,-0x7c(%rbp)
	struct file *file = io->iocb->ki_filp;
    14aa:	48 8b 12             	mov    (%rdx),%rdx
	struct inode *inode = file->f_mapping->host;
    14ad:	48 8b 8a d8 00 00 00 	mov    0xd8(%rdx),%rcx
	struct fuse_conn *fc = ff->fm->fc;
    14b4:	48 8b 92 c8 00 00 00 	mov    0xc8(%rdx),%rdx
    14bb:	48 8b 12             	mov    (%rdx),%rdx
	struct inode *inode = file->f_mapping->host;
    14be:	48 8b 19             	mov    (%rcx),%rbx
	struct fuse_conn *fc = ff->fm->fc;
    14c1:	48 8b 32             	mov    (%rdx),%rsi
    14c4:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
	size_t nmax = write ? fc->max_write : fc->max_read;
    14cb:	0f 84 cb 03 00 00    	je     189c <rfuse_direct_io+0x43c>
    14d1:	8b 46 3c             	mov    0x3c(%rsi),%eax
    14d4:	48 89 45 88          	mov    %rax,-0x78(%rbp)
	loff_t pos = *ppos;
    14d8:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax

const void *dup_iter(struct iov_iter *new, struct iov_iter *old, gfp_t flags);

static inline size_t iov_iter_count(const struct iov_iter *i)
{
	return i->count;
    14df:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
    14e6:	48 8b 00             	mov    (%rax),%rax
    14e9:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    14ed:	48 8b 47 18          	mov    0x18(%rdi),%rax
    14f1:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
	max_pages = iov_iter_npages(iter, fc->max_pages);
    14f5:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    14fc:	8b 70 40             	mov    0x40(%rax),%esi
    14ff:	e8 00 00 00 00       	call   1504 <rfuse_direct_io+0xa4>
	ria = rfuse_io_alloc(io, max_pages);
    1504:	4c 8b 75 a8          	mov    -0x58(%rbp),%r14
    1508:	89 c6                	mov    %eax,%esi
	max_pages = iov_iter_npages(iter, fc->max_pages);
    150a:	41 89 c4             	mov    %eax,%r12d
	ria = rfuse_io_alloc(io, max_pages);
    150d:	4c 89 f7             	mov    %r14,%rdi
    1510:	e8 ab f9 ff ff       	call   ec0 <rfuse_io_alloc>
    1515:	49 89 c7             	mov    %rax,%r15
	if (!ria)
    1518:	48 85 c0             	test   %rax,%rax
    151b:	0f 84 56 07 00 00    	je     1c77 <rfuse_direct_io+0x817>
	ria->io = io;
    1521:	4c 89 70 50          	mov    %r14,0x50(%rax)
	if (!cuse && rfuse_range_is_writeback(inode, idx_from, idx_to)) {
    1525:	45 85 ed             	test   %r13d,%r13d
    1528:	0f 84 e2 06 00 00    	je     1c10 <rfuse_direct_io+0x7b0>
	io->should_dirty = !write && iter_is_iovec(iter);
    152e:	44 8b 55 84          	mov    -0x7c(%rbp),%r10d
    1532:	45 85 d2             	test   %r10d,%r10d
    1535:	0f 84 9b 03 00 00    	je     18d6 <rfuse_direct_io+0x476>
{
    153b:	31 c0                	xor    %eax,%eax
	io->should_dirty = !write && iter_is_iovec(iter);
    153d:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
	while (count) {
    1541:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
	ssize_t res = 0;
    1546:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
    154d:	00 
	io->should_dirty = !write && iter_is_iovec(iter);
    154e:	88 43 29             	mov    %al,0x29(%rbx)
	while (count) {
    1551:	0f 84 7d 06 00 00    	je     1bd4 <rfuse_direct_io+0x774>

DECLARE_PER_CPU_ALIGNED(struct pcpu_hot, pcpu_hot);

static __always_inline struct task_struct *get_current(void)
{
	return this_cpu_read_stable(pcpu_hot.current_task);
    1557:	65 48 8b 04 25 00 00 	mov    %gs:0x0,%rax
    155e:	00 00 
    1560:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    1567:	4c 8b b5 68 ff ff ff 	mov    -0x98(%rbp),%r14
		fl_owner_t owner = current->files;
    156e:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
		size_t nbytes = min(count, nmax);
    1575:	4c 8b 6d b8          	mov    -0x48(%rbp),%r13
		fl_owner_t owner = current->files;
    1579:	48 8b 80 10 0c 00 00 	mov    0xc10(%rax),%rax
    1580:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
		size_t nbytes = min(count, nmax);
    1584:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    1588:	4c 39 e8             	cmp    %r13,%rax
    158b:	4c 0f 46 e8          	cmovbe %rax,%r13
	if (iov_iter_is_kvec(ii)) {
    158f:	41 80 3e 01          	cmpb   $0x1,(%r14)
    1593:	0f 84 f2 05 00 00    	je     1b8b <rfuse_direct_io+0x72b>
	printk("rfuse_get_uesr_pages: nbytesp : %ld, max_pages: %d\n", *nbytesp, max_pages);
    1599:	44 89 e2             	mov    %r12d,%edx
    159c:	4c 89 ee             	mov    %r13,%rsi
    159f:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
	size_t nbytes = 0;  /* # bytes already packed in req */
    15a6:	31 db                	xor    %ebx,%ebx
	printk("rfuse_get_uesr_pages: nbytesp : %ld, max_pages: %d\n", *nbytesp, max_pages);
    15a8:	e8 00 00 00 00       	call   15ad <rfuse_direct_io+0x14d>
	ssize_t ret = 0;
    15ad:	31 c9                	xor    %ecx,%ecx
	while (nbytes < *nbytesp && rp->num_pages < max_pages) {
    15af:	4d 85 ed             	test   %r13,%r13
    15b2:	0f 84 10 06 00 00    	je     1bc8 <rfuse_direct_io+0x768>
    15b8:	4c 89 75 c0          	mov    %r14,-0x40(%rbp)
    15bc:	49 89 ce             	mov    %rcx,%r14
    15bf:	45 39 67 48          	cmp    %r12d,0x48(%r15)
    15c3:	0f 83 c8 00 00 00    	jae    1691 <rfuse_direct_io+0x231>
		printk("rfuse_get_user_pages: while start\n");
    15c9:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
		size_t start;
    15d0:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    15d7:	00 
		printk("rfuse_get_user_pages: while start\n");
    15d8:	e8 00 00 00 00       	call   15dd <rfuse_direct_io+0x17d>
					max_pages - rp->num_pages,
    15dd:	41 8b 47 48          	mov    0x48(%r15),%eax
		ret = iov_iter_get_pages2(ii, &rp->pages[rp->num_pages],
    15e1:	49 8b 77 38          	mov    0x38(%r15),%rsi
    15e5:	44 89 e1             	mov    %r12d,%ecx
    15e8:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
    15ec:	4c 89 ea             	mov    %r13,%rdx
    15ef:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
    15f3:	29 c1                	sub    %eax,%ecx
    15f5:	48 29 da             	sub    %rbx,%rdx
    15f8:	48 8d 34 c6          	lea    (%rsi,%rax,8),%rsi
    15fc:	e8 00 00 00 00       	call   1601 <rfuse_direct_io+0x1a1>
    1601:	49 89 c6             	mov    %rax,%r14
		if (ret < 0)
    1604:	48 85 c0             	test   %rax,%rax
    1607:	0f 88 84 00 00 00    	js     1691 <rfuse_direct_io+0x231>
		iov_iter_advance(ii, ret);
    160d:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
    1611:	48 89 c6             	mov    %rax,%rsi
		nbytes += ret;
    1614:	4c 01 f3             	add    %r14,%rbx
		iov_iter_advance(ii, ret);
    1617:	e8 00 00 00 00       	call   161c <rfuse_direct_io+0x1bc>
		ret += start;
    161c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
		rp->descs[rp->num_pages].offset = start;
    1620:	41 8b 7f 48          	mov    0x48(%r15),%edi
    1624:	49 8b 57 40          	mov    0x40(%r15),%rdx
		ret += start;
    1628:	49 8d 34 06          	lea    (%r14,%rax,1),%rsi
		rp->descs[rp->num_pages].offset = start;
    162c:	89 44 fa 04          	mov    %eax,0x4(%rdx,%rdi,8)
		npages = DIV_ROUND_UP(ret, PAGE_SIZE);
    1630:	4c 8d 96 ff 0f 00 00 	lea    0xfff(%rsi),%r10
                                               unsigned int index,
                                               unsigned int nr_pages)
{
  int i;

  for (i = index; i < index + nr_pages; i++)
    1637:	41 8b 47 48          	mov    0x48(%r15),%eax
		ret += start;
    163b:	49 89 f6             	mov    %rsi,%r14
		npages = DIV_ROUND_UP(ret, PAGE_SIZE);
    163e:	49 c1 ea 0c          	shr    $0xc,%r10
		fuse_page_descs_length_init(rp->descs, rp->num_pages, npages);
    1642:	4d 8b 47 40          	mov    0x40(%r15),%r8
    1646:	42 8d 3c 10          	lea    (%rax,%r10,1),%edi
    164a:	39 f8                	cmp    %edi,%eax
    164c:	73 27                	jae    1675 <rfuse_direct_io+0x215>
    descs[i].length = PAGE_SIZE - descs[i].offset;
    164e:	41 b9 00 10 00 00    	mov    $0x1000,%r9d
    1654:	48 63 d0             	movslq %eax,%rdx
    1657:	44 89 c9             	mov    %r9d,%ecx
  for (i = index; i < index + nr_pages; i++)
    165a:	83 c0 01             	add    $0x1,%eax
    descs[i].length = PAGE_SIZE - descs[i].offset;
    165d:	49 8d 14 d0          	lea    (%r8,%rdx,8),%rdx
    1661:	2b 4a 04             	sub    0x4(%rdx),%ecx
    1664:	89 0a                	mov    %ecx,(%rdx)
  for (i = index; i < index + nr_pages; i++)
    1666:	39 f8                	cmp    %edi,%eax
    1668:	75 ea                	jne    1654 <rfuse_direct_io+0x1f4>
		rp->num_pages += npages;
    166a:	41 8b 7f 48          	mov    0x48(%r15),%edi
		rp->descs[rp->num_pages - 1].length -=
    166e:	4d 8b 47 40          	mov    0x40(%r15),%r8
		rp->num_pages += npages;
    1672:	44 01 d7             	add    %r10d,%edi
		rp->descs[rp->num_pages - 1].length -=
    1675:	8d 47 ff             	lea    -0x1(%rdi),%eax
			(PAGE_SIZE - ret) & (PAGE_SIZE - 1);
    1678:	f7 de                	neg    %esi
		rp->num_pages += npages;
    167a:	41 89 7f 48          	mov    %edi,0x48(%r15)
			(PAGE_SIZE - ret) & (PAGE_SIZE - 1);
    167e:	81 e6 ff 0f 00 00    	and    $0xfff,%esi
		rp->descs[rp->num_pages - 1].length -=
    1684:	41 29 34 c0          	sub    %esi,(%r8,%rax,8)
	while (nbytes < *nbytesp && rp->num_pages < max_pages) {
    1688:	4c 39 eb             	cmp    %r13,%rbx
    168b:	0f 82 2e ff ff ff    	jb     15bf <rfuse_direct_io+0x15f>
	return ret < 0 ? ret : 0;
    1691:	4c 89 f1             	mov    %r14,%rcx
    1694:	31 c0                	xor    %eax,%eax
    1696:	4c 8b 75 c0          	mov    -0x40(%rbp),%r14
    169a:	48 85 c9             	test   %rcx,%rcx
    169d:	48 0f 4f c8          	cmovg  %rax,%rcx
    16a1:	89 4d c0             	mov    %ecx,-0x40(%rbp)
		if (err && !nbytes)
    16a4:	48 85 db             	test   %rbx,%rbx
    16a7:	75 08                	jne    16b1 <rfuse_direct_io+0x251>
    16a9:	85 c9                	test   %ecx,%ecx
    16ab:	0f 85 37 02 00 00    	jne    18e8 <rfuse_direct_io+0x488>
	in->size = count;
    16b1:	89 d9                	mov    %ebx,%ecx
{
    16b3:	49 8b 47 50          	mov    0x50(%r15),%rax
		if (write) {
    16b7:	44 8b 4d 84          	mov    -0x7c(%rbp),%r9d
{
    16bb:	4c 8b 68 30          	mov    0x30(%rax),%r13
	/* Allocate rfuse request for write) */
    16bf:	8b 40 04             	mov    0x4(%rax),%eax
	struct kiocb *iocb = ria->io->iocb;
    16c2:	4d 8b 45 00          	mov    0x0(%r13),%r8
	struct file *file = iocb->ki_filp;
    16c6:	4d 8b 90 c8 00 00 00 	mov    0xc8(%r8),%r10
	struct fuse_file *ff = file->private_data;
    16cd:	4d 8b 22             	mov    (%r10),%r12
		if (write) {
    16d0:	45 85 c9             	test   %r9d,%r9d
    16d3:	0f 84 6e 03 00 00    	je     1a47 <rfuse_direct_io+0x5e7>
	/* Allocate rfuse request for write) */
    16d9:	4c 89 95 60 ff ff ff 	mov    %r10,-0xa0(%rbp)
	if (ria->io->async) {
    16e0:	31 d2                	xor    %edx,%edx
    16e2:	89 4d 90             	mov    %ecx,-0x70(%rbp)
	/* Allocate rfuse request for write) */
    16e5:	85 c0                	test   %eax,%eax
    16e7:	0f 84 82 04 00 00    	je     1b6f <rfuse_direct_io+0x70f>
	if (ria->io->async) {
    16ed:	be 01 00 00 00       	mov    $0x1,%esi
    16f2:	4c 89 e7             	mov    %r12,%rdi
    16f5:	e8 00 00 00 00       	call   16fa <rfuse_direct_io+0x29a>
    16fa:	8b 4d 90             	mov    -0x70(%rbp),%ecx
    16fd:	4c 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%r10
    1704:	48 89 c2             	mov    %rax,%rdx
	}
    1707:	49 89 57 30          	mov    %rdx,0x30(%r15)
	in->offset = pos;
    170b:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
	ria->r_req = r_req;
    170f:	80 8a e8 00 00 00 08 	orb    $0x8,0xe8(%rdx)
	in->fh = ff->fh;
    1716:	49 8b 72 18          	mov    0x18(%r10),%rsi
	struct rfuse_req *r_req = ria->r_req;
    171a:	49 8b 47 30          	mov    0x30(%r15),%rax
	in->size = count;
    171e:	89 88 88 00 00 00    	mov    %ecx,0x88(%rax)
	in->fh = ff->fh;
    1724:	48 89 70 78          	mov    %rsi,0x78(%rax)
	in->offset = pos;
    1728:	48 89 b8 80 00 00 00 	mov    %rdi,0x80(%rax)
	r_req->in.opcode = FUSE_WRITE;
    172f:	c7 40 10 10 00 00 00 	movl   $0x10,0x10(%rax)
	r_req->in.nodeid = ff->nodeid;
    1736:	49 8b 72 20          	mov    0x20(%r10),%rsi
	r_req->in.arglen[0] = count;
    173a:	89 48 28             	mov    %ecx,0x28(%rax)
	r_req->in.nodeid = ff->nodeid;
    173d:	48 89 70 08          	mov    %rsi,0x8(%rax)
	ria->write.in.size = count;
    1741:	41 89 4f 10          	mov    %ecx,0x10(%r15)
	struct rfuse_pages *rp = &ria->rp;
    1745:	49 8d 4f 38          	lea    0x38(%r15),%rcx
	ria->write.in.offset = pos;
    1749:	49 89 7f 08          	mov    %rdi,0x8(%r15)
	struct rfuse_pages *rp = &ria->rp;
    174d:	48 89 88 f0 00 00 00 	mov    %rcx,0xf0(%rax)
	unsigned int flags = iocb->ki_filp->f_flags;
    1754:	49 8b 45 00          	mov    0x0(%r13),%rax
    1758:	41 8b 4d 20          	mov    0x20(%r13),%ecx
    175c:	8b 40 48             	mov    0x48(%rax),%eax
		flags |= O_DSYNC;
    175f:	89 c6                	mov    %eax,%esi
    1761:	81 ce 00 10 00 00    	or     $0x1000,%esi
    1767:	f6 c1 02             	test   $0x2,%cl
    176a:	0f 45 c6             	cmovne %esi,%eax
		flags |= O_SYNC;
    176d:	89 c6                	mov    %eax,%esi
    176f:	81 ce 00 10 10 00    	or     $0x101000,%esi
    1775:	83 e1 04             	and    $0x4,%ecx
    1778:	0f 45 c6             	cmovne %esi,%eax
	inarg->flags = rfuse_write_flags(iocb);
    177b:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
	rfuse_write_args_fill(ria, ff, pos, count);
    177f:	89 82 98 00 00 00    	mov    %eax,0x98(%rdx)
	inarg->flags = rfuse_write_flags(iocb);
    1785:	48 85 f6             	test   %rsi,%rsi
    1788:	74 1f                	je     17a9 <rfuse_direct_io+0x349>
	if (owner != NULL) {
    178a:	83 8a 8c 00 00 00 02 	orl    $0x2,0x8c(%rdx)
		inarg->write_flags |= FUSE_WRITE_LOCKOWNER;
    1791:	49 8b 3c 24          	mov    (%r12),%rdi
	if (owner != NULL) {
    1795:	48 89 55 a0          	mov    %rdx,-0x60(%rbp)
		inarg->write_flags |= FUSE_WRITE_LOCKOWNER;
    1799:	e8 00 00 00 00       	call   179e <rfuse_direct_io+0x33e>
    179e:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    17a2:	48 89 82 90 00 00 00 	mov    %rax,0x90(%rdx)
	}
    17a9:	bf 04 00 00 00       	mov    $0x4,%edi
    17ae:	48 89 55 a0          	mov    %rdx,-0x60(%rbp)
    17b2:	e8 00 00 00 00       	call   17b7 <rfuse_direct_io+0x357>
    17b7:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    17bb:	84 c0                	test   %al,%al
    17bd:	75 07                	jne    17c6 <rfuse_direct_io+0x366>
	if (!capable(CAP_FSETID))
    17bf:	83 8a 8c 00 00 00 04 	orl    $0x4,0x8c(%rdx)
	/* Send request */
    17c6:	49 8b 47 50          	mov    0x50(%r15),%rax
    17ca:	8b 78 04             	mov    0x4(%rax),%edi
    17cd:	85 ff                	test   %edi,%edi
    17cf:	0f 85 6b 03 00 00    	jne    1b40 <rfuse_direct_io+0x6e0>
	
    17d5:	48 89 d7             	mov    %rdx,%rdi
    17d8:	48 89 55 a0          	mov    %rdx,-0x60(%rbp)
    17dc:	e8 00 00 00 00       	call   17e1 <rfuse_direct_io+0x381>
	err = rfuse_simple_request(r_req);
    17e1:	49 8b 4f 30          	mov    0x30(%r15),%rcx
	out = (struct fuse_write_out *)&ria->r_req->args;
    17e5:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    17e9:	48 85 c0             	test   %rax,%rax
	
    17ec:	49 89 c5             	mov    %rax,%r13
	out = (struct fuse_write_out *)&ria->r_req->args;
    17ef:	0f 85 c6 03 00 00    	jne    1bbb <rfuse_direct_io+0x75b>
    17f5:	44 8b 61 78          	mov    0x78(%rcx),%r12d
    17f9:	4c 39 e3             	cmp    %r12,%rbx
    17fc:	0f 83 9a 03 00 00    	jae    1b9c <rfuse_direct_io+0x73c>
	outsize = out->size;
    1802:	48 89 d7             	mov    %rdx,%rdi
	if (!err && out->size > count)
    1805:	49 c7 c5 fb ff ff ff 	mov    $0xfffffffffffffffb,%r13
	outsize = out->size;
    180c:	e8 00 00 00 00       	call   1811 <rfuse_direct_io+0x3b1>
			rfuse_release_user_pages(&ria->rp, io->should_dirty);
    1811:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    1815:	0f b6 50 29          	movzbl 0x29(%rax),%edx
    1819:	80 fa 01             	cmp    $0x1,%dl
    181c:	0f 87 00 00 00 00    	ja     1822 <rfuse_direct_io+0x3c2>
	for (i = 0; i < rp->num_pages; i++) {
    1822:	41 8b 47 48          	mov    0x48(%r15),%eax
			rfuse_release_user_pages(&ria->rp, io->should_dirty);
    1826:	83 e2 01             	and    $0x1,%edx
	for (i = 0; i < rp->num_pages; i++) {
    1829:	45 31 e4             	xor    %r12d,%r12d
    182c:	85 c0                	test   %eax,%eax
    182e:	0f 84 65 01 00 00    	je     1999 <rfuse_direct_io+0x539>
    1834:	48 89 5d 90          	mov    %rbx,-0x70(%rbp)
    1838:	89 d3                	mov    %edx,%ebx
    183a:	4c 89 6d a0          	mov    %r13,-0x60(%rbp)
    183e:	eb 32                	jmp    1872 <rfuse_direct_io+0x412>
		put_page(rp->pages[i]);
    1840:	49 8b 47 38          	mov    0x38(%r15),%rax
    1844:	4a 8b 3c e8          	mov    (%rax,%r13,8),%rdi
	unsigned long head = READ_ONCE(page->compound_head);
    1848:	48 8b 47 08          	mov    0x8(%rdi),%rax
	if (unlikely(head & 1))
    184c:	a8 01                	test   $0x1,%al
    184e:	75 46                	jne    1896 <rfuse_direct_io+0x436>
    1850:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1855:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	return GEN_UNARY_RMWcc(LOCK_PREFIX "decl", v->counter, e);
    185a:	f0 ff 4f 34          	lock decl 0x34(%rdi)
	if (folio_put_testzero(folio))
    185e:	0f 84 d9 01 00 00    	je     1a3d <rfuse_direct_io+0x5dd>
	for (i = 0; i < rp->num_pages; i++) {
    1864:	41 83 c4 01          	add    $0x1,%r12d
    1868:	45 3b 67 48          	cmp    0x48(%r15),%r12d
    186c:	0f 83 1f 01 00 00    	jae    1991 <rfuse_direct_io+0x531>
			set_page_dirty_lock(rp->pages[i]);
    1872:	45 89 e5             	mov    %r12d,%r13d
		if (should_dirty)
    1875:	84 db                	test   %bl,%bl
    1877:	74 c7                	je     1840 <rfuse_direct_io+0x3e0>
			set_page_dirty_lock(rp->pages[i]);
    1879:	49 8b 47 38          	mov    0x38(%r15),%rax
    187d:	4a 8b 3c e8          	mov    (%rax,%r13,8),%rdi
    1881:	e8 00 00 00 00       	call   1886 <rfuse_direct_io+0x426>
		put_page(rp->pages[i]);
    1886:	49 8b 47 38          	mov    0x38(%r15),%rax
    188a:	4a 8b 3c e8          	mov    (%rax,%r13,8),%rdi
	unsigned long head = READ_ONCE(page->compound_head);
    188e:	48 8b 47 08          	mov    0x8(%rdi),%rax
	if (unlikely(head & 1))
    1892:	a8 01                	test   $0x1,%al
    1894:	74 ba                	je     1850 <rfuse_direct_io+0x3f0>
		return head - 1;
    1896:	48 8d 78 ff          	lea    -0x1(%rax),%rdi
    189a:	eb b9                	jmp    1855 <rfuse_direct_io+0x3f5>
	size_t nmax = write ? fc->max_write : fc->max_read;
    189c:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    18a3:	8b 40 38             	mov    0x38(%rax),%eax
    18a6:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    18aa:	e9 29 fc ff ff       	jmp    14d8 <rfuse_direct_io+0x78>
	down_write(&inode->i_rwsem);
    18af:	4c 8d ab a0 00 00 00 	lea    0xa0(%rbx),%r13
    18b6:	4c 89 ef             	mov    %r13,%rdi
    18b9:	e8 00 00 00 00       	call   18be <rfuse_direct_io+0x45e>
	fuse_set_nowrite(inode);
    18be:	48 89 df             	mov    %rbx,%rdi
    18c1:	e8 00 00 00 00       	call   18c6 <rfuse_direct_io+0x466>
	fuse_release_nowrite(inode);
    18c6:	48 89 df             	mov    %rbx,%rdi
    18c9:	e8 00 00 00 00       	call   18ce <rfuse_direct_io+0x46e>
	up_write(&inode->i_rwsem);
    18ce:	4c 89 ef             	mov    %r13,%rdi
    18d1:	e8 00 00 00 00       	call   18d6 <rfuse_direct_io+0x476>
	io->should_dirty = !write && iter_is_iovec(iter);
    18d6:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    18dd:	80 38 00             	cmpb   $0x0,(%rax)
    18e0:	0f 94 c0             	sete   %al
    18e3:	e9 55 fc ff ff       	jmp    153d <rfuse_direct_io+0xdd>
{
    18e8:	49 8b 7f 38          	mov    0x38(%r15),%rdi
    18ec:	e8 00 00 00 00       	call   18f1 <rfuse_direct_io+0x491>
	kfree(ria->rp.pages);
    18f1:	4c 89 ff             	mov    %r15,%rdi
    18f4:	e8 00 00 00 00       	call   18f9 <rfuse_direct_io+0x499>
	if (res > 0)
    18f9:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
    18fe:	0f 8e e8 02 00 00    	jle    1bec <rfuse_direct_io+0x78c>
		*ppos = pos;
    1904:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    190b:	48 8b 5d b0          	mov    -0x50(%rbp),%rbx
    190f:	48 89 18             	mov    %rbx,(%rax)
}
    1912:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1916:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    191d:	00 00 
    191f:	0f 85 4d 03 00 00    	jne    1c72 <rfuse_direct_io+0x812>
    1925:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1929:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
    192d:	5b                   	pop    %rbx
    192e:	41 5c                	pop    %r12
    1930:	41 5d                	pop    %r13
    1932:	41 5e                	pop    %r14
    1934:	41 5f                	pop    %r15
    1936:	5d                   	pop    %rbp
    1937:	31 d2                	xor    %edx,%edx
    1939:	31 c9                	xor    %ecx,%ecx
    193b:	31 f6                	xor    %esi,%esi
    193d:	31 ff                	xor    %edi,%edi
    193f:	45 31 c0             	xor    %r8d,%r8d
    1942:	45 31 c9             	xor    %r9d,%r9d
    1945:	45 31 d2             	xor    %r10d,%r10d
    1948:	45 31 db             	xor    %r11d,%r11d
    194b:	e9 00 00 00 00       	jmp    1950 <rfuse_direct_io+0x4f0>
    1950:	48 8b 07             	mov    (%rdi),%rax
    1953:	48 c1 e8 33          	shr    $0x33,%rax
    1957:	83 e0 07             	and    $0x7,%eax
	if (!is_zone_device_page(page))
    195a:	83 f8 04             	cmp    $0x4,%eax
    195d:	0f 85 f7 fe ff ff    	jne    185a <rfuse_direct_io+0x3fa>
	return __put_devmap_managed_page_refs(page, refs);
    1963:	be 01 00 00 00       	mov    $0x1,%esi
    1968:	48 89 bd 60 ff ff ff 	mov    %rdi,-0xa0(%rbp)
    196f:	e8 00 00 00 00       	call   1974 <rfuse_direct_io+0x514>
	if (put_devmap_managed_page(&folio->page))
    1974:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
    197b:	84 c0                	test   %al,%al
    197d:	0f 84 d7 fe ff ff    	je     185a <rfuse_direct_io+0x3fa>
	for (i = 0; i < rp->num_pages; i++) {
    1983:	41 83 c4 01          	add    $0x1,%r12d
    1987:	45 3b 67 48          	cmp    0x48(%r15),%r12d
    198b:	0f 82 e1 fe ff ff    	jb     1872 <rfuse_direct_io+0x412>
    1991:	4c 8b 6d a0          	mov    -0x60(%rbp),%r13
    1995:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
{
    1999:	49 8b 7f 38          	mov    0x38(%r15),%rdi
    199d:	e8 00 00 00 00       	call   19a2 <rfuse_direct_io+0x542>
	kfree(ria->rp.pages);
    19a2:	4c 89 ff             	mov    %r15,%rdi
    19a5:	e8 00 00 00 00       	call   19aa <rfuse_direct_io+0x54a>
		if (nres < 0) {
    19aa:	4d 85 ed             	test   %r13,%r13
    19ad:	0f 88 a7 02 00 00    	js     1c5a <rfuse_direct_io+0x7fa>
		WARN_ON(nres > nbytes);
    19b3:	4d 89 ec             	mov    %r13,%r12
    19b6:	4c 39 eb             	cmp    %r13,%rbx
    19b9:	0f 82 7a 01 00 00    	jb     1b39 <rfuse_direct_io+0x6d9>
		count -= nres;
    19bf:	4c 29 65 b8          	sub    %r12,-0x48(%rbp)
		res += nres;
    19c3:	4c 01 6d 98          	add    %r13,-0x68(%rbp)
		pos += nres;
    19c7:	4c 01 6d b0          	add    %r13,-0x50(%rbp)
		if (nres != nbytes) {
    19cb:	4c 39 eb             	cmp    %r13,%rbx
    19ce:	0f 85 25 02 00 00    	jne    1bf9 <rfuse_direct_io+0x799>
		if (count) {
    19d4:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
    19d9:	0f 84 1a ff ff ff    	je     18f9 <rfuse_direct_io+0x499>
			max_pages = iov_iter_npages(iter, fc->max_pages);
    19df:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    19e6:	4c 89 f7             	mov    %r14,%rdi
    19e9:	8b 70 40             	mov    0x40(%rax),%esi
    19ec:	e8 00 00 00 00       	call   19f1 <rfuse_direct_io+0x591>
			ria = rfuse_io_alloc(io, max_pages);
    19f1:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
    19f5:	89 c6                	mov    %eax,%esi
			max_pages = iov_iter_npages(iter, fc->max_pages);
    19f7:	41 89 c4             	mov    %eax,%r12d
			ria = rfuse_io_alloc(io, max_pages);
    19fa:	e8 c1 f4 ff ff       	call   ec0 <rfuse_io_alloc>
    19ff:	49 89 c7             	mov    %rax,%r15
			if (!ria)
    1a02:	48 85 c0             	test   %rax,%rax
    1a05:	0f 85 63 fb ff ff    	jne    156e <rfuse_direct_io+0x10e>
    1a0b:	e9 e9 fe ff ff       	jmp    18f9 <rfuse_direct_io+0x499>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    1a10:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
    1a16:	0f 85 39 fe ff ff    	jne    1855 <rfuse_direct_io+0x3f5>
    1a1c:	48 8b 07             	mov    (%rdi),%rax
    1a1f:	a9 00 00 01 00       	test   $0x10000,%eax
    1a24:	0f 84 2b fe ff ff    	je     1855 <rfuse_direct_io+0x3f5>
		unsigned long head = READ_ONCE(page[1].compound_head);
    1a2a:	48 8b 47 48          	mov    0x48(%rdi),%rax
			return (const struct page *)(head - 1);
    1a2e:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
    1a32:	a8 01                	test   $0x1,%al
    1a34:	48 0f 45 f9          	cmovne %rcx,%rdi
    1a38:	e9 18 fe ff ff       	jmp    1855 <rfuse_direct_io+0x3f5>
		__folio_put(folio);
    1a3d:	e8 00 00 00 00       	call   1a42 <rfuse_direct_io+0x5e2>
    1a42:	e9 1d fe ff ff       	jmp    1864 <rfuse_direct_io+0x404>
	struct fuse_mount *fm = ff->fm;
	struct fuse_read_in *inarg;
	struct rfuse_req *r_req;
	int res;

	/* Allocate rfuse request for write) */
    1a47:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
	if (ria->io->async) {
    1a4e:	31 d2                	xor    %edx,%edx
    1a50:	89 4d 90             	mov    %ecx,-0x70(%rbp)
	/* Allocate rfuse request for write) */
    1a53:	85 c0                	test   %eax,%eax
    1a55:	0f 84 f8 00 00 00    	je     1b53 <rfuse_direct_io+0x6f3>
	if (ria->io->async) {
    1a5b:	be 01 00 00 00       	mov    $0x1,%esi
    1a60:	4c 89 e7             	mov    %r12,%rdi
    1a63:	e8 00 00 00 00       	call   1a68 <rfuse_direct_io+0x608>
    1a68:	8b 4d 90             	mov    -0x70(%rbp),%ecx
    1a6b:	4c 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%r8
    1a72:	49 89 c5             	mov    %rax,%r13
		r_req = rfuse_get_req(fm, true, false);
	} else {
		r_req = rfuse_get_req(fm, false, false);
	}
    1a75:	4d 89 6f 30          	mov    %r13,0x30(%r15)
	ria->r_req = r_req;
    1a79:	41 80 8d e8 00 00 00 	orb    $0x10,0xe8(%r13)
    1a80:	10 

    1a81:	49 8b b0 c8 00 00 00 	mov    0xc8(%r8),%rsi
	struct fuse_file *ff = file->private_data;
    1a88:	49 8b 47 30          	mov    0x30(%r15),%rax

    1a8c:	48 8b 7e 18          	mov    0x18(%rsi),%rdi
	in->offset = pos;
    1a90:	89 88 88 00 00 00    	mov    %ecx,0x88(%rax)

    1a96:	48 89 78 78          	mov    %rdi,0x78(%rax)
	in->fh = ff->fh;
    1a9a:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
    1a9e:	48 89 b8 80 00 00 00 	mov    %rdi,0x80(%rax)
	in->size = count;
    1aa5:	41 8b 78 48          	mov    0x48(%r8),%edi

    1aa9:	c7 40 10 0f 00 00 00 	movl   $0xf,0x10(%rax)
	in->size = count;
    1ab0:	89 b8 98 00 00 00    	mov    %edi,0x98(%rax)
	r_req->in.opcode = opcode;
    1ab6:	48 8b 76 20          	mov    0x20(%rsi),%rsi

    1aba:	89 48 38             	mov    %ecx,0x38(%rax)
	struct rfuse_req *r_req = ria->r_req;
    1abd:	49 8d 4f 38          	lea    0x38(%r15),%rcx
	r_req->in.opcode = opcode;
    1ac1:	48 89 70 08          	mov    %rsi,0x8(%rax)
	ria->r_req->out_pages = true;

	inarg = (struct fuse_read_in *)&r_req->args;
	rfuse_read_args_fill(ria, file, pos, count, FUSE_READ);
    1ac5:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
	r_req->in.nodeid = ff->nodeid;
    1ac9:	80 88 e8 00 00 00 20 	orb    $0x20,0xe8(%rax)
	struct rfuse_req *r_req = ria->r_req;
    1ad0:	48 89 88 f0 00 00 00 	mov    %rcx,0xf0(%rax)
	rfuse_read_args_fill(ria, file, pos, count, FUSE_READ);
    1ad7:	48 85 f6             	test   %rsi,%rsi
    1ada:	74 18                	je     1af4 <rfuse_direct_io+0x694>
	if (owner != NULL) {
    1adc:	41 83 8d 8c 00 00 00 	orl    $0x2,0x8c(%r13)
    1ae3:	02 
		inarg->read_flags |= FUSE_READ_LOCKOWNER;
    1ae4:	49 8b 3c 24          	mov    (%r12),%rdi
    1ae8:	e8 00 00 00 00       	call   1aed <rfuse_direct_io+0x68d>
    1aed:	49 89 85 90 00 00 00 	mov    %rax,0x90(%r13)
		inarg->lock_owner = fuse_lock_owner_id(fm->fc, owner);
	}

    1af4:	49 8b 47 50          	mov    0x50(%r15),%rax
    1af8:	8b 48 04             	mov    0x4(%rax),%ecx
    1afb:	85 c9                	test   %ecx,%ecx
    1afd:	75 41                	jne    1b40 <rfuse_direct_io+0x6e0>
	if (ria->io->async)
		return rfuse_async_req_send(fm, ria, count);
    1aff:	4c 89 ef             	mov    %r13,%rdi
    1b02:	e8 00 00 00 00       	call   1b07 <rfuse_direct_io+0x6a7>
	res = rfuse_simple_request(r_req);
    1b07:	4c 89 ef             	mov    %r13,%rdi
		return rfuse_async_req_send(fm, ria, count);
    1b0a:	49 89 c4             	mov    %rax,%r12
	res = rfuse_simple_request(r_req);
    1b0d:	e8 00 00 00 00       	call   1b12 <rfuse_direct_io+0x6b2>
	rfuse_put_request(r_req);

    1b12:	4d 63 ec             	movslq %r12d,%r13
		if (!io->async || nres < 0) {
    1b15:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    1b19:	8b 50 04             	mov    0x4(%rax),%edx
    1b1c:	85 d2                	test   %edx,%edx
    1b1e:	0f 84 ed fc ff ff    	je     1811 <rfuse_direct_io+0x3b1>
    1b24:	4d 85 ed             	test   %r13,%r13
    1b27:	0f 88 e4 fc ff ff    	js     1811 <rfuse_direct_io+0x3b1>
		WARN_ON(nres > nbytes);
    1b2d:	4d 89 ec             	mov    %r13,%r12
    1b30:	4c 39 eb             	cmp    %r13,%rbx
    1b33:	0f 83 86 fe ff ff    	jae    19bf <rfuse_direct_io+0x55f>
    1b39:	0f 0b                	ud2    
    1b3b:	e9 7f fe ff ff       	jmp    19bf <rfuse_direct_io+0x55f>
	if (ria->io->async)
    1b40:	48 89 da             	mov    %rbx,%rdx
    1b43:	4c 89 fe             	mov    %r15,%rsi
    1b46:	4c 89 e7             	mov    %r12,%rdi
    1b49:	e8 f2 f7 ff ff       	call   1340 <rfuse_async_req_send>
    1b4e:	49 89 c5             	mov    %rax,%r13
    1b51:	eb c2                	jmp    1b15 <rfuse_direct_io+0x6b5>
	} else {
    1b53:	31 f6                	xor    %esi,%esi
    1b55:	4c 89 e7             	mov    %r12,%rdi
    1b58:	e8 00 00 00 00       	call   1b5d <rfuse_direct_io+0x6fd>
    1b5d:	4c 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%r8
    1b64:	8b 4d 90             	mov    -0x70(%rbp),%ecx
    1b67:	49 89 c5             	mov    %rax,%r13
    1b6a:	e9 06 ff ff ff       	jmp    1a75 <rfuse_direct_io+0x615>
	} else {
    1b6f:	31 f6                	xor    %esi,%esi
    1b71:	4c 89 e7             	mov    %r12,%rdi
    1b74:	e8 00 00 00 00       	call   1b79 <rfuse_direct_io+0x719>
    1b79:	4c 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%r10
    1b80:	8b 4d 90             	mov    -0x70(%rbp),%ecx
    1b83:	48 89 c2             	mov    %rax,%rdx
    1b86:	e9 7c fb ff ff       	jmp    1707 <rfuse_direct_io+0x2a7>
		printk("iov_iter_is_kvec = true\n");
    1b8b:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    1b92:	e8 00 00 00 00       	call   1b97 <rfuse_direct_io+0x737>
    1b97:	e9 fd f9 ff ff       	jmp    1599 <rfuse_direct_io+0x139>
	outsize = out->size;
    1b9c:	48 89 d7             	mov    %rdx,%rdi
		err = -EIO;
    1b9f:	4d 89 e5             	mov    %r12,%r13
	outsize = out->size;
    1ba2:	e8 00 00 00 00       	call   1ba7 <rfuse_direct_io+0x747>
		if (!io->async || nres < 0) {
    1ba7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    1bab:	8b 70 04             	mov    0x4(%rax),%esi
    1bae:	85 f6                	test   %esi,%esi
    1bb0:	0f 84 5b fc ff ff    	je     1811 <rfuse_direct_io+0x3b1>
    1bb6:	e9 04 fe ff ff       	jmp    19bf <rfuse_direct_io+0x55f>
	outsize = out->size;
    1bbb:	48 89 d7             	mov    %rdx,%rdi
    1bbe:	e8 00 00 00 00       	call   1bc3 <rfuse_direct_io+0x763>

    1bc3:	e9 4d ff ff ff       	jmp    1b15 <rfuse_direct_io+0x6b5>
	return ret < 0 ? ret : 0;
    1bc8:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%rbp)
    1bcf:	e9 df fa ff ff       	jmp    16b3 <rfuse_direct_io+0x253>
{
    1bd4:	49 8b 7f 38          	mov    0x38(%r15),%rdi
    1bd8:	e8 00 00 00 00       	call   1bdd <rfuse_direct_io+0x77d>
	kfree(ria->rp.pages);
    1bdd:	4c 89 ff             	mov    %r15,%rdi
    1be0:	e8 00 00 00 00       	call   1be5 <rfuse_direct_io+0x785>
	int err = 0;
    1be5:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%rbp)
	return res > 0 ? res : err;
    1bec:	48 63 45 c0          	movslq -0x40(%rbp),%rax
    1bf0:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1bf4:	e9 19 fd ff ff       	jmp    1912 <rfuse_direct_io+0x4b2>
			iov_iter_revert(iter, nbytes - nres);
    1bf9:	4c 29 e3             	sub    %r12,%rbx
    1bfc:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
    1c03:	48 89 de             	mov    %rbx,%rsi
    1c06:	e8 00 00 00 00       	call   1c0b <rfuse_direct_io+0x7ab>
	if (ria)
    1c0b:	e9 e9 fc ff ff       	jmp    18f9 <rfuse_direct_io+0x499>
	pgoff_t idx_to = (pos + count - 1) >> PAGE_SHIFT;
    1c10:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
    1c14:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
	if (!cuse && rfuse_range_is_writeback(inode, idx_from, idx_to)) {
    1c18:	48 89 df             	mov    %rbx,%rdi
	pgoff_t idx_to = (pos + count - 1) >> PAGE_SHIFT;
    1c1b:	48 8d 54 06 ff       	lea    -0x1(%rsi,%rax,1),%rdx
	pgoff_t idx_from = pos >> PAGE_SHIFT;
    1c20:	48 c1 f8 0c          	sar    $0xc,%rax
	pgoff_t idx_to = (pos + count - 1) >> PAGE_SHIFT;
    1c24:	48 c1 ea 0c          	shr    $0xc,%rdx
	pgoff_t idx_from = pos >> PAGE_SHIFT;
    1c28:	48 89 c6             	mov    %rax,%rsi
	if (!cuse && rfuse_range_is_writeback(inode, idx_from, idx_to)) {
    1c2b:	e8 e0 e3 ff ff       	call   10 <rfuse_range_is_writeback>
    1c30:	84 c0                	test   %al,%al
    1c32:	0f 84 f6 f8 ff ff    	je     152e <rfuse_direct_io+0xce>
		if (!write)
    1c38:	44 8b 5d 84          	mov    -0x7c(%rbp),%r11d
    1c3c:	45 85 db             	test   %r11d,%r11d
    1c3f:	0f 84 6a fc ff ff    	je     18af <rfuse_direct_io+0x44f>
	fuse_set_nowrite(inode);
    1c45:	48 89 df             	mov    %rbx,%rdi
    1c48:	e8 00 00 00 00       	call   1c4d <rfuse_direct_io+0x7ed>
	fuse_release_nowrite(inode);
    1c4d:	48 89 df             	mov    %rbx,%rdi
    1c50:	e8 00 00 00 00       	call   1c55 <rfuse_direct_io+0x7f5>
		if (!write)
    1c55:	e9 e1 f8 ff ff       	jmp    153b <rfuse_direct_io+0xdb>
			iov_iter_revert(iter, nbytes);
    1c5a:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
    1c61:	48 89 de             	mov    %rbx,%rsi
    1c64:	e8 00 00 00 00       	call   1c69 <rfuse_direct_io+0x809>
			err = nres;
    1c69:	44 89 6d c0          	mov    %r13d,-0x40(%rbp)
	if (ria)
    1c6d:	e9 87 fc ff ff       	jmp    18f9 <rfuse_direct_io+0x499>
}
    1c72:	e8 00 00 00 00       	call   1c77 <rfuse_direct_io+0x817>
		return -ENOMEM;
    1c77:	48 c7 45 98 f4 ff ff 	movq   $0xfffffffffffffff4,-0x68(%rbp)
    1c7e:	ff 
    1c7f:	e9 8e fc ff ff       	jmp    1912 <rfuse_direct_io+0x4b2>
    1c84:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1c8b:	00 00 00 00 
    1c8f:	90                   	nop

0000000000001c90 <__pfx_rfuse_readpages_end>:
    1c90:	90                   	nop
    1c91:	90                   	nop
    1c92:	90                   	nop
    1c93:	90                   	nop
    1c94:	90                   	nop
    1c95:	90                   	nop
    1c96:	90                   	nop
    1c97:	90                   	nop
    1c98:	90                   	nop
    1c99:	90                   	nop
    1c9a:	90                   	nop
    1c9b:	90                   	nop
    1c9c:	90                   	nop
    1c9d:	90                   	nop
    1c9e:	90                   	nop
    1c9f:	90                   	nop

0000000000001ca0 <rfuse_readpages_end>:

    1ca0:	e8 00 00 00 00       	call   1ca5 <rfuse_readpages_end+0x5>
    1ca5:	55                   	push   %rbp
    1ca6:	48 89 e5             	mov    %rsp,%rbp
    1ca9:	41 57                	push   %r15
    1cab:	41 56                	push   %r14
    1cad:	41 55                	push   %r13
    1caf:	49 89 f5             	mov    %rsi,%r13
    1cb2:	41 54                	push   %r12
    1cb4:	41 89 d4             	mov    %edx,%r12d
    1cb7:	53                   	push   %rbx
    1cb8:	48 83 ec 10          	sub    $0x10,%rsp
	int i;
    1cbc:	4c 8b b6 f0 00 00 00 	mov    0xf0(%rsi),%r14
	struct rfuse_pages *rp = r_req->rp;
    1cc3:	49 8d 46 c8          	lea    -0x38(%r14),%rax

    1cc7:	41 8b 76 10          	mov    0x10(%r14),%esi
	struct rfuse_pages *rp = r_req->rp;
    1ccb:	48 89 45 d0          	mov    %rax,-0x30(%rbp)

    1ccf:	31 c0                	xor    %eax,%eax
    1cd1:	eb 1a                	jmp    1ced <rfuse_readpages_end+0x4d>
	for (i = 0; mapping == NULL && i < rp->num_pages; i++)
    1cd3:	49 8b 0e             	mov    (%r14),%rcx
    1cd6:	48 63 d0             	movslq %eax,%rdx

    1cd9:	83 c0 01             	add    $0x1,%eax
	for (i = 0; mapping == NULL && i < rp->num_pages; i++)
    1cdc:	48 8b 14 d1          	mov    (%rcx,%rdx,8),%rdx
    1ce0:	48 8b 52 18          	mov    0x18(%rdx),%rdx

    1ce4:	48 85 d2             	test   %rdx,%rdx
    1ce7:	0f 85 56 01 00 00    	jne    1e43 <rfuse_readpages_end+0x1a3>
    1ced:	39 c6                	cmp    %eax,%esi
    1cef:	75 e2                	jne    1cd3 <rfuse_readpages_end+0x33>

    1cf1:	45 31 ff             	xor    %r15d,%r15d
    1cf4:	85 f6                	test   %esi,%esi
    1cf6:	75 34                	jne    1d2c <rfuse_readpages_end+0x8c>
    1cf8:	e9 97 00 00 00       	jmp    1d94 <rfuse_readpages_end+0xf4>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    1cfd:	f0 80 0b 04          	lock orb $0x4,(%rbx)
			SetPageError(page);
    1d01:	48 89 df             	mov    %rbx,%rdi
    1d04:	e8 00 00 00 00       	call   1d09 <rfuse_readpages_end+0x69>
	unsigned long head = READ_ONCE(page->compound_head);
    1d09:	48 8b 43 08          	mov    0x8(%rbx),%rax
	if (unlikely(head & 1))
    1d0d:	a8 01                	test   $0x1,%al
    1d0f:	75 53                	jne    1d64 <rfuse_readpages_end+0xc4>
    1d11:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1d16:	66 90                	xchg   %ax,%ax
    1d18:	f0 ff 4b 34          	lock decl 0x34(%rbx)
	if (folio_put_testzero(folio))
    1d1c:	0f 84 e2 00 00 00    	je     1e04 <rfuse_readpages_end+0x164>

    1d22:	41 83 c7 01          	add    $0x1,%r15d
    1d26:	45 3b 7e 10          	cmp    0x10(%r14),%r15d
    1d2a:	73 68                	jae    1d94 <rfuse_readpages_end+0xf4>
	for (i = 0; i < rp->num_pages; i++) {
    1d2c:	49 8b 16             	mov    (%r14),%rdx
    1d2f:	49 63 c7             	movslq %r15d,%rax
    1d32:	48 8b 1c c2          	mov    (%rdx,%rax,8),%rbx

    1d36:	45 85 e4             	test   %r12d,%r12d
    1d39:	74 c2                	je     1cfd <rfuse_readpages_end+0x5d>
	unsigned long head = READ_ONCE(page->compound_head);
    1d3b:	48 8b 43 08          	mov    0x8(%rbx),%rax
	if (unlikely(head & 1))
    1d3f:	a8 01                	test   $0x1,%al
    1d41:	0f 85 36 01 00 00    	jne    1e7d <rfuse_readpages_end+0x1dd>
    1d47:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
		return page;
    1d4c:	48 89 d8             	mov    %rbx,%rax
    1d4f:	f0 80 48 01 01       	lock orb $0x1,0x1(%rax)
			SetPageError(page);
    1d54:	48 89 df             	mov    %rbx,%rdi
    1d57:	e8 00 00 00 00       	call   1d5c <rfuse_readpages_end+0xbc>
	unsigned long head = READ_ONCE(page->compound_head);
    1d5c:	48 8b 43 08          	mov    0x8(%rbx),%rax
	if (unlikely(head & 1))
    1d60:	a8 01                	test   $0x1,%al
    1d62:	74 ad                	je     1d11 <rfuse_readpages_end+0x71>
		return head - 1;
    1d64:	48 8d 58 ff          	lea    -0x1(%rax),%rbx
    1d68:	eb ac                	jmp    1d16 <rfuse_readpages_end+0x76>
    1d6a:	48 8b 03             	mov    (%rbx),%rax
    1d6d:	48 c1 e8 33          	shr    $0x33,%rax
    1d71:	83 e0 07             	and    $0x7,%eax
	if (!is_zone_device_page(page))
    1d74:	83 f8 04             	cmp    $0x4,%eax
    1d77:	75 9f                	jne    1d18 <rfuse_readpages_end+0x78>
	return __put_devmap_managed_page_refs(page, refs);
    1d79:	be 01 00 00 00       	mov    $0x1,%esi
    1d7e:	48 89 df             	mov    %rbx,%rdi
    1d81:	e8 00 00 00 00       	call   1d86 <rfuse_readpages_end+0xe6>
	if (put_devmap_managed_page(&folio->page))
    1d86:	84 c0                	test   %al,%al
    1d88:	74 8e                	je     1d18 <rfuse_readpages_end+0x78>

    1d8a:	41 83 c7 01          	add    $0x1,%r15d
    1d8e:	45 3b 7e 10          	cmp    0x10(%r14),%r15d
    1d92:	72 98                	jb     1d2c <rfuse_readpages_end+0x8c>
	}
    1d94:	49 8b 7e 20          	mov    0x20(%r14),%rdi
    1d98:	48 85 ff             	test   %rdi,%rdi
    1d9b:	74 0c                	je     1da9 <rfuse_readpages_end+0x109>
	if (ria->ff)
    1d9d:	31 c9                	xor    %ecx,%ecx
    1d9f:	31 d2                	xor    %edx,%edx
    1da1:	4c 89 ee             	mov    %r13,%rsi
    1da4:	e8 c7 e8 ff ff       	call   670 <rfuse_file_put>
{
    1da9:	49 8b 3e             	mov    (%r14),%rdi
    1dac:	e8 00 00 00 00       	call   1db1 <rfuse_readpages_end+0x111>
	kfree(ria->rp.pages);
    1db1:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    1db5:	e8 00 00 00 00       	call   1dba <rfuse_readpages_end+0x11a>
	rfuse_io_free(ria);
    1dba:	48 83 c4 10          	add    $0x10,%rsp
    1dbe:	5b                   	pop    %rbx
    1dbf:	41 5c                	pop    %r12
    1dc1:	41 5d                	pop    %r13
    1dc3:	41 5e                	pop    %r14
    1dc5:	41 5f                	pop    %r15
    1dc7:	5d                   	pop    %rbp
    1dc8:	31 c0                	xor    %eax,%eax
    1dca:	31 d2                	xor    %edx,%edx
    1dcc:	31 c9                	xor    %ecx,%ecx
    1dce:	31 f6                	xor    %esi,%esi
    1dd0:	31 ff                	xor    %edi,%edi
    1dd2:	e9 00 00 00 00       	jmp    1dd7 <rfuse_readpages_end+0x137>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    1dd7:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
    1ddd:	0f 85 33 ff ff ff    	jne    1d16 <rfuse_readpages_end+0x76>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    1de3:	48 8b 03             	mov    (%rbx),%rax
    1de6:	a9 00 00 01 00       	test   $0x10000,%eax
    1deb:	0f 84 25 ff ff ff    	je     1d16 <rfuse_readpages_end+0x76>
		unsigned long head = READ_ONCE(page[1].compound_head);
    1df1:	48 8b 43 48          	mov    0x48(%rbx),%rax
			return (const struct page *)(head - 1);
    1df5:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    1df9:	a8 01                	test   $0x1,%al
    1dfb:	48 0f 45 da          	cmovne %rdx,%rbx
    1dff:	e9 12 ff ff ff       	jmp    1d16 <rfuse_readpages_end+0x76>
		__folio_put(folio);
    1e04:	48 89 df             	mov    %rbx,%rdi
    1e07:	e8 00 00 00 00       	call   1e0c <rfuse_readpages_end+0x16c>
    1e0c:	e9 11 ff ff ff       	jmp    1d22 <rfuse_readpages_end+0x82>
		return page;
    1e11:	48 89 d8             	mov    %rbx,%rax
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    1e14:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
    1e1a:	0f 85 2f ff ff ff    	jne    1d4f <rfuse_readpages_end+0xaf>
    1e20:	48 8b 13             	mov    (%rbx),%rdx
    1e23:	f7 c2 00 00 01 00    	test   $0x10000,%edx
    1e29:	0f 84 20 ff ff ff    	je     1d4f <rfuse_readpages_end+0xaf>
		unsigned long head = READ_ONCE(page[1].compound_head);
    1e2f:	48 8b 53 48          	mov    0x48(%rbx),%rdx
			return (const struct page *)(head - 1);
    1e33:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    1e37:	83 e2 01             	and    $0x1,%edx
    1e3a:	48 0f 44 c3          	cmove  %rbx,%rax
    1e3e:	e9 0c ff ff ff       	jmp    1d4f <rfuse_readpages_end+0xaf>
	size_t count = in->size;
    1e43:	41 8b 45 38          	mov    0x38(%r13),%eax
	if (mapping) {
    1e47:	48 8b 3a             	mov    (%rdx),%rdi
		 */
    1e4a:	41 3b 85 88 00 00 00 	cmp    0x88(%r13),%eax
    1e51:	73 1c                	jae    1e6f <rfuse_readpages_end+0x1cf>
    1e53:	45 85 e4             	test   %r12d,%r12d
    1e56:	75 17                	jne    1e6f <rfuse_readpages_end+0x1cf>
  return sb->s_fs_info;
    1e58:	48 8b 57 28          	mov    0x28(%rdi),%rdx
  return get_fuse_mount_super(inode->i_sb)->fc;
    1e5c:	48 8b 92 80 03 00 00 	mov    0x380(%rdx),%rdx
	 */
    1e63:	48 8b 12             	mov    (%rdx),%rdx
    1e66:	f6 82 35 01 00 00 40 	testb  $0x40,0x135(%rdx)
    1e6d:	74 17                	je     1e86 <rfuse_readpages_end+0x1e6>

    1e6f:	e8 00 00 00 00       	call   1e74 <rfuse_readpages_end+0x1d4>

    1e74:	41 8b 76 10          	mov    0x10(%r14),%esi
    1e78:	e9 74 fe ff ff       	jmp    1cf1 <rfuse_readpages_end+0x51>
		return head - 1;
    1e7d:	48 83 e8 01          	sub    $0x1,%rax
    1e81:	e9 c9 fe ff ff       	jmp    1d4f <rfuse_readpages_end+0xaf>
/*
 * Return byte-offset into filesystem object for page.
 */
static inline loff_t page_offset(struct page *page)
{
	return ((loff_t)page->index) << PAGE_SHIFT;
    1e86:	48 8b 09             	mov    (%rcx),%rcx
		loff_t pos = page_offset(rp->pages[0]) + num_read;
    1e89:	49 8b 56 c8          	mov    -0x38(%r14),%rdx
    1e8d:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
	if (!fc->writeback_cache) {
    1e91:	48 8b 71 20          	mov    0x20(%rcx),%rsi
    1e95:	48 c1 e6 0c          	shl    $0xc,%rsi
    1e99:	48 01 c6             	add    %rax,%rsi
		loff_t pos = page_offset(rp->pages[0]) + num_read;
    1e9c:	e8 0f e2 ff ff       	call   b0 <rfuse_read_update_size>
    1ea1:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    1ea5:	eb c8                	jmp    1e6f <rfuse_readpages_end+0x1cf>
    1ea7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1eae:	00 00 

0000000000001eb0 <__pfx_rfuse_flush>:
    1eb0:	90                   	nop
    1eb1:	90                   	nop
    1eb2:	90                   	nop
    1eb3:	90                   	nop
    1eb4:	90                   	nop
    1eb5:	90                   	nop
    1eb6:	90                   	nop
    1eb7:	90                   	nop
    1eb8:	90                   	nop
    1eb9:	90                   	nop
    1eba:	90                   	nop
    1ebb:	90                   	nop
    1ebc:	90                   	nop
    1ebd:	90                   	nop
    1ebe:	90                   	nop
    1ebf:	90                   	nop

0000000000001ec0 <rfuse_flush>:
{
    1ec0:	e8 00 00 00 00       	call   1ec5 <rfuse_flush+0x5>
    1ec5:	55                   	push   %rbp
    1ec6:	48 89 e5             	mov    %rsp,%rbp
    1ec9:	41 57                	push   %r15
    1ecb:	41 56                	push   %r14
    1ecd:	41 55                	push   %r13
    1ecf:	41 54                	push   %r12
    1ed1:	53                   	push   %rbx
    1ed2:	48 83 ec 08          	sub    $0x8,%rsp
	return f->f_inode;
    1ed6:	4c 8b bf a8 00 00 00 	mov    0xa8(%rdi),%r15
    1edd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
	struct fuse_file *ff = file->private_data;
    1ee1:	4c 8b af c8 00 00 00 	mov    0xc8(%rdi),%r13
  return sb->s_fs_info;
    1ee8:	49 8b 47 28          	mov    0x28(%r15),%rax
    1eec:	4c 8b b0 80 03 00 00 	mov    0x380(%rax),%r14
    1ef3:	49 8b 87 f8 02 00 00 	mov    0x2f8(%r15),%rax
	if (fuse_is_bad(inode))
    1efa:	a8 08                	test   $0x8,%al
    1efc:	0f 85 f3 00 00 00    	jne    1ff5 <rfuse_flush+0x135>
    1f02:	49 89 fc             	mov    %rdi,%r12
	err = write_inode_now(inode, 1);
    1f05:	be 01 00 00 00       	mov    $0x1,%esi
    1f0a:	4c 89 ff             	mov    %r15,%rdi
    1f0d:	e8 00 00 00 00       	call   1f12 <rfuse_flush+0x52>
    1f12:	89 c3                	mov    %eax,%ebx
	if (err)
    1f14:	85 c0                	test   %eax,%eax
    1f16:	74 1b                	je     1f33 <rfuse_flush+0x73>
}
    1f18:	48 83 c4 08          	add    $0x8,%rsp
    1f1c:	89 d8                	mov    %ebx,%eax
    1f1e:	5b                   	pop    %rbx
    1f1f:	41 5c                	pop    %r12
    1f21:	41 5d                	pop    %r13
    1f23:	41 5e                	pop    %r14
    1f25:	41 5f                	pop    %r15
    1f27:	5d                   	pop    %rbp
    1f28:	31 d2                	xor    %edx,%edx
    1f2a:	31 f6                	xor    %esi,%esi
    1f2c:	31 ff                	xor    %edi,%edi
    1f2e:	e9 00 00 00 00       	jmp    1f33 <rfuse_flush+0x73>
	down_write(&inode->i_rwsem);
    1f33:	49 8d 9f a0 00 00 00 	lea    0xa0(%r15),%rbx
    1f3a:	48 89 df             	mov    %rbx,%rdi
    1f3d:	e8 00 00 00 00       	call   1f42 <rfuse_flush+0x82>
	fuse_set_nowrite(inode);
    1f42:	4c 89 ff             	mov    %r15,%rdi
    1f45:	e8 00 00 00 00       	call   1f4a <rfuse_flush+0x8a>
	fuse_release_nowrite(inode);
    1f4a:	4c 89 ff             	mov    %r15,%rdi
    1f4d:	e8 00 00 00 00       	call   1f52 <rfuse_flush+0x92>
	up_write(&inode->i_rwsem);
    1f52:	48 89 df             	mov    %rbx,%rdi
    1f55:	e8 00 00 00 00       	call   1f5a <rfuse_flush+0x9a>
	err = filemap_check_errors(file->f_mapping);
    1f5a:	49 8b bc 24 d8 00 00 	mov    0xd8(%r12),%rdi
    1f61:	00 
    1f62:	e8 00 00 00 00       	call   1f67 <rfuse_flush+0xa7>
    1f67:	89 c3                	mov    %eax,%ebx
	if (err)
    1f69:	85 c0                	test   %eax,%eax
    1f6b:	75 ab                	jne    1f18 <rfuse_flush+0x58>
	if (fm->fc->no_flush)
    1f6d:	49 8b 06             	mov    (%r14),%rax
    1f70:	f6 80 37 01 00 00 01 	testb  $0x1,0x137(%rax)
    1f77:	74 13                	je     1f8c <rfuse_flush+0xcc>
	if (!err && fm->fc->writeback_cache)
    1f79:	f6 80 35 01 00 00 40 	testb  $0x40,0x135(%rax)
    1f80:	74 96                	je     1f18 <rfuse_flush+0x58>
		fuse_invalidate_attr(inode);
    1f82:	4c 89 ff             	mov    %r15,%rdi
    1f85:	e8 00 00 00 00       	call   1f8a <rfuse_flush+0xca>
    1f8a:	eb 8c                	jmp    1f18 <rfuse_flush+0x58>
    r_req = rfuse_get_req(fm, false, true);
    1f8c:	ba 01 00 00 00       	mov    $0x1,%edx
    1f91:	31 f6                	xor    %esi,%esi
    1f93:	4c 89 f7             	mov    %r14,%rdi
    1f96:	e8 00 00 00 00       	call   1f9b <rfuse_flush+0xdb>
	inarg->lock_owner = fuse_lock_owner_id(fm->fc, id);
    1f9b:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    r_req = rfuse_get_req(fm, false, true);
    1f9f:	49 89 c4             	mov    %rax,%r12
	inarg->fh = ff->fh;
    1fa2:	49 8b 45 18          	mov    0x18(%r13),%rax
    1fa6:	49 89 44 24 78       	mov    %rax,0x78(%r12)
	inarg->lock_owner = fuse_lock_owner_id(fm->fc, id);
    1fab:	49 8b 3e             	mov    (%r14),%rdi
    1fae:	e8 00 00 00 00       	call   1fb3 <rfuse_flush+0xf3>
	err = rfuse_simple_request(r_req);
    1fb3:	4c 89 e7             	mov    %r12,%rdi
    r_req->in.opcode = FUSE_FLUSH;
    1fb6:	41 c7 44 24 10 19 00 	movl   $0x19,0x10(%r12)
    1fbd:	00 00 
	inarg->lock_owner = fuse_lock_owner_id(fm->fc, id);
    1fbf:	49 89 84 24 88 00 00 	mov    %rax,0x88(%r12)
    1fc6:	00 
  return get_fuse_inode(inode)->nodeid;
    1fc7:	49 8b 87 78 02 00 00 	mov    0x278(%r15),%rax
    r_req->in.nodeid = get_node_id(inode);
    1fce:	49 89 44 24 08       	mov    %rax,0x8(%r12)
	err = rfuse_simple_request(r_req);
    1fd3:	e8 00 00 00 00       	call   1fd8 <rfuse_flush+0x118>
    1fd8:	49 89 c5             	mov    %rax,%r13
	if (err == -ENOSYS) {
    1fdb:	83 f8 da             	cmp    $0xffffffda,%eax
    1fde:	74 1f                	je     1fff <rfuse_flush+0x13f>
    rfuse_put_request(r_req); 
    1fe0:	4c 89 e7             	mov    %r12,%rdi
    1fe3:	e8 00 00 00 00       	call   1fe8 <rfuse_flush+0x128>
	if (!err && fm->fc->writeback_cache)
    1fe8:	45 85 ed             	test   %r13d,%r13d
    1feb:	74 2c                	je     2019 <rfuse_flush+0x159>
    1fed:	44 89 eb             	mov    %r13d,%ebx
    1ff0:	e9 23 ff ff ff       	jmp    1f18 <rfuse_flush+0x58>
		return -EIO;
    1ff5:	bb fb ff ff ff       	mov    $0xfffffffb,%ebx
    1ffa:	e9 19 ff ff ff       	jmp    1f18 <rfuse_flush+0x58>
		fm->fc->no_flush = 1;
    1fff:	49 8b 06             	mov    (%r14),%rax
    rfuse_put_request(r_req); 
    2002:	4c 89 e7             	mov    %r12,%rdi
		fm->fc->no_flush = 1;
    2005:	80 88 37 01 00 00 01 	orb    $0x1,0x137(%rax)
    rfuse_put_request(r_req); 
    200c:	e8 00 00 00 00       	call   2011 <rfuse_flush+0x151>
	if (!err && fm->fc->writeback_cache)
    2011:	49 8b 06             	mov    (%r14),%rax
    2014:	e9 60 ff ff ff       	jmp    1f79 <rfuse_flush+0xb9>
    2019:	49 8b 06             	mov    (%r14),%rax
    201c:	e9 58 ff ff ff       	jmp    1f79 <rfuse_flush+0xb9>
    2021:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2028:	00 00 00 00 
    202c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002030 <__pfx_rfuse_fsync_common>:
    2030:	90                   	nop
    2031:	90                   	nop
    2032:	90                   	nop
    2033:	90                   	nop
    2034:	90                   	nop
    2035:	90                   	nop
    2036:	90                   	nop
    2037:	90                   	nop
    2038:	90                   	nop
    2039:	90                   	nop
    203a:	90                   	nop
    203b:	90                   	nop
    203c:	90                   	nop
    203d:	90                   	nop
    203e:	90                   	nop
    203f:	90                   	nop

0000000000002040 <rfuse_fsync_common>:
{
    2040:	e8 00 00 00 00       	call   2045 <rfuse_fsync_common+0x5>
    2045:	55                   	push   %rbp
	r_req = rfuse_get_req(fm, false, false);
    2046:	31 d2                	xor    %edx,%edx
    2048:	31 f6                	xor    %esi,%esi
{
    204a:	48 89 e5             	mov    %rsp,%rbp
    204d:	41 57                	push   %r15
    204f:	41 56                	push   %r14
    2051:	41 55                	push   %r13
    2053:	41 89 cd             	mov    %ecx,%r13d
    2056:	41 54                	push   %r12
    2058:	45 89 c4             	mov    %r8d,%r12d
    205b:	53                   	push   %rbx
	struct inode *inode = file->f_mapping->host;
    205c:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
	struct fuse_file *ff = file->private_data;
    2063:	4c 8b bf c8 00 00 00 	mov    0xc8(%rdi),%r15
	struct inode *inode = file->f_mapping->host;
    206a:	4c 8b 30             	mov    (%rax),%r14
  return sb->s_fs_info;
    206d:	49 8b 46 28          	mov    0x28(%r14),%rax
	r_req = rfuse_get_req(fm, false, false);
    2071:	48 8b b8 80 03 00 00 	mov    0x380(%rax),%rdi
    2078:	e8 00 00 00 00       	call   207d <rfuse_fsync_common+0x3d>
    207d:	48 89 c3             	mov    %rax,%rbx
	inarg->fh = ff->fh;
    2080:	49 8b 47 18          	mov    0x18(%r15),%rax
	r_req->in.opcode = opcode;
    2084:	44 89 63 10          	mov    %r12d,0x10(%rbx)
	err = rfuse_simple_request(r_req);
    2088:	48 89 df             	mov    %rbx,%rdi
	inarg->fh = ff->fh;
    208b:	48 89 43 78          	mov    %rax,0x78(%rbx)
	inarg->fsync_flags = datasync ? FUSE_FSYNC_FDATASYNC : 0;
    208f:	31 c0                	xor    %eax,%eax
    2091:	45 85 ed             	test   %r13d,%r13d
    2094:	0f 95 c0             	setne  %al
    2097:	89 83 80 00 00 00    	mov    %eax,0x80(%rbx)
  return get_fuse_inode(inode)->nodeid;
    209d:	49 8b 86 78 02 00 00 	mov    0x278(%r14),%rax
	r_req->in.nodeid = get_node_id(inode);
    20a4:	48 89 43 08          	mov    %rax,0x8(%rbx)
	err = rfuse_simple_request(r_req);
    20a8:	e8 00 00 00 00       	call   20ad <rfuse_fsync_common+0x6d>
	rfuse_put_request(r_req); 
    20ad:	48 89 df             	mov    %rbx,%rdi
	err = rfuse_simple_request(r_req);
    20b0:	49 89 c4             	mov    %rax,%r12
	rfuse_put_request(r_req); 
    20b3:	e8 00 00 00 00       	call   20b8 <rfuse_fsync_common+0x78>
	err = rfuse_simple_request(r_req);
    20b8:	44 89 e0             	mov    %r12d,%eax
}
    20bb:	5b                   	pop    %rbx
    20bc:	41 5c                	pop    %r12
    20be:	41 5d                	pop    %r13
    20c0:	41 5e                	pop    %r14
    20c2:	41 5f                	pop    %r15
    20c4:	5d                   	pop    %rbp
    20c5:	31 d2                	xor    %edx,%edx
    20c7:	31 c9                	xor    %ecx,%ecx
    20c9:	31 f6                	xor    %esi,%esi
    20cb:	31 ff                	xor    %edi,%edi
    20cd:	45 31 c0             	xor    %r8d,%r8d
    20d0:	e9 00 00 00 00       	jmp    20d5 <rfuse_fsync_common+0x95>
    20d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    20dc:	00 00 00 00 

00000000000020e0 <__pfx_rfuse_fsync>:
    20e0:	90                   	nop
    20e1:	90                   	nop
    20e2:	90                   	nop
    20e3:	90                   	nop
    20e4:	90                   	nop
    20e5:	90                   	nop
    20e6:	90                   	nop
    20e7:	90                   	nop
    20e8:	90                   	nop
    20e9:	90                   	nop
    20ea:	90                   	nop
    20eb:	90                   	nop
    20ec:	90                   	nop
    20ed:	90                   	nop
    20ee:	90                   	nop
    20ef:	90                   	nop

00000000000020f0 <rfuse_fsync>:
		      int datasync){
    20f0:	e8 00 00 00 00       	call   20f5 <rfuse_fsync+0x5>
    20f5:	55                   	push   %rbp
    20f6:	48 89 e5             	mov    %rsp,%rbp
    20f9:	41 57                	push   %r15
    20fb:	41 56                	push   %r14
    20fd:	41 55                	push   %r13
    20ff:	41 54                	push   %r12
    2101:	53                   	push   %rbx
    2102:	48 83 ec 18          	sub    $0x18,%rsp
	struct inode *inode = file->f_mapping->host;
    2106:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
		      int datasync){
    210d:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    2111:	89 4d cc             	mov    %ecx,-0x34(%rbp)
	struct inode *inode = file->f_mapping->host;
    2114:	4c 8b 28             	mov    (%rax),%r13
  return sb->s_fs_info;
    2117:	49 8b 45 28          	mov    0x28(%r13),%rax
  return get_fuse_mount_super(inode->i_sb)->fc;
    211b:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax
    2122:	4c 8b 38             	mov    (%rax),%r15
    2125:	49 8b 85 f8 02 00 00 	mov    0x2f8(%r13),%rax
	if (fuse_is_bad(inode))
    212c:	a8 08                	test   $0x8,%al
    212e:	0f 85 18 01 00 00    	jne    224c <rfuse_fsync+0x15c>
	down_write(&inode->i_rwsem);
    2134:	4d 8d b5 a0 00 00 00 	lea    0xa0(%r13),%r14
    213b:	49 89 fc             	mov    %rdi,%r12
    213e:	48 89 f3             	mov    %rsi,%rbx
    2141:	4c 89 f7             	mov    %r14,%rdi
    2144:	e8 00 00 00 00       	call   2149 <rfuse_fsync+0x59>
	err = file_write_and_wait_range(file, start, end);
    2149:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    214d:	48 89 de             	mov    %rbx,%rsi
    2150:	4c 89 e7             	mov    %r12,%rdi
    2153:	e8 00 00 00 00       	call   2158 <rfuse_fsync+0x68>
    2158:	89 c3                	mov    %eax,%ebx
	if (err)
    215a:	85 c0                	test   %eax,%eax
    215c:	74 28                	je     2186 <rfuse_fsync+0x96>
	up_write(&inode->i_rwsem);
    215e:	4c 89 f7             	mov    %r14,%rdi
    2161:	e8 00 00 00 00       	call   2166 <rfuse_fsync+0x76>
}
    2166:	48 83 c4 18          	add    $0x18,%rsp
    216a:	89 d8                	mov    %ebx,%eax
    216c:	5b                   	pop    %rbx
    216d:	41 5c                	pop    %r12
    216f:	41 5d                	pop    %r13
    2171:	41 5e                	pop    %r14
    2173:	41 5f                	pop    %r15
    2175:	5d                   	pop    %rbp
    2176:	31 d2                	xor    %edx,%edx
    2178:	31 c9                	xor    %ecx,%ecx
    217a:	31 f6                	xor    %esi,%esi
    217c:	31 ff                	xor    %edi,%edi
    217e:	45 31 c0             	xor    %r8d,%r8d
    2181:	e9 00 00 00 00       	jmp    2186 <rfuse_fsync+0x96>
	fuse_set_nowrite(inode);
    2186:	4c 89 ef             	mov    %r13,%rdi
    2189:	e8 00 00 00 00       	call   218e <rfuse_fsync+0x9e>
	fuse_release_nowrite(inode);
    218e:	4c 89 ef             	mov    %r13,%rdi
    2191:	e8 00 00 00 00       	call   2196 <rfuse_fsync+0xa6>
	err = file_check_and_advance_wb_err(file);
    2196:	4c 89 e7             	mov    %r12,%rdi
    2199:	e8 00 00 00 00       	call   219e <rfuse_fsync+0xae>
    219e:	89 c3                	mov    %eax,%ebx
	if (err)
    21a0:	85 c0                	test   %eax,%eax
    21a2:	75 ba                	jne    215e <rfuse_fsync+0x6e>
	err = sync_inode_metadata(inode, 1);
    21a4:	be 01 00 00 00       	mov    $0x1,%esi
    21a9:	4c 89 ef             	mov    %r13,%rdi
    21ac:	e8 00 00 00 00       	call   21b1 <rfuse_fsync+0xc1>
    21b1:	89 c3                	mov    %eax,%ebx
	if (err)
    21b3:	85 c0                	test   %eax,%eax
    21b5:	75 a7                	jne    215e <rfuse_fsync+0x6e>
	if (fc->no_fsync)
    21b7:	41 f6 87 36 01 00 00 	testb  $0x40,0x136(%r15)
    21be:	40 
    21bf:	75 9d                	jne    215e <rfuse_fsync+0x6e>
	struct inode *inode = file->f_mapping->host;
    21c1:	49 8b 84 24 d8 00 00 	mov    0xd8(%r12),%rax
    21c8:	00 
	struct fuse_file *ff = file->private_data;
    21c9:	4d 8b 84 24 c8 00 00 	mov    0xc8(%r12),%r8
    21d0:	00 
	r_req = rfuse_get_req(fm, false, false);
    21d1:	31 d2                	xor    %edx,%edx
    21d3:	31 f6                	xor    %esi,%esi
	struct inode *inode = file->f_mapping->host;
    21d5:	48 8b 08             	mov    (%rax),%rcx
	struct fuse_file *ff = file->private_data;
    21d8:	4c 89 45 c0          	mov    %r8,-0x40(%rbp)
  return sb->s_fs_info;
    21dc:	48 8b 41 28          	mov    0x28(%rcx),%rax
    21e0:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
	r_req = rfuse_get_req(fm, false, false);
    21e4:	48 8b b8 80 03 00 00 	mov    0x380(%rax),%rdi
    21eb:	e8 00 00 00 00       	call   21f0 <rfuse_fsync+0x100>
	inarg->fh = ff->fh;
    21f0:	4c 8b 45 c0          	mov    -0x40(%rbp),%r8
	inarg->fsync_flags = datasync ? FUSE_FSYNC_FDATASYNC : 0;
    21f4:	8b 55 cc             	mov    -0x34(%rbp),%edx
	r_req = rfuse_get_req(fm, false, false);
    21f7:	49 89 c4             	mov    %rax,%r12
  return get_fuse_inode(inode)->nodeid;
    21fa:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
	inarg->fh = ff->fh;
    21fe:	49 8b 40 18          	mov    0x18(%r8),%rax
	err = rfuse_simple_request(r_req);
    2202:	4c 89 e7             	mov    %r12,%rdi
	r_req->in.opcode = opcode;
    2205:	41 c7 44 24 10 14 00 	movl   $0x14,0x10(%r12)
    220c:	00 00 
	inarg->fh = ff->fh;
    220e:	49 89 44 24 78       	mov    %rax,0x78(%r12)
	inarg->fsync_flags = datasync ? FUSE_FSYNC_FDATASYNC : 0;
    2213:	31 c0                	xor    %eax,%eax
    2215:	85 d2                	test   %edx,%edx
    2217:	0f 95 c0             	setne  %al
    221a:	41 89 84 24 80 00 00 	mov    %eax,0x80(%r12)
    2221:	00 
    2222:	48 8b 81 78 02 00 00 	mov    0x278(%rcx),%rax
	r_req->in.nodeid = get_node_id(inode);
    2229:	49 89 44 24 08       	mov    %rax,0x8(%r12)
	err = rfuse_simple_request(r_req);
    222e:	e8 00 00 00 00       	call   2233 <rfuse_fsync+0x143>
	rfuse_put_request(r_req); 
    2233:	4c 89 e7             	mov    %r12,%rdi
	err = rfuse_simple_request(r_req);
    2236:	49 89 c5             	mov    %rax,%r13
	rfuse_put_request(r_req); 
    2239:	e8 00 00 00 00       	call   223e <rfuse_fsync+0x14e>
	if (err == -ENOSYS) {
    223e:	41 83 fd da          	cmp    $0xffffffda,%r13d
    2242:	74 12                	je     2256 <rfuse_fsync+0x166>
out:
    2244:	44 89 eb             	mov    %r13d,%ebx
    2247:	e9 12 ff ff ff       	jmp    215e <rfuse_fsync+0x6e>
		return -EIO;
    224c:	bb fb ff ff ff       	mov    $0xfffffffb,%ebx
    2251:	e9 10 ff ff ff       	jmp    2166 <rfuse_fsync+0x76>
		fc->no_fsync = 1;
    2256:	41 80 8f 36 01 00 00 	orb    $0x40,0x136(%r15)
    225d:	40 
		err = 0;
    225e:	e9 fb fe ff ff       	jmp    215e <rfuse_fsync+0x6e>
    2263:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    226a:	00 00 00 00 
    226e:	66 90                	xchg   %ax,%ax

0000000000002270 <__pfx_rfuse_file_open>:
    2270:	90                   	nop
    2271:	90                   	nop
    2272:	90                   	nop
    2273:	90                   	nop
    2274:	90                   	nop
    2275:	90                   	nop
    2276:	90                   	nop
    2277:	90                   	nop
    2278:	90                   	nop
    2279:	90                   	nop
    227a:	90                   	nop
    227b:	90                   	nop
    227c:	90                   	nop
    227d:	90                   	nop
    227e:	90                   	nop
    227f:	90                   	nop

0000000000002280 <rfuse_file_open>:
{
    2280:	e8 00 00 00 00       	call   2285 <rfuse_file_open+0x5>
    2285:	55                   	push   %rbp
    2286:	48 89 e5             	mov    %rsp,%rbp
    2289:	41 57                	push   %r15
    228b:	41 56                	push   %r14
    228d:	41 55                	push   %r13
    228f:	49 89 fd             	mov    %rdi,%r13
    2292:	41 54                	push   %r12
    2294:	49 89 f4             	mov    %rsi,%r12
    2297:	53                   	push   %rbx
    2298:	89 cb                	mov    %ecx,%ebx
    229a:	48 83 ec 10          	sub    $0x10,%rsp
    229e:	89 55 d0             	mov    %edx,-0x30(%rbp)
	struct fuse_conn *fc = fm->fc;
    22a1:	4c 8b 37             	mov    (%rdi),%r14
	int opcode = isdir ? FUSE_OPENDIR : FUSE_OPEN;
    22a4:	84 c9                	test   %cl,%cl
    22a6:	74 59                	je     2301 <rfuse_file_open+0x81>
	ff = fuse_file_alloc(fm);
    22a8:	e8 00 00 00 00       	call   22ad <rfuse_file_open+0x2d>
    22ad:	49 89 c7             	mov    %rax,%r15
	if (!ff)
    22b0:	48 85 c0             	test   %rax,%rax
    22b3:	0f 84 0f 01 00 00    	je     23c8 <rfuse_file_open+0x148>
	ff->fh = 0;
    22b9:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
    22c0:	00 
	ff->open_flags = FOPEN_KEEP_CACHE | (isdir ? FOPEN_CACHE_DIR : 0);
    22c1:	c7 40 2c 0a 00 00 00 	movl   $0xa,0x2c(%rax)
	if (isdir ? !fc->no_opendir : !fc->no_open) {
    22c8:	b8 0a 00 00 00       	mov    $0xa,%eax
    22cd:	41 f6 86 36 01 00 00 	testb  $0x20,0x136(%r14)
    22d4:	20 
    22d5:	0f 84 f9 00 00 00    	je     23d4 <rfuse_file_open+0x154>
		ff->open_flags &= ~FOPEN_DIRECT_IO;
    22db:	41 89 47 2c          	mov    %eax,0x2c(%r15)
	ff->nodeid = nodeid;
    22df:	4d 89 67 20          	mov    %r12,0x20(%r15)
}
    22e3:	48 83 c4 10          	add    $0x10,%rsp
    22e7:	4c 89 f8             	mov    %r15,%rax
    22ea:	5b                   	pop    %rbx
    22eb:	41 5c                	pop    %r12
    22ed:	41 5d                	pop    %r13
    22ef:	41 5e                	pop    %r14
    22f1:	41 5f                	pop    %r15
    22f3:	5d                   	pop    %rbp
    22f4:	31 d2                	xor    %edx,%edx
    22f6:	31 c9                	xor    %ecx,%ecx
    22f8:	31 f6                	xor    %esi,%esi
    22fa:	31 ff                	xor    %edi,%edi
    22fc:	e9 00 00 00 00       	jmp    2301 <rfuse_file_open+0x81>
	ff = fuse_file_alloc(fm);
    2301:	e8 00 00 00 00       	call   2306 <rfuse_file_open+0x86>
    2306:	49 89 c7             	mov    %rax,%r15
	if (!ff)
    2309:	48 85 c0             	test   %rax,%rax
    230c:	0f 84 b6 00 00 00    	je     23c8 <rfuse_file_open+0x148>
	ff->fh = 0;
    2312:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
    2319:	00 
	ff->open_flags = FOPEN_KEEP_CACHE | (isdir ? FOPEN_CACHE_DIR : 0);
    231a:	c7 40 2c 02 00 00 00 	movl   $0x2,0x2c(%rax)
	if (isdir ? !fc->no_opendir : !fc->no_open) {
    2321:	41 f6 86 36 01 00 00 	testb  $0x10,0x136(%r14)
    2328:	10 
    2329:	75 b4                	jne    22df <rfuse_file_open+0x5f>
    232b:	c7 45 c8 0e 00 00 00 	movl   $0xe,-0x38(%rbp)
		r_req = rfuse_get_req(fm, false, false);
    2332:	31 d2                	xor    %edx,%edx
    2334:	31 f6                	xor    %esi,%esi
    2336:	4c 89 ef             	mov    %r13,%rdi
    2339:	e8 00 00 00 00       	call   233e <rfuse_file_open+0xbe>
	inarg->flags = open_flags & ~(O_CREAT | O_EXCL | O_NOCTTY);
    233e:	8b 4d d0             	mov    -0x30(%rbp),%ecx
		r_req = rfuse_get_req(fm, false, false);
    2341:	48 89 c2             	mov    %rax,%rdx
	inarg->flags = open_flags & ~(O_CREAT | O_EXCL | O_NOCTTY);
    2344:	89 c8                	mov    %ecx,%eax
    2346:	25 3f fe ff ff       	and    $0xfffffe3f,%eax
    234b:	89 42 78             	mov    %eax,0x78(%rdx)
	if (!fm->fc->atomic_o_trunc)
    234e:	49 8b 45 00          	mov    0x0(%r13),%rax
    2352:	f6 80 35 01 00 00 10 	testb  $0x10,0x135(%rax)
    2359:	75 0e                	jne    2369 <rfuse_file_open+0xe9>
		inarg->flags &= ~O_TRUNC;
    235b:	89 c8                	mov    %ecx,%eax
    235d:	25 3f fc ff ff       	and    $0xfffffc3f,%eax
    2362:	89 42 78             	mov    %eax,0x78(%rdx)
	if (fm->fc->handle_killpriv_v2 &&
    2365:	49 8b 45 00          	mov    0x0(%r13),%rax
    2369:	f6 80 36 01 00 00 08 	testb  $0x8,0x136(%rax)
    2370:	74 0a                	je     237c <rfuse_file_open+0xfc>
    2372:	f6 42 79 02          	testb  $0x2,0x79(%rdx)
    2376:	0f 85 b9 00 00 00    	jne    2435 <rfuse_file_open+0x1b5>
	r_req->in.opcode = opcode;
    237c:	8b 45 c8             	mov    -0x38(%rbp),%eax
	r_req->in.nodeid = nodeid;
    237f:	4c 89 62 08          	mov    %r12,0x8(%rdx)
	return rfuse_simple_request(r_req);
    2383:	48 89 d7             	mov    %rdx,%rdi
    2386:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
	r_req->in.opcode = opcode;
    238a:	89 42 10             	mov    %eax,0x10(%rdx)
	return rfuse_simple_request(r_req);
    238d:	e8 00 00 00 00       	call   2392 <rfuse_file_open+0x112>
		if (!err) {
    2392:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    2396:	85 c0                	test   %eax,%eax
    2398:	75 46                	jne    23e0 <rfuse_file_open+0x160>
			ff->fh = outarg->fh;
    239a:	48 8b 42 78          	mov    0x78(%rdx),%rax
		rfuse_put_request(r_req); 
    239e:	48 89 d7             	mov    %rdx,%rdi
			ff->fh = outarg->fh;
    23a1:	49 89 47 18          	mov    %rax,0x18(%r15)
			ff->open_flags = outarg->open_flags;
    23a5:	8b 82 80 00 00 00    	mov    0x80(%rdx),%eax
    23ab:	41 89 47 2c          	mov    %eax,0x2c(%r15)
		rfuse_put_request(r_req); 
    23af:	e8 00 00 00 00       	call   23b4 <rfuse_file_open+0x134>
	if (isdir)
    23b4:	84 db                	test   %bl,%bl
    23b6:	0f 84 23 ff ff ff    	je     22df <rfuse_file_open+0x5f>
		ff->open_flags &= ~FOPEN_DIRECT_IO;
    23bc:	41 8b 47 2c          	mov    0x2c(%r15),%eax
    23c0:	83 e0 fe             	and    $0xfffffffe,%eax
    23c3:	e9 13 ff ff ff       	jmp    22db <rfuse_file_open+0x5b>
		return ERR_PTR(-ENOMEM);
    23c8:	49 c7 c7 f4 ff ff ff 	mov    $0xfffffffffffffff4,%r15
    23cf:	e9 0f ff ff ff       	jmp    22e3 <rfuse_file_open+0x63>
	if (isdir ? !fc->no_opendir : !fc->no_open) {
    23d4:	c7 45 c8 1b 00 00 00 	movl   $0x1b,-0x38(%rbp)
    23db:	e9 52 ff ff ff       	jmp    2332 <rfuse_file_open+0xb2>
		} else if (err != -ENOSYS) {
    23e0:	83 f8 da             	cmp    $0xffffffda,%eax
    23e3:	75 2b                	jne    2410 <rfuse_file_open+0x190>
			if (isdir)
    23e5:	84 db                	test   %bl,%bl
    23e7:	74 12                	je     23fb <rfuse_file_open+0x17b>
				fc->no_opendir = 1;
    23e9:	41 80 8e 36 01 00 00 	orb    $0x20,0x136(%r14)
    23f0:	20 
		rfuse_put_request(r_req); 
    23f1:	48 89 d7             	mov    %rdx,%rdi
    23f4:	e8 00 00 00 00       	call   23f9 <rfuse_file_open+0x179>
    23f9:	eb c1                	jmp    23bc <rfuse_file_open+0x13c>
				fc->no_open = 1;
    23fb:	41 80 8e 36 01 00 00 	orb    $0x10,0x136(%r14)
    2402:	10 
		rfuse_put_request(r_req); 
    2403:	48 89 d7             	mov    %rdx,%rdi
    2406:	e8 00 00 00 00       	call   240b <rfuse_file_open+0x18b>
	if (isdir)
    240b:	e9 cf fe ff ff       	jmp    22df <rfuse_file_open+0x5f>
			fuse_file_free(ff);
    2410:	4c 89 ff             	mov    %r15,%rdi
    2413:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2417:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    241b:	e8 00 00 00 00       	call   2420 <rfuse_file_open+0x1a0>
			rfuse_put_request(r_req); 
    2420:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    2424:	e8 00 00 00 00       	call   2429 <rfuse_file_open+0x1a9>
			return ERR_PTR(err);
    2429:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    242d:	4c 63 f8             	movslq %eax,%r15
    2430:	e9 ae fe ff ff       	jmp    22e3 <rfuse_file_open+0x63>
	    (inarg->flags & O_TRUNC) && !capable(CAP_FSETID)) {
    2435:	bf 04 00 00 00       	mov    $0x4,%edi
    243a:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    243e:	e8 00 00 00 00       	call   2443 <rfuse_file_open+0x1c3>
    2443:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    2447:	84 c0                	test   %al,%al
    2449:	0f 85 2d ff ff ff    	jne    237c <rfuse_file_open+0xfc>
		inarg->open_flags |= FUSE_OPEN_KILL_SUIDGID;
    244f:	83 4a 7c 01          	orl    $0x1,0x7c(%rdx)
    2453:	e9 24 ff ff ff       	jmp    237c <rfuse_file_open+0xfc>
    2458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    245f:	00 

0000000000002460 <__pfx_rfuse_sync_release>:
    2460:	90                   	nop
    2461:	90                   	nop
    2462:	90                   	nop
    2463:	90                   	nop
    2464:	90                   	nop
    2465:	90                   	nop
    2466:	90                   	nop
    2467:	90                   	nop
    2468:	90                   	nop
    2469:	90                   	nop
    246a:	90                   	nop
    246b:	90                   	nop
    246c:	90                   	nop
    246d:	90                   	nop
    246e:	90                   	nop
    246f:	90                   	nop

0000000000002470 <rfuse_sync_release>:
		       unsigned int flags){
    2470:	e8 00 00 00 00       	call   2475 <rfuse_sync_release+0x5>
    2475:	55                   	push   %rbp
    2476:	48 89 e5             	mov    %rsp,%rbp
    2479:	41 56                	push   %r14
    247b:	41 89 d6             	mov    %edx,%r14d
    247e:	41 55                	push   %r13
    2480:	49 89 fd             	mov    %rdi,%r13
    2483:	41 54                	push   %r12
    2485:	53                   	push   %rbx
	return __READ_ONCE((v)->counter);
    2486:	8b 46 28             	mov    0x28(%rsi),%eax
    2489:	48 89 f3             	mov    %rsi,%rbx
	struct fuse_mount *fm = ff->fm;
    248c:	48 8b 3e             	mov    (%rsi),%rdi
	WARN_ON(refcount_read(&ff->count) > 1);
    248f:	83 f8 01             	cmp    $0x1,%eax
    2492:	77 5a                	ja     24ee <rfuse_sync_release+0x7e>
	r_req = rfuse_get_req(fm, false, true);
    2494:	ba 01 00 00 00       	mov    $0x1,%edx
    2499:	31 f6                	xor    %esi,%esi
    249b:	e8 00 00 00 00       	call   24a0 <rfuse_sync_release+0x30>
	rfuse_prepare_release(fi, ff, r_req, flags, FUSE_RELEASE);
    24a0:	44 89 f1             	mov    %r14d,%ecx
    24a3:	48 89 de             	mov    %rbx,%rsi
    24a6:	4c 89 ef             	mov    %r13,%rdi
	r_req = rfuse_get_req(fm, false, true);
    24a9:	49 89 c4             	mov    %rax,%r12
	rfuse_prepare_release(fi, ff, r_req, flags, FUSE_RELEASE);
    24ac:	48 89 c2             	mov    %rax,%rdx
    24af:	41 b8 12 00 00 00    	mov    $0x12,%r8d
    24b5:	e8 96 dc ff ff       	call   150 <rfuse_prepare_release>
	rfuse_file_put(ff, r_req, true, false);
    24ba:	4c 89 e6             	mov    %r12,%rsi
    24bd:	48 89 df             	mov    %rbx,%rdi
    24c0:	31 c9                	xor    %ecx,%ecx
    24c2:	ba 01 00 00 00       	mov    $0x1,%edx
    24c7:	e8 a4 e1 ff ff       	call   670 <rfuse_file_put>
	rfuse_put_request(r_req);
    24cc:	4c 89 e7             	mov    %r12,%rdi
    24cf:	e8 00 00 00 00       	call   24d4 <rfuse_sync_release+0x64>
}
    24d4:	5b                   	pop    %rbx
    24d5:	41 5c                	pop    %r12
    24d7:	41 5d                	pop    %r13
    24d9:	41 5e                	pop    %r14
    24db:	5d                   	pop    %rbp
    24dc:	31 c0                	xor    %eax,%eax
    24de:	31 d2                	xor    %edx,%edx
    24e0:	31 c9                	xor    %ecx,%ecx
    24e2:	31 f6                	xor    %esi,%esi
    24e4:	31 ff                	xor    %edi,%edi
    24e6:	45 31 c0             	xor    %r8d,%r8d
    24e9:	e9 00 00 00 00       	jmp    24ee <rfuse_sync_release+0x7e>
	WARN_ON(refcount_read(&ff->count) > 1);
    24ee:	0f 0b                	ud2    
    24f0:	eb a2                	jmp    2494 <rfuse_sync_release+0x24>
    24f2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    24f9:	00 00 00 00 
    24fd:	0f 1f 00             	nopl   (%rax)

0000000000002500 <__pfx_rfuse_file_release>:
    2500:	90                   	nop
    2501:	90                   	nop
    2502:	90                   	nop
    2503:	90                   	nop
    2504:	90                   	nop
    2505:	90                   	nop
    2506:	90                   	nop
    2507:	90                   	nop
    2508:	90                   	nop
    2509:	90                   	nop
    250a:	90                   	nop
    250b:	90                   	nop
    250c:	90                   	nop
    250d:	90                   	nop
    250e:	90                   	nop
    250f:	90                   	nop

0000000000002510 <rfuse_file_release>:
		       unsigned int open_flags, fl_owner_t id, bool isdir){
    2510:	e8 00 00 00 00       	call   2515 <rfuse_file_release+0x5>
    2515:	55                   	push   %rbp
    2516:	48 89 e5             	mov    %rsp,%rbp
    2519:	41 57                	push   %r15
    251b:	41 56                	push   %r14
    251d:	49 89 f6             	mov    %rsi,%r14
    2520:	41 55                	push   %r13
    2522:	41 54                	push   %r12
    2524:	53                   	push   %rbx
    2525:	44 89 c3             	mov    %r8d,%ebx
    2528:	48 83 ec 18          	sub    $0x18,%rsp
    252c:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
	struct fuse_mount *fm = ff->fm;
    2530:	48 8b 3e             	mov    (%rsi),%rdi
	int opcode = isdir ? FUSE_RELEASEDIR : FUSE_RELEASE;
    2533:	41 80 f8 01          	cmp    $0x1,%r8b
    2537:	45 19 ff             	sbb    %r15d,%r15d
		       unsigned int open_flags, fl_owner_t id, bool isdir){
    253a:	89 55 cc             	mov    %edx,-0x34(%rbp)
	struct fuse_release_args *ra = ff->release_args;
    253d:	4c 8b 6e 08          	mov    0x8(%rsi),%r13
		r_req = rfuse_get_req(fm, false, true);
    2541:	ba 01 00 00 00       	mov    $0x1,%edx
	if(ff->fm->fc->destroy)
    2546:	48 8b 07             	mov    (%rdi),%rax
	int opcode = isdir ? FUSE_RELEASEDIR : FUSE_RELEASE;
    2549:	41 83 e7 f5          	and    $0xfffffff5,%r15d
		       unsigned int open_flags, fl_owner_t id, bool isdir){
    254d:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
	int opcode = isdir ? FUSE_RELEASEDIR : FUSE_RELEASE;
    2551:	41 83 c7 1d          	add    $0x1d,%r15d
	if(ff->fm->fc->destroy)
    2555:	f6 80 3a 01 00 00 08 	testb  $0x8,0x13a(%rax)
    255c:	44 89 7d c8          	mov    %r15d,-0x38(%rbp)
    2560:	0f 84 b5 00 00 00    	je     261b <rfuse_file_release+0x10b>
		r_req = rfuse_get_req(fm, false, true);
    2566:	31 f6                	xor    %esi,%esi
    2568:	e8 00 00 00 00       	call   256d <rfuse_file_release+0x5d>
    256d:	44 8b 45 c8          	mov    -0x38(%rbp),%r8d
    2571:	49 89 c4             	mov    %rax,%r12
	rfuse_prepare_release(fi, ff, r_req, open_flags, opcode);
    2574:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2577:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    257b:	4c 89 e2             	mov    %r12,%rdx
    257e:	4c 89 f6             	mov    %r14,%rsi
    2581:	e8 ca db ff ff       	call   150 <rfuse_prepare_release>
	if (ff->flock) {
    2586:	41 f6 86 a8 00 00 00 	testb  $0x1,0xa8(%r14)
    258d:	01 
    258e:	0f 85 9d 00 00 00    	jne    2631 <rfuse_file_release+0x121>
	rfuse_inarg->inode = igrab(inode);
    2594:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    2598:	e8 00 00 00 00       	call   259d <rfuse_file_release+0x8d>
	ra->inarg.flags = open_flags;
    259d:	8b 75 cc             	mov    -0x34(%rbp),%esi
	rfuse_file_put(ff, r_req, ff->fm->fc->destroy, isdir);
    25a0:	0f b6 cb             	movzbl %bl,%ecx
    25a3:	4c 89 f7             	mov    %r14,%rdi
	rfuse_inarg->inode = igrab(inode);
    25a6:	49 89 84 24 90 00 00 	mov    %rax,0x90(%r12)
    25ad:	00 
	ra->inarg.fh = ff->fh;
    25ae:	49 8b 46 18          	mov    0x18(%r14),%rax
	ra->inarg.flags = open_flags;
    25b2:	41 89 75 78          	mov    %esi,0x78(%r13)
	rfuse_file_put(ff, r_req, ff->fm->fc->destroy, isdir);
    25b6:	4c 89 e6             	mov    %r12,%rsi
	ra->inarg.fh = ff->fh;
    25b9:	49 89 45 70          	mov    %rax,0x70(%r13)
	ra->args.opcode = opcode;
    25bd:	45 89 7d 08          	mov    %r15d,0x8(%r13)
	ra->args.nodeid = ff->nodeid;
    25c1:	49 8b 46 20          	mov    0x20(%r14),%rax
    25c5:	49 89 45 00          	mov    %rax,0x0(%r13)
	ra->inode = inode;
    25c9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    25cd:	49 89 85 88 00 00 00 	mov    %rax,0x88(%r13)
	rfuse_file_put(ff, r_req, ff->fm->fc->destroy, isdir);
    25d4:	49 8b 06             	mov    (%r14),%rax
    25d7:	48 8b 00             	mov    (%rax),%rax
    25da:	0f b6 90 3a 01 00 00 	movzbl 0x13a(%rax),%edx
    25e1:	c0 ea 03             	shr    $0x3,%dl
    25e4:	83 e2 01             	and    $0x1,%edx
    25e7:	e8 84 e0 ff ff       	call   670 <rfuse_file_put>
	if(ff->fm->fc->destroy) // Only put requests that are synchronous
    25ec:	49 8b 06             	mov    (%r14),%rax
    25ef:	48 8b 00             	mov    (%rax),%rax
    25f2:	f6 80 3a 01 00 00 08 	testb  $0x8,0x13a(%rax)
    25f9:	75 5b                	jne    2656 <rfuse_file_release+0x146>
}
    25fb:	48 83 c4 18          	add    $0x18,%rsp
    25ff:	5b                   	pop    %rbx
    2600:	41 5c                	pop    %r12
    2602:	41 5d                	pop    %r13
    2604:	41 5e                	pop    %r14
    2606:	41 5f                	pop    %r15
    2608:	5d                   	pop    %rbp
    2609:	31 c0                	xor    %eax,%eax
    260b:	31 d2                	xor    %edx,%edx
    260d:	31 c9                	xor    %ecx,%ecx
    260f:	31 f6                	xor    %esi,%esi
    2611:	31 ff                	xor    %edi,%edi
    2613:	45 31 c0             	xor    %r8d,%r8d
    2616:	e9 00 00 00 00       	jmp    261b <rfuse_file_release+0x10b>
		r_req = rfuse_get_req(fm, true, true);
    261b:	be 01 00 00 00       	mov    $0x1,%esi
    2620:	e8 00 00 00 00       	call   2625 <rfuse_file_release+0x115>
    2625:	44 8b 45 c8          	mov    -0x38(%rbp),%r8d
    2629:	49 89 c4             	mov    %rax,%r12
    262c:	e9 43 ff ff ff       	jmp    2574 <rfuse_file_release+0x64>
		rfuse_inarg->inarg.release_flags |= FUSE_RELEASE_FLOCK_UNLOCK;
    2631:	41 83 8c 24 84 00 00 	orl    $0x2,0x84(%r12)
    2638:	00 02 
		rfuse_inarg->inarg.lock_owner = fuse_lock_owner_id(ff->fm->fc, id);
    263a:	49 8b 06             	mov    (%r14),%rax
    263d:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
    2641:	48 8b 38             	mov    (%rax),%rdi
    2644:	e8 00 00 00 00       	call   2649 <rfuse_file_release+0x139>
    2649:	49 89 84 24 88 00 00 	mov    %rax,0x88(%r12)
    2650:	00 
    2651:	e9 3e ff ff ff       	jmp    2594 <rfuse_file_release+0x84>
		rfuse_put_request(r_req);
    2656:	4c 89 e7             	mov    %r12,%rdi
    2659:	e8 00 00 00 00       	call   265e <rfuse_file_release+0x14e>
}
    265e:	48 83 c4 18          	add    $0x18,%rsp
    2662:	5b                   	pop    %rbx
    2663:	41 5c                	pop    %r12
    2665:	41 5d                	pop    %r13
    2667:	41 5e                	pop    %r14
    2669:	41 5f                	pop    %r15
    266b:	5d                   	pop    %rbp
    266c:	31 c0                	xor    %eax,%eax
    266e:	31 d2                	xor    %edx,%edx
    2670:	31 c9                	xor    %ecx,%ecx
    2672:	31 f6                	xor    %esi,%esi
    2674:	31 ff                	xor    %edi,%edi
    2676:	45 31 c0             	xor    %r8d,%r8d
    2679:	e9 00 00 00 00       	jmp    267e <rfuse_file_release+0x16e>
    267e:	66 90                	xchg   %ax,%ax

0000000000002680 <__pfx_rfuse_wait_on_page_writeback>:
    2680:	90                   	nop
    2681:	90                   	nop
    2682:	90                   	nop
    2683:	90                   	nop
    2684:	90                   	nop
    2685:	90                   	nop
    2686:	90                   	nop
    2687:	90                   	nop
    2688:	90                   	nop
    2689:	90                   	nop
    268a:	90                   	nop
    268b:	90                   	nop
    268c:	90                   	nop
    268d:	90                   	nop
    268e:	90                   	nop
    268f:	90                   	nop

0000000000002690 <rfuse_wait_on_page_writeback>:
{
    2690:	e8 00 00 00 00       	call   2695 <rfuse_wait_on_page_writeback+0x5>
    2695:	55                   	push   %rbp
    2696:	48 89 e5             	mov    %rsp,%rbp
    2699:	41 54                	push   %r12
    269b:	49 89 fc             	mov    %rdi,%r12
    269e:	53                   	push   %rbx
    269f:	48 89 f3             	mov    %rsi,%rbx

DECLARE_STATIC_CALL(might_resched, __cond_resched);

static __always_inline void might_resched(void)
{
	static_call_mod(might_resched)();
    26a2:	e8 00 00 00 00       	call   26a7 <rfuse_wait_on_page_writeback+0x17>
	return rfuse_range_is_writeback(inode, index, index);
    26a7:	48 89 da             	mov    %rbx,%rdx
    26aa:	48 89 de             	mov    %rbx,%rsi
    26ad:	4c 89 e7             	mov    %r12,%rdi
    26b0:	e8 5b d9 ff ff       	call   10 <rfuse_range_is_writeback>
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
    26b5:	84 c0                	test   %al,%al
    26b7:	75 11                	jne    26ca <rfuse_wait_on_page_writeback+0x3a>
}
    26b9:	5b                   	pop    %rbx
    26ba:	41 5c                	pop    %r12
    26bc:	5d                   	pop    %rbp
    26bd:	31 c0                	xor    %eax,%eax
    26bf:	31 d2                	xor    %edx,%edx
    26c1:	31 f6                	xor    %esi,%esi
    26c3:	31 ff                	xor    %edi,%edi
    26c5:	e9 00 00 00 00       	jmp    26ca <rfuse_wait_on_page_writeback+0x3a>
    26ca:	48 89 de             	mov    %rbx,%rsi
    26cd:	4c 89 e7             	mov    %r12,%rdi
    26d0:	e8 db dd ff ff       	call   4b0 <rfuse_wait_on_page_writeback.part.0>
    26d5:	5b                   	pop    %rbx
    26d6:	41 5c                	pop    %r12
    26d8:	5d                   	pop    %rbp
    26d9:	31 c0                	xor    %eax,%eax
    26db:	31 d2                	xor    %edx,%edx
    26dd:	31 f6                	xor    %esi,%esi
    26df:	31 ff                	xor    %edi,%edi
    26e1:	e9 00 00 00 00       	jmp    26e6 <rfuse_wait_on_page_writeback+0x56>
    26e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    26ed:	00 00 00 

00000000000026f0 <__pfx_rfuse_direct_IO>:
    26f0:	90                   	nop
    26f1:	90                   	nop
    26f2:	90                   	nop
    26f3:	90                   	nop
    26f4:	90                   	nop
    26f5:	90                   	nop
    26f6:	90                   	nop
    26f7:	90                   	nop
    26f8:	90                   	nop
    26f9:	90                   	nop
    26fa:	90                   	nop
    26fb:	90                   	nop
    26fc:	90                   	nop
    26fd:	90                   	nop
    26fe:	90                   	nop
    26ff:	90                   	nop

0000000000002700 <rfuse_direct_IO>:
{
    2700:	e8 00 00 00 00       	call   2705 <rfuse_direct_IO+0x5>
    2705:	55                   	push   %rbp
    2706:	48 89 e5             	mov    %rsp,%rbp
    2709:	41 57                	push   %r15
    270b:	41 56                	push   %r14
    270d:	49 89 fe             	mov    %rdi,%r14
    2710:	41 55                	push   %r13
    2712:	41 54                	push   %r12
    2714:	49 89 f4             	mov    %rsi,%r12
    2717:	53                   	push   %rbx
    2718:	48 83 ec 58          	sub    $0x58,%rsp
	struct file *file = iocb->ki_filp;
    271c:	48 8b 1f             	mov    (%rdi),%rbx
	loff_t offset = iocb->ki_pos;
    271f:	4c 8b 7f 08          	mov    0x8(%rdi),%r15
{
    2723:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    272a:	00 00 
    272c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2730:	31 c0                	xor    %eax,%eax
	DECLARE_COMPLETION_ONSTACK(wait);
    2732:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
	return i->data_source ? WRITE : READ;
    2736:	44 0f b6 6e 03       	movzbl 0x3(%rsi),%r13d
	return i->count;
    273b:	48 8b 4e 18          	mov    0x18(%rsi),%rcx
    273f:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
	struct fuse_file *ff = file->private_data;
    2743:	4c 8b 9b c8 00 00 00 	mov    0xc8(%rbx),%r11
	DECLARE_COMPLETION_ONSTACK(wait);
    274a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	inode = file->f_mapping->host;
    274e:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
	DECLARE_COMPLETION_ONSTACK(wait);
    2755:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    275c:	00 
    275d:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    2764:	00 
	inode = file->f_mapping->host;
    2765:	48 8b 00             	mov    (%rax),%rax
	pos = offset;
    2768:	4c 89 7d a8          	mov    %r15,-0x58(%rbp)
	inode = file->f_mapping->host;
    276c:	48 89 45 88          	mov    %rax,-0x78(%rbp)
	return inode->i_size;
    2770:	48 8b 40 50          	mov    0x50(%rax),%rax
    2774:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
	return i->data_source ? WRITE : READ;
    2778:	41 80 fd 01          	cmp    $0x1,%r13b
    277c:	0f 87 00 00 00 00    	ja     2782 <rfuse_direct_IO+0x82>
	if ((iov_iter_rw(iter) == READ) && (offset >= i_size))
    2782:	41 83 e5 01          	and    $0x1,%r13d
    2786:	75 0d                	jne    2795 <rfuse_direct_IO+0x95>
    2788:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    278c:	49 39 c7             	cmp    %rax,%r15
    278f:	0f 8d 95 02 00 00    	jge    2a2a <rfuse_direct_IO+0x32a>
		return kmalloc_trace(
    2795:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 279c <rfuse_direct_IO+0x9c>
    279c:	ba 48 00 00 00       	mov    $0x48,%edx
    27a1:	be c0 0c 00 00       	mov    $0xcc0,%esi
    27a6:	4c 89 5d 90          	mov    %r11,-0x70(%rbp)
    27aa:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
    27ae:	e8 00 00 00 00       	call   27b3 <rfuse_direct_IO+0xb3>
    27b3:	49 89 c5             	mov    %rax,%r13
	if (!io)
    27b6:	48 85 c0             	test   %rax,%rax
    27b9:	0f 84 83 03 00 00    	je     2b42 <rfuse_direct_IO+0x442>
    27bf:	41 0f b6 54 24 03    	movzbl 0x3(%r12),%edx
	spin_lock_init(&io->lock);
    27c5:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
	__WRITE_ONCE(v->counter, i);
    27cc:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    27d2:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
    27d6:	80 fa 01             	cmp    $0x1,%dl
	io->offset = offset;
    27d9:	4c 89 78 20          	mov    %r15,0x20(%rax)
    27dd:	4c 8b 5d 90          	mov    -0x70(%rbp),%r11
	io->reqs = 1;
    27e1:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%rax)
	io->bytes = -1;
    27e8:	48 c7 40 10 ff ff ff 	movq   $0xffffffffffffffff,0x10(%rax)
    27ef:	ff 
	io->size = 0;
    27f0:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
    27f7:	00 
    27f8:	0f 87 00 00 00 00    	ja     27fe <rfuse_direct_IO+0xfe>
	io->write = (iov_iter_rw(iter) == WRITE);
    27fe:	83 e2 01             	and    $0x1,%edx
	io->err = 0;
    2801:	41 c7 45 2c 00 00 00 	movl   $0x0,0x2c(%r13)
    2808:	00 
	if (io->async && !io->write && offset + count > i_size) {
    2809:	49 8d 34 0f          	lea    (%r15,%rcx,1),%rsi
	io->write = (iov_iter_rw(iter) == WRITE);
    280d:	41 88 55 28          	mov    %dl,0x28(%r13)
	io->async = ff->fm->fc->async_dio;
    2811:	49 8b 03             	mov    (%r11),%rax
	if (io->async && !io->write && offset + count > i_size) {
    2814:	48 89 75 98          	mov    %rsi,-0x68(%rbp)
	io->async = ff->fm->fc->async_dio;
    2818:	48 8b 00             	mov    (%rax),%rax
    281b:	0f b6 80 39 01 00 00 	movzbl 0x139(%rax),%eax
	io->iocb = iocb;
    2822:	4d 89 75 30          	mov    %r14,0x30(%r13)
	io->async = ff->fm->fc->async_dio;
    2826:	c0 e8 05             	shr    $0x5,%al
    2829:	83 e0 01             	and    $0x1,%eax
	return kiocb->ki_complete == NULL;
    282c:	49 83 7e 10 00       	cmpq   $0x0,0x10(%r14)
	io->blocking = is_sync_kiocb(iocb);
    2831:	41 0f 94 45 40       	sete   0x40(%r13)
	size_t count = iov_iter_count(iter), shortened = 0;
    2836:	45 31 d2             	xor    %r10d,%r10d
	io->async = ff->fm->fc->async_dio;
    2839:	41 89 45 04          	mov    %eax,0x4(%r13)
	if (io->async && !io->write && offset + count > i_size) {
    283d:	85 c0                	test   %eax,%eax
    283f:	0f 85 84 01 00 00    	jne    29c9 <rfuse_direct_IO+0x2c9>
	if ((offset + count > i_size) && io->write)
    2845:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
    2849:	48 39 4d a0          	cmp    %rcx,-0x60(%rbp)
    284d:	73 3a                	jae    2889 <rfuse_direct_IO+0x189>
    284f:	45 0f b6 7d 28       	movzbl 0x28(%r13),%r15d
    2854:	41 80 ff 01          	cmp    $0x1,%r15b
    2858:	0f 87 00 00 00 00    	ja     285e <rfuse_direct_IO+0x15e>
    285e:	41 83 e7 01          	and    $0x1,%r15d
    2862:	0f 85 32 02 00 00    	jne    2a9a <rfuse_direct_IO+0x39a>
	if (io->async && io->blocking) {
    2868:	41 8b 55 04          	mov    0x4(%r13),%edx
    286c:	85 d2                	test   %edx,%edx
    286e:	74 19                	je     2889 <rfuse_direct_IO+0x189>
    2870:	45 0f b6 7d 40       	movzbl 0x40(%r13),%r15d
    2875:	41 80 ff 01          	cmp    $0x1,%r15b
    2879:	0f 87 00 00 00 00    	ja     287f <rfuse_direct_IO+0x17f>
    287f:	41 83 e7 01          	and    $0x1,%r15d
    2883:	0f 85 39 02 00 00    	jne    2ac2 <rfuse_direct_IO+0x3c2>
    2889:	45 0f b6 7c 24 03    	movzbl 0x3(%r12),%r15d
    288f:	41 80 ff 01          	cmp    $0x1,%r15b
    2893:	0f 87 00 00 00 00    	ja     2899 <rfuse_direct_IO+0x199>
	if (iov_iter_rw(iter) == WRITE) {
    2899:	41 83 e7 01          	and    $0x1,%r15d
    289d:	4c 89 55 90          	mov    %r10,-0x70(%rbp)
    28a1:	0f 85 bd 01 00 00    	jne    2a64 <rfuse_direct_IO+0x364>
	struct inode *inode = file_inode(io->iocb->ki_filp);
    28a7:	49 8b 45 30          	mov    0x30(%r13),%rax
	res = rfuse_direct_io(io, iter, ppos, 0);
    28ab:	31 c9                	xor    %ecx,%ecx
    28ad:	48 8d 55 a8          	lea    -0x58(%rbp),%rdx
    28b1:	4c 89 e6             	mov    %r12,%rsi
    28b4:	4c 89 ef             	mov    %r13,%rdi
	return f->f_inode;
    28b7:	48 8b 00             	mov    (%rax),%rax
    28ba:	4c 8b b8 a8 00 00 00 	mov    0xa8(%rax),%r15
    28c1:	e8 00 00 00 00       	call   28c6 <rfuse_direct_IO+0x1c6>
	fuse_invalidate_atime(inode);
    28c6:	4c 89 ff             	mov    %r15,%rdi
	res = rfuse_direct_io(io, iter, ppos, 0);
    28c9:	49 89 c6             	mov    %rax,%r14
	fuse_invalidate_atime(inode);
    28cc:	e8 00 00 00 00       	call   28d1 <rfuse_direct_IO+0x1d1>
    28d1:	4c 8b 55 90          	mov    -0x70(%rbp),%r10
	if (io->async) {
    28d5:	41 8b 45 04          	mov    0x4(%r13),%eax
	iov_iter_reexpand(iter, iov_iter_count(iter) + shortened);
    28d9:	4d 01 54 24 18       	add    %r10,0x18(%r12)
	if (io->async) {
    28de:	85 c0                	test   %eax,%eax
    28e0:	0f 84 8e 00 00 00    	je     2974 <rfuse_direct_IO+0x274>
		bool blocking = io->blocking;
    28e6:	45 0f b6 7d 40       	movzbl 0x40(%r13),%r15d
    28eb:	41 80 ff 01          	cmp    $0x1,%r15b
    28ef:	0f 87 00 00 00 00    	ja     28f5 <rfuse_direct_IO+0x1f5>
		rfuse_aio_complete(io, ret < 0 ? ret : 0, -1);
    28f5:	31 f6                	xor    %esi,%esi
    28f7:	4d 85 f6             	test   %r14,%r14
    28fa:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2901:	4c 89 ef             	mov    %r13,%rdi
    2904:	49 0f 4e f6          	cmovle %r14,%rsi
    2908:	e8 b3 e3 ff ff       	call   cc0 <rfuse_aio_complete>
		if (!blocking)
    290d:	41 83 e7 01          	and    $0x1,%r15d
    2911:	0f 84 0e 02 00 00    	je     2b25 <rfuse_direct_IO+0x425>
		printk("direct_IO: wait is started\n");
    2917:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    291e:	e8 00 00 00 00       	call   2923 <rfuse_direct_IO+0x223>
		wait_for_completion(&wait);
    2923:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
    2927:	e8 00 00 00 00       	call   292c <rfuse_direct_IO+0x22c>
		printk("direct_IO: wait is ended\n");
    292c:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    2933:	e8 00 00 00 00       	call   2938 <rfuse_direct_IO+0x238>
	if (io->err)
    2938:	41 8b 4d 2c          	mov    0x2c(%r13),%ecx
		return io->err;
    293c:	4c 63 f1             	movslq %ecx,%r14
	if (io->err)
    293f:	85 c9                	test   %ecx,%ecx
    2941:	75 31                	jne    2974 <rfuse_direct_IO+0x274>
	if (io->bytes >= 0 && io->write)
    2943:	49 83 7d 10 00       	cmpq   $0x0,0x10(%r13)
    2948:	0f 88 56 01 00 00    	js     2aa4 <rfuse_direct_IO+0x3a4>
    294e:	45 0f b6 7d 28       	movzbl 0x28(%r13),%r15d
    2953:	41 80 ff 01          	cmp    $0x1,%r15b
    2957:	0f 87 00 00 00 00    	ja     295d <rfuse_direct_IO+0x25d>
    295d:	41 83 e7 01          	and    $0x1,%r15d
    2961:	0f 85 ca 01 00 00    	jne    2b31 <rfuse_direct_IO+0x431>
	return io->bytes < 0 ? io->size : io->bytes;
    2967:	4d 8b 75 10          	mov    0x10(%r13),%r14
    296b:	4d 85 f6             	test   %r14,%r14
    296e:	0f 88 30 01 00 00    	js     2aa4 <rfuse_direct_IO+0x3a4>
	return xadd(&v->counter, -i);
    2974:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2979:	f0 41 0f c1 45 00    	lock xadd %eax,0x0(%r13)
	if (old == i) {
    297f:	83 f8 01             	cmp    $0x1,%eax
    2982:	0f 84 05 01 00 00    	je     2a8d <rfuse_direct_IO+0x38d>
	if (unlikely(old < 0 || old - i < 0))
    2988:	85 c0                	test   %eax,%eax
    298a:	0f 8e 55 01 00 00    	jle    2ae5 <rfuse_direct_IO+0x3e5>
    2990:	45 0f b6 7c 24 03    	movzbl 0x3(%r12),%r15d
    2996:	41 80 ff 01          	cmp    $0x1,%r15b
    299a:	0f 87 00 00 00 00    	ja     29a0 <rfuse_direct_IO+0x2a0>
	if (iov_iter_rw(iter) == WRITE) {
    29a0:	41 83 e7 01          	and    $0x1,%r15d
    29a4:	0f 84 83 00 00 00    	je     2a2d <rfuse_direct_IO+0x32d>
		if (ret > 0)
    29aa:	4d 85 f6             	test   %r14,%r14
    29ad:	0f 8f fa 00 00 00    	jg     2aad <rfuse_direct_IO+0x3ad>
		else if (ret < 0 && offset + count > i_size)
    29b3:	74 75                	je     2a2a <rfuse_direct_IO+0x32a>
    29b5:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
    29b9:	48 39 4d a0          	cmp    %rcx,-0x60(%rbp)
    29bd:	73 6e                	jae    2a2d <rfuse_direct_IO+0x32d>
			rfuse_do_truncate(file);
    29bf:	48 89 df             	mov    %rbx,%rdi
    29c2:	e8 b9 d8 ff ff       	call   280 <rfuse_do_truncate>
    29c7:	eb 64                	jmp    2a2d <rfuse_direct_IO+0x32d>
	if (io->async && !io->write && offset + count > i_size) {
    29c9:	84 d2                	test   %dl,%dl
    29cb:	75 4a                	jne    2a17 <rfuse_direct_IO+0x317>
    29cd:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    29d1:	48 39 f2             	cmp    %rsi,%rdx
    29d4:	0f 83 8e fe ff ff    	jae    2868 <rfuse_direct_IO+0x168>
		iov_iter_truncate(iter, rfuse_round_up(ff->fm->fc, i_size - offset));
    29da:	49 8b 03             	mov    (%r11),%rax
	return round_up(off, fc->max_pages << PAGE_SHIFT);
    29dd:	4c 29 fa             	sub    %r15,%rdx
    29e0:	48 83 ea 01          	sub    $0x1,%rdx
    29e4:	48 8b 00             	mov    (%rax),%rax
    29e7:	8b 40 40             	mov    0x40(%rax),%eax
    29ea:	c1 e0 0c             	shl    $0xc,%eax
    29ed:	83 e8 01             	sub    $0x1,%eax
    29f0:	48 09 d0             	or     %rdx,%rax
	 * count doesn't have to fit in size_t - comparison extends both
	 * operands to u64 here and any value that would be truncated by
	 * conversion in assignement is by definition greater than all
	 * values of size_t, including old i->count.
	 */
	if (i->count > count)
    29f3:	49 8b 54 24 18       	mov    0x18(%r12),%rdx
    29f8:	48 83 c0 01          	add    $0x1,%rax
    29fc:	48 39 d0             	cmp    %rdx,%rax
    29ff:	73 08                	jae    2a09 <rfuse_direct_IO+0x309>
		i->count = count;
    2a01:	49 89 44 24 18       	mov    %rax,0x18(%r12)
    2a06:	48 89 c2             	mov    %rax,%rdx
		shortened = count - iov_iter_count(iter);
    2a09:	49 8d 04 17          	lea    (%r15,%rdx,1),%rax
    2a0d:	48 29 d1             	sub    %rdx,%rcx
    2a10:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    2a14:	49 89 ca             	mov    %rcx,%r10
	if ((offset + count > i_size) && io->write)
    2a17:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
    2a1b:	48 39 4d a0          	cmp    %rcx,-0x60(%rbp)
    2a1f:	0f 82 2a fe ff ff    	jb     284f <rfuse_direct_IO+0x14f>
    2a25:	e9 3e fe ff ff       	jmp    2868 <rfuse_direct_IO+0x168>
		return 0;
    2a2a:	45 31 f6             	xor    %r14d,%r14d
}
    2a2d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2a31:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    2a38:	00 00 
    2a3a:	0f 85 fd 00 00 00    	jne    2b3d <rfuse_direct_IO+0x43d>
    2a40:	48 83 c4 58          	add    $0x58,%rsp
    2a44:	4c 89 f0             	mov    %r14,%rax
    2a47:	5b                   	pop    %rbx
    2a48:	41 5c                	pop    %r12
    2a4a:	41 5d                	pop    %r13
    2a4c:	41 5e                	pop    %r14
    2a4e:	41 5f                	pop    %r15
    2a50:	5d                   	pop    %rbp
    2a51:	31 d2                	xor    %edx,%edx
    2a53:	31 c9                	xor    %ecx,%ecx
    2a55:	31 f6                	xor    %esi,%esi
    2a57:	31 ff                	xor    %edi,%edi
    2a59:	45 31 d2             	xor    %r10d,%r10d
    2a5c:	45 31 db             	xor    %r11d,%r11d
    2a5f:	e9 00 00 00 00       	jmp    2a64 <rfuse_direct_IO+0x364>
		ret = rfuse_direct_io(io, iter, &pos, FUSE_DIO_WRITE);
    2a64:	b9 01 00 00 00       	mov    $0x1,%ecx
    2a69:	48 8d 55 a8          	lea    -0x58(%rbp),%rdx
    2a6d:	4c 89 e6             	mov    %r12,%rsi
    2a70:	4c 89 ef             	mov    %r13,%rdi
    2a73:	e8 00 00 00 00       	call   2a78 <rfuse_direct_IO+0x378>
		fuse_invalidate_attr(inode);
    2a78:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
		ret = rfuse_direct_io(io, iter, &pos, FUSE_DIO_WRITE);
    2a7c:	49 89 c6             	mov    %rax,%r14
		fuse_invalidate_attr(inode);
    2a7f:	e8 00 00 00 00       	call   2a84 <rfuse_direct_IO+0x384>
    2a84:	4c 8b 55 90          	mov    -0x70(%rbp),%r10
    2a88:	e9 48 fe ff ff       	jmp    28d5 <rfuse_direct_IO+0x1d5>
	kfree(container_of(kref, struct fuse_io_priv, refcnt));
    2a8d:	4c 89 ef             	mov    %r13,%rdi
    2a90:	e8 00 00 00 00       	call   2a95 <rfuse_direct_IO+0x395>
}
    2a95:	e9 f6 fe ff ff       	jmp    2990 <rfuse_direct_IO+0x290>
		io->blocking = true;
    2a9a:	41 c6 45 40 01       	movb   $0x1,0x40(%r13)
    2a9f:	e9 c4 fd ff ff       	jmp    2868 <rfuse_direct_IO+0x168>
	return io->bytes < 0 ? io->size : io->bytes;
    2aa4:	4d 8b 75 18          	mov    0x18(%r13),%r14
    2aa8:	e9 c7 fe ff ff       	jmp    2974 <rfuse_direct_IO+0x274>
			fuse_write_update_attr(inode, pos, ret);
    2aad:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
    2ab1:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
    2ab5:	4c 89 f2             	mov    %r14,%rdx
    2ab8:	e8 00 00 00 00       	call   2abd <rfuse_direct_IO+0x3bd>
    2abd:	e9 6b ff ff ff       	jmp    2a2d <rfuse_direct_IO+0x32d>
	return xadd(&v->counter, i);
    2ac2:	b8 01 00 00 00       	mov    $0x1,%eax
    2ac7:	f0 41 0f c1 45 00    	lock xadd %eax,0x0(%r13)
	if (unlikely(!old))
    2acd:	85 c0                	test   %eax,%eax
    2acf:	74 3d                	je     2b0e <rfuse_direct_IO+0x40e>
	else if (unlikely(old < 0 || old + i < 0))
    2ad1:	8d 50 01             	lea    0x1(%rax),%edx
    2ad4:	09 c2                	or     %eax,%edx
    2ad6:	78 1f                	js     2af7 <rfuse_direct_IO+0x3f7>
		io->done = &wait;
    2ad8:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    2adc:	49 89 45 38          	mov    %rax,0x38(%r13)
    2ae0:	e9 a4 fd ff ff       	jmp    2889 <rfuse_direct_IO+0x189>
		refcount_warn_saturate(r, REFCOUNT_SUB_UAF);
    2ae5:	be 03 00 00 00       	mov    $0x3,%esi
    2aea:	4c 89 ef             	mov    %r13,%rdi
    2aed:	e8 00 00 00 00       	call   2af2 <rfuse_direct_IO+0x3f2>
    2af2:	e9 99 fe ff ff       	jmp    2990 <rfuse_direct_IO+0x290>
		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
    2af7:	be 01 00 00 00       	mov    $0x1,%esi
    2afc:	4c 89 ef             	mov    %r13,%rdi
    2aff:	4c 89 55 90          	mov    %r10,-0x70(%rbp)
    2b03:	e8 00 00 00 00       	call   2b08 <rfuse_direct_IO+0x408>
    2b08:	4c 8b 55 90          	mov    -0x70(%rbp),%r10
    2b0c:	eb ca                	jmp    2ad8 <rfuse_direct_IO+0x3d8>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
    2b0e:	be 02 00 00 00       	mov    $0x2,%esi
    2b13:	4c 89 ef             	mov    %r13,%rdi
    2b16:	4c 89 55 90          	mov    %r10,-0x70(%rbp)
    2b1a:	e8 00 00 00 00       	call   2b1f <rfuse_direct_IO+0x41f>
    2b1f:	4c 8b 55 90          	mov    -0x70(%rbp),%r10
    2b23:	eb b3                	jmp    2ad8 <rfuse_direct_IO+0x3d8>
			return -EIOCBQUEUED;
    2b25:	49 c7 c6 ef fd ff ff 	mov    $0xfffffffffffffdef,%r14
    2b2c:	e9 fc fe ff ff       	jmp    2a2d <rfuse_direct_IO+0x32d>
		return -EIO;
    2b31:	49 c7 c6 fb ff ff ff 	mov    $0xfffffffffffffffb,%r14
    2b38:	e9 37 fe ff ff       	jmp    2974 <rfuse_direct_IO+0x274>
}
    2b3d:	e8 00 00 00 00       	call   2b42 <rfuse_direct_IO+0x442>
		return -ENOMEM;
    2b42:	49 c7 c6 f4 ff ff ff 	mov    $0xfffffffffffffff4,%r14
    2b49:	e9 df fe ff ff       	jmp    2a2d <rfuse_direct_IO+0x32d>
    2b4e:	66 90                	xchg   %ax,%ax

0000000000002b50 <__pfx_rfuse_direct_write_iter>:
    2b50:	90                   	nop
    2b51:	90                   	nop
    2b52:	90                   	nop
    2b53:	90                   	nop
    2b54:	90                   	nop
    2b55:	90                   	nop
    2b56:	90                   	nop
    2b57:	90                   	nop
    2b58:	90                   	nop
    2b59:	90                   	nop
    2b5a:	90                   	nop
    2b5b:	90                   	nop
    2b5c:	90                   	nop
    2b5d:	90                   	nop
    2b5e:	90                   	nop
    2b5f:	90                   	nop

0000000000002b60 <rfuse_direct_write_iter>:
{
    2b60:	e8 00 00 00 00       	call   2b65 <rfuse_direct_write_iter+0x5>
    2b65:	55                   	push   %rbp
	struct fuse_io_priv io = FUSE_IO_PRIV_SYNC(iocb);
    2b66:	b9 08 00 00 00       	mov    $0x8,%ecx
{
    2b6b:	48 89 e5             	mov    %rsp,%rbp
    2b6e:	41 57                	push   %r15
    2b70:	41 56                	push   %r14
    2b72:	41 55                	push   %r13
    2b74:	49 89 f5             	mov    %rsi,%r13
    2b77:	41 54                	push   %r12
    2b79:	53                   	push   %rbx
    2b7a:	48 89 fb             	mov    %rdi,%rbx
    2b7d:	48 83 ec 50          	sub    $0x50,%rsp
    2b81:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    2b88:	00 00 
    2b8a:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2b8e:	48 8b 07             	mov    (%rdi),%rax
	struct fuse_io_priv io = FUSE_IO_PRIV_SYNC(iocb);
    2b91:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
    2b95:	4c 8b b0 a8 00 00 00 	mov    0xa8(%rax),%r14
    2b9c:	31 c0                	xor    %eax,%eax
    2b9e:	48 c7 45 8c 00 00 00 	movq   $0x0,-0x74(%rbp)
    2ba5:	00 
    2ba6:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2bad:	00 
    2bae:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	down_write(&inode->i_rwsem);
    2bb1:	4d 8d be a0 00 00 00 	lea    0xa0(%r14),%r15
    2bb8:	c7 45 88 01 00 00 00 	movl   $0x1,-0x78(%rbp)
    2bbf:	4c 89 ff             	mov    %r15,%rdi
    2bc2:	48 89 5d b8          	mov    %rbx,-0x48(%rbp)
    2bc6:	e8 00 00 00 00       	call   2bcb <rfuse_direct_write_iter+0x6b>
	res = generic_write_checks(iocb, from);
    2bcb:	4c 89 ee             	mov    %r13,%rsi
    2bce:	48 89 df             	mov    %rbx,%rdi
    2bd1:	e8 00 00 00 00       	call   2bd6 <rfuse_direct_write_iter+0x76>
	if (res > 0) {
    2bd6:	48 85 c0             	test   %rax,%rax
    2bd9:	7e 76                	jle    2c51 <rfuse_direct_write_iter+0xf1>
		if (!is_sync_kiocb(iocb) && iocb->ki_flags & IOCB_DIRECT) {
    2bdb:	48 83 7b 10 00       	cmpq   $0x0,0x10(%rbx)
    2be0:	74 06                	je     2be8 <rfuse_direct_write_iter+0x88>
    2be2:	f6 43 22 02          	testb  $0x2,0x22(%rbx)
    2be6:	75 76                	jne    2c5e <rfuse_direct_write_iter+0xfe>
			res = rfuse_direct_io(&io, from, &iocb->ki_pos,
    2be8:	48 8d 53 08          	lea    0x8(%rbx),%rdx
    2bec:	b9 01 00 00 00       	mov    $0x1,%ecx
    2bf1:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    2bf5:	4c 89 ee             	mov    %r13,%rsi
    2bf8:	e8 00 00 00 00       	call   2bfd <rfuse_direct_write_iter+0x9d>
    2bfd:	49 89 c4             	mov    %rax,%r12
	fuse_invalidate_attr(inode);
    2c00:	4c 89 f7             	mov    %r14,%rdi
    2c03:	e8 00 00 00 00       	call   2c08 <rfuse_direct_write_iter+0xa8>
	if (res > 0)
    2c08:	4d 85 e4             	test   %r12,%r12
    2c0b:	7e 0f                	jle    2c1c <rfuse_direct_write_iter+0xbc>
		fuse_write_update_attr(inode, iocb->ki_pos, res);
    2c0d:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    2c11:	4c 89 e2             	mov    %r12,%rdx
    2c14:	4c 89 f7             	mov    %r14,%rdi
    2c17:	e8 00 00 00 00       	call   2c1c <rfuse_direct_write_iter+0xbc>
	up_write(&inode->i_rwsem);
    2c1c:	4c 89 ff             	mov    %r15,%rdi
    2c1f:	e8 00 00 00 00       	call   2c24 <rfuse_direct_write_iter+0xc4>
}
    2c24:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2c28:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    2c2f:	00 00 
    2c31:	75 3b                	jne    2c6e <rfuse_direct_write_iter+0x10e>
    2c33:	48 83 c4 50          	add    $0x50,%rsp
    2c37:	4c 89 e0             	mov    %r12,%rax
    2c3a:	5b                   	pop    %rbx
    2c3b:	41 5c                	pop    %r12
    2c3d:	41 5d                	pop    %r13
    2c3f:	41 5e                	pop    %r14
    2c41:	41 5f                	pop    %r15
    2c43:	5d                   	pop    %rbp
    2c44:	31 d2                	xor    %edx,%edx
    2c46:	31 c9                	xor    %ecx,%ecx
    2c48:	31 f6                	xor    %esi,%esi
    2c4a:	31 ff                	xor    %edi,%edi
    2c4c:	e9 00 00 00 00       	jmp    2c51 <rfuse_direct_write_iter+0xf1>
	fuse_invalidate_attr(inode);
    2c51:	4c 89 f7             	mov    %r14,%rdi
    2c54:	49 89 c4             	mov    %rax,%r12
    2c57:	e8 00 00 00 00       	call   2c5c <rfuse_direct_write_iter+0xfc>
	if (res > 0)
    2c5c:	eb be                	jmp    2c1c <rfuse_direct_write_iter+0xbc>
			res = rfuse_direct_IO(iocb, from);
    2c5e:	4c 89 ee             	mov    %r13,%rsi
    2c61:	48 89 df             	mov    %rbx,%rdi
    2c64:	e8 00 00 00 00       	call   2c69 <rfuse_direct_write_iter+0x109>
    2c69:	49 89 c4             	mov    %rax,%r12
    2c6c:	eb 92                	jmp    2c00 <rfuse_direct_write_iter+0xa0>
}
    2c6e:	e8 00 00 00 00       	call   2c73 <rfuse_direct_write_iter+0x113>
    2c73:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2c7a:	00 00 00 00 
    2c7e:	66 90                	xchg   %ax,%ax

0000000000002c80 <__pfx_rfuse_direct_read_iter>:
    2c80:	90                   	nop
    2c81:	90                   	nop
    2c82:	90                   	nop
    2c83:	90                   	nop
    2c84:	90                   	nop
    2c85:	90                   	nop
    2c86:	90                   	nop
    2c87:	90                   	nop
    2c88:	90                   	nop
    2c89:	90                   	nop
    2c8a:	90                   	nop
    2c8b:	90                   	nop
    2c8c:	90                   	nop
    2c8d:	90                   	nop
    2c8e:	90                   	nop
    2c8f:	90                   	nop

0000000000002c90 <rfuse_direct_read_iter>:
{
    2c90:	e8 00 00 00 00       	call   2c95 <rfuse_direct_read_iter+0x5>
    2c95:	55                   	push   %rbp
    2c96:	48 89 fa             	mov    %rdi,%rdx
    2c99:	48 89 e5             	mov    %rsp,%rbp
    2c9c:	41 54                	push   %r12
    2c9e:	53                   	push   %rbx
    2c9f:	48 83 ec 50          	sub    $0x50,%rsp
    2ca3:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    2caa:	00 00 
    2cac:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2cb0:	31 c0                	xor    %eax,%eax
	if (!is_sync_kiocb(iocb) && iocb->ki_flags & IOCB_DIRECT) {
    2cb2:	48 83 7f 10 00       	cmpq   $0x0,0x10(%rdi)
    2cb7:	74 06                	je     2cbf <rfuse_direct_read_iter+0x2f>
    2cb9:	f6 47 22 02          	testb  $0x2,0x22(%rdi)
    2cbd:	75 73                	jne    2d32 <rfuse_direct_read_iter+0xa2>
		struct fuse_io_priv io = FUSE_IO_PRIV_SYNC(iocb);
    2cbf:	31 c0                	xor    %eax,%eax
    2cc1:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
    2cc5:	b9 08 00 00 00       	mov    $0x8,%ecx
    2cca:	48 c7 45 a4 00 00 00 	movq   $0x0,-0x5c(%rbp)
    2cd1:	00 
    2cd2:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    2cd9:	00 
    2cda:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2cdd:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
	res = rfuse_direct_io(io, iter, ppos, 0);
    2ce1:	48 8d 7d a0          	lea    -0x60(%rbp),%rdi
		res = __rfuse_direct_read(&io, to, &iocb->ki_pos);
    2ce5:	48 83 c2 08          	add    $0x8,%rdx
		struct fuse_io_priv io = FUSE_IO_PRIV_SYNC(iocb);
    2ce9:	c7 45 a0 01 00 00 00 	movl   $0x1,-0x60(%rbp)
	return f->f_inode;
    2cf0:	48 8b 42 f8          	mov    -0x8(%rdx),%rax
    2cf4:	4c 8b a0 a8 00 00 00 	mov    0xa8(%rax),%r12
	res = rfuse_direct_io(io, iter, ppos, 0);
    2cfb:	e8 00 00 00 00       	call   2d00 <rfuse_direct_read_iter+0x70>
	fuse_invalidate_atime(inode);
    2d00:	4c 89 e7             	mov    %r12,%rdi
	res = rfuse_direct_io(io, iter, ppos, 0);
    2d03:	48 89 c3             	mov    %rax,%rbx
	fuse_invalidate_atime(inode);
    2d06:	e8 00 00 00 00       	call   2d0b <rfuse_direct_read_iter+0x7b>
}
    2d0b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2d0f:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    2d16:	00 00 
    2d18:	75 22                	jne    2d3c <rfuse_direct_read_iter+0xac>
    2d1a:	48 83 c4 50          	add    $0x50,%rsp
    2d1e:	48 89 d8             	mov    %rbx,%rax
    2d21:	5b                   	pop    %rbx
    2d22:	41 5c                	pop    %r12
    2d24:	5d                   	pop    %rbp
    2d25:	31 d2                	xor    %edx,%edx
    2d27:	31 c9                	xor    %ecx,%ecx
    2d29:	31 f6                	xor    %esi,%esi
    2d2b:	31 ff                	xor    %edi,%edi
    2d2d:	e9 00 00 00 00       	jmp    2d32 <rfuse_direct_read_iter+0xa2>
		res = rfuse_direct_IO(iocb, to);
    2d32:	e8 00 00 00 00       	call   2d37 <rfuse_direct_read_iter+0xa7>
    2d37:	48 89 c3             	mov    %rax,%rbx
    2d3a:	eb cf                	jmp    2d0b <rfuse_direct_read_iter+0x7b>
}
    2d3c:	e8 00 00 00 00       	call   2d41 <rfuse_direct_read_iter+0xb1>
    2d41:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2d48:	00 00 00 00 
    2d4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002d50 <__pfx_rfuse_perform_write>:
    2d50:	90                   	nop
    2d51:	90                   	nop
    2d52:	90                   	nop
    2d53:	90                   	nop
    2d54:	90                   	nop
    2d55:	90                   	nop
    2d56:	90                   	nop
    2d57:	90                   	nop
    2d58:	90                   	nop
    2d59:	90                   	nop
    2d5a:	90                   	nop
    2d5b:	90                   	nop
    2d5c:	90                   	nop
    2d5d:	90                   	nop
    2d5e:	90                   	nop
    2d5f:	90                   	nop

0000000000002d60 <rfuse_perform_write>:
ssize_t rfuse_perform_write(struct kiocb *iocb, struct address_space *mapping, struct iov_iter *ii, loff_t pos){
    2d60:	e8 00 00 00 00       	call   2d65 <rfuse_perform_write+0x5>
    2d65:	55                   	push   %rbp
    2d66:	48 89 e5             	mov    %rsp,%rbp
    2d69:	41 57                	push   %r15
    2d6b:	41 56                	push   %r14
    2d6d:	49 89 f6             	mov    %rsi,%r14
    2d70:	41 55                	push   %r13
    2d72:	49 89 d5             	mov    %rdx,%r13
    2d75:	41 54                	push   %r12
    2d77:	53                   	push   %rbx
    2d78:	48 89 cb             	mov    %rcx,%rbx
    2d7b:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
	struct inode *inode = mapping->host;
    2d82:	48 8b 0e             	mov    (%rsi),%rcx
	return i->count;
    2d85:	48 8b 52 18          	mov    0x18(%rdx),%rdx
ssize_t rfuse_perform_write(struct kiocb *iocb, struct address_space *mapping, struct iov_iter *ii, loff_t pos){
    2d89:	48 89 bd 20 ff ff ff 	mov    %rdi,-0xe0(%rbp)
    2d90:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    2d97:	00 00 
    2d99:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2d9d:	31 c0                	xor    %eax,%eax
  return sb->s_fs_info;
    2d9f:	48 8b 41 28          	mov    0x28(%rcx),%rax
	struct inode *inode = mapping->host;
    2da3:	48 89 8d 18 ff ff ff 	mov    %rcx,-0xe8(%rbp)
    2daa:	4c 8b 88 80 03 00 00 	mov    0x380(%rax),%r9
  return get_fuse_mount_super(inode->i_sb)->fc;
    2db1:	49 8b 01             	mov    (%r9),%rax
    2db4:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
	if (inode->i_size < pos + iov_iter_count(ii))
    2dbb:	48 8d 04 13          	lea    (%rbx,%rdx,1),%rax
    2dbf:	48 39 41 50          	cmp    %rax,0x50(%rcx)
    2dc3:	73 0c                	jae    2dd1 <rfuse_perform_write+0x71>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    2dc5:	f0 80 89 f8 02 00 00 	lock orb $0x4,0x2f8(%rcx)
    2dcc:	04 
    2dcd:	49 8b 55 18          	mov    0x18(%r13),%rdx
ssize_t rfuse_perform_write(struct kiocb *iocb, struct address_space *mapping, struct iov_iter *ii, loff_t pos){
    2dd1:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
    2dd8:	00 00 00 00 
		size_t bytes = min_t(size_t, PAGE_SIZE - offset,
    2ddc:	49 89 df             	mov    %rbx,%r15
    2ddf:	4c 89 8d 28 ff ff ff 	mov    %r9,-0xd8(%rbp)
		struct rfuse_io_args ria = {};
    2de6:	31 c0                	xor    %eax,%eax
    2de8:	b9 0c 00 00 00       	mov    $0xc,%ecx
	return min_t(unsigned int,
    2ded:	4a 8d 54 3a ff       	lea    -0x1(%rdx,%r15,1),%rdx
	return __kmalloc(size, flags);
    2df2:	be c0 0d 00 00       	mov    $0xdc0,%esi
		struct rfuse_io_args ria = {};
    2df7:	48 8d bd 70 ff ff ff 	lea    -0x90(%rbp),%rdi
	return min_t(unsigned int,
    2dfe:	48 c1 ea 0c          	shr    $0xc,%rdx
		struct rfuse_io_args ria = {};
    2e02:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	return min_t(unsigned int,
    2e05:	4c 89 f9             	mov    %r15,%rcx
    2e08:	b8 01 00 00 00       	mov    $0x1,%eax
    2e0d:	48 c1 f9 0c          	sar    $0xc,%rcx
    2e11:	29 c8                	sub    %ecx,%eax
    2e13:	48 8b 8d 30 ff ff ff 	mov    -0xd0(%rbp),%rcx
    2e1a:	01 d0                	add    %edx,%eax
    2e1c:	8b 51 40             	mov    0x40(%rcx),%edx
    2e1f:	39 d0                	cmp    %edx,%eax
    2e21:	0f 46 d0             	cmovbe %eax,%edx
  pages = kzalloc(
    2e24:	89 d3                	mov    %edx,%ebx
    2e26:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
    2e2c:	48 89 df             	mov    %rbx,%rdi
    2e2f:	48 c1 e7 04          	shl    $0x4,%rdi
    2e33:	e8 00 00 00 00       	call   2e38 <rfuse_perform_write+0xd8>
  *desc = (void *)(pages + npages);
    2e38:	48 8d 14 d8          	lea    (%rax,%rbx,8),%rdx

    2e3c:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    2e40:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
		rp->pages = fuse_pages_alloc(nr_pages, GFP_KERNEL, &rp->descs);
    2e44:	48 85 c0             	test   %rax,%rax
    2e47:	0f 84 82 08 00 00    	je     36cf <rfuse_perform_write+0x96f>

    2e4d:	48 8b bd 28 ff ff ff 	mov    -0xd8(%rbp),%rdi
    2e54:	31 d2                	xor    %edx,%edx
    2e56:	31 f6                	xor    %esi,%esi
    2e58:	e8 00 00 00 00       	call   2e5d <rfuse_perform_write+0xfd>
	unsigned offset = pos & (PAGE_SIZE - 1);
    2e5d:	44 89 f9             	mov    %r15d,%ecx
    2e60:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx

    2e66:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
	unsigned offset = pos & (PAGE_SIZE - 1);
    2e6d:	89 8d 68 ff ff ff    	mov    %ecx,-0x98(%rbp)
   		r_req = rfuse_get_req(fm, false, false); 
    2e73:	48 85 c0             	test   %rax,%rax
    2e76:	0f 84 87 07 00 00    	je     3603 <rfuse_perform_write+0x8a3>
			printk("cccwhynoreq");
    2e7c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  return get_fuse_mount_super(inode->i_sb)->fc;
    2e80:	49 8b 06             	mov    (%r14),%rax
  return sb->s_fs_info;
    2e83:	48 8b 40 28          	mov    0x28(%rax),%rax
  return get_fuse_mount_super(inode->i_sb)->fc;
    2e87:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax
    2e8e:	48 8b 00             	mov    (%rax),%rax
    2e91:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
	printk("cccrfuse_fill_write_pagesherewrong");
    2e98:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    2e9f:	e8 00 00 00 00       	call   2ea4 <rfuse_perform_write+0x144>
	ria->r_req->in_pages = true;
    2ea4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
	rp->descs[0].offset = offset;
    2ea8:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
		bytes = min_t(size_t, bytes, fc->max_write - count);
    2eae:	4c 89 bd 50 ff ff ff 	mov    %r15,-0xb0(%rbp)
	size_t count = 0;
    2eb5:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    2ebc:	00 00 00 00 
	ria->r_req->in_pages = true;
    2ec0:	80 88 e8 00 00 00 08 	orb    $0x8,0xe8(%rax)
	rp->descs[0].offset = offset;
    2ec7:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2ecb:	4c 89 bd 48 ff ff ff 	mov    %r15,-0xb8(%rbp)
    2ed2:	89 48 04             	mov    %ecx,0x4(%rax)
    2ed5:	48 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%rcx
    2edc:	49 8b 45 18          	mov    0x18(%r13),%rax
    2ee0:	8b 49 3c             	mov    0x3c(%rcx),%ecx
		bytes = min_t(size_t, bytes, fc->max_write - count);
    2ee3:	48 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%rbx
		size_t bytes = min_t(size_t, PAGE_SIZE - offset,
    2eea:	8b b5 68 ff ff ff    	mov    -0x98(%rbp),%esi
    2ef0:	ba 00 10 00 00       	mov    $0x1000,%edx
		pgoff_t index = pos >> PAGE_SHIFT;
    2ef5:	4c 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%r15
		bytes = min_t(size_t, bytes, fc->max_write - count);
    2efc:	48 29 d9             	sub    %rbx,%rcx
		size_t bytes = min_t(size_t, PAGE_SIZE - offset,
    2eff:	48 29 f2             	sub    %rsi,%rdx
		pgoff_t index = pos >> PAGE_SHIFT;
    2f02:	49 c1 ff 0c          	sar    $0xc,%r15
		bytes = min_t(size_t, bytes, fc->max_write - count);
    2f06:	48 39 ca             	cmp    %rcx,%rdx
    2f09:	48 0f 46 ca          	cmovbe %rdx,%rcx
    2f0d:	48 39 c1             	cmp    %rax,%rcx
    2f10:	48 0f 46 c1          	cmovbe %rcx,%rax
    2f14:	48 89 c3             	mov    %rax,%rbx
		if (fault_in_iov_iter_readable(ii, bytes))
    2f17:	48 89 de             	mov    %rbx,%rsi
    2f1a:	4c 89 ef             	mov    %r13,%rdi
    2f1d:	e8 00 00 00 00       	call   2f22 <rfuse_perform_write+0x1c2>
    2f22:	48 85 c0             	test   %rax,%rax
    2f25:	75 77                	jne    2f9e <rfuse_perform_write+0x23e>
		page = grab_cache_page_write_begin(mapping, index);
    2f27:	4c 89 fe             	mov    %r15,%rsi
    2f2a:	4c 89 f7             	mov    %r14,%rdi
    2f2d:	e8 00 00 00 00       	call   2f32 <rfuse_perform_write+0x1d2>
    2f32:	49 89 c4             	mov    %rax,%r12
		if (!page)
    2f35:	48 85 c0             	test   %rax,%rax
    2f38:	0f 84 03 03 00 00    	je     3241 <rfuse_perform_write+0x4e1>
		tmp = copy_page_from_iter_atomic(page, offset, bytes, ii);
    2f3e:	8b b5 68 ff ff ff    	mov    -0x98(%rbp),%esi
    2f44:	4c 89 e9             	mov    %r13,%rcx
    2f47:	48 89 da             	mov    %rbx,%rdx
    2f4a:	4c 89 e7             	mov    %r12,%rdi
	return __READ_ONCE((v)->counter);
    2f4d:	41 8b 46 44          	mov    0x44(%r14),%eax
    2f51:	e8 00 00 00 00       	call   2f56 <rfuse_perform_write+0x1f6>
		if (!tmp) {
    2f56:	48 85 c0             	test   %rax,%rax
    2f59:	0f 85 f3 02 00 00    	jne    3252 <rfuse_perform_write+0x4f2>
			unlock_page(page);
    2f5f:	4c 89 e7             	mov    %r12,%rdi
    2f62:	e8 00 00 00 00       	call   2f67 <rfuse_perform_write+0x207>
	unsigned long head = READ_ONCE(page->compound_head);
    2f67:	49 8b 44 24 08       	mov    0x8(%r12),%rax
	if (unlikely(head & 1))
    2f6c:	a8 01                	test   $0x1,%al
    2f6e:	0f 85 c4 02 00 00    	jne    3238 <rfuse_perform_write+0x4d8>
    2f74:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2f79:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	return GEN_UNARY_RMWcc(LOCK_PREFIX "decl", v->counter, e);
    2f7e:	f0 41 ff 4c 24 34    	lock decl 0x34(%r12)
	if (folio_put_testzero(folio))
    2f84:	75 91                	jne    2f17 <rfuse_perform_write+0x1b7>
		__folio_put(folio);
    2f86:	4c 89 e7             	mov    %r12,%rdi
    2f89:	e8 00 00 00 00       	call   2f8e <rfuse_perform_write+0x22e>
		if (fault_in_iov_iter_readable(ii, bytes))
    2f8e:	48 89 de             	mov    %rbx,%rsi
    2f91:	4c 89 ef             	mov    %r13,%rdi
    2f94:	e8 00 00 00 00       	call   2f99 <rfuse_perform_write+0x239>
    2f99:	48 85 c0             	test   %rax,%rax
    2f9c:	74 89                	je     2f27 <rfuse_perform_write+0x1c7>
		err = -EFAULT;
    2f9e:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
    2fa5:	b9 f2 ff ff ff       	mov    $0xfffffff2,%ecx
	return count > 0 ? count : err;
    2faa:	48 83 bd 60 ff ff ff 	cmpq   $0x0,-0xa0(%rbp)
    2fb1:	00 
    2fb2:	0f 84 22 06 00 00    	je     35da <rfuse_perform_write+0x87a>
	struct fuse_file *ff = file->private_data;
    2fb8:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
	for (i = 0; i < rp->num_pages; i++)
    2fbf:	8b 75 b8             	mov    -0x48(%rbp),%esi
	struct fuse_file *ff = file->private_data;
    2fc2:	48 8b 00             	mov    (%rax),%rax
    2fc5:	48 8b 88 c8 00 00 00 	mov    0xc8(%rax),%rcx
	ria->r_req->in_pages = true;
    2fcc:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
	struct fuse_mount *fm = ff->fm;
    2fd0:	48 8b 11             	mov    (%rcx),%rdx
	ria->r_req->in_pages = true;
    2fd3:	80 88 e8 00 00 00 08 	orb    $0x8,0xe8(%rax)
	for (i = 0; i < rp->num_pages; i++)
    2fda:	85 f6                	test   %esi,%esi
    2fdc:	0f 84 82 00 00 00    	je     3064 <rfuse_perform_write+0x304>
    2fe2:	45 31 e4             	xor    %r12d,%r12d
    2fe5:	4c 89 ad 50 ff ff ff 	mov    %r13,-0xb0(%rbp)
    2fec:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    2ff3:	45 89 e5             	mov    %r12d,%r13d
    2ff6:	4c 8b a5 18 ff ff ff 	mov    -0xe8(%rbp),%r12
    2ffd:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
    3004:	eb 0a                	jmp    3010 <rfuse_perform_write+0x2b0>
    3006:	41 83 c5 01          	add    $0x1,%r13d
    300a:	44 3b 6d b8          	cmp    -0x48(%rbp),%r13d
    300e:	73 3b                	jae    304b <rfuse_perform_write+0x2eb>
		rfuse_wait_on_page_writeback(inode, rp->pages[i]->index);
    3010:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    3014:	44 89 e8             	mov    %r13d,%eax
    3017:	48 8b 04 c2          	mov    (%rdx,%rax,8),%rax
    301b:	48 8b 58 20          	mov    0x20(%rax),%rbx
    301f:	e8 00 00 00 00       	call   3024 <rfuse_perform_write+0x2c4>
	return rfuse_range_is_writeback(inode, index, index);
    3024:	4c 89 e7             	mov    %r12,%rdi
    3027:	48 89 da             	mov    %rbx,%rdx
    302a:	48 89 de             	mov    %rbx,%rsi
    302d:	e8 de cf ff ff       	call   10 <rfuse_range_is_writeback>
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
    3032:	84 c0                	test   %al,%al
    3034:	74 d0                	je     3006 <rfuse_perform_write+0x2a6>
    3036:	48 89 de             	mov    %rbx,%rsi
    3039:	4c 89 e7             	mov    %r12,%rdi
	for (i = 0; i < rp->num_pages; i++)
    303c:	41 83 c5 01          	add    $0x1,%r13d
    3040:	e8 6b d4 ff ff       	call   4b0 <rfuse_wait_on_page_writeback.part.0>
    3045:	44 3b 6d b8          	cmp    -0x48(%rbp),%r13d
    3049:	72 c5                	jb     3010 <rfuse_perform_write+0x2b0>
	struct rfuse_req *r_req = ria->r_req;
    304b:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
    3052:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    3059:	4c 8b ad 50 ff ff ff 	mov    -0xb0(%rbp),%r13
    3060:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
	in->fh = ff->fh;
    3064:	48 8b 71 18          	mov    0x18(%rcx),%rsi
	in->size = count;
    3068:	48 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%rbx
	r_req->in.opcode = FUSE_WRITE;
    306f:	c7 40 10 10 00 00 00 	movl   $0x10,0x10(%rax)
	in->offset = pos;
    3076:	4c 89 b8 80 00 00 00 	mov    %r15,0x80(%rax)
	in->fh = ff->fh;
    307d:	48 89 70 78          	mov    %rsi,0x78(%rax)
	in->size = count;
    3081:	89 98 88 00 00 00    	mov    %ebx,0x88(%rax)
	r_req->in.nodeid = ff->nodeid;
    3087:	48 8b 49 20          	mov    0x20(%rcx),%rcx
	r_req->in.arglen[0] = count;
    308b:	89 58 28             	mov    %ebx,0x28(%rax)
	r_req->in.nodeid = ff->nodeid;
    308e:	48 89 48 08          	mov    %rcx,0x8(%rax)
	r_req->rp = rp;
    3092:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
	in = (struct fuse_write_in *)&ria->r_req->args;
    3096:	4c 8b 65 a0          	mov    -0x60(%rbp),%r12
	r_req->rp = rp;
    309a:	48 89 88 f0 00 00 00 	mov    %rcx,0xf0(%rax)
    30a1:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
	ria->write.in.size = count;
    30a8:	89 5d 80             	mov    %ebx,-0x80(%rbp)
	ria->write.in.offset = pos;
    30ab:	8b 48 20             	mov    0x20(%rax),%ecx
	unsigned int flags = iocb->ki_filp->f_flags;
    30ae:	48 8b 00             	mov    (%rax),%rax
	ria->write.in.offset = pos;
    30b1:	4c 89 bd 78 ff ff ff 	mov    %r15,-0x88(%rbp)
	unsigned int flags = iocb->ki_filp->f_flags;
    30b8:	8b 40 48             	mov    0x48(%rax),%eax
		flags |= O_DSYNC;
    30bb:	89 c6                	mov    %eax,%esi
    30bd:	81 ce 00 10 00 00    	or     $0x1000,%esi
    30c3:	f6 c1 02             	test   $0x2,%cl
    30c6:	0f 45 c6             	cmovne %esi,%eax
		flags |= O_SYNC;
    30c9:	89 c6                	mov    %eax,%esi
    30cb:	81 ce 00 10 10 00    	or     $0x101000,%esi
    30d1:	83 e1 04             	and    $0x4,%ecx
    30d4:	0f 45 c6             	cmovne %esi,%eax
	in->flags = rfuse_write_flags(iocb);
    30d7:	41 89 84 24 98 00 00 	mov    %eax,0x98(%r12)
    30de:	00 
	if (fm->fc->handle_killpriv_v2 && !capable(CAP_FSETID))
    30df:	48 8b 02             	mov    (%rdx),%rax
    30e2:	f6 80 36 01 00 00 08 	testb  $0x8,0x136(%rax)
    30e9:	0f 85 84 05 00 00    	jne    3673 <rfuse_perform_write+0x913>
	err = rfuse_simple_request(ria->r_req);
    30ef:	4c 89 e7             	mov    %r12,%rdi
    30f2:	e8 00 00 00 00       	call   30f7 <rfuse_perform_write+0x397>
	out = (struct fuse_write_out *)&ria->r_req->args;
    30f7:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
	err = rfuse_simple_request(ria->r_req);
    30fb:	89 c1                	mov    %eax,%ecx
	if (!err && out->size > count)
    30fd:	8b 72 78             	mov    0x78(%rdx),%esi
    3100:	85 c0                	test   %eax,%eax
    3102:	0f 84 70 04 00 00    	je     3578 <rfuse_perform_write+0x818>
	offset = rp->descs[0].offset;
    3108:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    310c:	44 8b 40 04          	mov    0x4(%rax),%r8d
	for (i = 0; i < rp->num_pages; i++) {
    3110:	8b 45 b8             	mov    -0x48(%rbp),%eax
    3113:	85 c0                	test   %eax,%eax
    3115:	0f 84 bf 04 00 00    	je     35da <rfuse_perform_write+0x87a>
    311b:	31 d2                	xor    %edx,%edx
    311d:	4c 89 b5 68 ff ff ff 	mov    %r14,-0x98(%rbp)
    3124:	48 89 f3             	mov    %rsi,%rbx
    3127:	49 89 f4             	mov    %rsi,%r12
    312a:	4c 89 ad 58 ff ff ff 	mov    %r13,-0xa8(%rbp)
    3131:	45 89 c6             	mov    %r8d,%r14d
    3134:	41 89 d5             	mov    %edx,%r13d
    3137:	4c 89 bd 50 ff ff ff 	mov    %r15,-0xb0(%rbp)
    313e:	41 89 cf             	mov    %ecx,%r15d
    3141:	eb 59                	jmp    319c <rfuse_perform_write+0x43c>
				count -= PAGE_SIZE - offset;
    3143:	4a 8d 9c 03 00 f0 ff 	lea    -0x1000(%rbx,%r8,1),%rbx
    314a:	ff 
			offset = 0;
    314b:	45 31 f6             	xor    %r14d,%r14d
		if (ria->write.page_locked && (i == rp->num_pages - 1))
    314e:	0f b6 45 98          	movzbl -0x68(%rbp),%eax
    3152:	3c 01                	cmp    $0x1,%al
    3154:	0f 87 00 00 00 00    	ja     315a <rfuse_perform_write+0x3fa>
    315a:	a8 01                	test   $0x1,%al
    315c:	74 0f                	je     316d <rfuse_perform_write+0x40d>
    315e:	8b 45 b8             	mov    -0x48(%rbp),%eax
    3161:	83 e8 01             	sub    $0x1,%eax
    3164:	41 39 c5             	cmp    %eax,%r13d
    3167:	0f 84 e0 03 00 00    	je     354d <rfuse_perform_write+0x7ed>
	unsigned long head = READ_ONCE(page->compound_head);
    316d:	49 8b 42 08          	mov    0x8(%r10),%rax
	if (unlikely(head & 1))
    3171:	a8 01                	test   $0x1,%al
    3173:	0f 85 f6 03 00 00    	jne    356f <rfuse_perform_write+0x80f>
    3179:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    317e:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3183:	f0 41 ff 4a 34       	lock decl 0x34(%r10)
	if (folio_put_testzero(folio))
    3188:	0f 84 6d 03 00 00    	je     34fb <rfuse_perform_write+0x79b>
	for (i = 0; i < rp->num_pages; i++) {
    318e:	41 83 c5 01          	add    $0x1,%r13d
    3192:	44 3b 6d b8          	cmp    -0x48(%rbp),%r13d
    3196:	0f 83 89 02 00 00    	jae    3425 <rfuse_perform_write+0x6c5>
		struct page *page = rp->pages[i];
    319c:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
    31a0:	44 89 e8             	mov    %r13d,%eax
    31a3:	4c 8b 14 c6          	mov    (%rsi,%rax,8),%r10
		if (err) {
    31a7:	45 85 ff             	test   %r15d,%r15d
    31aa:	0f 85 31 03 00 00    	jne    34e1 <rfuse_perform_write+0x781>
			if (count >= PAGE_SIZE - offset)
    31b0:	45 89 f0             	mov    %r14d,%r8d
    31b3:	b8 00 10 00 00       	mov    $0x1000,%eax
    31b8:	4c 29 c0             	sub    %r8,%rax
    31bb:	48 39 c3             	cmp    %rax,%rbx
    31be:	73 83                	jae    3143 <rfuse_perform_write+0x3e3>
				if (short_write)
    31c0:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    31c7:	49 39 c4             	cmp    %rax,%r12
    31ca:	0f 82 60 03 00 00    	jb     3530 <rfuse_perform_write+0x7d0>
			offset = 0;
    31d0:	45 31 f6             	xor    %r14d,%r14d
				count = 0;
    31d3:	31 db                	xor    %ebx,%ebx
    31d5:	e9 74 ff ff ff       	jmp    314e <rfuse_perform_write+0x3ee>
    31da:	49 8b 04 24          	mov    (%r12),%rax
    31de:	48 c1 e8 33          	shr    $0x33,%rax
    31e2:	83 e0 07             	and    $0x7,%eax
	if (!is_zone_device_page(page))
    31e5:	83 f8 04             	cmp    $0x4,%eax
    31e8:	0f 85 90 fd ff ff    	jne    2f7e <rfuse_perform_write+0x21e>
	return __put_devmap_managed_page_refs(page, refs);
    31ee:	be 01 00 00 00       	mov    $0x1,%esi
    31f3:	4c 89 e7             	mov    %r12,%rdi
    31f6:	e8 00 00 00 00       	call   31fb <rfuse_perform_write+0x49b>
	if (put_devmap_managed_page(&folio->page))
    31fb:	84 c0                	test   %al,%al
    31fd:	0f 85 14 fd ff ff    	jne    2f17 <rfuse_perform_write+0x1b7>
    3203:	e9 76 fd ff ff       	jmp    2f7e <rfuse_perform_write+0x21e>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    3208:	41 f7 c4 ff 0f 00 00 	test   $0xfff,%r12d
    320f:	0f 85 64 fd ff ff    	jne    2f79 <rfuse_perform_write+0x219>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    3215:	49 8b 04 24          	mov    (%r12),%rax
    3219:	a9 00 00 01 00       	test   $0x10000,%eax
    321e:	0f 84 55 fd ff ff    	je     2f79 <rfuse_perform_write+0x219>
		unsigned long head = READ_ONCE(page[1].compound_head);
    3224:	49 8b 44 24 48       	mov    0x48(%r12),%rax
			return (const struct page *)(head - 1);
    3229:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    322d:	a8 01                	test   $0x1,%al
    322f:	4c 0f 45 e2          	cmovne %rdx,%r12
    3233:	e9 41 fd ff ff       	jmp    2f79 <rfuse_perform_write+0x219>
		return head - 1;
    3238:	4c 8d 60 ff          	lea    -0x1(%rax),%r12
    323c:	e9 38 fd ff ff       	jmp    2f79 <rfuse_perform_write+0x219>
		err = -ENOMEM;
    3241:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
    3248:	b9 f4 ff ff ff       	mov    $0xfffffff4,%ecx
    324d:	e9 58 fd ff ff       	jmp    2faa <rfuse_perform_write+0x24a>
		rp->pages[rp->num_pages] = page;
    3252:	8b 4d b8             	mov    -0x48(%rbp),%ecx
    3255:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
		offset += tmp;
    3259:	8b 9d 68 ff ff ff    	mov    -0x98(%rbp),%ebx
		count += tmp;
    325f:	48 01 85 60 ff ff ff 	add    %rax,-0xa0(%rbp)
		rp->pages[rp->num_pages] = page;
    3266:	4c 89 24 ca          	mov    %r12,(%rdx,%rcx,8)
		rp->descs[rp->num_pages].length = tmp;
    326a:	8b 4d b8             	mov    -0x48(%rbp),%ecx
    326d:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
		offset += tmp;
    3271:	01 c3                	add    %eax,%ebx
		pos += tmp;
    3273:	48 01 85 50 ff ff ff 	add    %rax,-0xb0(%rbp)
		rp->descs[rp->num_pages].length = tmp;
    327a:	89 04 ca             	mov    %eax,(%rdx,%rcx,8)
			offset = 0;
    327d:	31 d2                	xor    %edx,%edx
		rp->num_pages++;
    327f:	83 45 b8 01          	addl   $0x1,-0x48(%rbp)
			offset = 0;
    3283:	81 fb 00 10 00 00    	cmp    $0x1000,%ebx
    3289:	0f 44 da             	cmove  %edx,%ebx
		if (tmp == PAGE_SIZE)
    328c:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
    3292:	75 06                	jne    329a <rfuse_perform_write+0x53a>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    3294:	f0 41 80 0c 24 04    	lock orb $0x4,(%r12)
	unsigned long head = READ_ONCE(page->compound_head);
    329a:	49 8b 44 24 08       	mov    0x8(%r12),%rax
	if (unlikely(head & 1))
    329f:	a8 01                	test   $0x1,%al
    32a1:	0f 85 02 04 00 00    	jne    36a9 <rfuse_perform_write+0x949>
    32a7:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
		page = grab_cache_page_write_begin(mapping, index);
    32ac:	4c 89 e0             	mov    %r12,%rax
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    32af:	48 8b 00             	mov    (%rax),%rax
	 * We can skip the barrier if the folio is not uptodate, because
	 * we wouldn't be reading anything from it.
	 *
	 * See folio_mark_uptodate() for the other side of the story.
	 */
	if (ret)
    32b2:	a8 04                	test   $0x4,%al
    32b4:	0f 85 ca 00 00 00    	jne    3384 <rfuse_perform_write+0x624>
			ria->write.page_locked = true;
    32ba:	c6 45 98 01          	movb   $0x1,-0x68(%rbp)
    32be:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
	return count > 0 ? count : err;
    32c5:	48 83 bd 60 ff ff ff 	cmpq   $0x0,-0xa0(%rbp)
    32cc:	00 
    32cd:	0f 85 0e 04 00 00    	jne    36e1 <rfuse_perform_write+0x981>
		}
    32d3:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
    32da:	e8 00 00 00 00       	call   32df <rfuse_perform_write+0x57f>
		rfuse_put_request(r_req); 
    32df:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
    32e3:	e8 00 00 00 00       	call   32e8 <rfuse_perform_write+0x588>
    32e8:	49 8b 55 18          	mov    0x18(%r13),%rdx
		kfree(rp->pages);
    32ec:	48 85 d2             	test   %rdx,%rdx
    32ef:	0f 85 f1 fa ff ff    	jne    2de6 <rfuse_perform_write+0x86>

    32f5:	48 8b 95 10 ff ff ff 	mov    -0xf0(%rbp),%rdx
    32fc:	4c 89 fb             	mov    %r15,%rbx
    32ff:	31 c9                	xor    %ecx,%ecx
    3301:	48 85 d2             	test   %rdx,%rdx
    3304:	0f 8f 89 01 00 00    	jg     3493 <rfuse_perform_write+0x733>
    330a:	89 8d 68 ff ff ff    	mov    %ecx,-0x98(%rbp)
		asm volatile(LOCK_PREFIX "andb %b1,%0"
    3310:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    3317:	f0 80 a0 f8 02 00 00 	lock andb $0xfb,0x2f8(%rax)
    331e:	fb 
	clear_bit(FUSE_I_SIZE_UNSTABLE, &fi->state);
    331f:	48 89 c7             	mov    %rax,%rdi
    3322:	e8 00 00 00 00       	call   3327 <rfuse_perform_write+0x5c7>

    3327:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
    332e:	48 63 8d 68 ff ff ff 	movslq -0x98(%rbp),%rcx
    3335:	48 85 c0             	test   %rax,%rax
    3338:	48 0f 4f c8          	cmovg  %rax,%rcx
    333c:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
	return res > 0 ? res : err;
    3343:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3347:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    334e:	00 00 
    3350:	0f 85 86 03 00 00    	jne    36dc <rfuse_perform_write+0x97c>
    3356:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
    335d:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
    3364:	5b                   	pop    %rbx
    3365:	41 5c                	pop    %r12
    3367:	41 5d                	pop    %r13
    3369:	41 5e                	pop    %r14
    336b:	41 5f                	pop    %r15
    336d:	5d                   	pop    %rbp
    336e:	31 d2                	xor    %edx,%edx
    3370:	31 c9                	xor    %ecx,%ecx
    3372:	31 f6                	xor    %esi,%esi
    3374:	31 ff                	xor    %edi,%edi
    3376:	45 31 c0             	xor    %r8d,%r8d
    3379:	45 31 c9             	xor    %r9d,%r9d
    337c:	45 31 d2             	xor    %r10d,%r10d
    337f:	e9 00 00 00 00       	jmp    3384 <rfuse_perform_write+0x624>
			unlock_page(page);
    3384:	4c 89 e7             	mov    %r12,%rdi
    3387:	e8 00 00 00 00       	call   338c <rfuse_perform_write+0x62c>
		if (!fc->big_writes)
    338c:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    3393:	f6 80 38 01 00 00 10 	testb  $0x10,0x138(%rax)
    339a:	74 39                	je     33d5 <rfuse_perform_write+0x675>
    339c:	49 8b 45 18          	mov    0x18(%r13),%rax
		 rp->num_pages < max_pages && offset == 0);
    33a0:	48 85 c0             	test   %rax,%rax
    33a3:	74 30                	je     33d5 <rfuse_perform_write+0x675>
	} while (iov_iter_count(ii) && count < fc->max_write &&
    33a5:	48 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%rcx
    33ac:	8b 49 3c             	mov    0x3c(%rcx),%ecx
    33af:	48 39 8d 60 ff ff ff 	cmp    %rcx,-0xa0(%rbp)
    33b6:	73 1d                	jae    33d5 <rfuse_perform_write+0x675>
    33b8:	c7 85 68 ff ff ff 00 	movl   $0x0,-0x98(%rbp)
    33bf:	00 00 00 
		 rp->num_pages < max_pages && offset == 0);
    33c2:	8b 95 38 ff ff ff    	mov    -0xc8(%rbp),%edx
    33c8:	39 55 b8             	cmp    %edx,-0x48(%rbp)
    33cb:	73 08                	jae    33d5 <rfuse_perform_write+0x675>
    33cd:	85 db                	test   %ebx,%ebx
    33cf:	0f 84 0e fb ff ff    	je     2ee3 <rfuse_perform_write+0x183>
    33d5:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
    33dc:	e9 e4 fe ff ff       	jmp    32c5 <rfuse_perform_write+0x565>
    33e1:	49 8b 02             	mov    (%r10),%rax
    33e4:	48 c1 e8 33          	shr    $0x33,%rax
    33e8:	83 e0 07             	and    $0x7,%eax
	if (!is_zone_device_page(page))
    33eb:	83 f8 04             	cmp    $0x4,%eax
    33ee:	0f 85 8f fd ff ff    	jne    3183 <rfuse_perform_write+0x423>
	return __put_devmap_managed_page_refs(page, refs);
    33f4:	4c 89 d7             	mov    %r10,%rdi
    33f7:	be 01 00 00 00       	mov    $0x1,%esi
    33fc:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
    3403:	e8 00 00 00 00       	call   3408 <rfuse_perform_write+0x6a8>
	if (put_devmap_managed_page(&folio->page))
    3408:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
    340f:	84 c0                	test   %al,%al
    3411:	0f 84 6c fd ff ff    	je     3183 <rfuse_perform_write+0x423>
	for (i = 0; i < rp->num_pages; i++) {
    3417:	41 83 c5 01          	add    $0x1,%r13d
    341b:	44 3b 6d b8          	cmp    -0x48(%rbp),%r13d
    341f:	0f 82 77 fd ff ff    	jb     319c <rfuse_perform_write+0x43c>
			err = rfuse_send_write_pages(&ria, iocb, inode, pos, count);
    3425:	44 89 f9             	mov    %r15d,%ecx
    3428:	4c 8b b5 68 ff ff ff 	mov    -0x98(%rbp),%r14
    342f:	4c 8b ad 58 ff ff ff 	mov    -0xa8(%rbp),%r13
    3436:	4c 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%r15
    343d:	85 c9                	test   %ecx,%ecx
    343f:	0f 85 95 01 00 00    	jne    35da <rfuse_perform_write+0x87a>
				struct fuse_write_out *out = (struct fuse_write_out *)&ria.r_req->args;
    3445:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    3449:	8b 40 78             	mov    0x78(%rax),%eax
				/* break out of the loop on short write */
    344c:	48 8b 8d 60 ff ff ff 	mov    -0xa0(%rbp),%rcx

    3453:	48 01 85 10 ff ff ff 	add    %rax,-0xf0(%rbp)
				res += num_written;
    345a:	49 01 c7             	add    %rax,%r15
		}
    345d:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
				/* break out of the loop on short write */
    3464:	48 39 c8             	cmp    %rcx,%rax
    3467:	0f 84 6d fe ff ff    	je     32da <rfuse_perform_write+0x57a>
		}
    346d:	e8 00 00 00 00       	call   3472 <rfuse_perform_write+0x712>
		rfuse_put_request(r_req); 
    3472:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
		}
    3476:	4c 89 fb             	mov    %r15,%rbx
		rfuse_put_request(r_req); 
    3479:	e8 00 00 00 00       	call   347e <rfuse_perform_write+0x71e>
				if (num_written != count)
    347e:	b9 fb ff ff ff       	mov    $0xfffffffb,%ecx

    3483:	48 8b 95 10 ff ff ff 	mov    -0xf0(%rbp),%rdx
    348a:	48 85 d2             	test   %rdx,%rdx
    348d:	0f 8e 77 fe ff ff    	jle    330a <rfuse_perform_write+0x5aa>
	if (res > 0)
    3493:	48 8b bd 18 ff ff ff 	mov    -0xe8(%rbp),%rdi
    349a:	48 89 de             	mov    %rbx,%rsi
    349d:	89 8d 68 ff ff ff    	mov    %ecx,-0x98(%rbp)
    34a3:	e8 00 00 00 00       	call   34a8 <rfuse_perform_write+0x748>
    34a8:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
    34ae:	e9 57 fe ff ff       	jmp    330a <rfuse_perform_write+0x5aa>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    34b3:	41 f7 c2 ff 0f 00 00 	test   $0xfff,%r10d
    34ba:	0f 85 be fc ff ff    	jne    317e <rfuse_perform_write+0x41e>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    34c0:	49 8b 02             	mov    (%r10),%rax
    34c3:	a9 00 00 01 00       	test   $0x10000,%eax
    34c8:	0f 84 b0 fc ff ff    	je     317e <rfuse_perform_write+0x41e>
		unsigned long head = READ_ONCE(page[1].compound_head);
    34ce:	49 8b 42 48          	mov    0x48(%r10),%rax
			return (const struct page *)(head - 1);
    34d2:	48 8d 70 ff          	lea    -0x1(%rax),%rsi
    34d6:	a8 01                	test   $0x1,%al
    34d8:	4c 0f 45 d6          	cmovne %rsi,%r10
    34dc:	e9 9d fc ff ff       	jmp    317e <rfuse_perform_write+0x41e>
	unsigned long head = READ_ONCE(page->compound_head);
    34e1:	49 8b 42 08          	mov    0x8(%r10),%rax
	if (unlikely(head & 1))
    34e5:	a8 01                	test   $0x1,%al
    34e7:	0f 85 a6 01 00 00    	jne    3693 <rfuse_perform_write+0x933>
    34ed:	66 90                	xchg   %ax,%ax
		return page;
    34ef:	4c 89 d0             	mov    %r10,%rax
		asm volatile(LOCK_PREFIX "andb %b1,%0"
    34f2:	f0 80 20 fb          	lock andb $0xfb,(%rax)
static __always_inline void SetPageUptodate(struct page *page)
{
	folio_mark_uptodate((struct folio *)page);
}

CLEARPAGEFLAG(Uptodate, uptodate, PF_NO_TAIL)
    34f6:	e9 53 fc ff ff       	jmp    314e <rfuse_perform_write+0x3ee>
		__folio_put(folio);
    34fb:	4c 89 d7             	mov    %r10,%rdi
    34fe:	e8 00 00 00 00       	call   3503 <rfuse_perform_write+0x7a3>
    3503:	e9 86 fc ff ff       	jmp    318e <rfuse_perform_write+0x42e>
		return page;
    3508:	4c 89 d0             	mov    %r10,%rax
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    350b:	41 f7 c2 ff 0f 00 00 	test   $0xfff,%r10d
    3512:	75 de                	jne    34f2 <rfuse_perform_write+0x792>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    3514:	49 8b 32             	mov    (%r10),%rsi
    3517:	f7 c6 00 00 01 00    	test   $0x10000,%esi
    351d:	74 d3                	je     34f2 <rfuse_perform_write+0x792>
		unsigned long head = READ_ONCE(page[1].compound_head);
    351f:	49 8b 72 48          	mov    0x48(%r10),%rsi
			return (const struct page *)(head - 1);
    3523:	48 8d 46 ff          	lea    -0x1(%rsi),%rax
    3527:	83 e6 01             	and    $0x1,%esi
    352a:	49 0f 44 c2          	cmove  %r10,%rax
    352e:	eb c2                	jmp    34f2 <rfuse_perform_write+0x792>
	unsigned long head = READ_ONCE(page->compound_head);
    3530:	49 8b 42 08          	mov    0x8(%r10),%rax
	if (unlikely(head & 1))
    3534:	a8 01                	test   $0x1,%al
    3536:	0f 85 76 01 00 00    	jne    36b2 <rfuse_perform_write+0x952>
    353c:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
		return page;
    3541:	4c 89 d0             	mov    %r10,%rax
		asm volatile(LOCK_PREFIX "andb %b1,%0"
    3544:	f0 80 20 fb          	lock andb $0xfb,(%rax)
CLEARPAGEFLAG(Uptodate, uptodate, PF_NO_TAIL)
    3548:	e9 83 fc ff ff       	jmp    31d0 <rfuse_perform_write+0x470>
			unlock_page(page);
    354d:	4c 89 d7             	mov    %r10,%rdi
    3550:	4c 89 95 48 ff ff ff 	mov    %r10,-0xb8(%rbp)
    3557:	e8 00 00 00 00       	call   355c <rfuse_perform_write+0x7fc>
    355c:	4c 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%r10
	unsigned long head = READ_ONCE(page->compound_head);
    3563:	49 8b 42 08          	mov    0x8(%r10),%rax
	if (unlikely(head & 1))
    3567:	a8 01                	test   $0x1,%al
    3569:	0f 84 0a fc ff ff    	je     3179 <rfuse_perform_write+0x419>
		return head - 1;
    356f:	4c 8d 50 ff          	lea    -0x1(%rax),%r10
    3573:	e9 06 fc ff ff       	jmp    317e <rfuse_perform_write+0x41e>
	offset = rp->descs[0].offset;
    3578:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
	for (i = 0; i < rp->num_pages; i++) {
    357c:	8b 7d b8             	mov    -0x48(%rbp),%edi
	if (!err && out->size > count)
    357f:	48 89 f0             	mov    %rsi,%rax
	offset = rp->descs[0].offset;
    3582:	44 8b 42 04          	mov    0x4(%rdx),%r8d
	if (!err && out->size > count)
    3586:	48 39 b5 60 ff ff ff 	cmp    %rsi,-0xa0(%rbp)
    358d:	0f 83 09 01 00 00    	jae    369c <rfuse_perform_write+0x93c>
	for (i = 0; i < rp->num_pages; i++) {
    3593:	85 ff                	test   %edi,%edi
    3595:	0f 84 20 01 00 00    	je     36bb <rfuse_perform_write+0x95b>
		err = -EIO;
    359b:	b9 fb ff ff ff       	mov    $0xfffffffb,%ecx
    35a0:	e9 76 fb ff ff       	jmp    311b <rfuse_perform_write+0x3bb>
		page = grab_cache_page_write_begin(mapping, index);
    35a5:	4c 89 e0             	mov    %r12,%rax
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    35a8:	41 f7 c4 ff 0f 00 00 	test   $0xfff,%r12d
    35af:	0f 85 fa fc ff ff    	jne    32af <rfuse_perform_write+0x54f>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    35b5:	49 8b 14 24          	mov    (%r12),%rdx
    35b9:	f7 c2 00 00 01 00    	test   $0x10000,%edx
    35bf:	0f 84 ea fc ff ff    	je     32af <rfuse_perform_write+0x54f>
		unsigned long head = READ_ONCE(page[1].compound_head);
    35c5:	49 8b 54 24 48       	mov    0x48(%r12),%rdx
			return (const struct page *)(head - 1);
    35ca:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    35ce:	83 e2 01             	and    $0x1,%edx
    35d1:	49 0f 44 c4          	cmove  %r12,%rax
    35d5:	e9 d5 fc ff ff       	jmp    32af <rfuse_perform_write+0x54f>
    35da:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
    35e1:	4c 89 fb             	mov    %r15,%rbx
    35e4:	89 8d 68 ff ff ff    	mov    %ecx,-0x98(%rbp)
		}
    35ea:	e8 00 00 00 00       	call   35ef <rfuse_perform_write+0x88f>
		rfuse_put_request(r_req); 
    35ef:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
    35f3:	e8 00 00 00 00       	call   35f8 <rfuse_perform_write+0x898>
		kfree(rp->pages);
    35f8:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
    35fe:	e9 80 fe ff ff       	jmp    3483 <rfuse_perform_write+0x723>
		if(r_req ==NULL)
    3603:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    360a:	e8 00 00 00 00       	call   360f <rfuse_perform_write+0x8af>
    360f:	49 8b 06             	mov    (%r14),%rax
			printk("cccwhynoreq");
    3612:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
    3619:	00 
		printk("cccwhyria->r_reqnull");
    361a:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  return sb->s_fs_info;
    3621:	48 8b 40 28          	mov    0x28(%rax),%rax
  return get_fuse_mount_super(inode->i_sb)->fc;
    3625:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax
    362c:	48 8b 00             	mov    (%rax),%rax
    362f:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
    3636:	e8 00 00 00 00       	call   363b <rfuse_perform_write+0x8db>
    363b:	e9 58 f8 ff ff       	jmp    2e98 <rfuse_perform_write+0x138>
		return page;
    3640:	4c 89 d0             	mov    %r10,%rax
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    3643:	41 f7 c2 ff 0f 00 00 	test   $0xfff,%r10d
    364a:	0f 85 f4 fe ff ff    	jne    3544 <rfuse_perform_write+0x7e4>
    3650:	49 8b 32             	mov    (%r10),%rsi
    3653:	f7 c6 00 00 01 00    	test   $0x10000,%esi
    3659:	0f 84 e5 fe ff ff    	je     3544 <rfuse_perform_write+0x7e4>
		unsigned long head = READ_ONCE(page[1].compound_head);
    365f:	49 8b 72 48          	mov    0x48(%r10),%rsi
			return (const struct page *)(head - 1);
    3663:	48 8d 46 ff          	lea    -0x1(%rsi),%rax
    3667:	83 e6 01             	and    $0x1,%esi
    366a:	49 0f 44 c2          	cmove  %r10,%rax
    366e:	e9 d1 fe ff ff       	jmp    3544 <rfuse_perform_write+0x7e4>
	if (fm->fc->handle_killpriv_v2 && !capable(CAP_FSETID))
    3673:	bf 04 00 00 00       	mov    $0x4,%edi
    3678:	e8 00 00 00 00       	call   367d <rfuse_perform_write+0x91d>
    367d:	84 c0                	test   %al,%al
    367f:	75 09                	jne    368a <rfuse_perform_write+0x92a>
		in->write_flags |= FUSE_WRITE_KILL_SUIDGID;
    3681:	41 83 8c 24 8c 00 00 	orl    $0x4,0x8c(%r12)
    3688:	00 04 
	err = rfuse_simple_request(ria->r_req);
    368a:	4c 8b 65 a0          	mov    -0x60(%rbp),%r12
    368e:	e9 5c fa ff ff       	jmp    30ef <rfuse_perform_write+0x38f>
		return head - 1;
    3693:	48 83 e8 01          	sub    $0x1,%rax
    3697:	e9 56 fe ff ff       	jmp    34f2 <rfuse_perform_write+0x792>
	for (i = 0; i < rp->num_pages; i++) {
    369c:	85 ff                	test   %edi,%edi
    369e:	0f 85 77 fa ff ff    	jne    311b <rfuse_perform_write+0x3bb>
    36a4:	e9 a3 fd ff ff       	jmp    344c <rfuse_perform_write+0x6ec>
    36a9:	48 83 e8 01          	sub    $0x1,%rax
    36ad:	e9 fd fb ff ff       	jmp    32af <rfuse_perform_write+0x54f>
    36b2:	48 83 e8 01          	sub    $0x1,%rax
    36b6:	e9 89 fe ff ff       	jmp    3544 <rfuse_perform_write+0x7e4>
		err = -EIO;
    36bb:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
    36c2:	4c 89 fb             	mov    %r15,%rbx
    36c5:	b9 fb ff ff ff       	mov    $0xfffffffb,%ecx
    36ca:	e9 15 ff ff ff       	jmp    35e4 <rfuse_perform_write+0x884>
		if (!rp->pages) {
    36cf:	4c 89 fb             	mov    %r15,%rbx
    36d2:	b9 f4 ff ff ff       	mov    $0xfffffff4,%ecx
    36d7:	e9 a7 fd ff ff       	jmp    3483 <rfuse_perform_write+0x723>
	return res > 0 ? res : err;
    36dc:	e8 00 00 00 00       	call   36e1 <rfuse_perform_write+0x981>
		count = rfuse_fill_write_pages(&ria, mapping, ii, pos, nr_pages);
    36e1:	0f 8f d1 f8 ff ff    	jg     2fb8 <rfuse_perform_write+0x258>
		if (count <= 0) {
    36e7:	48 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%rbx
		}
    36ee:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
		if (count <= 0) {
    36f5:	89 9d 68 ff ff ff    	mov    %ebx,-0x98(%rbp)
		}
    36fb:	e8 00 00 00 00       	call   3700 <rfuse_perform_write+0x9a0>
		rfuse_put_request(r_req); 
    3700:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
    3704:	e8 00 00 00 00       	call   3709 <rfuse_perform_write+0x9a9>
		kfree(rp->pages);
    3709:	85 db                	test   %ebx,%ebx
    370b:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
    3711:	0f 84 d1 fb ff ff    	je     32e8 <rfuse_perform_write+0x588>
    3717:	4c 89 fb             	mov    %r15,%rbx
    371a:	e9 64 fd ff ff       	jmp    3483 <rfuse_perform_write+0x723>
    371f:	90                   	nop

0000000000003720 <__pfx_rfuse_flush_writepages>:
    3720:	90                   	nop
    3721:	90                   	nop
    3722:	90                   	nop
    3723:	90                   	nop
    3724:	90                   	nop
    3725:	90                   	nop
    3726:	90                   	nop
    3727:	90                   	nop
    3728:	90                   	nop
    3729:	90                   	nop
    372a:	90                   	nop
    372b:	90                   	nop
    372c:	90                   	nop
    372d:	90                   	nop
    372e:	90                   	nop
    372f:	90                   	nop

0000000000003730 <rfuse_flush_writepages>:
__acquires(fi->lock)
    3730:	e8 00 00 00 00       	call   3735 <rfuse_flush_writepages+0x5>
    3735:	55                   	push   %rbp
    3736:	48 89 e5             	mov    %rsp,%rbp
    3739:	41 56                	push   %r14
    373b:	41 55                	push   %r13
    373d:	41 54                	push   %r12
    373f:	4c 8d a7 c0 02 00 00 	lea    0x2c0(%rdi),%r12
    3746:	53                   	push   %rbx
  return sb->s_fs_info;
    3747:	48 8b 47 28          	mov    0x28(%rdi),%rax
    374b:	48 89 fb             	mov    %rdi,%rbx

    374e:	8b 97 d0 02 00 00    	mov    0x2d0(%rdi),%edx
	return inode->i_size;
    3754:	4c 8b 6f 50          	mov    0x50(%rdi),%r13
    3758:	4c 8b b0 80 03 00 00 	mov    0x380(%rax),%r14
    375f:	85 d2                	test   %edx,%edx
    3761:	79 37                	jns    379a <rfuse_flush_writepages+0x6a>
    3763:	eb 41                	jmp    37a6 <rfuse_flush_writepages+0x76>
	while (fi->writectr >= 0 && !list_empty(&fi->queued_writes)) {
    3765:	48 8b 83 c0 02 00 00 	mov    0x2c0(%rbx),%rax
		list_del_init(&r_wpa->queue_entry);
    376c:	4c 89 f7             	mov    %r14,%rdi
	__list_del(entry->prev, entry->next);
    376f:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3773:	48 8b 08             	mov    (%rax),%rcx
				 struct rfuse_writepage_args, queue_entry);
    3776:	48 8d 70 88          	lea    -0x78(%rax),%rsi
	next->prev = prev;
    377a:	48 89 51 08          	mov    %rdx,0x8(%rcx)
	WRITE_ONCE(prev->next, next);
    377e:	48 89 0a             	mov    %rcx,(%rdx)
		list_del_init(&r_wpa->queue_entry);
    3781:	4c 89 ea             	mov    %r13,%rdx
	WRITE_ONCE(list->next, list);
    3784:	48 89 00             	mov    %rax,(%rax)
	WRITE_ONCE(list->prev, list);
    3787:	48 89 40 08          	mov    %rax,0x8(%rax)
    378b:	e8 e0 d2 ff ff       	call   a70 <rfuse_send_writepage>

    3790:	8b 83 d0 02 00 00    	mov    0x2d0(%rbx),%eax
    3796:	85 c0                	test   %eax,%eax
    3798:	78 0c                	js     37a6 <rfuse_flush_writepages+0x76>
 * list_empty - tests whether a list is empty
 * @head: the list to test.
 */
static inline int list_empty(const struct list_head *head)
{
	return READ_ONCE(head->next) == head;
    379a:	48 8b 83 c0 02 00 00 	mov    0x2c0(%rbx),%rax
    37a1:	49 39 c4             	cmp    %rax,%r12
    37a4:	75 bf                	jne    3765 <rfuse_flush_writepages+0x35>
	}
    37a6:	5b                   	pop    %rbx
    37a7:	41 5c                	pop    %r12
    37a9:	41 5d                	pop    %r13
    37ab:	41 5e                	pop    %r14
    37ad:	5d                   	pop    %rbp
    37ae:	31 c0                	xor    %eax,%eax
    37b0:	31 d2                	xor    %edx,%edx
    37b2:	31 c9                	xor    %ecx,%ecx
    37b4:	31 f6                	xor    %esi,%esi
    37b6:	31 ff                	xor    %edi,%edi
    37b8:	e9 00 00 00 00       	jmp    37bd <rfuse_flush_writepages+0x8d>
    37bd:	0f 1f 00             	nopl   (%rax)

00000000000037c0 <__pfx_rfuse_writepages_send>:
    37c0:	90                   	nop
    37c1:	90                   	nop
    37c2:	90                   	nop
    37c3:	90                   	nop
    37c4:	90                   	nop
    37c5:	90                   	nop
    37c6:	90                   	nop
    37c7:	90                   	nop
    37c8:	90                   	nop
    37c9:	90                   	nop
    37ca:	90                   	nop
    37cb:	90                   	nop
    37cc:	90                   	nop
    37cd:	90                   	nop
    37ce:	90                   	nop
    37cf:	90                   	nop

00000000000037d0 <rfuse_writepages_send>:
static void rfuse_writepages_send(struct rfuse_fill_wb_data *data)
    37d0:	e8 00 00 00 00       	call   37d5 <rfuse_writepages_send+0x5>
    37d5:	55                   	push   %rbp
	return xadd(&v->counter, i);
    37d6:	b8 01 00 00 00       	mov    $0x1,%eax
    37db:	48 89 e5             	mov    %rsp,%rbp
    37de:	41 57                	push   %r15
    37e0:	41 56                	push   %r14
    37e2:	41 55                	push   %r13
    37e4:	41 54                	push   %r12
    37e6:	49 89 fc             	mov    %rdi,%r12
    37e9:	53                   	push   %rbx
{
    37ea:	4c 8b 37             	mov    (%rdi),%r14

    37ed:	4c 8b 7f 08          	mov    0x8(%rdi),%r15
	struct rfuse_writepage_args *r_wpa = data->r_wpa;
    37f1:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
	struct fuse_inode *fi = get_fuse_inode(inode);
    37f5:	45 8b 6e 48          	mov    0x48(%r14),%r13d
	refcount_inc(&ff->count);
    37f9:	49 8d 7f 28          	lea    0x28(%r15),%rdi
    37fd:	f0 41 0f c1 47 28    	lock xadd %eax,0x28(%r15)
	if (unlikely(!old))
    3803:	85 c0                	test   %eax,%eax
    3805:	0f 84 9f 00 00 00    	je     38aa <rfuse_writepages_send+0xda>
	else if (unlikely(old < 0 || old + i < 0))
    380b:	8d 50 01             	lea    0x1(%rax),%edx
    380e:	09 c2                	or     %eax,%edx
    3810:	0f 88 85 00 00 00    	js     389b <rfuse_writepages_send+0xcb>

    3816:	4d 89 7e 58          	mov    %r15,0x58(%r14)
	raw_spin_lock(&lock->rlock);
    381a:	4c 8d bb 20 03 00 00 	lea    0x320(%rbx),%r15
    3821:	4c 89 ff             	mov    %r15,%rdi
    3824:	e8 00 00 00 00       	call   3829 <rfuse_writepages_send+0x59>
	__list_add(new, head->prev, head);
    3829:	48 8b 83 c8 02 00 00 	mov    0x2c8(%rbx),%rax
	spin_lock(&fi->lock);
    3830:	49 8d 56 78          	lea    0x78(%r14),%rdx
	list_add_tail(&r_wpa->queue_entry, &fi->queued_writes);
    3834:	48 89 df             	mov    %rbx,%rdi
	spin_lock(&fi->lock);
    3837:	48 8d 8b c0 02 00 00 	lea    0x2c0(%rbx),%rcx
	next->prev = new;
    383e:	48 89 93 c8 02 00 00 	mov    %rdx,0x2c8(%rbx)
    3845:	49 89 4e 78          	mov    %rcx,0x78(%r14)
	new->prev = prev;
    3849:	49 89 86 80 00 00 00 	mov    %rax,0x80(%r14)
	WRITE_ONCE(prev->next, new);
    3850:	48 89 10             	mov    %rdx,(%rax)
	list_add_tail(&r_wpa->queue_entry, &fi->queued_writes);
    3853:	e8 00 00 00 00       	call   3858 <rfuse_writepages_send+0x88>
	raw_spin_unlock(&lock->rlock);
    3858:	4c 89 ff             	mov    %r15,%rdi
    385b:	e8 00 00 00 00       	call   3860 <rfuse_writepages_send+0x90>

    3860:	45 85 ed             	test   %r13d,%r13d
    3863:	7e 1d                	jle    3882 <rfuse_writepages_send+0xb2>
    3865:	49 c1 e5 03          	shl    $0x3,%r13
    3869:	31 db                	xor    %ebx,%ebx
	for (i = 0; i < num_pages; i++)
    386b:	49 8b 44 24 18       	mov    0x18(%r12),%rax
    3870:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi

    3874:	48 83 c3 08          	add    $0x8,%rbx
	for (i = 0; i < num_pages; i++)
    3878:	e8 00 00 00 00       	call   387d <rfuse_writepages_send+0xad>

    387d:	49 39 dd             	cmp    %rbx,%r13
    3880:	75 e9                	jne    386b <rfuse_writepages_send+0x9b>
		end_page_writeback(data->orig_pages[i]);
    3882:	5b                   	pop    %rbx
    3883:	41 5c                	pop    %r12
    3885:	41 5d                	pop    %r13
    3887:	41 5e                	pop    %r14
    3889:	41 5f                	pop    %r15
    388b:	5d                   	pop    %rbp
    388c:	31 c0                	xor    %eax,%eax
    388e:	31 d2                	xor    %edx,%edx
    3890:	31 c9                	xor    %ecx,%ecx
    3892:	31 f6                	xor    %esi,%esi
    3894:	31 ff                	xor    %edi,%edi
    3896:	e9 00 00 00 00       	jmp    389b <rfuse_writepages_send+0xcb>
		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
    389b:	be 01 00 00 00       	mov    $0x1,%esi
    38a0:	e8 00 00 00 00       	call   38a5 <rfuse_writepages_send+0xd5>
    38a5:	e9 6c ff ff ff       	jmp    3816 <rfuse_writepages_send+0x46>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
    38aa:	be 02 00 00 00       	mov    $0x2,%esi
    38af:	e8 00 00 00 00       	call   38b4 <rfuse_writepages_send+0xe4>
    38b4:	e9 5d ff ff ff       	jmp    3816 <rfuse_writepages_send+0x46>
    38b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000038c0 <__pfx_rfuse_writepages_fill>:
    38c0:	90                   	nop
    38c1:	90                   	nop
    38c2:	90                   	nop
    38c3:	90                   	nop
    38c4:	90                   	nop
    38c5:	90                   	nop
    38c6:	90                   	nop
    38c7:	90                   	nop
    38c8:	90                   	nop
    38c9:	90                   	nop
    38ca:	90                   	nop
    38cb:	90                   	nop
    38cc:	90                   	nop
    38cd:	90                   	nop
    38ce:	90                   	nop
    38cf:	90                   	nop

00000000000038d0 <rfuse_writepages_fill>:
		struct writeback_control *wbc, void *_data)
    38d0:	e8 00 00 00 00       	call   38d5 <rfuse_writepages_fill+0x5>
    38d5:	55                   	push   %rbp
    38d6:	48 89 e5             	mov    %rsp,%rbp
    38d9:	41 57                	push   %r15
    38db:	41 56                	push   %r14
    38dd:	41 55                	push   %r13
    38df:	49 89 fd             	mov    %rdi,%r13
    38e2:	41 54                	push   %r12
    38e4:	53                   	push   %rbx
    38e5:	48 89 d3             	mov    %rdx,%rbx
    38e8:	48 83 ec 28          	sub    $0x28,%rsp
	struct rfuse_pages *rp = &r_wpa->ria.rp;
    38ec:	4c 8b 7a 10          	mov    0x10(%rdx),%r15

    38f0:	48 83 7a 08 00       	cmpq   $0x0,0x8(%rdx)
	struct rfuse_fill_wb_data *data = _data;
    38f5:	4c 8b 22             	mov    (%rdx),%r12
    38f8:	49 8b 47 28          	mov    0x28(%r15),%rax
  return get_fuse_mount_super(inode->i_sb)->fc;
    38fc:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax
    3903:	4c 8b 30             	mov    (%rax),%r14

    3906:	0f 84 4f 03 00 00    	je     3c5b <rfuse_writepages_fill+0x38b>

    390c:	4d 85 e4             	test   %r12,%r12
    390f:	74 6e                	je     397f <rfuse_writepages_fill+0xaf>
{
    3911:	41 8b 54 24 48       	mov    0x48(%r12),%edx
    3916:	85 d2                	test   %edx,%edx
    3918:	0f 84 26 03 00 00    	je     3c44 <rfuse_writepages_fill+0x374>
	 */
    391e:	49 8b 75 20          	mov    0x20(%r13),%rsi
	return rfuse_range_is_writeback(inode, index, index);
    3922:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    3926:	48 89 f2             	mov    %rsi,%rdx
    3929:	e8 e2 c6 ff ff       	call   10 <rfuse_range_is_writeback>
	 */
    392e:	84 c0                	test   %al,%al
    3930:	0f 85 75 01 00 00    	jne    3aab <rfuse_writepages_fill+0x1db>
	/* Reached max pages */
    3936:	41 8b 44 24 48       	mov    0x48(%r12),%eax
    393b:	41 3b 46 40          	cmp    0x40(%r14),%eax
    393f:	0f 84 66 01 00 00    	je     3aab <rfuse_writepages_fill+0x1db>
	/* Reached max write bytes */
    3945:	8d 50 01             	lea    0x1(%rax),%edx
    3948:	41 8b 4e 3c          	mov    0x3c(%r14),%ecx
    394c:	48 c1 e2 0c          	shl    $0xc,%rdx
    3950:	48 39 d1             	cmp    %rdx,%rcx
    3953:	0f 82 52 01 00 00    	jb     3aab <rfuse_writepages_fill+0x1db>
	/* Discontinuity */
    3959:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    395d:	8d 50 ff             	lea    -0x1(%rax),%edx
    3960:	48 8b 14 d1          	mov    (%rcx,%rdx,8),%rdx
    3964:	48 8b 52 20          	mov    0x20(%rdx),%rdx
    3968:	48 83 c2 01          	add    $0x1,%rdx
    396c:	49 3b 55 20          	cmp    0x20(%r13),%rdx
    3970:	0f 85 35 01 00 00    	jne    3aab <rfuse_writepages_fill+0x1db>
	/* Need to grow the pages array?  If so, did the expansion fail? */
    3976:	3b 43 20             	cmp    0x20(%rbx),%eax
    3979:	0f 84 79 03 00 00    	je     3cf8 <rfuse_writepages_fill+0x428>
	err = -ENOMEM;
    397f:	31 f6                	xor    %esi,%esi
    3981:	bf 42 0c 00 00       	mov    $0xc42,%edi
    3986:	e8 00 00 00 00       	call   398b <rfuse_writepages_fill+0xbb>
    398b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
	tmp_page = alloc_page(GFP_NOFS | __GFP_HIGHMEM);
    398f:	48 85 c0             	test   %rax,%rax
    3992:	0f 84 ce 04 00 00    	je     3e66 <rfuse_writepages_fill+0x596>

    3998:	48 83 3b 00          	cmpq   $0x0,(%rbx)
    399c:	0f 84 1d 01 00 00    	je     3abf <rfuse_writepages_fill+0x1ef>
	struct rfuse_writepage_args *r_wpa = data->r_wpa;
    39a2:	4d 8d 74 24 38       	lea    0x38(%r12),%r14
	}
    39a7:	31 f6                	xor    %esi,%esi
    39a9:	4c 89 ef             	mov    %r13,%rdi
    39ac:	e8 00 00 00 00       	call   39b1 <rfuse_writepages_fill+0xe1>
	return page_to_virt(page);
    39b1:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 39b8 <rfuse_writepages_fill+0xe8>
    39b8:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    39bc:	4c 89 ee             	mov    %r13,%rsi
    39bf:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 39c6 <rfuse_writepages_fill+0xf6>
    39c6:	48 29 d6             	sub    %rdx,%rsi
    39c9:	48 29 d7             	sub    %rdx,%rdi
    39cc:	48 c1 fe 06          	sar    $0x6,%rsi
    39d0:	48 c1 ff 06          	sar    $0x6,%rdi
    39d4:	48 c1 e6 0c          	shl    $0xc,%rsi
    39d8:	48 c1 e7 0c          	shl    $0xc,%rdi
    39dc:	48 01 c6             	add    %rax,%rsi
    39df:	48 01 c7             	add    %rax,%rdi
{
	char *vfrom, *vto;

	vfrom = kmap_local_page(from);
	vto = kmap_local_page(to);
	copy_page(vto, vfrom);
    39e2:	e8 00 00 00 00       	call   39e7 <rfuse_writepages_fill+0x117>
	copy_highpage(tmp_page, &folio->page);
    39e7:	41 8b 56 10          	mov    0x10(%r14),%edx
    39eb:	49 8b 06             	mov    (%r14),%rax
    39ee:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    39f2:	48 89 3c d0          	mov    %rdi,(%rax,%rdx,8)
	rp->pages[rp->num_pages] = tmp_page;
    39f6:	41 8b 56 10          	mov    0x10(%r14),%edx

    39fa:	4c 89 ff             	mov    %r15,%rdi
	rp->pages[rp->num_pages] = tmp_page;
    39fd:	49 8b 46 08          	mov    0x8(%r14),%rax
    3a01:	c7 44 d0 04 00 00 00 	movl   $0x0,0x4(%rax,%rdx,8)
    3a08:	00 
	rp->descs[rp->num_pages].offset = 0;
    3a09:	41 8b 56 10          	mov    0x10(%r14),%edx
    3a0d:	49 8b 46 08          	mov    0x8(%r14),%rax
    3a11:	c7 04 d0 00 10 00 00 	movl   $0x1000,(%rax,%rdx,8)
	rp->descs[rp->num_pages].length = PAGE_SIZE;
    3a18:	41 8b 56 10          	mov    0x10(%r14),%edx
    3a1c:	48 8b 43 18          	mov    0x18(%rbx),%rax
    3a20:	4c 89 2c d0          	mov    %r13,(%rax,%rdx,8)

    3a24:	e8 00 00 00 00       	call   3a29 <rfuse_writepages_fill+0x159>
    3a29:	be 01 00 00 00       	mov    $0x1,%esi
	asm("bsrl %1,%0"
    3a2e:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    3a33:	48 8d b8 e8 00 00 00 	lea    0xe8(%rax),%rdi
    3a3a:	0f bd 15 00 00 00 00 	bsr    0x0(%rip),%edx        # 3a41 <rfuse_writepages_fill+0x171>
    3a41:	8d 14 d5 08 00 00 00 	lea    0x8(,%rdx,8),%edx
    3a48:	e8 00 00 00 00       	call   3a4d <rfuse_writepages_fill+0x17d>
	inc_wb_stat(&inode_to_bdi(inode)->wb, WB_WRITEBACK);
    3a4d:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    3a51:	be 16 00 00 00       	mov    $0x16,%esi
    3a56:	e8 00 00 00 00       	call   3a5b <rfuse_writepages_fill+0x18b>
	err = 0;
    3a5b:	48 83 3b 00          	cmpq   $0x0,(%rbx)
    3a5f:	0f 84 ba 00 00 00    	je     3b1f <rfuse_writepages_fill+0x24f>
	raw_spin_lock(&lock->rlock);
    3a65:	49 81 c7 20 03 00 00 	add    $0x320,%r15
    3a6c:	4c 89 ff             	mov    %r15,%rdi
    3a6f:	e8 00 00 00 00       	call   3a74 <rfuse_writepages_fill+0x1a4>
		spin_lock(&fi->lock);
    3a74:	41 83 46 10 01       	addl   $0x1,0x10(%r14)
	raw_spin_unlock(&lock->rlock);
    3a79:	4c 89 ff             	mov    %r15,%rdi
    3a7c:	e8 00 00 00 00       	call   3a81 <rfuse_writepages_fill+0x1b1>

    3a81:	31 db                	xor    %ebx,%ebx
out_unlock:
    3a83:	4c 89 ef             	mov    %r13,%rdi
    3a86:	e8 00 00 00 00       	call   3a8b <rfuse_writepages_fill+0x1bb>
	return err;
    3a8b:	89 d8                	mov    %ebx,%eax
    3a8d:	48 83 c4 28          	add    $0x28,%rsp
    3a91:	5b                   	pop    %rbx
    3a92:	41 5c                	pop    %r12
    3a94:	41 5d                	pop    %r13
    3a96:	41 5e                	pop    %r14
    3a98:	41 5f                	pop    %r15
    3a9a:	5d                   	pop    %rbp
    3a9b:	31 d2                	xor    %edx,%edx
    3a9d:	31 c9                	xor    %ecx,%ecx
    3a9f:	31 f6                	xor    %esi,%esi
    3aa1:	31 ff                	xor    %edi,%edi
    3aa3:	45 31 c0             	xor    %r8d,%r8d
    3aa6:	e9 00 00 00 00       	jmp    3aab <rfuse_writepages_fill+0x1db>
	if (r_wpa && rfuse_writepage_need_send(fc, &folio->page, rp, data)) {
    3aab:	48 89 df             	mov    %rbx,%rdi
    3aae:	e8 1d fd ff ff       	call   37d0 <rfuse_writepages_send>
		rfuse_writepages_send(data);
    3ab3:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
    3aba:	e9 c0 fe ff ff       	jmp    397f <rfuse_writepages_fill+0xaf>
		err = -ENOMEM;
    3abf:	e8 6c d1 ff ff       	call   c30 <rfuse_writepage_args_alloc>
    3ac4:	49 89 c4             	mov    %rax,%r12
		r_wpa = rfuse_writepage_args_alloc();
    3ac7:	48 85 c0             	test   %rax,%rax
    3aca:	0f 84 8b 03 00 00    	je     3e5b <rfuse_writepages_fill+0x58b>
		}
    3ad0:	48 89 c6             	mov    %rax,%rsi
    3ad3:	4c 89 f7             	mov    %r14,%rdi

    3ad6:	4d 8d 74 24 38       	lea    0x38(%r12),%r14
		}
    3adb:	e8 50 c9 ff ff       	call   430 <rfuse_writepage_add_to_bucket>

    3ae0:	c7 43 20 01 00 00 00 	movl   $0x1,0x20(%rbx)
    3ae7:	49 8b 45 20          	mov    0x20(%r13),%rax
		r_wpa->pos = folio_pos(folio);
    3aeb:	41 83 4c 24 14 01    	orl    $0x1,0x14(%r12)
    3af1:	48 c1 e0 0c          	shl    $0xc,%rax
		rp->num_pages = 0;
    3af5:	4d 89 bc 24 90 00 00 	mov    %r15,0x90(%r12)
    3afc:	00 
		rp = &r_wpa->ria.rp;
    3afd:	49 89 84 24 a0 00 00 	mov    %rax,0xa0(%r12)
    3b04:	00 
		r_wpa->ria.write.in.write_flags |= FUSE_WRITE_CACHE;
    3b05:	49 c7 84 24 88 00 00 	movq   $0x0,0x88(%r12)
    3b0c:	00 00 00 00 00 
		r_wpa->next = NULL;
    3b11:	41 c7 44 24 48 00 00 	movl   $0x0,0x48(%r12)
    3b18:	00 00 
		rp->num_pages = 0;
    3b1a:	e9 88 fe ff ff       	jmp    39a7 <rfuse_writepages_fill+0xd7>

    3b1f:	41 8b 44 24 48       	mov    0x48(%r12),%eax
{
    3b24:	4d 8b b4 24 90 00 00 	mov    0x90(%r12),%r14
    3b2b:	00 

    3b2c:	85 c0                	test   %eax,%eax
    3b2e:	0f 85 e4 02 00 00    	jne    3e18 <rfuse_writepages_fill+0x548>
	WARN_ON(new_rp->num_pages != 0);
    3b34:	41 c7 44 24 48 01 00 	movl   $0x1,0x48(%r12)
    3b3b:	00 00 
	raw_spin_lock(&lock->rlock);
    3b3d:	4d 8d be 20 03 00 00 	lea    0x320(%r14),%r15
    3b44:	4c 89 ff             	mov    %r15,%rdi
    3b47:	e8 00 00 00 00       	call   3b4c <rfuse_writepages_fill+0x27c>
	spin_lock(&fi->lock);
    3b4c:	49 8d be f0 02 00 00 	lea    0x2f0(%r14),%rdi
    3b53:	4c 89 e6             	mov    %r12,%rsi
    3b56:	e8 e5 c7 ff ff       	call   340 <rfuse_insert_writeback>
	old_r_wpa = rfuse_insert_writeback(&fi->writepages, new_r_wpa);
    3b5b:	48 85 c0             	test   %rax,%rax
    3b5e:	0f 84 e7 00 00 00    	je     3c4b <rfuse_writepages_fill+0x37b>

    3b64:	4c 8b 80 88 00 00 00 	mov    0x88(%rax),%r8
    3b6b:	4d 85 c0             	test   %r8,%r8
    3b6e:	0f 84 60 01 00 00    	je     3cd4 <rfuse_writepages_fill+0x404>

    3b74:	49 8b bc 24 90 00 00 	mov    0x90(%r12),%rdi
    3b7b:	00 
		curr_index = tmp->ria.write.in.offset >> PAGE_SHIFT;
    3b7c:	49 8b 75 20          	mov    0x20(%r13),%rsi

    3b80:	4c 89 c2             	mov    %r8,%rdx
    3b83:	eb 1d                	jmp    3ba2 <rfuse_writepages_fill+0x2d2>
		WARN_ON(tmp->inode != new_r_wpa->inode);
    3b85:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
    3b89:	48 c1 e9 0c          	shr    $0xc,%rcx
		curr_index = tmp->ria.write.in.offset >> PAGE_SHIFT;
    3b8d:	48 39 f1             	cmp    %rsi,%rcx
    3b90:	74 28                	je     3bba <rfuse_writepages_fill+0x2ea>

    3b92:	48 8b 92 88 00 00 00 	mov    0x88(%rdx),%rdx
    3b99:	48 85 d2             	test   %rdx,%rdx
    3b9c:	0f 84 32 01 00 00    	je     3cd4 <rfuse_writepages_fill+0x404>

    3ba2:	48 39 ba 90 00 00 00 	cmp    %rdi,0x90(%rdx)
    3ba9:	74 da                	je     3b85 <rfuse_writepages_fill+0x2b5>
    3bab:	0f 0b                	ud2    
		WARN_ON(tmp->inode != new_r_wpa->inode);
    3bad:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
    3bb1:	48 c1 e9 0c          	shr    $0xc,%rcx
		curr_index = tmp->ria.write.in.offset >> PAGE_SHIFT;
    3bb5:	48 39 f1             	cmp    %rsi,%rcx
    3bb8:	75 d8                	jne    3b92 <rfuse_writepages_fill+0x2c2>
		if (curr_index == page->index) {
    3bba:	83 7a 48 01          	cmpl   $0x1,0x48(%rdx)
    3bbe:	0f 85 72 02 00 00    	jne    3e36 <rfuse_writepages_fill+0x566>
			WARN_ON(tmp->ria.rp.num_pages != 1);
    3bc4:	49 8b 4c 24 38       	mov    0x38(%r12),%rcx
    3bc9:	48 8b 42 38          	mov    0x38(%rdx),%rax
	raw_spin_unlock(&lock->rlock);
    3bcd:	4c 89 ff             	mov    %r15,%rdi
    3bd0:	48 8b 09             	mov    (%rcx),%rcx
    3bd3:	48 8b 10             	mov    (%rax),%rdx
    3bd6:	48 89 08             	mov    %rcx,(%rax)
    3bd9:	49 8b 44 24 38       	mov    0x38(%r12),%rax
    3bde:	48 89 10             	mov    %rdx,(%rax)
    3be1:	e8 00 00 00 00       	call   3be6 <rfuse_writepages_fill+0x316>
	if (tmp) {
    3be6:	49 8b bc 24 90 00 00 	mov    0x90(%r12),%rdi
    3bed:	00 
    3bee:	e8 00 00 00 00       	call   3bf3 <rfuse_writepages_fill+0x323>
    3bf3:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    3bfa:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    3bff:	48 8d b8 e8 00 00 00 	lea    0xe8(%rax),%rdi
    3c06:	48 8d 58 60          	lea    0x60(%rax),%rbx
    3c0a:	0f bd 15 00 00 00 00 	bsr    0x0(%rip),%edx        # 3c11 <rfuse_writepages_fill+0x341>
    3c11:	8d 14 d5 08 00 00 00 	lea    0x8(,%rdx,8),%edx
    3c18:	e8 00 00 00 00       	call   3c1d <rfuse_writepages_fill+0x34d>
		dec_wb_stat(&bdi->wb, WB_WRITEBACK);
    3c1d:	49 8b 44 24 38       	mov    0x38(%r12),%rax
    3c22:	be 16 00 00 00       	mov    $0x16,%esi
    3c27:	48 8b 38             	mov    (%rax),%rdi
    3c2a:	e8 00 00 00 00       	call   3c2f <rfuse_writepages_fill+0x35f>
		dec_node_page_state(new_rp->pages[0], NR_WRITEBACK_TEMP);
    3c2f:	48 89 df             	mov    %rbx,%rdi
    3c32:	e8 00 00 00 00       	call   3c37 <rfuse_writepages_fill+0x367>
		wb_writeout_inc(&bdi->wb);
    3c37:	4c 89 e7             	mov    %r12,%rdi
    3c3a:	e8 91 cc ff ff       	call   8d0 <rfuse_writepage_free>
    3c3f:	e9 a7 00 00 00       	jmp    3ceb <rfuse_writepages_fill+0x41b>
{
    3c44:	0f 0b                	ud2    
    3c46:	e9 d3 fc ff ff       	jmp    391e <rfuse_writepages_fill+0x4e>
    3c4b:	4c 89 ff             	mov    %r15,%rdi
    3c4e:	e8 00 00 00 00       	call   3c53 <rfuse_writepages_fill+0x383>
	} else if (rfuse_writepage_add(r_wpa, &folio->page)) {
    3c53:	4c 89 23             	mov    %r12,(%rbx)
    3c56:	e9 26 fe ff ff       	jmp    3a81 <rfuse_writepages_fill+0x1b1>
	raw_spin_lock(&lock->rlock);
    3c5b:	49 8d 87 20 03 00 00 	lea    0x320(%r15),%rax
    3c62:	48 89 c7             	mov    %rax,%rdi
    3c65:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    3c69:	e8 00 00 00 00       	call   3c6e <rfuse_writepages_fill+0x39e>
	return READ_ONCE(head->next) == head;
    3c6e:	49 8b 97 b0 02 00 00 	mov    0x2b0(%r15),%rdx
	spin_lock(&fi->lock);
    3c75:	49 8d 87 b0 02 00 00 	lea    0x2b0(%r15),%rax
    3c7c:	48 39 c2             	cmp    %rax,%rdx
    3c7f:	0f 84 76 01 00 00    	je     3dfb <rfuse_writepages_fill+0x52b>
	if (!list_empty(&fi->write_files)) {
    3c85:	49 8b 97 b0 02 00 00 	mov    0x2b0(%r15),%rdx
    3c8c:	b8 01 00 00 00       	mov    $0x1,%eax
    3c91:	48 8d 4a d0          	lea    -0x30(%rdx),%rcx
	refcount_inc(&ff->count);
    3c95:	48 8d 7a f8          	lea    -0x8(%rdx),%rdi
    3c99:	f0 0f c1 42 f8       	lock xadd %eax,-0x8(%rdx)
	if (unlikely(!old))
    3c9e:	85 c0                	test   %eax,%eax
    3ca0:	0f 84 97 01 00 00    	je     3e3d <rfuse_writepages_fill+0x56d>
	else if (unlikely(old < 0 || old + i < 0))
    3ca6:	8d 50 01             	lea    0x1(%rax),%edx
    3ca9:	09 c2                	or     %eax,%edx
    3cab:	0f 88 6e 01 00 00    	js     3e1f <rfuse_writepages_fill+0x54f>
	raw_spin_unlock(&lock->rlock);
    3cb1:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    3cb5:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    3cb9:	e8 00 00 00 00       	call   3cbe <rfuse_writepages_fill+0x3ee>
	struct fuse_file *ff = __rfuse_write_file_get(fi);
    3cbe:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    3cc2:	48 85 c9             	test   %rcx,%rcx
    3cc5:	0f 84 39 01 00 00    	je     3e04 <rfuse_writepages_fill+0x534>
		err = -EIO;
    3ccb:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
		data->ff = rfuse_write_file_get(fi);
    3ccf:	e9 38 fc ff ff       	jmp    390c <rfuse_writepages_fill+0x3c>
	if (!tmp) {
    3cd4:	4d 89 84 24 88 00 00 	mov    %r8,0x88(%r12)
    3cdb:	00 
    3cdc:	4c 89 ff             	mov    %r15,%rdi
		new_r_wpa->next = old_r_wpa->next;
    3cdf:	4c 89 a0 88 00 00 00 	mov    %r12,0x88(%rax)
    3ce6:	e8 00 00 00 00       	call   3ceb <rfuse_writepages_fill+0x41b>
	} else {
    3ceb:	4c 89 ef             	mov    %r13,%rdi
    3cee:	e8 00 00 00 00       	call   3cf3 <rfuse_writepages_fill+0x423>
    3cf3:	e9 89 fd ff ff       	jmp    3a81 <rfuse_writepages_fill+0x1b1>
    3cf8:	48 8b 53 10          	mov    0x10(%rbx),%rdx
	struct fuse_page_desc *descs;
    3cfc:	be 20 00 00 00       	mov    $0x20,%esi
{
    3d01:	48 8b 0b             	mov    (%rbx),%rcx
  return sb->s_fs_info;
    3d04:	48 8b 52 28          	mov    0x28(%rdx),%rdx
  return get_fuse_mount_super(inode->i_sb)->fc;
    3d08:	48 8b 92 80 03 00 00 	mov    0x380(%rdx),%rdx
	struct fuse_page_desc *descs;
    3d0f:	48 8b 3a             	mov    (%rdx),%rdi
    3d12:	8d 14 00             	lea    (%rax,%rax,1),%edx
    3d15:	39 f2                	cmp    %esi,%edx
    3d17:	0f 42 d6             	cmovb  %esi,%edx
    3d1a:	8b 77 40             	mov    0x40(%rdi),%esi
    3d1d:	39 f2                	cmp    %esi,%edx
    3d1f:	0f 46 f2             	cmovbe %edx,%esi
    3d22:	89 75 d0             	mov    %esi,-0x30(%rbp)
				    fc->max_pages);
    3d25:	39 f0                	cmp    %esi,%eax
    3d27:	0f 83 27 01 00 00    	jae    3e54 <rfuse_writepages_fill+0x584>
  pages = kzalloc(
    3d2d:	8b 55 d0             	mov    -0x30(%rbp),%edx
    3d30:	be 40 0d 00 00       	mov    $0xd40,%esi
    3d35:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
    3d39:	48 89 d7             	mov    %rdx,%rdi
    3d3c:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
    3d40:	48 c1 e7 04          	shl    $0x4,%rdi
    3d44:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    3d48:	e8 00 00 00 00       	call   3d4d <rfuse_writepages_fill+0x47d>
  *desc = (void *)(pages + npages);
    3d4d:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    3d51:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    3d55:	49 89 c0             	mov    %rax,%r8
    3d58:	48 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%rax
    3d5f:	00 
    3d60:	48 39 c7             	cmp    %rax,%rdi
    3d63:	48 89 c2             	mov    %rax,%rdx
    3d66:	48 0f 43 d7          	cmovae %rdi,%rdx
    3d6a:	48 29 c2             	sub    %rax,%rdx
    3d6d:	4c 01 c0             	add    %r8,%rax
    3d70:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
    3d74:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	pages = fuse_pages_alloc(npages, GFP_NOFS, &descs);
    3d78:	4d 85 c0             	test   %r8,%r8
    3d7b:	0f 84 2a fd ff ff    	je     3aab <rfuse_writepages_fill+0x1db>

    3d81:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
    3d85:	8b 51 48             	mov    0x48(%rcx),%edx
    3d88:	48 c1 e2 03          	shl    $0x3,%rdx
	 * Always stop accesses beyond the struct that contains the
	 * field, when the buffer's remaining size is known.
	 * (The SIZE_MAX test is to optimize away checks where the buffer
	 * lengths are unknown.)
	 */
	if ((p_size != SIZE_MAX && p_size < size) ||
    3d8c:	48 39 d7             	cmp    %rdx,%rdi
    3d8f:	0f 82 db 00 00 00    	jb     3e70 <rfuse_writepages_fill+0x5a0>
    3d95:	48 8b 71 38          	mov    0x38(%rcx),%rsi
    3d99:	4c 89 c7             	mov    %r8,%rdi
    3d9c:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    3da0:	4c 89 45 b8          	mov    %r8,-0x48(%rbp)
    3da4:	e8 00 00 00 00       	call   3da9 <rfuse_writepages_fill+0x4d9>
	memcpy(pages, rp->pages, sizeof(struct page *) * rp->num_pages);
    3da9:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    3dad:	8b 51 48             	mov    0x48(%rcx),%edx
    3db0:	48 c1 e2 03          	shl    $0x3,%rdx
    3db4:	48 39 55 c0          	cmp    %rdx,-0x40(%rbp)
    3db8:	0f 82 b2 00 00 00    	jb     3e70 <rfuse_writepages_fill+0x5a0>
    3dbe:	48 8b 71 40          	mov    0x40(%rcx),%rsi
    3dc2:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    3dc6:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    3dca:	e8 00 00 00 00       	call   3dcf <rfuse_writepages_fill+0x4ff>
	memcpy(descs, rp->descs, sizeof(struct fuse_page_desc) * rp->num_pages);
    3dcf:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    3dd3:	48 8b 79 38          	mov    0x38(%rcx),%rdi
    3dd7:	e8 00 00 00 00       	call   3ddc <rfuse_writepages_fill+0x50c>
	kfree(rp->pages);
    3ddc:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
	rp->pages = pages;
    3de0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
	kfree(rp->pages);
    3de4:	4c 8b 45 b8          	mov    -0x48(%rbp),%r8
	rp->pages = pages;
    3de8:	48 89 41 40          	mov    %rax,0x40(%rcx)
	rp->descs = descs;
    3dec:	8b 45 d0             	mov    -0x30(%rbp),%eax
	kfree(rp->pages);
    3def:	4c 89 41 38          	mov    %r8,0x38(%rcx)
	rp->descs = descs;
    3df3:	89 43 20             	mov    %eax,0x20(%rbx)

    3df6:	e9 84 fb ff ff       	jmp    397f <rfuse_writepages_fill+0xaf>
    3dfb:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    3dff:	e8 00 00 00 00       	call   3e04 <rfuse_writepages_fill+0x534>
	struct fuse_file *ff = __rfuse_write_file_get(fi);
    3e04:	0f 0b                	ud2    
		err = -EIO;
    3e06:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
    3e0d:	00 
	if (!data->ff) {
    3e0e:	bb fb ff ff ff       	mov    $0xfffffffb,%ebx
    3e13:	e9 6b fc ff ff       	jmp    3a83 <rfuse_writepages_fill+0x1b3>

    3e18:	0f 0b                	ud2    
    3e1a:	e9 15 fd ff ff       	jmp    3b34 <rfuse_writepages_fill+0x264>
		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
    3e1f:	be 01 00 00 00       	mov    $0x1,%esi
    3e24:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    3e28:	e8 00 00 00 00       	call   3e2d <rfuse_writepages_fill+0x55d>
    3e2d:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    3e31:	e9 7b fe ff ff       	jmp    3cb1 <rfuse_writepages_fill+0x3e1>
		if (curr_index == page->index) {
    3e36:	0f 0b                	ud2    
    3e38:	e9 87 fd ff ff       	jmp    3bc4 <rfuse_writepages_fill+0x2f4>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
    3e3d:	be 02 00 00 00       	mov    $0x2,%esi
    3e42:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    3e46:	e8 00 00 00 00       	call   3e4b <rfuse_writepages_fill+0x57b>
    3e4b:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    3e4f:	e9 5d fe ff ff       	jmp    3cb1 <rfuse_writepages_fill+0x3e1>
				    fc->max_pages);
    3e54:	0f 0b                	ud2    
    3e56:	e9 d2 fe ff ff       	jmp    3d2d <rfuse_writepages_fill+0x45d>
		if (!r_wpa) {
    3e5b:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    3e5f:	31 f6                	xor    %esi,%esi
    3e61:	e8 00 00 00 00       	call   3e66 <rfuse_writepages_fill+0x596>

    3e66:	bb f4 ff ff ff       	mov    $0xfffffff4,%ebx
    3e6b:	e9 13 fc ff ff       	jmp    3a83 <rfuse_writepages_fill+0x1b3>
	    (q_size != SIZE_MAX && q_size < size))
		fortify_panic(func);
    3e70:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    3e77:	e8 00 00 00 00       	call   3e7c <rfuse_writepages_fill+0x5ac>
    3e7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000003e80 <__pfx_rfuse_writepage_locked>:
    3e80:	90                   	nop
    3e81:	90                   	nop
    3e82:	90                   	nop
    3e83:	90                   	nop
    3e84:	90                   	nop
    3e85:	90                   	nop
    3e86:	90                   	nop
    3e87:	90                   	nop
    3e88:	90                   	nop
    3e89:	90                   	nop
    3e8a:	90                   	nop
    3e8b:	90                   	nop
    3e8c:	90                   	nop
    3e8d:	90                   	nop
    3e8e:	90                   	nop
    3e8f:	90                   	nop

0000000000003e90 <rfuse_writepage_locked>:
int rfuse_writepage_locked(struct page *page)
    3e90:	e8 00 00 00 00       	call   3e95 <rfuse_writepage_locked+0x5>
    3e95:	55                   	push   %rbp
    3e96:	48 89 e5             	mov    %rsp,%rbp
    3e99:	41 57                	push   %r15
    3e9b:	41 56                	push   %r14
    3e9d:	41 55                	push   %r13
    3e9f:	41 54                	push   %r12
    3ea1:	49 89 fc             	mov    %rdi,%r12
    3ea4:	53                   	push   %rbx
    3ea5:	48 83 ec 10          	sub    $0x10,%rsp
	struct address_space *mapping = page->mapping;
    3ea9:	48 8b 47 18          	mov    0x18(%rdi),%rax
    3ead:	4c 8b 38             	mov    (%rax),%r15
  return sb->s_fs_info;
    3eb0:	49 8b 47 28          	mov    0x28(%r15),%rax
  return get_fuse_mount_super(inode->i_sb)->fc;
    3eb4:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax
    3ebb:	48 8b 00             	mov    (%rax),%rax
    3ebe:	48 89 45 d0          	mov    %rax,-0x30(%rbp)

    3ec2:	e8 00 00 00 00       	call   3ec7 <rfuse_writepage_locked+0x37>

    3ec7:	e8 64 cd ff ff       	call   c30 <rfuse_writepage_args_alloc>
	r_wpa = rfuse_writepage_args_alloc();
    3ecc:	48 85 c0             	test   %rax,%rax
    3ecf:	0f 84 19 02 00 00    	je     40ee <rfuse_writepage_locked+0x25e>

    3ed5:	31 f6                	xor    %esi,%esi
    3ed7:	bf 42 0c 00 00       	mov    $0xc42,%edi
    3edc:	48 89 c3             	mov    %rax,%rbx
    3edf:	e8 00 00 00 00       	call   3ee4 <rfuse_writepage_locked+0x54>
    3ee4:	49 89 c5             	mov    %rax,%r13
	tmp_page = alloc_page(GFP_NOFS | __GFP_HIGHMEM);
    3ee7:	48 85 c0             	test   %rax,%rax
    3eea:	0f 84 b3 01 00 00    	je     40a3 <rfuse_writepage_locked+0x213>
	raw_spin_lock(&lock->rlock);
    3ef0:	4d 8d b7 20 03 00 00 	lea    0x320(%r15),%r14
    3ef7:	4c 89 f7             	mov    %r14,%rdi
    3efa:	e8 00 00 00 00       	call   3eff <rfuse_writepage_locked+0x6f>
    3eff:	49 8b 97 b0 02 00 00 	mov    0x2b0(%r15),%rdx
	spin_lock(&fi->lock);
    3f06:	49 8d 87 b0 02 00 00 	lea    0x2b0(%r15),%rax
    3f0d:	48 39 c2             	cmp    %rax,%rdx
    3f10:	0f 84 e0 01 00 00    	je     40f6 <rfuse_writepage_locked+0x266>
	if (!list_empty(&fi->write_files)) {
    3f16:	49 8b 97 b0 02 00 00 	mov    0x2b0(%r15),%rdx
    3f1d:	b8 01 00 00 00       	mov    $0x1,%eax
    3f22:	4c 8d 42 d0          	lea    -0x30(%rdx),%r8
	refcount_inc(&ff->count);
    3f26:	48 8d 7a f8          	lea    -0x8(%rdx),%rdi
    3f2a:	f0 0f c1 42 f8       	lock xadd %eax,-0x8(%rdx)
	if (unlikely(!old))
    3f2f:	85 c0                	test   %eax,%eax
    3f31:	0f 84 01 02 00 00    	je     4138 <rfuse_writepage_locked+0x2a8>
	else if (unlikely(old < 0 || old + i < 0))
    3f37:	8d 50 01             	lea    0x1(%rax),%edx
    3f3a:	09 c2                	or     %eax,%edx
    3f3c:	0f 88 d8 01 00 00    	js     411a <rfuse_writepage_locked+0x28a>
	raw_spin_unlock(&lock->rlock);
    3f42:	4c 89 f7             	mov    %r14,%rdi
    3f45:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
    3f49:	e8 00 00 00 00       	call   3f4e <rfuse_writepage_locked+0xbe>
	struct fuse_file *ff = __rfuse_write_file_get(fi);
    3f4e:	4c 8b 45 c8          	mov    -0x38(%rbp),%r8
    3f52:	4d 85 c0             	test   %r8,%r8
    3f55:	0f 84 a3 01 00 00    	je     40fe <rfuse_writepage_locked+0x26e>
	error = -EIO;
    3f5b:	4c 89 43 58          	mov    %r8,0x58(%rbx)

    3f5f:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    3f63:	48 89 de             	mov    %rbx,%rsi
    3f66:	e8 c5 c4 ff ff       	call   430 <rfuse_writepage_add_to_bucket>
    3f6b:	49 8b 44 24 20       	mov    0x20(%r12),%rax
    3f70:	4c 89 e6             	mov    %r12,%rsi
    3f73:	4c 89 ef             	mov    %r13,%rdi
    3f76:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 3f7d <rfuse_writepage_locked+0xed>
    3f7d:	48 c1 e0 0c          	shl    $0xc,%rax
    3f81:	48 29 d6             	sub    %rdx,%rsi
    3f84:	48 29 d7             	sub    %rdx,%rdi
	rfuse_writepage_add_to_bucket(fc, r_wpa);
    3f87:	48 89 83 a0 00 00 00 	mov    %rax,0xa0(%rbx)
    3f8e:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 3f95 <rfuse_writepage_locked+0x105>
    3f95:	48 c1 fe 06          	sar    $0x6,%rsi
    3f99:	48 c1 ff 06          	sar    $0x6,%rdi
    3f9d:	48 c1 e6 0c          	shl    $0xc,%rsi
    3fa1:	48 c1 e7 0c          	shl    $0xc,%rdi
    3fa5:	48 01 c6             	add    %rax,%rsi
    3fa8:	48 01 c7             	add    %rax,%rdi
    3fab:	e8 00 00 00 00       	call   3fb0 <rfuse_writepage_locked+0x120>
	rp->num_pages = 1;
    3fb0:	48 8b 43 38          	mov    0x38(%rbx),%rax
	copy_highpage(tmp_page, page);
    3fb4:	83 4b 14 01          	orl    $0x1,0x14(%rbx)

    3fb8:	4c 89 ff             	mov    %r15,%rdi
	r_wpa->ria.write.in.write_flags |= FUSE_WRITE_CACHE;
    3fbb:	48 c7 83 88 00 00 00 	movq   $0x0,0x88(%rbx)
    3fc2:	00 00 00 00 

    3fc6:	c7 43 48 01 00 00 00 	movl   $0x1,0x48(%rbx)
	rp->num_pages = 1;
    3fcd:	4c 89 28             	mov    %r13,(%rax)
	rp->pages[0] = tmp_page;
    3fd0:	48 8b 43 40          	mov    0x40(%rbx),%rax
    3fd4:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
	rp->descs[0].offset = 0;
    3fdb:	48 8b 43 40          	mov    0x40(%rbx),%rax
    3fdf:	c7 00 00 10 00 00    	movl   $0x1000,(%rax)
	rp->descs[0].length = PAGE_SIZE;
    3fe5:	4c 89 bb 90 00 00 00 	mov    %r15,0x90(%rbx)

    3fec:	e8 00 00 00 00       	call   3ff1 <rfuse_writepage_locked+0x161>
    3ff1:	be 01 00 00 00       	mov    $0x1,%esi
    3ff6:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    3ffb:	48 8d b8 e8 00 00 00 	lea    0xe8(%rax),%rdi
    4002:	0f bd 15 00 00 00 00 	bsr    0x0(%rip),%edx        # 4009 <rfuse_writepage_locked+0x179>
    4009:	8d 14 d5 08 00 00 00 	lea    0x8(,%rdx,8),%edx
    4010:	e8 00 00 00 00       	call   4015 <rfuse_writepage_locked+0x185>
	inc_wb_stat(&inode_to_bdi(inode)->wb, WB_WRITEBACK);
    4015:	be 16 00 00 00       	mov    $0x16,%esi
    401a:	4c 89 ef             	mov    %r13,%rdi
    401d:	e8 00 00 00 00       	call   4022 <rfuse_writepage_locked+0x192>
	raw_spin_lock(&lock->rlock);
    4022:	4c 89 f7             	mov    %r14,%rdi
    4025:	e8 00 00 00 00       	call   402a <rfuse_writepage_locked+0x19a>
	spin_lock(&fi->lock);
    402a:	49 8d bf f0 02 00 00 	lea    0x2f0(%r15),%rdi
{
    4031:	48 89 de             	mov    %rbx,%rsi
    4034:	e8 07 c3 ff ff       	call   340 <rfuse_insert_writeback>
    4039:	48 85 c0             	test   %rax,%rax
    403c:	0f 85 ef 00 00 00    	jne    4131 <rfuse_writepage_locked+0x2a1>
	__list_add(new, head->prev, head);
    4042:	49 8b 87 c8 02 00 00 	mov    0x2c8(%r15),%rax
	tree_insert(&fi->writepages, r_wpa);
    4049:	48 8d 53 78          	lea    0x78(%rbx),%rdx
	list_add_tail(&r_wpa->queue_entry, &fi->queued_writes);
    404d:	4c 89 ff             	mov    %r15,%rdi

    4050:	45 31 ed             	xor    %r13d,%r13d
	tree_insert(&fi->writepages, r_wpa);
    4053:	49 8d b7 c0 02 00 00 	lea    0x2c0(%r15),%rsi
	next->prev = new;
    405a:	49 89 97 c8 02 00 00 	mov    %rdx,0x2c8(%r15)
    4061:	48 89 73 78          	mov    %rsi,0x78(%rbx)
	new->prev = prev;
    4065:	48 89 83 80 00 00 00 	mov    %rax,0x80(%rbx)
	WRITE_ONCE(prev->next, new);
    406c:	48 89 10             	mov    %rdx,(%rax)
	list_add_tail(&r_wpa->queue_entry, &fi->queued_writes);
    406f:	e8 00 00 00 00       	call   4074 <rfuse_writepage_locked+0x1e4>
	raw_spin_unlock(&lock->rlock);
    4074:	4c 89 f7             	mov    %r14,%rdi
    4077:	e8 00 00 00 00       	call   407c <rfuse_writepage_locked+0x1ec>

    407c:	4c 89 e7             	mov    %r12,%rdi
    407f:	e8 00 00 00 00       	call   4084 <rfuse_writepage_locked+0x1f4>
	return error;
    4084:	48 83 c4 10          	add    $0x10,%rsp
    4088:	44 89 e8             	mov    %r13d,%eax
    408b:	5b                   	pop    %rbx
    408c:	41 5c                	pop    %r12
    408e:	41 5d                	pop    %r13
    4090:	41 5e                	pop    %r14
    4092:	41 5f                	pop    %r15
    4094:	5d                   	pop    %rbp
    4095:	31 d2                	xor    %edx,%edx
    4097:	31 f6                	xor    %esi,%esi
    4099:	31 ff                	xor    %edi,%edi
    409b:	45 31 c0             	xor    %r8d,%r8d
    409e:	e9 00 00 00 00       	jmp    40a3 <rfuse_writepage_locked+0x213>
	struct page *tmp_page;
    40a3:	41 bd f4 ff ff ff    	mov    $0xfffffff4,%r13d
err_free:
    40a9:	48 89 df             	mov    %rbx,%rdi
    40ac:	e8 00 00 00 00       	call   40b1 <rfuse_writepage_locked+0x221>
err:
    40b1:	49 8b 5c 24 18       	mov    0x18(%r12),%rbx
	__filemap_set_wb_err(mapping, error);
    40b6:	44 89 ee             	mov    %r13d,%esi
    40b9:	48 89 df             	mov    %rbx,%rdi
    40bc:	e8 00 00 00 00       	call   40c1 <rfuse_writepage_locked+0x231>
	if (mapping->host)
    40c1:	48 8b 03             	mov    (%rbx),%rax
    40c4:	48 85 c0             	test   %rax,%rax
    40c7:	74 13                	je     40dc <rfuse_writepage_locked+0x24c>
		errseq_set(&mapping->host->i_sb->s_wb_err, error);
    40c9:	48 8b 78 28          	mov    0x28(%rax),%rdi
    40cd:	44 89 ee             	mov    %r13d,%esi
    40d0:	48 81 c7 6c 04 00 00 	add    $0x46c,%rdi
    40d7:	e8 00 00 00 00       	call   40dc <rfuse_writepage_locked+0x24c>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    40dc:	f0 80 8b 98 00 00 00 	lock orb $0x1,0x98(%rbx)
    40e3:	01 
	mapping_set_error(page->mapping, error);
    40e4:	4c 89 e7             	mov    %r12,%rdi
    40e7:	e8 00 00 00 00       	call   40ec <rfuse_writepage_locked+0x25c>
	end_page_writeback(page);
    40ec:	eb 96                	jmp    4084 <rfuse_writepage_locked+0x1f4>
	struct page *tmp_page;
    40ee:	41 bd f4 ff ff ff    	mov    $0xfffffff4,%r13d
    40f4:	eb bb                	jmp    40b1 <rfuse_writepage_locked+0x221>
    40f6:	4c 89 f7             	mov    %r14,%rdi
    40f9:	e8 00 00 00 00       	call   40fe <rfuse_writepage_locked+0x26e>
	struct fuse_file *ff = __rfuse_write_file_get(fi);
    40fe:	0f 0b                	ud2    
	error = -EIO;
    4100:	48 c7 43 58 00 00 00 	movq   $0x0,0x58(%rbx)
    4107:	00 
err_nofile:
    4108:	4c 89 ef             	mov    %r13,%rdi
    410b:	31 f6                	xor    %esi,%esi

    410d:	41 bd fb ff ff ff    	mov    $0xfffffffb,%r13d
err_nofile:
    4113:	e8 00 00 00 00       	call   4118 <rfuse_writepage_locked+0x288>
    4118:	eb 8f                	jmp    40a9 <rfuse_writepage_locked+0x219>
		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
    411a:	be 01 00 00 00       	mov    $0x1,%esi
    411f:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
    4123:	e8 00 00 00 00       	call   4128 <rfuse_writepage_locked+0x298>
    4128:	4c 8b 45 c8          	mov    -0x38(%rbp),%r8
    412c:	e9 11 fe ff ff       	jmp    3f42 <rfuse_writepage_locked+0xb2>
{
    4131:	0f 0b                	ud2    
    4133:	e9 0a ff ff ff       	jmp    4042 <rfuse_writepage_locked+0x1b2>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
    4138:	be 02 00 00 00       	mov    $0x2,%esi
    413d:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
    4141:	e8 00 00 00 00       	call   4146 <rfuse_writepage_locked+0x2b6>
    4146:	4c 8b 45 c8          	mov    -0x38(%rbp),%r8
    414a:	e9 f3 fd ff ff       	jmp    3f42 <rfuse_writepage_locked+0xb2>
    414f:	90                   	nop

0000000000004150 <__pfx_rfuse_writepage>:
    4150:	90                   	nop
    4151:	90                   	nop
    4152:	90                   	nop
    4153:	90                   	nop
    4154:	90                   	nop
    4155:	90                   	nop
    4156:	90                   	nop
    4157:	90                   	nop
    4158:	90                   	nop
    4159:	90                   	nop
    415a:	90                   	nop
    415b:	90                   	nop
    415c:	90                   	nop
    415d:	90                   	nop
    415e:	90                   	nop
    415f:	90                   	nop

0000000000004160 <rfuse_writepage>:
int rfuse_writepage(struct page *page, struct writeback_control *wbc)
    4160:	e8 00 00 00 00       	call   4165 <rfuse_writepage+0x5>
    4165:	55                   	push   %rbp
    4166:	48 89 e5             	mov    %rsp,%rbp
    4169:	41 54                	push   %r12
    416b:	49 89 f4             	mov    %rsi,%r12
    416e:	53                   	push   %rbx

    416f:	48 8b 47 18          	mov    0x18(%rdi),%rax
int rfuse_writepage(struct page *page, struct writeback_control *wbc)
    4173:	48 89 fb             	mov    %rdi,%rbx

    4176:	48 8b 77 20          	mov    0x20(%rdi),%rsi
	return rfuse_range_is_writeback(inode, index, index);
    417a:	48 8b 38             	mov    (%rax),%rdi
    417d:	48 89 f2             	mov    %rsi,%rdx
    4180:	e8 8b be ff ff       	call   10 <rfuse_range_is_writeback>

    4185:	84 c0                	test   %al,%al
    4187:	74 30                	je     41b9 <rfuse_writepage+0x59>
		 */
    4189:	41 83 7c 24 20 01    	cmpl   $0x1,0x20(%r12)
    418f:	74 4d                	je     41de <rfuse_writepage+0x7e>

    4191:	48 89 de             	mov    %rbx,%rsi
    4194:	4c 89 e7             	mov    %r12,%rdi

    4197:	45 31 e4             	xor    %r12d,%r12d

    419a:	e8 00 00 00 00       	call   419f <rfuse_writepage+0x3f>
		redirty_page_for_writepage(wbc, page);
    419f:	48 89 df             	mov    %rbx,%rdi
    41a2:	e8 00 00 00 00       	call   41a7 <rfuse_writepage+0x47>
	return err;
    41a7:	44 89 e0             	mov    %r12d,%eax
    41aa:	5b                   	pop    %rbx
    41ab:	41 5c                	pop    %r12
    41ad:	5d                   	pop    %rbp
    41ae:	31 d2                	xor    %edx,%edx
    41b0:	31 f6                	xor    %esi,%esi
    41b2:	31 ff                	xor    %edi,%edi
    41b4:	e9 00 00 00 00       	jmp    41b9 <rfuse_writepage+0x59>

    41b9:	48 89 df             	mov    %rbx,%rdi
    41bc:	e8 00 00 00 00       	call   41c1 <rfuse_writepage+0x61>
	err = rfuse_writepage_locked(page);
    41c1:	48 89 df             	mov    %rbx,%rdi

    41c4:	41 89 c4             	mov    %eax,%r12d
	err = rfuse_writepage_locked(page);
    41c7:	e8 00 00 00 00       	call   41cc <rfuse_writepage+0x6c>
	return err;
    41cc:	44 89 e0             	mov    %r12d,%eax
    41cf:	5b                   	pop    %rbx
    41d0:	41 5c                	pop    %r12
    41d2:	5d                   	pop    %rbp
    41d3:	31 d2                	xor    %edx,%edx
    41d5:	31 f6                	xor    %esi,%esi
    41d7:	31 ff                	xor    %edi,%edi
    41d9:	e9 00 00 00 00       	jmp    41de <rfuse_writepage+0x7e>
		 */
    41de:	0f 0b                	ud2    
    41e0:	eb af                	jmp    4191 <rfuse_writepage+0x31>
    41e2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    41e9:	00 00 00 00 
    41ed:	0f 1f 00             	nopl   (%rax)

00000000000041f0 <__pfx_rfuse_writepages>:
    41f0:	90                   	nop
    41f1:	90                   	nop
    41f2:	90                   	nop
    41f3:	90                   	nop
    41f4:	90                   	nop
    41f5:	90                   	nop
    41f6:	90                   	nop
    41f7:	90                   	nop
    41f8:	90                   	nop
    41f9:	90                   	nop
    41fa:	90                   	nop
    41fb:	90                   	nop
    41fc:	90                   	nop
    41fd:	90                   	nop
    41fe:	90                   	nop
    41ff:	90                   	nop

0000000000004200 <rfuse_writepages>:
			   struct writeback_control *wbc)
    4200:	e8 00 00 00 00       	call   4205 <rfuse_writepages+0x5>
    4205:	55                   	push   %rbp
    4206:	48 89 e5             	mov    %rsp,%rbp
    4209:	41 54                	push   %r12
    420b:	53                   	push   %rbx
    420c:	48 83 ec 30          	sub    $0x30,%rsp
{
    4210:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    4217:	00 00 
    4219:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    421d:	48 8b 07             	mov    (%rdi),%rax
  return sb->s_fs_info;
    4220:	48 8b 50 28          	mov    0x28(%rax),%rdx
  return get_fuse_mount_super(inode->i_sb)->fc;
    4224:	48 8b 92 80 03 00 00 	mov    0x380(%rdx),%rdx
    422b:	48 8b 0a             	mov    (%rdx),%rcx
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    422e:	48 8b 90 f8 02 00 00 	mov    0x2f8(%rax),%rdx
	struct fuse_conn *fc = get_fuse_conn(inode);
    4235:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    423c:	00 
    423d:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    4244:	00 
	err = -EIO;
    4245:	83 e2 08             	and    $0x8,%edx
	struct fuse_conn *fc = get_fuse_conn(inode);
    4248:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    424f:	00 
    4250:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    4257:	00 
    4258:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    425f:	00 
	err = -EIO;
    4260:	0f 85 9c 00 00 00    	jne    4302 <rfuse_writepages+0x102>
    4266:	48 89 fb             	mov    %rdi,%rbx
 */
static inline __alloc_size(1, 2) void *kmalloc_array(size_t n, size_t size, gfp_t flags)
{
	size_t bytes;

	if (unlikely(check_mul_overflow(n, size, &bytes)))
    4269:	8b 79 40             	mov    0x40(%rcx),%edi
    426c:	49 89 f4             	mov    %rsi,%r12
		return NULL;
	if (__builtin_constant_p(n) && __builtin_constant_p(size))
		return kmalloc(bytes, flags);
	return __kmalloc(bytes, flags);
    426f:	be 40 0d 00 00       	mov    $0xd40,%esi

    4274:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
	if (unlikely(check_mul_overflow(n, size, &bytes)))
    4278:	48 c1 e7 03          	shl    $0x3,%rdi
	return __kmalloc(bytes, flags);
    427c:	e8 00 00 00 00       	call   4281 <rfuse_writepages+0x81>
	err = -ENOMEM;
    4281:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
				  GFP_NOFS);
    4285:	48 85 c0             	test   %rax,%rax
    4288:	0f 84 84 00 00 00    	je     4312 <rfuse_writepages+0x112>

    428e:	48 89 df             	mov    %rbx,%rdi
    4291:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    4295:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    429c:	4c 89 e6             	mov    %r12,%rsi
    429f:	e8 00 00 00 00       	call   42a4 <rfuse_writepages+0xa4>
    42a4:	89 c3                	mov    %eax,%ebx
	err = write_cache_pages(mapping, wbc, rfuse_writepages_fill, &data);
    42a6:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    42aa:	48 85 c0             	test   %rax,%rax
    42ad:	74 10                	je     42bf <rfuse_writepages+0xbf>
	if (data.r_wpa) {
    42af:	8b 40 48             	mov    0x48(%rax),%eax
    42b2:	85 c0                	test   %eax,%eax
    42b4:	74 53                	je     4309 <rfuse_writepages+0x109>
		WARN_ON(!data.r_wpa->ria.rp.num_pages);
    42b6:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
    42ba:	e8 11 f5 ff ff       	call   37d0 <rfuse_writepages_send>

    42bf:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    42c3:	48 85 ff             	test   %rdi,%rdi
    42c6:	74 0b                	je     42d3 <rfuse_writepages+0xd3>
	if (data.ff)
    42c8:	31 c9                	xor    %ecx,%ecx
    42ca:	31 d2                	xor    %edx,%edx
    42cc:	31 f6                	xor    %esi,%esi
    42ce:	e8 9d c3 ff ff       	call   670 <rfuse_file_put>

    42d3:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    42d7:	e8 00 00 00 00       	call   42dc <rfuse_writepages+0xdc>
	return err;
    42dc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    42e0:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    42e7:	00 00 
    42e9:	75 22                	jne    430d <rfuse_writepages+0x10d>
    42eb:	48 83 c4 30          	add    $0x30,%rsp
    42ef:	89 d8                	mov    %ebx,%eax
    42f1:	5b                   	pop    %rbx
    42f2:	41 5c                	pop    %r12
    42f4:	5d                   	pop    %rbp
    42f5:	31 d2                	xor    %edx,%edx
    42f7:	31 c9                	xor    %ecx,%ecx
    42f9:	31 f6                	xor    %esi,%esi
    42fb:	31 ff                	xor    %edi,%edi
    42fd:	e9 00 00 00 00       	jmp    4302 <rfuse_writepages+0x102>

    4302:	bb fb ff ff ff       	mov    $0xfffffffb,%ebx
    4307:	eb d3                	jmp    42dc <rfuse_writepages+0xdc>
	if (data.r_wpa) {
    4309:	0f 0b                	ud2    
    430b:	eb a9                	jmp    42b6 <rfuse_writepages+0xb6>
	return err;
    430d:	e8 00 00 00 00       	call   4312 <rfuse_writepages+0x112>

    4312:	bb f4 ff ff ff       	mov    $0xfffffff4,%ebx

    4317:	eb c3                	jmp    42dc <rfuse_writepages+0xdc>
    4319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000004320 <__pfx_rfuse_write_end>:
    4320:	90                   	nop
    4321:	90                   	nop
    4322:	90                   	nop
    4323:	90                   	nop
    4324:	90                   	nop
    4325:	90                   	nop
    4326:	90                   	nop
    4327:	90                   	nop
    4328:	90                   	nop
    4329:	90                   	nop
    432a:	90                   	nop
    432b:	90                   	nop
    432c:	90                   	nop
    432d:	90                   	nop
    432e:	90                   	nop
    432f:	90                   	nop

0000000000004330 <rfuse_write_end>:
		struct page *page, void *fsdata)
    4330:	e8 00 00 00 00       	call   4335 <rfuse_write_end+0x5>
    4335:	55                   	push   %rbp
    4336:	48 89 e5             	mov    %rsp,%rbp
    4339:	41 56                	push   %r14
    433b:	41 55                	push   %r13
    433d:	41 54                	push   %r12
    433f:	45 89 c4             	mov    %r8d,%r12d
    4342:	53                   	push   %rbx
    4343:	4c 89 cb             	mov    %r9,%rbx
	/* Haven't copied anything?  Skip zeroing, size extending, dirtying. */
    4346:	45 85 c0             	test   %r8d,%r8d
    4349:	0f 85 82 00 00 00    	jne    43d1 <rfuse_write_end+0xa1>
unlock:
    434f:	48 89 df             	mov    %rbx,%rdi
    4352:	e8 00 00 00 00       	call   4357 <rfuse_write_end+0x27>
	unsigned long head = READ_ONCE(page->compound_head);
    4357:	48 8b 43 08          	mov    0x8(%rbx),%rax
	if (unlikely(head & 1))
    435b:	a8 01                	test   $0x1,%al
    435d:	0f 85 b6 00 00 00    	jne    4419 <rfuse_write_end+0xe9>
    4363:	66 90                	xchg   %ax,%ax
    4365:	66 90                	xchg   %ax,%ax
	return GEN_UNARY_RMWcc(LOCK_PREFIX "decl", v->counter, e);
    4367:	f0 ff 4b 34          	lock decl 0x34(%rbx)
	if (folio_put_testzero(folio))
    436b:	0f 84 fb 00 00 00    	je     446c <rfuse_write_end+0x13c>
	return copied;
    4371:	5b                   	pop    %rbx
    4372:	44 89 e0             	mov    %r12d,%eax
    4375:	41 5c                	pop    %r12
    4377:	41 5d                	pop    %r13
    4379:	41 5e                	pop    %r14
    437b:	5d                   	pop    %rbp
    437c:	31 d2                	xor    %edx,%edx
    437e:	31 f6                	xor    %esi,%esi
    4380:	31 ff                	xor    %edi,%edi
    4382:	45 31 c0             	xor    %r8d,%r8d
    4385:	45 31 c9             	xor    %r9d,%r9d
    4388:	e9 00 00 00 00       	jmp    438d <rfuse_write_end+0x5d>
    438d:	48 8b 03             	mov    (%rbx),%rax
    4390:	48 c1 e8 33          	shr    $0x33,%rax
    4394:	83 e0 07             	and    $0x7,%eax
	if (!is_zone_device_page(page))
    4397:	83 f8 04             	cmp    $0x4,%eax
    439a:	75 cb                	jne    4367 <rfuse_write_end+0x37>
	return __put_devmap_managed_page_refs(page, refs);
    439c:	be 01 00 00 00       	mov    $0x1,%esi
    43a1:	48 89 df             	mov    %rbx,%rdi
    43a4:	e8 00 00 00 00       	call   43a9 <rfuse_write_end+0x79>
	if (put_devmap_managed_page(&folio->page))
    43a9:	84 c0                	test   %al,%al
    43ab:	75 c4                	jne    4371 <rfuse_write_end+0x41>
    43ad:	eb b8                	jmp    4367 <rfuse_write_end+0x37>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    43af:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
    43b5:	75 ae                	jne    4365 <rfuse_write_end+0x35>
    43b7:	48 8b 03             	mov    (%rbx),%rax
    43ba:	a9 00 00 01 00       	test   $0x10000,%eax
    43bf:	74 a4                	je     4365 <rfuse_write_end+0x35>
		unsigned long head = READ_ONCE(page[1].compound_head);
    43c1:	48 8b 43 48          	mov    0x48(%rbx),%rax
			return (const struct page *)(head - 1);
    43c5:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    43c9:	a8 01                	test   $0x1,%al
    43cb:	48 0f 45 da          	cmovne %rdx,%rbx
    43cf:	eb 94                	jmp    4365 <rfuse_write_end+0x35>
	unsigned long head = READ_ONCE(page->compound_head);
    43d1:	49 8b 41 08          	mov    0x8(%r9),%rax
    43d5:	49 89 d5             	mov    %rdx,%r13
	if (unlikely(head & 1))
    43d8:	a8 01                	test   $0x1,%al
    43da:	0f 85 b0 00 00 00    	jne    4490 <rfuse_write_end+0x160>
    43e0:	66 90                	xchg   %ax,%ax
		return page;
    43e2:	4c 89 c8             	mov    %r9,%rax
{
    43e5:	48 8b 53 18          	mov    0x18(%rbx),%rdx
    43e9:	48 8b 00             	mov    (%rax),%rax
    43ec:	4c 8b 32             	mov    (%rdx),%r14
	if (ret)
    43ef:	a8 04                	test   $0x4,%al
    43f1:	74 2f                	je     4422 <rfuse_write_end+0xf2>
	}
    43f3:	4d 39 6e 50          	cmp    %r13,0x50(%r14)
    43f7:	7d 04                	jge    43fd <rfuse_write_end+0xcd>
	inode->i_size = i_size;
    43f9:	4d 89 6e 50          	mov    %r13,0x50(%r14)
    	i_size_write(inode, pos);
    43fd:	48 89 df             	mov    %rbx,%rdi
    4400:	e8 00 00 00 00       	call   4405 <rfuse_write_end+0xd5>
unlock:
    4405:	48 89 df             	mov    %rbx,%rdi
    4408:	e8 00 00 00 00       	call   440d <rfuse_write_end+0xdd>
	unsigned long head = READ_ONCE(page->compound_head);
    440d:	48 8b 43 08          	mov    0x8(%rbx),%rax
	if (unlikely(head & 1))
    4411:	a8 01                	test   $0x1,%al
    4413:	0f 84 4a ff ff ff    	je     4363 <rfuse_write_end+0x33>
		return head - 1;
    4419:	48 8d 58 ff          	lea    -0x1(%rax),%rbx
    441d:	e9 43 ff ff ff       	jmp    4365 <rfuse_write_end+0x35>
		/* Zero any unwritten bytes at the end of the page */
    4422:	4b 8d 74 25 00       	lea    0x0(%r13,%r12,1),%rsi
		size_t endoff = (pos + copied) & ~PAGE_MASK;
    4427:	81 e6 ff 0f 00 00    	and    $0xfff,%esi
    442d:	75 2e                	jne    445d <rfuse_write_end+0x12d>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    442f:	f0 80 0b 04          	lock orb $0x4,(%rbx)
}
    4433:	eb be                	jmp    43f3 <rfuse_write_end+0xc3>
		return page;
    4435:	4c 89 c8             	mov    %r9,%rax
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    4438:	41 f7 c1 ff 0f 00 00 	test   $0xfff,%r9d
    443f:	75 a4                	jne    43e5 <rfuse_write_end+0xb5>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    4441:	49 8b 11             	mov    (%r9),%rdx
    4444:	f7 c2 00 00 01 00    	test   $0x10000,%edx
    444a:	74 99                	je     43e5 <rfuse_write_end+0xb5>
		unsigned long head = READ_ONCE(page[1].compound_head);
    444c:	49 8b 51 48          	mov    0x48(%r9),%rdx
			return (const struct page *)(head - 1);
    4450:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    4454:	83 e2 01             	and    $0x1,%edx
    4457:	49 0f 44 c1          	cmove  %r9,%rax
    445b:	eb 88                	jmp    43e5 <rfuse_write_end+0xb5>
	zero_user_segments(page, start, end, 0, 0);
    445d:	ba 00 10 00 00       	mov    $0x1000,%edx
    4462:	48 89 df             	mov    %rbx,%rdi
    4465:	e8 26 c1 ff ff       	call   590 <zero_user_segments.constprop.0>
}
    446a:	eb c3                	jmp    442f <rfuse_write_end+0xff>
		__folio_put(folio);
    446c:	48 89 df             	mov    %rbx,%rdi
    446f:	e8 00 00 00 00       	call   4474 <rfuse_write_end+0x144>
	return copied;
    4474:	44 89 e0             	mov    %r12d,%eax
    4477:	5b                   	pop    %rbx
    4478:	41 5c                	pop    %r12
    447a:	41 5d                	pop    %r13
    447c:	41 5e                	pop    %r14
    447e:	5d                   	pop    %rbp
    447f:	31 d2                	xor    %edx,%edx
    4481:	31 f6                	xor    %esi,%esi
    4483:	31 ff                	xor    %edi,%edi
    4485:	45 31 c0             	xor    %r8d,%r8d
    4488:	45 31 c9             	xor    %r9d,%r9d
    448b:	e9 00 00 00 00       	jmp    4490 <rfuse_write_end+0x160>
		return head - 1;
    4490:	48 83 e8 01          	sub    $0x1,%rax
    4494:	e9 4c ff ff ff       	jmp    43e5 <rfuse_write_end+0xb5>
    4499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000044a0 <__pfx_rfuse_launder_folio>:
    44a0:	90                   	nop
    44a1:	90                   	nop
    44a2:	90                   	nop
    44a3:	90                   	nop
    44a4:	90                   	nop
    44a5:	90                   	nop
    44a6:	90                   	nop
    44a7:	90                   	nop
    44a8:	90                   	nop
    44a9:	90                   	nop
    44aa:	90                   	nop
    44ab:	90                   	nop
    44ac:	90                   	nop
    44ad:	90                   	nop
    44ae:	90                   	nop
    44af:	90                   	nop

00000000000044b0 <rfuse_launder_folio>:
int rfuse_launder_folio(struct folio *folio)
    44b0:	e8 00 00 00 00       	call   44b5 <rfuse_launder_folio+0x5>
    44b5:	55                   	push   %rbp
    44b6:	48 89 e5             	mov    %rsp,%rbp
    44b9:	41 55                	push   %r13
    44bb:	41 54                	push   %r12
    44bd:	53                   	push   %rbx
    44be:	48 89 fb             	mov    %rdi,%rbx
	int err = 0;
    44c1:	e8 00 00 00 00       	call   44c6 <rfuse_launder_folio+0x16>
    44c6:	84 c0                	test   %al,%al
    44c8:	75 04                	jne    44ce <rfuse_launder_folio+0x1e>
{
    44ca:	31 c0                	xor    %eax,%eax
	}
    44cc:	eb 2e                	jmp    44fc <rfuse_launder_folio+0x4c>
	if (folio_clear_dirty_for_io(folio)) {
    44ce:	48 8b 43 18          	mov    0x18(%rbx),%rax
		/* Serialize with pending writeback for the same page */
    44d2:	4c 8b 63 20          	mov    0x20(%rbx),%r12
	if (folio_clear_dirty_for_io(folio)) {
    44d6:	4c 8b 28             	mov    (%rax),%r13
    44d9:	e8 00 00 00 00       	call   44de <rfuse_launder_folio+0x2e>
	return rfuse_range_is_writeback(inode, index, index);
    44de:	4c 89 e2             	mov    %r12,%rdx
    44e1:	4c 89 e6             	mov    %r12,%rsi
    44e4:	4c 89 ef             	mov    %r13,%rdi
    44e7:	e8 24 bb ff ff       	call   10 <rfuse_range_is_writeback>
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
    44ec:	84 c0                	test   %al,%al
    44ee:	75 47                	jne    4537 <rfuse_launder_folio+0x87>
		rfuse_wait_on_page_writeback(inode, folio->index);
    44f0:	48 89 df             	mov    %rbx,%rdi
    44f3:	e8 00 00 00 00       	call   44f8 <rfuse_launder_folio+0x48>
		err = rfuse_writepage_locked(&folio->page);
    44f8:	85 c0                	test   %eax,%eax
    44fa:	74 11                	je     450d <rfuse_launder_folio+0x5d>
  // return err;
    44fc:	5b                   	pop    %rbx
    44fd:	41 5c                	pop    %r12
    44ff:	41 5d                	pop    %r13
    4501:	5d                   	pop    %rbp
    4502:	31 d2                	xor    %edx,%edx
    4504:	31 f6                	xor    %esi,%esi
    4506:	31 ff                	xor    %edi,%edi
    4508:	e9 00 00 00 00       	jmp    450d <rfuse_launder_folio+0x5d>
		if (!err)
    450d:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
    4511:	e8 00 00 00 00       	call   4516 <rfuse_launder_folio+0x66>
	return rfuse_range_is_writeback(inode, index, index);
    4516:	4c 89 ef             	mov    %r13,%rdi
    4519:	48 89 da             	mov    %rbx,%rdx
    451c:	48 89 de             	mov    %rbx,%rsi
    451f:	e8 ec ba ff ff       	call   10 <rfuse_range_is_writeback>
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
    4524:	84 c0                	test   %al,%al
    4526:	74 a2                	je     44ca <rfuse_launder_folio+0x1a>
    4528:	48 89 de             	mov    %rbx,%rsi
    452b:	4c 89 ef             	mov    %r13,%rdi
    452e:	e8 7d bf ff ff       	call   4b0 <rfuse_wait_on_page_writeback.part.0>
{
    4533:	31 c0                	xor    %eax,%eax
	}
    4535:	eb c5                	jmp    44fc <rfuse_launder_folio+0x4c>
    4537:	4c 89 e6             	mov    %r12,%rsi
    453a:	4c 89 ef             	mov    %r13,%rdi
    453d:	e8 6e bf ff ff       	call   4b0 <rfuse_wait_on_page_writeback.part.0>
    4542:	eb ac                	jmp    44f0 <rfuse_launder_folio+0x40>
    4544:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    454b:	00 00 00 00 
    454f:	90                   	nop

0000000000004550 <__pfx_rfuse_read_args_fill>:
    4550:	90                   	nop
    4551:	90                   	nop
    4552:	90                   	nop
    4553:	90                   	nop
    4554:	90                   	nop
    4555:	90                   	nop
    4556:	90                   	nop
    4557:	90                   	nop
    4558:	90                   	nop
    4559:	90                   	nop
    455a:	90                   	nop
    455b:	90                   	nop
    455c:	90                   	nop
    455d:	90                   	nop
    455e:	90                   	nop
    455f:	90                   	nop

0000000000004560 <rfuse_read_args_fill>:
void rfuse_read_args_fill(struct rfuse_io_args *ria, struct file *file, loff_t pos,
    4560:	e8 00 00 00 00       	call   4565 <rfuse_read_args_fill+0x5>
    4565:	55                   	push   %rbp
    4566:	49 89 d1             	mov    %rdx,%r9

    4569:	48 8b 96 c8 00 00 00 	mov    0xc8(%rsi),%rdx
	struct rfuse_req *r_req = ria->r_req;
    4570:	48 83 c7 38          	add    $0x38,%rdi
	struct fuse_file *ff = file->private_data;
    4574:	48 8b 47 f8          	mov    -0x8(%rdi),%rax

    4578:	4c 8b 52 18          	mov    0x18(%rdx),%r10
	in->fh = ff->fh;
    457c:	4c 89 88 80 00 00 00 	mov    %r9,0x80(%rax)
void rfuse_read_args_fill(struct rfuse_io_args *ria, struct file *file, loff_t pos,
    4583:	48 89 e5             	mov    %rsp,%rbp

    4586:	4c 89 50 78          	mov    %r10,0x78(%rax)
	in->offset = pos;
    458a:	89 88 88 00 00 00    	mov    %ecx,0x88(%rax)
	in->size = count;
    4590:	8b 76 48             	mov    0x48(%rsi),%esi

    4593:	44 89 40 10          	mov    %r8d,0x10(%rax)
	in->size = count;
    4597:	89 b0 98 00 00 00    	mov    %esi,0x98(%rax)
	r_req->in.opcode = opcode;
    459d:	48 8b 52 20          	mov    0x20(%rdx),%rdx
	r_req->in.nodeid = ff->nodeid;
    45a1:	80 88 e8 00 00 00 20 	orb    $0x20,0xe8(%rax)
	r_req->in.opcode = opcode;
    45a8:	48 89 50 08          	mov    %rdx,0x8(%rax)

    45ac:	89 48 38             	mov    %ecx,0x38(%rax)
	struct rfuse_req *r_req = ria->r_req;
    45af:	48 89 b8 f0 00 00 00 	mov    %rdi,0xf0(%rax)
	r_req->rp = rp;
    45b6:	5d                   	pop    %rbp
    45b7:	31 c0                	xor    %eax,%eax
    45b9:	31 d2                	xor    %edx,%edx
    45bb:	31 c9                	xor    %ecx,%ecx
    45bd:	31 f6                	xor    %esi,%esi
    45bf:	31 ff                	xor    %edi,%edi
    45c1:	45 31 c0             	xor    %r8d,%r8d
    45c4:	45 31 c9             	xor    %r9d,%r9d
    45c7:	45 31 d2             	xor    %r10d,%r10d
    45ca:	e9 00 00 00 00       	jmp    45cf <rfuse_read_args_fill+0x6f>
    45cf:	90                   	nop

00000000000045d0 <__pfx_rfuse_do_readpage>:
    45d0:	90                   	nop
    45d1:	90                   	nop
    45d2:	90                   	nop
    45d3:	90                   	nop
    45d4:	90                   	nop
    45d5:	90                   	nop
    45d6:	90                   	nop
    45d7:	90                   	nop
    45d8:	90                   	nop
    45d9:	90                   	nop
    45da:	90                   	nop
    45db:	90                   	nop
    45dc:	90                   	nop
    45dd:	90                   	nop
    45de:	90                   	nop
    45df:	90                   	nop

00000000000045e0 <rfuse_do_readpage>:

    45e0:	e8 00 00 00 00       	call   45e5 <rfuse_do_readpage+0x5>
    45e5:	55                   	push   %rbp
	struct fuse_page_desc desc = { .length = PAGE_SIZE };
    45e6:	b9 0c 00 00 00       	mov    $0xc,%ecx

    45eb:	48 89 e5             	mov    %rsp,%rbp
    45ee:	41 57                	push   %r15
    45f0:	41 56                	push   %r14
    45f2:	41 55                	push   %r13
    45f4:	41 54                	push   %r12
    45f6:	49 89 fc             	mov    %rdi,%r12
    45f9:	53                   	push   %rbx
    45fa:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    4601:	48 89 b5 60 ff ff ff 	mov    %rsi,-0xa0(%rbp)
	return ((loff_t)page->index) << PAGE_SHIFT;
    4608:	4c 8b 7e 20          	mov    0x20(%rsi),%r15
    460c:	4c 89 f8             	mov    %r15,%rax
int rfuse_do_readpage(struct file *file, struct page *page){
    460f:	65 48 8b 14 25 28 00 	mov    %gs:0x28,%rdx
    4616:	00 00 
    4618:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    461c:	48 8b 56 18          	mov    0x18(%rsi),%rdx
    4620:	48 c1 e0 0c          	shl    $0xc,%rax

    4624:	31 f6                	xor    %esi,%esi
    4626:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
	struct fuse_page_desc desc = { .length = PAGE_SIZE };
    462d:	31 c0                	xor    %eax,%eax
int rfuse_do_readpage(struct file *file, struct page *page){
    462f:	4c 8b 2a             	mov    (%rdx),%r13
	loff_t pos = page_offset(page);
    4632:	48 c7 85 68 ff ff ff 	movq   $0x1000,-0x98(%rbp)
    4639:	00 10 00 00 
  return sb->s_fs_info;
    463d:	49 8b 55 28          	mov    0x28(%r13),%rdx
    4641:	4c 8b b2 80 03 00 00 	mov    0x380(%rdx),%r14
	struct fuse_page_desc desc = { .length = PAGE_SIZE };
    4648:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    464f:	48 89 d7             	mov    %rdx,%rdi

    4652:	31 d2                	xor    %edx,%edx
	struct fuse_page_desc desc = { .length = PAGE_SIZE };
    4654:	f3 48 ab             	rep stos %rax,%es:(%rdi)

    4657:	4c 89 f7             	mov    %r14,%rdi
    465a:	e8 00 00 00 00       	call   465f <rfuse_do_readpage+0x7f>
	ria.r_req->out_pages = true;
    465f:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%rbp)
	ria.r_req->page_zeroing = true;
    4666:	80 88 e8 00 00 00 50 	orb    $0x50,0xe8(%rax)

    466d:	48 89 c3             	mov    %rax,%rbx
	r_req = rfuse_get_req(fm, false, false);
    4670:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
	ria.rp.num_pages = 1;
    4674:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    467b:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
	ria.rp.pages = &page;
    467f:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    4686:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
	 */
    468a:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    4691:	48 8b 40 20          	mov    0x20(%rax),%rax
    4695:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
    469c:	e8 00 00 00 00       	call   46a1 <rfuse_do_readpage+0xc1>
	return rfuse_range_is_writeback(inode, index, index);
    46a1:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
    46a8:	4c 89 ef             	mov    %r13,%rdi
    46ab:	48 89 f2             	mov    %rsi,%rdx
    46ae:	e8 5d b9 ff ff       	call   10 <rfuse_range_is_writeback>
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
    46b3:	84 c0                	test   %al,%al
    46b5:	0f 85 27 01 00 00    	jne    47e2 <rfuse_do_readpage+0x202>

    46bb:	49 8b 06             	mov    (%r14),%rax
	/* Don't overflow end offset */
    46be:	8b 95 68 ff ff ff    	mov    -0x98(%rbp),%edx
    46c4:	48 be ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rsi
    46cb:	ff ff 7f 
    46ce:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
	return __READ_ONCE((v)->counter);
    46d5:	4c 8b b0 a0 01 00 00 	mov    0x1a0(%rax),%r14
    46dc:	8d 42 ff             	lea    -0x1(%rdx),%eax
    46df:	48 89 c1             	mov    %rax,%rcx
    46e2:	48 01 f8             	add    %rdi,%rax
    46e5:	48 39 f0             	cmp    %rsi,%rax
    46e8:	75 08                	jne    46f2 <rfuse_do_readpage+0x112>
	if (pos + (desc.length - 1) == LLONG_MAX)
    46ea:	89 8d 68 ff ff ff    	mov    %ecx,-0x98(%rbp)
    46f0:	89 ca                	mov    %ecx,%edx

    46f2:	49 8b 8c 24 c8 00 00 	mov    0xc8(%r12),%rcx
    46f9:	00 
	struct fuse_file *ff = file->private_data;
    46fa:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
	in->fh = ff->fh;
    46fe:	4d 89 f8             	mov    %r15,%r8
	rfuse_read_args_fill(&ria, file, pos, desc.length, FUSE_READ);
    4701:	48 89 df             	mov    %rbx,%rdi
	in->fh = ff->fh;
    4704:	49 c1 e0 0c          	shl    $0xc,%r8

    4708:	48 8b 71 18          	mov    0x18(%rcx),%rsi
	in->fh = ff->fh;
    470c:	4c 89 80 80 00 00 00 	mov    %r8,0x80(%rax)
	in->offset = pos;
    4713:	89 90 88 00 00 00    	mov    %edx,0x88(%rax)

    4719:	48 89 70 78          	mov    %rsi,0x78(%rax)
	in->size = count;
    471d:	41 8b 74 24 48       	mov    0x48(%r12),%esi

    4722:	c7 40 10 0f 00 00 00 	movl   $0xf,0x10(%rax)
	in->size = count;
    4729:	89 b0 98 00 00 00    	mov    %esi,0x98(%rax)
	r_req->in.opcode = opcode;
    472f:	48 8b 49 20          	mov    0x20(%rcx),%rcx

    4733:	89 50 38             	mov    %edx,0x38(%rax)
	r_req->out.arglen = count;
    4736:	48 8d 55 a8          	lea    -0x58(%rbp),%rdx
	r_req->in.nodeid = ff->nodeid;
    473a:	80 88 e8 00 00 00 20 	orb    $0x20,0xe8(%rax)
	r_req->in.opcode = opcode;
    4741:	48 89 48 08          	mov    %rcx,0x8(%rax)
	r_req->out.arglen = count;
    4745:	48 89 90 f0 00 00 00 	mov    %rdx,0xf0(%rax)
	rfuse_read_args_fill(&ria, file, pos, desc.length, FUSE_READ);
    474c:	e8 00 00 00 00       	call   4751 <rfuse_do_readpage+0x171>
	res = rfuse_simple_request(r_req);
    4751:	48 89 df             	mov    %rbx,%rdi
	rfuse_read_args_fill(&ria, file, pos, desc.length, FUSE_READ);
    4754:	49 89 c4             	mov    %rax,%r12
	res = rfuse_simple_request(r_req);
    4757:	e8 00 00 00 00       	call   475c <rfuse_do_readpage+0x17c>
	if (res < 0)
    475c:	44 89 e0             	mov    %r12d,%eax
	rfuse_put_request(r_req);
    475f:	4d 85 e4             	test   %r12,%r12
    4762:	78 18                	js     477c <rfuse_do_readpage+0x19c>
	 */
    4764:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    476a:	4c 39 e0             	cmp    %r12,%rax
    476d:	7f 3d                	jg     47ac <rfuse_do_readpage+0x1cc>

    476f:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    4776:	f0 80 08 04          	lock orb $0x4,(%rax)

    477a:	31 c0                	xor    %eax,%eax
	return 0;
    477c:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    4780:	65 48 2b 14 25 28 00 	sub    %gs:0x28,%rdx
    4787:	00 00 
    4789:	75 6b                	jne    47f6 <rfuse_do_readpage+0x216>
    478b:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    4792:	5b                   	pop    %rbx
    4793:	41 5c                	pop    %r12
    4795:	41 5d                	pop    %r13
    4797:	41 5e                	pop    %r14
    4799:	41 5f                	pop    %r15
    479b:	5d                   	pop    %rbp
    479c:	31 d2                	xor    %edx,%edx
    479e:	31 c9                	xor    %ecx,%ecx
    47a0:	31 f6                	xor    %esi,%esi
    47a2:	31 ff                	xor    %edi,%edi
    47a4:	45 31 c0             	xor    %r8d,%r8d
    47a7:	e9 00 00 00 00       	jmp    47ac <rfuse_do_readpage+0x1cc>
    47ac:	49 8b 45 28          	mov    0x28(%r13),%rax
  return get_fuse_mount_super(inode->i_sb)->fc;
    47b0:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax
	 */
    47b7:	48 8b 00             	mov    (%rax),%rax
    47ba:	f6 80 35 01 00 00 40 	testb  $0x40,0x135(%rax)
    47c1:	75 ac                	jne    476f <rfuse_do_readpage+0x18f>
	if (!fc->writeback_cache) {
    47c3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
		loff_t pos = page_offset(rp->pages[0]) + num_read;
    47c7:	4c 89 f2             	mov    %r14,%rdx
    47ca:	4c 89 ef             	mov    %r13,%rdi
    47cd:	48 8b 00             	mov    (%rax),%rax
	if (!fc->writeback_cache) {
    47d0:	48 8b 70 20          	mov    0x20(%rax),%rsi
    47d4:	48 c1 e6 0c          	shl    $0xc,%rsi
    47d8:	4c 01 e6             	add    %r12,%rsi
		loff_t pos = page_offset(rp->pages[0]) + num_read;
    47db:	e8 d0 b8 ff ff       	call   b0 <rfuse_read_update_size>
    47e0:	eb 8d                	jmp    476f <rfuse_do_readpage+0x18f>
    47e2:	48 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%rsi
    47e9:	4c 89 ef             	mov    %r13,%rdi
    47ec:	e8 bf bc ff ff       	call   4b0 <rfuse_wait_on_page_writeback.part.0>
    47f1:	e9 c5 fe ff ff       	jmp    46bb <rfuse_do_readpage+0xdb>
	return 0;
    47f6:	e8 00 00 00 00       	call   47fb <rfuse_do_readpage+0x21b>
    47fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000004800 <__pfx_rfuse_write_begin>:
    4800:	90                   	nop
    4801:	90                   	nop
    4802:	90                   	nop
    4803:	90                   	nop
    4804:	90                   	nop
    4805:	90                   	nop
    4806:	90                   	nop
    4807:	90                   	nop
    4808:	90                   	nop
    4809:	90                   	nop
    480a:	90                   	nop
    480b:	90                   	nop
    480c:	90                   	nop
    480d:	90                   	nop
    480e:	90                   	nop
    480f:	90                   	nop

0000000000004810 <rfuse_write_begin>:
		struct page **pagep, void **fsdata)
    4810:	e8 00 00 00 00       	call   4815 <rfuse_write_begin+0x5>
    4815:	55                   	push   %rbp
    4816:	48 89 e5             	mov    %rsp,%rbp
    4819:	41 57                	push   %r15
    481b:	41 56                	push   %r14
    481d:	41 55                	push   %r13
    481f:	49 89 fd             	mov    %rdi,%r13
    4822:	41 54                	push   %r12
    4824:	49 89 f4             	mov    %rsi,%r12
{
    4827:	48 89 d6             	mov    %rdx,%rsi
		struct page **pagep, void **fsdata)
    482a:	53                   	push   %rbx
{
    482b:	48 c1 fe 0c          	sar    $0xc,%rsi
		struct page **pagep, void **fsdata)
    482f:	48 89 d3             	mov    %rdx,%rbx
    4832:	48 83 ec 18          	sub    $0x18,%rsp
    4836:	48 8b 87 a8 00 00 00 	mov    0xa8(%rdi),%rax
    483d:	89 4d c4             	mov    %ecx,-0x3c(%rbp)
    4840:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
  return sb->s_fs_info;
    4844:	48 8b 40 28          	mov    0x28(%rax),%rax
  return get_fuse_mount_super(inode->i_sb)->fc;
    4848:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax
	
    484f:	48 8b 00             	mov    (%rax),%rax
    4852:	f6 80 35 01 00 00 40 	testb  $0x40,0x135(%rax)
    4859:	0f 84 2d 01 00 00    	je     498c <rfuse_write_begin+0x17c>

    485f:	4c 89 e7             	mov    %r12,%rdi
    4862:	e8 00 00 00 00       	call   4867 <rfuse_write_begin+0x57>
    4867:	49 89 c6             	mov    %rax,%r14
	page = grab_cache_page_write_begin(mapping, index);
    486a:	48 85 c0             	test   %rax,%rax
    486d:	0f 84 78 01 00 00    	je     49eb <rfuse_write_begin+0x1db>

    4873:	4c 8b 78 20          	mov    0x20(%rax),%r15
    4877:	49 8b 04 24          	mov    (%r12),%rax
    487b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    487f:	e8 00 00 00 00       	call   4884 <rfuse_write_begin+0x74>
	return rfuse_range_is_writeback(inode, index, index);
    4884:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    4888:	4c 89 fa             	mov    %r15,%rdx
    488b:	4c 89 fe             	mov    %r15,%rsi
    488e:	e8 7d b7 ff ff       	call   10 <rfuse_range_is_writeback>
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
    4893:	84 c0                	test   %al,%al
    4895:	0f 85 9f 00 00 00    	jne    493a <rfuse_write_begin+0x12a>
	unsigned long head = READ_ONCE(page->compound_head);
    489b:	49 8b 46 08          	mov    0x8(%r14),%rax
	if (unlikely(head & 1))
    489f:	a8 01                	test   $0x1,%al
    48a1:	0f 85 ec 00 00 00    	jne    4993 <rfuse_write_begin+0x183>
    48a7:	66 90                	xchg   %ax,%ax
    48a9:	4c 89 f0             	mov    %r14,%rax
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    48ac:	48 8b 00             	mov    (%rax),%rax
	if (ret)
    48af:	a8 04                	test   $0x4,%al
    48b1:	74 51                	je     4904 <rfuse_write_begin+0xf4>
success:
    48b3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
	*pagep = page;
    48b7:	31 db                	xor    %ebx,%ebx
success:
    48b9:	4c 89 30             	mov    %r14,(%rax)
	return err;
    48bc:	48 83 c4 18          	add    $0x18,%rsp
    48c0:	89 d8                	mov    %ebx,%eax
    48c2:	5b                   	pop    %rbx
    48c3:	41 5c                	pop    %r12
    48c5:	41 5d                	pop    %r13
    48c7:	41 5e                	pop    %r14
    48c9:	41 5f                	pop    %r15
    48cb:	5d                   	pop    %rbp
    48cc:	31 d2                	xor    %edx,%edx
    48ce:	31 c9                	xor    %ecx,%ecx
    48d0:	31 f6                	xor    %esi,%esi
    48d2:	31 ff                	xor    %edi,%edi
    48d4:	45 31 c0             	xor    %r8d,%r8d
    48d7:	e9 00 00 00 00       	jmp    48dc <rfuse_write_begin+0xcc>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    48dc:	4c 89 f0             	mov    %r14,%rax
    48df:	41 f7 c6 ff 0f 00 00 	test   $0xfff,%r14d
    48e6:	75 c4                	jne    48ac <rfuse_write_begin+0x9c>
    48e8:	49 8b 16             	mov    (%r14),%rdx
    48eb:	f7 c2 00 00 01 00    	test   $0x10000,%edx
    48f1:	74 b9                	je     48ac <rfuse_write_begin+0x9c>
		unsigned long head = READ_ONCE(page[1].compound_head);
    48f3:	49 8b 56 48          	mov    0x48(%r14),%rdx
			return (const struct page *)(head - 1);
    48f7:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    48fb:	83 e2 01             	and    $0x1,%edx
    48fe:	49 0f 44 c6          	cmove  %r14,%rax
    4902:	eb a8                	jmp    48ac <rfuse_write_begin+0x9c>

    4904:	81 7d c4 00 10 00 00 	cmpl   $0x1000,-0x3c(%rbp)
    490b:	74 a6                	je     48b3 <rfuse_write_begin+0xa3>
	return inode->i_size;
    490d:	49 8b 04 24          	mov    (%r12),%rax
	fsize = i_size_read(mapping->host);
    4911:	48 89 da             	mov    %rbx,%rdx
    4914:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    491b:	48 3b 50 50          	cmp    0x50(%rax),%rdx
    491f:	72 2a                	jb     494b <rfuse_write_begin+0x13b>
		size_t off = pos & ~PAGE_MASK;
    4921:	81 e3 ff 0f 00 00    	and    $0xfff,%ebx
    4927:	74 8a                	je     48b3 <rfuse_write_begin+0xa3>
	zero_user_segments(page, start, end, 0, 0);
    4929:	89 da                	mov    %ebx,%edx
    492b:	31 f6                	xor    %esi,%esi
    492d:	4c 89 f7             	mov    %r14,%rdi
    4930:	e8 5b bc ff ff       	call   590 <zero_user_segments.constprop.0>
}
    4935:	e9 79 ff ff ff       	jmp    48b3 <rfuse_write_begin+0xa3>
    493a:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    493e:	4c 89 fe             	mov    %r15,%rsi
    4941:	e8 6a bb ff ff       	call   4b0 <rfuse_wait_on_page_writeback.part.0>
    4946:	e9 50 ff ff ff       	jmp    489b <rfuse_write_begin+0x8b>
	}
    494b:	4c 89 f6             	mov    %r14,%rsi
    494e:	4c 89 ef             	mov    %r13,%rdi
    4951:	e8 00 00 00 00       	call   4956 <rfuse_write_begin+0x146>
    4956:	89 c3                	mov    %eax,%ebx
	err = rfuse_do_readpage(file, page);
    4958:	85 c0                	test   %eax,%eax
    495a:	0f 84 53 ff ff ff    	je     48b3 <rfuse_write_begin+0xa3>
cleanup:
    4960:	4c 89 f7             	mov    %r14,%rdi
    4963:	e8 00 00 00 00       	call   4968 <rfuse_write_begin+0x158>
	unsigned long head = READ_ONCE(page->compound_head);
    4968:	49 8b 46 08          	mov    0x8(%r14),%rax
	if (unlikely(head & 1))
    496c:	a8 01                	test   $0x1,%al
    496e:	75 2c                	jne    499c <rfuse_write_begin+0x18c>
    4970:	66 90                	xchg   %ax,%ax
    4972:	66 90                	xchg   %ax,%ax
    4974:	f0 41 ff 4e 34       	lock decl 0x34(%r14)
	if (folio_put_testzero(folio))
    4979:	0f 85 3d ff ff ff    	jne    48bc <rfuse_write_begin+0xac>
		__folio_put(folio);
    497f:	4c 89 f7             	mov    %r14,%rdi
    4982:	e8 00 00 00 00       	call   4987 <rfuse_write_begin+0x177>
    4987:	e9 30 ff ff ff       	jmp    48bc <rfuse_write_begin+0xac>
	
    498c:	0f 0b                	ud2    
    498e:	e9 cc fe ff ff       	jmp    485f <rfuse_write_begin+0x4f>
		return head - 1;
    4993:	48 83 e8 01          	sub    $0x1,%rax
    4997:	e9 10 ff ff ff       	jmp    48ac <rfuse_write_begin+0x9c>
    499c:	4c 8d 70 ff          	lea    -0x1(%rax),%r14
    49a0:	eb d0                	jmp    4972 <rfuse_write_begin+0x162>
    49a2:	49 8b 06             	mov    (%r14),%rax
    49a5:	48 c1 e8 33          	shr    $0x33,%rax
    49a9:	83 e0 07             	and    $0x7,%eax
	if (!is_zone_device_page(page))
    49ac:	83 f8 04             	cmp    $0x4,%eax
    49af:	75 c3                	jne    4974 <rfuse_write_begin+0x164>
	return __put_devmap_managed_page_refs(page, refs);
    49b1:	be 01 00 00 00       	mov    $0x1,%esi
    49b6:	4c 89 f7             	mov    %r14,%rdi
    49b9:	e8 00 00 00 00       	call   49be <rfuse_write_begin+0x1ae>
	if (put_devmap_managed_page(&folio->page))
    49be:	84 c0                	test   %al,%al
    49c0:	0f 85 f6 fe ff ff    	jne    48bc <rfuse_write_begin+0xac>
    49c6:	eb ac                	jmp    4974 <rfuse_write_begin+0x164>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    49c8:	41 f7 c6 ff 0f 00 00 	test   $0xfff,%r14d
    49cf:	75 a1                	jne    4972 <rfuse_write_begin+0x162>
    49d1:	49 8b 06             	mov    (%r14),%rax
    49d4:	a9 00 00 01 00       	test   $0x10000,%eax
    49d9:	74 97                	je     4972 <rfuse_write_begin+0x162>
		unsigned long head = READ_ONCE(page[1].compound_head);
    49db:	49 8b 46 48          	mov    0x48(%r14),%rax
			return (const struct page *)(head - 1);
    49df:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    49e3:	a8 01                	test   $0x1,%al
    49e5:	4c 0f 45 f2          	cmovne %rdx,%r14
    49e9:	eb 87                	jmp    4972 <rfuse_write_begin+0x162>
	loff_t fsize;
    49eb:	bb f4 ff ff ff       	mov    $0xfffffff4,%ebx
    49f0:	e9 c7 fe ff ff       	jmp    48bc <rfuse_write_begin+0xac>
    49f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    49fc:	00 00 00 00 

0000000000004a00 <__pfx_rfuse_readahead>:
    4a00:	90                   	nop
    4a01:	90                   	nop
    4a02:	90                   	nop
    4a03:	90                   	nop
    4a04:	90                   	nop
    4a05:	90                   	nop
    4a06:	90                   	nop
    4a07:	90                   	nop
    4a08:	90                   	nop
    4a09:	90                   	nop
    4a0a:	90                   	nop
    4a0b:	90                   	nop
    4a0c:	90                   	nop
    4a0d:	90                   	nop
    4a0e:	90                   	nop
    4a0f:	90                   	nop

0000000000004a10 <rfuse_readahead>:
void rfuse_readahead(struct readahead_control *rac)
    4a10:	e8 00 00 00 00       	call   4a15 <rfuse_readahead+0x5>
    4a15:	55                   	push   %rbp
    4a16:	48 89 e5             	mov    %rsp,%rbp
    4a19:	41 57                	push   %r15
    4a1b:	41 56                	push   %r14
    4a1d:	41 55                	push   %r13
    4a1f:	41 54                	push   %r12
    4a21:	53                   	push   %rbx
    4a22:	48 83 ec 78          	sub    $0x78,%rsp
{
    4a26:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    4a2d:	00 00 
    4a2f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    4a33:	48 8b 47 08          	mov    0x8(%rdi),%rax
    4a37:	48 8b 30             	mov    (%rax),%rsi
  return sb->s_fs_info;
    4a3a:	48 8b 46 28          	mov    0x28(%rsi),%rax
    4a3e:	48 8b 96 f8 02 00 00 	mov    0x2f8(%rsi),%rdx
  return get_fuse_mount_super(inode->i_sb)->fc;
    4a45:	48 8b 80 80 03 00 00 	mov    0x380(%rax),%rax

    4a4c:	83 e2 08             	and    $0x8,%edx
    4a4f:	48 8b 00             	mov    (%rax),%rax
    4a52:	0f 85 1a 04 00 00    	jne    4e72 <rfuse_readahead+0x462>
    4a58:	48 89 fb             	mov    %rdi,%rbx

    4a5b:	8b 78 38             	mov    0x38(%rax),%edi
    4a5e:	8b 40 40             	mov    0x40(%rax),%eax
    4a61:	44 8b 7b 20          	mov    0x20(%rbx),%r15d
    4a65:	c1 ef 0c             	shr    $0xc,%edi
    4a68:	39 c7                	cmp    %eax,%edi
    4a6a:	0f 47 f8             	cmova  %eax,%edi
		nr_pages = readahead_count(rac) - nr_pages;
    4a6d:	44 39 ff             	cmp    %r15d,%edi
    4a70:	44 0f 46 ff          	cmovbe %edi,%r15d
    4a74:	44 89 7d 90          	mov    %r15d,-0x70(%rbp)
			nr_pages = max_pages;
    4a78:	45 85 ff             	test   %r15d,%r15d
    4a7b:	0f 84 f1 03 00 00    	je     4e72 <rfuse_readahead+0x462>
    4a81:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
    4a87:	49 89 f6             	mov    %rsi,%r14
			break;
    4a8a:	8b 75 90             	mov    -0x70(%rbp),%esi
    4a8d:	31 ff                	xor    %edi,%edi
    4a8f:	e8 2c c4 ff ff       	call   ec0 <rfuse_io_alloc>
    4a94:	49 89 c4             	mov    %rax,%r12
		ria = rfuse_io_alloc(NULL, nr_pages);
    4a97:	48 85 c0             	test   %rax,%rax
    4a9a:	0f 84 d2 03 00 00    	je     4e72 <rfuse_readahead+0x462>
		rp = &ria->rp;
    4aa0:	4c 8b 78 38          	mov    0x38(%rax),%r15

static inline unsigned int __readahead_batch(struct readahead_control *rac,
		struct page **array, unsigned int array_sz)
{
	unsigned int i = 0;
	XA_STATE(xas, &rac->mapping->i_pages, 0);
    4aa4:	48 8b 43 08          	mov    0x8(%rbx),%rax
    4aa8:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    4aaf:	00 
	struct page *page;

	BUG_ON(rac->_batch_count > rac->_nr_pages);
    4ab0:	8b 53 20             	mov    0x20(%rbx),%edx
	XA_STATE(xas, &rac->mapping->i_pages, 0);
    4ab3:	48 c7 45 b0 03 00 00 	movq   $0x3,-0x50(%rbp)
    4aba:	00 
    4abb:	48 83 c0 08          	add    $0x8,%rax
    4abf:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    4ac6:	00 
    4ac7:	48 89 45 98          	mov    %rax,-0x68(%rbp)
	BUG_ON(rac->_batch_count > rac->_nr_pages);
    4acb:	8b 43 24             	mov    0x24(%rbx),%eax
	XA_STATE(xas, &rac->mapping->i_pages, 0);
    4ace:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    4ad5:	00 
    4ad6:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    4add:	00 
	BUG_ON(rac->_batch_count > rac->_nr_pages);
    4ade:	39 c2                	cmp    %eax,%edx
    4ae0:	0f 82 3d 04 00 00    	jb     4f23 <rfuse_readahead+0x513>
	rac->_nr_pages -= rac->_batch_count;
    4ae6:	29 c2                	sub    %eax,%edx
	rac->_index += rac->_batch_count;
    4ae8:	48 03 43 18          	add    0x18(%rbx),%rax
	rac->_batch_count = 0;
    4aec:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%rbx)
	rac->_nr_pages -= rac->_batch_count;
    4af3:	89 53 20             	mov    %edx,0x20(%rbx)
	rac->_index += rac->_batch_count;
    4af6:	48 89 43 18          	mov    %rax,0x18(%rbx)
 * have the effect of starting a walk from the top; see xas_next()
 * to move to an adjacent index.
 */
static inline void xas_set(struct xa_state *xas, unsigned long index)
{
	xas->xa_index = index;
    4afa:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
	__rcu_read_lock();
    4afe:	e8 00 00 00 00       	call   4b03 <rfuse_readahead+0xf3>

	xas_set(&xas, rac->_index);
	rcu_read_lock();
	xas_for_each(&xas, page, rac->_index + rac->_nr_pages - 1) {
    4b03:	48 8b 53 18          	mov    0x18(%rbx),%rdx
    4b07:	8b 43 20             	mov    0x20(%rbx),%eax
    4b0a:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
    4b0e:	48 8d 74 02 ff       	lea    -0x1(%rdx,%rax,1),%rsi
    4b13:	e8 00 00 00 00       	call   4b18 <rfuse_readahead+0x108>
    4b18:	48 85 c0             	test   %rax,%rax
    4b1b:	0f 84 75 04 00 00    	je     4f96 <rfuse_readahead+0x586>
	unsigned int i = 0;
    4b21:	45 31 c0             	xor    %r8d,%r8d
	if (xa_is_zero(entry))
    4b24:	48 3d 06 04 00 00    	cmp    $0x406,%rax
    4b2a:	0f 84 cf 00 00 00    	je     4bff <rfuse_readahead+0x1ef>
	if (!xa_is_retry(entry))
    4b30:	48 3d 02 04 00 00    	cmp    $0x402,%rax
    4b36:	0f 84 cb 00 00 00    	je     4c07 <rfuse_readahead+0x1f7>
		if (xas_retry(&xas, page))
			continue;
		VM_BUG_ON_PAGE(!PageLocked(page), page);
		VM_BUG_ON_PAGE(PageTail(page), page);
		array[i++] = page;
    4b3c:	4b 89 04 c7          	mov    %rax,(%r15,%r8,8)
    4b40:	48 8b 08             	mov    (%rax),%rcx
    4b43:	45 8d 68 01          	lea    0x1(%r8),%r13d
	return ((1UL << (nr & (BITS_PER_LONG-1))) &
    4b47:	ba 01 00 00 00       	mov    $0x1,%edx
	if (!folio_test_large(folio))
    4b4c:	f7 c1 00 00 01 00    	test   $0x10000,%ecx
    4b52:	74 03                	je     4b57 <rfuse_readahead+0x147>
	return folio->_folio_nr_pages;
    4b54:	8b 50 60             	mov    0x60(%rax),%edx
		rac->_batch_count += thp_nr_pages(page);
		if (i == array_sz)
    4b57:	8b 45 90             	mov    -0x70(%rbp),%eax
		rac->_batch_count += thp_nr_pages(page);
    4b5a:	01 53 24             	add    %edx,0x24(%rbx)
		if (i == array_sz)
    4b5d:	41 39 c5             	cmp    %eax,%r13d
    4b60:	0f 84 76 03 00 00    	je     4edc <rfuse_readahead+0x4cc>
	xas_for_each(&xas, page, rac->_index + rac->_nr_pages - 1) {
    4b66:	48 8b 53 18          	mov    0x18(%rbx),%rdx
    4b6a:	8b 43 20             	mov    0x20(%rbx),%eax
 *
 * Return: The next present entry after the one currently referred to by @xas.
 */
static inline void *xas_next_entry(struct xa_state *xas, unsigned long max)
{
	struct xa_node *node = xas->xa_node;
    4b6d:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    4b71:	4c 8d 4c 02 ff       	lea    -0x1(%rdx,%rax,1),%r9
	return ((unsigned long)node & 3) || !node;
    4b76:	f6 c1 03             	test   $0x3,%cl
    4b79:	0f 85 9f 00 00 00    	jne    4c1e <rfuse_readahead+0x20e>
    4b7f:	48 85 c9             	test   %rcx,%rcx
    4b82:	0f 84 96 00 00 00    	je     4c1e <rfuse_readahead+0x20e>
	void *entry;

	if (unlikely(xas_not_node(node) || node->shift ||
    4b88:	80 39 00             	cmpb   $0x0,(%rcx)
    4b8b:	0f 85 8d 00 00 00    	jne    4c1e <rfuse_readahead+0x20e>
    4b91:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    4b95:	0f b6 75 aa          	movzbl -0x56(%rbp),%esi
    4b99:	48 89 d0             	mov    %rdx,%rax
    4b9c:	83 e0 3f             	and    $0x3f,%eax
    4b9f:	48 39 c6             	cmp    %rax,%rsi
    4ba2:	75 7a                	jne    4c1e <rfuse_readahead+0x20e>
			xas->xa_offset != (xas->xa_index & XA_CHUNK_MASK)))
		return xas_find(xas, max);

	do {
		if (unlikely(xas->xa_index >= max))
    4ba4:	4c 39 ca             	cmp    %r9,%rdx
    4ba7:	73 75                	jae    4c1e <rfuse_readahead+0x20e>
			return xas_find(xas, max);
		if (unlikely(xas->xa_offset == XA_CHUNK_MASK))
    4ba9:	44 0f b6 45 aa       	movzbl -0x56(%rbp),%r8d
    4bae:	41 80 f8 3f          	cmp    $0x3f,%r8b
    4bb2:	74 6a                	je     4c1e <rfuse_readahead+0x20e>
			return xas_find(xas, max);
		entry = xa_entry(xas->xa, node, xas->xa_offset + 1);
    4bb4:	41 0f b6 c0          	movzbl %r8b,%eax
	return rcu_dereference_check(node->slots[offset],
    4bb8:	48 83 c0 01          	add    $0x1,%rax
    4bbc:	48 83 f8 40          	cmp    $0x40,%rax
    4bc0:	0f 87 e8 03 00 00    	ja     4fae <rfuse_readahead+0x59e>
    4bc6:	48 83 c0 04          	add    $0x4,%rax
    4bca:	48 8b 44 c1 08       	mov    0x8(%rcx,%rax,8),%rax
	return ((unsigned long)entry & 3) == 2;
    4bcf:	48 89 c6             	mov    %rax,%rsi
    4bd2:	83 e6 03             	and    $0x3,%esi
		if (unlikely(xa_is_internal(entry)))
    4bd5:	48 83 fe 02          	cmp    $0x2,%rsi
    4bd9:	74 43                	je     4c1e <rfuse_readahead+0x20e>
			return xas_find(xas, max);
		xas->xa_offset++;
    4bdb:	41 83 c0 01          	add    $0x1,%r8d
		xas->xa_index++;
    4bdf:	48 83 c2 01          	add    $0x1,%rdx
		xas->xa_offset++;
    4be3:	44 88 45 aa          	mov    %r8b,-0x56(%rbp)
		xas->xa_index++;
    4be7:	48 89 55 a0          	mov    %rdx,-0x60(%rbp)
	} while (!entry);
    4beb:	48 85 c0             	test   %rax,%rax
    4bee:	74 b4                	je     4ba4 <rfuse_readahead+0x194>
    4bf0:	45 89 e8             	mov    %r13d,%r8d
	if (xa_is_zero(entry))
    4bf3:	48 3d 06 04 00 00    	cmp    $0x406,%rax
    4bf9:	0f 85 31 ff ff ff    	jne    4b30 <rfuse_readahead+0x120>
    4bff:	45 89 c5             	mov    %r8d,%r13d
    4c02:	e9 5f ff ff ff       	jmp    4b66 <rfuse_readahead+0x156>
    4c07:	48 8b 53 18          	mov    0x18(%rbx),%rdx
    4c0b:	8b 43 20             	mov    0x20(%rbx),%eax
	xas->xa_node = XAS_RESTART;
    4c0e:	48 c7 45 b0 03 00 00 	movq   $0x3,-0x50(%rbp)
    4c15:	00 
    4c16:	45 89 c5             	mov    %r8d,%r13d
    4c19:	4c 8d 4c 02 ff       	lea    -0x1(%rdx,%rax,1),%r9
			return xas_find(xas, max);
    4c1e:	4c 89 ce             	mov    %r9,%rsi
    4c21:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
    4c25:	e8 00 00 00 00       	call   4c2a <rfuse_readahead+0x21a>
    4c2a:	45 89 e8             	mov    %r13d,%r8d
    4c2d:	48 85 c0             	test   %rax,%rax
    4c30:	0f 85 ee fe ff ff    	jne    4b24 <rfuse_readahead+0x114>
    4c36:	44 89 e9             	mov    %r13d,%ecx
    4c39:	44 89 45 88          	mov    %r8d,-0x78(%rbp)
		nr_pages = __readahead_batch(rac, rp->pages, nr_pages);
    4c3d:	45 31 ff             	xor    %r15d,%r15d
    4c40:	89 4d 90             	mov    %ecx,-0x70(%rbp)
	__rcu_read_unlock();
    4c43:	e8 00 00 00 00       	call   4c48 <rfuse_readahead+0x238>
    4c48:	8b 55 90             	mov    -0x70(%rbp),%edx
    4c4b:	44 8b 45 88          	mov    -0x78(%rbp),%r8d
    4c4f:	85 d2                	test   %edx,%edx
    4c51:	0f 84 44 03 00 00    	je     4f9b <rfuse_readahead+0x58b>
    4c57:	89 55 88             	mov    %edx,-0x78(%rbp)
    4c5a:	44 89 45 80          	mov    %r8d,-0x80(%rbp)
    4c5e:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
    4c62:	eb 17                	jmp    4c7b <rfuse_readahead+0x26b>
						    readahead_index(rac) + i);
    4c64:	49 8b 44 24 40       	mov    0x40(%r12),%rax
    4c69:	42 c7 04 f8 00 10 00 	movl   $0x1000,(%rax,%r15,8)
    4c70:	00 
		nr_pages = __readahead_batch(rac, rp->pages, nr_pages);
    4c71:	49 83 c7 01          	add    $0x1,%r15
    4c75:	4c 39 7d 90          	cmp    %r15,-0x70(%rbp)
    4c79:	74 2b                	je     4ca6 <rfuse_readahead+0x296>
		for (i = 0; i < nr_pages; i++) {
    4c7b:	4c 8b 6b 18          	mov    0x18(%rbx),%r13
    4c7f:	e8 00 00 00 00       	call   4c84 <rfuse_readahead+0x274>
	return rfuse_range_is_writeback(inode, index, index);
    4c84:	4c 89 f7             	mov    %r14,%rdi
		for (i = 0; i < nr_pages; i++) {
    4c87:	4d 01 fd             	add    %r15,%r13
	return rfuse_range_is_writeback(inode, index, index);
    4c8a:	4c 89 ea             	mov    %r13,%rdx
    4c8d:	4c 89 ee             	mov    %r13,%rsi
    4c90:	e8 7b b3 ff ff       	call   10 <rfuse_range_is_writeback>
	wait_event(fi->page_waitq, !rfuse_page_is_writeback(inode, index));
    4c95:	84 c0                	test   %al,%al
    4c97:	74 cb                	je     4c64 <rfuse_readahead+0x254>
    4c99:	4c 89 ee             	mov    %r13,%rsi
    4c9c:	4c 89 f7             	mov    %r14,%rdi
    4c9f:	e8 0c b8 ff ff       	call   4b0 <rfuse_wait_on_page_writeback.part.0>
    4ca4:	eb be                	jmp    4c64 <rfuse_readahead+0x254>
	loff_t pos = page_offset(rp->pages[0]);
    4ca6:	8b 4d 88             	mov    -0x78(%rbp),%ecx
    4ca9:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
    4cad:	c1 e1 0c             	shl    $0xc,%ecx
    4cb0:	89 c8                	mov    %ecx,%eax
    4cb2:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    4cb6:	49 89 c7             	mov    %rax,%r15
		}
    4cb9:	45 89 44 24 48       	mov    %r8d,0x48(%r12)
		rp->num_pages = nr_pages;
    4cbe:	4c 8b 1b             	mov    (%rbx),%r11
	struct rfuse_pages *rp = &ria->rp;
    4cc1:	49 8b 44 24 38       	mov    0x38(%r12),%rax
    4cc6:	44 89 85 70 ff ff ff 	mov    %r8d,-0x90(%rbp)
static void rfuse_send_readpages(struct rfuse_io_args *ria, struct file *file){
    4ccd:	4d 8b 93 c8 00 00 00 	mov    0xc8(%r11),%r10
	struct fuse_file *ff = file->private_data;
    4cd4:	4c 89 5d 80          	mov    %r11,-0x80(%rbp)
	return ((loff_t)page->index) << PAGE_SHIFT;
    4cd8:	48 8b 00             	mov    (%rax),%rax
    4cdb:	4d 8b 0a             	mov    (%r10),%r9
    4cde:	4c 89 95 68 ff ff ff 	mov    %r10,-0x98(%rbp)
    4ce5:	4c 8b 68 20          	mov    0x20(%rax),%r13

    4ce9:	49 8b 01             	mov    (%r9),%rax
    4cec:	f6 80 35 01 00 00 04 	testb  $0x4,0x135(%rax)
    4cf3:	0f 84 b5 01 00 00    	je     4eae <rfuse_readahead+0x49e>
	if(fm->fc->async_read)
    4cf9:	31 c9                	xor    %ecx,%ecx
    4cfb:	4c 89 cf             	mov    %r9,%rdi
    4cfe:	31 d2                	xor    %edx,%edx
    4d00:	be 01 00 00 00       	mov    $0x1,%esi
    4d05:	4c 89 4d 88          	mov    %r9,-0x78(%rbp)
    4d09:	e8 00 00 00 00       	call   4d0e <rfuse_readahead+0x2fe>
    4d0e:	4c 8b 4d 88          	mov    -0x78(%rbp),%r9
    4d12:	4c 8b 5d 80          	mov    -0x80(%rbp),%r11
    4d16:	44 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%r8d
    4d1d:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
    4d24:	48 89 c1             	mov    %rax,%rcx
	/* Don't overflow end offset */
    4d27:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    4d2b:	49 c1 e5 0c          	shl    $0xc,%r13
		
    4d2f:	49 89 4c 24 30       	mov    %rcx,0x30(%r12)
	/* Don't overflow end offset */
    4d34:	48 bf 00 00 00 00 00 	movabs $0x8000000000000000,%rdi
    4d3b:	00 00 80 

    4d3e:	80 89 e8 00 00 00 d0 	orb    $0xd0,0xe8(%rcx)
	/* Don't overflow end offset */
    4d45:	4c 01 e8             	add    %r13,%rax
    4d48:	48 39 f8             	cmp    %rdi,%rax
    4d4b:	75 1e                	jne    4d6b <rfuse_readahead+0x35b>
		count--;
    4d4d:	41 8b 44 24 48       	mov    0x48(%r12),%eax
	if (pos + (count - 1) == LLONG_MAX) {
    4d52:	4c 8b 7d 90          	mov    -0x70(%rbp),%r15
		count--;
    4d56:	8d 50 ff             	lea    -0x1(%rax),%edx
    4d59:	49 8b 44 24 40       	mov    0x40(%r12),%rax
	if (pos + (count - 1) == LLONG_MAX) {
    4d5e:	49 83 ef 01          	sub    $0x1,%r15
		count--;
    4d62:	83 2c d0 01          	subl   $0x1,(%rax,%rdx,8)
	}
    4d66:	4b 8d 44 3d 00       	lea    0x0(%r13,%r15,1),%rax
    4d6b:	48 85 c0             	test   %rax,%rax
    4d6e:	0f 88 e6 01 00 00    	js     4f5a <rfuse_readahead+0x54a>

    4d74:	49 8b 93 c8 00 00 00 	mov    0xc8(%r11),%rdx
	struct fuse_file *ff = file->private_data;
    4d7b:	49 8b 44 24 30       	mov    0x30(%r12),%rax

    4d80:	48 8b 72 18          	mov    0x18(%rdx),%rsi
	in->fh = ff->fh;
    4d84:	4c 89 a8 80 00 00 00 	mov    %r13,0x80(%rax)
	in->offset = pos;
    4d8b:	44 89 b8 88 00 00 00 	mov    %r15d,0x88(%rax)

    4d92:	48 89 70 78          	mov    %rsi,0x78(%rax)
	in->size = count;
    4d96:	41 8b 73 48          	mov    0x48(%r11),%esi

    4d9a:	c7 40 10 0f 00 00 00 	movl   $0xf,0x10(%rax)
	in->size = count;
    4da1:	89 b0 98 00 00 00    	mov    %esi,0x98(%rax)
	r_req->in.opcode = opcode;
    4da7:	48 8b 52 20          	mov    0x20(%rdx),%rdx
	r_req->in.nodeid = ff->nodeid;
    4dab:	80 88 e8 00 00 00 20 	orb    $0x20,0xe8(%rax)
	r_req->in.opcode = opcode;
    4db2:	48 89 50 08          	mov    %rdx,0x8(%rax)
	struct rfuse_req *r_req = ria->r_req;
    4db6:	49 8d 54 24 38       	lea    0x38(%r12),%rdx

    4dbb:	44 89 78 38          	mov    %r15d,0x38(%rax)
	struct rfuse_req *r_req = ria->r_req;
    4dbf:	48 89 90 f0 00 00 00 	mov    %rdx,0xf0(%rax)
	rfuse_read_args_fill(ria, file, pos, count, FUSE_READ);
    4dc6:	49 8b 01             	mov    (%r9),%rax
    4dc9:	48 8b 80 a0 01 00 00 	mov    0x1a0(%rax),%rax
    4dd0:	49 89 04 24          	mov    %rax,(%r12)
	ria->read.attr_ver = fuse_get_attr_version(fm->fc);
    4dd4:	49 8b 01             	mov    (%r9),%rax
    4dd7:	f6 80 35 01 00 00 04 	testb  $0x4,0x135(%rax)
    4dde:	0f 84 03 01 00 00    	je     4ee7 <rfuse_readahead+0x4d7>
	refcount_inc(&ff->count);
    4de4:	49 8d 7a 28          	lea    0x28(%r10),%rdi
	return xadd(&v->counter, i);
    4de8:	b8 01 00 00 00       	mov    $0x1,%eax
    4ded:	f0 41 0f c1 42 28    	lock xadd %eax,0x28(%r10)
	if (unlikely(!old))
    4df3:	85 c0                	test   %eax,%eax
    4df5:	0f 84 66 01 00 00    	je     4f61 <rfuse_readahead+0x551>
	else if (unlikely(old < 0 || old + i < 0))
    4dfb:	8d 50 01             	lea    0x1(%rax),%edx
    4dfe:	09 c2                	or     %eax,%edx
    4e00:	0f 88 1f 01 00 00    	js     4f25 <rfuse_readahead+0x515>
	if (fm->fc->async_read) {
    4e06:	4d 89 54 24 58       	mov    %r10,0x58(%r12)
		r_req->end = rfuse_readpages_end;
    4e0b:	48 89 ce             	mov    %rcx,%rsi
    4e0e:	4c 89 cf             	mov    %r9,%rdi
		ria->ff = rfuse_file_get(ff);
    4e11:	48 c7 81 f8 00 00 00 	movq   $0x0,0xf8(%rcx)
    4e18:	00 00 00 00 
    4e1c:	44 89 45 90          	mov    %r8d,-0x70(%rbp)
		r_req->end = rfuse_readpages_end;
    4e20:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    4e24:	4c 89 4d 88          	mov    %r9,-0x78(%rbp)
    4e28:	e8 00 00 00 00       	call   4e2d <rfuse_readahead+0x41d>
		err = rfuse_simple_background(fm, r_req);
    4e2d:	44 8b 45 90          	mov    -0x70(%rbp),%r8d
    4e31:	84 c0                	test   %al,%al
    4e33:	74 1c                	je     4e51 <rfuse_readahead+0x441>
    4e35:	4c 8b 4d 88          	mov    -0x78(%rbp),%r9
    4e39:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
	}
    4e3d:	ba 01 00 00 00       	mov    $0x1,%edx
    4e42:	48 89 ce             	mov    %rcx,%rsi
    4e45:	4c 89 cf             	mov    %r9,%rdi
    4e48:	e8 53 ce ff ff       	call   1ca0 <rfuse_readpages_end>
    4e4d:	44 8b 45 90          	mov    -0x70(%rbp),%r8d

    4e51:	44 8b 6b 20          	mov    0x20(%rbx),%r13d
    4e55:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
    4e5b:	45 29 c5             	sub    %r8d,%r13d
    4e5e:	41 39 c5             	cmp    %eax,%r13d
    4e61:	44 0f 47 e8          	cmova  %eax,%r13d
    4e65:	44 89 6d 90          	mov    %r13d,-0x70(%rbp)
			nr_pages = max_pages;
    4e69:	45 85 ed             	test   %r13d,%r13d
    4e6c:	0f 85 18 fc ff ff    	jne    4a8a <rfuse_readahead+0x7a>
	}
    4e72:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4e76:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    4e7d:	00 00 
    4e7f:	0f 85 78 01 00 00    	jne    4ffd <rfuse_readahead+0x5ed>
    4e85:	48 83 c4 78          	add    $0x78,%rsp
    4e89:	5b                   	pop    %rbx
    4e8a:	41 5c                	pop    %r12
    4e8c:	41 5d                	pop    %r13
    4e8e:	41 5e                	pop    %r14
    4e90:	41 5f                	pop    %r15
    4e92:	5d                   	pop    %rbp
    4e93:	31 c0                	xor    %eax,%eax
    4e95:	31 d2                	xor    %edx,%edx
    4e97:	31 c9                	xor    %ecx,%ecx
    4e99:	31 f6                	xor    %esi,%esi
    4e9b:	31 ff                	xor    %edi,%edi
    4e9d:	45 31 c0             	xor    %r8d,%r8d
    4ea0:	45 31 c9             	xor    %r9d,%r9d
    4ea3:	45 31 d2             	xor    %r10d,%r10d
    4ea6:	45 31 db             	xor    %r11d,%r11d
    4ea9:	e9 00 00 00 00       	jmp    4eae <rfuse_readahead+0x49e>
	else 
    4eae:	4c 89 cf             	mov    %r9,%rdi
    4eb1:	31 d2                	xor    %edx,%edx
    4eb3:	31 f6                	xor    %esi,%esi
    4eb5:	4c 89 4d 88          	mov    %r9,-0x78(%rbp)
    4eb9:	e8 00 00 00 00       	call   4ebe <rfuse_readahead+0x4ae>
    4ebe:	4c 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%r10
    4ec5:	44 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%r8d
    4ecc:	4c 8b 5d 80          	mov    -0x80(%rbp),%r11
    4ed0:	4c 8b 4d 88          	mov    -0x78(%rbp),%r9
    4ed4:	48 89 c1             	mov    %rax,%rcx
    4ed7:	e9 4b fe ff ff       	jmp    4d27 <rfuse_readahead+0x317>
    4edc:	44 89 e9             	mov    %r13d,%ecx
    4edf:	45 89 e8             	mov    %r13d,%r8d
    4ee2:	e9 52 fd ff ff       	jmp    4c39 <rfuse_readahead+0x229>
	} else {
    4ee7:	48 89 cf             	mov    %rcx,%rdi
    4eea:	44 89 45 88          	mov    %r8d,-0x78(%rbp)
    4eee:	4c 89 4d 80          	mov    %r9,-0x80(%rbp)
    4ef2:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
    4ef6:	e8 00 00 00 00       	call   4efb <rfuse_readahead+0x4eb>
		err = res < 0 ? res : 0;
    4efb:	31 d2                	xor    %edx,%edx
    4efd:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
    4f01:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
    4f05:	48 85 c0             	test   %rax,%rax
    4f08:	48 0f 4e d0          	cmovle %rax,%rdx
    4f0c:	e8 8f cd ff ff       	call   1ca0 <rfuse_readpages_end>
		rfuse_readpages_end(fm, r_req, err);
    4f11:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
    4f15:	e8 00 00 00 00       	call   4f1a <rfuse_readahead+0x50a>
		rfuse_put_request(r_req);
    4f1a:	44 8b 45 88          	mov    -0x78(%rbp),%r8d
    4f1e:	e9 2e ff ff ff       	jmp    4e51 <rfuse_readahead+0x441>
	BUG_ON(rac->_batch_count > rac->_nr_pages);
    4f23:	0f 0b                	ud2    
		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
    4f25:	be 01 00 00 00       	mov    $0x1,%esi
    4f2a:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    4f31:	4c 89 4d 80          	mov    %r9,-0x80(%rbp)
    4f35:	4c 89 55 88          	mov    %r10,-0x78(%rbp)
    4f39:	44 89 45 90          	mov    %r8d,-0x70(%rbp)
    4f3d:	e8 00 00 00 00       	call   4f42 <rfuse_readahead+0x532>
    4f42:	48 8b 8d 70 ff ff ff 	mov    -0x90(%rbp),%rcx
    4f49:	4c 8b 4d 80          	mov    -0x80(%rbp),%r9
    4f4d:	4c 8b 55 88          	mov    -0x78(%rbp),%r10
    4f51:	44 8b 45 90          	mov    -0x70(%rbp),%r8d
    4f55:	e9 ac fe ff ff       	jmp    4e06 <rfuse_readahead+0x3f6>
	}
    4f5a:	0f 0b                	ud2    
    4f5c:	e9 13 fe ff ff       	jmp    4d74 <rfuse_readahead+0x364>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
    4f61:	be 02 00 00 00       	mov    $0x2,%esi
    4f66:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    4f6d:	4c 89 4d 80          	mov    %r9,-0x80(%rbp)
    4f71:	4c 89 55 88          	mov    %r10,-0x78(%rbp)
    4f75:	44 89 45 90          	mov    %r8d,-0x70(%rbp)
    4f79:	e8 00 00 00 00       	call   4f7e <rfuse_readahead+0x56e>
    4f7e:	44 8b 45 90          	mov    -0x70(%rbp),%r8d
    4f82:	4c 8b 55 88          	mov    -0x78(%rbp),%r10
    4f86:	4c 8b 4d 80          	mov    -0x80(%rbp),%r9
    4f8a:	48 8b 8d 70 ff ff ff 	mov    -0x90(%rbp),%rcx
    4f91:	e9 70 fe ff ff       	jmp    4e06 <rfuse_readahead+0x3f6>
    4f96:	e8 00 00 00 00       	call   4f9b <rfuse_readahead+0x58b>
		nr_pages = __readahead_batch(rac, rp->pages, nr_pages);
    4f9b:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
    4fa2:	00 
    4fa3:	45 31 ff             	xor    %r15d,%r15d
    4fa6:	45 31 c0             	xor    %r8d,%r8d
    4fa9:	e9 0b fd ff ff       	jmp    4cb9 <rfuse_readahead+0x2a9>
	return rcu_dereference_check(node->slots[offset],
    4fae:	48 89 c6             	mov    %rax,%rsi
    4fb1:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    4fb8:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
    4fbf:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    4fc6:	4c 89 8d 70 ff ff ff 	mov    %r9,-0x90(%rbp)
    4fcd:	44 88 45 80          	mov    %r8b,-0x80(%rbp)
    4fd1:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    4fd5:	e8 00 00 00 00       	call   4fda <rfuse_readahead+0x5ca>
    4fda:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    4fe1:	44 0f b6 45 80       	movzbl -0x80(%rbp),%r8d
    4fe6:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
    4fed:	4c 8b 8d 70 ff ff ff 	mov    -0x90(%rbp),%r9
    4ff4:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    4ff8:	e9 c9 fb ff ff       	jmp    4bc6 <rfuse_readahead+0x1b6>
	}
    4ffd:	e8 00 00 00 00       	call   5002 <rfuse_readahead+0x5f2>
    5002:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    5009:	00 00 00 00 
    500d:	0f 1f 00             	nopl   (%rax)

0000000000005010 <__pfx_rfuse_file_fallocate>:
    5010:	90                   	nop
    5011:	90                   	nop
    5012:	90                   	nop
    5013:	90                   	nop
    5014:	90                   	nop
    5015:	90                   	nop
    5016:	90                   	nop
    5017:	90                   	nop
    5018:	90                   	nop
    5019:	90                   	nop
    501a:	90                   	nop
    501b:	90                   	nop
    501c:	90                   	nop
    501d:	90                   	nop
    501e:	90                   	nop
    501f:	90                   	nop

0000000000005020 <rfuse_file_fallocate>:
		rfuse_sync_writes(inode);

	return err;
}

long rfuse_file_fallocate(struct file *file, int mode, loff_t offset, loff_t length)
    5020:	e8 00 00 00 00       	call   5025 <rfuse_file_fallocate+0x5>
    5025:	55                   	push   %rbp
    5026:	48 89 e5             	mov    %rsp,%rbp
    5029:	41 57                	push   %r15
    502b:	41 56                	push   %r14
    502d:	41 55                	push   %r13
    502f:	41 54                	push   %r12
    5031:	53                   	push   %rbx
    5032:	89 f3                	mov    %esi,%ebx
    5034:	83 e6 13             	and    $0x13,%esi
    5037:	48 83 ec 38          	sub    $0x38,%rsp
	return f->f_inode;
    503b:	4c 8b a7 a8 00 00 00 	mov    0xa8(%rdi),%r12
{
    5042:	4c 8b bf c8 00 00 00 	mov    0xc8(%rdi),%r15
long rfuse_file_fallocate(struct file *file, int mode, loff_t offset, loff_t length)
    5049:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    504d:	48 89 7d b0          	mov    %rdi,-0x50(%rbp)

	int err;
	bool lock_inode = !(mode & FALLOC_FL_KEEP_SIZE) ||
			   (mode & (FALLOC_FL_PUNCH_HOLE |
				    FALLOC_FL_ZERO_RANGE));

    5051:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
	struct fuse_inode *fi = get_fuse_inode(inode);
    5056:	4d 8b 2f             	mov    (%r15),%r13

    5059:	89 75 c4             	mov    %esi,-0x3c(%rbp)
long rfuse_file_fallocate(struct file *file, int mode, loff_t offset, loff_t length)
    505c:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)

    5060:	c1 e8 0d             	shr    $0xd,%eax
    5063:	83 fe 01             	cmp    $0x1,%esi
	bool block_faults = FUSE_IS_DAX(inode) && lock_inode;
	struct rfuse_req *r_req;

    5066:	4c 89 ef             	mov    %r13,%rdi

    5069:	0f 95 c2             	setne  %dl

    506c:	31 f6                	xor    %esi,%esi

    506e:	21 c2                	and    %eax,%edx
    5070:	88 55 c3             	mov    %dl,-0x3d(%rbp)

    5073:	31 d2                	xor    %edx,%edx
    5075:	e8 00 00 00 00       	call   507a <rfuse_file_fallocate+0x5a>
    507a:	49 89 c6             	mov    %rax,%r14
	r_req = rfuse_get_req(fm, false, false);
	inarg = (struct fuse_fallocate_in *)&r_req->args;

    507d:	49 8b 47 18          	mov    0x18(%r15),%rax
	inarg->fh = ff->fh;
	inarg->offset = offset,
	inarg->length = length,
    5081:	41 89 9e 90 00 00 00 	mov    %ebx,0x90(%r14)

    5088:	49 89 46 78          	mov    %rax,0x78(%r14)
	inarg->fh = ff->fh;
    508c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
	inarg->mode = mode;

    5090:	41 c7 46 10 2b 00 00 	movl   $0x2b,0x10(%r14)
    5097:	00 
	inarg->fh = ff->fh;
    5098:	49 89 86 80 00 00 00 	mov    %rax,0x80(%r14)
	inarg->offset = offset,
    509f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    50a3:	49 89 86 88 00 00 00 	mov    %rax,0x88(%r14)
	r_req->in.opcode = FUSE_FALLOCATE;
    50aa:	49 8b 47 20          	mov    0x20(%r15),%rax
    50ae:	49 89 46 08          	mov    %rax,0x8(%r14)
	r_req->in.nodeid = ff->nodeid;

    50b2:	f7 c3 ec ff ff ff    	test   $0xffffffec,%ebx
    50b8:	0f 85 ad 02 00 00    	jne    536b <rfuse_file_fallocate+0x34b>
	if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE |
		     FALLOC_FL_ZERO_RANGE))
		return -EOPNOTSUPP;

    50be:	49 8b 45 00          	mov    0x0(%r13),%rax
    50c2:	80 b8 38 01 00 00 00 	cmpb   $0x0,0x138(%rax)
    50c9:	0f 88 9c 02 00 00    	js     536b <rfuse_file_fallocate+0x34b>
	if (mode & (FALLOC_FL_PUNCH_HOLE | FALLOC_FL_ZERO_RANGE))
		truncate_pagecache_range(inode, offset, offset + length - 1);

	fuse_invalidate_attr(inode);

out:
    50cf:	89 d8                	mov    %ebx,%eax
    50d1:	83 e0 01             	and    $0x1,%eax

    50d4:	83 7d c4 01          	cmpl   $0x1,-0x3c(%rbp)
out:
    50d8:	89 45 bc             	mov    %eax,-0x44(%rbp)

    50db:	0f 85 e9 00 00 00    	jne    51ca <rfuse_file_fallocate+0x1aa>

    50e1:	8b 55 bc             	mov    -0x44(%rbp),%edx
    50e4:	85 d2                	test   %edx,%edx
    50e6:	75 7c                	jne    5164 <rfuse_file_fallocate+0x144>
	if (!(mode & FALLOC_FL_KEEP_SIZE) &&
    50e8:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    50ec:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    50f0:	48 01 c8             	add    %rcx,%rax
	if (!(mode & FALLOC_FL_KEEP_SIZE))
    50f3:	49 8d 8c 24 f8 02 00 	lea    0x2f8(%r12),%rcx
    50fa:	00 
	if (!(mode & FALLOC_FL_KEEP_SIZE) &&
    50fb:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
	if (!(mode & FALLOC_FL_KEEP_SIZE))
    50ff:	49 89 cf             	mov    %rcx,%r15
    5102:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)

    5106:	49 3b 44 24 50       	cmp    0x50(%r12),%rax
    510b:	0f 8f a1 01 00 00    	jg     52b2 <rfuse_file_fallocate+0x292>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    5111:	f0 41 80 8c 24 f8 02 	lock orb $0x4,0x2f8(%r12)
    5118:	00 00 04 

    511b:	4c 89 f7             	mov    %r14,%rdi
    511e:	e8 00 00 00 00       	call   5123 <rfuse_file_fallocate+0x103>
    5123:	89 c6                	mov    %eax,%esi
	err = rfuse_simple_request(r_req);
    5125:	83 f8 da             	cmp    $0xffffffda,%eax
    5128:	0f 84 f5 01 00 00    	je     5323 <rfuse_file_fallocate+0x303>
	}
    512e:	85 c0                	test   %eax,%eax
    5130:	0f 85 91 01 00 00    	jne    52c7 <rfuse_file_fallocate+0x2a7>
	if (!(mode & FALLOC_FL_KEEP_SIZE)) {
    5136:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    513a:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
    513e:	4c 89 e7             	mov    %r12,%rdi
    5141:	e8 00 00 00 00       	call   5146 <rfuse_file_fallocate+0x126>

    5146:	84 c0                	test   %al,%al
    5148:	0f 85 45 01 00 00    	jne    5293 <rfuse_file_fallocate+0x273>

    514e:	83 e3 12             	and    $0x12,%ebx
    5151:	0f 85 03 01 00 00    	jne    525a <rfuse_file_fallocate+0x23a>

    5157:	4c 89 e7             	mov    %r12,%rdi
    515a:	e8 00 00 00 00       	call   515f <rfuse_file_fallocate+0x13f>
out:
    515f:	e9 2a 01 00 00       	jmp    528e <rfuse_file_fallocate+0x26e>

    5164:	4c 89 f7             	mov    %r14,%rdi
    5167:	e8 00 00 00 00       	call   516c <rfuse_file_fallocate+0x14c>
	err = rfuse_simple_request(r_req);
    516c:	83 f8 da             	cmp    $0xffffffda,%eax
    516f:	0f 84 97 01 00 00    	je     530c <rfuse_file_fallocate+0x2ec>
		filemap_invalidate_unlock(inode->i_mapping);

	if (lock_inode)
		inode_unlock(inode);

	rfuse_put_request(r_req);
    5175:	4c 63 e8             	movslq %eax,%r13
	}
    5178:	85 c0                	test   %eax,%eax
    517a:	75 14                	jne    5190 <rfuse_file_fallocate+0x170>

    517c:	83 e3 12             	and    $0x12,%ebx
    517f:	0f 85 d5 00 00 00    	jne    525a <rfuse_file_fallocate+0x23a>

    5185:	4c 89 e7             	mov    %r12,%rdi
    5188:	e8 00 00 00 00       	call   518d <rfuse_file_fallocate+0x16d>
	if (err == -ENOSYS) {
    518d:	45 31 ed             	xor    %r13d,%r13d

    5190:	80 7d c3 00          	cmpb   $0x0,-0x3d(%rbp)
    5194:	0f 85 9d 00 00 00    	jne    5237 <rfuse_file_fallocate+0x217>

    519a:	83 7d c4 01          	cmpl   $0x1,-0x3c(%rbp)
    519e:	0f 85 96 01 00 00    	jne    533a <rfuse_file_fallocate+0x31a>

    51a4:	4c 89 f7             	mov    %r14,%rdi
    51a7:	e8 00 00 00 00       	call   51ac <rfuse_file_fallocate+0x18c>
	return err;
    51ac:	48 83 c4 38          	add    $0x38,%rsp
    51b0:	4c 89 e8             	mov    %r13,%rax
    51b3:	5b                   	pop    %rbx
    51b4:	41 5c                	pop    %r12
    51b6:	41 5d                	pop    %r13
    51b8:	41 5e                	pop    %r14
    51ba:	41 5f                	pop    %r15
    51bc:	5d                   	pop    %rbp
    51bd:	31 d2                	xor    %edx,%edx
    51bf:	31 c9                	xor    %ecx,%ecx
    51c1:	31 f6                	xor    %esi,%esi
    51c3:	31 ff                	xor    %edi,%edi
    51c5:	e9 00 00 00 00       	jmp    51ca <rfuse_file_fallocate+0x1aa>
	down_write(&inode->i_rwsem);
    51ca:	4d 8d bc 24 a0 00 00 	lea    0xa0(%r12),%r15
    51d1:	00 
    51d2:	4c 89 ff             	mov    %r15,%rdi
    51d5:	e8 00 00 00 00       	call   51da <rfuse_file_fallocate+0x1ba>
		inode_lock(inode);
    51da:	80 7d c3 00          	cmpb   $0x0,-0x3d(%rbp)
    51de:	0f 85 eb 00 00 00    	jne    52cf <rfuse_file_fallocate+0x2af>

    51e4:	f6 c3 12             	test   $0x12,%bl
    51e7:	0f 84 f4 fe ff ff    	je     50e1 <rfuse_file_fallocate+0xc1>
{
    51ed:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
    51f2:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
    51f6:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    51fd:	e8 00 00 00 00       	call   5202 <rfuse_file_fallocate+0x1e2>

    5202:	85 c0                	test   %eax,%eax
    5204:	0f 84 3d 01 00 00    	je     5347 <rfuse_file_fallocate+0x327>
out:
    520a:	8b 4d bc             	mov    -0x44(%rbp),%ecx
	rfuse_put_request(r_req);
    520d:	4c 63 e8             	movslq %eax,%r13
out:
    5210:	49 8d 84 24 f8 02 00 	lea    0x2f8(%r12),%rax
    5217:	00 
    5218:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    521c:	85 c9                	test   %ecx,%ecx
    521e:	0f 85 38 01 00 00    	jne    535c <rfuse_file_fallocate+0x33c>
	if (!(mode & FALLOC_FL_KEEP_SIZE))
    5224:	4c 8b 7d a8          	mov    -0x58(%rbp),%r15
		asm volatile(LOCK_PREFIX "andb %b1,%0"
    5228:	f0 41 80 27 fb       	lock andb $0xfb,(%r15)

    522d:	80 7d c3 00          	cmpb   $0x0,-0x3d(%rbp)
    5231:	0f 84 63 ff ff ff    	je     519a <rfuse_file_fallocate+0x17a>
    5237:	4d 8d bc 24 a0 00 00 	lea    0xa0(%r12),%r15
    523e:	00 
	up_write(&mapping->invalidate_lock);
    523f:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
    5244:	48 83 c7 18          	add    $0x18,%rdi
    5248:	e8 00 00 00 00       	call   524d <rfuse_file_fallocate+0x22d>
	up_write(&inode->i_rwsem);
    524d:	4c 89 ff             	mov    %r15,%rdi
    5250:	e8 00 00 00 00       	call   5255 <rfuse_file_fallocate+0x235>
}
    5255:	e9 4a ff ff ff       	jmp    51a4 <rfuse_file_fallocate+0x184>
	if (mode & (FALLOC_FL_PUNCH_HOLE | FALLOC_FL_ZERO_RANGE))
    525a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    525e:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
    5262:	4c 89 e7             	mov    %r12,%rdi
    5265:	48 8d 54 06 ff       	lea    -0x1(%rsi,%rax,1),%rdx
    526a:	e8 00 00 00 00       	call   526f <rfuse_file_fallocate+0x24f>

    526f:	4c 89 e7             	mov    %r12,%rdi
    5272:	e8 00 00 00 00       	call   5277 <rfuse_file_fallocate+0x257>
out:
    5277:	8b 45 bc             	mov    -0x44(%rbp),%eax
    527a:	85 c0                	test   %eax,%eax
    527c:	0f 85 0b ff ff ff    	jne    518d <rfuse_file_fallocate+0x16d>
    5282:	49 8d 84 24 f8 02 00 	lea    0x2f8(%r12),%rax
    5289:	00 
    528a:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
long rfuse_file_fallocate(struct file *file, int mode, loff_t offset, loff_t length)
    528e:	45 31 ed             	xor    %r13d,%r13d
    5291:	eb 91                	jmp    5224 <rfuse_file_fallocate+0x204>

    5293:	49 8b 45 00          	mov    0x0(%r13),%rax
    5297:	f6 80 35 01 00 00 40 	testb  $0x40,0x135(%rax)
    529e:	0f 84 aa fe ff ff    	je     514e <rfuse_file_fallocate+0x12e>
		if (changed && fm->fc->writeback_cache)
    52a4:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
    52a8:	e8 00 00 00 00       	call   52ad <rfuse_file_fallocate+0x28d>
    52ad:	e9 9c fe ff ff       	jmp    514e <rfuse_file_fallocate+0x12e>
	    offset + length > i_size_read(inode)) {
    52b2:	48 89 c6             	mov    %rax,%rsi
    52b5:	4c 89 e7             	mov    %r12,%rdi
    52b8:	e8 00 00 00 00       	call   52bd <rfuse_file_fallocate+0x29d>
    52bd:	89 c6                	mov    %eax,%esi
		err = inode_newsize_ok(inode, offset + length);
    52bf:	85 c0                	test   %eax,%eax
    52c1:	0f 84 4a fe ff ff    	je     5111 <rfuse_file_fallocate+0xf1>
	rfuse_put_request(r_req);
    52c7:	4c 63 ee             	movslq %esi,%r13
    52ca:	e9 59 ff ff ff       	jmp    5228 <rfuse_file_fallocate+0x208>
	down_write(&mapping->invalidate_lock);
    52cf:	49 8b 44 24 30       	mov    0x30(%r12),%rax
    52d4:	48 8d 78 18          	lea    0x18(%rax),%rdi
    52d8:	e8 00 00 00 00       	call   52dd <rfuse_file_fallocate+0x2bd>
			filemap_invalidate_lock(inode->i_mapping);
    52dd:	31 d2                	xor    %edx,%edx
    52df:	31 f6                	xor    %esi,%esi
    52e1:	4c 89 e7             	mov    %r12,%rdi
    52e4:	e8 00 00 00 00       	call   52e9 <rfuse_file_fallocate+0x2c9>
			err = fuse_dax_break_layouts(inode, 0, 0);
    52e9:	85 c0                	test   %eax,%eax
    52eb:	0f 84 f3 fe ff ff    	je     51e4 <rfuse_file_fallocate+0x1c4>
out:
    52f1:	8b 75 bc             	mov    -0x44(%rbp),%esi
	rfuse_put_request(r_req);
    52f4:	4c 63 e8             	movslq %eax,%r13
out:
    52f7:	85 f6                	test   %esi,%esi
    52f9:	0f 85 40 ff ff ff    	jne    523f <rfuse_file_fallocate+0x21f>
	if (!(mode & FALLOC_FL_KEEP_SIZE))
    52ff:	4d 8d bc 24 f8 02 00 	lea    0x2f8(%r12),%r15
    5306:	00 
    5307:	e9 1c ff ff ff       	jmp    5228 <rfuse_file_fallocate+0x208>
	if (err == -ENOSYS) {
    530c:	49 8b 45 00          	mov    0x0(%r13),%rax
    5310:	49 c7 c5 a1 ff ff ff 	mov    $0xffffffffffffffa1,%r13
    5317:	80 88 38 01 00 00 80 	orb    $0x80,0x138(%rax)
out:
    531e:	e9 6d fe ff ff       	jmp    5190 <rfuse_file_fallocate+0x170>
	if (err == -ENOSYS) {
    5323:	49 8b 45 00          	mov    0x0(%r13),%rax
    5327:	49 c7 c5 a1 ff ff ff 	mov    $0xffffffffffffffa1,%r13
    532e:	80 88 38 01 00 00 80 	orb    $0x80,0x138(%rax)
out:
    5335:	e9 ea fe ff ff       	jmp    5224 <rfuse_file_fallocate+0x204>
    533a:	4d 8d bc 24 a0 00 00 	lea    0xa0(%r12),%r15
    5341:	00 
    5342:	e9 06 ff ff ff       	jmp    524d <rfuse_file_fallocate+0x22d>
	fuse_set_nowrite(inode);
    5347:	4c 89 e7             	mov    %r12,%rdi
    534a:	e8 00 00 00 00       	call   534f <rfuse_file_fallocate+0x32f>
	fuse_release_nowrite(inode);
    534f:	4c 89 e7             	mov    %r12,%rdi
    5352:	e8 00 00 00 00       	call   5357 <rfuse_file_fallocate+0x337>
			err = rfuse_writeback_range(inode, offset, endbyte);
    5357:	e9 85 fd ff ff       	jmp    50e1 <rfuse_file_fallocate+0xc1>

    535c:	80 7d c3 00          	cmpb   $0x0,-0x3d(%rbp)
    5360:	0f 84 e7 fe ff ff    	je     524d <rfuse_file_fallocate+0x22d>
    5366:	e9 d4 fe ff ff       	jmp    523f <rfuse_file_fallocate+0x21f>
		     FALLOC_FL_ZERO_RANGE))
    536b:	49 c7 c5 a1 ff ff ff 	mov    $0xffffffffffffffa1,%r13
    5372:	e9 35 fe ff ff       	jmp    51ac <rfuse_file_fallocate+0x18c>
    5377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    537e:	00 00 

0000000000005380 <__pfx_rfuse_write_inode>:
    5380:	90                   	nop
    5381:	90                   	nop
    5382:	90                   	nop
    5383:	90                   	nop
    5384:	90                   	nop
    5385:	90                   	nop
    5386:	90                   	nop
    5387:	90                   	nop
    5388:	90                   	nop
    5389:	90                   	nop
    538a:	90                   	nop
    538b:	90                   	nop
    538c:	90                   	nop
    538d:	90                   	nop
    538e:	90                   	nop
    538f:	90                   	nop

0000000000005390 <rfuse_write_inode>:
}

int rfuse_write_inode(struct inode *inode, struct writeback_control *wbc)
    5390:	e8 00 00 00 00       	call   5395 <rfuse_write_inode+0x5>
    5395:	55                   	push   %rbp
    5396:	48 89 e5             	mov    %rsp,%rbp
    5399:	41 55                	push   %r13
	raw_spin_lock(&lock->rlock);
    539b:	4c 8d af 20 03 00 00 	lea    0x320(%rdi),%r13
    53a2:	41 54                	push   %r12
    53a4:	53                   	push   %rbx
    53a5:	48 89 fb             	mov    %rdi,%rbx
    53a8:	4c 89 ef             	mov    %r13,%rdi
    53ab:	e8 00 00 00 00       	call   53b0 <rfuse_write_inode+0x20>
	return READ_ONCE(head->next) == head;
    53b0:	48 8b 93 b0 02 00 00 	mov    0x2b0(%rbx),%rdx
	spin_lock(&fi->lock);
    53b7:	48 8d 83 b0 02 00 00 	lea    0x2b0(%rbx),%rax
    53be:	48 39 c2             	cmp    %rax,%rdx
    53c1:	74 61                	je     5424 <rfuse_write_inode+0x94>
	if (!list_empty(&fi->write_files)) {
    53c3:	48 8b 93 b0 02 00 00 	mov    0x2b0(%rbx),%rdx
    53ca:	b8 01 00 00 00       	mov    $0x1,%eax
    53cf:	4c 8d 62 d0          	lea    -0x30(%rdx),%r12
	refcount_inc(&ff->count);
    53d3:	48 8d 7a f8          	lea    -0x8(%rdx),%rdi
    53d7:	f0 0f c1 42 f8       	lock xadd %eax,-0x8(%rdx)
	if (unlikely(!old))
    53dc:	85 c0                	test   %eax,%eax
    53de:	74 79                	je     5459 <rfuse_write_inode+0xc9>
	else if (unlikely(old < 0 || old + i < 0))
    53e0:	8d 50 01             	lea    0x1(%rax),%edx
    53e3:	09 c2                	or     %eax,%edx
    53e5:	78 66                	js     544d <rfuse_write_inode+0xbd>
	raw_spin_unlock(&lock->rlock);
    53e7:	4c 89 ef             	mov    %r13,%rdi
    53ea:	e8 00 00 00 00       	call   53ef <rfuse_write_inode+0x5f>
{
	struct fuse_inode *fi = get_fuse_inode(inode);
	struct fuse_file *ff;
	int err;

	ff = __rfuse_write_file_get(fi);
    53ef:	48 89 df             	mov    %rbx,%rdi
    53f2:	4c 89 e6             	mov    %r12,%rsi
    53f5:	e8 00 00 00 00       	call   53fa <rfuse_write_inode+0x6a>
    53fa:	89 c3                	mov    %eax,%ebx
	err = rfuse_flush_times(inode, ff);
    53fc:	4d 85 e4             	test   %r12,%r12
    53ff:	74 0e                	je     540f <rfuse_write_inode+0x7f>
	if (ff)
    5401:	31 c9                	xor    %ecx,%ecx
    5403:	31 d2                	xor    %edx,%edx
    5405:	31 f6                	xor    %esi,%esi
    5407:	4c 89 e7             	mov    %r12,%rdi
    540a:	e8 61 b2 ff ff       	call   670 <rfuse_file_put>
		rfuse_file_put(ff, NULL, false, false);

	return err;
    540f:	89 d8                	mov    %ebx,%eax
    5411:	5b                   	pop    %rbx
    5412:	41 5c                	pop    %r12
    5414:	41 5d                	pop    %r13
    5416:	5d                   	pop    %rbp
    5417:	31 d2                	xor    %edx,%edx
    5419:	31 c9                	xor    %ecx,%ecx
    541b:	31 f6                	xor    %esi,%esi
    541d:	31 ff                	xor    %edi,%edi
    541f:	e9 00 00 00 00       	jmp    5424 <rfuse_write_inode+0x94>
    5424:	4c 89 ef             	mov    %r13,%rdi
    5427:	e8 00 00 00 00       	call   542c <rfuse_write_inode+0x9c>
	ff = __rfuse_write_file_get(fi);
    542c:	48 89 df             	mov    %rbx,%rdi
    542f:	31 f6                	xor    %esi,%esi
    5431:	e8 00 00 00 00       	call   5436 <rfuse_write_inode+0xa6>
    5436:	89 c3                	mov    %eax,%ebx
	return err;
    5438:	89 d8                	mov    %ebx,%eax
    543a:	5b                   	pop    %rbx
    543b:	41 5c                	pop    %r12
    543d:	41 5d                	pop    %r13
    543f:	5d                   	pop    %rbp
    5440:	31 d2                	xor    %edx,%edx
    5442:	31 c9                	xor    %ecx,%ecx
    5444:	31 f6                	xor    %esi,%esi
    5446:	31 ff                	xor    %edi,%edi
    5448:	e9 00 00 00 00       	jmp    544d <rfuse_write_inode+0xbd>
		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
    544d:	be 01 00 00 00       	mov    $0x1,%esi
    5452:	e8 00 00 00 00       	call   5457 <rfuse_write_inode+0xc7>
    5457:	eb 8e                	jmp    53e7 <rfuse_write_inode+0x57>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
    5459:	be 02 00 00 00       	mov    $0x2,%esi
    545e:	e8 00 00 00 00       	call   5463 <rfuse_write_inode+0xd3>
    5463:	eb 82                	jmp    53e7 <rfuse_write_inode+0x57>

Disassembly of section .text.unlikely:

0000000000000000 <zero_user_segments.constprop.0.cold>:
	return PAGE_SIZE << compound_order(page);
   0:	0f b6 d0             	movzbl %al,%edx
   3:	be 00 10 00 00       	mov    $0x1000,%esi
   8:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
   f:	e8 00 00 00 00       	call   14 <zero_user_segments.constprop.0.cold+0x14>
  14:	e9 00 00 00 00       	jmp    19 <zero_user_segments.constprop.0.cold+0x19>
  19:	0f b6 d1             	movzbl %cl,%edx
  1c:	be 00 10 00 00       	mov    $0x1000,%esi
  21:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  28:	e8 00 00 00 00       	call   2d <zero_user_segments.constprop.0.cold+0x2d>
  2d:	e9 00 00 00 00       	jmp    32 <rfuse_aio_complete.cold>

0000000000000032 <rfuse_aio_complete.cold>:
	if (io->bytes >= 0 && io->write)
  32:	0f b6 f0             	movzbl %al,%esi
  35:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  3c:	e8 00 00 00 00       	call   41 <rfuse_aio_complete.cold+0xf>
  41:	45 84 ed             	test   %r13b,%r13b
  44:	0f 85 00 00 00 00    	jne    4a <rfuse_aio_complete.cold+0x18>
	return io->bytes < 0 ? io->size : io->bytes;
  4a:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  4e:	4d 85 e4             	test   %r12,%r12
  51:	0f 88 00 00 00 00    	js     57 <rfuse_aio_complete.cold+0x25>
  57:	e9 00 00 00 00       	jmp    5c <rfuse_aio_complete.cold+0x2a>
	if (!left && io->blocking)
  5c:	41 0f b6 f4          	movzbl %r12b,%esi
  60:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  67:	e8 00 00 00 00       	call   6c <rfuse_aio_complete.cold+0x3a>
  6c:	e9 00 00 00 00       	jmp    71 <rfuse_aio_complete.cold+0x3f>
	if (!left && !io->blocking) {
  71:	41 0f b6 f4          	movzbl %r12b,%esi
  75:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  7c:	e8 00 00 00 00       	call   81 <rfuse_aio_complete.cold+0x4f>
  81:	e9 00 00 00 00       	jmp    86 <rfuse_aio_complete_req.cold>

0000000000000086 <rfuse_aio_complete_req.cold>:
	} else if (io->write) {
  86:	0f b6 f0             	movzbl %al,%esi
  89:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  90:	88 45 b0             	mov    %al,-0x50(%rbp)
  93:	e8 00 00 00 00       	call   98 <rfuse_aio_complete_req.cold+0x12>
  98:	0f b6 45 b0          	movzbl -0x50(%rbp),%eax
  9c:	e9 00 00 00 00       	jmp    a1 <rfuse_aio_complete_req.cold+0x1b>
	rfuse_release_user_pages(r_req->rp, io->should_dirty);
  a1:	41 0f b6 f5          	movzbl %r13b,%esi
  a5:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  ac:	e8 00 00 00 00       	call   b1 <rfuse_aio_complete_req.cold+0x2b>
  b1:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  b5:	4c 8b b8 f0 00 00 00 	mov    0xf0(%rax),%r15
  bc:	e9 00 00 00 00       	jmp    c1 <rfuse_async_req_send.cold>

00000000000000c1 <rfuse_async_req_send.cold>:
	ria->r_req->may_block = io->should_dirty;
  c1:	0f b6 f3             	movzbl %bl,%esi
  c4:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  cb:	e8 00 00 00 00       	call   d0 <rfuse_async_req_send.cold+0xf>
  d0:	e9 00 00 00 00       	jmp    d5 <rfuse_direct_io.cold>

00000000000000d5 <rfuse_direct_io.cold>:
			rfuse_release_user_pages(&ria->rp, io->should_dirty);
  d5:	0f b6 f2             	movzbl %dl,%esi
  d8:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  df:	88 55 a0             	mov    %dl,-0x60(%rbp)
  e2:	e8 00 00 00 00       	call   e7 <rfuse_direct_io.cold+0x12>
  e7:	0f b6 55 a0          	movzbl -0x60(%rbp),%edx
  eb:	e9 00 00 00 00       	jmp    f0 <rfuse_direct_IO.cold>

00000000000000f0 <rfuse_direct_IO.cold>:
	if (io->bytes >= 0 && io->write)
  f0:	41 0f b6 f7          	movzbl %r15b,%esi
  f4:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  fb:	e8 00 00 00 00       	call   100 <rfuse_direct_IO.cold+0x10>
 100:	e9 00 00 00 00       	jmp    105 <rfuse_direct_IO.cold+0x15>
	if ((offset + count > i_size) && io->write)
 105:	41 0f b6 f7          	movzbl %r15b,%esi
 109:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
 110:	4c 89 55 90          	mov    %r10,-0x70(%rbp)
 114:	e8 00 00 00 00       	call   119 <rfuse_direct_IO.cold+0x29>
 119:	4c 8b 55 90          	mov    -0x70(%rbp),%r10
 11d:	e9 00 00 00 00       	jmp    122 <rfuse_direct_IO.cold+0x32>
	return i->data_source ? WRITE : READ;
 122:	0f b6 f2             	movzbl %dl,%esi
 125:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
 12c:	4c 89 5d 80          	mov    %r11,-0x80(%rbp)
 130:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
 134:	88 55 98             	mov    %dl,-0x68(%rbp)
 137:	e8 00 00 00 00       	call   13c <rfuse_direct_IO.cold+0x4c>
 13c:	0f b6 55 98          	movzbl -0x68(%rbp),%edx
 140:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
 144:	4c 8b 5d 80          	mov    -0x80(%rbp),%r11
 148:	e9 00 00 00 00       	jmp    14d <rfuse_direct_IO.cold+0x5d>
	if (io->async && io->blocking) {
 14d:	41 0f b6 f7          	movzbl %r15b,%esi
 151:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
 158:	4c 89 55 90          	mov    %r10,-0x70(%rbp)
 15c:	e8 00 00 00 00       	call   161 <rfuse_direct_IO.cold+0x71>
 161:	4c 8b 55 90          	mov    -0x70(%rbp),%r10
 165:	e9 00 00 00 00       	jmp    16a <rfuse_direct_IO.cold+0x7a>
 16a:	41 0f b6 f7          	movzbl %r15b,%esi
 16e:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
 175:	e8 00 00 00 00       	call   17a <rfuse_direct_IO.cold+0x8a>
 17a:	e9 00 00 00 00       	jmp    17f <rfuse_direct_IO.cold+0x8f>
 17f:	41 0f b6 f7          	movzbl %r15b,%esi
 183:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
 18a:	4c 89 55 90          	mov    %r10,-0x70(%rbp)
 18e:	e8 00 00 00 00       	call   193 <rfuse_direct_IO.cold+0xa3>
 193:	4c 8b 55 90          	mov    -0x70(%rbp),%r10
 197:	e9 00 00 00 00       	jmp    19c <rfuse_direct_IO.cold+0xac>
		bool blocking = io->blocking;
 19c:	41 0f b6 f7          	movzbl %r15b,%esi
 1a0:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
 1a7:	e8 00 00 00 00       	call   1ac <rfuse_direct_IO.cold+0xbc>
 1ac:	e9 00 00 00 00       	jmp    1b1 <rfuse_direct_IO.cold+0xc1>
 1b1:	41 0f b6 f5          	movzbl %r13b,%esi
 1b5:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
 1bc:	4c 89 5d 90          	mov    %r11,-0x70(%rbp)
 1c0:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
 1c4:	e8 00 00 00 00       	call   1c9 <rfuse_direct_IO.cold+0xd9>
 1c9:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
 1cd:	4c 8b 5d 90          	mov    -0x70(%rbp),%r11
 1d1:	e9 00 00 00 00       	jmp    1d6 <rfuse_perform_write.cold>

00000000000001d6 <rfuse_perform_write.cold>:
		if (ria->write.page_locked && (i == rp->num_pages - 1))
 1d6:	0f b6 f0             	movzbl %al,%esi
 1d9:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
 1e0:	4c 89 95 38 ff ff ff 	mov    %r10,-0xc8(%rbp)
 1e7:	88 85 48 ff ff ff    	mov    %al,-0xb8(%rbp)
 1ed:	e8 00 00 00 00       	call   1f2 <rfuse_perform_write.cold+0x1c>
 1f2:	0f b6 85 48 ff ff ff 	movzbl -0xb8(%rbp),%eax
 1f9:	4c 8b 95 38 ff ff ff 	mov    -0xc8(%rbp),%r10
 200:	e9 00 00 00 00       	jmp    205 <rfuse_perform_write.cold+0x2f>

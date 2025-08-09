
./linux/fs/fuse/rfuse_dev.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <__pfx_rfuse_copy_init>:
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

0000000000000010 <rfuse_copy_init>:
	unsigned len;
	unsigned offset;
	unsigned move_pages:1;
};

static void rfuse_copy_init(struct rfuse_copy_state *rcs, int write, struct iov_iter *iter){
      10:	e8 00 00 00 00       	call   15 <rfuse_copy_init+0x5>
      15:	55                   	push   %rbp
      16:	49 89 f8             	mov    %rdi,%r8
	memset(rcs, 0, sizeof(*rcs));
      19:	48 8d 7f 0c          	lea    0xc(%rdi),%rdi
      1d:	48 c7 47 f8 00 00 00 	movq   $0x0,-0x8(%rdi)
      24:	00 
      25:	44 89 c0             	mov    %r8d,%eax
      28:	48 c7 47 3c 00 00 00 	movq   $0x0,0x3c(%rdi)
      2f:	00 
      30:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
      34:	29 f8                	sub    %edi,%eax
static void rfuse_copy_init(struct rfuse_copy_state *rcs, int write, struct iov_iter *iter){
      36:	48 89 e5             	mov    %rsp,%rbp
	memset(rcs, 0, sizeof(*rcs));
      39:	8d 48 50             	lea    0x50(%rax),%ecx
      3c:	31 c0                	xor    %eax,%eax
      3e:	c1 e9 03             	shr    $0x3,%ecx
      41:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	rcs->write = write;
      44:	41 89 30             	mov    %esi,(%r8)
	rcs->iter = iter;
      47:	49 89 50 10          	mov    %rdx,0x10(%r8)
}
      4b:	5d                   	pop    %rbp
      4c:	31 c0                	xor    %eax,%eax
      4e:	31 d2                	xor    %edx,%edx
      50:	31 c9                	xor    %ecx,%ecx
      52:	31 f6                	xor    %esi,%esi
      54:	31 ff                	xor    %edi,%edi
      56:	45 31 c0             	xor    %r8d,%r8d
      59:	e9 00 00 00 00       	jmp    5e <rfuse_copy_init+0x4e>
      5e:	66 90                	xchg   %ax,%ax

0000000000000060 <__pfx_rfuse_force_creds>:
      60:	90                   	nop
      61:	90                   	nop
      62:	90                   	nop
      63:	90                   	nop
      64:	90                   	nop
      65:	90                   	nop
      66:	90                   	nop
      67:	90                   	nop
      68:	90                   	nop
      69:	90                   	nop
      6a:	90                   	nop
      6b:	90                   	nop
      6c:	90                   	nop
      6d:	90                   	nop
      6e:	90                   	nop
      6f:	90                   	nop

0000000000000070 <rfuse_force_creds>:
static void rfuse_force_creds(struct rfuse_req *r_req){
      70:	e8 00 00 00 00       	call   75 <rfuse_force_creds+0x5>
      75:	55                   	push   %rbp
      76:	48 89 e5             	mov    %rsp,%rbp
      79:	41 55                	push   %r13
      7b:	41 54                	push   %r12
      7d:	53                   	push   %rbx
	struct fuse_conn *fc = r_req->fm->fc;
      7e:	48 8b 47 50          	mov    0x50(%rdi),%rax
static void rfuse_force_creds(struct rfuse_req *r_req){
      82:	48 89 fb             	mov    %rdi,%rbx

DECLARE_PER_CPU_ALIGNED(struct pcpu_hot, pcpu_hot);

static __always_inline struct task_struct *get_current(void)
{
	return this_cpu_read_stable(pcpu_hot.current_task);
      85:	65 4c 8b 24 25 00 00 	mov    %gs:0x0,%r12
      8c:	00 00 
	struct fuse_conn *fc = r_req->fm->fc;
      8e:	4c 8b 28             	mov    (%rax),%r13
	r_req->in.uid = from_kuid(fc->user_ns, current_fsuid());
      91:	49 8b 84 24 b8 0b 00 	mov    0xbb8(%r12),%rax
      98:	00 
      99:	49 8b 7d 30          	mov    0x30(%r13),%rdi
      9d:	8b 70 1c             	mov    0x1c(%rax),%esi
      a0:	e8 00 00 00 00       	call   a5 <rfuse_force_creds+0x35>
      a5:	89 43 14             	mov    %eax,0x14(%rbx)
    r_req->in.gid = from_kgid(fc->user_ns, current_fsgid());
      a8:	49 8b 84 24 b8 0b 00 	mov    0xbb8(%r12),%rax
      af:	00 
      b0:	49 8b 7d 30          	mov    0x30(%r13),%rdi
      b4:	8b 70 20             	mov    0x20(%rax),%esi
      b7:	e8 00 00 00 00       	call   bc <rfuse_force_creds+0x4c>
      bc:	89 43 18             	mov    %eax,0x18(%rbx)
    r_req->in.pid = pid_nr_ns(task_pid(current), fc->pid_ns);
      bf:	49 8b 75 28          	mov    0x28(%r13),%rsi
      c3:	49 8b bc 24 00 0a 00 	mov    0xa00(%r12),%rdi
      ca:	00 
      cb:	e8 00 00 00 00       	call   d0 <rfuse_force_creds+0x60>
      d0:	89 43 1c             	mov    %eax,0x1c(%rbx)
}
      d3:	5b                   	pop    %rbx
      d4:	41 5c                	pop    %r12
      d6:	41 5d                	pop    %r13
      d8:	5d                   	pop    %rbp
      d9:	31 c0                	xor    %eax,%eax
      db:	31 f6                	xor    %esi,%esi
      dd:	31 ff                	xor    %edi,%edi
      df:	e9 00 00 00 00       	jmp    e4 <rfuse_force_creds+0x74>
      e4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
      eb:	00 00 00 00 
      ef:	90                   	nop

00000000000000f0 <__pfx_rfuse_unlock_request.part.0>:
      f0:	90                   	nop
      f1:	90                   	nop
      f2:	90                   	nop
      f3:	90                   	nop
      f4:	90                   	nop
      f5:	90                   	nop
      f6:	90                   	nop
      f7:	90                   	nop
      f8:	90                   	nop
      f9:	90                   	nop
      fa:	90                   	nop
      fb:	90                   	nop
      fc:	90                   	nop
      fd:	90                   	nop
      fe:	90                   	nop
      ff:	90                   	nop

0000000000000100 <rfuse_unlock_request.part.0>:
static int rfuse_unlock_request(struct rfuse_req *r_req)
     100:	e8 00 00 00 00       	call   105 <rfuse_unlock_request.part.0+0x5>
     105:	55                   	push   %rbp
     106:	48 89 e5             	mov    %rsp,%rbp
     109:	41 55                	push   %r13
     10b:	41 bd fe ff ff ff    	mov    $0xfffffffe,%r13d
     111:	41 54                	push   %r12

#endif

static __always_inline void spin_lock(spinlock_t *lock)
{
	raw_spin_lock(&lock->rlock);
     113:	4c 8d 67 60          	lea    0x60(%rdi),%r12
     117:	53                   	push   %rbx
     118:	48 89 fb             	mov    %rdi,%rbx
     11b:	4c 89 e7             	mov    %r12,%rdi
     11e:	e8 00 00 00 00       	call   123 <rfuse_unlock_request.part.0+0x23>
}

static __always_inline bool constant_test_bit(long nr, const volatile unsigned long *addr)
{
	return ((1UL << (nr & (BITS_PER_LONG-1))) &
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
     123:	48 8b 43 48          	mov    0x48(%rbx),%rax
		if (test_bit(FR_ABORTED, &r_req->flags))
     127:	a8 10                	test   $0x10,%al
     129:	75 08                	jne    133 <rfuse_unlock_request.part.0+0x33>
		asm volatile(LOCK_PREFIX "andb %b1,%0"
     12b:	f0 80 63 48 bf       	lock andb $0xbf,0x48(%rbx)
	int err = 0;
     130:	45 31 ed             	xor    %r13d,%r13d
	raw_spin_lock_irqsave_nested(spinlock_check(lock), flags, subclass); \
} while (0)

static __always_inline void spin_unlock(spinlock_t *lock)
{
	raw_spin_unlock(&lock->rlock);
     133:	4c 89 e7             	mov    %r12,%rdi
     136:	e8 00 00 00 00       	call   13b <rfuse_unlock_request.part.0+0x3b>
}
     13b:	44 89 e8             	mov    %r13d,%eax
     13e:	5b                   	pop    %rbx
     13f:	41 5c                	pop    %r12
     141:	41 5d                	pop    %r13
     143:	5d                   	pop    %rbp
     144:	31 ff                	xor    %edi,%edi
     146:	e9 00 00 00 00       	jmp    14b <rfuse_unlock_request.part.0+0x4b>
     14b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000150 <__pfx_rfuse_lock_request.part.0>:
     150:	90                   	nop
     151:	90                   	nop
     152:	90                   	nop
     153:	90                   	nop
     154:	90                   	nop
     155:	90                   	nop
     156:	90                   	nop
     157:	90                   	nop
     158:	90                   	nop
     159:	90                   	nop
     15a:	90                   	nop
     15b:	90                   	nop
     15c:	90                   	nop
     15d:	90                   	nop
     15e:	90                   	nop
     15f:	90                   	nop

0000000000000160 <rfuse_lock_request.part.0>:
static int rfuse_lock_request(struct rfuse_req *r_req)
     160:	e8 00 00 00 00       	call   165 <rfuse_lock_request.part.0+0x5>
     165:	55                   	push   %rbp
     166:	48 89 e5             	mov    %rsp,%rbp
     169:	41 55                	push   %r13
     16b:	41 bd fe ff ff ff    	mov    $0xfffffffe,%r13d
     171:	41 54                	push   %r12
	raw_spin_lock(&lock->rlock);
     173:	4c 8d 67 60          	lea    0x60(%rdi),%r12
     177:	53                   	push   %rbx
     178:	48 89 fb             	mov    %rdi,%rbx
     17b:	4c 89 e7             	mov    %r12,%rdi
     17e:	e8 00 00 00 00       	call   183 <rfuse_lock_request.part.0+0x23>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
     183:	48 8b 43 48          	mov    0x48(%rbx),%rax
		if (test_bit(FR_ABORTED, &r_req->flags))
     187:	a8 10                	test   $0x10,%al
     189:	75 08                	jne    193 <rfuse_lock_request.part.0+0x33>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
     18b:	f0 80 4b 48 40       	lock orb $0x40,0x48(%rbx)
	int err = 0;
     190:	45 31 ed             	xor    %r13d,%r13d
	raw_spin_unlock(&lock->rlock);
     193:	4c 89 e7             	mov    %r12,%rdi
     196:	e8 00 00 00 00       	call   19b <rfuse_lock_request.part.0+0x3b>
}
     19b:	44 89 e8             	mov    %r13d,%eax
     19e:	5b                   	pop    %rbx
     19f:	41 5c                	pop    %r12
     1a1:	41 5d                	pop    %r13
     1a3:	5d                   	pop    %rbp
     1a4:	31 ff                	xor    %edi,%edi
     1a6:	e9 00 00 00 00       	jmp    1ab <rfuse_lock_request.part.0+0x4b>
     1ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000001b0 <__pfx_rfuse_drop_waiting>:
     1b0:	90                   	nop
     1b1:	90                   	nop
     1b2:	90                   	nop
     1b3:	90                   	nop
     1b4:	90                   	nop
     1b5:	90                   	nop
     1b6:	90                   	nop
     1b7:	90                   	nop
     1b8:	90                   	nop
     1b9:	90                   	nop
     1ba:	90                   	nop
     1bb:	90                   	nop
     1bc:	90                   	nop
     1bd:	90                   	nop
     1be:	90                   	nop
     1bf:	90                   	nop

00000000000001c0 <rfuse_drop_waiting>:
{
     1c0:	e8 00 00 00 00       	call   1c5 <rfuse_drop_waiting+0x5>
}
#define arch_atomic_dec arch_atomic_dec

static __always_inline bool arch_atomic_dec_and_test(atomic_t *v)
{
	return GEN_UNARY_RMWcc(LOCK_PREFIX "decl", v->counter, e);
     1c5:	f0 ff 8f 3c 01 00 00 	lock decl 0x13c(%rdi)
	if (atomic_dec_and_test(&fc->num_waiting) &&
     1cc:	75 0a                	jne    1d8 <rfuse_drop_waiting+0x18>
			!READ_ONCE(fc->connected)) {
     1ce:	8b 87 30 01 00 00    	mov    0x130(%rdi),%eax
	if (atomic_dec_and_test(&fc->num_waiting) &&
     1d4:	85 c0                	test   %eax,%eax
     1d6:	74 0f                	je     1e7 <rfuse_drop_waiting+0x27>
     1d8:	31 c0                	xor    %eax,%eax
     1da:	31 d2                	xor    %edx,%edx
     1dc:	31 c9                	xor    %ecx,%ecx
     1de:	31 f6                	xor    %esi,%esi
     1e0:	31 ff                	xor    %edi,%edi
     1e2:	e9 00 00 00 00       	jmp    1e7 <rfuse_drop_waiting+0x27>
{
     1e7:	55                   	push   %rbp
		wake_up_all(&fc->blocked_waitq);
     1e8:	48 81 c7 18 01 00 00 	add    $0x118,%rdi
     1ef:	31 c9                	xor    %ecx,%ecx
     1f1:	31 d2                	xor    %edx,%edx
     1f3:	be 03 00 00 00       	mov    $0x3,%esi
{
     1f8:	48 89 e5             	mov    %rsp,%rbp
		wake_up_all(&fc->blocked_waitq);
     1fb:	e8 00 00 00 00       	call   200 <rfuse_drop_waiting+0x40>
}
     200:	5d                   	pop    %rbp
     201:	31 c0                	xor    %eax,%eax
     203:	31 d2                	xor    %edx,%edx
     205:	31 c9                	xor    %ecx,%ecx
     207:	31 f6                	xor    %esi,%esi
     209:	31 ff                	xor    %edi,%edi
     20b:	e9 00 00 00 00       	jmp    210 <__pfx_rfuse_queue_request>

0000000000000210 <__pfx_rfuse_queue_request>:
     210:	90                   	nop
     211:	90                   	nop
     212:	90                   	nop
     213:	90                   	nop
     214:	90                   	nop
     215:	90                   	nop
     216:	90                   	nop
     217:	90                   	nop
     218:	90                   	nop
     219:	90                   	nop
     21a:	90                   	nop
     21b:	90                   	nop
     21c:	90                   	nop
     21d:	90                   	nop
     21e:	90                   	nop
     21f:	90                   	nop

0000000000000220 <rfuse_queue_request>:
static void rfuse_queue_request(struct rfuse_req *r_req){
     220:	e8 00 00 00 00       	call   225 <rfuse_queue_request+0x5>
     225:	55                   	push   %rbp
     226:	48 89 e5             	mov    %rsp,%rbp
     229:	41 55                	push   %r13
     22b:	41 54                	push   %r12
     22d:	49 89 fc             	mov    %rdi,%r12
     230:	53                   	push   %rbx
	struct fuse_conn *fc = fm->fc;
     231:	48 8b 47 50          	mov    0x50(%rdi),%rax
	return fc->riq[id];
     235:	48 63 57 44          	movslq 0x44(%rdi),%rdx
     239:	48 8b 00             	mov    (%rax),%rax
     23c:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
     243:	48 8b 1c d0          	mov    (%rax,%rdx,8),%rbx
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
     247:	48 8b 47 48          	mov    0x48(%rdi),%rax
	if(test_bit(FR_BACKGROUND, &r_req->flags)){
     24b:	a8 04                	test   $0x4,%al
     24d:	74 06                	je     255 <rfuse_queue_request+0x35>
	asm volatile(__ASM_SIZE(bts) " %1,%0" : : ADDR, "Ir" (nr) : "memory");
     24f:	48 0f ba 6f 48 0b    	btsq   $0xb,0x48(%rdi)
	raw_spin_lock(&lock->rlock);
     255:	4c 8d ab c8 00 00 00 	lea    0xc8(%rbx),%r13
     25c:	4c 89 ef             	mov    %r13,%rdi
     25f:	e8 00 00 00 00       	call   264 <rfuse_queue_request+0x44>
	head = smp_load_acquire(&pending->head); // Cannot touch in kernel
     264:	8b 4b 0c             	mov    0xc(%rbx),%ecx
	next = pending->tail + 1;
     267:	8b 43 08             	mov    0x8(%rbx),%eax
     26a:	8d 50 01             	lea    0x1(%rax),%edx
	if (next - head <= pending->entries) {
     26d:	29 ca                	sub    %ecx,%edx
     26f:	39 53 14             	cmp    %edx,0x14(%rbx)
     272:	0f 82 a7 00 00 00    	jb     31f <rfuse_queue_request+0xff>
	riq->reqctr += RFUSE_REQ_ID_STEP;
     278:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
		ret = &pending->kaddr[pending->tail & pending->mask];
     27f:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
     283:	23 43 10             	and    0x10(%rbx),%eax
	riq->reqctr += RFUSE_REQ_ID_STEP;
     286:	48 8d 56 02          	lea    0x2(%rsi),%rdx
     28a:	48 89 93 d0 00 00 00 	mov    %rdx,0xd0(%rbx)
	r_req->in.unique = rfuse_get_unique(riq); 
     291:	49 89 14 24          	mov    %rdx,(%r12)
	entry->request = r_req->index;				// fill entry
     295:	41 8b 54 24 40       	mov    0x40(%r12),%edx
     29a:	89 14 81             	mov    %edx,(%rcx,%rax,4)
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
     29d:	49 8b 44 24 48       	mov    0x48(%r12),%rax
	if(!test_bit(FR_BACKGROUND, &r_req->flags)) // only increase the reference count for synchronous requests
     2a2:	a8 04                	test   $0x4,%al
     2a4:	74 51                	je     2f7 <rfuse_queue_request+0xd7>
	unsigned int next =  pending->tail + 1;
     2a6:	8b 43 08             	mov    0x8(%rbx),%eax
     2a9:	83 c0 01             	add    $0x1,%eax
	smp_store_release(&pending->tail,next);
     2ac:	89 43 08             	mov    %eax,0x8(%rbx)
	raw_spin_unlock(&lock->rlock);
     2af:	4c 89 ef             	mov    %r13,%rdi
     2b2:	e8 00 00 00 00       	call   2b7 <rfuse_queue_request+0x97>
 * list_empty - tests whether a list is empty
 * @head: the list to test.
 */
static inline int list_empty(const struct list_head *head)
{
	return READ_ONCE(head->next) == head;
     2b7:	48 8b 83 18 01 00 00 	mov    0x118(%rbx),%rax
 * Also note that this 'optimization' trades a spin_lock() for an smp_mb(),
 * which (when the lock is uncontended) are of roughly equal cost.
 */
static inline int waitqueue_active(struct wait_queue_head *wq_head)
{
	return !list_empty(&wq_head->head);
     2be:	48 8d bb 10 01 00 00 	lea    0x110(%rbx),%rdi
     2c5:	48 81 c3 18 01 00 00 	add    $0x118,%rbx
	if(waitqueue_active(&riq->idle_user_waitq)){
     2cc:	48 39 d8             	cmp    %rbx,%rax
     2cf:	74 11                	je     2e2 <rfuse_queue_request+0xc2>
		wake_up(&riq->idle_user_waitq);		// Wake up idle user thread
     2d1:	31 c9                	xor    %ecx,%ecx
     2d3:	ba 01 00 00 00       	mov    $0x1,%edx
     2d8:	be 03 00 00 00       	mov    $0x3,%esi
     2dd:	e8 00 00 00 00       	call   2e2 <rfuse_queue_request+0xc2>
}
     2e2:	5b                   	pop    %rbx
     2e3:	41 5c                	pop    %r12
     2e5:	41 5d                	pop    %r13
     2e7:	5d                   	pop    %rbp
     2e8:	31 c0                	xor    %eax,%eax
     2ea:	31 d2                	xor    %edx,%edx
     2ec:	31 c9                	xor    %ecx,%ecx
     2ee:	31 f6                	xor    %esi,%esi
     2f0:	31 ff                	xor    %edi,%edi
     2f2:	e9 00 00 00 00       	jmp    2f7 <rfuse_queue_request+0xd7>
	refcount_inc(&r_req->count);
     2f7:	49 8d 7c 24 58       	lea    0x58(%r12),%rdi
}
#define arch_atomic_sub_return arch_atomic_sub_return

static __always_inline int arch_atomic_fetch_add(int i, atomic_t *v)
{
	return xadd(&v->counter, i);
     2fc:	b8 01 00 00 00       	mov    $0x1,%eax
     301:	f0 41 0f c1 44 24 58 	lock xadd %eax,0x58(%r12)
	int old = atomic_fetch_add_relaxed(i, &r->refs);

	if (oldp)
		*oldp = old;

	if (unlikely(!old))
     308:	85 c0                	test   %eax,%eax
     30a:	74 3a                	je     346 <rfuse_queue_request+0x126>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
	else if (unlikely(old < 0 || old + i < 0))
     30c:	8d 50 01             	lea    0x1(%rax),%edx
     30f:	09 c2                	or     %eax,%edx
     311:	79 93                	jns    2a6 <rfuse_queue_request+0x86>
		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
     313:	be 01 00 00 00       	mov    $0x1,%esi
     318:	e8 00 00 00 00       	call   31d <rfuse_queue_request+0xfd>
     31d:	eb 87                	jmp    2a6 <rfuse_queue_request+0x86>
	riq->reqctr += RFUSE_REQ_ID_STEP;
     31f:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
     326:	48 83 c0 02          	add    $0x2,%rax
     32a:	48 89 83 d0 00 00 00 	mov    %rax,0xd0(%rbx)
	r_req->in.unique = rfuse_get_unique(riq); 
     331:	49 89 04 24          	mov    %rax,(%r12)
	entry->request = r_req->index;				// fill entry
     335:	41 8b 44 24 40       	mov    0x40(%r12),%eax
     33a:	89 04 25 00 00 00 00 	mov    %eax,0x0
	if(!test_bit(FR_BACKGROUND, &r_req->flags)) // only increase the reference count for synchronous requests
     341:	e9 57 ff ff ff       	jmp    29d <rfuse_queue_request+0x7d>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
     346:	be 02 00 00 00       	mov    $0x2,%esi
     34b:	e8 00 00 00 00       	call   350 <rfuse_queue_request+0x130>
     350:	e9 51 ff ff ff       	jmp    2a6 <rfuse_queue_request+0x86>
     355:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     35c:	00 00 00 00 

0000000000000360 <__pfx_rfuse_flush_bg_queue.isra.0>:
     360:	90                   	nop
     361:	90                   	nop
     362:	90                   	nop
     363:	90                   	nop
     364:	90                   	nop
     365:	90                   	nop
     366:	90                   	nop
     367:	90                   	nop
     368:	90                   	nop
     369:	90                   	nop
     36a:	90                   	nop
     36b:	90                   	nop
     36c:	90                   	nop
     36d:	90                   	nop
     36e:	90                   	nop
     36f:	90                   	nop

0000000000000370 <rfuse_flush_bg_queue.isra.0>:
static void rfuse_flush_bg_queue(struct fuse_conn *fc, int riq_id){
     370:	e8 00 00 00 00       	call   375 <rfuse_flush_bg_queue.isra.0+0x5>
     375:	55                   	push   %rbp
	return fc->riq[id];
     376:	48 63 f6             	movslq %esi,%rsi
static void rfuse_flush_bg_queue(struct fuse_conn *fc, int riq_id){
     379:	48 89 e5             	mov    %rsp,%rbp
     37c:	41 57                	push   %r15
     37e:	49 bf 00 01 00 00 00 	movabs $0xdead000000000100,%r15
     385:	00 ad de 
     388:	41 56                	push   %r14
     38a:	49 be 22 01 00 00 00 	movabs $0xdead000000000122,%r14
     391:	00 ad de 
     394:	41 55                	push   %r13
     396:	41 54                	push   %r12
     398:	53                   	push   %rbx
	return fc->riq[id];
     399:	48 8b 1c f7          	mov    (%rdi,%rsi,8),%rbx
	while (riq->active_background < riq->max_background &&
     39d:	8b 83 44 01 00 00    	mov    0x144(%rbx),%eax
     3a3:	4c 8d ab 30 01 00 00 	lea    0x130(%rbx),%r13
     3aa:	39 83 50 01 00 00    	cmp    %eax,0x150(%rbx)
     3b0:	72 4f                	jb     401 <rfuse_flush_bg_queue.isra.0+0x91>
     3b2:	eb 59                	jmp    40d <rfuse_flush_bg_queue.isra.0+0x9d>
		bg_entry = list_first_entry(&riq->bg_queue, struct rfuse_bg_entry, list);
     3b4:	48 8b bb 30 01 00 00 	mov    0x130(%rbx),%rdi
	__list_del(entry->prev, entry->next);
     3bb:	48 8b 47 08          	mov    0x8(%rdi),%rax
     3bf:	48 8b 17             	mov    (%rdi),%rdx
	next->prev = prev;
     3c2:	48 89 42 08          	mov    %rax,0x8(%rdx)
	WRITE_ONCE(prev->next, next);
     3c6:	48 89 10             	mov    %rdx,(%rax)
	entry->next = LIST_POISON1;
     3c9:	4c 89 3f             	mov    %r15,(%rdi)
	entry->prev = LIST_POISON2;
     3cc:	4c 89 77 08          	mov    %r14,0x8(%rdi)
		riq->active_background++;
     3d0:	83 83 50 01 00 00 01 	addl   $0x1,0x150(%rbx)
		r_req = (struct rfuse_req*)&riq->kreq[bg_entry->request];
     3d7:	44 8b 67 10          	mov    0x10(%rdi),%r12d
     3db:	49 c1 e4 08          	shl    $0x8,%r12
     3df:	4c 03 a3 a0 00 00 00 	add    0xa0(%rbx),%r12
		kfree(bg_entry);
     3e6:	e8 00 00 00 00       	call   3eb <rfuse_flush_bg_queue.isra.0+0x7b>
		rfuse_queue_request(r_req); // only queue request but not wait for it
     3eb:	4c 89 e7             	mov    %r12,%rdi
     3ee:	e8 2d fe ff ff       	call   220 <rfuse_queue_request>
	while (riq->active_background < riq->max_background &&
     3f3:	8b 83 44 01 00 00    	mov    0x144(%rbx),%eax
     3f9:	39 83 50 01 00 00    	cmp    %eax,0x150(%rbx)
     3ff:	73 0c                	jae    40d <rfuse_flush_bg_queue.isra.0+0x9d>
	return READ_ONCE(head->next) == head;
     401:	48 8b 83 30 01 00 00 	mov    0x130(%rbx),%rax
     408:	4c 39 e8             	cmp    %r13,%rax
     40b:	75 a7                	jne    3b4 <rfuse_flush_bg_queue.isra.0+0x44>
}
     40d:	5b                   	pop    %rbx
     40e:	41 5c                	pop    %r12
     410:	41 5d                	pop    %r13
     412:	41 5e                	pop    %r14
     414:	41 5f                	pop    %r15
     416:	5d                   	pop    %rbp
     417:	31 c0                	xor    %eax,%eax
     419:	31 d2                	xor    %edx,%edx
     41b:	31 f6                	xor    %esi,%esi
     41d:	31 ff                	xor    %edi,%edi
     41f:	e9 00 00 00 00       	jmp    424 <rfuse_flush_bg_queue.isra.0+0xb4>
     424:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     42b:	00 00 00 00 
     42f:	90                   	nop

0000000000000430 <__pfx_rfuse_abort_conn>:
     430:	90                   	nop
     431:	90                   	nop
     432:	90                   	nop
     433:	90                   	nop
     434:	90                   	nop
     435:	90                   	nop
     436:	90                   	nop
     437:	90                   	nop
     438:	90                   	nop
     439:	90                   	nop
     43a:	90                   	nop
     43b:	90                   	nop
     43c:	90                   	nop
     43d:	90                   	nop
     43e:	90                   	nop
     43f:	90                   	nop

0000000000000440 <rfuse_abort_conn>:
	kvfree(bufs);
	return ret;
}

/************ 6. Unmount ************/
void rfuse_abort_conn(struct fuse_conn *fc){
     440:	e8 00 00 00 00       	call   445 <rfuse_abort_conn+0x5>
     445:	55                   	push   %rbp
     446:	48 89 e5             	mov    %rsp,%rbp
     449:	41 55                	push   %r13
     44b:	41 54                	push   %r12
     44d:	49 89 fc             	mov    %rdi,%r12
     450:	53                   	push   %rbx
     451:	48 8b 9f d0 00 00 00 	mov    0xd0(%rdi),%rbx
     458:	4c 8d 6b 10          	lea    0x10(%rbx),%r13
	raw_spin_lock(&lock->rlock);
     45c:	48 8b 03             	mov    (%rbx),%rax
	struct rfuse_iqueue **riq = fc->riq;
	unsigned int i;

	for(i = 0; i < RFUSE_NUM_IQUEUE; i++) {
     45f:	48 83 c3 08          	add    $0x8,%rbx
     463:	48 8d b8 c8 00 00 00 	lea    0xc8(%rax),%rdi
     46a:	e8 00 00 00 00       	call   46f <rfuse_abort_conn+0x2f>
		spin_lock(&riq[i]->lock);
		riq[i]->connected = 0;
     46f:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
     473:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%rax)
     47a:	00 00 00 
     47d:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
     481:	48 8d b8 40 01 00 00 	lea    0x140(%rax),%rdi
     488:	e8 00 00 00 00       	call   48d <rfuse_abort_conn+0x4d>

		spin_lock(&riq[i]->bg_lock);
		rfuse_flush_bg_queue(fc, riq[i]->riq_id);
     48d:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
     491:	49 8b bc 24 d0 00 00 	mov    0xd0(%r12),%rdi
     498:	00 
     499:	8b 30                	mov    (%rax),%esi
     49b:	e8 d0 fe ff ff       	call   370 <rfuse_flush_bg_queue.isra.0>
	raw_spin_unlock(&lock->rlock);
     4a0:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
     4a4:	48 8d b8 40 01 00 00 	lea    0x140(%rax),%rdi
     4ab:	e8 00 00 00 00       	call   4b0 <rfuse_abort_conn+0x70>
		spin_unlock(&riq[i]->bg_lock);

		wake_up_all(&riq[i]->waitq);
     4b0:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
     4b4:	31 c9                	xor    %ecx,%ecx
     4b6:	31 d2                	xor    %edx,%edx
     4b8:	be 03 00 00 00       	mov    $0x3,%esi
     4bd:	48 8d b8 b0 00 00 00 	lea    0xb0(%rax),%rdi
     4c4:	e8 00 00 00 00       	call   4c9 <rfuse_abort_conn+0x89>
		wake_up_all(&riq[i]->idle_user_waitq);
     4c9:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
     4cd:	31 c9                	xor    %ecx,%ecx
     4cf:	31 d2                	xor    %edx,%edx
     4d1:	be 03 00 00 00       	mov    $0x3,%esi
     4d6:	48 8d b8 10 01 00 00 	lea    0x110(%rax),%rdi
     4dd:	e8 00 00 00 00       	call   4e2 <rfuse_abort_conn+0xa2>
     4e2:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
     4e6:	48 8d b8 c8 00 00 00 	lea    0xc8(%rax),%rdi
     4ed:	e8 00 00 00 00       	call   4f2 <rfuse_abort_conn+0xb2>
	for(i = 0; i < RFUSE_NUM_IQUEUE; i++) {
     4f2:	4c 39 eb             	cmp    %r13,%rbx
     4f5:	0f 85 61 ff ff ff    	jne    45c <rfuse_abort_conn+0x1c>
		spin_unlock(&riq[i]->lock);
	}
}
     4fb:	5b                   	pop    %rbx
     4fc:	41 5c                	pop    %r12
     4fe:	41 5d                	pop    %r13
     500:	5d                   	pop    %rbp
     501:	31 c0                	xor    %eax,%eax
     503:	31 d2                	xor    %edx,%edx
     505:	31 c9                	xor    %ecx,%ecx
     507:	31 f6                	xor    %esi,%esi
     509:	31 ff                	xor    %edi,%edi
     50b:	e9 00 00 00 00       	jmp    510 <__pfx_rfuse_copy_finish>

0000000000000510 <__pfx_rfuse_copy_finish>:
     510:	90                   	nop
     511:	90                   	nop
     512:	90                   	nop
     513:	90                   	nop
     514:	90                   	nop
     515:	90                   	nop
     516:	90                   	nop
     517:	90                   	nop
     518:	90                   	nop
     519:	90                   	nop
     51a:	90                   	nop
     51b:	90                   	nop
     51c:	90                   	nop
     51d:	90                   	nop
     51e:	90                   	nop
     51f:	90                   	nop

0000000000000520 <rfuse_copy_finish>:
{
     520:	e8 00 00 00 00       	call   525 <rfuse_copy_finish+0x5>
     525:	55                   	push   %rbp
     526:	48 89 e5             	mov    %rsp,%rbp
     529:	53                   	push   %rbx
     52a:	48 89 fb             	mov    %rdi,%rbx
     52d:	48 83 ec 08          	sub    $0x8,%rsp
	if (rcs->currbuf) {
     531:	48 8b 47 20          	mov    0x20(%rdi),%rax
     535:	48 85 c0             	test   %rax,%rax
     538:	74 35                	je     56f <rfuse_copy_finish+0x4f>
		if (rcs->write)
     53a:	8b 17                	mov    (%rdi),%edx
     53c:	85 d2                	test   %edx,%edx
     53e:	75 22                	jne    562 <rfuse_copy_finish+0x42>
		rcs->currbuf = NULL;
     540:	48 c7 43 20 00 00 00 	movq   $0x0,0x20(%rbx)
     547:	00 
	rcs->pg = NULL;
     548:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
     54f:	00 
}
     550:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
     554:	c9                   	leave  
     555:	31 c0                	xor    %eax,%eax
     557:	31 d2                	xor    %edx,%edx
     559:	31 f6                	xor    %esi,%esi
     55b:	31 ff                	xor    %edi,%edi
     55d:	e9 00 00 00 00       	jmp    562 <rfuse_copy_finish+0x42>
			buf->len = PAGE_SIZE - rcs->len;
     562:	ba 00 10 00 00       	mov    $0x1000,%edx
     567:	2b 57 40             	sub    0x40(%rdi),%edx
     56a:	89 50 0c             	mov    %edx,0xc(%rax)
     56d:	eb d1                	jmp    540 <rfuse_copy_finish+0x20>
	} else if (rcs->pg) {
     56f:	48 8b 7f 38          	mov    0x38(%rdi),%rdi
     573:	48 85 ff             	test   %rdi,%rdi
     576:	74 d0                	je     548 <rfuse_copy_finish+0x28>
		if (rcs->write) {
     578:	8b 03                	mov    (%rbx),%eax
     57a:	85 c0                	test   %eax,%eax
     57c:	75 19                	jne    597 <rfuse_copy_finish+0x77>
	return page_fixed_fake_head(page) != page;
}

static inline unsigned long _compound_head(const struct page *page)
{
	unsigned long head = READ_ONCE(page->compound_head);
     57e:	48 8b 47 08          	mov    0x8(%rdi),%rax

	if (unlikely(head & 1))
     582:	a8 01                	test   $0x1,%al
     584:	75 65                	jne    5eb <rfuse_copy_finish+0xcb>

#ifdef CONFIG_HAVE_JUMP_LABEL_HACK

static __always_inline bool arch_static_branch(struct static_key *key, bool branch)
{
	asm_volatile_goto("1:"
     586:	66 90                	xchg   %ax,%ax
     588:	66 90                	xchg   %ax,%ax
	return GEN_UNARY_RMWcc(LOCK_PREFIX "decl", v->counter, e);
     58a:	f0 ff 4f 34          	lock decl 0x34(%rdi)
 * Context: May be called in process or interrupt context, but not in NMI
 * context.  May be called while holding a spinlock.
 */
static inline void folio_put(struct folio *folio)
{
	if (folio_put_testzero(folio))
     58e:	75 b8                	jne    548 <rfuse_copy_finish+0x28>
		__folio_put(folio);
     590:	e8 00 00 00 00       	call   595 <rfuse_copy_finish+0x75>
     595:	eb b1                	jmp    548 <rfuse_copy_finish+0x28>
			set_page_dirty_lock(rcs->pg);
     597:	e8 00 00 00 00       	call   59c <rfuse_copy_finish+0x7c>
		put_page(rcs->pg);
     59c:	48 8b 7b 38          	mov    0x38(%rbx),%rdi
     5a0:	eb dc                	jmp    57e <rfuse_copy_finish+0x5e>
#define ZONEID_MASK		((1UL << ZONEID_SHIFT) - 1)

static inline enum zone_type page_zonenum(const struct page *page)
{
	ASSERT_EXCLUSIVE_BITS(page->flags, ZONES_MASK << ZONES_PGSHIFT);
	return (page->flags >> ZONES_PGSHIFT) & ZONES_MASK;
     5a2:	48 8b 07             	mov    (%rdi),%rax
     5a5:	48 c1 e8 33          	shr    $0x33,%rax
     5a9:	83 e0 07             	and    $0x7,%eax
	if (!is_zone_device_page(page))
     5ac:	83 f8 04             	cmp    $0x4,%eax
     5af:	75 d9                	jne    58a <rfuse_copy_finish+0x6a>
	return __put_devmap_managed_page_refs(page, refs);
     5b1:	be 01 00 00 00       	mov    $0x1,%esi
     5b6:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
     5ba:	e8 00 00 00 00       	call   5bf <rfuse_copy_finish+0x9f>

	/*
	 * For some devmap managed pages we need to catch refcount transition
	 * from 2 to 1:
	 */
	if (put_devmap_managed_page(&folio->page))
     5bf:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
     5c3:	84 c0                	test   %al,%al
     5c5:	75 81                	jne    548 <rfuse_copy_finish+0x28>
     5c7:	eb c1                	jmp    58a <rfuse_copy_finish+0x6a>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
     5c9:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
     5cf:	75 b7                	jne    588 <rfuse_copy_finish+0x68>
     5d1:	48 8b 07             	mov    (%rdi),%rax
     5d4:	a9 00 00 01 00       	test   $0x10000,%eax
     5d9:	74 ad                	je     588 <rfuse_copy_finish+0x68>
		unsigned long head = READ_ONCE(page[1].compound_head);
     5db:	48 8b 47 48          	mov    0x48(%rdi),%rax
			return (const struct page *)(head - 1);
     5df:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     5e3:	a8 01                	test   $0x1,%al
     5e5:	48 0f 45 fa          	cmovne %rdx,%rdi
     5e9:	eb 9d                	jmp    588 <rfuse_copy_finish+0x68>
		return head - 1;
     5eb:	48 8d 78 ff          	lea    -0x1(%rax),%rdi
     5ef:	eb 97                	jmp    588 <rfuse_copy_finish+0x68>
     5f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     5f8:	00 00 00 00 
     5fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000600 <__pfx_rfuse_copy_page>:
     600:	90                   	nop
     601:	90                   	nop
     602:	90                   	nop
     603:	90                   	nop
     604:	90                   	nop
     605:	90                   	nop
     606:	90                   	nop
     607:	90                   	nop
     608:	90                   	nop
     609:	90                   	nop
     60a:	90                   	nop
     60b:	90                   	nop
     60c:	90                   	nop
     60d:	90                   	nop
     60e:	90                   	nop
     60f:	90                   	nop

0000000000000610 <rfuse_copy_page>:
		unsigned offset, unsigned count, int zeroing){
     610:	e8 00 00 00 00       	call   615 <rfuse_copy_page+0x5>
     615:	55                   	push   %rbp
     616:	48 89 e5             	mov    %rsp,%rbp
     619:	41 57                	push   %r15
     61b:	49 89 ff             	mov    %rdi,%r15
     61e:	41 56                	push   %r14
     620:	41 55                	push   %r13
     622:	41 89 d5             	mov    %edx,%r13d
     625:	41 54                	push   %r12
     627:	53                   	push   %rbx
     628:	89 cb                	mov    %ecx,%ebx
     62a:	48 83 ec 48          	sub    $0x48,%rsp
     62e:	48 89 75 a8          	mov    %rsi,-0x58(%rbp)
	struct page *page = *pagep;
     632:	4c 8b 26             	mov    (%rsi),%r12
		unsigned offset, unsigned count, int zeroing){
     635:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
     63c:	00 00 
     63e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     642:	31 c0                	xor    %eax,%eax
	if(page && zeroing && count < PAGE_SIZE)
     644:	4d 85 e4             	test   %r12,%r12
     647:	0f 95 45 b7          	setne  -0x49(%rbp)
     64b:	81 f9 ff 0f 00 00    	cmp    $0xfff,%ecx
     651:	0f b6 75 b7          	movzbl -0x49(%rbp),%esi
     655:	0f 96 c0             	setbe  %al
     658:	44 84 c0             	test   %r8b,%al
     65b:	74 09                	je     666 <rfuse_copy_page+0x56>
     65d:	40 84 f6             	test   %sil,%sil
     660:	0f 85 fc 02 00 00    	jne    962 <rfuse_copy_page+0x352>
     666:	65 4c 8b 34 25 00 00 	mov    %gs:0x0,%r14
     66d:	00 00 
	while(count){
     66f:	85 db                	test   %ebx,%ebx
     671:	74 3e                	je     6b1 <rfuse_copy_page+0xa1>
		if (rcs->write && rcs->pipebufs && page) {
     673:	45 8b 17             	mov    (%r15),%r10d
     676:	45 85 d2             	test   %r10d,%r10d
     679:	74 71                	je     6ec <rfuse_copy_page+0xdc>
     67b:	49 83 7f 18 00       	cmpq   $0x0,0x18(%r15)
     680:	74 6a                	je     6ec <rfuse_copy_page+0xdc>
     682:	4d 85 e4             	test   %r12,%r12
     685:	0f 85 0a 05 00 00    	jne    b95 <rfuse_copy_page+0x585>
		} else if (!rcs->len) {
     68b:	41 8b 47 40          	mov    0x40(%r15),%eax
     68f:	85 c0                	test   %eax,%eax
     691:	0f 84 80 00 00 00    	je     717 <rfuse_copy_page+0x107>
	unsigned ncpy = min(*size, rcs->len);
     697:	39 d8                	cmp    %ebx,%eax
     699:	89 da                	mov    %ebx,%edx
     69b:	0f 46 d0             	cmovbe %eax,%edx
	rcs->offset += ncpy;
     69e:	41 01 57 44          	add    %edx,0x44(%r15)
	rcs->len -= ncpy;
     6a2:	29 d0                	sub    %edx,%eax
	*size -= ncpy;
     6a4:	29 d3                	sub    %edx,%ebx
			offset += rfuse_copy_do(rcs, NULL, &count);
     6a6:	41 01 d5             	add    %edx,%r13d
	rcs->len -= ncpy;
     6a9:	41 89 47 40          	mov    %eax,0x40(%r15)
	while(count){
     6ad:	85 db                	test   %ebx,%ebx
     6af:	75 c2                	jne    673 <rfuse_copy_page+0x63>
	return 0;
     6b1:	31 d2                	xor    %edx,%edx
}
     6b3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     6b7:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
     6be:	00 00 
     6c0:	0f 85 0c 08 00 00    	jne    ed2 <rfuse_copy_page+0x8c2>
     6c6:	48 83 c4 48          	add    $0x48,%rsp
     6ca:	89 d0                	mov    %edx,%eax
     6cc:	5b                   	pop    %rbx
     6cd:	41 5c                	pop    %r12
     6cf:	41 5d                	pop    %r13
     6d1:	41 5e                	pop    %r14
     6d3:	41 5f                	pop    %r15
     6d5:	5d                   	pop    %rbp
     6d6:	31 d2                	xor    %edx,%edx
     6d8:	31 c9                	xor    %ecx,%ecx
     6da:	31 f6                	xor    %esi,%esi
     6dc:	31 ff                	xor    %edi,%edi
     6de:	45 31 c0             	xor    %r8d,%r8d
     6e1:	45 31 c9             	xor    %r9d,%r9d
     6e4:	45 31 d2             	xor    %r10d,%r10d
     6e7:	e9 00 00 00 00       	jmp    6ec <rfuse_copy_page+0xdc>
		} else if (!rcs->len) {
     6ec:	45 8b 4f 40          	mov    0x40(%r15),%r9d
     6f0:	45 85 c9             	test   %r9d,%r9d
     6f3:	0f 85 d0 00 00 00    	jne    7c9 <rfuse_copy_page+0x1b9>
			if (rcs->move_pages && page && offset == 0 && count == PAGE_SIZE) {
     6f9:	41 f6 47 48 01       	testb  $0x1,0x48(%r15)
     6fe:	74 17                	je     717 <rfuse_copy_page+0x107>
     700:	45 85 ed             	test   %r13d,%r13d
     703:	0f 94 c0             	sete   %al
     706:	84 45 b7             	test   %al,-0x49(%rbp)
     709:	74 0c                	je     717 <rfuse_copy_page+0x107>
     70b:	81 fb 00 10 00 00    	cmp    $0x1000,%ebx
     711:	0f 84 6e 02 00 00    	je     985 <rfuse_copy_page+0x375>
	err = rfuse_unlock_request(rcs->r_req);
     717:	49 8b 7f 08          	mov    0x8(%r15),%rdi
	struct page *page;
     71b:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
     722:	00 
	if (r_req) {
     723:	48 85 ff             	test   %rdi,%rdi
     726:	74 0b                	je     733 <rfuse_copy_page+0x123>
     728:	e8 d3 f9 ff ff       	call   100 <rfuse_unlock_request.part.0>
     72d:	89 c2                	mov    %eax,%edx
	if (err)
     72f:	85 c0                	test   %eax,%eax
     731:	75 80                	jne    6b3 <rfuse_copy_page+0xa3>
	rfuse_copy_finish(rcs);
     733:	4c 89 ff             	mov    %r15,%rdi
     736:	e8 e5 fd ff ff       	call   520 <rfuse_copy_finish>
	if (rcs->pipebufs) {
     73b:	49 8b 4f 18          	mov    0x18(%r15),%rcx
     73f:	48 85 c9             	test   %rcx,%rcx
     742:	0f 84 c2 01 00 00    	je     90a <rfuse_copy_page+0x2fa>
		if (!rcs->write) {
     748:	45 8b 07             	mov    (%r15),%r8d
			err = pipe_buf_confirm(rcs->pipe, buf);
     74b:	49 8b 7f 28          	mov    0x28(%r15),%rdi
		if (!rcs->write) {
     74f:	45 85 c0             	test   %r8d,%r8d
     752:	0f 85 40 01 00 00    	jne    898 <rfuse_copy_page+0x288>
 * @buf:	the buffer to confirm
 */
static inline int pipe_buf_confirm(struct pipe_inode_info *pipe,
				   struct pipe_buffer *buf)
{
	if (!buf->ops->confirm)
     758:	48 8b 41 10          	mov    0x10(%rcx),%rax
     75c:	48 8b 00             	mov    (%rax),%rax
     75f:	48 85 c0             	test   %rax,%rax
     762:	74 1a                	je     77e <rfuse_copy_page+0x16e>
		return 0;
	return buf->ops->confirm(pipe, buf);
     764:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
     768:	48 89 ce             	mov    %rcx,%rsi
     76b:	e8 00 00 00 00       	call   770 <rfuse_copy_page+0x160>
			if (err)
     770:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
     774:	85 c0                	test   %eax,%eax
     776:	89 c2                	mov    %eax,%edx
     778:	0f 85 35 ff ff ff    	jne    6b3 <rfuse_copy_page+0xa3>
			BUG_ON(!rcs->nr_segs);
     77e:	49 8b 47 30          	mov    0x30(%r15),%rax
     782:	48 85 c0             	test   %rax,%rax
     785:	0f 84 f8 03 00 00    	je     b83 <rfuse_copy_page+0x573>
			rcs->currbuf = buf;
     78b:	49 89 4f 20          	mov    %rcx,0x20(%r15)
			rcs->pg = buf->page;
     78f:	48 8b 11             	mov    (%rcx),%rdx
			rcs->nr_segs--;
     792:	48 83 e8 01          	sub    $0x1,%rax
			rcs->pg = buf->page;
     796:	49 89 57 38          	mov    %rdx,0x38(%r15)
			rcs->offset = buf->offset;
     79a:	8b 51 08             	mov    0x8(%rcx),%edx
     79d:	41 89 57 44          	mov    %edx,0x44(%r15)
			rcs->len = buf->len;
     7a1:	8b 51 0c             	mov    0xc(%rcx),%edx
			rcs->pipebufs++;
     7a4:	49 83 47 18 28       	addq   $0x28,0x18(%r15)
			rcs->len = buf->len;
     7a9:	41 89 57 40          	mov    %edx,0x40(%r15)
			rcs->nr_segs--;
     7ad:	49 89 47 30          	mov    %rax,0x30(%r15)
	return rfuse_lock_request(rcs->r_req);
     7b1:	49 8b 7f 08          	mov    0x8(%r15),%rdi
	if (r_req) {
     7b5:	48 85 ff             	test   %rdi,%rdi
     7b8:	74 0f                	je     7c9 <rfuse_copy_page+0x1b9>
     7ba:	e8 a1 f9 ff ff       	call   160 <rfuse_lock_request.part.0>
     7bf:	89 c2                	mov    %eax,%edx
				if (err)
     7c1:	85 c0                	test   %eax,%eax
     7c3:	0f 85 ea fe ff ff    	jne    6b3 <rfuse_copy_page+0xa3>
		if (page) {
     7c9:	4d 85 e4             	test   %r12,%r12
     7cc:	0f 84 1e 01 00 00    	je     8f0 <rfuse_copy_page+0x2e0>
 * The various preempt_count add/sub methods
 */

static __always_inline void __preempt_count_add(int val)
{
	raw_cpu_add_4(pcpu_hot.preempt_count, val);
     7d2:	65 ff 05 00 00 00 00 	incl   %gs:0x0(%rip)        # 7d9 <rfuse_copy_page+0x1c9>
}
#endif

static __always_inline void pagefault_disabled_inc(void)
{
	current->pagefault_disabled++;
     7d9:	41 83 86 64 23 00 00 	addl   $0x1,0x2364(%r14)
     7e0:	01 
 */
#include <linux/vmstat.h>

static __always_inline void *lowmem_page_address(const struct page *page)
{
	return page_to_virt(page);
     7e1:	4c 89 e7             	mov    %r12,%rdi
     7e4:	48 2b 3d 00 00 00 00 	sub    0x0(%rip),%rdi        # 7eb <rfuse_copy_page+0x1db>
	unsigned ncpy = min(*size, rcs->len);
     7eb:	41 8b 4f 40          	mov    0x40(%r15),%ecx
			void *buf = mapaddr + offset;
     7ef:	44 89 e8             	mov    %r13d,%eax
     7f2:	48 c1 ff 06          	sar    $0x6,%rdi
     7f6:	48 c1 e7 0c          	shl    $0xc,%rdi
     7fa:	48 03 3d 00 00 00 00 	add    0x0(%rip),%rdi        # 801 <rfuse_copy_page+0x1f1>
     801:	48 01 c7             	add    %rax,%rdi
	unsigned ncpy = min(*size, rcs->len);
     804:	39 cb                	cmp    %ecx,%ebx
		void *pgaddr = kmap_atomic(rcs->pg);
     806:	49 8b 47 38          	mov    0x38(%r15),%rax
	unsigned ncpy = min(*size, rcs->len);
     80a:	0f 46 cb             	cmovbe %ebx,%ecx
     80d:	65 ff 05 00 00 00 00 	incl   %gs:0x0(%rip)        # 814 <rfuse_copy_page+0x204>
     814:	41 83 86 64 23 00 00 	addl   $0x1,0x2364(%r14)
     81b:	01 
     81c:	48 2b 05 00 00 00 00 	sub    0x0(%rip),%rax        # 823 <rfuse_copy_page+0x213>
		void *buf = pgaddr + rcs->offset;
     823:	41 8b 57 44          	mov    0x44(%r15),%edx
			memcpy(buf, *val, ncpy);
     827:	89 4d b8             	mov    %ecx,-0x48(%rbp)
     82a:	48 c1 f8 06          	sar    $0x6,%rax
		if (rcs->write)
     82e:	41 8b 37             	mov    (%r15),%esi
     831:	48 c1 e0 0c          	shl    $0xc,%rax
     835:	48 03 05 00 00 00 00 	add    0x0(%rip),%rax        # 83c <rfuse_copy_page+0x22c>
		void *buf = pgaddr + rcs->offset;
     83c:	48 01 d0             	add    %rdx,%rax
		if (rcs->write)
     83f:	85 f6                	test   %esi,%esi
			memcpy(buf, *val, ncpy);
     841:	89 ca                	mov    %ecx,%edx
		if (rcs->write)
     843:	74 46                	je     88b <rfuse_copy_page+0x27b>
			memcpy(buf, *val, ncpy);
     845:	48 89 fe             	mov    %rdi,%rsi
     848:	48 89 c7             	mov    %rax,%rdi
     84b:	e8 00 00 00 00       	call   850 <rfuse_copy_page+0x240>
     850:	8b 4d b8             	mov    -0x48(%rbp),%ecx
}

static __always_inline void pagefault_disabled_dec(void)
{
	current->pagefault_disabled--;
     853:	41 83 ae 64 23 00 00 	subl   $0x1,0x2364(%r14)
     85a:	01 
 * a decrement which hits zero means we have no preempt_count and should
 * reschedule.
 */
static __always_inline bool __preempt_count_dec_and_test(void)
{
	return GEN_UNARY_RMWcc("decl", pcpu_hot.preempt_count, e,
     85b:	65 ff 0d 00 00 00 00 	decl   %gs:0x0(%rip)        # 862 <rfuse_copy_page+0x252>
#endif
	pagefault_enable();
	if (IS_ENABLED(CONFIG_PREEMPT_RT))
		migrate_enable();
	else
		preempt_enable();
     862:	0f 84 98 00 00 00    	je     900 <rfuse_copy_page+0x2f0>
	rcs->len -= ncpy;
     868:	41 29 4f 40          	sub    %ecx,0x40(%r15)
	rcs->offset += ncpy;
     86c:	41 01 4f 44          	add    %ecx,0x44(%r15)
     870:	41 83 ae 64 23 00 00 	subl   $0x1,0x2364(%r14)
     877:	01 
     878:	65 ff 0d 00 00 00 00 	decl   %gs:0x0(%rip)        # 87f <rfuse_copy_page+0x26f>
     87f:	74 78                	je     8f9 <rfuse_copy_page+0x2e9>
	*size -= ncpy;
     881:	29 cb                	sub    %ecx,%ebx
			offset += rfuse_copy_do(rcs, &buf, &count);
     883:	41 01 cd             	add    %ecx,%r13d
     886:	e9 e4 fd ff ff       	jmp    66f <rfuse_copy_page+0x5f>
			memcpy(*val, buf, ncpy);
     88b:	48 89 c6             	mov    %rax,%rsi
     88e:	e8 00 00 00 00       	call   893 <rfuse_copy_page+0x283>
     893:	8b 4d b8             	mov    -0x48(%rbp),%ecx
     896:	eb bb                	jmp    853 <rfuse_copy_page+0x243>
     898:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
			if (rcs->nr_segs >= rcs->pipe->max_usage)
     89c:	8b 47 58             	mov    0x58(%rdi),%eax
     89f:	49 39 47 30          	cmp    %rax,0x30(%r15)
     8a3:	0f 83 0c 06 00 00    	jae    eb5 <rfuse_copy_page+0x8a5>
			page = alloc_page(GFP_HIGHUSER);
     8a9:	31 f6                	xor    %esi,%esi
     8ab:	bf c2 0c 10 00       	mov    $0x100cc2,%edi
     8b0:	e8 00 00 00 00       	call   8b5 <rfuse_copy_page+0x2a5>
			if (!page)
     8b5:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
     8b9:	48 85 c0             	test   %rax,%rax
			page = alloc_page(GFP_HIGHUSER);
     8bc:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
			if (!page)
     8c0:	0f 84 24 05 00 00    	je     dea <rfuse_copy_page+0x7da>
			buf->page = page;
     8c6:	48 89 01             	mov    %rax,(%rcx)
			buf->offset = 0;
     8c9:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
     8d0:	00 
			rcs->currbuf = buf;
     8d1:	49 89 4f 20          	mov    %rcx,0x20(%r15)
			rcs->pipebufs++;
     8d5:	49 83 47 18 28       	addq   $0x28,0x18(%r15)
			rcs->nr_segs++;
     8da:	49 83 47 30 01       	addq   $0x1,0x30(%r15)
			rcs->pg = page;
     8df:	49 89 47 38          	mov    %rax,0x38(%r15)
			rcs->len = PAGE_SIZE;
     8e3:	49 c7 47 40 00 10 00 	movq   $0x1000,0x40(%r15)
     8ea:	00 
			rcs->nr_segs++;
     8eb:	e9 c1 fe ff ff       	jmp    7b1 <rfuse_copy_page+0x1a1>
	unsigned ncpy = min(*size, rcs->len);
     8f0:	41 8b 47 40          	mov    0x40(%r15),%eax
     8f4:	e9 9e fd ff ff       	jmp    697 <rfuse_copy_page+0x87>
     8f9:	e8 00 00 00 00       	call   8fe <rfuse_copy_page+0x2ee>
     8fe:	eb 81                	jmp    881 <rfuse_copy_page+0x271>
     900:	e8 00 00 00 00       	call   905 <rfuse_copy_page+0x2f5>
     905:	e9 5e ff ff ff       	jmp    868 <rfuse_copy_page+0x258>
		err = iov_iter_get_pages2(rcs->iter, &page, PAGE_SIZE, 1, &off);
     90a:	49 8b 7f 10          	mov    0x10(%r15),%rdi
     90e:	ba 00 10 00 00       	mov    $0x1000,%edx
     913:	4c 8d 45 c8          	lea    -0x38(%rbp),%r8
     917:	b9 01 00 00 00       	mov    $0x1,%ecx
     91c:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
		size_t off;
     920:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
     927:	00 
		err = iov_iter_get_pages2(rcs->iter, &page, PAGE_SIZE, 1, &off);
     928:	e8 00 00 00 00       	call   92d <rfuse_copy_page+0x31d>
     92d:	89 c2                	mov    %eax,%edx
		if (err < 0)
     92f:	85 c0                	test   %eax,%eax
     931:	0f 88 7c fd ff ff    	js     6b3 <rfuse_copy_page+0xa3>
		BUG_ON(!err);
     937:	0f 84 c6 02 00 00    	je     c03 <rfuse_copy_page+0x5f3>
		rcs->offset = off;
     93d:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
		iov_iter_advance(rcs->iter, err);
     941:	49 8b 7f 10          	mov    0x10(%r15),%rdi
		rcs->len = err;
     945:	41 89 47 40          	mov    %eax,0x40(%r15)
		iov_iter_advance(rcs->iter, err);
     949:	48 63 f0             	movslq %eax,%rsi
		rcs->offset = off;
     94c:	41 89 57 44          	mov    %edx,0x44(%r15)
		rcs->pg = page;
     950:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
     954:	49 89 57 38          	mov    %rdx,0x38(%r15)
		iov_iter_advance(rcs->iter, err);
     958:	e8 00 00 00 00       	call   95d <rfuse_copy_page+0x34d>
     95d:	e9 4f fe ff ff       	jmp    7b1 <rfuse_copy_page+0x1a1>
     962:	4c 89 e7             	mov    %r12,%rdi
     965:	48 2b 3d 00 00 00 00 	sub    0x0(%rip),%rdi        # 96c <rfuse_copy_page+0x35c>
     96c:	48 c1 ff 06          	sar    $0x6,%rdi
     970:	48 c1 e7 0c          	shl    $0xc,%rdi
     974:	48 03 3d 00 00 00 00 	add    0x0(%rip),%rdi        # 97b <rfuse_copy_page+0x36b>
	/*
	 * Clean up KMSAN metadata for the page being cleared. The assembly call
	 * below clobbers @page, so we perform unpoisoning before it.
	 */
	kmsan_unpoison_memory(page, PAGE_SIZE);
	alternative_call_2(clear_page_orig,
     97b:	e8 00 00 00 00       	call   980 <rfuse_copy_page+0x370>
static inline void clear_highpage(struct page *page)
{
	void *kaddr = kmap_local_page(page);
	clear_page(kaddr);
	kunmap_local(kaddr);
}
     980:	e9 e1 fc ff ff       	jmp    666 <rfuse_copy_page+0x56>
	struct folio *oldfolio = page_folio(*pagep);
     985:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     989:	48 8b 08             	mov    (%rax),%rcx
	unsigned long head = READ_ONCE(page->compound_head);
     98c:	48 8b 41 08          	mov    0x8(%rcx),%rax
	if (unlikely(head & 1))
     990:	a8 01                	test   $0x1,%al
     992:	0f 85 a0 02 00 00    	jne    c38 <rfuse_copy_page+0x628>
     998:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	return page_ref_sub_return(&folio->page, nr);
}

static inline void page_ref_inc(struct page *page)
{
	atomic_inc(&page->_refcount);
     99d:	48 8d 41 34          	lea    0x34(%rcx),%rax
	struct pipe_buffer *buf = rcs->pipebufs;
     9a1:	4d 8b 47 18          	mov    0x18(%r15),%r8
     9a5:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
	asm volatile(LOCK_PREFIX "incl %0"
     9a9:	f0 ff 41 34          	lock incl 0x34(%rcx)
	err = rfuse_unlock_request(rcs->r_req);
     9ad:	49 8b 7f 08          	mov    0x8(%r15),%rdi
	if (r_req) {
     9b1:	48 85 ff             	test   %rdi,%rdi
     9b4:	74 1f                	je     9d5 <rfuse_copy_page+0x3c5>
     9b6:	4c 89 45 98          	mov    %r8,-0x68(%rbp)
     9ba:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
     9be:	e8 3d f7 ff ff       	call   100 <rfuse_unlock_request.part.0>
	if (err)
     9c3:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
     9c7:	4c 8b 45 98          	mov    -0x68(%rbp),%r8
     9cb:	85 c0                	test   %eax,%eax
     9cd:	89 c2                	mov    %eax,%edx
     9cf:	0f 85 6b 01 00 00    	jne    b40 <rfuse_copy_page+0x530>
	rfuse_copy_finish(rcs);
     9d5:	4c 89 ff             	mov    %r15,%rdi
     9d8:	4c 89 45 98          	mov    %r8,-0x68(%rbp)
     9dc:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
     9e0:	e8 3b fb ff ff       	call   520 <rfuse_copy_finish>
	if (!buf->ops->confirm)
     9e5:	4c 8b 45 98          	mov    -0x68(%rbp),%r8
	err = pipe_buf_confirm(rcs->pipe, buf);
     9e9:	49 8b 7f 28          	mov    0x28(%r15),%rdi
     9ed:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
     9f1:	49 8b 40 10          	mov    0x10(%r8),%rax
     9f5:	48 8b 00             	mov    (%rax),%rax
     9f8:	48 85 c0             	test   %rax,%rax
     9fb:	74 22                	je     a1f <rfuse_copy_page+0x40f>
     9fd:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
	return buf->ops->confirm(pipe, buf);
     a01:	4c 89 c6             	mov    %r8,%rsi
     a04:	4c 89 45 a0          	mov    %r8,-0x60(%rbp)
     a08:	e8 00 00 00 00       	call   a0d <rfuse_copy_page+0x3fd>
	if (err)
     a0d:	4c 8b 45 a0          	mov    -0x60(%rbp),%r8
     a11:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
     a15:	85 c0                	test   %eax,%eax
     a17:	89 c2                	mov    %eax,%edx
     a19:	0f 85 21 01 00 00    	jne    b40 <rfuse_copy_page+0x530>
	BUG_ON(!rcs->nr_segs);
     a1f:	49 8b 47 30          	mov    0x30(%r15),%rax
     a23:	48 85 c0             	test   %rax,%rax
     a26:	0f 84 15 02 00 00    	je     c41 <rfuse_copy_page+0x631>
	rcs->currbuf = buf;
     a2c:	4d 89 47 20          	mov    %r8,0x20(%r15)
	rcs->len = buf->len;
     a30:	41 8b 50 0c          	mov    0xc(%r8),%edx
	rcs->nr_segs--;
     a34:	48 83 e8 01          	sub    $0x1,%rax
	rcs->pipebufs++;
     a38:	49 83 47 18 28       	addq   $0x28,0x18(%r15)
	rcs->len = buf->len;
     a3d:	41 89 57 40          	mov    %edx,0x40(%r15)
	rcs->nr_segs--;
     a41:	49 89 47 30          	mov    %rax,0x30(%r15)
	if (rcs->len != PAGE_SIZE)
     a45:	81 fa 00 10 00 00    	cmp    $0x1000,%edx
     a4b:	0f 85 bf 00 00 00    	jne    b10 <rfuse_copy_page+0x500>
 * @buf:	the buffer to attempt to steal
 */
static inline bool pipe_buf_try_steal(struct pipe_inode_info *pipe,
		struct pipe_buffer *buf)
{
	if (!buf->ops->try_steal)
     a51:	49 8b 40 10          	mov    0x10(%r8),%rax
	if (!pipe_buf_try_steal(rcs->pipe, buf))
     a55:	49 8b 7f 28          	mov    0x28(%r15),%rdi
     a59:	48 8b 40 10          	mov    0x10(%rax),%rax
     a5d:	48 85 c0             	test   %rax,%rax
     a60:	0f 84 aa 00 00 00    	je     b10 <rfuse_copy_page+0x500>
     a66:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
		return false;
	return buf->ops->try_steal(pipe, buf);
     a6a:	4c 89 c6             	mov    %r8,%rsi
     a6d:	4c 89 45 a0          	mov    %r8,-0x60(%rbp)
     a71:	e8 00 00 00 00       	call   a76 <rfuse_copy_page+0x466>
     a76:	4c 8b 45 a0          	mov    -0x60(%rbp),%r8
     a7a:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
     a7e:	84 c0                	test   %al,%al
     a80:	0f 84 8a 00 00 00    	je     b10 <rfuse_copy_page+0x500>
	newfolio = page_folio(buf->page);
     a86:	49 8b 00             	mov    (%r8),%rax
	unsigned long head = READ_ONCE(page->compound_head);
     a89:	48 8b 50 08          	mov    0x8(%rax),%rdx
	if (unlikely(head & 1))
     a8d:	f6 c2 01             	test   $0x1,%dl
     a90:	0f 85 99 01 00 00    	jne    c2f <rfuse_copy_page+0x61f>
     a96:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     a9b:	48 8b 10             	mov    (%rax),%rdx
	 * We can skip the barrier if the folio is not uptodate, because
	 * we wouldn't be reading anything from it.
	 *
	 * See folio_mark_uptodate() for the other side of the story.
	 */
	if (ret)
     a9e:	83 e2 04             	and    $0x4,%edx
     aa1:	0f 85 9c 01 00 00    	jne    c43 <rfuse_copy_page+0x633>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
     aa7:	f0 80 08 04          	lock orb $0x4,(%rax)
		asm volatile(LOCK_PREFIX "andb %b1,%0"
     aab:	f0 80 60 02 fd       	lock andb $0xfd,0x2(%rax)
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
     ab0:	48 8b 10             	mov    (%rax),%rdx
	if (likely(!folio_test_large(folio)))
     ab3:	f7 c2 00 00 01 00    	test   $0x10000,%edx
     ab9:	0f 85 c6 03 00 00    	jne    e85 <rfuse_copy_page+0x875>
	return __READ_ONCE((v)->counter);
     abf:	8b 50 30             	mov    0x30(%rax),%edx
  if (folio_mapped(folio) || folio->mapping != NULL ||
     ac2:	85 d2                	test   %edx,%edx
     ac4:	79 0b                	jns    ad1 <rfuse_copy_page+0x4c1>
     ac6:	48 83 78 18 00       	cmpq   $0x0,0x18(%rax)
     acb:	0f 84 a5 01 00 00    	je     c76 <rfuse_copy_page+0x666>
    dump_page(&folio->page, "fuse: trying to steal weird page");
     ad1:	48 89 c7             	mov    %rax,%rdi
     ad4:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     adb:	4c 89 45 90          	mov    %r8,-0x70(%rbp)
     adf:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
     ae3:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     ae7:	e8 00 00 00 00       	call   aec <rfuse_copy_page+0x4dc>
    return 1;
     aec:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     af0:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
     af4:	4c 8b 45 90          	mov    -0x70(%rbp),%r8
	folio_unlock(newfolio);
     af8:	48 89 c7             	mov    %rax,%rdi
     afb:	4c 89 45 98          	mov    %r8,-0x68(%rbp)
     aff:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
     b03:	e8 00 00 00 00       	call   b08 <rfuse_copy_page+0x4f8>
     b08:	4c 8b 45 98          	mov    -0x68(%rbp),%r8
     b0c:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
	rcs->pg = buf->page;
     b10:	49 8b 00             	mov    (%r8),%rax
	err = rfuse_lock_request(rcs->r_req);
     b13:	49 8b 7f 08          	mov    0x8(%r15),%rdi
	rcs->pg = buf->page;
     b17:	49 89 47 38          	mov    %rax,0x38(%r15)
	rcs->offset = buf->offset;
     b1b:	41 8b 40 08          	mov    0x8(%r8),%eax
     b1f:	41 89 47 44          	mov    %eax,0x44(%r15)
	if (r_req) {
     b23:	48 85 ff             	test   %rdi,%rdi
     b26:	74 13                	je     b3b <rfuse_copy_page+0x52b>
     b28:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
     b2c:	e8 2f f6 ff ff       	call   160 <rfuse_lock_request.part.0>
	if (!err)
     b31:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
     b35:	85 c0                	test   %eax,%eax
     b37:	89 c2                	mov    %eax,%edx
     b39:	75 05                	jne    b40 <rfuse_copy_page+0x530>
		err = 1;
     b3b:	ba 01 00 00 00       	mov    $0x1,%edx
	return GEN_UNARY_RMWcc(LOCK_PREFIX "decl", v->counter, e);
     b40:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     b44:	f0 ff 08             	lock decl (%rax)
	if (folio_put_testzero(folio))
     b47:	74 3c                	je     b85 <rfuse_copy_page+0x575>
				if (err <= 0)
     b49:	85 d2                	test   %edx,%edx
     b4b:	0f 8f 81 fc ff ff    	jg     7d2 <rfuse_copy_page+0x1c2>
     b51:	e9 5d fb ff ff       	jmp    6b3 <rfuse_copy_page+0xa3>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
     b56:	f7 c1 ff 0f 00 00    	test   $0xfff,%ecx
     b5c:	0f 85 3b fe ff ff    	jne    99d <rfuse_copy_page+0x38d>
     b62:	48 8b 01             	mov    (%rcx),%rax
     b65:	a9 00 00 01 00       	test   $0x10000,%eax
     b6a:	0f 84 2d fe ff ff    	je     99d <rfuse_copy_page+0x38d>
		unsigned long head = READ_ONCE(page[1].compound_head);
     b70:	48 8b 41 48          	mov    0x48(%rcx),%rax
			return (const struct page *)(head - 1);
     b74:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     b78:	a8 01                	test   $0x1,%al
     b7a:	48 0f 45 ca          	cmovne %rdx,%rcx
     b7e:	e9 1a fe ff ff       	jmp    99d <rfuse_copy_page+0x38d>
			BUG_ON(!rcs->nr_segs);
     b83:	0f 0b                	ud2    
		__folio_put(folio);
     b85:	48 89 cf             	mov    %rcx,%rdi
     b88:	89 55 b8             	mov    %edx,-0x48(%rbp)
     b8b:	e8 00 00 00 00       	call   b90 <rfuse_copy_page+0x580>
     b90:	8b 55 b8             	mov    -0x48(%rbp),%edx
     b93:	eb b4                	jmp    b49 <rfuse_copy_page+0x539>
	if (rcs->nr_segs >= rcs->pipe->max_usage)
     b95:	49 8b 47 28          	mov    0x28(%r15),%rax
     b99:	8b 40 58             	mov    0x58(%rax),%eax
     b9c:	49 39 47 30          	cmp    %rax,0x30(%r15)
     ba0:	0f 83 0f 03 00 00    	jae    eb5 <rfuse_copy_page+0x8a5>
	unsigned long head = READ_ONCE(page->compound_head);
     ba6:	49 8b 44 24 08       	mov    0x8(%r12),%rax
	if (unlikely(head & 1))
     bab:	a8 01                	test   $0x1,%al
     bad:	0f 85 2e 02 00 00    	jne    de1 <rfuse_copy_page+0x7d1>
     bb3:	66 90                	xchg   %ax,%ax
     bb5:	4c 89 e0             	mov    %r12,%rax
	asm volatile(LOCK_PREFIX "incl %0"
     bb8:	f0 ff 40 34          	lock incl 0x34(%rax)
	err = rfuse_unlock_request(rcs->r_req);
     bbc:	49 8b 7f 08          	mov    0x8(%r15),%rdi
	if (r_req) {
     bc0:	48 85 ff             	test   %rdi,%rdi
     bc3:	74 0f                	je     bd4 <rfuse_copy_page+0x5c4>
     bc5:	e8 36 f5 ff ff       	call   100 <rfuse_unlock_request.part.0>
     bca:	89 c2                	mov    %eax,%edx
	if (err) {
     bcc:	85 c0                	test   %eax,%eax
     bce:	0f 85 da 01 00 00    	jne    dae <rfuse_copy_page+0x79e>
	rfuse_copy_finish(rcs);
     bd4:	4c 89 ff             	mov    %r15,%rdi
     bd7:	e8 44 f9 ff ff       	call   520 <rfuse_copy_finish>
	buf = rcs->pipebufs;
     bdc:	49 8b 47 18          	mov    0x18(%r15),%rax
	return 0;
     be0:	31 d2                	xor    %edx,%edx
	buf->page = page;
     be2:	4c 89 20             	mov    %r12,(%rax)
	buf->offset = offset;
     be5:	44 89 68 08          	mov    %r13d,0x8(%rax)
	buf->len = count;
     be9:	89 58 0c             	mov    %ebx,0xc(%rax)
	rcs->len = 0;
     bec:	41 c7 47 40 00 00 00 	movl   $0x0,0x40(%r15)
     bf3:	00 
	rcs->pipebufs++;
     bf4:	49 83 47 18 28       	addq   $0x28,0x18(%r15)
	rcs->nr_segs++;
     bf9:	49 83 47 30 01       	addq   $0x1,0x30(%r15)
	return 0;
     bfe:	e9 b0 fa ff ff       	jmp    6b3 <rfuse_copy_page+0xa3>
		BUG_ON(!err);
     c03:	0f 0b                	ud2    
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
     c05:	4c 89 e0             	mov    %r12,%rax
     c08:	41 f7 c4 ff 0f 00 00 	test   $0xfff,%r12d
     c0f:	75 a7                	jne    bb8 <rfuse_copy_page+0x5a8>
     c11:	49 8b 14 24          	mov    (%r12),%rdx
     c15:	f7 c2 00 00 01 00    	test   $0x10000,%edx
     c1b:	74 9b                	je     bb8 <rfuse_copy_page+0x5a8>
		unsigned long head = READ_ONCE(page[1].compound_head);
     c1d:	49 8b 54 24 48       	mov    0x48(%r12),%rdx
			return (const struct page *)(head - 1);
     c22:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
     c26:	83 e2 01             	and    $0x1,%edx
     c29:	49 0f 44 c4          	cmove  %r12,%rax
     c2d:	eb 89                	jmp    bb8 <rfuse_copy_page+0x5a8>
		return head - 1;
     c2f:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
     c33:	e9 63 fe ff ff       	jmp    a9b <rfuse_copy_page+0x48b>
     c38:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
     c3c:	e9 5c fd ff ff       	jmp    99d <rfuse_copy_page+0x38d>
	BUG_ON(!rcs->nr_segs);
     c41:	0f 0b                	ud2    
		smp_rmb();

	return ret;
     c43:	e9 63 fe ff ff       	jmp    aab <rfuse_copy_page+0x49b>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
     c48:	a9 ff 0f 00 00       	test   $0xfff,%eax
     c4d:	0f 85 48 fe ff ff    	jne    a9b <rfuse_copy_page+0x48b>
     c53:	48 8b 10             	mov    (%rax),%rdx
     c56:	f7 c2 00 00 01 00    	test   $0x10000,%edx
     c5c:	0f 84 39 fe ff ff    	je     a9b <rfuse_copy_page+0x48b>
		unsigned long head = READ_ONCE(page[1].compound_head);
     c62:	48 8b 50 48          	mov    0x48(%rax),%rdx
			return (const struct page *)(head - 1);
     c66:	48 8d 72 ff          	lea    -0x1(%rdx),%rsi
     c6a:	83 e2 01             	and    $0x1,%edx
     c6d:	48 0f 45 c6          	cmovne %rsi,%rax
     c71:	e9 25 fe ff ff       	jmp    a9b <rfuse_copy_page+0x48b>
  if (folio_mapped(folio) || folio->mapping != NULL ||
     c76:	48 f7 00 08 ff 7b 03 	testq  $0x37bff08,(%rax)
     c7d:	0f 85 4e fe ff ff    	jne    ad1 <rfuse_copy_page+0x4c1>
     c83:	48 8b 11             	mov    (%rcx),%rdx
	if (likely(!folio_test_large(folio)))
     c86:	f7 c2 00 00 01 00    	test   $0x10000,%edx
     c8c:	0f 85 0e 02 00 00    	jne    ea0 <rfuse_copy_page+0x890>
	return __READ_ONCE((v)->counter);
     c92:	8b 51 30             	mov    0x30(%rcx),%edx
	if (WARN_ON(folio_mapped(oldfolio)))
     c95:	85 d2                	test   %edx,%edx
     c97:	0f 89 0a 02 00 00    	jns    ea7 <rfuse_copy_page+0x897>
  	if (WARN_ON(folio_has_private(oldfolio)))
     c9d:	48 f7 01 00 60 00 00 	testq  $0x6000,(%rcx)
     ca4:	0f 85 04 02 00 00    	jne    eae <rfuse_copy_page+0x89e>
     caa:	48 8b 11             	mov    (%rcx),%rdx
  	if (WARN_ON(folio_test_dirty(oldfolio) || folio_test_writeback(oldfolio)))
     cad:	83 e2 08             	and    $0x8,%edx
     cb0:	75 08                	jne    cba <rfuse_copy_page+0x6aa>
     cb2:	48 8b 11             	mov    (%rcx),%rdx
     cb5:	80 e6 80             	and    $0x80,%dh
     cb8:	74 07                	je     cc1 <rfuse_copy_page+0x6b1>
     cba:	0f 0b                	ud2    
     cbc:	e9 37 fe ff ff       	jmp    af8 <rfuse_copy_page+0x4e8>
     cc1:	48 8b 11             	mov    (%rcx),%rdx
  	if (WARN_ON(folio_test_mlocked(oldfolio)))
     cc4:	f7 c2 00 00 20 00    	test   $0x200000,%edx
     cca:	0f 85 fb 01 00 00    	jne    ecb <rfuse_copy_page+0x8bb>
	replace_page_cache_folio(oldfolio, newfolio);
     cd0:	48 89 c6             	mov    %rax,%rsi
     cd3:	48 89 cf             	mov    %rcx,%rdi
     cd6:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     cda:	4c 89 45 90          	mov    %r8,-0x70(%rbp)
     cde:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
     ce2:	e8 00 00 00 00       	call   ce7 <rfuse_copy_page+0x6d7>
     ce7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     ceb:	48 8d 70 34          	lea    0x34(%rax),%rsi
     cef:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
	asm volatile(LOCK_PREFIX "incl %0"
     cf3:	f0 ff 40 34          	lock incl 0x34(%rax)
	if (!(buf->flags & PIPE_BUF_FLAG_LRU))
     cf7:	4c 8b 45 90          	mov    -0x70(%rbp),%r8
     cfb:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
     cff:	41 f6 40 18 01       	testb  $0x1,0x18(%r8)
     d04:	0f 84 17 01 00 00    	je     e21 <rfuse_copy_page+0x811>
     d0a:	48 89 45 90          	mov    %rax,-0x70(%rbp)
	raw_spin_lock(&lock->rlock);
     d0e:	49 8b 47 08          	mov    0x8(%r15),%rax
     d12:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
     d16:	48 8d 78 60          	lea    0x60(%rax),%rdi
     d1a:	e8 00 00 00 00       	call   d1f <rfuse_copy_page+0x70f>
	if (test_bit(FR_ABORTED, &rcs->r_req->flags))
     d1f:	49 8b 57 08          	mov    0x8(%r15),%rdx
     d23:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
     d27:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     d2b:	48 8b 72 48          	mov    0x48(%rdx),%rsi
     d2f:	83 e6 10             	and    $0x10,%esi
     d32:	74 39                	je     d6d <rfuse_copy_page+0x75d>
	raw_spin_unlock(&lock->rlock);
     d34:	48 8d 7a 60          	lea    0x60(%rdx),%rdi
     d38:	48 89 45 98          	mov    %rax,-0x68(%rbp)
     d3c:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
     d40:	e8 00 00 00 00       	call   d45 <rfuse_copy_page+0x735>
		folio_unlock(newfolio);
     d45:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
     d49:	e8 00 00 00 00       	call   d4e <rfuse_copy_page+0x73e>
	return GEN_UNARY_RMWcc(LOCK_PREFIX "decl", v->counter, e);
     d4e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d52:	f0 ff 08             	lock decl (%rax)
	if (folio_put_testzero(folio))
     d55:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     d59:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
     d5d:	0f 84 74 01 00 00    	je     ed7 <rfuse_copy_page+0x8c7>
     d63:	ba fe ff ff ff       	mov    $0xfffffffe,%edx
     d68:	e9 d3 fd ff ff       	jmp    b40 <rfuse_copy_page+0x530>
		*pagep = &newfolio->page;
     d6d:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
     d71:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
     d75:	48 89 06             	mov    %rax,(%rsi)
     d78:	49 8b 47 08          	mov    0x8(%r15),%rax
     d7c:	48 8d 78 60          	lea    0x60(%rax),%rdi
     d80:	e8 00 00 00 00       	call   d85 <rfuse_copy_page+0x775>
	folio_unlock(oldfolio);
     d85:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
     d89:	e8 00 00 00 00       	call   d8e <rfuse_copy_page+0x77e>
     d8e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     d92:	f0 ff 08             	lock decl (%rax)
     d95:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
     d99:	0f 84 9f 00 00 00    	je     e3e <rfuse_copy_page+0x82e>
	rcs->len = 0;
     d9f:	41 c7 47 40 00 00 00 	movl   $0x0,0x40(%r15)
     da6:	00 
	err = 0;
     da7:	31 d2                	xor    %edx,%edx
     da9:	e9 92 fd ff ff       	jmp    b40 <rfuse_copy_page+0x530>
	unsigned long head = READ_ONCE(page->compound_head);
     dae:	49 8b 44 24 08       	mov    0x8(%r12),%rax
	if (unlikely(head & 1))
     db3:	a8 01                	test   $0x1,%al
     db5:	0f 85 c1 00 00 00    	jne    e7c <rfuse_copy_page+0x86c>
     dbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     dc0:	66 90                	xchg   %ax,%ax
     dc2:	f0 41 ff 4c 24 34    	lock decl 0x34(%r12)
     dc8:	0f 85 e5 f8 ff ff    	jne    6b3 <rfuse_copy_page+0xa3>
		__folio_put(folio);
     dce:	4c 89 e7             	mov    %r12,%rdi
     dd1:	89 55 b8             	mov    %edx,-0x48(%rbp)
     dd4:	e8 00 00 00 00       	call   dd9 <rfuse_copy_page+0x7c9>
     dd9:	8b 55 b8             	mov    -0x48(%rbp),%edx
     ddc:	e9 d2 f8 ff ff       	jmp    6b3 <rfuse_copy_page+0xa3>
		return head - 1;
     de1:	48 83 e8 01          	sub    $0x1,%rax
     de5:	e9 ce fd ff ff       	jmp    bb8 <rfuse_copy_page+0x5a8>
				return -ENOMEM;
     dea:	ba f4 ff ff ff       	mov    $0xfffffff4,%edx
     def:	e9 bf f8 ff ff       	jmp    6b3 <rfuse_copy_page+0xa3>
     df4:	49 8b 04 24          	mov    (%r12),%rax
     df8:	48 c1 e8 33          	shr    $0x33,%rax
     dfc:	83 e0 07             	and    $0x7,%eax
	if (!is_zone_device_page(page))
     dff:	83 f8 04             	cmp    $0x4,%eax
     e02:	75 be                	jne    dc2 <rfuse_copy_page+0x7b2>
	return __put_devmap_managed_page_refs(page, refs);
     e04:	be 01 00 00 00       	mov    $0x1,%esi
     e09:	4c 89 e7             	mov    %r12,%rdi
     e0c:	89 55 b8             	mov    %edx,-0x48(%rbp)
     e0f:	e8 00 00 00 00       	call   e14 <rfuse_copy_page+0x804>
	if (put_devmap_managed_page(&folio->page))
     e14:	8b 55 b8             	mov    -0x48(%rbp),%edx
     e17:	84 c0                	test   %al,%al
     e19:	0f 85 94 f8 ff ff    	jne    6b3 <rfuse_copy_page+0xa3>
     e1f:	eb a1                	jmp    dc2 <rfuse_copy_page+0x7b2>
		folio_add_lru(newfolio);
     e21:	48 89 c7             	mov    %rax,%rdi
     e24:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
     e28:	48 89 45 98          	mov    %rax,-0x68(%rbp)
     e2c:	e8 00 00 00 00       	call   e31 <rfuse_copy_page+0x821>
     e31:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
     e35:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     e39:	e9 cc fe ff ff       	jmp    d0a <rfuse_copy_page+0x6fa>
		__folio_put(folio);
     e3e:	48 89 cf             	mov    %rcx,%rdi
     e41:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
     e45:	e8 00 00 00 00       	call   e4a <rfuse_copy_page+0x83a>
     e4a:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
     e4e:	e9 4c ff ff ff       	jmp    d9f <rfuse_copy_page+0x78f>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
     e53:	41 f7 c4 ff 0f 00 00 	test   $0xfff,%r12d
     e5a:	0f 85 60 ff ff ff    	jne    dc0 <rfuse_copy_page+0x7b0>
     e60:	49 8b 04 24          	mov    (%r12),%rax
     e64:	a9 00 00 01 00       	test   $0x10000,%eax
     e69:	0f 84 51 ff ff ff    	je     dc0 <rfuse_copy_page+0x7b0>
		unsigned long head = READ_ONCE(page[1].compound_head);
     e6f:	49 8b 44 24 48       	mov    0x48(%r12),%rax
		if (likely(head & 1))
     e74:	a8 01                	test   $0x1,%al
     e76:	0f 84 44 ff ff ff    	je     dc0 <rfuse_copy_page+0x7b0>
			return (const struct page *)(head - 1);
     e7c:	4c 8d 60 ff          	lea    -0x1(%rax),%r12
	return (unsigned long)page_fixed_fake_head(page);
     e80:	e9 3b ff ff ff       	jmp    dc0 <rfuse_copy_page+0x7b0>
	return __READ_ONCE((v)->counter);
     e85:	8b 50 58             	mov    0x58(%rax),%edx
	return atomic_read(&folio->_nr_pages_mapped) > 0 ||
     e88:	85 d2                	test   %edx,%edx
     e8a:	0f 8f 41 fc ff ff    	jg     ad1 <rfuse_copy_page+0x4c1>
     e90:	8b 50 54             	mov    0x54(%rax),%edx
     e93:	85 d2                	test   %edx,%edx
     e95:	0f 89 36 fc ff ff    	jns    ad1 <rfuse_copy_page+0x4c1>
     e9b:	e9 26 fc ff ff       	jmp    ac6 <rfuse_copy_page+0x4b6>
     ea0:	8b 51 58             	mov    0x58(%rcx),%edx
     ea3:	85 d2                	test   %edx,%edx
     ea5:	7e 18                	jle    ebf <rfuse_copy_page+0x8af>
	if (WARN_ON(folio_mapped(oldfolio)))
     ea7:	0f 0b                	ud2    
     ea9:	e9 4a fc ff ff       	jmp    af8 <rfuse_copy_page+0x4e8>
  	if (WARN_ON(folio_has_private(oldfolio)))
     eae:	0f 0b                	ud2    
     eb0:	e9 43 fc ff ff       	jmp    af8 <rfuse_copy_page+0x4e8>
		return -EIO;
     eb5:	ba fb ff ff ff       	mov    $0xfffffffb,%edx
     eba:	e9 f4 f7 ff ff       	jmp    6b3 <rfuse_copy_page+0xa3>
     ebf:	8b 51 54             	mov    0x54(%rcx),%edx
     ec2:	85 d2                	test   %edx,%edx
     ec4:	79 e1                	jns    ea7 <rfuse_copy_page+0x897>
     ec6:	e9 d2 fd ff ff       	jmp    c9d <rfuse_copy_page+0x68d>
  	if (WARN_ON(folio_test_mlocked(oldfolio)))
     ecb:	0f 0b                	ud2    
     ecd:	e9 26 fc ff ff       	jmp    af8 <rfuse_copy_page+0x4e8>
}
     ed2:	e8 00 00 00 00       	call   ed7 <rfuse_copy_page+0x8c7>
		__folio_put(folio);
     ed7:	48 89 c7             	mov    %rax,%rdi
     eda:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
     ede:	e8 00 00 00 00       	call   ee3 <rfuse_copy_page+0x8d3>
     ee3:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
     ee7:	e9 77 fe ff ff       	jmp    d63 <rfuse_copy_page+0x753>
     eec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ef0 <__pfx_rfuse_copy_pages>:
     ef0:	90                   	nop
     ef1:	90                   	nop
     ef2:	90                   	nop
     ef3:	90                   	nop
     ef4:	90                   	nop
     ef5:	90                   	nop
     ef6:	90                   	nop
     ef7:	90                   	nop
     ef8:	90                   	nop
     ef9:	90                   	nop
     efa:	90                   	nop
     efb:	90                   	nop
     efc:	90                   	nop
     efd:	90                   	nop
     efe:	90                   	nop
     eff:	90                   	nop

0000000000000f00 <rfuse_copy_pages>:
{
     f00:	e8 00 00 00 00       	call   f05 <rfuse_copy_pages+0x5>
     f05:	55                   	push   %rbp
     f06:	48 89 e5             	mov    %rsp,%rbp
     f09:	41 57                	push   %r15
     f0b:	41 56                	push   %r14
     f0d:	41 55                	push   %r13
     f0f:	41 54                	push   %r12
     f11:	53                   	push   %rbx
     f12:	48 83 ec 08          	sub    $0x8,%rsp
	struct rfuse_pages *rp = r_req->rp;
     f16:	48 8b 47 08          	mov    0x8(%rdi),%rax
{
     f1a:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
	struct rfuse_pages *rp = r_req->rp;
     f1e:	4c 8b b8 f0 00 00 00 	mov    0xf0(%rax),%r15
	if(rp == NULL){
     f25:	4d 85 ff             	test   %r15,%r15
     f28:	74 78                	je     fa2 <rfuse_copy_pages+0xa2>
	for (i = 0; i < rp->num_pages && (nbytes || zeroing); i++) {
     f2a:	41 8b 47 10          	mov    0x10(%r15),%eax
     f2e:	85 c0                	test   %eax,%eax
     f30:	74 70                	je     fa2 <rfuse_copy_pages+0xa2>
     f32:	89 f0                	mov    %esi,%eax
     f34:	89 f3                	mov    %esi,%ebx
     f36:	41 89 d5             	mov    %edx,%r13d
     f39:	09 d0                	or     %edx,%eax
     f3b:	74 65                	je     fa2 <rfuse_copy_pages+0xa2>
     f3d:	45 31 f6             	xor    %r14d,%r14d
     f40:	eb 14                	jmp    f56 <rfuse_copy_pages+0x56>
		nbytes -= count;
     f42:	44 29 e3             	sub    %r12d,%ebx
	for (i = 0; i < rp->num_pages && (nbytes || zeroing); i++) {
     f45:	41 83 c6 01          	add    $0x1,%r14d
     f49:	45 3b 77 10          	cmp    0x10(%r15),%r14d
     f4d:	73 53                	jae    fa2 <rfuse_copy_pages+0xa2>
     f4f:	89 d8                	mov    %ebx,%eax
     f51:	44 09 e8             	or     %r13d,%eax
     f54:	74 4c                	je     fa2 <rfuse_copy_pages+0xa2>
		unsigned int offset = rp->descs[i].offset;
     f56:	49 8b 47 08          	mov    0x8(%r15),%rax
     f5a:	44 89 f6             	mov    %r14d,%esi
		err = rfuse_copy_page(rcs, &rp->pages[i], offset, count, zeroing);
     f5d:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
     f61:	45 89 e8             	mov    %r13d,%r8d
		unsigned int offset = rp->descs[i].offset;
     f64:	48 c1 e6 03          	shl    $0x3,%rsi
     f68:	48 01 f0             	add    %rsi,%rax
		unsigned int count = min(nbytes, rp->descs[i].length);
     f6b:	8b 08                	mov    (%rax),%ecx
		err = rfuse_copy_page(rcs, &rp->pages[i], offset, count, zeroing);
     f6d:	8b 50 04             	mov    0x4(%rax),%edx
		unsigned int count = min(nbytes, rp->descs[i].length);
     f70:	39 cb                	cmp    %ecx,%ebx
     f72:	0f 46 cb             	cmovbe %ebx,%ecx
		err = rfuse_copy_page(rcs, &rp->pages[i], offset, count, zeroing);
     f75:	49 03 37             	add    (%r15),%rsi
		unsigned int count = min(nbytes, rp->descs[i].length);
     f78:	41 89 cc             	mov    %ecx,%r12d
		err = rfuse_copy_page(rcs, &rp->pages[i], offset, count, zeroing);
     f7b:	e8 90 f6 ff ff       	call   610 <rfuse_copy_page>
		if (err)
     f80:	85 c0                	test   %eax,%eax
     f82:	74 be                	je     f42 <rfuse_copy_pages+0x42>
}
     f84:	48 83 c4 08          	add    $0x8,%rsp
     f88:	5b                   	pop    %rbx
     f89:	41 5c                	pop    %r12
     f8b:	41 5d                	pop    %r13
     f8d:	41 5e                	pop    %r14
     f8f:	41 5f                	pop    %r15
     f91:	5d                   	pop    %rbp
     f92:	31 d2                	xor    %edx,%edx
     f94:	31 c9                	xor    %ecx,%ecx
     f96:	31 f6                	xor    %esi,%esi
     f98:	31 ff                	xor    %edi,%edi
     f9a:	45 31 c0             	xor    %r8d,%r8d
     f9d:	e9 00 00 00 00       	jmp    fa2 <rfuse_copy_pages+0xa2>
     fa2:	48 83 c4 08          	add    $0x8,%rsp
		return 0;
     fa6:	31 c0                	xor    %eax,%eax
}
     fa8:	5b                   	pop    %rbx
     fa9:	41 5c                	pop    %r12
     fab:	41 5d                	pop    %r13
     fad:	41 5e                	pop    %r14
     faf:	41 5f                	pop    %r15
     fb1:	5d                   	pop    %rbp
     fb2:	31 d2                	xor    %edx,%edx
     fb4:	31 c9                	xor    %ecx,%ecx
     fb6:	31 f6                	xor    %esi,%esi
     fb8:	31 ff                	xor    %edi,%edi
     fba:	45 31 c0             	xor    %r8d,%r8d
     fbd:	e9 00 00 00 00       	jmp    fc2 <rfuse_copy_pages+0xc2>
     fc2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     fc9:	00 00 00 00 
     fcd:	0f 1f 00             	nopl   (%rax)

0000000000000fd0 <__pfx_rfuse_get_unique>:
     fd0:	90                   	nop
     fd1:	90                   	nop
     fd2:	90                   	nop
     fd3:	90                   	nop
     fd4:	90                   	nop
     fd5:	90                   	nop
     fd6:	90                   	nop
     fd7:	90                   	nop
     fd8:	90                   	nop
     fd9:	90                   	nop
     fda:	90                   	nop
     fdb:	90                   	nop
     fdc:	90                   	nop
     fdd:	90                   	nop
     fde:	90                   	nop
     fdf:	90                   	nop

0000000000000fe0 <rfuse_get_unique>:
u64 rfuse_get_unique(struct rfuse_iqueue *riq){ 
     fe0:	e8 00 00 00 00       	call   fe5 <rfuse_get_unique+0x5>
     fe5:	55                   	push   %rbp
	riq->reqctr += RFUSE_REQ_ID_STEP;
     fe6:	48 8b 87 d0 00 00 00 	mov    0xd0(%rdi),%rax
     fed:	48 83 c0 02          	add    $0x2,%rax
u64 rfuse_get_unique(struct rfuse_iqueue *riq){ 
     ff1:	48 89 e5             	mov    %rsp,%rbp
	riq->reqctr += RFUSE_REQ_ID_STEP;
     ff4:	48 89 87 d0 00 00 00 	mov    %rax,0xd0(%rdi)
}
     ffb:	5d                   	pop    %rbp
     ffc:	31 ff                	xor    %edi,%edi
     ffe:	e9 00 00 00 00       	jmp    1003 <rfuse_get_unique+0x23>
    1003:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    100a:	00 00 00 00 
    100e:	66 90                	xchg   %ax,%ax

0000000000001010 <__pfx_rfuse_init_ring_buffer_1>:
    1010:	90                   	nop
    1011:	90                   	nop
    1012:	90                   	nop
    1013:	90                   	nop
    1014:	90                   	nop
    1015:	90                   	nop
    1016:	90                   	nop
    1017:	90                   	nop
    1018:	90                   	nop
    1019:	90                   	nop
    101a:	90                   	nop
    101b:	90                   	nop
    101c:	90                   	nop
    101d:	90                   	nop
    101e:	90                   	nop
    101f:	90                   	nop

0000000000001020 <rfuse_init_ring_buffer_1>:
void rfuse_init_ring_buffer_1(struct ring_buffer_1 *rb){
    1020:	e8 00 00 00 00       	call   1025 <rfuse_init_ring_buffer_1+0x5>
	rb->tail=0;
    1025:	48 b8 ff 0f 00 00 00 	movabs $0x100000000fff,%rax
    102c:	10 00 00 
void rfuse_init_ring_buffer_1(struct ring_buffer_1 *rb){
    102f:	55                   	push   %rbp
	rb->tail=0;
    1030:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    1037:	48 89 47 08          	mov    %rax,0x8(%rdi)
void rfuse_init_ring_buffer_1(struct ring_buffer_1 *rb){
    103b:	48 89 e5             	mov    %rsp,%rbp
}
    103e:	5d                   	pop    %rbp
    103f:	31 c0                	xor    %eax,%eax
    1041:	31 ff                	xor    %edi,%edi
    1043:	e9 00 00 00 00       	jmp    1048 <rfuse_init_ring_buffer_1+0x28>
    1048:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    104f:	00 

0000000000001050 <__pfx_rfuse_init_ring_buffer_2>:
    1050:	90                   	nop
    1051:	90                   	nop
    1052:	90                   	nop
    1053:	90                   	nop
    1054:	90                   	nop
    1055:	90                   	nop
    1056:	90                   	nop
    1057:	90                   	nop
    1058:	90                   	nop
    1059:	90                   	nop
    105a:	90                   	nop
    105b:	90                   	nop
    105c:	90                   	nop
    105d:	90                   	nop
    105e:	90                   	nop
    105f:	90                   	nop

0000000000001060 <rfuse_init_ring_buffer_2>:
void rfuse_init_ring_buffer_2(struct ring_buffer_2 *rb){
    1060:	e8 00 00 00 00       	call   1065 <rfuse_init_ring_buffer_2+0x5>
	rb->head=0;
    1065:	48 b8 ff 0f 00 00 00 	movabs $0x100000000fff,%rax
    106c:	10 00 00 
void rfuse_init_ring_buffer_2(struct ring_buffer_2 *rb){
    106f:	55                   	push   %rbp
	rb->head=0;
    1070:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    1077:	48 89 47 08          	mov    %rax,0x8(%rdi)
void rfuse_init_ring_buffer_2(struct ring_buffer_2 *rb){
    107b:	48 89 e5             	mov    %rsp,%rbp
}
    107e:	5d                   	pop    %rbp
    107f:	31 c0                	xor    %eax,%eax
    1081:	31 ff                	xor    %edi,%edi
    1083:	e9 00 00 00 00       	jmp    1088 <rfuse_init_ring_buffer_2+0x28>
    1088:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    108f:	00 

0000000000001090 <__pfx_rfuse_init_ring_buffer_3>:
    1090:	90                   	nop
    1091:	90                   	nop
    1092:	90                   	nop
    1093:	90                   	nop
    1094:	90                   	nop
    1095:	90                   	nop
    1096:	90                   	nop
    1097:	90                   	nop
    1098:	90                   	nop
    1099:	90                   	nop
    109a:	90                   	nop
    109b:	90                   	nop
    109c:	90                   	nop
    109d:	90                   	nop
    109e:	90                   	nop
    109f:	90                   	nop

00000000000010a0 <rfuse_init_ring_buffer_3>:
void rfuse_init_ring_buffer_3(struct ring_buffer_3 *rb){
    10a0:	e8 00 00 00 00       	call   10a5 <rfuse_init_ring_buffer_3+0x5>
	rb->head=0;
    10a5:	48 b8 ff 0f 00 00 00 	movabs $0x100000000fff,%rax
    10ac:	10 00 00 
void rfuse_init_ring_buffer_3(struct ring_buffer_3 *rb){
    10af:	55                   	push   %rbp
	rb->head=0;
    10b0:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    10b7:	48 89 47 08          	mov    %rax,0x8(%rdi)
void rfuse_init_ring_buffer_3(struct ring_buffer_3 *rb){
    10bb:	48 89 e5             	mov    %rsp,%rbp
}	
    10be:	5d                   	pop    %rbp
    10bf:	31 c0                	xor    %eax,%eax
    10c1:	31 ff                	xor    %edi,%edi
    10c3:	e9 00 00 00 00       	jmp    10c8 <rfuse_init_ring_buffer_3+0x28>
    10c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    10cf:	00 

00000000000010d0 <__pfx_rfuse_iqueue_init>:
    10d0:	90                   	nop
    10d1:	90                   	nop
    10d2:	90                   	nop
    10d3:	90                   	nop
    10d4:	90                   	nop
    10d5:	90                   	nop
    10d6:	90                   	nop
    10d7:	90                   	nop
    10d8:	90                   	nop
    10d9:	90                   	nop
    10da:	90                   	nop
    10db:	90                   	nop
    10dc:	90                   	nop
    10dd:	90                   	nop
    10de:	90                   	nop
    10df:	90                   	nop

00000000000010e0 <rfuse_iqueue_init>:
void rfuse_iqueue_init(struct fuse_conn *fc, void *priv){
    10e0:	e8 00 00 00 00       	call   10e5 <rfuse_iqueue_init+0x5>
    10e5:	55                   	push   %rbp

		if (size > KMALLOC_MAX_CACHE_SIZE)
			return kmalloc_large(size, flags);

		index = kmalloc_index(size);
		return kmalloc_trace(
    10e6:	ba 10 00 00 00       	mov    $0x10,%edx
    10eb:	48 89 e5             	mov    %rsp,%rbp
    10ee:	41 57                	push   %r15
    10f0:	45 31 ff             	xor    %r15d,%r15d
    10f3:	41 56                	push   %r14
    10f5:	41 55                	push   %r13
    10f7:	41 54                	push   %r12
	rb->tail=0;
    10f9:	49 bc ff 0f 00 00 00 	movabs $0x100000000fff,%r12
    1100:	10 00 00 
void rfuse_iqueue_init(struct fuse_conn *fc, void *priv){
    1103:	53                   	push   %rbx
    1104:	48 83 ec 20          	sub    $0x20,%rsp
    1108:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    110c:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 1113 <rfuse_iqueue_init+0x33>
    1113:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1117:	be c0 0d 00 00       	mov    $0xdc0,%esi
    111c:	e8 00 00 00 00       	call   1121 <rfuse_iqueue_init+0x41>
    1121:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
	for(i = 0; i < RFUSE_NUM_IQUEUE; i++){
    1125:	49 89 c6             	mov    %rax,%r14
#endif

#ifndef cpu_to_node
static inline int cpu_to_node(int cpu)
{
	return per_cpu(numa_node, cpu);
    1128:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
    112f:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
		printk("Initialize rfuse iqueue, id: %d\n", i);
    1133:	44 89 fe             	mov    %r15d,%esi
    1136:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    113d:	45 89 fd             	mov    %r15d,%r13d
    1140:	e8 00 00 00 00       	call   1145 <rfuse_iqueue_init+0x65>

static __always_inline bool variable_test_bit(long nr, volatile const unsigned long *addr)
{
	bool oldbit;

	asm volatile(__ASM_SIZE(bt) " %2,%1"
    1145:	4c 0f a3 3d 00 00 00 	bt     %r15,0x0(%rip)        # 114d <rfuse_iqueue_init+0x6d>
    114c:	00 
		if (!cpu_online(i) || !cpu_present(i)) {
    114d:	73 0a                	jae    1159 <rfuse_iqueue_init+0x79>
    114f:	4c 0f a3 3d 00 00 00 	bt     %r15,0x0(%rip)        # 1157 <rfuse_iqueue_init+0x77>
    1156:	00 
    1157:	72 0f                	jb     1168 <rfuse_iqueue_init+0x88>
        		pr_err("Invalid CPU %d\n", i);
    1159:	44 89 ee             	mov    %r13d,%esi
    115c:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    1163:	e8 00 00 00 00       	call   1168 <rfuse_iqueue_init+0x88>
    1168:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx

		if (size > KMALLOC_MAX_CACHE_SIZE)
			return kmalloc_large_node(size, flags, node);

		index = kmalloc_index(size);
		return kmalloc_node_trace(
    116c:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 1173 <rfuse_iqueue_init+0x93>
    1173:	be c0 0d 00 00       	mov    $0xdc0,%esi
	for(i = 0; i < RFUSE_NUM_IQUEUE; i++){
    1178:	49 83 c6 08          	add    $0x8,%r14
    117c:	4a 8b 04 fd 00 00 00 	mov    0x0(,%r15,8),%rax
    1183:	00 
    1184:	8b 1c 08             	mov    (%rax,%rcx,1),%ebx
    1187:	b9 00 10 00 00       	mov    $0x1000,%ecx
    118c:	89 da                	mov    %ebx,%edx
    118e:	e8 00 00 00 00       	call   1193 <rfuse_iqueue_init+0xb3>
		init_waitqueue_head(&riq[i]->waitq);
    1193:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    119a:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
		riq[i] = kzalloc_node(4096, GFP_KERNEL, node_id);
    11a1:	49 89 46 f8          	mov    %rax,-0x8(%r14)
		init_waitqueue_head(&riq[i]->waitq);
    11a5:	48 8d b8 b0 00 00 00 	lea    0xb0(%rax),%rdi
		riq[i]->riq_id = i;
    11ac:	44 89 28             	mov    %r13d,(%rax)
		spin_lock_init(&riq[i]->lock);
    11af:	c7 80 c8 00 00 00 00 	movl   $0x0,0xc8(%rax)
    11b6:	00 00 00 
		init_waitqueue_head(&riq[i]->waitq);
    11b9:	e8 00 00 00 00       	call   11be <rfuse_iqueue_init+0xde>
		init_waitqueue_head(&riq[i]->idle_user_waitq);
    11be:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    11c2:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
    11c9:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
    11d0:	48 8d b8 10 01 00 00 	lea    0x110(%rax),%rdi
    11d7:	e8 00 00 00 00       	call   11dc <rfuse_iqueue_init+0xfc>
		riq[i]->connected=1;
    11dc:	49 8b 46 f8          	mov    -0x8(%r14),%rax
		riq[i]->priv=priv;
    11e0:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
			return kmalloc_large_node(size, flags, node);
    11e4:	89 da                	mov    %ebx,%edx
    11e6:	be c0 0c 00 00       	mov    $0xcc0,%esi
    11eb:	bf 00 40 00 00       	mov    $0x4000,%edi
		riq[i]->connected=1;
    11f0:	c7 80 a8 00 00 00 01 	movl   $0x1,0xa8(%rax)
    11f7:	00 00 00 
		riq[i]->priv=priv;
    11fa:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    11fe:	48 89 88 d8 00 00 00 	mov    %rcx,0xd8(%rax)
		rfuse_init_ring_buffer_1(&riq[i]->pending);
    1205:	49 8b 46 f8          	mov    -0x8(%r14),%rax
	rb->tail=0;
    1209:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1210:	00 
    1211:	4c 89 60 10          	mov    %r12,0x10(%rax)
		rfuse_init_ring_buffer_2(&riq[i]->interrupts);
    1215:	49 8b 46 f8          	mov    -0x8(%r14),%rax
	rb->head=0;
    1219:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
    1220:	00 
    1221:	4c 89 60 30          	mov    %r12,0x30(%rax)
		rfuse_init_ring_buffer_3(&riq[i]->forgets);
    1225:	49 8b 46 f8          	mov    -0x8(%r14),%rax
	rb->head=0;
    1229:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
    1230:	00 
    1231:	4c 89 60 50          	mov    %r12,0x50(%rax)
		rfuse_init_ring_buffer_1(&riq[i]->completes);
    1235:	49 8b 46 f8          	mov    -0x8(%r14),%rax
	rb->tail=0;
    1239:	48 c7 40 68 00 00 00 	movq   $0x0,0x68(%rax)
    1240:	00 
    1241:	4c 89 60 70          	mov    %r12,0x70(%rax)
		riq[i]->pending.kaddr = kmalloc_node(sizeof(struct rfuse_address_entry) * RFUSE_MAX_QUEUE_SIZE, GFP_KERNEL, node_id);
    1245:	4d 8b 6e f8          	mov    -0x8(%r14),%r13
    1249:	e8 00 00 00 00       	call   124e <rfuse_iqueue_init+0x16e>
    124e:	89 da                	mov    %ebx,%edx
    1250:	be c0 0c 00 00       	mov    $0xcc0,%esi
    1255:	bf 00 80 00 00       	mov    $0x8000,%edi
    125a:	49 89 45 18          	mov    %rax,0x18(%r13)
		riq[i]->interrupts.kaddr = kmalloc_node(sizeof(struct rfuse_interrupt_entry) * RFUSE_MAX_QUEUE_SIZE, GFP_KERNEL, node_id);
    125e:	4d 8b 6e f8          	mov    -0x8(%r14),%r13
    1262:	e8 00 00 00 00       	call   1267 <rfuse_iqueue_init+0x187>
    1267:	89 da                	mov    %ebx,%edx
    1269:	be c0 0c 00 00       	mov    $0xcc0,%esi
    126e:	bf 00 00 02 00       	mov    $0x20000,%edi
    1273:	49 89 45 38          	mov    %rax,0x38(%r13)
		riq[i]->forgets.kaddr = kmalloc_node(sizeof(struct rfuse_forget_entry) * RFUSE_MAX_QUEUE_SIZE, GFP_KERNEL, node_id);
    1277:	4d 8b 6e f8          	mov    -0x8(%r14),%r13
    127b:	e8 00 00 00 00       	call   1280 <rfuse_iqueue_init+0x1a0>
    1280:	89 da                	mov    %ebx,%edx
    1282:	be c0 0c 00 00       	mov    $0xcc0,%esi
    1287:	bf 00 40 00 00       	mov    $0x4000,%edi
    128c:	49 89 45 58          	mov    %rax,0x58(%r13)
		riq[i]->completes.kaddr = kmalloc_node(sizeof(struct rfuse_address_entry) * RFUSE_MAX_QUEUE_SIZE, GFP_KERNEL, node_id);
    1290:	4d 8b 6e f8          	mov    -0x8(%r14),%r13
    1294:	e8 00 00 00 00       	call   1299 <rfuse_iqueue_init+0x1b9>
    1299:	89 da                	mov    %ebx,%edx
    129b:	be c0 0c 00 00       	mov    $0xcc0,%esi
    12a0:	bf 00 00 20 00       	mov    $0x200000,%edi
    12a5:	49 89 45 78          	mov    %rax,0x78(%r13)
		riq[i]->karg = kmalloc_node(sizeof(struct rfuse_arg)*RFUSE_MAX_QUEUE_SIZE * 2, GFP_KERNEL, node_id);
    12a9:	4d 8b 6e f8          	mov    -0x8(%r14),%r13
    12ad:	e8 00 00 00 00       	call   12b2 <rfuse_iqueue_init+0x1d2>
    12b2:	89 da                	mov    %ebx,%edx
    12b4:	be c0 0c 00 00       	mov    $0xcc0,%esi
    12b9:	bf 00 00 20 00       	mov    $0x200000,%edi
    12be:	49 89 85 90 00 00 00 	mov    %rax,0x90(%r13)
		riq[i]->kreq = kmalloc_node(sizeof(struct rfuse_req)*RFUSE_MAX_QUEUE_SIZE * 2, GFP_KERNEL, node_id);
    12c5:	4d 8b 6e f8          	mov    -0x8(%r14),%r13
    12c9:	e8 00 00 00 00       	call   12ce <rfuse_iqueue_init+0x1ee>
		return kmalloc_node_trace(
    12ce:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 12d5 <rfuse_iqueue_init+0x1f5>
    12d5:	b9 00 04 00 00       	mov    $0x400,%ecx
    12da:	89 da                	mov    %ebx,%edx
    12dc:	49 89 85 a0 00 00 00 	mov    %rax,0xa0(%r13)
		riq[i]->argbm.bitmap_size = RFUSE_MAX_QUEUE_SIZE * 2;
    12e3:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    12e7:	be c0 0d 00 00       	mov    $0xdc0,%esi
    12ec:	48 c7 80 e0 00 00 00 	movq   $0x2000,0xe0(%rax)
    12f3:	00 20 00 00 
		riq[i]->reqbm.bitmap_size = RFUSE_MAX_QUEUE_SIZE * 2;
    12f7:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    12fb:	48 c7 80 f8 00 00 00 	movq   $0x2000,0xf8(%rax)
    1302:	00 20 00 00 
		riq[i]->reqbm.full=0;
    1306:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    130a:	c7 80 00 01 00 00 00 	movl   $0x0,0x100(%rax)
    1311:	00 00 00 
		riq[i]->argbm.full=0;
    1314:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    1318:	c7 80 e8 00 00 00 00 	movl   $0x0,0xe8(%rax)
    131f:	00 00 00 
		riq[i]->argbm.bitmap = kzalloc_node((RFUSE_MAX_QUEUE_SIZE*2)>>3, GFP_KERNEL, node_id);
    1322:	4d 8b 6e f8          	mov    -0x8(%r14),%r13
    1326:	e8 00 00 00 00       	call   132b <rfuse_iqueue_init+0x24b>
    132b:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 1332 <rfuse_iqueue_init+0x252>
    1332:	b9 00 04 00 00       	mov    $0x400,%ecx
    1337:	89 da                	mov    %ebx,%edx
    1339:	49 89 85 f0 00 00 00 	mov    %rax,0xf0(%r13)
    1340:	be c0 0d 00 00       	mov    $0xdc0,%esi
		riq[i]->reqbm.bitmap = kzalloc_node((RFUSE_MAX_QUEUE_SIZE*2)>>3, GFP_KERNEL, node_id);
    1345:	4d 8b 6e f8          	mov    -0x8(%r14),%r13
    1349:	e8 00 00 00 00       	call   134e <rfuse_iqueue_init+0x26e>
		init_waitqueue_head(&riq[i]->blocked_waitq);
    134e:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
		riq[i]->reqbm.bitmap = kzalloc_node((RFUSE_MAX_QUEUE_SIZE*2)>>3, GFP_KERNEL, node_id);
    1355:	49 89 85 08 01 00 00 	mov    %rax,0x108(%r13)
		INIT_LIST_HEAD(&riq[i]->bg_queue);
    135c:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    1360:	48 8d 90 30 01 00 00 	lea    0x130(%rax),%rdx
	WRITE_ONCE(list->next, list);
    1367:	48 89 90 30 01 00 00 	mov    %rdx,0x130(%rax)
	WRITE_ONCE(list->prev, list);
    136e:	48 89 90 38 01 00 00 	mov    %rdx,0x138(%rax)
		spin_lock_init(&riq[i]->bg_lock);
    1375:	49 8b 46 f8          	mov    -0x8(%r14),%rax
		init_waitqueue_head(&riq[i]->blocked_waitq);
    1379:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
		spin_lock_init(&riq[i]->bg_lock);
    1380:	c7 80 40 01 00 00 00 	movl   $0x0,0x140(%rax)
    1387:	00 00 00 
		init_waitqueue_head(&riq[i]->blocked_waitq);
    138a:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    138e:	48 8d b8 58 01 00 00 	lea    0x158(%rax),%rdi
    1395:	e8 00 00 00 00       	call   139a <rfuse_iqueue_init+0x2ba>
		riq[i]->max_background = FUSE_DEFAULT_MAX_BACKGROUND;
    139a:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    139e:	c7 80 44 01 00 00 20 	movl   $0x20,0x144(%rax)
    13a5:	00 00 00 
		riq[i]->congestion_threshold = FUSE_DEFAULT_CONGESTION_THRESHOLD;
    13a8:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    13ac:	c7 80 48 01 00 00 18 	movl   $0x18,0x148(%rax)
    13b3:	00 00 00 
		riq[i]->num_background = 0;
    13b6:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    13ba:	c7 80 4c 01 00 00 00 	movl   $0x0,0x14c(%rax)
    13c1:	00 00 00 
		riq[i]->active_background = 0;
    13c4:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    13c8:	c7 80 50 01 00 00 00 	movl   $0x0,0x150(%rax)
    13cf:	00 00 00 
		riq[i]->num_sync_sleeping = 0;
    13d2:	49 8b 46 f8          	mov    -0x8(%r14),%rax
    13d6:	c7 80 28 01 00 00 00 	movl   $0x0,0x128(%rax)
    13dd:	00 00 00 
	for(i = 0; i < RFUSE_NUM_IQUEUE; i++){
    13e0:	4d 85 ff             	test   %r15,%r15
    13e3:	75 0b                	jne    13f0 <rfuse_iqueue_init+0x310>
    13e5:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    13eb:	e9 43 fd ff ff       	jmp    1133 <rfuse_iqueue_init+0x53>
	fc->riq = riq;
    13f0:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    13f4:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    13f8:	48 89 88 d0 00 00 00 	mov    %rcx,0xd0(%rax)
}
    13ff:	48 83 c4 20          	add    $0x20,%rsp
    1403:	5b                   	pop    %rbx
    1404:	41 5c                	pop    %r12
    1406:	41 5d                	pop    %r13
    1408:	41 5e                	pop    %r14
    140a:	41 5f                	pop    %r15
    140c:	5d                   	pop    %rbp
    140d:	31 c0                	xor    %eax,%eax
    140f:	31 d2                	xor    %edx,%edx
    1411:	31 c9                	xor    %ecx,%ecx
    1413:	31 f6                	xor    %esi,%esi
    1415:	31 ff                	xor    %edi,%edi
    1417:	e9 00 00 00 00       	jmp    141c <rfuse_iqueue_init+0x33c>
    141c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001420 <__pfx_rfuse_iqueue_release>:
    1420:	90                   	nop
    1421:	90                   	nop
    1422:	90                   	nop
    1423:	90                   	nop
    1424:	90                   	nop
    1425:	90                   	nop
    1426:	90                   	nop
    1427:	90                   	nop
    1428:	90                   	nop
    1429:	90                   	nop
    142a:	90                   	nop
    142b:	90                   	nop
    142c:	90                   	nop
    142d:	90                   	nop
    142e:	90                   	nop
    142f:	90                   	nop

0000000000001430 <rfuse_iqueue_release>:
void rfuse_iqueue_release(struct fuse_conn *fc){
    1430:	e8 00 00 00 00       	call   1435 <rfuse_iqueue_release+0x5>
    1435:	55                   	push   %rbp
    1436:	48 89 e5             	mov    %rsp,%rbp
    1439:	41 55                	push   %r13
    143b:	41 54                	push   %r12
    143d:	53                   	push   %rbx
	struct rfuse_iqueue **riq = fc->riq;
    143e:	4c 8b a7 d0 00 00 00 	mov    0xd0(%rdi),%r12
	for(i = 0; i < RFUSE_NUM_IQUEUE; i++) {
    1445:	4c 89 e3             	mov    %r12,%rbx
    1448:	4d 8d 6c 24 10       	lea    0x10(%r12),%r13
		kfree(riq[i]->pending.kaddr);
    144d:	48 8b 03             	mov    (%rbx),%rax
	for(i = 0; i < RFUSE_NUM_IQUEUE; i++) {
    1450:	48 83 c3 08          	add    $0x8,%rbx
		kfree(riq[i]->pending.kaddr);
    1454:	48 8b 78 18          	mov    0x18(%rax),%rdi
    1458:	e8 00 00 00 00       	call   145d <rfuse_iqueue_release+0x2d>
		kfree(riq[i]->interrupts.kaddr);
    145d:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
    1461:	48 8b 78 38          	mov    0x38(%rax),%rdi
    1465:	e8 00 00 00 00       	call   146a <rfuse_iqueue_release+0x3a>
		kfree(riq[i]->forgets.kaddr);
    146a:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
    146e:	48 8b 78 58          	mov    0x58(%rax),%rdi
    1472:	e8 00 00 00 00       	call   1477 <rfuse_iqueue_release+0x47>
		kfree(riq[i]->completes.kaddr);
    1477:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
    147b:	48 8b 78 78          	mov    0x78(%rax),%rdi
    147f:	e8 00 00 00 00       	call   1484 <rfuse_iqueue_release+0x54>
		kfree(riq[i]->karg);
    1484:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
    1488:	48 8b b8 90 00 00 00 	mov    0x90(%rax),%rdi
    148f:	e8 00 00 00 00       	call   1494 <rfuse_iqueue_release+0x64>
		kfree(riq[i]->kreq);
    1494:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
    1498:	48 8b b8 a0 00 00 00 	mov    0xa0(%rax),%rdi
    149f:	e8 00 00 00 00       	call   14a4 <rfuse_iqueue_release+0x74>
		kfree(riq[i]->argbm.bitmap);
    14a4:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
    14a8:	48 8b b8 f0 00 00 00 	mov    0xf0(%rax),%rdi
    14af:	e8 00 00 00 00       	call   14b4 <rfuse_iqueue_release+0x84>
		kfree(riq[i]->reqbm.bitmap);
    14b4:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
    14b8:	48 8b b8 08 01 00 00 	mov    0x108(%rax),%rdi
    14bf:	e8 00 00 00 00       	call   14c4 <rfuse_iqueue_release+0x94>
	for(i = 0; i < RFUSE_NUM_IQUEUE; i++) {
    14c4:	4c 39 eb             	cmp    %r13,%rbx
    14c7:	75 84                	jne    144d <rfuse_iqueue_release+0x1d>
	kfree(riq);
    14c9:	4c 89 e7             	mov    %r12,%rdi
    14cc:	e8 00 00 00 00       	call   14d1 <rfuse_iqueue_release+0xa1>
}
    14d1:	5b                   	pop    %rbx
    14d2:	41 5c                	pop    %r12
    14d4:	41 5d                	pop    %r13
    14d6:	5d                   	pop    %rbp
    14d7:	31 c0                	xor    %eax,%eax
    14d9:	31 ff                	xor    %edi,%edi
    14db:	e9 00 00 00 00       	jmp    14e0 <__pfx_rfuse_io_mmap>

00000000000014e0 <__pfx_rfuse_io_mmap>:
    14e0:	90                   	nop
    14e1:	90                   	nop
    14e2:	90                   	nop
    14e3:	90                   	nop
    14e4:	90                   	nop
    14e5:	90                   	nop
    14e6:	90                   	nop
    14e7:	90                   	nop
    14e8:	90                   	nop
    14e9:	90                   	nop
    14ea:	90                   	nop
    14eb:	90                   	nop
    14ec:	90                   	nop
    14ed:	90                   	nop
    14ee:	90                   	nop
    14ef:	90                   	nop

00000000000014f0 <rfuse_io_mmap>:
int rfuse_io_mmap(struct vm_area_struct *vma, struct fuse_dev *fud, int req_index, int riq_id, unsigned nbytes){
    14f0:	e8 00 00 00 00       	call   14f5 <rfuse_io_mmap+0x5>
    14f5:	55                   	push   %rbp
    14f6:	48 89 f0             	mov    %rsi,%rax
	struct rfuse_req *r_req = &fud->fc->riq[riq_id]->kreq[req_index];
    14f9:	48 63 c9             	movslq %ecx,%rcx
    14fc:	48 63 d2             	movslq %edx,%rdx
	rp = r_req->rp;
    14ff:	48 c1 e2 08          	shl    $0x8,%rdx
int rfuse_io_mmap(struct vm_area_struct *vma, struct fuse_dev *fud, int req_index, int riq_id, unsigned nbytes){
    1503:	48 89 e5             	mov    %rsp,%rbp
    1506:	41 57                	push   %r15
    1508:	41 56                	push   %r14
    150a:	41 55                	push   %r13
    150c:	41 54                	push   %r12
    150e:	53                   	push   %rbx
    150f:	48 83 ec 10          	sub    $0x10,%rsp
	struct rfuse_req *r_req = &fud->fc->riq[riq_id]->kreq[req_index];
    1513:	48 8b 00             	mov    (%rax),%rax
	unsigned long addr = vma->vm_start;
    1516:	48 8b 37             	mov    (%rdi),%rsi
	struct rfuse_req *r_req = &fud->fc->riq[riq_id]->kreq[req_index];
    1519:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1520:	48 8b 04 c8          	mov    (%rax,%rcx,8),%rax
	rp = r_req->rp;
    1524:	48 03 90 a0 00 00 00 	add    0xa0(%rax),%rdx
    152b:	4c 8b b2 f0 00 00 00 	mov    0xf0(%rdx),%r14
	for(i = 0;i < rp->num_pages && nbytes; i++){
    1532:	41 8b 46 10          	mov    0x10(%r14),%eax
    1536:	85 c0                	test   %eax,%eax
    1538:	0f 84 fa 00 00 00    	je     1638 <rfuse_io_mmap+0x148>
    153e:	45 85 c0             	test   %r8d,%r8d
    1541:	0f 84 f1 00 00 00    	je     1638 <rfuse_io_mmap+0x148>
    1547:	45 31 ff             	xor    %r15d,%r15d
	x = y + ((x > y) ? phys_base : (__START_KERNEL_map - PAGE_OFFSET));
    154a:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    154e:	65 4c 8b 2c 25 00 00 	mov    %gs:0x0,%r13
    1555:	00 00 
    1557:	45 89 f9             	mov    %r15d,%r9d
    155a:	44 89 45 d0          	mov    %r8d,-0x30(%rbp)
    155e:	4d 89 ef             	mov    %r13,%r15
    1561:	4d 89 f5             	mov    %r14,%r13
    1564:	49 89 f6             	mov    %rsi,%r14
    1567:	eb 11                	jmp    157a <rfuse_io_mmap+0x8a>
		addr += size;
    1569:	4d 01 e6             	add    %r12,%r14
	for(i = 0;i < rp->num_pages && nbytes; i++){
    156c:	41 83 c1 01          	add    $0x1,%r9d
    1570:	45 3b 4d 10          	cmp    0x10(%r13),%r9d
    1574:	0f 83 be 00 00 00    	jae    1638 <rfuse_io_mmap+0x148>
		unsigned long size = (unsigned long)min(nbytes, rp->descs[i].length);
    157a:	49 8b 4d 08          	mov    0x8(%r13),%rcx
		struct page *page = rp->pages[i];
    157e:	49 8b 45 00          	mov    0x0(%r13),%rax
    1582:	44 89 ca             	mov    %r9d,%edx
		unsigned long size = (unsigned long)min(nbytes, rp->descs[i].length);
    1585:	8b 75 d0             	mov    -0x30(%rbp),%esi
		struct page *page = rp->pages[i];
    1588:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
		unsigned long size = (unsigned long)min(nbytes, rp->descs[i].length);
    158c:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    1590:	44 8b 22             	mov    (%rdx),%r12d
		unsigned int offset = rp->descs[i].offset;
    1593:	8b 4a 04             	mov    0x4(%rdx),%ecx
		unsigned long size = (unsigned long)min(nbytes, rp->descs[i].length);
    1596:	44 39 e6             	cmp    %r12d,%esi
    1599:	4c 0f 46 e6          	cmovbe %rsi,%r12
	raw_cpu_add_4(pcpu_hot.preempt_count, val);
    159d:	65 ff 05 00 00 00 00 	incl   %gs:0x0(%rip)        # 15a4 <rfuse_io_mmap+0xb4>
	current->pagefault_disabled++;
    15a4:	41 83 87 64 23 00 00 	addl   $0x1,0x2364(%r15)
    15ab:	01 
	return page_to_virt(page);
    15ac:	48 2b 05 00 00 00 00 	sub    0x0(%rip),%rax        # 15b3 <rfuse_io_mmap+0xc3>
    15b3:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 15ba <rfuse_io_mmap+0xca>
	unsigned long y = x - __START_KERNEL_map;
    15ba:	bf 00 00 00 80       	mov    $0x80000000,%edi
    15bf:	48 c1 f8 06          	sar    $0x6,%rax
    15c3:	48 c1 e0 0c          	shl    $0xc,%rax
    15c7:	48 01 d0             	add    %rdx,%rax
		void *buf = mapaddr + offset;
    15ca:	48 01 c8             	add    %rcx,%rax
    15cd:	48 01 f8             	add    %rdi,%rax
    15d0:	0f 82 ba 00 00 00    	jb     1690 <rfuse_io_mmap+0x1a0>
	x = y + ((x > y) ? phys_base : (__START_KERNEL_map - PAGE_OFFSET));
    15d6:	48 c7 c1 00 00 00 80 	mov    $0xffffffff80000000,%rcx
    15dd:	48 29 d1             	sub    %rdx,%rcx
    15e0:	48 8d 1c 08          	lea    (%rax,%rcx,1),%rbx
		if(remap_pfn_range(vma, addr, pfn, size, vma->vm_page_prot)) {
    15e4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    15e8:	4c 89 e1             	mov    %r12,%rcx
    15eb:	4c 89 f6             	mov    %r14,%rsi
		unsigned long pfn = virt_to_phys(buf) >> PAGE_SHIFT;
    15ee:	48 c1 eb 0c          	shr    $0xc,%rbx
    15f2:	44 89 4d d4          	mov    %r9d,-0x2c(%rbp)
		if(remap_pfn_range(vma, addr, pfn, size, vma->vm_page_prot)) {
    15f6:	4c 8b 40 18          	mov    0x18(%rax),%r8
    15fa:	48 89 da             	mov    %rbx,%rdx
    15fd:	48 89 c7             	mov    %rax,%rdi
    1600:	e8 00 00 00 00       	call   1605 <rfuse_io_mmap+0x115>
    1605:	44 8b 4d d4          	mov    -0x2c(%rbp),%r9d
    1609:	85 c0                	test   %eax,%eax
    160b:	75 4e                	jne    165b <rfuse_io_mmap+0x16b>
	current->pagefault_disabled--;
    160d:	41 83 af 64 23 00 00 	subl   $0x1,0x2364(%r15)
    1614:	01 
	return GEN_UNARY_RMWcc("decl", pcpu_hot.preempt_count, e,
    1615:	65 ff 0d 00 00 00 00 	decl   %gs:0x0(%rip)        # 161c <rfuse_io_mmap+0x12c>
    161c:	0f 85 47 ff ff ff    	jne    1569 <rfuse_io_mmap+0x79>
    1622:	e8 00 00 00 00       	call   1627 <rfuse_io_mmap+0x137>
		addr += size;
    1627:	4d 01 e6             	add    %r12,%r14
	for(i = 0;i < rp->num_pages && nbytes; i++){
    162a:	41 83 c1 01          	add    $0x1,%r9d
    162e:	45 3b 4d 10          	cmp    0x10(%r13),%r9d
    1632:	0f 82 42 ff ff ff    	jb     157a <rfuse_io_mmap+0x8a>
}
    1638:	48 83 c4 10          	add    $0x10,%rsp
	return 0;
    163c:	31 c0                	xor    %eax,%eax
}
    163e:	5b                   	pop    %rbx
    163f:	41 5c                	pop    %r12
    1641:	41 5d                	pop    %r13
    1643:	41 5e                	pop    %r14
    1645:	41 5f                	pop    %r15
    1647:	5d                   	pop    %rbp
    1648:	31 d2                	xor    %edx,%edx
    164a:	31 c9                	xor    %ecx,%ecx
    164c:	31 f6                	xor    %esi,%esi
    164e:	31 ff                	xor    %edi,%edi
    1650:	45 31 c0             	xor    %r8d,%r8d
    1653:	45 31 c9             	xor    %r9d,%r9d
    1656:	e9 00 00 00 00       	jmp    165b <rfuse_io_mmap+0x16b>
			printk("RFUSE : io_mmap, remap_pfn_range failed, pfn: %lu\n", pfn);
    165b:	48 89 de             	mov    %rbx,%rsi
    165e:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    1665:	e8 00 00 00 00       	call   166a <rfuse_io_mmap+0x17a>
			return 1;
    166a:	b8 01 00 00 00       	mov    $0x1,%eax
}
    166f:	48 83 c4 10          	add    $0x10,%rsp
    1673:	5b                   	pop    %rbx
    1674:	41 5c                	pop    %r12
    1676:	41 5d                	pop    %r13
    1678:	41 5e                	pop    %r14
    167a:	41 5f                	pop    %r15
    167c:	5d                   	pop    %rbp
    167d:	31 d2                	xor    %edx,%edx
    167f:	31 c9                	xor    %ecx,%ecx
    1681:	31 f6                	xor    %esi,%esi
    1683:	31 ff                	xor    %edi,%edi
    1685:	45 31 c0             	xor    %r8d,%r8d
    1688:	45 31 c9             	xor    %r9d,%r9d
    168b:	e9 00 00 00 00       	jmp    1690 <rfuse_io_mmap+0x1a0>
    1690:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1697 <rfuse_io_mmap+0x1a7>
    1697:	e9 44 ff ff ff       	jmp    15e0 <rfuse_io_mmap+0xf0>
    169c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000016a0 <__pfx_rfuse_validate_mmap_request>:
    16a0:	90                   	nop
    16a1:	90                   	nop
    16a2:	90                   	nop
    16a3:	90                   	nop
    16a4:	90                   	nop
    16a5:	90                   	nop
    16a6:	90                   	nop
    16a7:	90                   	nop
    16a8:	90                   	nop
    16a9:	90                   	nop
    16aa:	90                   	nop
    16ab:	90                   	nop
    16ac:	90                   	nop
    16ad:	90                   	nop
    16ae:	90                   	nop
    16af:	90                   	nop

00000000000016b0 <rfuse_validate_mmap_request>:
void *rfuse_validate_mmap_request(struct fuse_dev *fud, loff_t pgoff, size_t size){
    16b0:	e8 00 00 00 00       	call   16b5 <rfuse_validate_mmap_request+0x5>
    16b5:	55                   	push   %rbp
	unsigned long long map_args = pgoff << PAGE_SHIFT;
    16b6:	48 c1 e6 0c          	shl    $0xc,%rsi
	loff_t map_queue = map_args & RFUSE_QUEUE_MAP_MASK;
    16ba:	48 89 f0             	mov    %rsi,%rax
	int riq_id = (int)((map_args & RFUSE_RIQ_ID_MASK) >> 16);
    16bd:	48 c1 ee 10          	shr    $0x10,%rsi
	loff_t map_queue = map_args & RFUSE_QUEUE_MAP_MASK;
    16c1:	25 00 00 00 ff       	and    $0xff000000,%eax
void *rfuse_validate_mmap_request(struct fuse_dev *fud, loff_t pgoff, size_t size){
    16c6:	48 89 e5             	mov    %rsp,%rbp
    16c9:	41 55                	push   %r13
    16cb:	49 89 fd             	mov    %rdi,%r13
    16ce:	41 54                	push   %r12
	int riq_id = (int)((map_args & RFUSE_RIQ_ID_MASK) >> 16);
    16d0:	44 0f b6 e6          	movzbl %sil,%r12d
void *rfuse_validate_mmap_request(struct fuse_dev *fud, loff_t pgoff, size_t size){
    16d4:	53                   	push   %rbx
    16d5:	48 89 d3             	mov    %rdx,%rbx
	switch(map_queue){
    16d8:	48 3d 00 00 00 20    	cmp    $0x20000000,%rax
    16de:	0f 84 82 01 00 00    	je     1866 <rfuse_validate_mmap_request+0x1b6>
    16e4:	0f 8f d8 00 00 00    	jg     17c2 <rfuse_validate_mmap_request+0x112>
    16ea:	48 3d 00 00 00 08    	cmp    $0x8000000,%rax
    16f0:	0f 84 87 01 00 00    	je     187d <rfuse_validate_mmap_request+0x1cd>
    16f6:	48 3d 00 00 00 18    	cmp    $0x18000000,%rax
    16fc:	0f 85 94 00 00 00    	jne    1796 <rfuse_validate_mmap_request+0xe6>
			ptr = fud->fc->riq[riq_id]->interrupts.kaddr;
    1702:	48 8b 07             	mov    (%rdi),%rax
    1705:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    170c:	4a 8b 04 e0          	mov    (%rax,%r12,8),%rax
    1710:	4c 8b 60 38          	mov    0x38(%rax),%r12
	unsigned long y = x - __START_KERNEL_map;
    1714:	b8 00 00 00 80       	mov    $0x80000000,%eax
    1719:	4c 01 e0             	add    %r12,%rax
    171c:	0f 82 95 01 00 00    	jb     18b7 <rfuse_validate_mmap_request+0x207>
	x = y + ((x > y) ? phys_base : (__START_KERNEL_map - PAGE_OFFSET));
    1722:	48 c7 c2 00 00 00 80 	mov    $0xffffffff80000000,%rdx
    1729:	48 2b 15 00 00 00 00 	sub    0x0(%rip),%rdx        # 1730 <rfuse_validate_mmap_request+0x80>
    1730:	48 01 d0             	add    %rdx,%rax
	struct page *page = virt_to_page(x);
    1733:	48 c1 e8 0c          	shr    $0xc,%rax
    1737:	48 c1 e0 06          	shl    $0x6,%rax
    173b:	48 03 05 00 00 00 00 	add    0x0(%rip),%rax        # 1742 <rfuse_validate_mmap_request+0x92>
	unsigned long head = READ_ONCE(page->compound_head);
    1742:	48 8b 48 08          	mov    0x8(%rax),%rcx
    1746:	48 89 c2             	mov    %rax,%rdx
	if (unlikely(head & 1))
    1749:	f6 c1 01             	test   $0x1,%cl
    174c:	0f 85 5c 01 00 00    	jne    18ae <rfuse_validate_mmap_request+0x1fe>
    1752:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    1757:	48 8b 0a             	mov    (%rdx),%rcx
    175a:	b8 00 10 00 00       	mov    $0x1000,%eax
	if (!test_bit(PG_head, &folio->flags))
    175f:	f7 c1 00 00 01 00    	test   $0x10000,%ecx
    1765:	74 10                	je     1777 <rfuse_validate_mmap_request+0xc7>
	return folio->_folio_order;
    1767:	0f b6 4a 51          	movzbl 0x51(%rdx),%ecx
	return PAGE_SIZE << compound_order(page);
    176b:	48 d3 e0             	shl    %cl,%rax
    176e:	80 f9 3f             	cmp    $0x3f,%cl
    1771:	0f 87 00 00 00 00    	ja     1777 <rfuse_validate_mmap_request+0xc7>
	if(size > page_size(page))
    1777:	48 39 d8             	cmp    %rbx,%rax
    177a:	0f 82 c9 00 00 00    	jb     1849 <rfuse_validate_mmap_request+0x199>
}
    1780:	5b                   	pop    %rbx
    1781:	4c 89 e0             	mov    %r12,%rax
    1784:	41 5c                	pop    %r12
    1786:	41 5d                	pop    %r13
    1788:	5d                   	pop    %rbp
    1789:	31 d2                	xor    %edx,%edx
    178b:	31 c9                	xor    %ecx,%ecx
    178d:	31 f6                	xor    %esi,%esi
    178f:	31 ff                	xor    %edi,%edi
    1791:	e9 00 00 00 00       	jmp    1796 <rfuse_validate_mmap_request+0xe6>
	switch(map_queue){
    1796:	48 85 c0             	test   %rax,%rax
    1799:	0f 85 9e 00 00 00    	jne    183d <rfuse_validate_mmap_request+0x18d>
			printk("map_queue, riq_id: %d\n", riq_id);
    179f:	44 89 e6             	mov    %r12d,%esi
    17a2:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    17a9:	e8 00 00 00 00       	call   17ae <rfuse_validate_mmap_request+0xfe>
			ptr = (fud->fc->riq[riq_id]);
    17ae:	49 8b 45 00          	mov    0x0(%r13),%rax
    17b2:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    17b9:	4e 8b 24 e0          	mov    (%rax,%r12,8),%r12
			break;
    17bd:	e9 52 ff ff ff       	jmp    1714 <rfuse_validate_mmap_request+0x64>
	switch(map_queue){
    17c2:	48 3d 00 00 00 30    	cmp    $0x30000000,%rax
    17c8:	0f 84 c6 00 00 00    	je     1894 <rfuse_validate_mmap_request+0x1e4>
    17ce:	48 3d 00 00 00 38    	cmp    $0x38000000,%rax
    17d4:	75 1a                	jne    17f0 <rfuse_validate_mmap_request+0x140>
			ptr = fud->fc->riq[riq_id]->kreq;
    17d6:	48 8b 07             	mov    (%rdi),%rax
    17d9:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    17e0:	4a 8b 04 e0          	mov    (%rax,%r12,8),%rax
    17e4:	4c 8b a0 a0 00 00 00 	mov    0xa0(%rax),%r12
			break;
    17eb:	e9 24 ff ff ff       	jmp    1714 <rfuse_validate_mmap_request+0x64>
	switch(map_queue){
    17f0:	48 3d 00 00 00 28    	cmp    $0x28000000,%rax
    17f6:	75 45                	jne    183d <rfuse_validate_mmap_request+0x18d>
			ptr = fud->fc->riq[riq_id]->completes.kaddr;
    17f8:	48 8b 07             	mov    (%rdi),%rax
    17fb:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1802:	4a 8b 04 e0          	mov    (%rax,%r12,8),%rax
    1806:	4c 8b 60 78          	mov    0x78(%rax),%r12
			break;
    180a:	e9 05 ff ff ff       	jmp    1714 <rfuse_validate_mmap_request+0x64>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    180f:	a9 ff 0f 00 00       	test   $0xfff,%eax
    1814:	0f 85 3d ff ff ff    	jne    1757 <rfuse_validate_mmap_request+0xa7>
    181a:	48 8b 08             	mov    (%rax),%rcx
    181d:	f7 c1 00 00 01 00    	test   $0x10000,%ecx
    1823:	0f 84 2e ff ff ff    	je     1757 <rfuse_validate_mmap_request+0xa7>
		unsigned long head = READ_ONCE(page[1].compound_head);
    1829:	48 8b 48 48          	mov    0x48(%rax),%rcx
			return (const struct page *)(head - 1);
    182d:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
    1831:	83 e1 01             	and    $0x1,%ecx
    1834:	48 0f 44 d0          	cmove  %rax,%rdx
    1838:	e9 1a ff ff ff       	jmp    1757 <rfuse_validate_mmap_request+0xa7>
			printk("Invalid map_queue argument\n");
    183d:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    1844:	e8 00 00 00 00       	call   1849 <rfuse_validate_mmap_request+0x199>
			return ERR_PTR(-EINVAL);
    1849:	49 c7 c4 ea ff ff ff 	mov    $0xffffffffffffffea,%r12
}
    1850:	5b                   	pop    %rbx
    1851:	4c 89 e0             	mov    %r12,%rax
    1854:	41 5c                	pop    %r12
    1856:	41 5d                	pop    %r13
    1858:	5d                   	pop    %rbp
    1859:	31 d2                	xor    %edx,%edx
    185b:	31 c9                	xor    %ecx,%ecx
    185d:	31 f6                	xor    %esi,%esi
    185f:	31 ff                	xor    %edi,%edi
    1861:	e9 00 00 00 00       	jmp    1866 <rfuse_validate_mmap_request+0x1b6>
			ptr = fud->fc->riq[riq_id]->forgets.kaddr;
    1866:	48 8b 07             	mov    (%rdi),%rax
    1869:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1870:	4a 8b 04 e0          	mov    (%rax,%r12,8),%rax
    1874:	4c 8b 60 58          	mov    0x58(%rax),%r12
			break;
    1878:	e9 97 fe ff ff       	jmp    1714 <rfuse_validate_mmap_request+0x64>
			ptr = fud->fc->riq[riq_id]->pending.kaddr;
    187d:	48 8b 07             	mov    (%rdi),%rax
    1880:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1887:	4a 8b 04 e0          	mov    (%rax,%r12,8),%rax
    188b:	4c 8b 60 18          	mov    0x18(%rax),%r12
			break;
    188f:	e9 80 fe ff ff       	jmp    1714 <rfuse_validate_mmap_request+0x64>
			ptr = fud->fc->riq[riq_id]->karg;
    1894:	48 8b 07             	mov    (%rdi),%rax
    1897:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    189e:	4a 8b 04 e0          	mov    (%rax,%r12,8),%rax
    18a2:	4c 8b a0 90 00 00 00 	mov    0x90(%rax),%r12
			break;
    18a9:	e9 66 fe ff ff       	jmp    1714 <rfuse_validate_mmap_request+0x64>
		return head - 1;
    18ae:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
    18b2:	e9 a0 fe ff ff       	jmp    1757 <rfuse_validate_mmap_request+0xa7>
    18b7:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 18be <rfuse_validate_mmap_request+0x20e>
    18be:	e9 6d fe ff ff       	jmp    1730 <rfuse_validate_mmap_request+0x80>
    18c3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    18ca:	00 00 00 00 
    18ce:	66 90                	xchg   %ax,%ax

00000000000018d0 <__pfx_rfuse_get_iqueue_for_async>:
    18d0:	90                   	nop
    18d1:	90                   	nop
    18d2:	90                   	nop
    18d3:	90                   	nop
    18d4:	90                   	nop
    18d5:	90                   	nop
    18d6:	90                   	nop
    18d7:	90                   	nop
    18d8:	90                   	nop
    18d9:	90                   	nop
    18da:	90                   	nop
    18db:	90                   	nop
    18dc:	90                   	nop
    18dd:	90                   	nop
    18de:	90                   	nop
    18df:	90                   	nop

00000000000018e0 <rfuse_get_iqueue_for_async>:
struct rfuse_iqueue *rfuse_get_iqueue_for_async(struct fuse_conn *fc){
    18e0:	e8 00 00 00 00       	call   18e5 <rfuse_get_iqueue_for_async+0x5>
    18e5:	55                   	push   %rbp
    18e6:	48 89 e5             	mov    %rsp,%rbp
    18e9:	41 54                	push   %r12
    18eb:	53                   	push   %rbx
    18ec:	48 89 fb             	mov    %rdi,%rbx
	raw_spin_lock(&lock->rlock);
    18ef:	e8 00 00 00 00       	call   18f4 <rfuse_get_iqueue_for_async+0x14>
    18f4:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 18fa <rfuse_get_iqueue_for_async+0x1a>
	if(atomic_read(&rr_id) == RFUSE_NUM_IQUEUE) 
    18fa:	83 f8 02             	cmp    $0x2,%eax
    18fd:	75 0a                	jne    1909 <rfuse_get_iqueue_for_async+0x29>
	__WRITE_ONCE(v->counter, i);
    18ff:	c7 05 00 00 00 00 00 	movl   $0x0,0x0(%rip)        # 1909 <rfuse_get_iqueue_for_async+0x29>
    1906:	00 00 00 
	return __READ_ONCE((v)->counter);
    1909:	4c 63 25 00 00 00 00 	movslq 0x0(%rip),%r12        # 1910 <rfuse_get_iqueue_for_async+0x30>
	asm volatile(LOCK_PREFIX "addl %1,%0"
    1910:	f0 83 05 00 00 00 00 	lock addl $0x1,0x0(%rip)        # 1918 <rfuse_get_iqueue_for_async+0x38>
    1917:	01 
	raw_spin_unlock(&lock->rlock);
    1918:	48 89 df             	mov    %rbx,%rdi
    191b:	e8 00 00 00 00       	call   1920 <rfuse_get_iqueue_for_async+0x40>
	return fc->riq[id];
    1920:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
}
    1927:	5b                   	pop    %rbx
	return fc->riq[id];
    1928:	4a 8b 04 e0          	mov    (%rax,%r12,8),%rax
}
    192c:	41 5c                	pop    %r12
    192e:	5d                   	pop    %rbp
    192f:	31 ff                	xor    %edi,%edi
    1931:	e9 00 00 00 00       	jmp    1936 <rfuse_get_iqueue_for_async+0x56>
    1936:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    193d:	00 00 00 

0000000000001940 <__pfx_try_rfuse_request_alloc>:
    1940:	90                   	nop
    1941:	90                   	nop
    1942:	90                   	nop
    1943:	90                   	nop
    1944:	90                   	nop
    1945:	90                   	nop
    1946:	90                   	nop
    1947:	90                   	nop
    1948:	90                   	nop
    1949:	90                   	nop
    194a:	90                   	nop
    194b:	90                   	nop
    194c:	90                   	nop
    194d:	90                   	nop
    194e:	90                   	nop
    194f:	90                   	nop

0000000000001950 <try_rfuse_request_alloc>:
static struct rfuse_req *try_rfuse_request_alloc(struct fuse_mount *fm, spinlock_t *file_lock){
    1950:	e8 00 00 00 00       	call   1955 <try_rfuse_request_alloc+0x5>
    1955:	55                   	push   %rbp
    1956:	48 89 e5             	mov    %rsp,%rbp
    1959:	41 57                	push   %r15
    195b:	41 56                	push   %r14
    195d:	41 55                	push   %r13
    195f:	41 54                	push   %r12
    1961:	49 89 fc             	mov    %rdi,%r12
    1964:	53                   	push   %rbx
    1965:	48 83 ec 50          	sub    $0x50,%rsp
    1969:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
	struct rfuse_iqueue *riq = rfuse_get_iqueue_for_async(fc);
    196d:	48 8b 3f             	mov    (%rdi),%rdi
static struct rfuse_req *try_rfuse_request_alloc(struct fuse_mount *fm, spinlock_t *file_lock){
    1970:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    1977:	00 00 
    1979:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    197d:	31 c0                	xor    %eax,%eax
	struct rfuse_iqueue *riq = rfuse_get_iqueue_for_async(fc);
    197f:	e8 00 00 00 00       	call   1984 <try_rfuse_request_alloc+0x34>
	int riq_id = riq->riq_id;
    1984:	4c 63 28             	movslq (%rax),%r13
	struct rfuse_iqueue *riq = rfuse_get_iqueue_for_async(fc);
    1987:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
	return fc->riq[id];
    198b:	4a 8d 04 ed 00 00 00 	lea    0x0(,%r13,8),%rax
    1992:	00 
	int riq_id = riq->riq_id;
    1993:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
	return fc->riq[id];
    1997:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    199b:	49 8b 04 24          	mov    (%r12),%rax
    199f:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
    19a3:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    19aa:	4c 8b 3c 08          	mov    (%rax,%rcx,1),%r15
	raw_spin_lock(&lock->rlock);
    19ae:	49 8d 9f c8 00 00 00 	lea    0xc8(%r15),%rbx
    19b5:	48 89 df             	mov    %rbx,%rdi
    19b8:	e8 00 00 00 00       	call   19bd <try_rfuse_request_alloc+0x6d>

		val = *addr | ~GENMASK(size - 1, offset);
		return val == ~0UL ? size : ffz(val);
	}

	return _find_next_zero_bit(addr, size, offset);
    19bd:	49 8b b7 f8 00 00 00 	mov    0xf8(%r15),%rsi
    19c4:	49 8b bf 08 01 00 00 	mov    0x108(%r15),%rdi
    19cb:	31 d2                	xor    %edx,%edx
    19cd:	e8 00 00 00 00       	call   19d2 <try_rfuse_request_alloc+0x82>
    19d2:	49 89 c6             	mov    %rax,%r14
		if(request_index == riq->reqbm.bitmap_size){
    19d5:	41 89 c5             	mov    %eax,%r13d
    19d8:	4d 3b af f8 00 00 00 	cmp    0xf8(%r15),%r13
    19df:	0f 84 c5 00 00 00    	je     1aaa <try_rfuse_request_alloc+0x15a>
			__set_bit(request_index,riq->reqbm.bitmap);
    19e5:	49 8b 97 08 01 00 00 	mov    0x108(%r15),%rdx
	asm volatile(__ASM_SIZE(bts) " %1,%0" : : ADDR, "Ir" (nr) : "memory");
    19ec:	4c 0f ab 2a          	bts    %r13,(%rdx)
	raw_spin_unlock(&lock->rlock);
    19f0:	48 89 df             	mov    %rbx,%rdi
    19f3:	e8 00 00 00 00       	call   19f8 <try_rfuse_request_alloc+0xa8>
		if(req_index == -1) {
    19f8:	41 83 fe ff          	cmp    $0xffffffff,%r14d
    19fc:	0f 84 bb 00 00 00    	je     1abd <try_rfuse_request_alloc+0x16d>
	if(r_req) {
    1a02:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
	r_req = (struct rfuse_req*)&riq->kreq[req_index]; // Get a new entry
    1a06:	4c 89 e8             	mov    %r13,%rax
    1a09:	48 c1 e0 08          	shl    $0x8,%rax
	if(r_req) {
    1a0d:	48 03 81 a0 00 00 00 	add    0xa0(%rcx),%rax
    1a14:	48 89 c3             	mov    %rax,%rbx
    1a17:	74 60                	je     1a79 <try_rfuse_request_alloc+0x129>
		memset(r_req, 0, sizeof(struct rfuse_req));
    1a19:	48 8d 78 08          	lea    0x8(%rax),%rdi
    1a1d:	48 89 c1             	mov    %rax,%rcx
    1a20:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
		init_waitqueue_head(&r_req->waitq);
    1a27:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
		memset(r_req, 0, sizeof(struct rfuse_req));
    1a2e:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
		init_waitqueue_head(&r_req->waitq);
    1a32:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
		memset(r_req, 0, sizeof(struct rfuse_req));
    1a39:	48 c7 80 f8 00 00 00 	movq   $0x0,0xf8(%rax)
    1a40:	00 00 00 00 
    1a44:	31 c0                	xor    %eax,%eax
    1a46:	48 29 f9             	sub    %rdi,%rcx
    1a49:	81 c1 00 01 00 00    	add    $0x100,%ecx
    1a4f:	c1 e9 03             	shr    $0x3,%ecx
    1a52:	f3 48 ab             	rep stos %rax,%es:(%rdi)
		init_waitqueue_head(&r_req->waitq);
    1a55:	48 8d 7b 60          	lea    0x60(%rbx),%rdi
    1a59:	e8 00 00 00 00       	call   1a5e <try_rfuse_request_alloc+0x10e>
	__WRITE_ONCE(v->counter, i);
    1a5e:	c7 43 58 01 00 00 00 	movl   $0x1,0x58(%rbx)
    1a65:	48 0f ba 6b 48 07    	btsq   $0x7,0x48(%rbx)
		r_req->riq_id = riq_id;
    1a6b:	8b 45 8c             	mov    -0x74(%rbp),%eax
		r_req->fm = fm;
    1a6e:	4c 89 63 50          	mov    %r12,0x50(%rbx)
		r_req->index = req_index;
    1a72:	44 89 73 40          	mov    %r14d,0x40(%rbx)
		r_req->riq_id = riq_id;
    1a76:	89 43 44             	mov    %eax,0x44(%rbx)
}
    1a79:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1a7d:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    1a84:	00 00 
    1a86:	0f 85 ff 00 00 00    	jne    1b8b <try_rfuse_request_alloc+0x23b>
    1a8c:	48 83 c4 50          	add    $0x50,%rsp
    1a90:	48 89 d8             	mov    %rbx,%rax
    1a93:	5b                   	pop    %rbx
    1a94:	41 5c                	pop    %r12
    1a96:	41 5d                	pop    %r13
    1a98:	41 5e                	pop    %r14
    1a9a:	41 5f                	pop    %r15
    1a9c:	5d                   	pop    %rbp
    1a9d:	31 d2                	xor    %edx,%edx
    1a9f:	31 c9                	xor    %ecx,%ecx
    1aa1:	31 f6                	xor    %esi,%esi
    1aa3:	31 ff                	xor    %edi,%edi
    1aa5:	e9 00 00 00 00       	jmp    1aaa <try_rfuse_request_alloc+0x15a>
			riq->reqbm.full = 1; // set to full
    1aaa:	41 c7 87 00 01 00 00 	movl   $0x1,0x100(%r15)
    1ab1:	01 00 00 00 
    1ab5:	48 89 df             	mov    %rbx,%rdi
    1ab8:	e8 00 00 00 00       	call   1abd <try_rfuse_request_alloc+0x16d>
			if(file_lock)
    1abd:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1ac1:	48 85 c0             	test   %rax,%rax
    1ac4:	74 29                	je     1aef <try_rfuse_request_alloc+0x19f>
    1ac6:	48 89 c7             	mov    %rax,%rdi
    1ac9:	e8 00 00 00 00       	call   1ace <try_rfuse_request_alloc+0x17e>

DECLARE_STATIC_CALL(might_resched, __cond_resched);

static __always_inline void might_resched(void)
{
	static_call_mod(might_resched)();
    1ace:	e8 00 00 00 00       	call   1ad3 <try_rfuse_request_alloc+0x183>
			wait_event_interruptible(riq->waitq, !READ_ONCE(riq->reqbm.full));
    1ad3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1ad7:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
    1add:	85 c0                	test   %eax,%eax
    1adf:	75 25                	jne    1b06 <try_rfuse_request_alloc+0x1b6>
	raw_spin_lock(&lock->rlock);
    1ae1:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
    1ae5:	e8 00 00 00 00       	call   1aea <try_rfuse_request_alloc+0x19a>
}
    1aea:	e9 ac fe ff ff       	jmp    199b <try_rfuse_request_alloc+0x4b>
    1aef:	e8 00 00 00 00       	call   1af4 <try_rfuse_request_alloc+0x1a4>
    1af4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1af8:	8b 80 00 01 00 00    	mov    0x100(%rax),%eax
    1afe:	85 c0                	test   %eax,%eax
    1b00:	0f 84 95 fe ff ff    	je     199b <try_rfuse_request_alloc+0x4b>
    1b06:	31 f6                	xor    %esi,%esi
    1b08:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
    1b0c:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    1b13:	00 
    1b14:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    1b1b:	00 
    1b1c:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    1b23:	00 
    1b24:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    1b2b:	00 
    1b2c:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    1b33:	00 
    1b34:	e8 00 00 00 00       	call   1b39 <try_rfuse_request_alloc+0x1e9>
    1b39:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1b3d:	4c 8d b8 b0 00 00 00 	lea    0xb0(%rax),%r15
    1b44:	eb 0a                	jmp    1b50 <try_rfuse_request_alloc+0x200>
    1b46:	48 85 c0             	test   %rax,%rax
    1b49:	75 30                	jne    1b7b <try_rfuse_request_alloc+0x22b>
    1b4b:	e8 00 00 00 00       	call   1b50 <try_rfuse_request_alloc+0x200>
    1b50:	ba 01 00 00 00       	mov    $0x1,%edx
    1b55:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
    1b59:	4c 89 ff             	mov    %r15,%rdi
    1b5c:	e8 00 00 00 00       	call   1b61 <try_rfuse_request_alloc+0x211>
    1b61:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
    1b65:	8b 91 00 01 00 00    	mov    0x100(%rcx),%edx
    1b6b:	85 d2                	test   %edx,%edx
    1b6d:	75 d7                	jne    1b46 <try_rfuse_request_alloc+0x1f6>
    1b6f:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
    1b73:	4c 89 ff             	mov    %r15,%rdi
    1b76:	e8 00 00 00 00       	call   1b7b <try_rfuse_request_alloc+0x22b>
			if(file_lock)
    1b7b:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
    1b80:	0f 85 5b ff ff ff    	jne    1ae1 <try_rfuse_request_alloc+0x191>
    1b86:	e9 10 fe ff ff       	jmp    199b <try_rfuse_request_alloc+0x4b>
}
    1b8b:	e8 00 00 00 00       	call   1b90 <__pfx_rfuse_get_iqueue>

0000000000001b90 <__pfx_rfuse_get_iqueue>:
    1b90:	90                   	nop
    1b91:	90                   	nop
    1b92:	90                   	nop
    1b93:	90                   	nop
    1b94:	90                   	nop
    1b95:	90                   	nop
    1b96:	90                   	nop
    1b97:	90                   	nop
    1b98:	90                   	nop
    1b99:	90                   	nop
    1b9a:	90                   	nop
    1b9b:	90                   	nop
    1b9c:	90                   	nop
    1b9d:	90                   	nop
    1b9e:	90                   	nop
    1b9f:	90                   	nop

0000000000001ba0 <rfuse_get_iqueue>:
struct rfuse_iqueue *rfuse_get_iqueue(struct fuse_conn *fc){
    1ba0:	e8 00 00 00 00       	call   1ba5 <rfuse_get_iqueue+0x5>
    1ba5:	55                   	push   %rbp
    1ba6:	48 89 e5             	mov    %rsp,%rbp
    1ba9:	41 54                	push   %r12
    1bab:	53                   	push   %rbx
    1bac:	48 83 ec 10          	sub    $0x10,%rsp
    1bb0:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    1bb7:	00 00 
    1bb9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1bbd:	31 c0                	xor    %eax,%eax
	int i = 0, tmp = 0;
    1bbf:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    1bc6:	65 48 8b 04 25 00 00 	mov    %gs:0x0,%rax
    1bcd:	00 00 
 */
#ifdef CONFIG_SMP

static inline unsigned int task_cpu(const struct task_struct *p)
{
	return READ_ONCE(task_thread_info(p)->cpu);
    1bcf:	8b 40 14             	mov    0x14(%rax),%eax
	return (ret % RFUSE_NUM_IQUEUE);
    1bd2:	89 c2                	mov    %eax,%edx
    1bd4:	c1 ea 1f             	shr    $0x1f,%edx
    1bd7:	01 d0                	add    %edx,%eax
    1bd9:	83 e0 01             	and    $0x1,%eax
    1bdc:	29 d0                	sub    %edx,%eax
	if(fc->riq[id]->num_sync_sleeping) {
    1bde:	48 8b 97 d0 00 00 00 	mov    0xd0(%rdi),%rdx
    1be5:	48 98                	cltq   
    1be7:	48 8b 04 c2          	mov    (%rdx,%rax,8),%rax
    1beb:	8b 88 28 01 00 00    	mov    0x128(%rax),%ecx
    1bf1:	85 c9                	test   %ecx,%ecx
    1bf3:	74 42                	je     1c37 <rfuse_get_iqueue+0x97>
    1bf5:	49 89 fc             	mov    %rdi,%r12
    1bf8:	bb 0a 00 00 00       	mov    $0xa,%ebx
			get_random_bytes(&tmp, sizeof(tmp) - 1);
    1bfd:	be 03 00 00 00       	mov    $0x3,%esi
    1c02:	48 8d 7d e4          	lea    -0x1c(%rbp),%rdi
    1c06:	e8 00 00 00 00       	call   1c0b <rfuse_get_iqueue+0x6b>
			id = tmp % RFUSE_NUM_IQUEUE;
    1c0b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1c0e:	89 c2                	mov    %eax,%edx
    1c10:	c1 ea 1f             	shr    $0x1f,%edx
    1c13:	01 d0                	add    %edx,%eax
    1c15:	83 e0 01             	and    $0x1,%eax
    1c18:	29 d0                	sub    %edx,%eax
			if(!fc->riq[id]->num_sync_sleeping)
    1c1a:	49 8b 94 24 d0 00 00 	mov    0xd0(%r12),%rdx
    1c21:	00 
    1c22:	48 98                	cltq   
    1c24:	48 8b 04 c2          	mov    (%rdx,%rax,8),%rax
    1c28:	8b 90 28 01 00 00    	mov    0x128(%rax),%edx
    1c2e:	85 d2                	test   %edx,%edx
    1c30:	74 05                	je     1c37 <rfuse_get_iqueue+0x97>
		for(i = 0; i < 10; i++) {
    1c32:	83 eb 01             	sub    $0x1,%ebx
    1c35:	75 c6                	jne    1bfd <rfuse_get_iqueue+0x5d>
}
    1c37:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1c3b:	65 48 2b 14 25 28 00 	sub    %gs:0x28,%rdx
    1c42:	00 00 
    1c44:	75 15                	jne    1c5b <rfuse_get_iqueue+0xbb>
    1c46:	48 83 c4 10          	add    $0x10,%rsp
    1c4a:	5b                   	pop    %rbx
    1c4b:	41 5c                	pop    %r12
    1c4d:	5d                   	pop    %rbp
    1c4e:	31 d2                	xor    %edx,%edx
    1c50:	31 c9                	xor    %ecx,%ecx
    1c52:	31 f6                	xor    %esi,%esi
    1c54:	31 ff                	xor    %edi,%edi
    1c56:	e9 00 00 00 00       	jmp    1c5b <rfuse_get_iqueue+0xbb>
    1c5b:	e8 00 00 00 00       	call   1c60 <__pfx_rfuse_get_specific_iqueue>

0000000000001c60 <__pfx_rfuse_get_specific_iqueue>:
    1c60:	90                   	nop
    1c61:	90                   	nop
    1c62:	90                   	nop
    1c63:	90                   	nop
    1c64:	90                   	nop
    1c65:	90                   	nop
    1c66:	90                   	nop
    1c67:	90                   	nop
    1c68:	90                   	nop
    1c69:	90                   	nop
    1c6a:	90                   	nop
    1c6b:	90                   	nop
    1c6c:	90                   	nop
    1c6d:	90                   	nop
    1c6e:	90                   	nop
    1c6f:	90                   	nop

0000000000001c70 <rfuse_get_specific_iqueue>:
struct rfuse_iqueue *rfuse_get_specific_iqueue(struct fuse_conn *fc, int id){
    1c70:	e8 00 00 00 00       	call   1c75 <rfuse_get_specific_iqueue+0x5>
    1c75:	55                   	push   %rbp
	return fc->riq[id];
    1c76:	48 8b 87 d0 00 00 00 	mov    0xd0(%rdi),%rax
    1c7d:	48 63 f6             	movslq %esi,%rsi
    1c80:	48 8b 04 f0          	mov    (%rax,%rsi,8),%rax
struct rfuse_iqueue *rfuse_get_specific_iqueue(struct fuse_conn *fc, int id){
    1c84:	48 89 e5             	mov    %rsp,%rbp
}
    1c87:	5d                   	pop    %rbp
    1c88:	31 f6                	xor    %esi,%esi
    1c8a:	31 ff                	xor    %edi,%edi
    1c8c:	e9 00 00 00 00       	jmp    1c91 <rfuse_get_specific_iqueue+0x21>
    1c91:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1c98:	00 00 00 00 
    1c9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001ca0 <__pfx_rfuse_read_pending_tail>:
    1ca0:	90                   	nop
    1ca1:	90                   	nop
    1ca2:	90                   	nop
    1ca3:	90                   	nop
    1ca4:	90                   	nop
    1ca5:	90                   	nop
    1ca6:	90                   	nop
    1ca7:	90                   	nop
    1ca8:	90                   	nop
    1ca9:	90                   	nop
    1caa:	90                   	nop
    1cab:	90                   	nop
    1cac:	90                   	nop
    1cad:	90                   	nop
    1cae:	90                   	nop
    1caf:	90                   	nop

0000000000001cb0 <rfuse_read_pending_tail>:
struct rfuse_address_entry *rfuse_read_pending_tail(struct rfuse_iqueue *riq){
    1cb0:	e8 00 00 00 00       	call   1cb5 <rfuse_read_pending_tail+0x5>
    1cb5:	55                   	push   %rbp
	head = smp_load_acquire(&pending->head); // Cannot touch in kernel
    1cb6:	8b 4f 0c             	mov    0xc(%rdi),%ecx
struct rfuse_address_entry *rfuse_read_pending_tail(struct rfuse_iqueue *riq){
    1cb9:	48 89 e5             	mov    %rsp,%rbp
	next = pending->tail + 1;
    1cbc:	8b 47 08             	mov    0x8(%rdi),%eax
    1cbf:	8d 50 01             	lea    0x1(%rax),%edx
	if (next - head <= pending->entries) {
    1cc2:	29 ca                	sub    %ecx,%edx
    1cc4:	31 c9                	xor    %ecx,%ecx
    1cc6:	39 57 14             	cmp    %edx,0x14(%rdi)
    1cc9:	72 0b                	jb     1cd6 <rfuse_read_pending_tail+0x26>
		ret = &pending->kaddr[pending->tail & pending->mask];
    1ccb:	48 8b 57 18          	mov    0x18(%rdi),%rdx
    1ccf:	23 47 10             	and    0x10(%rdi),%eax
    1cd2:	48 8d 0c 82          	lea    (%rdx,%rax,4),%rcx
}
    1cd6:	48 89 c8             	mov    %rcx,%rax
    1cd9:	5d                   	pop    %rbp
    1cda:	31 d2                	xor    %edx,%edx
    1cdc:	31 c9                	xor    %ecx,%ecx
    1cde:	31 ff                	xor    %edi,%edi
    1ce0:	e9 00 00 00 00       	jmp    1ce5 <rfuse_read_pending_tail+0x35>
    1ce5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1cec:	00 00 00 00 

0000000000001cf0 <__pfx_rfuse_submit_pending_tail>:
    1cf0:	90                   	nop
    1cf1:	90                   	nop
    1cf2:	90                   	nop
    1cf3:	90                   	nop
    1cf4:	90                   	nop
    1cf5:	90                   	nop
    1cf6:	90                   	nop
    1cf7:	90                   	nop
    1cf8:	90                   	nop
    1cf9:	90                   	nop
    1cfa:	90                   	nop
    1cfb:	90                   	nop
    1cfc:	90                   	nop
    1cfd:	90                   	nop
    1cfe:	90                   	nop
    1cff:	90                   	nop

0000000000001d00 <rfuse_submit_pending_tail>:
void rfuse_submit_pending_tail(struct rfuse_iqueue *riq){
    1d00:	e8 00 00 00 00       	call   1d05 <rfuse_submit_pending_tail+0x5>
    1d05:	55                   	push   %rbp
	unsigned int next =  pending->tail + 1;
    1d06:	8b 47 08             	mov    0x8(%rdi),%eax
    1d09:	83 c0 01             	add    $0x1,%eax
void rfuse_submit_pending_tail(struct rfuse_iqueue *riq){
    1d0c:	48 89 e5             	mov    %rsp,%rbp
	smp_store_release(&pending->tail,next);
    1d0f:	89 47 08             	mov    %eax,0x8(%rdi)
}
    1d12:	5d                   	pop    %rbp
    1d13:	31 c0                	xor    %eax,%eax
    1d15:	31 ff                	xor    %edi,%edi
    1d17:	e9 00 00 00 00       	jmp    1d1c <rfuse_submit_pending_tail+0x1c>
    1d1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001d20 <__pfx_rfuse_read_forgets_tail>:
    1d20:	90                   	nop
    1d21:	90                   	nop
    1d22:	90                   	nop
    1d23:	90                   	nop
    1d24:	90                   	nop
    1d25:	90                   	nop
    1d26:	90                   	nop
    1d27:	90                   	nop
    1d28:	90                   	nop
    1d29:	90                   	nop
    1d2a:	90                   	nop
    1d2b:	90                   	nop
    1d2c:	90                   	nop
    1d2d:	90                   	nop
    1d2e:	90                   	nop
    1d2f:	90                   	nop

0000000000001d30 <rfuse_read_forgets_tail>:
struct rfuse_forget_entry *rfuse_read_forgets_tail(struct rfuse_iqueue *riq){
    1d30:	e8 00 00 00 00       	call   1d35 <rfuse_read_forgets_tail+0x5>
    1d35:	55                   	push   %rbp
	head = smp_load_acquire(&forgets->head); // Cannot touch in kernel
    1d36:	8b 4f 48             	mov    0x48(%rdi),%ecx
struct rfuse_forget_entry *rfuse_read_forgets_tail(struct rfuse_iqueue *riq){
    1d39:	48 89 e5             	mov    %rsp,%rbp
	next = forgets->tail + 1;
    1d3c:	8b 47 4c             	mov    0x4c(%rdi),%eax
    1d3f:	8d 50 01             	lea    0x1(%rax),%edx
	if (next - head <= forgets->entries) {
    1d42:	29 ca                	sub    %ecx,%edx
    1d44:	31 c9                	xor    %ecx,%ecx
    1d46:	39 57 54             	cmp    %edx,0x54(%rdi)
    1d49:	72 0e                	jb     1d59 <rfuse_read_forgets_tail+0x29>
		ret = &forgets->kaddr[forgets->tail & forgets->mask];
    1d4b:	23 47 50             	and    0x50(%rdi),%eax
    1d4e:	48 c1 e0 05          	shl    $0x5,%rax
    1d52:	48 03 47 58          	add    0x58(%rdi),%rax
    1d56:	48 89 c1             	mov    %rax,%rcx
}
    1d59:	48 89 c8             	mov    %rcx,%rax
    1d5c:	5d                   	pop    %rbp
    1d5d:	31 d2                	xor    %edx,%edx
    1d5f:	31 c9                	xor    %ecx,%ecx
    1d61:	31 ff                	xor    %edi,%edi
    1d63:	e9 00 00 00 00       	jmp    1d68 <rfuse_read_forgets_tail+0x38>
    1d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1d6f:	00 

0000000000001d70 <__pfx_rfuse_submit_forgets_tail>:
    1d70:	90                   	nop
    1d71:	90                   	nop
    1d72:	90                   	nop
    1d73:	90                   	nop
    1d74:	90                   	nop
    1d75:	90                   	nop
    1d76:	90                   	nop
    1d77:	90                   	nop
    1d78:	90                   	nop
    1d79:	90                   	nop
    1d7a:	90                   	nop
    1d7b:	90                   	nop
    1d7c:	90                   	nop
    1d7d:	90                   	nop
    1d7e:	90                   	nop
    1d7f:	90                   	nop

0000000000001d80 <rfuse_submit_forgets_tail>:
void rfuse_submit_forgets_tail(struct rfuse_iqueue *riq){
    1d80:	e8 00 00 00 00       	call   1d85 <rfuse_submit_forgets_tail+0x5>
    1d85:	55                   	push   %rbp
	unsigned int next =  forgets->tail + 1;
    1d86:	8b 47 4c             	mov    0x4c(%rdi),%eax
    1d89:	83 c0 01             	add    $0x1,%eax
void rfuse_submit_forgets_tail(struct rfuse_iqueue *riq){
    1d8c:	48 89 e5             	mov    %rsp,%rbp
	smp_store_release(&forgets->tail,next);
    1d8f:	89 47 4c             	mov    %eax,0x4c(%rdi)
}
    1d92:	5d                   	pop    %rbp
    1d93:	31 c0                	xor    %eax,%eax
    1d95:	31 ff                	xor    %edi,%edi
    1d97:	e9 00 00 00 00       	jmp    1d9c <rfuse_submit_forgets_tail+0x1c>
    1d9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001da0 <__pfx_rfuse_read_interrupts_tail>:
    1da0:	90                   	nop
    1da1:	90                   	nop
    1da2:	90                   	nop
    1da3:	90                   	nop
    1da4:	90                   	nop
    1da5:	90                   	nop
    1da6:	90                   	nop
    1da7:	90                   	nop
    1da8:	90                   	nop
    1da9:	90                   	nop
    1daa:	90                   	nop
    1dab:	90                   	nop
    1dac:	90                   	nop
    1dad:	90                   	nop
    1dae:	90                   	nop
    1daf:	90                   	nop

0000000000001db0 <rfuse_read_interrupts_tail>:
struct rfuse_interrupt_entry *rfuse_read_interrupts_tail(struct rfuse_iqueue *riq){
    1db0:	e8 00 00 00 00       	call   1db5 <rfuse_read_interrupts_tail+0x5>
    1db5:	55                   	push   %rbp
	head = smp_load_acquire(&interrupts->head); // Cannot touch in kernel
    1db6:	8b 4f 28             	mov    0x28(%rdi),%ecx
struct rfuse_interrupt_entry *rfuse_read_interrupts_tail(struct rfuse_iqueue *riq){
    1db9:	48 89 e5             	mov    %rsp,%rbp
	next = interrupts->tail + 1;
    1dbc:	8b 47 2c             	mov    0x2c(%rdi),%eax
    1dbf:	8d 50 01             	lea    0x1(%rax),%edx
	if (next - head <= interrupts->entries) {
    1dc2:	29 ca                	sub    %ecx,%edx
    1dc4:	31 c9                	xor    %ecx,%ecx
    1dc6:	39 57 34             	cmp    %edx,0x34(%rdi)
    1dc9:	72 0b                	jb     1dd6 <rfuse_read_interrupts_tail+0x26>
		ret = &interrupts->kaddr[interrupts->tail & interrupts->mask];
    1dcb:	48 8b 57 38          	mov    0x38(%rdi),%rdx
    1dcf:	23 47 30             	and    0x30(%rdi),%eax
    1dd2:	48 8d 0c c2          	lea    (%rdx,%rax,8),%rcx
}
    1dd6:	48 89 c8             	mov    %rcx,%rax
    1dd9:	5d                   	pop    %rbp
    1dda:	31 d2                	xor    %edx,%edx
    1ddc:	31 c9                	xor    %ecx,%ecx
    1dde:	31 ff                	xor    %edi,%edi
    1de0:	e9 00 00 00 00       	jmp    1de5 <rfuse_read_interrupts_tail+0x35>
    1de5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1dec:	00 00 00 00 

0000000000001df0 <__pfx_rfuse_submit_interrupt_tail>:
    1df0:	90                   	nop
    1df1:	90                   	nop
    1df2:	90                   	nop
    1df3:	90                   	nop
    1df4:	90                   	nop
    1df5:	90                   	nop
    1df6:	90                   	nop
    1df7:	90                   	nop
    1df8:	90                   	nop
    1df9:	90                   	nop
    1dfa:	90                   	nop
    1dfb:	90                   	nop
    1dfc:	90                   	nop
    1dfd:	90                   	nop
    1dfe:	90                   	nop
    1dff:	90                   	nop

0000000000001e00 <rfuse_submit_interrupt_tail>:
void rfuse_submit_interrupt_tail(struct rfuse_iqueue *riq){
    1e00:	e8 00 00 00 00       	call   1e05 <rfuse_submit_interrupt_tail+0x5>
    1e05:	55                   	push   %rbp
	unsigned int next =  interrupts->tail + 1;
    1e06:	8b 47 2c             	mov    0x2c(%rdi),%eax
    1e09:	83 c0 01             	add    $0x1,%eax
void rfuse_submit_interrupt_tail(struct rfuse_iqueue *riq){
    1e0c:	48 89 e5             	mov    %rsp,%rbp
	smp_store_release(&interrupts->tail,next);
    1e0f:	89 47 2c             	mov    %eax,0x2c(%rdi)
}
    1e12:	5d                   	pop    %rbp
    1e13:	31 c0                	xor    %eax,%eax
    1e15:	31 ff                	xor    %edi,%edi
    1e17:	e9 00 00 00 00       	jmp    1e1c <rfuse_submit_interrupt_tail+0x1c>
    1e1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001e20 <__pfx_rfuse_read_complete_head>:
    1e20:	90                   	nop
    1e21:	90                   	nop
    1e22:	90                   	nop
    1e23:	90                   	nop
    1e24:	90                   	nop
    1e25:	90                   	nop
    1e26:	90                   	nop
    1e27:	90                   	nop
    1e28:	90                   	nop
    1e29:	90                   	nop
    1e2a:	90                   	nop
    1e2b:	90                   	nop
    1e2c:	90                   	nop
    1e2d:	90                   	nop
    1e2e:	90                   	nop
    1e2f:	90                   	nop

0000000000001e30 <rfuse_read_complete_head>:
struct rfuse_address_entry *rfuse_read_complete_head(struct rfuse_iqueue *riq){
    1e30:	e8 00 00 00 00       	call   1e35 <rfuse_read_complete_head+0x5>
	unsigned int head = completes->head;
    1e35:	8b 47 6c             	mov    0x6c(%rdi),%eax
	unsigned int tail = smp_load_acquire(&completes->tail);
    1e38:	8b 4f 68             	mov    0x68(%rdi),%ecx
struct rfuse_address_entry *rfuse_read_complete_head(struct rfuse_iqueue *riq){
    1e3b:	55                   	push   %rbp
    1e3c:	48 89 e5             	mov    %rsp,%rbp
	if(head < tail){
    1e3f:	31 d2                	xor    %edx,%edx
    1e41:	39 c8                	cmp    %ecx,%eax
    1e43:	73 0b                	jae    1e50 <rfuse_read_complete_head+0x20>
		ret = &completes->kaddr[head & completes->mask];
    1e45:	48 8b 57 78          	mov    0x78(%rdi),%rdx
    1e49:	23 47 70             	and    0x70(%rdi),%eax
    1e4c:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
}
    1e50:	48 89 d0             	mov    %rdx,%rax
    1e53:	5d                   	pop    %rbp
    1e54:	31 d2                	xor    %edx,%edx
    1e56:	31 c9                	xor    %ecx,%ecx
    1e58:	31 ff                	xor    %edi,%edi
    1e5a:	e9 00 00 00 00       	jmp    1e5f <rfuse_read_complete_head+0x2f>
    1e5f:	90                   	nop

0000000000001e60 <__pfx_rfuse_extract_complete_head>:
    1e60:	90                   	nop
    1e61:	90                   	nop
    1e62:	90                   	nop
    1e63:	90                   	nop
    1e64:	90                   	nop
    1e65:	90                   	nop
    1e66:	90                   	nop
    1e67:	90                   	nop
    1e68:	90                   	nop
    1e69:	90                   	nop
    1e6a:	90                   	nop
    1e6b:	90                   	nop
    1e6c:	90                   	nop
    1e6d:	90                   	nop
    1e6e:	90                   	nop
    1e6f:	90                   	nop

0000000000001e70 <rfuse_extract_complete_head>:
void rfuse_extract_complete_head(struct rfuse_iqueue *riq){
    1e70:	e8 00 00 00 00       	call   1e75 <rfuse_extract_complete_head+0x5>
    1e75:	55                   	push   %rbp
	unsigned int next = completes->head + 1;
    1e76:	8b 47 6c             	mov    0x6c(%rdi),%eax
    1e79:	83 c0 01             	add    $0x1,%eax
void rfuse_extract_complete_head(struct rfuse_iqueue *riq){
    1e7c:	48 89 e5             	mov    %rsp,%rbp
	smp_store_release(&completes->head,next);
    1e7f:	89 47 6c             	mov    %eax,0x6c(%rdi)
}
    1e82:	5d                   	pop    %rbp
    1e83:	31 c0                	xor    %eax,%eax
    1e85:	31 ff                	xor    %edi,%edi
    1e87:	e9 00 00 00 00       	jmp    1e8c <rfuse_extract_complete_head+0x1c>
    1e8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001e90 <__pfx_rfuse_get_request_buffer>:
    1e90:	90                   	nop
    1e91:	90                   	nop
    1e92:	90                   	nop
    1e93:	90                   	nop
    1e94:	90                   	nop
    1e95:	90                   	nop
    1e96:	90                   	nop
    1e97:	90                   	nop
    1e98:	90                   	nop
    1e99:	90                   	nop
    1e9a:	90                   	nop
    1e9b:	90                   	nop
    1e9c:	90                   	nop
    1e9d:	90                   	nop
    1e9e:	90                   	nop
    1e9f:	90                   	nop

0000000000001ea0 <rfuse_get_request_buffer>:
uint32_t rfuse_get_request_buffer(struct fuse_mount *fm, int riq_id){
    1ea0:	e8 00 00 00 00       	call   1ea5 <rfuse_get_request_buffer+0x5>
    1ea5:	55                   	push   %rbp
	return fc->riq[id];
    1ea6:	48 63 f6             	movslq %esi,%rsi
uint32_t rfuse_get_request_buffer(struct fuse_mount *fm, int riq_id){
    1ea9:	48 89 e5             	mov    %rsp,%rbp
    1eac:	41 55                	push   %r13
    1eae:	41 54                	push   %r12
    1eb0:	53                   	push   %rbx
    1eb1:	48 83 ec 30          	sub    $0x30,%rsp
	return fc->riq[id];
    1eb5:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    1ebc:	00 00 
    1ebe:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1ec2:	48 8b 07             	mov    (%rdi),%rax
    1ec5:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1ecc:	48 8b 1c f0          	mov    (%rax,%rsi,8),%rbx
	raw_spin_lock(&lock->rlock);
    1ed0:	4c 8d ab c8 00 00 00 	lea    0xc8(%rbx),%r13
    1ed7:	eb 21                	jmp    1efa <rfuse_get_request_buffer+0x5a>
			riq->reqbm.full = 1; // set to full
    1ed9:	c7 83 00 01 00 00 01 	movl   $0x1,0x100(%rbx)
    1ee0:	00 00 00 
	raw_spin_unlock(&lock->rlock);
    1ee3:	4c 89 ef             	mov    %r13,%rdi
    1ee6:	e8 00 00 00 00       	call   1eeb <rfuse_get_request_buffer+0x4b>
    1eeb:	e8 00 00 00 00       	call   1ef0 <rfuse_get_request_buffer+0x50>
			wait_event_interruptible(riq->waitq, !READ_ONCE(riq->reqbm.full));
    1ef0:	8b 83 00 01 00 00    	mov    0x100(%rbx),%eax
    1ef6:	85 c0                	test   %eax,%eax
    1ef8:	75 69                	jne    1f63 <rfuse_get_request_buffer+0xc3>
	raw_spin_lock(&lock->rlock);
    1efa:	4c 89 ef             	mov    %r13,%rdi
    1efd:	e8 00 00 00 00       	call   1f02 <rfuse_get_request_buffer+0x62>
    1f02:	48 8b b3 f8 00 00 00 	mov    0xf8(%rbx),%rsi
    1f09:	48 8b bb 08 01 00 00 	mov    0x108(%rbx),%rdi
    1f10:	31 d2                	xor    %edx,%edx
    1f12:	e8 00 00 00 00       	call   1f17 <rfuse_get_request_buffer+0x77>
    1f17:	49 89 c4             	mov    %rax,%r12
		if(request_index == riq->reqbm.bitmap_size){
    1f1a:	89 c0                	mov    %eax,%eax
    1f1c:	48 39 83 f8 00 00 00 	cmp    %rax,0xf8(%rbx)
    1f23:	74 b4                	je     1ed9 <rfuse_get_request_buffer+0x39>
			__set_bit(request_index,riq->reqbm.bitmap);
    1f25:	48 8b 93 08 01 00 00 	mov    0x108(%rbx),%rdx
    1f2c:	48 0f ab 02          	bts    %rax,(%rdx)
	raw_spin_unlock(&lock->rlock);
    1f30:	4c 89 ef             	mov    %r13,%rdi
    1f33:	e8 00 00 00 00       	call   1f38 <rfuse_get_request_buffer+0x98>
		request_index = find_next_zero_bit(riq->reqbm.bitmap,riq->reqbm.bitmap_size,0);
    1f38:	44 89 e0             	mov    %r12d,%eax
}
    1f3b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1f3f:	65 48 2b 14 25 28 00 	sub    %gs:0x28,%rdx
    1f46:	00 00 
    1f48:	0f 85 8b 00 00 00    	jne    1fd9 <rfuse_get_request_buffer+0x139>
    1f4e:	48 83 c4 30          	add    $0x30,%rsp
    1f52:	5b                   	pop    %rbx
    1f53:	41 5c                	pop    %r12
    1f55:	41 5d                	pop    %r13
    1f57:	5d                   	pop    %rbp
    1f58:	31 d2                	xor    %edx,%edx
    1f5a:	31 f6                	xor    %esi,%esi
    1f5c:	31 ff                	xor    %edi,%edi
    1f5e:	e9 00 00 00 00       	jmp    1f63 <rfuse_get_request_buffer+0xc3>
			wait_event_interruptible(riq->waitq, !READ_ONCE(riq->reqbm.full));
    1f63:	31 f6                	xor    %esi,%esi
    1f65:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
    1f69:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    1f70:	00 
    1f71:	4c 8d a3 b0 00 00 00 	lea    0xb0(%rbx),%r12
    1f78:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    1f7f:	00 
    1f80:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    1f87:	00 
    1f88:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    1f8f:	00 
    1f90:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    1f97:	00 
    1f98:	e8 00 00 00 00       	call   1f9d <rfuse_get_request_buffer+0xfd>
    1f9d:	eb 0e                	jmp    1fad <rfuse_get_request_buffer+0x10d>
    1f9f:	48 85 c0             	test   %rax,%rax
    1fa2:	0f 85 52 ff ff ff    	jne    1efa <rfuse_get_request_buffer+0x5a>
    1fa8:	e8 00 00 00 00       	call   1fad <rfuse_get_request_buffer+0x10d>
    1fad:	ba 01 00 00 00       	mov    $0x1,%edx
    1fb2:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    1fb6:	4c 89 e7             	mov    %r12,%rdi
    1fb9:	e8 00 00 00 00       	call   1fbe <rfuse_get_request_buffer+0x11e>
    1fbe:	8b 93 00 01 00 00    	mov    0x100(%rbx),%edx
    1fc4:	85 d2                	test   %edx,%edx
    1fc6:	75 d7                	jne    1f9f <rfuse_get_request_buffer+0xff>
    1fc8:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    1fcc:	4c 89 e7             	mov    %r12,%rdi
    1fcf:	e8 00 00 00 00       	call   1fd4 <rfuse_get_request_buffer+0x134>
    1fd4:	e9 21 ff ff ff       	jmp    1efa <rfuse_get_request_buffer+0x5a>
}
    1fd9:	e8 00 00 00 00       	call   1fde <rfuse_get_request_buffer+0x13e>
    1fde:	66 90                	xchg   %ax,%ax

0000000000001fe0 <__pfx_rfuse_put_request_buffer>:
    1fe0:	90                   	nop
    1fe1:	90                   	nop
    1fe2:	90                   	nop
    1fe3:	90                   	nop
    1fe4:	90                   	nop
    1fe5:	90                   	nop
    1fe6:	90                   	nop
    1fe7:	90                   	nop
    1fe8:	90                   	nop
    1fe9:	90                   	nop
    1fea:	90                   	nop
    1feb:	90                   	nop
    1fec:	90                   	nop
    1fed:	90                   	nop
    1fee:	90                   	nop
    1fef:	90                   	nop

0000000000001ff0 <rfuse_put_request_buffer>:
void rfuse_put_request_buffer(struct fuse_mount *fm, uint32_t request_index, int riq_id){
    1ff0:	e8 00 00 00 00       	call   1ff5 <rfuse_put_request_buffer+0x5>
    1ff5:	55                   	push   %rbp
	return fc->riq[id];
    1ff6:	48 63 d2             	movslq %edx,%rdx
void rfuse_put_request_buffer(struct fuse_mount *fm, uint32_t request_index, int riq_id){
    1ff9:	48 89 e5             	mov    %rsp,%rbp
    1ffc:	41 55                	push   %r13
    1ffe:	41 54                	push   %r12
    2000:	53                   	push   %rbx
	return fc->riq[id];
    2001:	48 8b 07             	mov    (%rdi),%rax
void rfuse_put_request_buffer(struct fuse_mount *fm, uint32_t request_index, int riq_id){
    2004:	89 f3                	mov    %esi,%ebx
	return fc->riq[id];
    2006:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    200d:	4c 8b 24 d0          	mov    (%rax,%rdx,8),%r12
	raw_spin_lock(&lock->rlock);
    2011:	4d 8d ac 24 c8 00 00 	lea    0xc8(%r12),%r13
    2018:	00 
    2019:	4c 89 ef             	mov    %r13,%rdi
    201c:	e8 00 00 00 00       	call   2021 <rfuse_put_request_buffer+0x31>
	__clear_bit(request_index,riq->reqbm.bitmap);
    2021:	49 8b 84 24 08 01 00 	mov    0x108(%r12),%rax
    2028:	00 
	asm volatile(__ASM_SIZE(btr) " %1,%0" : : ADDR, "Ir" (nr) : "memory");
    2029:	48 0f b3 18          	btr    %rbx,(%rax)
	if(riq->reqbm.full == 1){
    202d:	41 83 bc 24 00 01 00 	cmpl   $0x1,0x100(%r12)
    2034:	00 01 
    2036:	74 1d                	je     2055 <rfuse_put_request_buffer+0x65>
	raw_spin_unlock(&lock->rlock);
    2038:	4c 89 ef             	mov    %r13,%rdi
    203b:	e8 00 00 00 00       	call   2040 <rfuse_put_request_buffer+0x50>
}
    2040:	5b                   	pop    %rbx
    2041:	41 5c                	pop    %r12
    2043:	41 5d                	pop    %r13
    2045:	5d                   	pop    %rbp
    2046:	31 c0                	xor    %eax,%eax
    2048:	31 d2                	xor    %edx,%edx
    204a:	31 c9                	xor    %ecx,%ecx
    204c:	31 f6                	xor    %esi,%esi
    204e:	31 ff                	xor    %edi,%edi
    2050:	e9 00 00 00 00       	jmp    2055 <rfuse_put_request_buffer+0x65>
		wake_up(&riq->waitq);
    2055:	49 8d bc 24 b0 00 00 	lea    0xb0(%r12),%rdi
    205c:	00 
    205d:	31 c9                	xor    %ecx,%ecx
    205f:	ba 01 00 00 00       	mov    $0x1,%edx
		riq->reqbm.full = 0;
    2064:	41 c7 84 24 00 01 00 	movl   $0x0,0x100(%r12)
    206b:	00 00 00 00 00 
		wake_up(&riq->waitq);
    2070:	be 03 00 00 00       	mov    $0x3,%esi
    2075:	e8 00 00 00 00       	call   207a <rfuse_put_request_buffer+0x8a>
    207a:	4c 89 ef             	mov    %r13,%rdi
    207d:	e8 00 00 00 00       	call   2082 <rfuse_put_request_buffer+0x92>
}
    2082:	5b                   	pop    %rbx
    2083:	41 5c                	pop    %r12
    2085:	41 5d                	pop    %r13
    2087:	5d                   	pop    %rbp
    2088:	31 c0                	xor    %eax,%eax
    208a:	31 d2                	xor    %edx,%edx
    208c:	31 c9                	xor    %ecx,%ecx
    208e:	31 f6                	xor    %esi,%esi
    2090:	31 ff                	xor    %edi,%edi
    2092:	e9 00 00 00 00       	jmp    2097 <rfuse_put_request_buffer+0xa7>
    2097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    209e:	00 00 

00000000000020a0 <__pfx_rfuse_get_argument_buffer>:
    20a0:	90                   	nop
    20a1:	90                   	nop
    20a2:	90                   	nop
    20a3:	90                   	nop
    20a4:	90                   	nop
    20a5:	90                   	nop
    20a6:	90                   	nop
    20a7:	90                   	nop
    20a8:	90                   	nop
    20a9:	90                   	nop
    20aa:	90                   	nop
    20ab:	90                   	nop
    20ac:	90                   	nop
    20ad:	90                   	nop
    20ae:	90                   	nop
    20af:	90                   	nop

00000000000020b0 <rfuse_get_argument_buffer>:
uint32_t rfuse_get_argument_buffer(struct fuse_mount *fm, int riq_id){
    20b0:	e8 00 00 00 00       	call   20b5 <rfuse_get_argument_buffer+0x5>
    20b5:	55                   	push   %rbp
	return fc->riq[id];
    20b6:	48 63 f6             	movslq %esi,%rsi
uint32_t rfuse_get_argument_buffer(struct fuse_mount *fm, int riq_id){
    20b9:	48 89 e5             	mov    %rsp,%rbp
    20bc:	41 55                	push   %r13
    20be:	41 54                	push   %r12
    20c0:	53                   	push   %rbx
    20c1:	48 83 ec 30          	sub    $0x30,%rsp
	return fc->riq[id];
    20c5:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    20cc:	00 00 
    20ce:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    20d2:	48 8b 07             	mov    (%rdi),%rax
    20d5:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    20dc:	48 8b 1c f0          	mov    (%rax,%rsi,8),%rbx
	raw_spin_lock(&lock->rlock);
    20e0:	4c 8d ab c8 00 00 00 	lea    0xc8(%rbx),%r13
    20e7:	eb 21                	jmp    210a <rfuse_get_argument_buffer+0x5a>
			riq->argbm.full = 1; // set to full
    20e9:	c7 83 e8 00 00 00 01 	movl   $0x1,0xe8(%rbx)
    20f0:	00 00 00 
	raw_spin_unlock(&lock->rlock);
    20f3:	4c 89 ef             	mov    %r13,%rdi
    20f6:	e8 00 00 00 00       	call   20fb <rfuse_get_argument_buffer+0x4b>
    20fb:	e8 00 00 00 00       	call   2100 <rfuse_get_argument_buffer+0x50>
			wait_event_interruptible(riq->waitq,!READ_ONCE(riq->argbm.full));
    2100:	8b 83 e8 00 00 00    	mov    0xe8(%rbx),%eax
    2106:	85 c0                	test   %eax,%eax
    2108:	75 69                	jne    2173 <rfuse_get_argument_buffer+0xc3>
	raw_spin_lock(&lock->rlock);
    210a:	4c 89 ef             	mov    %r13,%rdi
    210d:	e8 00 00 00 00       	call   2112 <rfuse_get_argument_buffer+0x62>
    2112:	48 8b b3 e0 00 00 00 	mov    0xe0(%rbx),%rsi
    2119:	48 8b bb f0 00 00 00 	mov    0xf0(%rbx),%rdi
    2120:	31 d2                	xor    %edx,%edx
    2122:	e8 00 00 00 00       	call   2127 <rfuse_get_argument_buffer+0x77>
    2127:	49 89 c4             	mov    %rax,%r12
		if(arg_index == riq->argbm.bitmap_size){
    212a:	89 c0                	mov    %eax,%eax
    212c:	48 39 83 e0 00 00 00 	cmp    %rax,0xe0(%rbx)
    2133:	74 b4                	je     20e9 <rfuse_get_argument_buffer+0x39>
			__set_bit(arg_index,riq->argbm.bitmap);
    2135:	48 8b 93 f0 00 00 00 	mov    0xf0(%rbx),%rdx
	asm volatile(__ASM_SIZE(bts) " %1,%0" : : ADDR, "Ir" (nr) : "memory");
    213c:	48 0f ab 02          	bts    %rax,(%rdx)
	raw_spin_unlock(&lock->rlock);
    2140:	4c 89 ef             	mov    %r13,%rdi
    2143:	e8 00 00 00 00       	call   2148 <rfuse_get_argument_buffer+0x98>
		arg_index = find_next_zero_bit(riq->argbm.bitmap,riq->argbm.bitmap_size,0);
    2148:	44 89 e0             	mov    %r12d,%eax
}
    214b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    214f:	65 48 2b 14 25 28 00 	sub    %gs:0x28,%rdx
    2156:	00 00 
    2158:	0f 85 8b 00 00 00    	jne    21e9 <rfuse_get_argument_buffer+0x139>
    215e:	48 83 c4 30          	add    $0x30,%rsp
    2162:	5b                   	pop    %rbx
    2163:	41 5c                	pop    %r12
    2165:	41 5d                	pop    %r13
    2167:	5d                   	pop    %rbp
    2168:	31 d2                	xor    %edx,%edx
    216a:	31 f6                	xor    %esi,%esi
    216c:	31 ff                	xor    %edi,%edi
    216e:	e9 00 00 00 00       	jmp    2173 <rfuse_get_argument_buffer+0xc3>
			wait_event_interruptible(riq->waitq,!READ_ONCE(riq->argbm.full));
    2173:	31 f6                	xor    %esi,%esi
    2175:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
    2179:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    2180:	00 
    2181:	4c 8d a3 b0 00 00 00 	lea    0xb0(%rbx),%r12
    2188:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    218f:	00 
    2190:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2197:	00 
    2198:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    219f:	00 
    21a0:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    21a7:	00 
    21a8:	e8 00 00 00 00       	call   21ad <rfuse_get_argument_buffer+0xfd>
    21ad:	eb 0e                	jmp    21bd <rfuse_get_argument_buffer+0x10d>
    21af:	48 85 c0             	test   %rax,%rax
    21b2:	0f 85 52 ff ff ff    	jne    210a <rfuse_get_argument_buffer+0x5a>
    21b8:	e8 00 00 00 00       	call   21bd <rfuse_get_argument_buffer+0x10d>
    21bd:	ba 01 00 00 00       	mov    $0x1,%edx
    21c2:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    21c6:	4c 89 e7             	mov    %r12,%rdi
    21c9:	e8 00 00 00 00       	call   21ce <rfuse_get_argument_buffer+0x11e>
    21ce:	8b 93 e8 00 00 00    	mov    0xe8(%rbx),%edx
    21d4:	85 d2                	test   %edx,%edx
    21d6:	75 d7                	jne    21af <rfuse_get_argument_buffer+0xff>
    21d8:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    21dc:	4c 89 e7             	mov    %r12,%rdi
    21df:	e8 00 00 00 00       	call   21e4 <rfuse_get_argument_buffer+0x134>
    21e4:	e9 21 ff ff ff       	jmp    210a <rfuse_get_argument_buffer+0x5a>
}
    21e9:	e8 00 00 00 00       	call   21ee <rfuse_get_argument_buffer+0x13e>
    21ee:	66 90                	xchg   %ax,%ax

00000000000021f0 <__pfx_rfuse_put_argument_buffer>:
    21f0:	90                   	nop
    21f1:	90                   	nop
    21f2:	90                   	nop
    21f3:	90                   	nop
    21f4:	90                   	nop
    21f5:	90                   	nop
    21f6:	90                   	nop
    21f7:	90                   	nop
    21f8:	90                   	nop
    21f9:	90                   	nop
    21fa:	90                   	nop
    21fb:	90                   	nop
    21fc:	90                   	nop
    21fd:	90                   	nop
    21fe:	90                   	nop
    21ff:	90                   	nop

0000000000002200 <rfuse_put_argument_buffer>:
void rfuse_put_argument_buffer(struct fuse_mount *fm, uint32_t arg_index, int riq_id){
    2200:	e8 00 00 00 00       	call   2205 <rfuse_put_argument_buffer+0x5>
    2205:	55                   	push   %rbp
	return fc->riq[id];
    2206:	48 63 d2             	movslq %edx,%rdx
void rfuse_put_argument_buffer(struct fuse_mount *fm, uint32_t arg_index, int riq_id){
    2209:	48 89 e5             	mov    %rsp,%rbp
    220c:	41 55                	push   %r13
    220e:	41 54                	push   %r12
    2210:	53                   	push   %rbx
	return fc->riq[id];
    2211:	48 8b 07             	mov    (%rdi),%rax
void rfuse_put_argument_buffer(struct fuse_mount *fm, uint32_t arg_index, int riq_id){
    2214:	89 f3                	mov    %esi,%ebx
	return fc->riq[id];
    2216:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    221d:	4c 8b 24 d0          	mov    (%rax,%rdx,8),%r12
	raw_spin_lock(&lock->rlock);
    2221:	4d 8d ac 24 c8 00 00 	lea    0xc8(%r12),%r13
    2228:	00 
    2229:	4c 89 ef             	mov    %r13,%rdi
    222c:	e8 00 00 00 00       	call   2231 <rfuse_put_argument_buffer+0x31>
	__clear_bit(arg_index,riq->argbm.bitmap);
    2231:	49 8b 84 24 f0 00 00 	mov    0xf0(%r12),%rax
    2238:	00 
	asm volatile(__ASM_SIZE(btr) " %1,%0" : : ADDR, "Ir" (nr) : "memory");
    2239:	48 0f b3 18          	btr    %rbx,(%rax)
	if(riq->argbm.full == 1){
    223d:	41 83 bc 24 e8 00 00 	cmpl   $0x1,0xe8(%r12)
    2244:	00 01 
    2246:	74 1d                	je     2265 <rfuse_put_argument_buffer+0x65>
	raw_spin_unlock(&lock->rlock);
    2248:	4c 89 ef             	mov    %r13,%rdi
    224b:	e8 00 00 00 00       	call   2250 <rfuse_put_argument_buffer+0x50>
}
    2250:	5b                   	pop    %rbx
    2251:	41 5c                	pop    %r12
    2253:	41 5d                	pop    %r13
    2255:	5d                   	pop    %rbp
    2256:	31 c0                	xor    %eax,%eax
    2258:	31 d2                	xor    %edx,%edx
    225a:	31 c9                	xor    %ecx,%ecx
    225c:	31 f6                	xor    %esi,%esi
    225e:	31 ff                	xor    %edi,%edi
    2260:	e9 00 00 00 00       	jmp    2265 <rfuse_put_argument_buffer+0x65>
		wake_up(&riq->waitq);
    2265:	49 8d bc 24 b0 00 00 	lea    0xb0(%r12),%rdi
    226c:	00 
    226d:	31 c9                	xor    %ecx,%ecx
    226f:	ba 01 00 00 00       	mov    $0x1,%edx
		riq->reqbm.full = 0;
    2274:	41 c7 84 24 00 01 00 	movl   $0x0,0x100(%r12)
    227b:	00 00 00 00 00 
		wake_up(&riq->waitq);
    2280:	be 03 00 00 00       	mov    $0x3,%esi
    2285:	e8 00 00 00 00       	call   228a <rfuse_put_argument_buffer+0x8a>
    228a:	4c 89 ef             	mov    %r13,%rdi
    228d:	e8 00 00 00 00       	call   2292 <rfuse_put_argument_buffer+0x92>
}
    2292:	5b                   	pop    %rbx
    2293:	41 5c                	pop    %r12
    2295:	41 5d                	pop    %r13
    2297:	5d                   	pop    %rbp
    2298:	31 c0                	xor    %eax,%eax
    229a:	31 d2                	xor    %edx,%edx
    229c:	31 c9                	xor    %ecx,%ecx
    229e:	31 f6                	xor    %esi,%esi
    22a0:	31 ff                	xor    %edi,%edi
    22a2:	e9 00 00 00 00       	jmp    22a7 <rfuse_put_argument_buffer+0xa7>
    22a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    22ae:	00 00 

00000000000022b0 <__pfx_rfuse_put_request>:
    22b0:	90                   	nop
    22b1:	90                   	nop
    22b2:	90                   	nop
    22b3:	90                   	nop
    22b4:	90                   	nop
    22b5:	90                   	nop
    22b6:	90                   	nop
    22b7:	90                   	nop
    22b8:	90                   	nop
    22b9:	90                   	nop
    22ba:	90                   	nop
    22bb:	90                   	nop
    22bc:	90                   	nop
    22bd:	90                   	nop
    22be:	90                   	nop
    22bf:	90                   	nop

00000000000022c0 <rfuse_put_request>:
void rfuse_put_request(struct rfuse_req *r_req){
    22c0:	e8 00 00 00 00       	call   22c5 <rfuse_put_request+0x5>
    22c5:	55                   	push   %rbp
    22c6:	48 89 e5             	mov    %rsp,%rbp
    22c9:	41 56                	push   %r14
    22cb:	41 55                	push   %r13
    22cd:	41 54                	push   %r12
    22cf:	53                   	push   %rbx
	if(!r_req){
    22d0:	48 85 ff             	test   %rdi,%rdi
    22d3:	0f 84 f3 00 00 00    	je     23cc <rfuse_put_request+0x10c>
	fc = r_req->fm->fc;
    22d9:	48 8b 47 50          	mov    0x50(%rdi),%rax
	return fc->riq[id];
    22dd:	48 63 57 44          	movslq 0x44(%rdi),%rdx
    22e1:	48 89 fb             	mov    %rdi,%rbx
	if (refcount_dec_and_test(&r_req->count)) {
    22e4:	48 8d 7f 58          	lea    0x58(%rdi),%rdi
	fc = r_req->fm->fc;
    22e8:	4c 8b 20             	mov    (%rax),%r12
	return fc->riq[id];
    22eb:	49 8b 84 24 d0 00 00 	mov    0xd0(%r12),%rax
    22f2:	00 
    22f3:	4c 8b 2c d0          	mov    (%rax,%rdx,8),%r13
}
#define arch_atomic_fetch_add arch_atomic_fetch_add

static __always_inline int arch_atomic_fetch_sub(int i, atomic_t *v)
{
	return xadd(&v->counter, -i);
    22f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22fc:	f0 0f c1 43 58       	lock xadd %eax,0x58(%rbx)
	int old = atomic_fetch_sub_release(i, &r->refs);

	if (oldp)
		*oldp = old;

	if (old == i) {
    2301:	83 f8 01             	cmp    $0x1,%eax
    2304:	74 1f                	je     2325 <rfuse_put_request+0x65>
		smp_acquire__after_ctrl_dep();
		return true;
	}

	if (unlikely(old < 0 || old - i < 0))
    2306:	85 c0                	test   %eax,%eax
    2308:	0f 8e 08 01 00 00    	jle    2416 <rfuse_put_request+0x156>
}
    230e:	5b                   	pop    %rbx
    230f:	41 5c                	pop    %r12
    2311:	41 5d                	pop    %r13
    2313:	41 5e                	pop    %r14
    2315:	5d                   	pop    %rbp
    2316:	31 c0                	xor    %eax,%eax
    2318:	31 d2                	xor    %edx,%edx
    231a:	31 c9                	xor    %ecx,%ecx
    231c:	31 f6                	xor    %esi,%esi
    231e:	31 ff                	xor    %edi,%edi
    2320:	e9 00 00 00 00       	jmp    2325 <rfuse_put_request+0x65>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    2325:	48 8b 43 48          	mov    0x48(%rbx),%rax
        if (test_bit(FR_BACKGROUND, &r_req->flags)) {
    2329:	a8 04                	test   $0x4,%al
    232b:	0f 85 be 00 00 00    	jne    23ef <rfuse_put_request+0x12f>
    2331:	48 8b 43 48          	mov    0x48(%rbx),%rax
        if (test_bit(FR_WAITING, &r_req->flags)) {
    2335:	a8 08                	test   $0x8,%al
    2337:	75 41                	jne    237a <rfuse_put_request+0xba>
	if(req->in.arglen[0] != 0)
    2339:	8b 4b 28             	mov    0x28(%rbx),%ecx
    233c:	85 c9                	test   %ecx,%ecx
    233e:	75 4f                	jne    238f <rfuse_put_request+0xcf>
	if(req->in.arglen[1] != 0)
    2340:	8b 53 2c             	mov    0x2c(%rbx),%edx
    2343:	85 d2                	test   %edx,%edx
    2345:	75 5e                	jne    23a5 <rfuse_put_request+0xe5>
	if(req->out.arglen != 0)
    2347:	8b 43 38             	mov    0x38(%rbx),%eax
    234a:	85 c0                	test   %eax,%eax
    234c:	75 6d                	jne    23bb <rfuse_put_request+0xfb>
	rfuse_put_request_buffer(req->fm, req->index, req->riq_id);
    234e:	8b 53 44             	mov    0x44(%rbx),%edx
    2351:	8b 73 40             	mov    0x40(%rbx),%esi
    2354:	48 8b 7b 50          	mov    0x50(%rbx),%rdi
    2358:	e8 00 00 00 00       	call   235d <rfuse_put_request+0x9d>
	smp_mb();
    235d:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%rsp)
}
    2363:	5b                   	pop    %rbx
    2364:	41 5c                	pop    %r12
    2366:	41 5d                	pop    %r13
    2368:	41 5e                	pop    %r14
    236a:	5d                   	pop    %rbp
    236b:	31 c0                	xor    %eax,%eax
    236d:	31 d2                	xor    %edx,%edx
    236f:	31 c9                	xor    %ecx,%ecx
    2371:	31 f6                	xor    %esi,%esi
    2373:	31 ff                	xor    %edi,%edi
    2375:	e9 00 00 00 00       	jmp    237a <rfuse_put_request+0xba>
	asm volatile(__ASM_SIZE(btr) " %1,%0" : : ADDR, "Ir" (nr) : "memory");
    237a:	48 0f ba 73 48 03    	btrq   $0x3,0x48(%rbx)
            rfuse_drop_waiting(fc);
    2380:	4c 89 e7             	mov    %r12,%rdi
    2383:	e8 38 de ff ff       	call   1c0 <rfuse_drop_waiting>
	if(req->in.arglen[0] != 0)
    2388:	8b 4b 28             	mov    0x28(%rbx),%ecx
    238b:	85 c9                	test   %ecx,%ecx
    238d:	74 b1                	je     2340 <rfuse_put_request+0x80>
		rfuse_put_argument_buffer(req->fm, req->in.arg[0], req->riq_id);
    238f:	8b 53 44             	mov    0x44(%rbx),%edx
    2392:	8b 73 20             	mov    0x20(%rbx),%esi
    2395:	48 8b 7b 50          	mov    0x50(%rbx),%rdi
    2399:	e8 00 00 00 00       	call   239e <rfuse_put_request+0xde>
	if(req->in.arglen[1] != 0)
    239e:	8b 53 2c             	mov    0x2c(%rbx),%edx
    23a1:	85 d2                	test   %edx,%edx
    23a3:	74 a2                	je     2347 <rfuse_put_request+0x87>
		rfuse_put_argument_buffer(req->fm, req->in.arg[1], req->riq_id);
    23a5:	8b 53 44             	mov    0x44(%rbx),%edx
    23a8:	8b 73 24             	mov    0x24(%rbx),%esi
    23ab:	48 8b 7b 50          	mov    0x50(%rbx),%rdi
    23af:	e8 00 00 00 00       	call   23b4 <rfuse_put_request+0xf4>
	if(req->out.arglen != 0)
    23b4:	8b 43 38             	mov    0x38(%rbx),%eax
    23b7:	85 c0                	test   %eax,%eax
    23b9:	74 93                	je     234e <rfuse_put_request+0x8e>
		rfuse_put_argument_buffer(req->fm, req->out.arg, req->riq_id);
    23bb:	8b 53 44             	mov    0x44(%rbx),%edx
    23be:	8b 73 34             	mov    0x34(%rbx),%esi
    23c1:	48 8b 7b 50          	mov    0x50(%rbx),%rdi
    23c5:	e8 00 00 00 00       	call   23ca <rfuse_put_request+0x10a>
    23ca:	eb 82                	jmp    234e <rfuse_put_request+0x8e>
		printk("RFUSE ERROR: trying to free a RFUSE request in the wrong place\n");
    23cc:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    23d3:	e8 00 00 00 00       	call   23d8 <rfuse_put_request+0x118>
}
    23d8:	5b                   	pop    %rbx
    23d9:	41 5c                	pop    %r12
    23db:	41 5d                	pop    %r13
    23dd:	41 5e                	pop    %r14
    23df:	5d                   	pop    %rbp
    23e0:	31 c0                	xor    %eax,%eax
    23e2:	31 d2                	xor    %edx,%edx
    23e4:	31 c9                	xor    %ecx,%ecx
    23e6:	31 f6                	xor    %esi,%esi
    23e8:	31 ff                	xor    %edi,%edi
    23ea:	e9 00 00 00 00       	jmp    23ef <rfuse_put_request+0x12f>
	raw_spin_lock(&lock->rlock);
    23ef:	4d 8d b5 40 01 00 00 	lea    0x140(%r13),%r14
    23f6:	4c 89 f7             	mov    %r14,%rdi
    23f9:	e8 00 00 00 00       	call   23fe <rfuse_put_request+0x13e>
            if (!riq->blocked)
    23fe:	41 8b b5 54 01 00 00 	mov    0x154(%r13),%esi
    2405:	85 f6                	test   %esi,%esi
    2407:	74 2e                	je     2437 <rfuse_put_request+0x177>
	raw_spin_unlock(&lock->rlock);
    2409:	4c 89 f7             	mov    %r14,%rdi
    240c:	e8 00 00 00 00       	call   2411 <rfuse_put_request+0x151>
        if (test_bit(FR_WAITING, &r_req->flags)) {
    2411:	e9 1b ff ff ff       	jmp    2331 <rfuse_put_request+0x71>
		refcount_warn_saturate(r, REFCOUNT_SUB_UAF);
    2416:	be 03 00 00 00       	mov    $0x3,%esi
    241b:	e8 00 00 00 00       	call   2420 <rfuse_put_request+0x160>
}
    2420:	5b                   	pop    %rbx
    2421:	41 5c                	pop    %r12
    2423:	41 5d                	pop    %r13
    2425:	41 5e                	pop    %r14
    2427:	5d                   	pop    %rbp
    2428:	31 c0                	xor    %eax,%eax
    242a:	31 d2                	xor    %edx,%edx
    242c:	31 c9                	xor    %ecx,%ecx
    242e:	31 f6                	xor    %esi,%esi
    2430:	31 ff                	xor    %edi,%edi
    2432:	e9 00 00 00 00       	jmp    2437 <rfuse_put_request+0x177>
                wake_up(&riq->blocked_waitq);
    2437:	49 8d bd 58 01 00 00 	lea    0x158(%r13),%rdi
    243e:	31 c9                	xor    %ecx,%ecx
    2440:	ba 01 00 00 00       	mov    $0x1,%edx
    2445:	be 03 00 00 00       	mov    $0x3,%esi
    244a:	e8 00 00 00 00       	call   244f <rfuse_put_request+0x18f>
    244f:	eb b8                	jmp    2409 <rfuse_put_request+0x149>
    2451:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2458:	00 00 00 00 
    245c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002460 <__pfx_rfuse_request_alloc>:
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

0000000000002470 <rfuse_request_alloc>:
struct rfuse_req *rfuse_request_alloc(struct fuse_mount *fm){
    2470:	e8 00 00 00 00       	call   2475 <rfuse_request_alloc+0x5>
    2475:	55                   	push   %rbp
    2476:	48 89 e5             	mov    %rsp,%rbp
    2479:	41 57                	push   %r15
    247b:	41 56                	push   %r14
    247d:	41 55                	push   %r13
    247f:	41 54                	push   %r12
    2481:	49 89 fc             	mov    %rdi,%r12
    2484:	53                   	push   %rbx
	struct rfuse_iqueue *riq = rfuse_get_iqueue(fc);
    2485:	48 8b 3f             	mov    (%rdi),%rdi
    2488:	e8 00 00 00 00       	call   248d <rfuse_request_alloc+0x1d>
	req_index = rfuse_get_request_buffer(fm, riq_id); // Get a new index
    248d:	4c 89 e7             	mov    %r12,%rdi
	int riq_id = riq->riq_id;
    2490:	44 8b 28             	mov    (%rax),%r13d
	struct rfuse_iqueue *riq = rfuse_get_iqueue(fc);
    2493:	49 89 c6             	mov    %rax,%r14
	req_index = rfuse_get_request_buffer(fm, riq_id); // Get a new index
    2496:	44 89 ee             	mov    %r13d,%esi
    2499:	e8 00 00 00 00       	call   249e <rfuse_request_alloc+0x2e>
    249e:	89 c3                	mov    %eax,%ebx
    24a0:	49 89 df             	mov    %rbx,%r15
	r_req = (struct rfuse_req*)&riq->kreq[req_index]; // Get a new entry
    24a3:	48 c1 e3 08          	shl    $0x8,%rbx
	if(r_req) {
    24a7:	49 03 9e a0 00 00 00 	add    0xa0(%r14),%rbx
    24ae:	74 5e                	je     250e <rfuse_request_alloc+0x9e>
		memset(r_req, 0, sizeof(struct rfuse_req));
    24b0:	48 8d 7b 08          	lea    0x8(%rbx),%rdi
    24b4:	48 89 d9             	mov    %rbx,%rcx
    24b7:	31 c0                	xor    %eax,%eax
    24b9:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
    24c0:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
		init_waitqueue_head(&r_req->waitq);
    24c4:	48 c7 c2 00 00 00 00 	mov    $0x0,%rdx
		memset(r_req, 0, sizeof(struct rfuse_req));
    24cb:	48 c7 83 f8 00 00 00 	movq   $0x0,0xf8(%rbx)
    24d2:	00 00 00 00 
		init_waitqueue_head(&r_req->waitq);
    24d6:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
		memset(r_req, 0, sizeof(struct rfuse_req));
    24dd:	48 29 f9             	sub    %rdi,%rcx
    24e0:	81 c1 00 01 00 00    	add    $0x100,%ecx
    24e6:	c1 e9 03             	shr    $0x3,%ecx
    24e9:	f3 48 ab             	rep stos %rax,%es:(%rdi)
		init_waitqueue_head(&r_req->waitq);
    24ec:	48 8d 7b 60          	lea    0x60(%rbx),%rdi
    24f0:	e8 00 00 00 00       	call   24f5 <rfuse_request_alloc+0x85>
	__WRITE_ONCE(v->counter, i);
    24f5:	c7 43 58 01 00 00 00 	movl   $0x1,0x58(%rbx)
	asm volatile(__ASM_SIZE(bts) " %1,%0" : : ADDR, "Ir" (nr) : "memory");
    24fc:	48 0f ba 6b 48 07    	btsq   $0x7,0x48(%rbx)
		r_req->fm = fm;
    2502:	4c 89 63 50          	mov    %r12,0x50(%rbx)
		r_req->index = req_index;
    2506:	44 89 7b 40          	mov    %r15d,0x40(%rbx)
		r_req->riq_id = riq_id;
    250a:	44 89 6b 44          	mov    %r13d,0x44(%rbx)
}
    250e:	48 89 d8             	mov    %rbx,%rax
    2511:	5b                   	pop    %rbx
    2512:	41 5c                	pop    %r12
    2514:	41 5d                	pop    %r13
    2516:	41 5e                	pop    %r14
    2518:	41 5f                	pop    %r15
    251a:	5d                   	pop    %rbp
    251b:	31 d2                	xor    %edx,%edx
    251d:	31 c9                	xor    %ecx,%ecx
    251f:	31 f6                	xor    %esi,%esi
    2521:	31 ff                	xor    %edi,%edi
    2523:	e9 00 00 00 00       	jmp    2528 <rfuse_request_alloc+0xb8>
    2528:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    252f:	00 

0000000000002530 <__pfx_rfuse_get_req>:
    2530:	90                   	nop
    2531:	90                   	nop
    2532:	90                   	nop
    2533:	90                   	nop
    2534:	90                   	nop
    2535:	90                   	nop
    2536:	90                   	nop
    2537:	90                   	nop
    2538:	90                   	nop
    2539:	90                   	nop
    253a:	90                   	nop
    253b:	90                   	nop
    253c:	90                   	nop
    253d:	90                   	nop
    253e:	90                   	nop
    253f:	90                   	nop

0000000000002540 <rfuse_get_req>:
struct rfuse_req *rfuse_get_req(struct fuse_mount *fm, bool for_background, bool force){
    2540:	e8 00 00 00 00       	call   2545 <rfuse_get_req+0x5>
    2545:	55                   	push   %rbp
    2546:	48 89 e5             	mov    %rsp,%rbp
    2549:	41 57                	push   %r15
    254b:	41 56                	push   %r14
    254d:	41 55                	push   %r13
    254f:	41 89 f5             	mov    %esi,%r13d
    2552:	41 54                	push   %r12
    2554:	53                   	push   %rbx
    2555:	48 83 ec 30          	sub    $0x30,%rsp
	struct fuse_conn *fc = fm->fc;
    2559:	48 8b 1f             	mov    (%rdi),%rbx
struct rfuse_req *rfuse_get_req(struct fuse_mount *fm, bool for_background, bool force){
    255c:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    2563:	00 00 
    2565:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2569:	31 c0                	xor    %eax,%eax
	if(force) {
    256b:	84 d2                	test   %dl,%dl
    256d:	0f 85 46 01 00 00    	jne    26b9 <rfuse_get_req+0x179>
	asm volatile(LOCK_PREFIX "incl %0"
    2573:	f0 ff 83 3c 01 00 00 	lock incl 0x13c(%rbx)
		if(!fc->connected) {
    257a:	44 8b 9b 30 01 00 00 	mov    0x130(%rbx),%r11d
    2581:	45 85 db             	test   %r11d,%r11d
    2584:	0f 84 d7 00 00 00    	je     2661 <rfuse_get_req+0x121>
		if (fc->conn_error) {
    258a:	49 c7 c4 91 ff ff ff 	mov    $0xffffffffffffff91,%r12
    2591:	f6 83 35 01 00 00 01 	testb  $0x1,0x135(%rbx)
    2598:	0f 85 ca 00 00 00    	jne    2668 <rfuse_get_req+0x128>
    259e:	41 89 f6             	mov    %esi,%r14d
		r_req = rfuse_request_alloc(fm);
    25a1:	e8 00 00 00 00       	call   25a6 <rfuse_get_req+0x66>
    25a6:	49 89 c4             	mov    %rax,%r12
		if (!r_req) {
    25a9:	48 85 c0             	test   %rax,%rax
    25ac:	0f 84 4d 02 00 00    	je     27ff <rfuse_get_req+0x2bf>
	return fc->riq[id];
    25b2:	48 63 50 44          	movslq 0x44(%rax),%rdx
	return !fc->initialized || (for_background && riq->blocked);
    25b6:	44 8b 93 0c 01 00 00 	mov    0x10c(%rbx),%r10d
	return fc->riq[id];
    25bd:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
    25c4:	4c 8b 3c d0          	mov    (%rax,%rdx,8),%r15
	return !fc->initialized || (for_background && riq->blocked);
    25c8:	45 85 d2             	test   %r10d,%r10d
    25cb:	0f 84 2a 01 00 00    	je     26fb <rfuse_get_req+0x1bb>
    25d1:	45 84 ed             	test   %r13b,%r13b
    25d4:	0f 85 ed 01 00 00    	jne    27c7 <rfuse_get_req+0x287>
    25da:	65 4c 8b 34 25 00 00 	mov    %gs:0x0,%r14
    25e1:	00 00 
		r_req->in.uid = from_kuid(fc->user_ns, current_fsuid());
    25e3:	49 8b 86 b8 0b 00 00 	mov    0xbb8(%r14),%rax
    25ea:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
    25ee:	8b 70 1c             	mov    0x1c(%rax),%esi
    25f1:	e8 00 00 00 00       	call   25f6 <rfuse_get_req+0xb6>
    25f6:	41 89 44 24 14       	mov    %eax,0x14(%r12)
		r_req->in.gid = from_kgid(fc->user_ns, current_fsgid());
    25fb:	49 8b 86 b8 0b 00 00 	mov    0xbb8(%r14),%rax
    2602:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
    2606:	8b 70 20             	mov    0x20(%rax),%esi
    2609:	e8 00 00 00 00       	call   260e <rfuse_get_req+0xce>
    260e:	41 89 44 24 18       	mov    %eax,0x18(%r12)
		r_req->in.pid = pid_nr_ns(task_pid(current), fc->pid_ns);
    2613:	48 8b 73 28          	mov    0x28(%rbx),%rsi
    2617:	49 8b be 00 0a 00 00 	mov    0xa00(%r14),%rdi
    261e:	e8 00 00 00 00       	call   2623 <rfuse_get_req+0xe3>
    2623:	41 89 44 24 1c       	mov    %eax,0x1c(%r12)
		__set_bit(FR_WAITING, &r_req->flags);
    2628:	49 8d 44 24 48       	lea    0x48(%r12),%rax
    262d:	48 0f ba 28 03       	btsq   $0x3,(%rax)
		if (for_background) 
    2632:	45 84 ed             	test   %r13b,%r13b
    2635:	74 05                	je     263c <rfuse_get_req+0xfc>
    2637:	48 0f ba 28 02       	btsq   $0x2,(%rax)
		if (unlikely(r_req->in.uid == ((uid_t)-1) || r_req->in.gid == ((gid_t)-1))) {
    263c:	41 83 7c 24 14 ff    	cmpl   $0xffffffff,0x14(%r12)
    2642:	74 0c                	je     2650 <rfuse_get_req+0x110>
    2644:	41 83 7c 24 18 ff    	cmpl   $0xffffffff,0x18(%r12)
    264a:	0f 85 a3 00 00 00    	jne    26f3 <rfuse_get_req+0x1b3>
			rfuse_put_request(r_req);
    2650:	4c 89 e7             	mov    %r12,%rdi
			return ERR_PTR(-EOVERFLOW);
    2653:	49 c7 c4 b5 ff ff ff 	mov    $0xffffffffffffffb5,%r12
			rfuse_put_request(r_req);
    265a:	e8 00 00 00 00       	call   265f <rfuse_get_req+0x11f>
			return ERR_PTR(-EOVERFLOW);
    265f:	eb 1b                	jmp    267c <rfuse_get_req+0x13c>
    2661:	49 c7 c4 95 ff ff ff 	mov    $0xffffffffffffff95,%r12
	printk("r_req allocation failed\n");
    2668:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    266f:	e8 00 00 00 00       	call   2674 <rfuse_get_req+0x134>
	rfuse_drop_waiting(fc);
    2674:	48 89 df             	mov    %rbx,%rdi
    2677:	e8 44 db ff ff       	call   1c0 <rfuse_drop_waiting>
}
    267c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2680:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    2687:	00 00 
    2689:	0f 85 af 01 00 00    	jne    283e <rfuse_get_req+0x2fe>
    268f:	48 83 c4 30          	add    $0x30,%rsp
    2693:	4c 89 e0             	mov    %r12,%rax
    2696:	5b                   	pop    %rbx
    2697:	41 5c                	pop    %r12
    2699:	41 5d                	pop    %r13
    269b:	41 5e                	pop    %r14
    269d:	41 5f                	pop    %r15
    269f:	5d                   	pop    %rbp
    26a0:	31 d2                	xor    %edx,%edx
    26a2:	31 c9                	xor    %ecx,%ecx
    26a4:	31 f6                	xor    %esi,%esi
    26a6:	31 ff                	xor    %edi,%edi
    26a8:	45 31 c0             	xor    %r8d,%r8d
    26ab:	45 31 c9             	xor    %r9d,%r9d
    26ae:	45 31 d2             	xor    %r10d,%r10d
    26b1:	45 31 db             	xor    %r11d,%r11d
    26b4:	e9 00 00 00 00       	jmp    26b9 <rfuse_get_req+0x179>
    26b9:	f0 ff 83 3c 01 00 00 	lock incl 0x13c(%rbx)
		r_req = rfuse_request_alloc(fm);
    26c0:	e8 00 00 00 00       	call   26c5 <rfuse_get_req+0x185>
    26c5:	49 89 c4             	mov    %rax,%r12
		__set_bit(FR_WAITING, &r_req->flags);
    26c8:	48 8d 58 48          	lea    0x48(%rax),%rbx
    26cc:	48 0f ba 2b 03       	btsq   $0x3,(%rbx)
		if(for_background){
    26d1:	45 84 ed             	test   %r13b,%r13b
    26d4:	75 18                	jne    26ee <rfuse_get_req+0x1ae>
			if(!r_req->nocreds)
    26d6:	f6 80 e8 00 00 00 04 	testb  $0x4,0xe8(%rax)
    26dd:	75 08                	jne    26e7 <rfuse_get_req+0x1a7>
				rfuse_force_creds(r_req);
    26df:	48 89 c7             	mov    %rax,%rdi
    26e2:	e8 89 d9 ff ff       	call   70 <rfuse_force_creds>
    26e7:	48 0f ba 2b 01       	btsq   $0x1,(%rbx)
static __always_inline void
___set_bit(unsigned long nr, volatile unsigned long *addr)
{
	instrument_write(addr + BIT_WORD(nr), sizeof(long));
	arch___set_bit(nr, addr);
}
    26ec:	eb 05                	jmp    26f3 <rfuse_get_req+0x1b3>
    26ee:	48 0f ba 2b 02       	btsq   $0x2,(%rbx)
	smp_mb();
    26f3:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%rsp)
	return r_req;  
    26f9:	eb 81                	jmp    267c <rfuse_get_req+0x13c>
    26fb:	e8 00 00 00 00       	call   2700 <rfuse_get_req+0x1c0>
	return fc->riq[id];
    2700:	49 63 54 24 44       	movslq 0x44(%r12),%rdx
    2705:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
	return !fc->initialized || (for_background && riq->blocked);
    270c:	44 8b 83 0c 01 00 00 	mov    0x10c(%rbx),%r8d
	return fc->riq[id];
    2713:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
	return !fc->initialized || (for_background && riq->blocked);
    2717:	45 85 c0             	test   %r8d,%r8d
    271a:	74 17                	je     2733 <rfuse_get_req+0x1f3>
    271c:	45 84 ed             	test   %r13b,%r13b
    271f:	0f 84 b5 fe ff ff    	je     25da <rfuse_get_req+0x9a>
    2725:	8b b8 54 01 00 00    	mov    0x154(%rax),%edi
    272b:	85 ff                	test   %edi,%edi
    272d:	0f 84 a7 fe ff ff    	je     25da <rfuse_get_req+0x9a>
			if (wait_event_killable_exclusive(riq->blocked_waitq, !rfuse_block_alloc(fc, for_background, r_req->riq_id))) {
    2733:	be 01 00 00 00       	mov    $0x1,%esi
    2738:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
    273c:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    2743:	00 
    2744:	49 81 c7 58 01 00 00 	add    $0x158,%r15
    274b:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    2752:	00 
    2753:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    275a:	00 
    275b:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2762:	00 
    2763:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    276a:	00 
    276b:	e8 00 00 00 00       	call   2770 <rfuse_get_req+0x230>
    2770:	ba 02 01 00 00       	mov    $0x102,%edx
    2775:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
    2779:	4c 89 ff             	mov    %r15,%rdi
    277c:	e8 00 00 00 00       	call   2781 <rfuse_get_req+0x241>
	return fc->riq[id];
    2781:	49 63 4c 24 44       	movslq 0x44(%r12),%rcx
    2786:	48 8b 93 d0 00 00 00 	mov    0xd0(%rbx),%rdx
	return !fc->initialized || (for_background && riq->blocked);
    278d:	8b b3 0c 01 00 00    	mov    0x10c(%rbx),%esi
	return fc->riq[id];
    2793:	48 8b 14 ca          	mov    (%rdx,%rcx,8),%rdx
	return !fc->initialized || (for_background && riq->blocked);
    2797:	85 f6                	test   %esi,%esi
    2799:	74 20                	je     27bb <rfuse_get_req+0x27b>
    279b:	45 84 f6             	test   %r14b,%r14b
    279e:	74 0a                	je     27aa <rfuse_get_req+0x26a>
    27a0:	8b 8a 54 01 00 00    	mov    0x154(%rdx),%ecx
    27a6:	85 c9                	test   %ecx,%ecx
    27a8:	75 11                	jne    27bb <rfuse_get_req+0x27b>
			if (wait_event_killable_exclusive(riq->blocked_waitq, !rfuse_block_alloc(fc, for_background, r_req->riq_id))) {
    27aa:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
    27ae:	4c 89 ff             	mov    %r15,%rdi
    27b1:	e8 00 00 00 00       	call   27b6 <rfuse_get_req+0x276>
    27b6:	e9 1f fe ff ff       	jmp    25da <rfuse_get_req+0x9a>
    27bb:	48 85 c0             	test   %rax,%rax
    27be:	75 50                	jne    2810 <rfuse_get_req+0x2d0>
    27c0:	e8 00 00 00 00       	call   27c5 <rfuse_get_req+0x285>
    27c5:	eb a9                	jmp    2770 <rfuse_get_req+0x230>
	return !fc->initialized || (for_background && riq->blocked);
    27c7:	45 8b 8f 54 01 00 00 	mov    0x154(%r15),%r9d
    27ce:	45 85 c9             	test   %r9d,%r9d
    27d1:	0f 84 03 fe ff ff    	je     25da <rfuse_get_req+0x9a>
    27d7:	e8 00 00 00 00       	call   27dc <rfuse_get_req+0x29c>
	return fc->riq[id];
    27dc:	49 63 54 24 44       	movslq 0x44(%r12),%rdx
    27e1:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
    27e8:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
	return !fc->initialized || (for_background && riq->blocked);
    27ec:	8b 93 0c 01 00 00    	mov    0x10c(%rbx),%edx
    27f2:	85 d2                	test   %edx,%edx
    27f4:	0f 84 39 ff ff ff    	je     2733 <rfuse_get_req+0x1f3>
    27fa:	e9 26 ff ff ff       	jmp    2725 <rfuse_get_req+0x1e5>
			if (for_background)
    27ff:	45 84 ed             	test   %r13b,%r13b
    2802:	75 20                	jne    2824 <rfuse_get_req+0x2e4>
    2804:	49 c7 c4 f4 ff ff ff 	mov    $0xfffffffffffffff4,%r12
    280b:	e9 58 fe ff ff       	jmp    2668 <rfuse_get_req+0x128>
			if (wait_event_killable_exclusive(riq->blocked_waitq, !rfuse_block_alloc(fc, for_background, r_req->riq_id))) {
    2810:	85 c0                	test   %eax,%eax
    2812:	0f 84 c2 fd ff ff    	je     25da <rfuse_get_req+0x9a>
    2818:	49 c7 c4 fc ff ff ff 	mov    $0xfffffffffffffffc,%r12
    281f:	e9 44 fe ff ff       	jmp    2668 <rfuse_get_req+0x128>
				wake_up(&fc->blocked_waitq);
    2824:	48 8d bb 18 01 00 00 	lea    0x118(%rbx),%rdi
    282b:	31 c9                	xor    %ecx,%ecx
    282d:	ba 01 00 00 00       	mov    $0x1,%edx
    2832:	be 03 00 00 00       	mov    $0x3,%esi
    2837:	e8 00 00 00 00       	call   283c <rfuse_get_req+0x2fc>
    283c:	eb c6                	jmp    2804 <rfuse_get_req+0x2c4>
}
    283e:	e8 00 00 00 00       	call   2843 <rfuse_get_req+0x303>
    2843:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    284a:	00 00 00 00 
    284e:	66 90                	xchg   %ax,%ax

0000000000002850 <__pfx_try_rfuse_get_req>:
    2850:	90                   	nop
    2851:	90                   	nop
    2852:	90                   	nop
    2853:	90                   	nop
    2854:	90                   	nop
    2855:	90                   	nop
    2856:	90                   	nop
    2857:	90                   	nop
    2858:	90                   	nop
    2859:	90                   	nop
    285a:	90                   	nop
    285b:	90                   	nop
    285c:	90                   	nop
    285d:	90                   	nop
    285e:	90                   	nop
    285f:	90                   	nop

0000000000002860 <try_rfuse_get_req>:
struct rfuse_req *try_rfuse_get_req(struct fuse_mount *fm, bool for_background, bool force, spinlock_t *file_lock){
    2860:	e8 00 00 00 00       	call   2865 <try_rfuse_get_req+0x5>
    2865:	55                   	push   %rbp
    2866:	48 89 e5             	mov    %rsp,%rbp
    2869:	41 57                	push   %r15
    286b:	41 56                	push   %r14
    286d:	41 55                	push   %r13
    286f:	41 89 f5             	mov    %esi,%r13d
    2872:	41 54                	push   %r12
    2874:	53                   	push   %rbx
    2875:	48 83 ec 30          	sub    $0x30,%rsp
	struct fuse_conn *fc = fm->fc;
    2879:	48 8b 1f             	mov    (%rdi),%rbx
struct rfuse_req *try_rfuse_get_req(struct fuse_mount *fm, bool for_background, bool force, spinlock_t *file_lock){
    287c:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    2883:	00 00 
    2885:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2889:	31 c0                	xor    %eax,%eax
	if(force) {
    288b:	84 d2                	test   %dl,%dl
    288d:	0f 85 49 01 00 00    	jne    29dc <try_rfuse_get_req+0x17c>
    2893:	f0 ff 83 3c 01 00 00 	lock incl 0x13c(%rbx)
		if(!fc->connected) {
    289a:	44 8b 9b 30 01 00 00 	mov    0x130(%rbx),%r11d
    28a1:	45 85 db             	test   %r11d,%r11d
    28a4:	0f 84 da 00 00 00    	je     2984 <try_rfuse_get_req+0x124>
		if (fc->conn_error) {
    28aa:	49 c7 c4 91 ff ff ff 	mov    $0xffffffffffffff91,%r12
    28b1:	f6 83 35 01 00 00 01 	testb  $0x1,0x135(%rbx)
    28b8:	0f 85 cd 00 00 00    	jne    298b <try_rfuse_get_req+0x12b>
    28be:	41 89 f6             	mov    %esi,%r14d
		r_req = try_rfuse_request_alloc(fm, file_lock);
    28c1:	48 89 ce             	mov    %rcx,%rsi
    28c4:	e8 87 f0 ff ff       	call   1950 <try_rfuse_request_alloc>
    28c9:	49 89 c4             	mov    %rax,%r12
		if (!r_req) {
    28cc:	48 85 c0             	test   %rax,%rax
    28cf:	0f 84 54 01 00 00    	je     2a29 <try_rfuse_get_req+0x1c9>
	return fc->riq[id];
    28d5:	48 63 50 44          	movslq 0x44(%rax),%rdx
	return !fc->initialized || (for_background && riq->blocked);
    28d9:	44 8b 93 0c 01 00 00 	mov    0x10c(%rbx),%r10d
	return fc->riq[id];
    28e0:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
    28e7:	4c 8b 3c d0          	mov    (%rax,%rdx,8),%r15
	return !fc->initialized || (for_background && riq->blocked);
    28eb:	45 85 d2             	test   %r10d,%r10d
    28ee:	0f 84 4a 01 00 00    	je     2a3e <try_rfuse_get_req+0x1de>
    28f4:	45 84 ed             	test   %r13b,%r13b
    28f7:	0f 85 0d 02 00 00    	jne    2b0a <try_rfuse_get_req+0x2aa>
    28fd:	65 4c 8b 34 25 00 00 	mov    %gs:0x0,%r14
    2904:	00 00 
		r_req->in.uid = from_kuid(fc->user_ns, current_fsuid());
    2906:	49 8b 86 b8 0b 00 00 	mov    0xbb8(%r14),%rax
    290d:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
    2911:	8b 70 1c             	mov    0x1c(%rax),%esi
    2914:	e8 00 00 00 00       	call   2919 <try_rfuse_get_req+0xb9>
    2919:	41 89 44 24 14       	mov    %eax,0x14(%r12)
		r_req->in.gid = from_kgid(fc->user_ns, current_fsgid());
    291e:	49 8b 86 b8 0b 00 00 	mov    0xbb8(%r14),%rax
    2925:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
    2929:	8b 70 20             	mov    0x20(%rax),%esi
    292c:	e8 00 00 00 00       	call   2931 <try_rfuse_get_req+0xd1>
    2931:	41 89 44 24 18       	mov    %eax,0x18(%r12)
		r_req->in.pid = pid_nr_ns(task_pid(current), fc->pid_ns);
    2936:	48 8b 73 28          	mov    0x28(%rbx),%rsi
    293a:	49 8b be 00 0a 00 00 	mov    0xa00(%r14),%rdi
    2941:	e8 00 00 00 00       	call   2946 <try_rfuse_get_req+0xe6>
    2946:	41 89 44 24 1c       	mov    %eax,0x1c(%r12)
		__set_bit(FR_WAITING, &r_req->flags);
    294b:	49 8d 44 24 48       	lea    0x48(%r12),%rax
    2950:	48 0f ba 28 03       	btsq   $0x3,(%rax)
		if (for_background) 
    2955:	45 84 ed             	test   %r13b,%r13b
    2958:	74 05                	je     295f <try_rfuse_get_req+0xff>
    295a:	48 0f ba 28 02       	btsq   $0x2,(%rax)
		if (unlikely(r_req->in.uid == ((uid_t)-1) || r_req->in.gid == ((gid_t)-1))) {
    295f:	41 83 7c 24 14 ff    	cmpl   $0xffffffff,0x14(%r12)
    2965:	74 0c                	je     2973 <try_rfuse_get_req+0x113>
    2967:	41 83 7c 24 18 ff    	cmpl   $0xffffffff,0x18(%r12)
    296d:	0f 85 ab 00 00 00    	jne    2a1e <try_rfuse_get_req+0x1be>
			rfuse_put_request(r_req);
    2973:	4c 89 e7             	mov    %r12,%rdi
			return ERR_PTR(-EOVERFLOW);
    2976:	49 c7 c4 b5 ff ff ff 	mov    $0xffffffffffffffb5,%r12
			rfuse_put_request(r_req);
    297d:	e8 00 00 00 00       	call   2982 <try_rfuse_get_req+0x122>
			return ERR_PTR(-EOVERFLOW);
    2982:	eb 1b                	jmp    299f <try_rfuse_get_req+0x13f>
    2984:	49 c7 c4 95 ff ff ff 	mov    $0xffffffffffffff95,%r12
	printk("try r_req allocation failed\n");
    298b:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    2992:	e8 00 00 00 00       	call   2997 <try_rfuse_get_req+0x137>
	rfuse_drop_waiting(fc);
    2997:	48 89 df             	mov    %rbx,%rdi
    299a:	e8 21 d8 ff ff       	call   1c0 <rfuse_drop_waiting>
}
    299f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    29a3:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    29aa:	00 00 
    29ac:	0f 85 c1 01 00 00    	jne    2b73 <try_rfuse_get_req+0x313>
    29b2:	48 83 c4 30          	add    $0x30,%rsp
    29b6:	4c 89 e0             	mov    %r12,%rax
    29b9:	5b                   	pop    %rbx
    29ba:	41 5c                	pop    %r12
    29bc:	41 5d                	pop    %r13
    29be:	41 5e                	pop    %r14
    29c0:	41 5f                	pop    %r15
    29c2:	5d                   	pop    %rbp
    29c3:	31 d2                	xor    %edx,%edx
    29c5:	31 c9                	xor    %ecx,%ecx
    29c7:	31 f6                	xor    %esi,%esi
    29c9:	31 ff                	xor    %edi,%edi
    29cb:	45 31 c0             	xor    %r8d,%r8d
    29ce:	45 31 c9             	xor    %r9d,%r9d
    29d1:	45 31 d2             	xor    %r10d,%r10d
    29d4:	45 31 db             	xor    %r11d,%r11d
    29d7:	e9 00 00 00 00       	jmp    29dc <try_rfuse_get_req+0x17c>
    29dc:	f0 ff 83 3c 01 00 00 	lock incl 0x13c(%rbx)
		r_req = try_rfuse_request_alloc(fm, file_lock);
    29e3:	48 89 ce             	mov    %rcx,%rsi
    29e6:	e8 65 ef ff ff       	call   1950 <try_rfuse_request_alloc>
    29eb:	49 89 c4             	mov    %rax,%r12
		if (!r_req) {
    29ee:	48 85 c0             	test   %rax,%rax
    29f1:	74 36                	je     2a29 <try_rfuse_get_req+0x1c9>
		__set_bit(FR_WAITING, &r_req->flags);
    29f3:	48 8d 58 48          	lea    0x48(%rax),%rbx
    29f7:	48 0f ba 2b 03       	btsq   $0x3,(%rbx)
		if(for_background){
    29fc:	45 84 ed             	test   %r13b,%r13b
    29ff:	75 18                	jne    2a19 <try_rfuse_get_req+0x1b9>
			if(!r_req->nocreds)
    2a01:	f6 80 e8 00 00 00 04 	testb  $0x4,0xe8(%rax)
    2a08:	75 08                	jne    2a12 <try_rfuse_get_req+0x1b2>
				rfuse_force_creds(r_req);
    2a0a:	48 89 c7             	mov    %rax,%rdi
    2a0d:	e8 5e d6 ff ff       	call   70 <rfuse_force_creds>
    2a12:	48 0f ba 2b 01       	btsq   $0x1,(%rbx)
    2a17:	eb 05                	jmp    2a1e <try_rfuse_get_req+0x1be>
    2a19:	48 0f ba 2b 02       	btsq   $0x2,(%rbx)
	smp_mb();
    2a1e:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%rsp)
	return r_req;  
    2a24:	e9 76 ff ff ff       	jmp    299f <try_rfuse_get_req+0x13f>
			if (for_background)
    2a29:	45 84 ed             	test   %r13b,%r13b
    2a2c:	0f 85 24 01 00 00    	jne    2b56 <try_rfuse_get_req+0x2f6>
struct rfuse_req *try_rfuse_get_req(struct fuse_mount *fm, bool for_background, bool force, spinlock_t *file_lock){
    2a32:	49 c7 c4 f4 ff ff ff 	mov    $0xfffffffffffffff4,%r12
    2a39:	e9 4d ff ff ff       	jmp    298b <try_rfuse_get_req+0x12b>
    2a3e:	e8 00 00 00 00       	call   2a43 <try_rfuse_get_req+0x1e3>
	return fc->riq[id];
    2a43:	49 63 54 24 44       	movslq 0x44(%r12),%rdx
    2a48:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
	return !fc->initialized || (for_background && riq->blocked);
    2a4f:	44 8b 83 0c 01 00 00 	mov    0x10c(%rbx),%r8d
	return fc->riq[id];
    2a56:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
	return !fc->initialized || (for_background && riq->blocked);
    2a5a:	45 85 c0             	test   %r8d,%r8d
    2a5d:	74 17                	je     2a76 <try_rfuse_get_req+0x216>
    2a5f:	45 84 ed             	test   %r13b,%r13b
    2a62:	0f 84 95 fe ff ff    	je     28fd <try_rfuse_get_req+0x9d>
    2a68:	8b b8 54 01 00 00    	mov    0x154(%rax),%edi
    2a6e:	85 ff                	test   %edi,%edi
    2a70:	0f 84 87 fe ff ff    	je     28fd <try_rfuse_get_req+0x9d>
			if (wait_event_killable_exclusive(riq->blocked_waitq, !rfuse_block_alloc(fc, for_background, r_req->riq_id))) {
    2a76:	be 01 00 00 00       	mov    $0x1,%esi
    2a7b:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
    2a7f:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    2a86:	00 
    2a87:	49 81 c7 58 01 00 00 	add    $0x158,%r15
    2a8e:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    2a95:	00 
    2a96:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    2a9d:	00 
    2a9e:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2aa5:	00 
    2aa6:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2aad:	00 
    2aae:	e8 00 00 00 00       	call   2ab3 <try_rfuse_get_req+0x253>
    2ab3:	ba 02 01 00 00       	mov    $0x102,%edx
    2ab8:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
    2abc:	4c 89 ff             	mov    %r15,%rdi
    2abf:	e8 00 00 00 00       	call   2ac4 <try_rfuse_get_req+0x264>
	return fc->riq[id];
    2ac4:	49 63 4c 24 44       	movslq 0x44(%r12),%rcx
    2ac9:	48 8b 93 d0 00 00 00 	mov    0xd0(%rbx),%rdx
	return !fc->initialized || (for_background && riq->blocked);
    2ad0:	8b b3 0c 01 00 00    	mov    0x10c(%rbx),%esi
	return fc->riq[id];
    2ad6:	48 8b 14 ca          	mov    (%rdx,%rcx,8),%rdx
	return !fc->initialized || (for_background && riq->blocked);
    2ada:	85 f6                	test   %esi,%esi
    2adc:	74 20                	je     2afe <try_rfuse_get_req+0x29e>
    2ade:	45 84 f6             	test   %r14b,%r14b
    2ae1:	74 0a                	je     2aed <try_rfuse_get_req+0x28d>
    2ae3:	8b 8a 54 01 00 00    	mov    0x154(%rdx),%ecx
    2ae9:	85 c9                	test   %ecx,%ecx
    2aeb:	75 11                	jne    2afe <try_rfuse_get_req+0x29e>
			if (wait_event_killable_exclusive(riq->blocked_waitq, !rfuse_block_alloc(fc, for_background, r_req->riq_id))) {
    2aed:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
    2af1:	4c 89 ff             	mov    %r15,%rdi
    2af4:	e8 00 00 00 00       	call   2af9 <try_rfuse_get_req+0x299>
    2af9:	e9 ff fd ff ff       	jmp    28fd <try_rfuse_get_req+0x9d>
    2afe:	48 85 c0             	test   %rax,%rax
    2b01:	75 3f                	jne    2b42 <try_rfuse_get_req+0x2e2>
    2b03:	e8 00 00 00 00       	call   2b08 <try_rfuse_get_req+0x2a8>
    2b08:	eb a9                	jmp    2ab3 <try_rfuse_get_req+0x253>
	return !fc->initialized || (for_background && riq->blocked);
    2b0a:	45 8b 8f 54 01 00 00 	mov    0x154(%r15),%r9d
    2b11:	45 85 c9             	test   %r9d,%r9d
    2b14:	0f 84 e3 fd ff ff    	je     28fd <try_rfuse_get_req+0x9d>
    2b1a:	e8 00 00 00 00       	call   2b1f <try_rfuse_get_req+0x2bf>
	return fc->riq[id];
    2b1f:	49 63 54 24 44       	movslq 0x44(%r12),%rdx
    2b24:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
    2b2b:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
	return !fc->initialized || (for_background && riq->blocked);
    2b2f:	8b 93 0c 01 00 00    	mov    0x10c(%rbx),%edx
    2b35:	85 d2                	test   %edx,%edx
    2b37:	0f 84 39 ff ff ff    	je     2a76 <try_rfuse_get_req+0x216>
    2b3d:	e9 26 ff ff ff       	jmp    2a68 <try_rfuse_get_req+0x208>
			if (wait_event_killable_exclusive(riq->blocked_waitq, !rfuse_block_alloc(fc, for_background, r_req->riq_id))) {
    2b42:	85 c0                	test   %eax,%eax
    2b44:	0f 84 b3 fd ff ff    	je     28fd <try_rfuse_get_req+0x9d>
    2b4a:	49 c7 c4 fc ff ff ff 	mov    $0xfffffffffffffffc,%r12
    2b51:	e9 35 fe ff ff       	jmp    298b <try_rfuse_get_req+0x12b>
				wake_up(&fc->blocked_waitq);
    2b56:	48 8d bb 18 01 00 00 	lea    0x118(%rbx),%rdi
    2b5d:	31 c9                	xor    %ecx,%ecx
    2b5f:	ba 01 00 00 00       	mov    $0x1,%edx
    2b64:	be 03 00 00 00       	mov    $0x3,%esi
    2b69:	e8 00 00 00 00       	call   2b6e <try_rfuse_get_req+0x30e>
    2b6e:	e9 bf fe ff ff       	jmp    2a32 <try_rfuse_get_req+0x1d2>
}
    2b73:	e8 00 00 00 00       	call   2b78 <try_rfuse_get_req+0x318>
    2b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2b7f:	00 

0000000000002b80 <__pfx___rfuse_get_request>:
    2b80:	90                   	nop
    2b81:	90                   	nop
    2b82:	90                   	nop
    2b83:	90                   	nop
    2b84:	90                   	nop
    2b85:	90                   	nop
    2b86:	90                   	nop
    2b87:	90                   	nop
    2b88:	90                   	nop
    2b89:	90                   	nop
    2b8a:	90                   	nop
    2b8b:	90                   	nop
    2b8c:	90                   	nop
    2b8d:	90                   	nop
    2b8e:	90                   	nop
    2b8f:	90                   	nop

0000000000002b90 <__rfuse_get_request>:
void __rfuse_get_request(struct rfuse_req *r_req){
    2b90:	e8 00 00 00 00       	call   2b95 <__rfuse_get_request+0x5>
    2b95:	55                   	push   %rbp
	refcount_inc(&r_req->count);
    2b96:	48 8d 4f 58          	lea    0x58(%rdi),%rcx
	return xadd(&v->counter, i);
    2b9a:	b8 01 00 00 00       	mov    $0x1,%eax
void __rfuse_get_request(struct rfuse_req *r_req){
    2b9f:	48 89 e5             	mov    %rsp,%rbp
    2ba2:	f0 0f c1 47 58       	lock xadd %eax,0x58(%rdi)
	if (unlikely(!old))
    2ba7:	85 c0                	test   %eax,%eax
    2ba9:	74 34                	je     2bdf <__rfuse_get_request+0x4f>
	else if (unlikely(old < 0 || old + i < 0))
    2bab:	8d 50 01             	lea    0x1(%rax),%edx
    2bae:	09 c2                	or     %eax,%edx
    2bb0:	78 10                	js     2bc2 <__rfuse_get_request+0x32>
}
    2bb2:	5d                   	pop    %rbp
    2bb3:	31 c0                	xor    %eax,%eax
    2bb5:	31 d2                	xor    %edx,%edx
    2bb7:	31 c9                	xor    %ecx,%ecx
    2bb9:	31 f6                	xor    %esi,%esi
    2bbb:	31 ff                	xor    %edi,%edi
    2bbd:	e9 00 00 00 00       	jmp    2bc2 <__rfuse_get_request+0x32>
		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
    2bc2:	be 01 00 00 00       	mov    $0x1,%esi
    2bc7:	48 89 cf             	mov    %rcx,%rdi
    2bca:	e8 00 00 00 00       	call   2bcf <__rfuse_get_request+0x3f>
    2bcf:	5d                   	pop    %rbp
    2bd0:	31 c0                	xor    %eax,%eax
    2bd2:	31 d2                	xor    %edx,%edx
    2bd4:	31 c9                	xor    %ecx,%ecx
    2bd6:	31 f6                	xor    %esi,%esi
    2bd8:	31 ff                	xor    %edi,%edi
    2bda:	e9 00 00 00 00       	jmp    2bdf <__rfuse_get_request+0x4f>
		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
    2bdf:	be 02 00 00 00       	mov    $0x2,%esi
    2be4:	48 89 cf             	mov    %rcx,%rdi
    2be7:	e8 00 00 00 00       	call   2bec <__rfuse_get_request+0x5c>
    2bec:	5d                   	pop    %rbp
    2bed:	31 c0                	xor    %eax,%eax
    2bef:	31 d2                	xor    %edx,%edx
    2bf1:	31 c9                	xor    %ecx,%ecx
    2bf3:	31 f6                	xor    %esi,%esi
    2bf5:	31 ff                	xor    %edi,%edi
    2bf7:	e9 00 00 00 00       	jmp    2bfc <__rfuse_get_request+0x6c>
    2bfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002c00 <__pfx___rfuse_put_request>:
    2c00:	90                   	nop
    2c01:	90                   	nop
    2c02:	90                   	nop
    2c03:	90                   	nop
    2c04:	90                   	nop
    2c05:	90                   	nop
    2c06:	90                   	nop
    2c07:	90                   	nop
    2c08:	90                   	nop
    2c09:	90                   	nop
    2c0a:	90                   	nop
    2c0b:	90                   	nop
    2c0c:	90                   	nop
    2c0d:	90                   	nop
    2c0e:	90                   	nop
    2c0f:	90                   	nop

0000000000002c10 <__rfuse_put_request>:
void __rfuse_put_request(struct rfuse_req *r_req){
    2c10:	e8 00 00 00 00       	call   2c15 <__rfuse_put_request+0x5>
	return xadd(&v->counter, -i);
    2c15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c1a:	f0 0f c1 47 58       	lock xadd %eax,0x58(%rdi)
	int old = atomic_fetch_sub_release(1, &r->refs);

	if (oldp)
		*oldp = old;

	if (unlikely(old <= 1))
    2c1f:	83 f8 01             	cmp    $0x1,%eax
    2c22:	7e 0d                	jle    2c31 <__rfuse_put_request+0x21>
    2c24:	31 c0                	xor    %eax,%eax
    2c26:	31 d2                	xor    %edx,%edx
    2c28:	31 f6                	xor    %esi,%esi
    2c2a:	31 ff                	xor    %edi,%edi
    2c2c:	e9 00 00 00 00       	jmp    2c31 <__rfuse_put_request+0x21>
    2c31:	55                   	push   %rbp
    2c32:	48 8d 57 58          	lea    0x58(%rdi),%rdx
		refcount_warn_saturate(r, REFCOUNT_DEC_LEAK);
    2c36:	be 04 00 00 00       	mov    $0x4,%esi
    2c3b:	48 89 d7             	mov    %rdx,%rdi
    2c3e:	48 89 e5             	mov    %rsp,%rbp
    2c41:	e8 00 00 00 00       	call   2c46 <__rfuse_put_request+0x36>
}
    2c46:	5d                   	pop    %rbp
    2c47:	31 c0                	xor    %eax,%eax
    2c49:	31 d2                	xor    %edx,%edx
    2c4b:	31 f6                	xor    %esi,%esi
    2c4d:	31 ff                	xor    %edi,%edi
    2c4f:	e9 00 00 00 00       	jmp    2c54 <__rfuse_put_request+0x44>
    2c54:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2c5b:	00 00 00 00 
    2c5f:	90                   	nop

0000000000002c60 <__pfx_rfuse_queue_forget>:
    2c60:	90                   	nop
    2c61:	90                   	nop
    2c62:	90                   	nop
    2c63:	90                   	nop
    2c64:	90                   	nop
    2c65:	90                   	nop
    2c66:	90                   	nop
    2c67:	90                   	nop
    2c68:	90                   	nop
    2c69:	90                   	nop
    2c6a:	90                   	nop
    2c6b:	90                   	nop
    2c6c:	90                   	nop
    2c6d:	90                   	nop
    2c6e:	90                   	nop
    2c6f:	90                   	nop

0000000000002c70 <rfuse_queue_forget>:
void rfuse_queue_forget(struct fuse_conn *fc, u64 nodeid, u64 nlookup){
    2c70:	e8 00 00 00 00       	call   2c75 <rfuse_queue_forget+0x5>
    2c75:	55                   	push   %rbp
    2c76:	48 89 e5             	mov    %rsp,%rbp
    2c79:	41 56                	push   %r14
    2c7b:	41 55                	push   %r13
    2c7d:	49 89 f5             	mov    %rsi,%r13
    2c80:	41 54                	push   %r12
    2c82:	49 89 d4             	mov    %rdx,%r12
    2c85:	53                   	push   %rbx
	struct rfuse_iqueue *riq = rfuse_get_iqueue(fc);
    2c86:	e8 00 00 00 00       	call   2c8b <rfuse_queue_forget+0x1b>
	raw_spin_lock(&lock->rlock);
    2c8b:	4c 8d b0 c8 00 00 00 	lea    0xc8(%rax),%r14
    2c92:	48 89 c3             	mov    %rax,%rbx
    2c95:	4c 89 f7             	mov    %r14,%rdi
    2c98:	e8 00 00 00 00       	call   2c9d <rfuse_queue_forget+0x2d>
	if (riq->connected) {
    2c9d:	8b 83 a8 00 00 00    	mov    0xa8(%rbx),%eax
    2ca3:	85 c0                	test   %eax,%eax
    2ca5:	74 43                	je     2cea <rfuse_queue_forget+0x7a>
	head = smp_load_acquire(&forgets->head); // Cannot touch in kernel
    2ca7:	8b 4b 48             	mov    0x48(%rbx),%ecx
	next = forgets->tail + 1;
    2caa:	8b 43 4c             	mov    0x4c(%rbx),%eax
    2cad:	8d 50 01             	lea    0x1(%rax),%edx
	if (next - head <= forgets->entries) {
    2cb0:	29 ca                	sub    %ecx,%edx
    2cb2:	39 53 54             	cmp    %edx,0x54(%rbx)
    2cb5:	72 33                	jb     2cea <rfuse_queue_forget+0x7a>
		ret = &forgets->kaddr[forgets->tail & forgets->mask];
    2cb7:	23 43 50             	and    0x50(%rbx),%eax
    2cba:	48 c1 e0 05          	shl    $0x5,%rax
		if(!target_entry){
    2cbe:	48 03 43 58          	add    0x58(%rbx),%rax
    2cc2:	74 26                	je     2cea <rfuse_queue_forget+0x7a>
	riq->reqctr += RFUSE_REQ_ID_STEP;
    2cc4:	48 8b 8b d0 00 00 00 	mov    0xd0(%rbx),%rcx
    2ccb:	48 8d 51 02          	lea    0x2(%rcx),%rdx
    2ccf:	48 89 93 d0 00 00 00 	mov    %rdx,0xd0(%rbx)
		target_entry->unique = rfuse_get_unique(riq); 
    2cd6:	48 89 10             	mov    %rdx,(%rax)
		target_entry->nodeid = nodeid;
    2cd9:	4c 89 68 10          	mov    %r13,0x10(%rax)
		target_entry->nlookup = nlookup;
    2cdd:	4c 89 60 08          	mov    %r12,0x8(%rax)
	unsigned int next =  forgets->tail + 1;
    2ce1:	8b 43 4c             	mov    0x4c(%rbx),%eax
    2ce4:	83 c0 01             	add    $0x1,%eax
	smp_store_release(&forgets->tail,next);
    2ce7:	89 43 4c             	mov    %eax,0x4c(%rbx)
	raw_spin_unlock(&lock->rlock);
    2cea:	4c 89 f7             	mov    %r14,%rdi
    2ced:	e8 00 00 00 00       	call   2cf2 <rfuse_queue_forget+0x82>
}
    2cf2:	5b                   	pop    %rbx
    2cf3:	41 5c                	pop    %r12
    2cf5:	41 5d                	pop    %r13
    2cf7:	41 5e                	pop    %r14
    2cf9:	5d                   	pop    %rbp
    2cfa:	31 c0                	xor    %eax,%eax
    2cfc:	31 d2                	xor    %edx,%edx
    2cfe:	31 c9                	xor    %ecx,%ecx
    2d00:	31 f6                	xor    %esi,%esi
    2d02:	31 ff                	xor    %edi,%edi
    2d04:	e9 00 00 00 00       	jmp    2d09 <rfuse_queue_forget+0x99>
    2d09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002d10 <__pfx_rfuse_simple_request>:
    2d10:	90                   	nop
    2d11:	90                   	nop
    2d12:	90                   	nop
    2d13:	90                   	nop
    2d14:	90                   	nop
    2d15:	90                   	nop
    2d16:	90                   	nop
    2d17:	90                   	nop
    2d18:	90                   	nop
    2d19:	90                   	nop
    2d1a:	90                   	nop
    2d1b:	90                   	nop
    2d1c:	90                   	nop
    2d1d:	90                   	nop
    2d1e:	90                   	nop
    2d1f:	90                   	nop

0000000000002d20 <rfuse_simple_request>:
ssize_t rfuse_simple_request(struct rfuse_req *r_req){
    2d20:	e8 00 00 00 00       	call   2d25 <rfuse_simple_request+0x5>
    2d25:	55                   	push   %rbp
    2d26:	48 89 e5             	mov    %rsp,%rbp
    2d29:	41 56                	push   %r14
    2d2b:	41 55                	push   %r13
    2d2d:	41 54                	push   %r12
    2d2f:	53                   	push   %rbx
    2d30:	48 89 fb             	mov    %rdi,%rbx
    2d33:	48 83 ec 30          	sub    $0x30,%rsp
    2d37:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    2d3e:	00 00 
    2d40:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2d44:	31 c0                	xor    %eax,%eax
	rfuse_queue_request(r_req);
    2d46:	e8 d5 d4 ff ff       	call   220 <rfuse_queue_request>
	struct fuse_conn *fc = r_req->fm->fc;
    2d4b:	48 8b 43 50          	mov    0x50(%rbx),%rax
	return fc->riq[id];
    2d4f:	48 63 53 44          	movslq 0x44(%rbx),%rdx
	struct fuse_conn *fc = r_req->fm->fc;
    2d53:	48 8b 38             	mov    (%rax),%rdi
	return fc->riq[id];
    2d56:	48 8b 87 d0 00 00 00 	mov    0xd0(%rdi),%rax
    2d5d:	4c 8b 34 d0          	mov    (%rax,%rdx,8),%r14
	if (!fc->no_interrupt) {
    2d61:	f6 87 38 01 00 00 02 	testb  $0x2,0x138(%rdi)
    2d68:	0f 84 dc 00 00 00    	je     2e4a <rfuse_simple_request+0x12a>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    2d6e:	48 8b 43 48          	mov    0x48(%rbx),%rax
	if (!test_bit(FR_FORCE, &r_req->flags)) {
    2d72:	a8 02                	test   $0x2,%al
    2d74:	74 53                	je     2dc9 <rfuse_simple_request+0xa9>
    2d76:	e8 00 00 00 00       	call   2d7b <rfuse_simple_request+0x5b>
    2d7b:	48 8b 43 48          	mov    0x48(%rbx),%rax
	wait_event(r_req->waitq, test_bit(FR_FINISHED, &r_req->flags));
    2d7f:	f6 c4 02             	test   $0x2,%ah
    2d82:	0f 84 76 01 00 00    	je     2efe <rfuse_simple_request+0x1de>
	ret = r_req->out.error;
    2d88:	48 63 43 30          	movslq 0x30(%rbx),%rax
	if (!ret && r_req->out_argvar) {
    2d8c:	48 85 c0             	test   %rax,%rax
    2d8f:	75 0c                	jne    2d9d <rfuse_simple_request+0x7d>
    2d91:	f6 83 e8 00 00 00 20 	testb  $0x20,0xe8(%rbx)
    2d98:	74 03                	je     2d9d <rfuse_simple_request+0x7d>
		ret = r_req->out.arglen;
    2d9a:	8b 43 38             	mov    0x38(%rbx),%eax
}
    2d9d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2da1:	65 48 2b 14 25 28 00 	sub    %gs:0x28,%rdx
    2da8:	00 00 
    2daa:	0f 85 32 02 00 00    	jne    2fe2 <rfuse_simple_request+0x2c2>
    2db0:	48 83 c4 30          	add    $0x30,%rsp
    2db4:	5b                   	pop    %rbx
    2db5:	41 5c                	pop    %r12
    2db7:	41 5d                	pop    %r13
    2db9:	41 5e                	pop    %r14
    2dbb:	5d                   	pop    %rbp
    2dbc:	31 d2                	xor    %edx,%edx
    2dbe:	31 c9                	xor    %ecx,%ecx
    2dc0:	31 f6                	xor    %esi,%esi
    2dc2:	31 ff                	xor    %edi,%edi
    2dc4:	e9 00 00 00 00       	jmp    2dc9 <rfuse_simple_request+0xa9>
    2dc9:	e8 00 00 00 00       	call   2dce <rfuse_simple_request+0xae>
    2dce:	48 8b 43 48          	mov    0x48(%rbx),%rax
		err = wait_event_killable(r_req->waitq,
    2dd2:	f6 c4 02             	test   $0x2,%ah
    2dd5:	75 b1                	jne    2d88 <rfuse_simple_request+0x68>
    2dd7:	4c 8d 65 b0          	lea    -0x50(%rbp),%r12
    2ddb:	31 f6                	xor    %esi,%esi
    2ddd:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    2de4:	00 
    2de5:	4c 8d 6b 60          	lea    0x60(%rbx),%r13
    2de9:	4c 89 e7             	mov    %r12,%rdi
    2dec:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    2df3:	00 
    2df4:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2dfb:	00 
    2dfc:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2e03:	00 
    2e04:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    2e0b:	00 
    2e0c:	e8 00 00 00 00       	call   2e11 <rfuse_simple_request+0xf1>
    2e11:	eb 0e                	jmp    2e21 <rfuse_simple_request+0x101>
    2e13:	48 85 c0             	test   %rax,%rax
    2e16:	0f 85 4c 01 00 00    	jne    2f68 <rfuse_simple_request+0x248>
    2e1c:	e8 00 00 00 00       	call   2e21 <rfuse_simple_request+0x101>
    2e21:	ba 02 01 00 00       	mov    $0x102,%edx
    2e26:	4c 89 e6             	mov    %r12,%rsi
    2e29:	4c 89 ef             	mov    %r13,%rdi
    2e2c:	e8 00 00 00 00       	call   2e31 <rfuse_simple_request+0x111>
    2e31:	48 8b 53 48          	mov    0x48(%rbx),%rdx
    2e35:	80 e6 02             	and    $0x2,%dh
    2e38:	74 d9                	je     2e13 <rfuse_simple_request+0xf3>
	wait_event(r_req->waitq, test_bit(FR_FINISHED, &r_req->flags));
    2e3a:	4c 89 e6             	mov    %r12,%rsi
    2e3d:	4c 89 ef             	mov    %r13,%rdi
    2e40:	e8 00 00 00 00       	call   2e45 <rfuse_simple_request+0x125>
    2e45:	e9 3e ff ff ff       	jmp    2d88 <rfuse_simple_request+0x68>
		err = rfuse_completion_poll(fc, riq, r_req);
    2e4a:	48 89 da             	mov    %rbx,%rdx
    2e4d:	4c 89 f6             	mov    %r14,%rsi
    2e50:	e8 00 00 00 00       	call   2e55 <rfuse_simple_request+0x135>
		if (!err)
    2e55:	85 c0                	test   %eax,%eax
    2e57:	0f 84 2b ff ff ff    	je     2d88 <rfuse_simple_request+0x68>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    2e5d:	f0 80 4b 48 20       	lock orb $0x20,0x48(%rbx)
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    2e62:	48 8b 43 48          	mov    0x48(%rbx),%rax
		if (test_bit(FR_SENT, &r_req->flags))
    2e66:	f6 c4 01             	test   $0x1,%ah
    2e69:	0f 84 ff fe ff ff    	je     2d6e <rfuse_simple_request+0x4e>
	struct rfuse_iqueue *riq = rfuse_get_specific_iqueue(r_req->fm->fc, r_req->riq_id);
    2e6f:	48 8b 43 50          	mov    0x50(%rbx),%rax
	return fc->riq[id];
    2e73:	48 63 53 44          	movslq 0x44(%rbx),%rdx
    2e77:	48 8b 00             	mov    (%rax),%rax
    2e7a:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    2e81:	4c 8b 24 d0          	mov    (%rax,%rdx,8),%r12
	raw_spin_lock(&lock->rlock);
    2e85:	4d 8d ac 24 c8 00 00 	lea    0xc8(%r12),%r13
    2e8c:	00 
    2e8d:	4c 89 ef             	mov    %r13,%rdi
    2e90:	e8 00 00 00 00       	call   2e95 <rfuse_simple_request+0x175>
    2e95:	48 8b 43 48          	mov    0x48(%rbx),%rax
	if (unlikely(!test_bit(FR_INTERRUPTED, &r_req->flags))) {
    2e99:	a8 20                	test   $0x20,%al
    2e9b:	0f 84 04 01 00 00    	je     2fa5 <rfuse_simple_request+0x285>
	head = smp_load_acquire(&interrupts->head); // Cannot touch in kernel
    2ea1:	41 8b 4c 24 28       	mov    0x28(%r12),%ecx
	next = interrupts->tail + 1;
    2ea6:	41 8b 44 24 2c       	mov    0x2c(%r12),%eax
    2eab:	8d 50 01             	lea    0x1(%rax),%edx
	if (next - head <= interrupts->entries) {
    2eae:	29 ca                	sub    %ecx,%edx
    2eb0:	41 39 54 24 34       	cmp    %edx,0x34(%r12)
    2eb5:	0f 82 de 00 00 00    	jb     2f99 <rfuse_simple_request+0x279>
		ret = &interrupts->kaddr[interrupts->tail & interrupts->mask];
    2ebb:	49 8b 54 24 38       	mov    0x38(%r12),%rdx
    2ec0:	41 23 44 24 30       	and    0x30(%r12),%eax
    2ec5:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
	if(!target_entry){
    2ec9:	48 85 c0             	test   %rax,%rax
    2ecc:	0f 84 c7 00 00 00    	je     2f99 <rfuse_simple_request+0x279>
	target_entry->unique = r_req->in.unique;
    2ed2:	48 8b 13             	mov    (%rbx),%rdx
    2ed5:	48 89 10             	mov    %rdx,(%rax)
	unsigned int next =  interrupts->tail + 1;
    2ed8:	41 8b 44 24 2c       	mov    0x2c(%r12),%eax
    2edd:	83 c0 01             	add    $0x1,%eax
	smp_store_release(&interrupts->tail,next);
    2ee0:	41 89 44 24 2c       	mov    %eax,0x2c(%r12)
	raw_spin_unlock(&lock->rlock);
    2ee5:	4c 89 ef             	mov    %r13,%rdi
    2ee8:	e8 00 00 00 00       	call   2eed <rfuse_simple_request+0x1cd>
	printk("RFUSE: Queue a request to the interrupt queue\n");
    2eed:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    2ef4:	e8 00 00 00 00       	call   2ef9 <rfuse_simple_request+0x1d9>
	return 0;
    2ef9:	e9 70 fe ff ff       	jmp    2d6e <rfuse_simple_request+0x4e>
	wait_event(r_req->waitq, test_bit(FR_FINISHED, &r_req->flags));
    2efe:	4c 8d 65 b0          	lea    -0x50(%rbp),%r12
    2f02:	31 f6                	xor    %esi,%esi
    2f04:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    2f0b:	00 
		err = wait_event_killable(r_req->waitq,
    2f0c:	4c 8d 6b 60          	lea    0x60(%rbx),%r13
	wait_event(r_req->waitq, test_bit(FR_FINISHED, &r_req->flags));
    2f10:	4c 89 e7             	mov    %r12,%rdi
    2f13:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    2f1a:	00 
    2f1b:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2f22:	00 
    2f23:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2f2a:	00 
    2f2b:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    2f32:	00 
    2f33:	e8 00 00 00 00       	call   2f38 <rfuse_simple_request+0x218>
    2f38:	eb 05                	jmp    2f3f <rfuse_simple_request+0x21f>
    2f3a:	e8 00 00 00 00       	call   2f3f <rfuse_simple_request+0x21f>
    2f3f:	ba 02 00 00 00       	mov    $0x2,%edx
    2f44:	4c 89 e6             	mov    %r12,%rsi
    2f47:	4c 89 ef             	mov    %r13,%rdi
    2f4a:	e8 00 00 00 00       	call   2f4f <rfuse_simple_request+0x22f>
    2f4f:	48 8b 43 48          	mov    0x48(%rbx),%rax
    2f53:	f6 c4 02             	test   $0x2,%ah
    2f56:	74 e2                	je     2f3a <rfuse_simple_request+0x21a>
    2f58:	4c 89 e6             	mov    %r12,%rsi
    2f5b:	4c 89 ef             	mov    %r13,%rdi
    2f5e:	e8 00 00 00 00       	call   2f63 <rfuse_simple_request+0x243>
    2f63:	e9 20 fe ff ff       	jmp    2d88 <rfuse_simple_request+0x68>
		if (!err)
    2f68:	85 c0                	test   %eax,%eax
    2f6a:	0f 84 18 fe ff ff    	je     2d88 <rfuse_simple_request+0x68>
	raw_spin_lock(&lock->rlock);
    2f70:	49 81 c6 c8 00 00 00 	add    $0xc8,%r14
    2f77:	4c 89 f7             	mov    %r14,%rdi
    2f7a:	e8 00 00 00 00       	call   2f7f <rfuse_simple_request+0x25f>
    2f7f:	48 8b 43 48          	mov    0x48(%rbx),%rax
	raw_spin_unlock(&lock->rlock);
    2f83:	4c 89 f7             	mov    %r14,%rdi
		if (test_bit(FR_PENDING, &r_req->flags)) {
    2f86:	84 c0                	test   %al,%al
    2f88:	78 28                	js     2fb2 <rfuse_simple_request+0x292>
    2f8a:	e8 00 00 00 00       	call   2f8f <rfuse_simple_request+0x26f>
    2f8f:	e8 00 00 00 00       	call   2f94 <rfuse_simple_request+0x274>
	wait_event(r_req->waitq, test_bit(FR_FINISHED, &r_req->flags));
    2f94:	e9 e2 fd ff ff       	jmp    2d7b <rfuse_simple_request+0x5b>
		printk("interrupt queue is full!\n");
    2f99:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    2fa0:	e8 00 00 00 00       	call   2fa5 <rfuse_simple_request+0x285>
    2fa5:	4c 89 ef             	mov    %r13,%rdi
    2fa8:	e8 00 00 00 00       	call   2fad <rfuse_simple_request+0x28d>
		return 1;
    2fad:	e9 bc fd ff ff       	jmp    2d6e <rfuse_simple_request+0x4e>
    2fb2:	e8 00 00 00 00       	call   2fb7 <rfuse_simple_request+0x297>
	refcount_dec(&r_req->count);
    2fb7:	48 8d 7b 58          	lea    0x58(%rbx),%rdi
    2fbb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fc0:	f0 0f c1 43 58       	lock xadd %eax,0x58(%rbx)
	if (unlikely(old <= 1))
    2fc5:	83 f8 01             	cmp    $0x1,%eax
    2fc8:	7e 0c                	jle    2fd6 <rfuse_simple_request+0x2b6>
			r_req->out.error = -EINTR;
    2fca:	c7 43 30 fc ff ff ff 	movl   $0xfffffffc,0x30(%rbx)
			return;
    2fd1:	e9 b2 fd ff ff       	jmp    2d88 <rfuse_simple_request+0x68>
		refcount_warn_saturate(r, REFCOUNT_DEC_LEAK);
    2fd6:	be 04 00 00 00       	mov    $0x4,%esi
    2fdb:	e8 00 00 00 00       	call   2fe0 <rfuse_simple_request+0x2c0>
    2fe0:	eb e8                	jmp    2fca <rfuse_simple_request+0x2aa>
}
    2fe2:	e8 00 00 00 00       	call   2fe7 <rfuse_simple_request+0x2c7>
    2fe7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2fee:	00 00 

0000000000002ff0 <__pfx_rfuse_simple_background>:
    2ff0:	90                   	nop
    2ff1:	90                   	nop
    2ff2:	90                   	nop
    2ff3:	90                   	nop
    2ff4:	90                   	nop
    2ff5:	90                   	nop
    2ff6:	90                   	nop
    2ff7:	90                   	nop
    2ff8:	90                   	nop
    2ff9:	90                   	nop
    2ffa:	90                   	nop
    2ffb:	90                   	nop
    2ffc:	90                   	nop
    2ffd:	90                   	nop
    2ffe:	90                   	nop
    2fff:	90                   	nop

0000000000003000 <rfuse_simple_background>:
bool rfuse_simple_background(struct fuse_mount *fm, struct rfuse_req *r_req){
    3000:	e8 00 00 00 00       	call   3005 <rfuse_simple_background+0x5>
    3005:	55                   	push   %rbp
    3006:	48 89 e5             	mov    %rsp,%rbp
    3009:	41 57                	push   %r15
    300b:	41 56                	push   %r14
    300d:	41 55                	push   %r13
    300f:	41 54                	push   %r12
    3011:	49 89 f4             	mov    %rsi,%r12
    3014:	53                   	push   %rbx
	struct fuse_conn *fc = fm->fc;
    3015:	48 8b 46 50          	mov    0x50(%rsi),%rax
    3019:	48 c7 c3 00 00 00 00 	mov    $0x0,%rbx
    3020:	4c 63 6e 44          	movslq 0x44(%rsi),%r13
    3024:	4c 8b 38             	mov    (%rax),%r15
    3027:	49 81 fd ff 1f 00 00 	cmp    $0x1fff,%r13
    302e:	0f 87 43 01 00 00    	ja     3177 <rfuse_simple_background+0x177>
    3034:	4a 8b 04 ed 00 00 00 	mov    0x0(,%r13,8),%rax
    303b:	00 
    303c:	b9 18 00 00 00       	mov    $0x18,%ecx
    3041:	be c0 0c 00 00       	mov    $0xcc0,%esi
    3046:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 304d <rfuse_simple_background+0x4d>
    304d:	8b 14 18             	mov    (%rax,%rbx,1),%edx
    3050:	e8 00 00 00 00       	call   3055 <rfuse_simple_background+0x55>
	return fc->riq[id];
    3055:	49 63 54 24 44       	movslq 0x44(%r12),%rdx
    305a:	48 89 c3             	mov    %rax,%rbx
    305d:	49 8b 87 d0 00 00 00 	mov    0xd0(%r15),%rax
    3064:	4c 8b 2c d0          	mov    (%rax,%rdx,8),%r13
    3068:	49 8b 54 24 48       	mov    0x48(%r12),%rdx
	WARN_ON(!test_bit(FR_BACKGROUND, &r_req->flags));
    306d:	49 8d 44 24 48       	lea    0x48(%r12),%rax
    3072:	83 e2 04             	and    $0x4,%edx
    3075:	0f 84 f5 00 00 00    	je     3170 <rfuse_simple_background+0x170>
    307b:	49 8b 54 24 48       	mov    0x48(%r12),%rdx
	if (!test_bit(FR_WAITING, &r_req->flags)) {
    3080:	83 e2 08             	and    $0x8,%edx
    3083:	0f 84 a9 00 00 00    	je     3132 <rfuse_simple_background+0x132>
	asm volatile(__ASM_SIZE(bts) " %1,%0" : : ADDR, "Ir" (nr) : "memory");
    3089:	48 0f ba 28 00       	btsq   $0x0,(%rax)
	bg_entry->request = r_req->index;
    308e:	49 8b 44 24 40       	mov    0x40(%r12),%rax
	WRITE_ONCE(list->next, list);
    3093:	48 89 1b             	mov    %rbx,(%rbx)
	raw_spin_lock(&lock->rlock);
    3096:	4d 8d b5 40 01 00 00 	lea    0x140(%r13),%r14
	WRITE_ONCE(list->prev, list);
    309d:	48 89 5b 08          	mov    %rbx,0x8(%rbx)
    30a1:	4c 89 f7             	mov    %r14,%rdi
    30a4:	48 89 43 10          	mov    %rax,0x10(%rbx)
    30a8:	e8 00 00 00 00       	call   30ad <rfuse_simple_background+0xad>
	if (likely(riq->connected)) {
    30ad:	41 8b 85 a8 00 00 00 	mov    0xa8(%r13),%eax
    30b4:	85 c0                	test   %eax,%eax
    30b6:	0f 84 88 00 00 00    	je     3144 <rfuse_simple_background+0x144>
		riq->num_background++;
    30bc:	41 8b 85 4c 01 00 00 	mov    0x14c(%r13),%eax
    30c3:	83 c0 01             	add    $0x1,%eax
    30c6:	41 89 85 4c 01 00 00 	mov    %eax,0x14c(%r13)
		if (riq->num_background == riq->max_background) {
    30cd:	41 3b 85 44 01 00 00 	cmp    0x144(%r13),%eax
    30d4:	75 0b                	jne    30e1 <rfuse_simple_background+0xe1>
			riq->blocked = 1;
    30d6:	41 c7 85 54 01 00 00 	movl   $0x1,0x154(%r13)
    30dd:	01 00 00 00 
	__list_add(new, head->prev, head);
    30e1:	49 8b 85 38 01 00 00 	mov    0x138(%r13),%rax
	next->prev = new;
    30e8:	49 89 9d 38 01 00 00 	mov    %rbx,0x138(%r13)
		list_add_tail(&bg_entry->list, &riq->bg_queue); // Add it to background queue
    30ef:	49 81 c5 30 01 00 00 	add    $0x130,%r13
    30f6:	4c 89 2b             	mov    %r13,(%rbx)
	new->prev = prev;
    30f9:	48 89 43 08          	mov    %rax,0x8(%rbx)
	WRITE_ONCE(prev->next, new);
    30fd:	48 89 18             	mov    %rbx,(%rax)
		rfuse_flush_bg_queue(fc, r_req->riq_id);
    3100:	41 8b 74 24 44       	mov    0x44(%r12),%esi
    3105:	49 8b bf d0 00 00 00 	mov    0xd0(%r15),%rdi
    310c:	e8 5f d2 ff ff       	call   370 <rfuse_flush_bg_queue.isra.0>
	raw_spin_unlock(&lock->rlock);
    3111:	4c 89 f7             	mov    %r14,%rdi
    3114:	e8 00 00 00 00       	call   3119 <rfuse_simple_background+0x119>
	return 0;
    3119:	31 c0                	xor    %eax,%eax
}
    311b:	5b                   	pop    %rbx
    311c:	41 5c                	pop    %r12
    311e:	41 5d                	pop    %r13
    3120:	41 5e                	pop    %r14
    3122:	41 5f                	pop    %r15
    3124:	5d                   	pop    %rbp
    3125:	31 d2                	xor    %edx,%edx
    3127:	31 c9                	xor    %ecx,%ecx
    3129:	31 f6                	xor    %esi,%esi
    312b:	31 ff                	xor    %edi,%edi
    312d:	e9 00 00 00 00       	jmp    3132 <rfuse_simple_background+0x132>
    3132:	48 0f ba 28 03       	btsq   $0x3,(%rax)
	asm volatile(LOCK_PREFIX "incl %0"
    3137:	f0 41 ff 87 3c 01 00 	lock incl 0x13c(%r15)
    313e:	00 
	__set_bit(FR_ISREPLY, &r_req->flags);
    313f:	e9 45 ff ff ff       	jmp    3089 <rfuse_simple_background+0x89>
    3144:	4c 89 f7             	mov    %r14,%rdi
    3147:	e8 00 00 00 00       	call   314c <rfuse_simple_background+0x14c>
		rfuse_put_request(r_req);
    314c:	4c 89 e7             	mov    %r12,%rdi
    314f:	e8 00 00 00 00       	call   3154 <rfuse_simple_background+0x154>
		return -ENOTCONN;
    3154:	b8 01 00 00 00       	mov    $0x1,%eax
}
    3159:	5b                   	pop    %rbx
    315a:	41 5c                	pop    %r12
    315c:	41 5d                	pop    %r13
    315e:	41 5e                	pop    %r14
    3160:	41 5f                	pop    %r15
    3162:	5d                   	pop    %rbp
    3163:	31 d2                	xor    %edx,%edx
    3165:	31 c9                	xor    %ecx,%ecx
    3167:	31 f6                	xor    %esi,%esi
    3169:	31 ff                	xor    %edi,%edi
    316b:	e9 00 00 00 00       	jmp    3170 <rfuse_simple_background+0x170>
	WARN_ON(!test_bit(FR_BACKGROUND, &r_req->flags));
    3170:	0f 0b                	ud2    
	if (!test_bit(FR_WAITING, &r_req->flags)) {
    3172:	e9 04 ff ff ff       	jmp    307b <rfuse_simple_background+0x7b>
    3177:	4c 89 ee             	mov    %r13,%rsi
    317a:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
    3181:	e8 00 00 00 00       	call   3186 <rfuse_simple_background+0x186>
    3186:	e9 a9 fe ff ff       	jmp    3034 <rfuse_simple_background+0x34>
    318b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003190 <__pfx_rfuse_request_end>:
    3190:	90                   	nop
    3191:	90                   	nop
    3192:	90                   	nop
    3193:	90                   	nop
    3194:	90                   	nop
    3195:	90                   	nop
    3196:	90                   	nop
    3197:	90                   	nop
    3198:	90                   	nop
    3199:	90                   	nop
    319a:	90                   	nop
    319b:	90                   	nop
    319c:	90                   	nop
    319d:	90                   	nop
    319e:	90                   	nop
    319f:	90                   	nop

00000000000031a0 <rfuse_request_end>:
void rfuse_request_end(struct rfuse_req *r_req){
    31a0:	e8 00 00 00 00       	call   31a5 <rfuse_request_end+0x5>
    31a5:	55                   	push   %rbp
    31a6:	48 89 e5             	mov    %rsp,%rbp
    31a9:	41 56                	push   %r14
    31ab:	41 55                	push   %r13
    31ad:	41 54                	push   %r12
    31af:	53                   	push   %rbx
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    31b0:	48 8b 47 48          	mov    0x48(%rdi),%rax
    31b4:	48 89 fb             	mov    %rdi,%rbx
	if(test_bit(FR_BACKGROUND, &r_req->flags)){
    31b7:	a8 04                	test   $0x4,%al
    31b9:	75 3e                	jne    31f9 <rfuse_request_end+0x59>
    31bb:	48 8b 43 48          	mov    0x48(%rbx),%rax
	if (test_bit(FR_ASYNC, &r_req->flags))
    31bf:	f6 c4 08             	test   $0x8,%ah
    31c2:	74 16                	je     31da <rfuse_request_end+0x3a>
		r_req->end(r_req->fm, r_req, r_req->out.error);
    31c4:	8b 53 30             	mov    0x30(%rbx),%edx
    31c7:	48 8b 7b 50          	mov    0x50(%rbx),%rdi
    31cb:	48 89 de             	mov    %rbx,%rsi
    31ce:	48 8b 83 f8 00 00 00 	mov    0xf8(%rbx),%rax
    31d5:	e8 00 00 00 00       	call   31da <rfuse_request_end+0x3a>
	rfuse_put_request(r_req);
    31da:	48 89 df             	mov    %rbx,%rdi
    31dd:	e8 00 00 00 00       	call   31e2 <rfuse_request_end+0x42>
}
    31e2:	5b                   	pop    %rbx
    31e3:	41 5c                	pop    %r12
    31e5:	41 5d                	pop    %r13
    31e7:	41 5e                	pop    %r14
    31e9:	5d                   	pop    %rbp
    31ea:	31 c0                	xor    %eax,%eax
    31ec:	31 d2                	xor    %edx,%edx
    31ee:	31 c9                	xor    %ecx,%ecx
    31f0:	31 f6                	xor    %esi,%esi
    31f2:	31 ff                	xor    %edi,%edi
    31f4:	e9 00 00 00 00       	jmp    31f9 <rfuse_request_end+0x59>
	struct fuse_conn *fc = fm->fc;
    31f9:	48 8b 47 50          	mov    0x50(%rdi),%rax
	return fc->riq[id];
    31fd:	48 63 57 44          	movslq 0x44(%rdi),%rdx
	struct fuse_conn *fc = fm->fc;
    3201:	4c 8b 30             	mov    (%rax),%r14
	return fc->riq[id];
    3204:	49 8b 86 d0 00 00 00 	mov    0xd0(%r14),%rax
    320b:	4c 8b 24 d0          	mov    (%rax,%rdx,8),%r12
	raw_spin_lock(&lock->rlock);
    320f:	4d 8d ac 24 40 01 00 	lea    0x140(%r12),%r13
    3216:	00 
    3217:	4c 89 ef             	mov    %r13,%rdi
    321a:	e8 00 00 00 00       	call   321f <rfuse_request_end+0x7f>
		asm volatile(LOCK_PREFIX "andb %b1,%0"
    321f:	f0 80 63 48 fb       	lock andb $0xfb,0x48(%rbx)
		if (riq->num_background == riq->max_background) {
    3224:	41 8b 84 24 4c 01 00 	mov    0x14c(%r12),%eax
    322b:	00 
    322c:	41 3b 84 24 44 01 00 	cmp    0x144(%r12),%eax
    3233:	00 
    3234:	74 72                	je     32a8 <rfuse_request_end+0x108>
		} else if (!riq->blocked) {
    3236:	41 8b 94 24 54 01 00 	mov    0x154(%r12),%edx
    323d:	00 
    323e:	85 d2                	test   %edx,%edx
    3240:	75 36                	jne    3278 <rfuse_request_end+0xd8>
	return READ_ONCE(head->next) == head;
    3242:	49 8b 8c 24 60 01 00 	mov    0x160(%r12),%rcx
    3249:	00 
    324a:	49 8d 94 24 60 01 00 	lea    0x160(%r12),%rdx
    3251:	00 
    3252:	49 8d bc 24 58 01 00 	lea    0x158(%r12),%rdi
    3259:	00 
			if (waitqueue_active(&riq->blocked_waitq))
    325a:	48 39 d1             	cmp    %rdx,%rcx
    325d:	74 19                	je     3278 <rfuse_request_end+0xd8>
				wake_up(&riq->blocked_waitq);
    325f:	31 c9                	xor    %ecx,%ecx
    3261:	ba 01 00 00 00       	mov    $0x1,%edx
    3266:	be 03 00 00 00       	mov    $0x3,%esi
    326b:	e8 00 00 00 00       	call   3270 <rfuse_request_end+0xd0>
		riq->num_background--;
    3270:	41 8b 84 24 4c 01 00 	mov    0x14c(%r12),%eax
    3277:	00 
		riq->active_background--;
    3278:	41 83 ac 24 50 01 00 	subl   $0x1,0x150(%r12)
    327f:	00 01 
		riq->num_background--;
    3281:	83 e8 01             	sub    $0x1,%eax
    3284:	41 89 84 24 4c 01 00 	mov    %eax,0x14c(%r12)
    328b:	00 
		rfuse_flush_bg_queue(fc, r_req->riq_id);
    328c:	49 8b be d0 00 00 00 	mov    0xd0(%r14),%rdi
    3293:	8b 73 44             	mov    0x44(%rbx),%esi
    3296:	e8 d5 d0 ff ff       	call   370 <rfuse_flush_bg_queue.isra.0>
	raw_spin_unlock(&lock->rlock);
    329b:	4c 89 ef             	mov    %r13,%rdi
    329e:	e8 00 00 00 00       	call   32a3 <rfuse_request_end+0x103>
	if (test_bit(FR_ASYNC, &r_req->flags))
    32a3:	e9 13 ff ff ff       	jmp    31bb <rfuse_request_end+0x1b>
			riq->blocked = 0;
    32a8:	41 c7 84 24 54 01 00 	movl   $0x0,0x154(%r12)
    32af:	00 00 00 00 00 
			wake_up(&riq->blocked_waitq);
    32b4:	49 8d bc 24 58 01 00 	lea    0x158(%r12),%rdi
    32bb:	00 
    32bc:	eb a1                	jmp    325f <rfuse_request_end+0xbf>
    32be:	66 90                	xchg   %ax,%ax

00000000000032c0 <__pfx_rfuse_dev_do_read>:
    32c0:	90                   	nop
    32c1:	90                   	nop
    32c2:	90                   	nop
    32c3:	90                   	nop
    32c4:	90                   	nop
    32c5:	90                   	nop
    32c6:	90                   	nop
    32c7:	90                   	nop
    32c8:	90                   	nop
    32c9:	90                   	nop
    32ca:	90                   	nop
    32cb:	90                   	nop
    32cc:	90                   	nop
    32cd:	90                   	nop
    32ce:	90                   	nop
    32cf:	90                   	nop

00000000000032d0 <rfuse_dev_do_read>:
{
    32d0:	e8 00 00 00 00       	call   32d5 <rfuse_dev_do_read+0x5>
    32d5:	55                   	push   %rbp
	struct rfuse_copy_state rcs;	
    32d6:	b9 0a 00 00 00       	mov    $0xa,%ecx
{
    32db:	48 89 e5             	mov    %rsp,%rbp
    32de:	41 57                	push   %r15
    32e0:	41 56                	push   %r14
    32e2:	41 55                	push   %r13
    32e4:	41 54                	push   %r12
	ssize_t res = 0;
    32e6:	45 31 e4             	xor    %r12d,%r12d
{
    32e9:	53                   	push   %rbx
	int req_index = (int)((index & RFUSE_REQ_IDX_MASK) >> 32);
    32ea:	4c 89 c3             	mov    %r8,%rbx
    32ed:	48 c1 eb 18          	shr    $0x18,%rbx
	struct rfuse_req *r_req = (struct rfuse_req*)&riq->kreq[req_index];
    32f1:	81 e3 00 ff ff 00    	and    $0xffff00,%ebx
{
    32f7:	48 83 ec 58          	sub    $0x58,%rsp
	struct fuse_conn *fc = fud->fc;
    32fb:	48 8b 37             	mov    (%rdi),%rsi
	struct rfuse_copy_state rcs;	
    32fe:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
{
    3302:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    3309:	00 00 
    330b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    330f:	31 c0                	xor    %eax,%eax
	struct rfuse_copy_state rcs;	
    3311:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	int riq_id = (int)((index & RFUSE_RIQ_ID_MASK) >> 16);
    3314:	4c 89 c0             	mov    %r8,%rax
	return fc->riq[id];
    3317:	48 8b 8e d0 00 00 00 	mov    0xd0(%rsi),%rcx
	rfuse_copy_init(&rcs, 1, to);	
    331e:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
	int riq_id = (int)((index & RFUSE_RIQ_ID_MASK) >> 16);
    3322:	48 c1 e8 10          	shr    $0x10,%rax
	rfuse_copy_init(&rcs, 1, to);	
    3326:	be 01 00 00 00       	mov    $0x1,%esi
	int riq_id = (int)((index & RFUSE_RIQ_ID_MASK) >> 16);
    332b:	0f b6 c0             	movzbl %al,%eax
	struct rfuse_req *r_req = (struct rfuse_req*)&riq->kreq[req_index];
    332e:	48 8b 04 c1          	mov    (%rcx,%rax,8),%rax
    3332:	48 03 98 a0 00 00 00 	add    0xa0(%rax),%rbx
	rp = r_req->rp;
    3339:	4c 8b ab f0 00 00 00 	mov    0xf0(%rbx),%r13
	rfuse_copy_init(&rcs, 1, to);	
    3340:	e8 cb cc ff ff       	call   10 <rfuse_copy_init>
	rcs.r_req = r_req;
    3345:	48 89 5d 88          	mov    %rbx,-0x78(%rbp)
	nbytes = r_req->in.arglen[0];
    3349:	44 8b 73 28          	mov    0x28(%rbx),%r14d
	for(i =0; i<rp->num_pages && (nbytes); i++){
    334d:	41 8b 45 10          	mov    0x10(%r13),%eax
    3351:	85 c0                	test   %eax,%eax
    3353:	74 54                	je     33a9 <rfuse_dev_do_read+0xd9>
    3355:	45 85 f6             	test   %r14d,%r14d
    3358:	74 4f                	je     33a9 <rfuse_dev_do_read+0xd9>
    335a:	45 31 ff             	xor    %r15d,%r15d
    335d:	eb 15                	jmp    3374 <rfuse_dev_do_read+0xa4>
		nbytes -= count;
    335f:	41 29 de             	sub    %ebx,%r14d
		res += count;
    3362:	49 01 dc             	add    %rbx,%r12
	for(i =0; i<rp->num_pages && (nbytes); i++){
    3365:	41 83 c7 01          	add    $0x1,%r15d
    3369:	45 3b 7d 10          	cmp    0x10(%r13),%r15d
    336d:	73 3a                	jae    33a9 <rfuse_dev_do_read+0xd9>
    336f:	45 85 f6             	test   %r14d,%r14d
    3372:	74 35                	je     33a9 <rfuse_dev_do_read+0xd9>
		unsigned int offset = rp->descs[i].offset;
    3374:	49 8b 45 08          	mov    0x8(%r13),%rax
    3378:	44 89 fe             	mov    %r15d,%esi
		err = rfuse_copy_page(&rcs, &rp->pages[i], offset, count, 0);
    337b:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
		unsigned int offset = rp->descs[i].offset;
    337f:	48 c1 e6 03          	shl    $0x3,%rsi
    3383:	48 01 f0             	add    %rsi,%rax
		unsigned int count = min(nbytes,rp->descs[i].length);
    3386:	8b 18                	mov    (%rax),%ebx
		err = rfuse_copy_page(&rcs, &rp->pages[i], offset, count, 0);
    3388:	8b 50 04             	mov    0x4(%rax),%edx
		unsigned int count = min(nbytes,rp->descs[i].length);
    338b:	41 39 de             	cmp    %ebx,%r14d
    338e:	49 0f 46 de          	cmovbe %r14,%rbx
		err = rfuse_copy_page(&rcs, &rp->pages[i], offset, count, 0);
    3392:	49 03 75 00          	add    0x0(%r13),%rsi
    3396:	45 31 c0             	xor    %r8d,%r8d
    3399:	89 d9                	mov    %ebx,%ecx
    339b:	e8 70 d2 ff ff       	call   610 <rfuse_copy_page>
		if(err)
    33a0:	85 c0                	test   %eax,%eax
    33a2:	74 bb                	je     335f <rfuse_dev_do_read+0x8f>
			return err;
    33a4:	4c 63 e0             	movslq %eax,%r12
    33a7:	eb 09                	jmp    33b2 <rfuse_dev_do_read+0xe2>
	rfuse_copy_finish(&rcs);
    33a9:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
    33ad:	e8 6e d1 ff ff       	call   520 <rfuse_copy_finish>
}
    33b2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    33b6:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    33bd:	00 00 
    33bf:	75 21                	jne    33e2 <rfuse_dev_do_read+0x112>
    33c1:	48 83 c4 58          	add    $0x58,%rsp
    33c5:	4c 89 e0             	mov    %r12,%rax
    33c8:	5b                   	pop    %rbx
    33c9:	41 5c                	pop    %r12
    33cb:	41 5d                	pop    %r13
    33cd:	41 5e                	pop    %r14
    33cf:	41 5f                	pop    %r15
    33d1:	5d                   	pop    %rbp
    33d2:	31 d2                	xor    %edx,%edx
    33d4:	31 c9                	xor    %ecx,%ecx
    33d6:	31 f6                	xor    %esi,%esi
    33d8:	31 ff                	xor    %edi,%edi
    33da:	45 31 c0             	xor    %r8d,%r8d
    33dd:	e9 00 00 00 00       	jmp    33e2 <rfuse_dev_do_read+0x112>
    33e2:	e8 00 00 00 00       	call   33e7 <rfuse_dev_do_read+0x117>
    33e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    33ee:	00 00 

00000000000033f0 <__pfx_rfuse_dev_splice_read>:
    33f0:	90                   	nop
    33f1:	90                   	nop
    33f2:	90                   	nop
    33f3:	90                   	nop
    33f4:	90                   	nop
    33f5:	90                   	nop
    33f6:	90                   	nop
    33f7:	90                   	nop
    33f8:	90                   	nop
    33f9:	90                   	nop
    33fa:	90                   	nop
    33fb:	90                   	nop
    33fc:	90                   	nop
    33fd:	90                   	nop
    33fe:	90                   	nop
    33ff:	90                   	nop

0000000000003400 <rfuse_dev_splice_read>:
{
    3400:	e8 00 00 00 00       	call   3405 <rfuse_dev_splice_read+0x5>
    3405:	55                   	push   %rbp
    3406:	49 89 f8             	mov    %rdi,%r8
	struct rfuse_copy_state rcs;	
    3409:	b9 0a 00 00 00       	mov    $0xa,%ecx
{
    340e:	48 89 e5             	mov    %rsp,%rbp
    3411:	41 57                	push   %r15
    3413:	41 56                	push   %r14
	struct rfuse_copy_state rcs;	
    3415:	4c 8d 75 80          	lea    -0x80(%rbp),%r14
{
    3419:	41 55                	push   %r13
	struct rfuse_copy_state rcs;	
    341b:	4c 89 f7             	mov    %r14,%rdi
{
    341e:	49 89 d5             	mov    %rdx,%r13
    3421:	41 54                	push   %r12
    3423:	53                   	push   %rbx
    3424:	48 83 ec 60          	sub    $0x60,%rsp
    3428:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    342f:	00 00 
    3431:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    3435:	31 c0                	xor    %eax,%eax
	struct rfuse_copy_state rcs;	
    3437:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	return READ_ONCE(file->private_data);
    343a:	49 8b 88 c8 00 00 00 	mov    0xc8(%r8),%rcx
	int riq_id = (int)((*ppos & RFUSE_RIQ_ID_MASK) >> 16);
    3441:	48 8b 06             	mov    (%rsi),%rax
	return fc->riq[id];
    3444:	48 8b 31             	mov    (%rcx),%rsi
	int riq_id = (int)((*ppos & RFUSE_RIQ_ID_MASK) >> 16);
    3447:	48 89 c2             	mov    %rax,%rdx
	int req_index = (int)((*ppos & RFUSE_REQ_IDX_MASK) >> 32);
    344a:	48 c1 e8 18          	shr    $0x18,%rax
	int riq_id = (int)((*ppos & RFUSE_RIQ_ID_MASK) >> 16);
    344e:	48 c1 ea 10          	shr    $0x10,%rdx
	int req_index = (int)((*ppos & RFUSE_REQ_IDX_MASK) >> 32);
    3452:	48 89 c3             	mov    %rax,%rbx
	return fc->riq[id];
    3455:	48 8b b6 d0 00 00 00 	mov    0xd0(%rsi),%rsi
	int riq_id = (int)((*ppos & RFUSE_RIQ_ID_MASK) >> 16);
    345c:	0f b6 d2             	movzbl %dl,%edx
	struct rfuse_req *r_req = (struct rfuse_req*)&riq->kreq[req_index];
    345f:	81 e3 00 ff ff 00    	and    $0xffff00,%ebx
    3465:	48 8b 14 d6          	mov    (%rsi,%rdx,8),%rdx
    3469:	48 03 9a a0 00 00 00 	add    0xa0(%rdx),%rbx
	if (!fud)
    3470:	48 85 c9             	test   %rcx,%rcx
    3473:	0f 84 ef 01 00 00    	je     3668 <rfuse_dev_splice_read+0x268>

static inline __alloc_size(1, 2) void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
{
	size_t bytes;

	if (unlikely(check_mul_overflow(n, size, &bytes)))
    3479:	41 8b 45 58          	mov    0x58(%r13),%eax
	return kvmalloc_node(size, flags, NUMA_NO_NODE);
    347d:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    3482:	be c0 0c 00 00       	mov    $0xcc0,%esi
	if (unlikely(check_mul_overflow(n, size, &bytes)))
    3487:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    348b:	48 c1 e7 03          	shl    $0x3,%rdi
	return kvmalloc_node(size, flags, NUMA_NO_NODE);
    348f:	e8 00 00 00 00       	call   3494 <rfuse_dev_splice_read+0x94>
    3494:	49 89 c7             	mov    %rax,%r15
	if (!bufs)
    3497:	48 85 c0             	test   %rax,%rax
    349a:	0f 84 d9 01 00 00    	je     3679 <rfuse_dev_splice_read+0x279>
	rfuse_copy_init(&rcs, 1, NULL);
    34a0:	4c 89 f7             	mov    %r14,%rdi
    34a3:	31 d2                	xor    %edx,%edx
    34a5:	be 01 00 00 00       	mov    $0x1,%esi
    34aa:	e8 61 cb ff ff       	call   10 <rfuse_copy_init>
	err = rfuse_copy_pages(rcs, inarg->size, 0);
    34af:	8b b3 88 00 00 00    	mov    0x88(%rbx),%esi
    34b5:	4c 89 f7             	mov    %r14,%rdi
    34b8:	31 d2                	xor    %edx,%edx
	rcs.pipebufs = bufs;
    34ba:	4c 89 7d 98          	mov    %r15,-0x68(%rbp)
	rcs.pipe = pipe;
    34be:	4c 89 6d a8          	mov    %r13,-0x58(%rbp)
	rcs.r_req = r_req;
    34c2:	48 89 5d 88          	mov    %rbx,-0x78(%rbp)
	err = rfuse_copy_pages(rcs, inarg->size, 0);
    34c6:	e8 35 da ff ff       	call   f00 <rfuse_copy_pages>
	rfuse_copy_finish(rcs);
    34cb:	4c 89 f7             	mov    %r14,%rdi
	err = rfuse_copy_pages(rcs, inarg->size, 0);
    34ce:	4c 63 e0             	movslq %eax,%r12
	rfuse_copy_finish(rcs);
    34d1:	e8 4a d0 ff ff       	call   520 <rfuse_copy_finish>
	if (pipe_occupancy(pipe->head, pipe->tail) + rcs.nr_segs > pipe->max_usage) {
    34d6:	4c 8b 75 b0          	mov    -0x50(%rbp),%r14
	if (ret < 0)
    34da:	45 85 e4             	test   %r12d,%r12d
    34dd:	0f 88 f6 00 00 00    	js     35d9 <rfuse_dev_splice_read+0x1d9>
	return head - tail;
    34e3:	41 8b 45 50          	mov    0x50(%r13),%eax
	if (pipe_occupancy(pipe->head, pipe->tail) + rcs.nr_segs > pipe->max_usage) {
    34e7:	41 8b 55 58          	mov    0x58(%r13),%edx
    34eb:	41 2b 45 54          	sub    0x54(%r13),%eax
    34ef:	4c 01 f0             	add    %r14,%rax
    34f2:	48 39 c2             	cmp    %rax,%rdx
    34f5:	0f 82 d7 00 00 00    	jb     35d2 <rfuse_dev_splice_read+0x1d2>
	for (ret = total = 0; page_nr < rcs.nr_segs; total += ret) {
    34fb:	4d 85 f6             	test   %r14,%r14
    34fe:	0f 84 5c 01 00 00    	je     3660 <rfuse_dev_splice_read+0x260>
	int page_nr = 0;
    3504:	31 db                	xor    %ebx,%ebx
	for (ret = total = 0; page_nr < rcs.nr_segs; total += ret) {
    3506:	45 31 e4             	xor    %r12d,%r12d
    3509:	31 d2                	xor    %edx,%edx
    350b:	eb 0c                	jmp    3519 <rfuse_dev_splice_read+0x119>
    350d:	41 01 c4             	add    %eax,%r12d
    3510:	4c 39 f2             	cmp    %r14,%rdx
    3513:	0f 83 33 01 00 00    	jae    364c <rfuse_dev_splice_read+0x24c>
		bufs[page_nr].ops = &nosteal_pipe_buf_ops;
    3519:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
		ret = add_to_pipe(pipe, &bufs[page_nr++]);
    351d:	4c 89 ef             	mov    %r13,%rdi
    3520:	83 c3 01             	add    $0x1,%ebx
		bufs[page_nr].ops = &nosteal_pipe_buf_ops;
    3523:	49 8d 34 c7          	lea    (%r15,%rax,8),%rsi
    3527:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
    352e:	00 
		bufs[page_nr].flags = 0;
    352f:	c7 46 18 00 00 00 00 	movl   $0x0,0x18(%rsi)
		ret = add_to_pipe(pipe, &bufs[page_nr++]);
    3536:	e8 00 00 00 00       	call   353b <rfuse_dev_splice_read+0x13b>
	for (ret = total = 0; page_nr < rcs.nr_segs; total += ret) {
    353b:	48 63 d3             	movslq %ebx,%rdx
		if (unlikely(ret < 0))
    353e:	85 c0                	test   %eax,%eax
    3540:	79 cb                	jns    350d <rfuse_dev_splice_read+0x10d>
	return ret;
    3542:	49 63 f4             	movslq %r12d,%rsi
    3545:	45 85 e4             	test   %r12d,%r12d
    3548:	48 98                	cltq   
    354a:	48 0f 44 f0          	cmove  %rax,%rsi
    354e:	49 89 f4             	mov    %rsi,%r12
	for (; page_nr < rcs.nr_segs; page_nr++)
    3551:	4c 39 f2             	cmp    %r14,%rdx
    3554:	72 0e                	jb     3564 <rfuse_dev_splice_read+0x164>
    3556:	eb 3e                	jmp    3596 <rfuse_dev_splice_read+0x196>
    3558:	83 c3 01             	add    $0x1,%ebx
    355b:	48 63 d3             	movslq %ebx,%rdx
    355e:	48 3b 55 b0          	cmp    -0x50(%rbp),%rdx
    3562:	73 32                	jae    3596 <rfuse_dev_splice_read+0x196>
		put_page(bufs[page_nr].page);
    3564:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
    3568:	49 8b 3c c7          	mov    (%r15,%rax,8),%rdi
	unsigned long head = READ_ONCE(page->compound_head);
    356c:	48 8b 47 08          	mov    0x8(%rdi),%rax
	if (unlikely(head & 1))
    3570:	a8 01                	test   $0x1,%al
    3572:	0f 85 cb 00 00 00    	jne    3643 <rfuse_dev_splice_read+0x243>
    3578:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    357d:	66 90                	xchg   %ax,%ax
	return GEN_UNARY_RMWcc(LOCK_PREFIX "decl", v->counter, e);
    357f:	f0 ff 4f 34          	lock decl 0x34(%rdi)
	if (folio_put_testzero(folio))
    3583:	75 d3                	jne    3558 <rfuse_dev_splice_read+0x158>
		__folio_put(folio);
    3585:	e8 00 00 00 00       	call   358a <rfuse_dev_splice_read+0x18a>
	for (; page_nr < rcs.nr_segs; page_nr++)
    358a:	83 c3 01             	add    $0x1,%ebx
    358d:	48 63 d3             	movslq %ebx,%rdx
    3590:	48 3b 55 b0          	cmp    -0x50(%rbp),%rdx
    3594:	72 ce                	jb     3564 <rfuse_dev_splice_read+0x164>
	kvfree(bufs);
    3596:	4c 89 ff             	mov    %r15,%rdi
    3599:	e8 00 00 00 00       	call   359e <rfuse_dev_splice_read+0x19e>
}
    359e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    35a2:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    35a9:	00 00 
    35ab:	0f 85 c3 00 00 00    	jne    3674 <rfuse_dev_splice_read+0x274>
    35b1:	48 83 c4 60          	add    $0x60,%rsp
    35b5:	4c 89 e0             	mov    %r12,%rax
    35b8:	5b                   	pop    %rbx
    35b9:	41 5c                	pop    %r12
    35bb:	41 5d                	pop    %r13
    35bd:	41 5e                	pop    %r14
    35bf:	41 5f                	pop    %r15
    35c1:	5d                   	pop    %rbp
    35c2:	31 d2                	xor    %edx,%edx
    35c4:	31 c9                	xor    %ecx,%ecx
    35c6:	31 f6                	xor    %esi,%esi
    35c8:	31 ff                	xor    %edi,%edi
    35ca:	45 31 c0             	xor    %r8d,%r8d
    35cd:	e9 00 00 00 00       	jmp    35d2 <rfuse_dev_splice_read+0x1d2>
    35d2:	49 c7 c4 fb ff ff ff 	mov    $0xfffffffffffffffb,%r12
    35d9:	31 d2                	xor    %edx,%edx
	int page_nr = 0;
    35db:	31 db                	xor    %ebx,%ebx
    35dd:	e9 6f ff ff ff       	jmp    3551 <rfuse_dev_splice_read+0x151>
    35e2:	48 8b 07             	mov    (%rdi),%rax
    35e5:	48 c1 e8 33          	shr    $0x33,%rax
    35e9:	83 e0 07             	and    $0x7,%eax
	if (!is_zone_device_page(page))
    35ec:	83 f8 04             	cmp    $0x4,%eax
    35ef:	75 8e                	jne    357f <rfuse_dev_splice_read+0x17f>
	return __put_devmap_managed_page_refs(page, refs);
    35f1:	be 01 00 00 00       	mov    $0x1,%esi
    35f6:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    35fd:	e8 00 00 00 00       	call   3602 <rfuse_dev_splice_read+0x202>
	if (put_devmap_managed_page(&folio->page))
    3602:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
    3609:	84 c0                	test   %al,%al
    360b:	0f 85 47 ff ff ff    	jne    3558 <rfuse_dev_splice_read+0x158>
    3611:	e9 69 ff ff ff       	jmp    357f <rfuse_dev_splice_read+0x17f>
	if (IS_ALIGNED((unsigned long)page, PAGE_SIZE) &&
    3616:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
    361c:	0f 85 5b ff ff ff    	jne    357d <rfuse_dev_splice_read+0x17d>
		(addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
    3622:	48 8b 07             	mov    (%rdi),%rax
    3625:	a9 00 00 01 00       	test   $0x10000,%eax
    362a:	0f 84 4d ff ff ff    	je     357d <rfuse_dev_splice_read+0x17d>
		unsigned long head = READ_ONCE(page[1].compound_head);
    3630:	48 8b 47 48          	mov    0x48(%rdi),%rax
			return (const struct page *)(head - 1);
    3634:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    3638:	a8 01                	test   $0x1,%al
    363a:	48 0f 45 fa          	cmovne %rdx,%rdi
    363e:	e9 3a ff ff ff       	jmp    357d <rfuse_dev_splice_read+0x17d>
		return head - 1;
    3643:	48 8d 78 ff          	lea    -0x1(%rax),%rdi
    3647:	e9 31 ff ff ff       	jmp    357d <rfuse_dev_splice_read+0x17d>
	return ret;
    364c:	49 63 d4             	movslq %r12d,%rdx
    364f:	45 85 e4             	test   %r12d,%r12d
    3652:	48 98                	cltq   
    3654:	48 0f 44 d0          	cmove  %rax,%rdx
    3658:	49 89 d4             	mov    %rdx,%r12
    365b:	e9 36 ff ff ff       	jmp    3596 <rfuse_dev_splice_read+0x196>
	for (ret = total = 0; page_nr < rcs.nr_segs; total += ret) {
    3660:	45 31 e4             	xor    %r12d,%r12d
    3663:	e9 2e ff ff ff       	jmp    3596 <rfuse_dev_splice_read+0x196>
		return -EPERM;
    3668:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
    366f:	e9 2a ff ff ff       	jmp    359e <rfuse_dev_splice_read+0x19e>
}
    3674:	e8 00 00 00 00       	call   3679 <rfuse_dev_splice_read+0x279>
		return -ENOMEM;
    3679:	49 c7 c4 f4 ff ff ff 	mov    $0xfffffffffffffff4,%r12
    3680:	e9 19 ff ff ff       	jmp    359e <rfuse_dev_splice_read+0x19e>
    3685:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    368c:	00 00 00 00 

0000000000003690 <__pfx_rfuse_dev_do_write>:
    3690:	90                   	nop
    3691:	90                   	nop
    3692:	90                   	nop
    3693:	90                   	nop
    3694:	90                   	nop
    3695:	90                   	nop
    3696:	90                   	nop
    3697:	90                   	nop
    3698:	90                   	nop
    3699:	90                   	nop
    369a:	90                   	nop
    369b:	90                   	nop
    369c:	90                   	nop
    369d:	90                   	nop
    369e:	90                   	nop
    369f:	90                   	nop

00000000000036a0 <rfuse_dev_do_write>:
ssize_t rfuse_dev_do_write(struct fuse_dev *fud, struct iov_iter *from, unsigned nbytes, size_t index){
    36a0:	e8 00 00 00 00       	call   36a5 <rfuse_dev_do_write+0x5>
    36a5:	55                   	push   %rbp
    36a6:	48 89 e5             	mov    %rsp,%rbp
    36a9:	41 57                	push   %r15
    36ab:	41 56                	push   %r14
    36ad:	41 89 d6             	mov    %edx,%r14d
    36b0:	41 55                	push   %r13
    36b2:	41 54                	push   %r12
    36b4:	53                   	push   %rbx
    36b5:	48 89 cb             	mov    %rcx,%rbx
	struct rfuse_copy_state rcs;	
    36b8:	b9 0a 00 00 00       	mov    $0xa,%ecx
ssize_t rfuse_dev_do_write(struct fuse_dev *fud, struct iov_iter *from, unsigned nbytes, size_t index){
    36bd:	48 83 ec 58          	sub    $0x58,%rsp
	struct fuse_conn *fc = fud->fc;
    36c1:	48 8b 17             	mov    (%rdi),%rdx
	struct rfuse_copy_state rcs;	
    36c4:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
ssize_t rfuse_dev_do_write(struct fuse_dev *fud, struct iov_iter *from, unsigned nbytes, size_t index){
    36c8:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    36cf:	00 00 
    36d1:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    36d5:	31 c0                	xor    %eax,%eax
	return fc->riq[id];
    36d7:	48 8b 92 d0 00 00 00 	mov    0xd0(%rdx),%rdx
	struct rfuse_copy_state rcs;	
    36de:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	int riq_id = (int)((index & RFUSE_RIQ_ID_MASK) >> 16);
    36e1:	48 89 d8             	mov    %rbx,%rax
	int req_index = (int)((index & RFUSE_REQ_IDX_MASK) >> 32);
    36e4:	48 c1 eb 18          	shr    $0x18,%rbx
	rfuse_copy_init(&rcs, 0 ,from);	
    36e8:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
	int riq_id = (int)((index & RFUSE_RIQ_ID_MASK) >> 16);
    36ec:	48 c1 e8 10          	shr    $0x10,%rax
	struct rfuse_req *r_req = (struct rfuse_req*)&riq->kreq[req_index];
    36f0:	81 e3 00 ff ff 00    	and    $0xffff00,%ebx
	int riq_id = (int)((index & RFUSE_RIQ_ID_MASK) >> 16);
    36f6:	0f b6 c0             	movzbl %al,%eax
	struct rfuse_req *r_req = (struct rfuse_req*)&riq->kreq[req_index];
    36f9:	48 8b 04 c2          	mov    (%rdx,%rax,8),%rax
	rfuse_copy_init(&rcs, 0 ,from);	
    36fd:	48 89 f2             	mov    %rsi,%rdx
    3700:	31 f6                	xor    %esi,%esi
	struct rfuse_req *r_req = (struct rfuse_req*)&riq->kreq[req_index];
    3702:	48 03 98 a0 00 00 00 	add    0xa0(%rax),%rbx
	rp = r_req->rp;
    3709:	4c 8b ab f0 00 00 00 	mov    0xf0(%rbx),%r13
	rfuse_copy_init(&rcs, 0 ,from);	
    3710:	e8 fb c8 ff ff       	call   10 <rfuse_copy_init>
	rcs.r_req = r_req;
    3715:	48 89 5d 88          	mov    %rbx,-0x78(%rbp)
	if(r_req->out.arglen > nbytes)
    3719:	44 3b 73 38          	cmp    0x38(%rbx),%r14d
    371d:	73 04                	jae    3723 <rfuse_dev_do_write+0x83>
		r_req->out.arglen = nbytes;
    371f:	44 89 73 38          	mov    %r14d,0x38(%rbx)
	for(i =0; i < rp->num_pages && (nbytes); i++){
    3723:	41 8b 45 10          	mov    0x10(%r13),%eax
    3727:	45 31 e4             	xor    %r12d,%r12d
    372a:	85 c0                	test   %eax,%eax
    372c:	74 54                	je     3782 <rfuse_dev_do_write+0xe2>
    372e:	45 85 f6             	test   %r14d,%r14d
    3731:	74 4f                	je     3782 <rfuse_dev_do_write+0xe2>
    3733:	45 31 ff             	xor    %r15d,%r15d
    3736:	eb 15                	jmp    374d <rfuse_dev_do_write+0xad>
		nbytes -= count;
    3738:	41 29 de             	sub    %ebx,%r14d
		res += count;
    373b:	49 01 dc             	add    %rbx,%r12
	for(i =0; i < rp->num_pages && (nbytes); i++){
    373e:	41 83 c7 01          	add    $0x1,%r15d
    3742:	45 3b 7d 10          	cmp    0x10(%r13),%r15d
    3746:	73 3a                	jae    3782 <rfuse_dev_do_write+0xe2>
    3748:	45 85 f6             	test   %r14d,%r14d
    374b:	74 35                	je     3782 <rfuse_dev_do_write+0xe2>
		unsigned int offset = rp->descs[i].offset;
    374d:	49 8b 45 08          	mov    0x8(%r13),%rax
    3751:	44 89 fe             	mov    %r15d,%esi
		err = rfuse_copy_page(&rcs, &rp->pages[i],offset, count,0);
    3754:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
		unsigned int offset = rp->descs[i].offset;
    3758:	48 c1 e6 03          	shl    $0x3,%rsi
    375c:	48 01 f0             	add    %rsi,%rax
		unsigned int count = min(nbytes,rp->descs[i].length);
    375f:	8b 18                	mov    (%rax),%ebx
		err = rfuse_copy_page(&rcs, &rp->pages[i],offset, count,0);
    3761:	8b 50 04             	mov    0x4(%rax),%edx
		unsigned int count = min(nbytes,rp->descs[i].length);
    3764:	41 39 de             	cmp    %ebx,%r14d
    3767:	49 0f 46 de          	cmovbe %r14,%rbx
		err = rfuse_copy_page(&rcs, &rp->pages[i],offset, count,0);
    376b:	49 03 75 00          	add    0x0(%r13),%rsi
    376f:	45 31 c0             	xor    %r8d,%r8d
    3772:	89 d9                	mov    %ebx,%ecx
    3774:	e8 97 ce ff ff       	call   610 <rfuse_copy_page>
		if(err)
    3779:	85 c0                	test   %eax,%eax
    377b:	74 bb                	je     3738 <rfuse_dev_do_write+0x98>
			return err;
    377d:	4c 63 e0             	movslq %eax,%r12
    3780:	eb 09                	jmp    378b <rfuse_dev_do_write+0xeb>
	rfuse_copy_finish(&rcs);
    3782:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
    3786:	e8 95 cd ff ff       	call   520 <rfuse_copy_finish>
}
    378b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    378f:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    3796:	00 00 
    3798:	75 21                	jne    37bb <rfuse_dev_do_write+0x11b>
    379a:	48 83 c4 58          	add    $0x58,%rsp
    379e:	4c 89 e0             	mov    %r12,%rax
    37a1:	5b                   	pop    %rbx
    37a2:	41 5c                	pop    %r12
    37a4:	41 5d                	pop    %r13
    37a6:	41 5e                	pop    %r14
    37a8:	41 5f                	pop    %r15
    37aa:	5d                   	pop    %rbp
    37ab:	31 d2                	xor    %edx,%edx
    37ad:	31 c9                	xor    %ecx,%ecx
    37af:	31 f6                	xor    %esi,%esi
    37b1:	31 ff                	xor    %edi,%edi
    37b3:	45 31 c0             	xor    %r8d,%r8d
    37b6:	e9 00 00 00 00       	jmp    37bb <rfuse_dev_do_write+0x11b>
    37bb:	e8 00 00 00 00       	call   37c0 <__pfx_rfuse_dev_splice_write>

00000000000037c0 <__pfx_rfuse_dev_splice_write>:
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

00000000000037d0 <rfuse_dev_splice_write>:
{
    37d0:	e8 00 00 00 00       	call   37d5 <rfuse_dev_splice_write+0x5>
    37d5:	55                   	push   %rbp
    37d6:	48 89 e5             	mov    %rsp,%rbp
    37d9:	41 57                	push   %r15
    37db:	49 89 cf             	mov    %rcx,%r15
	struct rfuse_copy_state rcs;
    37de:	b9 0a 00 00 00       	mov    $0xa,%ecx
{
    37e3:	41 56                	push   %r14
    37e5:	41 55                	push   %r13
    37e7:	41 54                	push   %r12
    37e9:	53                   	push   %rbx
    37ea:	48 89 fb             	mov    %rdi,%rbx
	struct rfuse_copy_state rcs;
    37ed:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
{
    37f1:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    37f8:	44 89 85 60 ff ff ff 	mov    %r8d,-0xa0(%rbp)
    37ff:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    3806:	00 00 
    3808:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    380c:	31 c0                	xor    %eax,%eax
	struct rfuse_copy_state rcs;
    380e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
	return READ_ONCE(file->private_data);
    3811:	48 8b 86 c8 00 00 00 	mov    0xc8(%rsi),%rax
	if (!fud)
    3818:	48 85 c0             	test   %rax,%rax
    381b:	0f 84 2f 04 00 00    	je     3c50 <rfuse_dev_splice_write+0x480>
	riq_id = (int)((*ppos & RFUSE_RIQ_ID_MASK) >> 16);
    3821:	48 8b 0a             	mov    (%rdx),%rcx
	return fc->riq[id];
    3824:	48 8b 10             	mov    (%rax),%rdx
	pipe_lock(pipe);
    3827:	48 89 df             	mov    %rbx,%rdi
	riq_id = (int)((*ppos & RFUSE_RIQ_ID_MASK) >> 16);
    382a:	48 89 c8             	mov    %rcx,%rax
	return fc->riq[id];
    382d:	48 8b 92 d0 00 00 00 	mov    0xd0(%rdx),%rdx
	riq_id = (int)((*ppos & RFUSE_RIQ_ID_MASK) >> 16);
    3834:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
    383b:	48 c1 e8 10          	shr    $0x10,%rax
    383f:	0f b6 c0             	movzbl %al,%eax
	r_req = (struct rfuse_req*)&riq->kreq[req_index];
    3842:	48 8b 04 c2          	mov    (%rdx,%rax,8),%rax
    3846:	48 8b 80 a0 00 00 00 	mov    0xa0(%rax),%rax
    384d:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
	pipe_lock(pipe);
    3854:	e8 00 00 00 00       	call   3859 <rfuse_dev_splice_write+0x89>
	tail = pipe->tail;
    3859:	8b 4b 54             	mov    0x54(%rbx),%ecx
	mask = pipe->ring_size - 1;
    385c:	8b 43 5c             	mov    0x5c(%rbx),%eax
    385f:	ba ff ff ff ff       	mov    $0xffffffff,%edx
	head = pipe->head;
    3864:	44 8b 53 50          	mov    0x50(%rbx),%r10d
    3868:	be c0 0c 00 00       	mov    $0xcc0,%esi
	mask = pipe->ring_size - 1;
    386d:	44 8d 40 ff          	lea    -0x1(%rax),%r8d
	count = head - tail;
    3871:	89 8d 70 ff ff ff    	mov    %ecx,-0x90(%rbp)
    3877:	45 89 d3             	mov    %r10d,%r11d
	mask = pipe->ring_size - 1;
    387a:	44 89 85 68 ff ff ff 	mov    %r8d,-0x98(%rbp)
	count = head - tail;
    3881:	41 29 cb             	sub    %ecx,%r11d
    3884:	44 89 95 6c ff ff ff 	mov    %r10d,-0x94(%rbp)
	if (unlikely(check_mul_overflow(n, size, &bytes)))
    388b:	44 89 d8             	mov    %r11d,%eax
    388e:	44 89 9d 78 ff ff ff 	mov    %r11d,-0x88(%rbp)
    3895:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    3899:	48 c1 e7 03          	shl    $0x3,%rdi
	return kvmalloc_node(size, flags, NUMA_NO_NODE);
    389d:	e8 00 00 00 00       	call   38a2 <rfuse_dev_splice_write+0xd2>
    38a2:	49 89 c5             	mov    %rax,%r13
	if (!bufs) {
    38a5:	48 85 c0             	test   %rax,%rax
    38a8:	0f 84 61 03 00 00    	je     3c0f <rfuse_dev_splice_write+0x43f>
	for (idx = tail; idx != head && rem < len; idx++)
    38ae:	4d 85 ff             	test   %r15,%r15
    38b1:	0f 84 3e 03 00 00    	je     3bf5 <rfuse_dev_splice_write+0x425>
    38b7:	8b 8d 70 ff ff ff    	mov    -0x90(%rbp),%ecx
    38bd:	44 8b 95 6c ff ff ff 	mov    -0x94(%rbp),%r10d
    38c4:	44 8b 9d 78 ff ff ff 	mov    -0x88(%rbp),%r11d
    38cb:	44 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%r8d
    38d2:	41 39 ca             	cmp    %ecx,%r10d
    38d5:	0f 84 1a 03 00 00    	je     3bf5 <rfuse_dev_splice_write+0x425>
		rem += pipe->bufs[idx & mask].len;
    38db:	48 8b b3 98 00 00 00 	mov    0x98(%rbx),%rsi
	for (idx = tail; idx != head && rem < len; idx++)
    38e2:	89 c8                	mov    %ecx,%eax
	rem = 0;
    38e4:	31 d2                	xor    %edx,%edx
		rem += pipe->bufs[idx & mask].len;
    38e6:	44 89 c7             	mov    %r8d,%edi
    38e9:	21 c7                	and    %eax,%edi
	for (idx = tail; idx != head && rem < len; idx++)
    38eb:	83 c0 01             	add    $0x1,%eax
		rem += pipe->bufs[idx & mask].len;
    38ee:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
    38f2:	8b 7c fe 0c          	mov    0xc(%rsi,%rdi,8),%edi
    38f6:	48 01 fa             	add    %rdi,%rdx
	for (idx = tail; idx != head && rem < len; idx++)
    38f9:	41 39 c2             	cmp    %eax,%r10d
    38fc:	74 05                	je     3903 <rfuse_dev_splice_write+0x133>
    38fe:	4c 39 fa             	cmp    %r15,%rdx
    3901:	72 e3                	jb     38e6 <rfuse_dev_splice_write+0x116>
	ret = -EINVAL;
    3903:	49 c7 c6 ea ff ff ff 	mov    $0xffffffffffffffea,%r14
	if (rem < len)
    390a:	4c 39 fa             	cmp    %r15,%rdx
    390d:	0f 82 51 02 00 00    	jb     3b64 <rfuse_dev_splice_write+0x394>
		if (WARN_ON(nbuf >= count || tail == head))
    3913:	45 85 db             	test   %r11d,%r11d
    3916:	0f 84 19 03 00 00    	je     3c35 <rfuse_dev_splice_write+0x465>
    391c:	48 89 df             	mov    %rbx,%rdi
    391f:	4c 89 ea             	mov    %r13,%rdx
    3922:	4c 89 bd 48 ff ff ff 	mov    %r15,-0xb8(%rbp)
	nbuf = 0;
    3929:	45 31 e4             	xor    %r12d,%r12d
    392c:	4c 89 fb             	mov    %r15,%rbx
    392f:	41 89 cd             	mov    %ecx,%r13d
    3932:	eb 60                	jmp    3994 <rfuse_dev_splice_write+0x1c4>
			*obuf = *ibuf;
    3934:	49 8b 06             	mov    (%r14),%rax
			tail++;
    3937:	41 83 c5 01          	add    $0x1,%r13d
		nbuf++;
    393b:	41 83 c4 01          	add    $0x1,%r12d
			*obuf = *ibuf;
    393f:	49 89 07             	mov    %rax,(%r15)
    3942:	49 8b 46 08          	mov    0x8(%r14),%rax
    3946:	49 89 47 08          	mov    %rax,0x8(%r15)
    394a:	49 8b 46 10          	mov    0x10(%r14),%rax
    394e:	49 89 47 10          	mov    %rax,0x10(%r15)
    3952:	49 8b 46 18          	mov    0x18(%r14),%rax
    3956:	49 89 47 18          	mov    %rax,0x18(%r15)
    395a:	49 8b 46 20          	mov    0x20(%r14),%rax
    395e:	49 89 47 20          	mov    %rax,0x20(%r15)
			ibuf->ops = NULL;
    3962:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
    3969:	00 
		rem -= obuf->len;
    396a:	41 8b 47 0c          	mov    0xc(%r15),%eax
			pipe->tail = tail;
    396e:	44 89 6f 54          	mov    %r13d,0x54(%rdi)
	while (rem) {
    3972:	48 29 c3             	sub    %rax,%rbx
    3975:	0f 84 e9 00 00 00    	je     3a64 <rfuse_dev_splice_write+0x294>
		if (WARN_ON(nbuf >= count || tail == head))
    397b:	45 39 dc             	cmp    %r11d,%r12d
    397e:	0f 83 2d 02 00 00    	jae    3bb1 <rfuse_dev_splice_write+0x3e1>
    3984:	45 39 d5             	cmp    %r10d,%r13d
    3987:	0f 84 24 02 00 00    	je     3bb1 <rfuse_dev_splice_write+0x3e1>
		ibuf = &pipe->bufs[tail & mask];
    398d:	48 8b b7 98 00 00 00 	mov    0x98(%rdi),%rsi
    3994:	44 89 e8             	mov    %r13d,%eax
    3997:	44 21 c0             	and    %r8d,%eax
    399a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    399e:	4c 8d 34 c6          	lea    (%rsi,%rax,8),%r14
		obuf = &bufs[nbuf];
    39a2:	44 89 e0             	mov    %r12d,%eax
    39a5:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    39a9:	4c 8d 3c c2          	lea    (%rdx,%rax,8),%r15
		if (rem >= ibuf->len) {
    39ad:	41 8b 46 0c          	mov    0xc(%r14),%eax
    39b1:	48 39 c3             	cmp    %rax,%rbx
    39b4:	0f 83 7a ff ff ff    	jae    3934 <rfuse_dev_splice_write+0x164>
	return buf->ops->get(pipe, buf);
    39ba:	49 8b 46 10          	mov    0x10(%r14),%rax
    39be:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
    39c5:	4c 89 f6             	mov    %r14,%rsi
    39c8:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    39cf:	44 89 9d 64 ff ff ff 	mov    %r11d,-0x9c(%rbp)
    39d6:	48 8b 40 18          	mov    0x18(%rax),%rax
    39da:	44 89 85 68 ff ff ff 	mov    %r8d,-0x98(%rbp)
    39e1:	44 89 95 6c ff ff ff 	mov    %r10d,-0x94(%rbp)
    39e8:	e8 00 00 00 00       	call   39ed <rfuse_dev_splice_write+0x21d>
			if (!pipe_buf_get(pipe, ibuf))
    39ed:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
    39f4:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    39fb:	84 c0                	test   %al,%al
    39fd:	0f 84 20 02 00 00    	je     3c23 <rfuse_dev_splice_write+0x453>
			*obuf = *ibuf;
    3a03:	49 8b 06             	mov    (%r14),%rax
			ibuf->len -= obuf->len;
    3a06:	44 8b 9d 64 ff ff ff 	mov    -0x9c(%rbp),%r11d
		nbuf++;
    3a0d:	41 83 c4 01          	add    $0x1,%r12d
			ibuf->len -= obuf->len;
    3a11:	44 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%r8d
    3a18:	44 8b 95 6c ff ff ff 	mov    -0x94(%rbp),%r10d
			*obuf = *ibuf;
    3a1f:	49 89 07             	mov    %rax,(%r15)
    3a22:	49 8b 46 08          	mov    0x8(%r14),%rax
    3a26:	49 89 47 08          	mov    %rax,0x8(%r15)
    3a2a:	49 8b 46 10          	mov    0x10(%r14),%rax
    3a2e:	49 89 47 10          	mov    %rax,0x10(%r15)
    3a32:	49 8b 46 18          	mov    0x18(%r14),%rax
    3a36:	49 89 47 18          	mov    %rax,0x18(%r15)
    3a3a:	49 8b 46 20          	mov    0x20(%r14),%rax
			obuf->len = rem;
    3a3e:	41 89 5f 0c          	mov    %ebx,0xc(%r15)
			*obuf = *ibuf;
    3a42:	49 89 47 20          	mov    %rax,0x20(%r15)
			obuf->flags &= ~PIPE_BUF_FLAG_GIFT;
    3a46:	41 83 67 18 fb       	andl   $0xfffffffb,0x18(%r15)
			ibuf->offset += obuf->len;
    3a4b:	41 01 5e 08          	add    %ebx,0x8(%r14)
			ibuf->len -= obuf->len;
    3a4f:	41 8b 47 0c          	mov    0xc(%r15),%eax
    3a53:	41 29 46 0c          	sub    %eax,0xc(%r14)
		rem -= obuf->len;
    3a57:	41 8b 47 0c          	mov    0xc(%r15),%eax
	while (rem) {
    3a5b:	48 29 c3             	sub    %rax,%rbx
    3a5e:	0f 85 17 ff ff ff    	jne    397b <rfuse_dev_splice_write+0x1ab>
	rcs.nr_segs = nbuf;
    3a64:	4c 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%r15
    3a6b:	49 89 d5             	mov    %rdx,%r13
    3a6e:	48 89 fb             	mov    %rdi,%rbx
    3a71:	44 89 e0             	mov    %r12d,%eax
	req_index = (int)((*ppos & RFUSE_REQ_IDX_MASK) >> 32);
    3a74:	4c 8b b5 58 ff ff ff 	mov    -0xa8(%rbp),%r14
    3a7b:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
	pipe_unlock(pipe);
    3a82:	48 89 df             	mov    %rbx,%rdi
	r_req = (struct rfuse_req*)&riq->kreq[req_index];
    3a85:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
	req_index = (int)((*ppos & RFUSE_REQ_IDX_MASK) >> 32);
    3a8c:	49 c1 ee 18          	shr    $0x18,%r14
	r_req = (struct rfuse_req*)&riq->kreq[req_index];
    3a90:	41 81 e6 00 ff ff 00 	and    $0xffff00,%r14d
    3a97:	4c 01 f0             	add    %r14,%rax
    3a9a:	49 89 c6             	mov    %rax,%r14
	pipe_unlock(pipe);
    3a9d:	e8 00 00 00 00       	call   3aa2 <rfuse_dev_splice_write+0x2d2>
	rfuse_copy_init(&rcs, 0, NULL);
    3aa2:	31 d2                	xor    %edx,%edx
    3aa4:	31 f6                	xor    %esi,%esi
    3aa6:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
    3aaa:	e8 61 c5 ff ff       	call   10 <rfuse_copy_init>
	rcs.nr_segs = nbuf;
    3aaf:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
	rcs.pipebufs = bufs;
    3ab6:	4c 89 6d 98          	mov    %r13,-0x68(%rbp)
	rcs.pipe = pipe;
    3aba:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
	rcs.nr_segs = nbuf;
    3abe:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
	rcs.r_req = r_req;
    3ac2:	4c 89 75 88          	mov    %r14,-0x78(%rbp)
	if (flags & SPLICE_F_MOVE)
    3ac6:	f6 85 60 ff ff ff 01 	testb  $0x1,-0xa0(%rbp)
    3acd:	74 04                	je     3ad3 <rfuse_dev_splice_write+0x303>
		rcs.move_pages = 1;
    3acf:	80 4d c8 01          	orb    $0x1,-0x38(%rbp)
	if (!r_req->page_replace)
    3ad3:	41 0f b6 96 e8 00 00 	movzbl 0xe8(%r14),%edx
    3ada:	00 
    3adb:	84 d2                	test   %dl,%dl
    3add:	78 04                	js     3ae3 <rfuse_dev_splice_write+0x313>
		rcs->move_pages = 0;
    3adf:	80 65 c8 fe          	andb   $0xfe,-0x38(%rbp)
	err = rfuse_copy_pages(rcs, len, r_req->page_zeroing);
    3ae3:	c0 ea 06             	shr    $0x6,%dl
    3ae6:	44 89 fe             	mov    %r15d,%esi
    3ae9:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
    3aed:	83 e2 01             	and    $0x1,%edx
    3af0:	e8 0b d4 ff ff       	call   f00 <rfuse_copy_pages>
	rfuse_copy_finish(rcs);
    3af5:	48 8d 7d 80          	lea    -0x80(%rbp),%rdi
	err = rfuse_copy_pages(rcs, len, r_req->page_zeroing);
    3af9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%rbp)
	rfuse_copy_finish(rcs);
    3aff:	e8 1c ca ff ff       	call   520 <rfuse_copy_finish>
    3b04:	49 8b 46 48          	mov    0x48(%r14),%rax
	if(test_bit(FR_BACKGROUND, &r_req->flags)) {
    3b08:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
    3b0f:	a8 04                	test   $0x4,%al
    3b11:	0f 85 25 01 00 00    	jne    3c3c <rfuse_dev_splice_write+0x46c>
		asm volatile(LOCK_PREFIX "orb %b1,%0"
    3b17:	f0 41 80 4e 49 02    	lock orb $0x2,0x49(%r14)
    3b1d:	49 8b 56 68          	mov    0x68(%r14),%rdx
    3b21:	49 8d 46 68          	lea    0x68(%r14),%rax
    3b25:	49 8d 7e 60          	lea    0x60(%r14),%rdi
		if(waitqueue_active(&r_req->waitq)) {
    3b29:	48 39 c2             	cmp    %rax,%rdx
    3b2c:	74 1f                	je     3b4d <rfuse_dev_splice_write+0x37d>
			wake_up(&r_req->waitq);
    3b2e:	31 c9                	xor    %ecx,%ecx
    3b30:	ba 01 00 00 00       	mov    $0x1,%edx
    3b35:	be 03 00 00 00       	mov    $0x3,%esi
    3b3a:	44 89 85 78 ff ff ff 	mov    %r8d,-0x88(%rbp)
    3b41:	e8 00 00 00 00       	call   3b46 <rfuse_dev_splice_write+0x376>
    3b46:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
	return err ? err : len;
    3b4d:	45 85 c0             	test   %r8d,%r8d
	pipe_lock(pipe);
    3b50:	48 89 df             	mov    %rbx,%rdi
	return err ? err : len;
    3b53:	45 0f 44 c7          	cmove  %r15d,%r8d
	ret = rfuse_dev_do_splice_write(fud, r_req, &rcs, len);
    3b57:	4d 63 f0             	movslq %r8d,%r14
	pipe_lock(pipe);
    3b5a:	e8 00 00 00 00       	call   3b5f <rfuse_dev_splice_write+0x38f>
	for (idx = 0; idx < nbuf; idx++)
    3b5f:	45 85 e4             	test   %r12d,%r12d
    3b62:	75 5c                	jne    3bc0 <rfuse_dev_splice_write+0x3f0>
	pipe_unlock(pipe);
    3b64:	48 89 df             	mov    %rbx,%rdi
    3b67:	e8 00 00 00 00       	call   3b6c <rfuse_dev_splice_write+0x39c>
	kvfree(bufs);
    3b6c:	4c 89 ef             	mov    %r13,%rdi
    3b6f:	e8 00 00 00 00       	call   3b74 <rfuse_dev_splice_write+0x3a4>
}
    3b74:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3b78:	65 48 2b 04 25 28 00 	sub    %gs:0x28,%rax
    3b7f:	00 00 
    3b81:	0f 85 d5 00 00 00    	jne    3c5c <rfuse_dev_splice_write+0x48c>
    3b87:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    3b8e:	4c 89 f0             	mov    %r14,%rax
    3b91:	5b                   	pop    %rbx
    3b92:	41 5c                	pop    %r12
    3b94:	41 5d                	pop    %r13
    3b96:	41 5e                	pop    %r14
    3b98:	41 5f                	pop    %r15
    3b9a:	5d                   	pop    %rbp
    3b9b:	31 d2                	xor    %edx,%edx
    3b9d:	31 c9                	xor    %ecx,%ecx
    3b9f:	31 f6                	xor    %esi,%esi
    3ba1:	31 ff                	xor    %edi,%edi
    3ba3:	45 31 c0             	xor    %r8d,%r8d
    3ba6:	45 31 d2             	xor    %r10d,%r10d
    3ba9:	45 31 db             	xor    %r11d,%r11d
    3bac:	e9 00 00 00 00       	jmp    3bb1 <rfuse_dev_splice_write+0x3e1>
		if (WARN_ON(nbuf >= count || tail == head))
    3bb1:	49 89 d5             	mov    %rdx,%r13
    3bb4:	48 89 fb             	mov    %rdi,%rbx
    3bb7:	0f 0b                	ud2    
	ret = -EINVAL;
    3bb9:	49 c7 c6 ea ff ff ff 	mov    $0xffffffffffffffea,%r14
    3bc0:	4b 8d 04 a4          	lea    (%r12,%r12,4),%rax
    3bc4:	4d 89 ef             	mov    %r13,%r15
    3bc7:	4d 8d 64 c5 00       	lea    0x0(%r13,%rax,8),%r12
	const struct pipe_buf_operations *ops = buf->ops;
    3bcc:	49 8b 47 10          	mov    0x10(%r15),%rax
	ops->release(pipe, buf);
    3bd0:	4c 89 fe             	mov    %r15,%rsi
	for (idx = 0; idx < nbuf; idx++)
    3bd3:	49 83 c7 28          	add    $0x28,%r15
    3bd7:	48 89 df             	mov    %rbx,%rdi
	buf->ops = NULL;
    3bda:	49 c7 47 e8 00 00 00 	movq   $0x0,-0x18(%r15)
    3be1:	00 
	ops->release(pipe, buf);
    3be2:	48 8b 40 08          	mov    0x8(%rax),%rax
    3be6:	e8 00 00 00 00       	call   3beb <rfuse_dev_splice_write+0x41b>
    3beb:	4d 39 fc             	cmp    %r15,%r12
    3bee:	75 dc                	jne    3bcc <rfuse_dev_splice_write+0x3fc>
    3bf0:	e9 6f ff ff ff       	jmp    3b64 <rfuse_dev_splice_write+0x394>
	ret = -EINVAL;
    3bf5:	49 c7 c6 ea ff ff ff 	mov    $0xffffffffffffffea,%r14
	if (rem < len)
    3bfc:	4d 85 ff             	test   %r15,%r15
    3bff:	0f 85 5f ff ff ff    	jne    3b64 <rfuse_dev_splice_write+0x394>
    3c05:	31 c0                	xor    %eax,%eax
	nbuf = 0;
    3c07:	45 31 e4             	xor    %r12d,%r12d
    3c0a:	e9 65 fe ff ff       	jmp    3a74 <rfuse_dev_splice_write+0x2a4>
		pipe_unlock(pipe);
    3c0f:	48 89 df             	mov    %rbx,%rdi
		return -ENOMEM;
    3c12:	49 c7 c6 f4 ff ff ff 	mov    $0xfffffffffffffff4,%r14
		pipe_unlock(pipe);
    3c19:	e8 00 00 00 00       	call   3c1e <rfuse_dev_splice_write+0x44e>
		return -ENOMEM;
    3c1e:	e9 51 ff ff ff       	jmp    3b74 <rfuse_dev_splice_write+0x3a4>
	ret = -EINVAL;
    3c23:	49 89 d5             	mov    %rdx,%r13
    3c26:	48 89 fb             	mov    %rdi,%rbx
    3c29:	49 c7 c6 ea ff ff ff 	mov    $0xffffffffffffffea,%r14
    3c30:	e9 2a ff ff ff       	jmp    3b5f <rfuse_dev_splice_write+0x38f>
		if (WARN_ON(nbuf >= count || tail == head))
    3c35:	0f 0b                	ud2    
	for (idx = 0; idx < nbuf; idx++)
    3c37:	e9 28 ff ff ff       	jmp    3b64 <rfuse_dev_splice_write+0x394>
		rfuse_request_end(r_req);
    3c3c:	4c 89 f7             	mov    %r14,%rdi
    3c3f:	e8 00 00 00 00       	call   3c44 <rfuse_dev_splice_write+0x474>
    3c44:	44 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%r8d
    3c4b:	e9 fd fe ff ff       	jmp    3b4d <rfuse_dev_splice_write+0x37d>
		return -EPERM;
    3c50:	49 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%r14
    3c57:	e9 18 ff ff ff       	jmp    3b74 <rfuse_dev_splice_write+0x3a4>
}
    3c5c:	e8 00 00 00 00       	call   3c61 <rfuse_dev_splice_write+0x491>

Disassembly of section .altinstr_replacement:

0000000000000000 <.altinstr_replacement>:
   0:	e8 00 00 00 00       	call   5 <.altinstr_replacement+0x5>
   5:	e8 00 00 00 00       	call   a <__UNIQUE_ID___addressable___SCK__preempt_schedule307.7+0x2>

Disassembly of section .text.unlikely:

0000000000000000 <rfuse_validate_mmap_request.cold>:
	return PAGE_SIZE << compound_order(page);
   0:	0f b6 d1             	movzbl %cl,%edx
   3:	be 00 10 00 00       	mov    $0x1000,%esi
   8:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
   f:	e8 00 00 00 00       	call   14 <rfuse_validate_mmap_request.cold+0x14>
  14:	31 c0                	xor    %eax,%eax
  16:	e9 00 00 00 00       	jmp    1b <rfuse_copy_init+0xb>

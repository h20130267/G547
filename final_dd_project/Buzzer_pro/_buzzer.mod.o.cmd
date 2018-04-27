cmd_/home/lifeline/Desktop/Buzzer_pro/buzzer.mod.o := gcc -Wp,-MD,/home/lifeline/Desktop/Buzzer_pro/.buzzer.mod.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include  -I./arch/x86/include -I./arch/x86/include/generated  -I./include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -Iubuntu/include  -D__KERNEL__ -fno-pie -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -fno-pie -no-pie -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -DCONFIG_X86_X32_ABI -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_SSSE3=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -DCONFIG_AS_AVX512=1 -DCONFIG_AS_SHA1_NI=1 -DCONFIG_AS_SHA256_NI=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -DRETPOLINE -fno-delete-null-pointer-checks -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=1024 -fstack-protector-strong -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -pg -mfentry -DCC_USING_FENTRY -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init  -DKBUILD_BASENAME='"buzzer.mod"'  -DKBUILD_MODNAME='"buzzer"' -DMODULE  -c -o /home/lifeline/Desktop/Buzzer_pro/buzzer.mod.o /home/lifeline/Desktop/Buzzer_pro/buzzer.mod.c

source_/home/lifeline/Desktop/Buzzer_pro/buzzer.mod.o := /home/lifeline/Desktop/Buzzer_pro/buzzer.mod.c

deps_/home/lifeline/Desktop/Buzzer_pro/buzzer.mod.o := \
    $(wildcard include/config/module/unload.h) \
  include/linux/module.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  arch/x86/include/uapi/asm/types.h \
  include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/x86/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  arch/x86/include/uapi/asm/posix_types_64.h \
  include/uapi/asm-generic/posix_types.h \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  include/uapi/linux/const.h \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/lock/down/kernel.h) \
    $(wildcard include/config/panic/timeout.h) \
  /usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h \
  include/linux/linkage.h \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
  arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  include/linux/bitops.h \
  arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  arch/x86/include/asm/alternative.h \
  arch/x86/include/asm/asm.h \
  arch/x86/include/asm/rmwcc.h \
  arch/x86/include/asm/barrier.h \
    $(wildcard include/config/x86/ppro/fence.h) \
  arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
    $(wildcard include/config/x86/p6/nop.h) \
  include/asm-generic/barrier.h \
  include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  include/asm-generic/bitops/sched.h \
  arch/x86/include/asm/arch_hweight.h \
  arch/x86/include/asm/cpufeatures.h \
  arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/matom.h) \
    $(wildcard include/config/x86/5level.h) \
    $(wildcard include/config/paravirt.h) \
  arch/x86/include/asm/disabled-features.h \
    $(wildcard include/config/x86/intel/mpx.h) \
    $(wildcard include/config/x86/intel/memory/protection/keys.h) \
    $(wildcard include/config/page/table/isolation.h) \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/le.h \
  arch/x86/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  arch/x86/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/typecheck.h \
  include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/kmsg/ids.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
  include/linux/kern_levels.h \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/uapi/linux/kernel.h \
  include/uapi/linux/sysinfo.h \
  arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  include/linux/dynamic_debug.h \
    $(wildcard include/config/jump/label.h) \
  include/linux/jump_label.h \
  arch/x86/include/asm/jump_label.h \
  include/linux/build_bug.h \
  include/linux/stat.h \
  arch/x86/include/uapi/asm/stat.h \
  include/uapi/linux/stat.h \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/seqlock.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
  include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  arch/x86/include/asm/preempt.h \
  arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
  include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  include/linux/bug.h \
    $(wildcard include/config/bug/on/data/corruption.h) \
  arch/x86/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  include/linux/restart_block.h \
    $(wildcard include/config/compat.h) \
  arch/x86/include/asm/current.h \
  arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/vm86.h) \
    $(wildcard include/config/frame/pointer.h) \
    $(wildcard include/config/ia32/emulation.h) \
  arch/x86/include/asm/page.h \
  arch/x86/include/asm/page_types.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/physical/align.h) \
  arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/randomize/memory.h) \
    $(wildcard include/config/randomize/base.h) \
  arch/x86/include/asm/kaslr.h \
  arch/x86/include/asm/page_64.h \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/x86/mce.h) \
    $(wildcard include/config/x86/vsyscall/emulation.h) \
  include/linux/range.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/linux/pfn.h \
  include/asm-generic/getorder.h \
  arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/feature/names.h) \
    $(wildcard include/config/x86/fast/feature/tests.h) \
  arch/x86/include/asm/processor.h \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/x86/debugctlmsr.h) \
    $(wildcard include/config/cpu/sup/amd.h) \
    $(wildcard include/config/xen.h) \
  arch/x86/include/asm/processor-flags.h \
  arch/x86/include/uapi/asm/processor-flags.h \
  arch/x86/include/asm/math_emu.h \
  arch/x86/include/asm/ptrace.h \
  arch/x86/include/asm/segment.h \
    $(wildcard include/config/x86/32/lazy/gs.h) \
  arch/x86/include/uapi/asm/ptrace.h \
  arch/x86/include/uapi/asm/ptrace-abi.h \
  arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/paravirt/debug.h) \
  arch/x86/include/asm/desc_defs.h \
  arch/x86/include/asm/kmap_types.h \
    $(wildcard include/config/debug/highmem.h) \
  include/asm-generic/kmap_types.h \
  arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/proc/fs.h) \
  arch/x86/include/asm/pgtable_64_types.h \
  arch/x86/include/asm/sparsemem.h \
  include/asm-generic/pgtable-nop4d.h \
  arch/x86/include/asm/nospec-branch.h \
    $(wildcard include/config/retpoline.h) \
  arch/x86/include/asm/alternative-asm.h \
  arch/x86/include/asm/spinlock_types.h \
    $(wildcard include/config/paravirt/spinlocks.h) \
  include/asm-generic/qspinlock_types.h \
  include/asm-generic/qrwlock_types.h \
  include/asm-generic/ptrace.h \
  arch/x86/include/uapi/asm/sigcontext.h \
  arch/x86/include/asm/msr.h \
  arch/x86/include/asm/msr-index.h \
    $(wildcard include/config/control.h) \
    $(wildcard include/config/tdp/nominal.h) \
    $(wildcard include/config/tdp/level/1.h) \
    $(wildcard include/config/tdp/level/2.h) \
    $(wildcard include/config/tdp/control.h) \
  arch/x86/include/uapi/asm/errno.h \
  include/uapi/asm-generic/errno.h \
  include/uapi/asm-generic/errno-base.h \
  arch/x86/include/asm/cpumask.h \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  include/linux/bitmap.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  include/uapi/linux/string.h \
  arch/x86/include/asm/string.h \
  arch/x86/include/asm/string_64.h \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
  arch/x86/include/uapi/asm/msr.h \
  include/uapi/linux/ioctl.h \
  arch/x86/include/uapi/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/uapi/asm-generic/ioctl.h \
  arch/x86/include/asm/atomic.h \
  arch/x86/include/asm/cmpxchg.h \
  arch/x86/include/asm/cmpxchg_64.h \
  arch/x86/include/asm/atomic64_64.h \
  include/linux/tracepoint-defs.h \
  include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  include/asm-generic/atomic-long.h \
  include/linux/static_key.h \
  arch/x86/include/asm/paravirt.h \
    $(wildcard include/config/debug/entry.h) \
  arch/x86/include/asm/frame.h \
  arch/x86/include/asm/special_insns.h \
  arch/x86/include/asm/fpu/types.h \
  include/linux/personality.h \
  include/uapi/linux/personality.h \
  include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  arch/x86/include/asm/div64.h \
  include/asm-generic/div64.h \
  include/linux/err.h \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  arch/x86/include/asm/irqflags.h \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  include/linux/rwlock_types.h \
  arch/x86/include/asm/spinlock.h \
  arch/x86/include/asm/qspinlock.h \
  include/asm-generic/qspinlock.h \
  arch/x86/include/asm/qrwlock.h \
  include/asm-generic/qrwlock.h \
  include/linux/rwlock.h \
  include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  include/linux/time64.h \
  include/uapi/linux/time.h \
  include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  include/linux/highuid.h \
  include/linux/kmod.h \
  include/linux/gfp.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/cma.h) \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/wait.h \
  include/uapi/linux/wait.h \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/nodemask.h \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  include/linux/notifier.h \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/mutexes.h) \
  include/linux/osq_lock.h \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  arch/x86/include/asm/rwsem.h \
  include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
    $(wildcard include/config/tree/srcu.h) \
    $(wildcard include/config/srcu.h) \
  include/linux/rcupdate.h \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  include/linux/rcutree.h \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/wq/watchdog.h) \
  include/linux/timer.h \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  include/linux/ktime.h \
  include/linux/jiffies.h \
  include/linux/timex.h \
  include/uapi/linux/timex.h \
  include/uapi/linux/param.h \
  arch/x86/include/uapi/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/uapi/asm-generic/param.h \
  arch/x86/include/asm/timex.h \
  arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  include/generated/timeconst.h \
  include/linux/timekeeping.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/rcu_segcblist.h \
  include/linux/srcutree.h \
  include/linux/rcu_node_tree.h \
    $(wildcard include/config/rcu/fanout.h) \
    $(wildcard include/config/rcu/fanout/leaf.h) \
  include/linux/completion.h \
  arch/x86/include/asm/mmzone.h \
  arch/x86/include/asm/mmzone_64.h \
  arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/x86/io/apic.h) \
    $(wildcard include/config/debug/nmi/selftest.h) \
  arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
  arch/x86/include/asm/mpspec_def.h \
  arch/x86/include/asm/x86_init.h \
  arch/x86/include/uapi/asm/bootparam.h \
  include/linux/screen_info.h \
  include/uapi/linux/screen_info.h \
  include/linux/apm_bios.h \
  include/uapi/linux/apm_bios.h \
  include/linux/edd.h \
  include/uapi/linux/edd.h \
  arch/x86/include/asm/ist.h \
  arch/x86/include/uapi/asm/ist.h \
  include/video/edid.h \
    $(wildcard include/config/x86.h) \
  include/uapi/video/edid.h \
  arch/x86/include/asm/apicdef.h \
  arch/x86/include/asm/apic.h \
    $(wildcard include/config/x86/x2apic.h) \
  arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/x86/intel/mid.h) \
    $(wildcard include/config/acpi/apei/ghes.h) \
    $(wildcard include/config/intel/txt.h) \
  arch/x86/include/asm/acpi.h \
    $(wildcard include/config/acpi/apei.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/acpi/numa.h) \
  include/acpi/pdc_intel.h \
  arch/x86/include/asm/numa.h \
    $(wildcard include/config/numa/emu.h) \
  arch/x86/include/asm/topology.h \
    $(wildcard include/config/sched/mc/prio.h) \
  include/asm-generic/topology.h \
  arch/x86/include/asm/mmu.h \
    $(wildcard include/config/modify/ldt/syscall.h) \
  arch/x86/include/asm/realmode.h \
    $(wildcard include/config/acpi/sleep.h) \
  arch/x86/include/asm/io.h \
    $(wildcard include/config/mtrr.h) \
    $(wildcard include/config/x86/pat.h) \
  arch/x86/include/generated/asm/early_ioremap.h \
  include/asm-generic/early_ioremap.h \
    $(wildcard include/config/generic/early/ioremap.h) \
  include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport/map.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/generic/iomap.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  include/xen/xen.h \
    $(wildcard include/config/xen/dom0.h) \
    $(wildcard include/config/xen/pvh.h) \
  include/xen/interface/xen.h \
  arch/x86/include/asm/xen/interface.h \
  arch/x86/include/asm/xen/interface_64.h \
  arch/x86/include/asm/pvclock-abi.h \
  arch/x86/include/asm/xen/hypervisor.h \
  arch/x86/include/uapi/asm/vsyscall.h \
  include/asm-generic/fixmap.h \
  arch/x86/include/asm/io_apic.h \
  arch/x86/include/asm/irq_vectors.h \
    $(wildcœ_øæ?∂˝µ[€jÎ◊≠∑ë™G˘„[⁄´ÊdŒT<›^s√Ô]:L’µÔÎ·W_7˙À≠Ω5À‘≠¥-a©mƒÑùä?GP’ñI!"Áê7¿¢aKB”ËZC]._dÁùZó¬¯µ”¯irâÏ¯"R#˝˜§ÂYﬂØÎ¡°õ¥j$I˙ˆö˙°†2^À5ˆ˚ÿ	8(dpáÿ“¨ÑπâàÙ\ø(}T'˜æ·0ác™èz–»{pÕ*(π ^ü4Œπ∂gOE^wæÖ=7˛Ä“zèCaêºCÂúä¶ıôw‚BÌV°Òq5ü—~–-F09?»ì ‰˛"K{ﬂœ:ÁY˙>Ôüéû˜ +”ãºÿµ¡â17m£¥¥Á?Ú˘“Ó6£'{g«4Yv'O¿ø∂#ÇRkâé··í¯@	ë¿[Nˆ˝øãljnπ9ÉÔûs}¸◊üP;“ﬂ}ƒ.=¢JîπãŒßhΩD]Â*»◊iûFŒ˙ˇUÙ¬¢_˚ﬂ≈L˚‹,õÌjÔ*WñHp¸ÆÀ4≠i›ŒHîOâ/’v˘|5tà3Z∫#ª§ˆv©{~Œ}¨‚†·˜m∂ó›ÆÂÃÕ	 "çKÔ?Òê≤>~ `rºR√«’Z˚_†âππd€,b9mêï,Ìe|Ù	í®æ_@Wƒq$"
ø&^ÚeoÚº¨≠È	igﬂ≤Á√˜„ﬁ?Úπ∑éˆj;Ωß hô´#¨π©jDÎˆòì7$ËœƒÄ<WùB&l £U©ÒxiÎ≈◊Ô|ÆT∏ª›ÙπS˛y∞{”_Kzo@IfEê∆3˚`aë=®´{L?|<pÛ¨‡9—Å†4p”ú©^µ˙ÄèH*˝hÄf©‡~¥ÅtÒEΩ>;ïqÿÛ™Œ”jsK9÷«ù}Ã"‡ÊÛ BàÙ°‚æ5(ÕwÌÚUwùÌ‘:ª´ˇíÁÍüÚÍSÀqßË E‰^f@Â—ä3zÛ|ú|©Ìè~çôÙ˝R˜~≤∞©øˇˇgüÜŸ”±p	2íZ¯˜Ô√SÔ5√ÁD£ÁŒƒp’ô{»Q†ˆDÚÁ*è£‡ÉÔ◊Ñﬂoù√g™¥≥?ãL√ÁÙÔ∏“€9L«¶"ù|˛©g}∑∑TπÂ8E»E–&~
mˆˇ˝vg5wfﬂÈ¨´ãŒ:˜ñ˝œHúÃΩ&ò!âtACÏ'„?∂dæy¯^¬˚; ÚÉqﬁºÎ3–r;µ™ﬂï•Xh8ìl!6Ò?jeùò.≈∏è;Ï–=Ë∑À∂§Íµ◊oÚv+{€='c(ı:ﬂÉßU.⁄´C˜≈ƒl#,âíÛÑ'‡®î ˙D5"yÍ[I˜∆'#3‰¥,J0xeÑ»mñW’'è[Œ5zkáÅC∫ÕY jkü4Lˇ{5£ÔÊVùıœ&a†á?hﬂ≥>æIÎ~b{Ωo¬?'¥v˘Wó§Œ˝j„7WVúÛ˛Hr	wq∑Ê|‹˜ŸM=Ùˆg˙"‹mU#÷•”ˆYíÜœ’”jÂZ{!w¶Cêã¯ì’>dˆı¯V~πÖ?»§ë(~ªô6€ÀaŒ˝˘˜ÂˆœéãH0o•@=op˝¥†ÃxÔﬂÓ&PiÔü—=ZÕ7¶_E≠ x∂í#¯}ÛŒ~YÔºèû»æIIú	è }Û»!o)ßHK|êØ]g$÷`ùv’}=]lëŸ™Âƒœ~™êßÁ\/	2ÄI	¯”ü@2Ó˙P£|ƒ=ÇÍ{jÙêÊqo£ÃÏ≥1FÖS◊ò¿ÈÕKﬂø˙·$={À—ÿí:'ı_@ø†ç7–^íËΩà.î{ÇdÙ8-öiuk·Á3Œm/¿C¸ÊNv= L$=(±æÙK+ÈÚQ•O¨fÙí˜ÁË
2I_í¢TM≤¸ÎÁ–øRÙ¢F¯—,0§ rg¡g9%OÍ˙sË`©z—>˛ÙKSü@3K–â‡oD∞ºA¿<Zr¬x∏ÃcùJ¡&˚W¸Òü®í’i¢Ú´ø„HÌZ”ÓH∂òN∞_ﬁÛ˛ í›DëÒ˘*y´wntÆsªëz\⁄Ïû∂E›≈ˇ‡ê'´lumß'”êAË°®îÅíçdB¿+"—d\/’øZÅ◊¨aQQBE_ÍÉ∏EÊ≥vi◊œzˇÖhNö◊›kA_n†Ã'$Iêÿ‰ÙÈı_…Íˇ{Â©ßZèm∑w∏´xËÕ´≠7ÒÃ<h∏!V∂ËJı”>T˜\+?w—iy’≠mç#6ñÀÅ⁄22)X	¨éùsgËmΩüæÄ„Ks3ËîVDNÑ∆E6Ò´Ö÷Ï˝ëÁåÂ¯˜VÙ∆ûı≠=ﬁ›µß&R‰% OÅ[ü˝¯z‡˛∏ûˇò”„ˇË±àré_Ä$z¡P˚øëNf1óﬂŒ”Œé3ı‡ î	Ò¨N=cvs€^π—àwqˇCS ì#–=0ë?Á3ÓVŸ%>P˘¿¬z –} ‰∑Pı´◊,ıç)‚¿1TûÌ ûk?ì	–„⁄˛Á^NÀ √Vr≠º3vBLg3*¡kúÙ‚/N∑:∂/ÓºSU™'z∂ÅÂ2!ëL •Œ.Ç}˙[r◊ «˝,êI=Ñ~°9[dM!È¯ˇ‘g33Ù¸{D˝SÈT~¬¿¿ıË∑Ì◊¸NeÁπŒÏu¿à¶¢¡‰dô¬%è·Ú	˘j}Åœ˛ÖG∫¿0/g±õÖ7ˇ'ãyˆ£Y›ØM3çµ≥{H; HGπ>“G˙¶xä5˛,‰oüö§;¨ˆª«¯Wv&Å:ˇw£à9‚√Q∏Fˆ$1Ù˙t|	¶π;¬ﬂÎ¡Ô_œˇﬁ+∑ÆıˆøŸ5r3=πÉkﬁtJR⁄CÓAõÂÏ[…|à0)«˝ãüÌπ˛|ËΩΩñÒ±-©j,€”âH≥êPÓ-ÀÑL¡≤WjúngKwÜwªﬁ÷Lºöx$ê ®%Ò˚ë¸ƒA©C.ÑÈ^∆üWÀ¸µ‰}Üæ˛r“o¬·¿Wtµ0>kô∫¨ª˜ƒnkˆCß}ã>[¶ÈpÅI0$æ⁄˙fX%bE‚Ïomâ;ô˚√è?|õÓùıp@eÌ]‹^ñvhH›Ω¨#¿-?‰ ç^⁄≥rgè?ÀÚ{pæÔ
µÊˆ€”Ω[Á¨Biíˇ∫u≠Mò˘∂˙‚ív`)=‚©_¡ﬁ⁄
¿wπ ∑2[3Ñ–N÷!ÛÜ¶ão¶ï@|È¯'–$Hkv|$FÅ‰†óá»¡i LíœVÕ'Bå˚úºI∫®ΩRCÔÎ“ª›Ùéˇ‹Ì€ÓTDÙæ=π”≤XpQe,Øs1˜πI˘Æ*ª˝°9Âèö”N%k,O∆?$ ´x…ñ9C°yê˙‰  Ê”"düp@TºAãl„◊∂T√ß©Æ’˙¡¥†ﬁ–3 #ƒ°,≥ˆØØnz»<ÑÒõ÷◊ºÀ†Ã‰I&@
$ô∫¡¯ò¶©§ﬂΩ÷˜πw7sjã†@Ü‡÷«ÙXmÃÇ£1XFT?πà^ÊæÜ+rK\∂—ŒﬁI€O†R@<¨›ˇrı¯‘mSâ’Ye9ˇ‰¨˚‡#Ô`dB=…ﬂhΩ/∞x+ßvÔ5üb{3Ã”⁄(/⁄ˇèuYΩe˝ﬂz@êf%ıYcŸ™ßÙ+OÙJ	x<‚¬|Œ=ì$M''≈GÕó
k«ËÆ˝‚>ıø^⁄`C}õ»∆∂ß«SâÇŒèøÔØ3˛pﬂ≥Qì¸ì"aX-@Hï≤¿ˇ#÷®¨≤%EÚ˘=ıüœPq∑gﬁé|LÂå}oÔ’Eü
¨,√ç˜òÎº˛˘ø;∑Ì_~Ωr˚°∞D˝§J
≥C-rMe¸Dy}ÿ};¥õ„–Åfã~ôœˆµ§È£
EÚù9R…~Oz≥‰óG⁄j@Ìg+æ‡πDœ#ªUQgw˛ıéPo˘¡€]Ìå∑q1πX¡`êÉ∞Ï=Õ–3V°?@%Q´Ômˇ¿¸>ΩVÎÂx?r∑w3†∂ìN3 ¡ÜS‡–O´´q@R,©µ¶nm3ˇRπ|&â/,{ÕR˚xtß÷¿•÷»Ç$I·‚ §≥ﬁ›1W‹§˛©> ≤êÜ{lsUò++∑RF›[RæÈ’oœ˚x÷÷ævg∑Ÿ%‹úô$˝hh¯©Ñú“ÅjÜc”ıË˙~ÖrÅ€"¸&ugC	9K”ı!Pπ˛,D˚ßüQ}”0WFïo›qΩD—€≥Ód  É3:¬÷ ˇ&ö/L„/—˝\sÆb~áï)oHË5Øéô…íëÙ1~±Å:·üQH◊ ˚=ÛåB>wá,;«–§^˘Â{ÏÅÜµ”>≥L˜ﬁHäü‡A÷˛3_Á€˝>'Â7;8∑b0∫˘·°^>∆√Ä>É∑∂ú˙Èp}€?¬˜œÔˇ[„T’]©Ÿ_¨W‚t◊Q[;ΩxÉÉ◊Oq>o‚ıú1÷‘π◊ÎÎ±l≤’∑ÓΩ¢ØfZ`∂Ñ‡GÏ—-QÁ8Ø˛ÅÎ˚§~˚›pû ÷£˘?<ºÈ¥∫LdÉ;˜èæFÓm{ôvw√Œ.¯M0â#—WdœogÁŒë¬B™˚=Â)ÂÛ…dÙæÇﬁ§0¯QüÀ1„ˇÔ`E⁄ìk±Ÿ˚‡.«™‹ÓÑ˘{O˙ÍÏÏX†ŒXHJUX;öÃ˛Jüﬂﬂ5æù}”S˝ˇeƒ+≠v?˝ˆøÌŒ¨ÔIMÇ”q!#≥c¡ÒSpYŸ«X+Ï∆3Û…≥ØíˇfW6}ªŒBoN´ãœË¸ã>∆âÇl\
≠/Q˝ck«”óˆ«&∑‚ÿ>ˇ≤‚/˘‹gÔeÆep+s€(!>]›ƒ¡¬?."†)«4ókV\ím√p˙C|ìßñé¢µÒö8D◊¡KÁ∂á≥ÑDâÑûΩ¸Ø~\ÏíQëXT·¸ö>˘œò#Ã‘°T†¡Ä€Ö$Æ'Øn|7Õ_-«@û¿ÿ‹yÀ;˘}ÏﬂÛ%±ºµ“CR2üà_†W–]±Ë Ì∑mΩ√!sAÏé%Ã‰ùêÜáÇç÷Á( ïˆº˛®hãò)ï‡ƒôú§<0éÏ]*ò»§|à‰“ïXcûõwˇ©ªûΩ›˛lπr√Õ§Ô~käπ«Ì'ã∆ái≠3 —KÑLÜPâ¬÷t~∞y¯~ãÙU((˝?§%mk·¡WÍH@÷‡EÇ˝ É^ÄëúÀ–*'Ë	ı™Äî˙
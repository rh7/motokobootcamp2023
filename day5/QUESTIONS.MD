1) True or False: we can prevent the heap being erased during upgrades by using a stable heap.

False, the heap is erased but the stable store it in a different stable memory.

2) A.call() -> B.call() -> C How much time (or rounds of consensus) do we need to wait for an answer?

Within the same subnet it's 2 sec, in a different subnet it's 4 seconds.

3) Is possible to realize an intercanister call in query mode?

I didn't ready about it, but I assume it's not since it might change the state in the other canistor, so it would likely should require consensus.


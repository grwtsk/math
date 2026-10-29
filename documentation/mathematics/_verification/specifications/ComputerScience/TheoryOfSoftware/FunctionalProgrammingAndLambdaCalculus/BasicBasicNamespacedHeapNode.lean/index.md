# Verification target: Basic Basic Namespaced Heap Node

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25feda521f8c70d58c16d064745bf068b2d8e0d5",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta125679c627d463f1f4d47dc4a2cf6141069789c2fd052b82842fb7bd22d583c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25feda521f8c70d58c16d064745bf068b2d8e0d5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta125679c627d463f1f4d47dc4a2cf6141069789c2fd052b82842fb7bd22d583c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta125679c627d463f1f4d47dc4a2cf6141069789c2fd052b82842fb7bd22d583c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Classes.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Control.ForInStep.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [HeapNode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode.md) | 33 | `declaration-track:2e5799c6314eb13e77d7c47423e7aa8d7ce916e1d481b97109b86aaa73fb58c5` |
| 2 | `def` | [HeapNode.realSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-realsize.md) | 47 | `declaration-track:aad26c3681b01204df52c8817e9c76740b1fd7114b5be22c97afd376d5872130` |
| 3 | `def` | [HeapNode.singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-singleton.md) | 52 | `declaration-track:249398e20c33963de9fb35e17ed92e52eec1ab8924b33bb884c60d3906a414ee` |
| 4 | `def` | [HeapNode.rank](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-rank.md) | 58 | `declaration-track:e0dbcc9ce8c8c1426d2dbd3a3d6682bc2f5edcf61a4b6ee45ef8408732777226` |
| 5 | `def` | [HeapNode.rankTR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-ranktr.md) | 63 | `declaration-track:57898f84f7f5e352e27771225026d416db66826f1b61d31835d05822b828a4f5` |
| 6 | `theorem` | [HeapNode.rankTR_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-ranktr-eq.md) | 69 | `result-track:22bfbffedf8849e75fb6598cb362c7c1234cfcdcc6ccd30bf1e06c5c81abdae7` |
| 7 | `inductive` | [Heap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap.md) | 80 | `declaration-track:0b443e58598a643a0e4839483491e1710159df7c37b9f30bba0d2f995b93e02d` |
| 8 | `def` | [Heap.realSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-realsize.md) | 93 | `declaration-track:ecb8e2e74063b834e226caa79e2f90098ed3736a48729684bc9e60e57903d2cd` |
| 9 | `def` | [Heap.size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-size.md) | 98 | `declaration-track:c232a87b68d09a0430fd0c6c2cddd37eb7af38422c4017fddc4a9eba08bbb12b` |
| 10 | `def` | [Heap.isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-isempty.md) | 103 | `declaration-track:ac27094e122d3f675063bdadb09063bbc7fefcdb38b3e7ec5174c9add8382640` |
| 11 | `def` | [Heap.singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-singleton.md) | 108 | `declaration-track:ab6804364e19286ef71413d69c6957a2b53db3c23032bb13f272d37b45456514` |
| 12 | `def` | [Heap.rankGT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-rankgt.md) | 111 | `declaration-track:de8509db2d031a7ac896f2e381835788e218eacc611e0fa9466d542eb0edeafd` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/instance-source-edition-2.md) | 115 | `declaration-track:5f1dc0be930c088fb0bdc193da263392cbe1caa749b8c879475b012272d7f7af` |
| 14 | `def` | [Heap.length](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-length.md) | 121 | `declaration-track:57233905f07d3dfe4055d009e0f6427948aae24593f93825f0d520e140c136c8` |
| 15 | `def` | [combine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/combine.md) | 129 | `declaration-track:f4d112562e82f84f64bca2e9ee3576607d38e7e13916b53b2b594c03263c9793` |
| 16 | `def` | [Heap.merge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-merge.md) | 136 | `declaration-track:6078618b774058e8a8740808e3915d61cb3aea760bc79d958768af4d97c99786` |
| 17 | `def` | [HeapNode.toHeap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-toheap.md) | 157 | `declaration-track:91aa5687bbe50a45b2c3917bcc86191e385320ca2a2eff577927085e996c9ace` |
| 18 | `def` | [Heap.headD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-headd.md) | 164 | `declaration-track:bf4976e32c4837431c0bdeff00e366d92fb1dac3838ebf3823ae582496e93641` |
| 19 | `def` | [Heap.head?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-head.md) | 169 | `declaration-track:43a89b7e9d4cf97be9d12ddcaa8a09d10dc137a8956888b1ac47653c77ae1651` |
| 20 | `structure` | [FindMin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/findmin.md) | 177 | `declaration-track:7d1d6dc0da30cf33ae66af48be1c7ab1e58e90b46c30d8988e0c3ce1a05027ad` |
| 21 | `def` | [Heap.findMin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-findmin.md) | 191 | `declaration-track:8da026c1fa28dcef1250ba74dc7b4b966615ca326cf160d33cd8943edd351f29` |
| 22 | `def` | [Heap.deleteMin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-deletemin.md) | 201 | `declaration-track:c20cdc0ab8a4d8dfd1d078c9cb98faf668112fc59c562563fb93b834d78dc420` |
| 23 | `def` | [Heap.tail?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-tail-source-edition-2.md) | 208 | `declaration-track:ab0550243ad899556a4c02d8a9ce0191017928952d2d9f991bf47d60d2914af2` |
| 24 | `def` | [Heap.tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-tail.md) | 212 | `declaration-track:48adae521ab17d6fe044bfad4efb4f3c158b952c71f09a2ce56f7b917f58aeda` |
| 25 | `theorem` | [Heap.realSize_merge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-realsize-merge.md) | 214 | `result-track:3f48d8ac8ba4ebf0078f25a8e9e28644d965198e840204b6cc4b2e273ea3201d` |
| 26 | `def` | [FindMin.HasSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/findmin-hassize.md) | 232 | `declaration-track:5ca41d4d17dbf5b2399852488fc464d76b96e0de6c4f13de5e7f074dbcb163d2` |
| 27 | `theorem` | [Heap.realSize_findMin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-realsize-findmin.md) | 237 | `result-track:070d10abf043622384d3945ede38da75c39725ded469470e18261acd2e92e714` |
| 28 | `theorem` | [HeapNode.realSize_toHeap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-realsize-toheap.md) | 251 | `result-track:5a04860e7c5b28386d80e2a92a4a462e275d0a13c0085a64b55b8729f085b129` |
| 29 | `theorem` | [Heap.realSize_deleteMin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-realsize-deletemin.md) | 256 | `result-track:812c2fb06c892fecbf8a8d623b1273e738896e38e6a7fd630c70fb7501d003e4` |
| 30 | `theorem` | [Heap.realSize_tail?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-realsize-tail-source-edition-2.md) | 268 | `result-track:e4fae5eb89eaf36cea5813ce8b359da60bd8eb2fe97222ddec55a9f88db7a8b2` |
| 31 | `theorem` | [Heap.realSize_tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-realsize-tail.md) | 274 | `result-track:1fa13b0aa3a35209b5486bb83fdccf3bc1829de99bb6d4aaa0e40d28473049fd` |
| 32 | `def` | [Heap.foldM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-foldm.md) | 284 | `declaration-track:064ace5501576b640947a114325df625fe452bc303d7876653384fe938e22dc6` |
| 33 | `def` | [Heap.fold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-fold.md) | 297 | `declaration-track:8e4208b9e93d918caa772464b77b0686e6ff7e11ca518362b4b70cdf7201d8ec` |
| 34 | `def` | [Heap.toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-toarray.md) | 301 | `declaration-track:8b10389a66020c47b058fbc7669186329569d74fc6e209c275eb05bf75bc2b5e` |
| 35 | `def` | [Heap.toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-tolist.md) | 304 | `declaration-track:758537940f167bc55e35e2cb915e800805447577e212deace1cb719813e11cf7` |
| 36 | `def` | [HeapNode.foldTreeM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-foldtreem.md) | 310 | `declaration-track:abfa21d3700f3258388ba897038111200f2f3b95b0fad3eb8d947caa60a47ae6` |
| 37 | `def` | [Heap.foldTreeM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-foldtreem.md) | 315 | `declaration-track:f2161d7ce10a62fb2da7d18127e92a0dd52b67e49eb575eabd050fa39594c6ec` |
| 38 | `def` | [Heap.foldTree](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-foldtree.md) | 322 | `declaration-track:cd3c1c3dfabb3857e9356c718144491907493925fba1342fb37d86eedfd07812` |
| 39 | `def` | [Heap.toListUnordered](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-tolistunordered.md) | 326 | `declaration-track:2ecf9ef0f52ffd3a4ecdd64b54f4c1f08c037e11f41f6247f42b855f97604d2f` |
| 40 | `def` | [Heap.toArrayUnordered](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-toarrayunordered.md) | 330 | `declaration-track:f4e51a6b7f56a0f84830f09f7e8d160f96a14955865f9e4dc50948053dbae7ee` |
| 41 | `def` | [HeapNode.WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-wf.md) | 341 | `declaration-track:bfb43701bc4ade2f8179e084f136237badc3526f74f8d90b21d75c8085d6e13a` |
| 42 | `def` | [Heap.WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf.md) | 351 | `declaration-track:aaef09b8a4ef586dab9aede31c2c116218ce22847fe9ebfd0fc4336b3b0e6ee4` |
| 43 | `theorem` | [Heap.WF.nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-nil.md) | 355 | `result-track:d21506f35bac22e2d96e844d9e8b42edbc668a5912deb013c8ef1139049fcfcb` |
| 44 | `theorem` | [Heap.WF.singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-singleton.md) | 357 | `result-track:e4967edd844e7a19fd790812f485e957c4bfc556a6b6ee4210d19db20d17a9cb` |
| 45 | `theorem` | [Heap.WF.of_rankGT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-of-rankgt.md) | 359 | `result-track:427cb28bdf868334183e86fd3789e530d48214947148a66f4b8f609f663c7eb4` |
| 46 | `theorem` | [Heap.WF.of_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-of-le.md) | 364 | `result-track:1c38d967b2fc2a8a4bd359a38440f8c3acee0c1684d360bfe7fd2c076715450d` |
| 47 | `theorem` | [Heap.rankGT.of_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-rankgt-of-le.md) | 369 | `result-track:58171cd4eb0a3736290d6b3c9e43cb7f3e2badc0fdae6161fa98ca85ea51996c` |
| 48 | `theorem` | [Heap.WF.rankGT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-rankgt.md) | 374 | `result-track:fc6c87665482fe05efb967d23dbd270d0e9340633add74d54c914583e0c616ac` |
| 49 | `theorem` | [Heap.WF.merge'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-merge.md) | 379 | `result-track:9267ffab1a6ba27e25fb5c77e3b268aeb3b1e5d8351bc1482effd8efb63fe08f` |
| 50 | `theorem` | [Heap.WF.merge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-merge-source-edition-2.md) | 415 | `result-track:9a5ed33e59d475fb0ad9e0fbbe0905e3deb51571f1729533b1148772f959eddb` |
| 51 | `theorem` | [HeapNode.WF.rank_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-wf-rank-eq.md) | 418 | `result-track:db845e3c9b01cf598d39d1061e7670b0f806164fb92465add553d3badb4fbd89` |
| 52 | `theorem` | [HeapNode.WF.toHeap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heapnode-wf-toheap.md) | 422 | `result-track:7a2735249751f858905cc7fe44e1aab50710fad2f7a33e0b3f1d922ea574b30d` |
| 53 | `structure` | [FindMin.WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/findmin-wf.md) | 435 | `declaration-track:8d25a3a52c7db99094384fad4000c95244bf6ef22dc11974c13e132ead2eb2aa` |
| 54 | `def` | [Heap.WF.findMin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-findmin.md) | 447 | `declaration-track:a170a5a1c62941427c98a46b79e380923ebe00d71bfd403567119b2398e9c2fb` |
| 55 | `theorem` | [Heap.WF.deleteMin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-deletemin.md) | 458 | `result-track:4688df58b8f5c124d854341db845d931f4fb8df0ad997fe41ae1e84d8bd9cfd4` |
| 56 | `theorem` | [Heap.WF.tail?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-tail.md) | 470 | `result-track:844c50b6f0f2f29ea4600617499fd64aeec3baf63147b5cfd3acae58667dfbe1` |
| 57 | `theorem` | [Heap.WF.tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/heap-wf-tail-source-edition-2.md) | 475 | `result-track:dc9c254f2acba6f1a3bd711127912758676bab7f56873fb38b2b0fce602cb4ff` |
| 58 | `def` | [BinomialHeap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/binomialheap.md) | 500 | `declaration-track:d2491e7525190a8b221e3c380ef6580f770daa5ba8f3c83a64caa5c704a6beac` |
| 59 | `def` | [mkBinomialHeap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/mkbinomialheap.md) | 504 | `declaration-track:e2eaed46e876067bb40caf07c41d6aecac2fd966f766afc0ea4f7b9e613cf191` |
| 60 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/empty.md) | 511 | `declaration-track:184b498a58dfa9413a7a7c05dd52b704fce238593ea4e2a1433c3ffa1dc8b701` |
| 61 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/instance.md) | 513 | `declaration-track:27cb9bd8b44fefa2826cee2628881a5ceecaef4962aa554e3ff1ca9989c4a317` |
| 62 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/isempty.md) | 516 | `declaration-track:91f4f0bafa5c280557feb04736e2fa0eb2e44d1a55c55effc3d11eaba065ba79` |
| 63 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/size.md) | 519 | `declaration-track:690194f32b5f6699003091e915f69096c17428104c8e74b764b45a53abefa2ef` |
| 64 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/singleton.md) | 522 | `declaration-track:5a86a532b8b09f4799cde181ab39bdf541b83fbe67576dc2eb9d8f6bbf282d75` |
| 65 | `def` | [merge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/merge.md) | 525 | `declaration-track:1e9fb1d3750b4114ddc5cc85db5de847e05779e774a3c33fdecc6028afedccf9` |
| 66 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/insert.md) | 529 | `declaration-track:c076db92fbac92cf5c49e3f57e913ff65c048690e4323b314a5292a5184dbdb2` |
| 67 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/oflist.md) | 532 | `declaration-track:806f83e31ad6d22ddb067aaadd28ddae96cf05b4b0939c039a4ea7b19e34f890` |
| 68 | `def` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/ofarray.md) | 535 | `declaration-track:8741b433a5aa13a6b75f6f4f783204d028fc313249c3c6ea0bd0e68bf9f1f1a6` |
| 69 | `def` | [deleteMin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/deletemin.md) | 538 | `declaration-track:461ab0eb30d3cbd66fcacd737bc7beb5d48d2061302d265c026b7e3b13a97237` |
| 70 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/instance-source-edition-4.md) | 543 | `declaration-track:ec1bd502068a355b0b651a6a6c91b7b44210b16bd2989b9712f0583cc9249581` |
| 71 | `def` | [forIn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/forin.md) | 549 | `declaration-track:3e60061737843c8325a0bb7aa0bac0958c9bf00e6c8e37e877bacacd905a23fe` |
| 72 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/instance-source-edition-3.md) | 552 | `declaration-track:d42415d912cb5d9b89beb875202a18cd8358213d0c9f0bbbb677d0b206ccca9f` |
| 73 | `def` | [head?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/head-source-edition-2.md) | 555 | `declaration-track:e40ca6a2515a4ca912e0bdb1f83f7cf09e5ba2ff13588d9af3d732fd34257409` |
| 74 | `def` | [head!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/head.md) | 558 | `declaration-track:7423d6fb14d331f6e5a525896cd52365d406b36aa79c4c5054d05cc57247ffbd` |
| 75 | `def` | [headI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/headi.md) | 561 | `declaration-track:a6d66fbb746ca61872535a2aadd674a539dc9a57c17fd055660663dfcaf26733` |
| 76 | `def` | [tail?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/tail-source-edition-2.md) | 564 | `declaration-track:ad6dc7fa68c4403f66639f809ec18d1625a5fa5d210c9c1bfe68d3636183a758` |
| 77 | `def` | [tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/tail.md) | 570 | `declaration-track:767ba0691a3f3a30f8da69451b7fbfe83e1272383e3804134a3c536a98fa0f5a` |
| 78 | `def` | [foldM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/foldm.md) | 576 | `declaration-track:15125c8de3881da9a70e8a4ef832b2e9245fdc5bada12d7adf74d88c42a19219` |
| 79 | `def` | [fold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/fold.md) | 583 | `declaration-track:0bcfadb41bfa6ca55f8cd9c97645c38fafdf780d5af167d52d2191156dbea6ce` |
| 80 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/tolist.md) | 586 | `declaration-track:35a85e48846db66a68e14d5090c56d8e482911ccc4ce4e0e92b5bf019d62424c` |
| 81 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/toarray.md) | 589 | `declaration-track:19e0e58fd401831449d007aa937783c9ac5e85c1fda875e4ed3e02336be6c77b` |
| 82 | `def` | [toListUnordered](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/tolistunordered.md) | 592 | `declaration-track:ade4300df84d4dd2c9700484438722ea425d5a68fda08daa7ddd419fcbc40710` |
| 83 | `def` | [toArrayUnordered](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedHeapNode.lean/declarations/toarrayunordered.md) | 595 | `declaration-track:e8a4374b098bf0c73c691db06f02a7cbb8ed5a3f69ca2a574b3521521b367282` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78d4d855094b92793cb06b60a60303bf39e374de60c5faae8163c21a039e15a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta125679c627d463f1f4d47dc4a2cf6141069789c2fd052b82842fb7bd22d583c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta125679c627d463f1f4d47dc4a2cf6141069789c2fd052b82842fb7bd22d583c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

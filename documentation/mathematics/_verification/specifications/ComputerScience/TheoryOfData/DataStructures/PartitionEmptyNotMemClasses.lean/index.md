# Verification target: Partition Empty Not Mem Classes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c779d719c64be1656d957c94c90cd677bafdcd20",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variante59a8eed9d828df9d1a47816e8c08e498ad9d680540cb0c13ba3f00148c34f0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c779d719c64be1656d957c94c90cd677bafdcd20`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variante59a8eed9d828df9d1a47816e8c08e498ad9d680540cb0c13ba3f00148c34f0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variante59a8eed9d828df9d1a47816e8c08e498ad9d680540cb0c13ba3f00148c34f0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Range` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_mem_eqv_class](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/eq-of-mem-eqv-class.md) | 42 | `result-track:7231b69dafa4dfa13119dd642d884986909a7179a7d05c7c4ec48e8d2b8befad` |
| 2 | `def` | [mkClasses](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/mkclasses.md) | 47 | `declaration-track:1aa3662bfdd13478a50dc0851594d319a6ef72870e230a451ac5ca0cfd6e8454` |
| 3 | `def` | [classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/classes.md) | 56 | `declaration-track:43c329f668cd03c8be896272864b1ca6e61cd9431a948e683654778f05bbb0f9` |
| 4 | `theorem` | [mem_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/mem-classes.md) | 59 | `result-track:62d78c5db7883ae38859fd785026ee291c853ba8b398f02092ab3361604f5b58` |
| 5 | `theorem` | [classes_ker_subset_fiber_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/classes-ker-subset-fiber-set.md) | 62 | `result-track:f46726c7fdddb58fbf30f8c0ae89e53d5573e5d50ee99012ef1f18e72a779e16` |
| 6 | `theorem` | [finite_classes_ker](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/finite-classes-ker.md) | 68 | `result-track:e5b094f6c2e0ae99afb392f3eff8b11975a22c1f5817fadaa58a578dc389fd53` |
| 7 | `theorem` | [card_classes_ker_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/card-classes-ker-le.md) | 71 | `result-track:25afcc99080d568c7f41eca9e1c1a9a2c06fd19451acfd4330a9b2b5901df9a4` |
| 8 | `theorem` | [eq_iff_classes_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/eq-iff-classes-eq.md) | 77 | `result-track:0bfc9edd020814df1d94d00fad128f03a84191e5cec96880a7f1abdabef908b5` |
| 9 | `theorem` | [rel_iff_exists_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/rel-iff-exists-classes.md) | 81 | `result-track:452ef6a9bcff5528c423a8c2a60bfc4108e631798c3174b10ee800114287ec5d` |
| 10 | `theorem` | [classes_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/classes-inj.md) | 87 | `result-track:6fce2d201aa5deec6a3624eeeb00ade51fdd0b750adac37b40272b80c4557cdc` |
| 11 | `theorem` | [empty_notMem_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/empty-notmem-classes.md) | 91 | `result-track:b3fa93502fd50068b7c2d198c40d5354760a7855f7797da19f79c68337278c64` |
| 12 | `theorem` | [classes_eqv_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/classes-eqv-classes.md) | 97 | `result-track:68e728b0b320f93380420afe68f6033bb7305e348e6c85c8948fb2f8d6d4cf04` |
| 13 | `theorem` | [eq_of_mem_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/eq-of-mem-classes.md) | 104 | `result-track:c091e3e04e18b6674202607f8db0805ff3719ffadb9b1ffd6238c256e172e446` |
| 14 | `theorem` | [eq_eqv_class_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/eq-eqv-class-of-mem.md) | 110 | `result-track:b7dbb348e9e6611ee570cec45d5b72ac54f34a3590d714a06ef6eb4a40414433` |
| 15 | `theorem` | [eqv_class_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/eqv-class-mem.md) | 122 | `result-track:a1546e7d72bc4511a10c05917b2708f735c0f40cd3cbe0b3221053b210a9aec6` |
| 16 | `theorem` | [eqv_class_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/eqv-class-mem-source-edition-2.md) | 126 | `result-track:c603f4b27769af7e9bfd7655d1972df647daea7a30a7f99ab407dfd9975b21ba` |
| 17 | `theorem` | [eqv_classes_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/eqv-classes-disjoint.md) | 132 | `result-track:a3f5cb88267db141e7e869efb92bc6c5de780cbddca4645993ff9442771484f0` |
| 18 | `theorem` | [eqv_classes_of_disjoint_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/eqv-classes-of-disjoint-union.md) | 138 | `result-track:7e06908ec77d7b3923a106021a6362b8de76019b2cdb73a756acee67303c7a4d` |
| 19 | `def` | [setoidOfDisjointUnion](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/setoidofdisjointunion.md) | 144 | `declaration-track:6c2e1421dcf7cf54fb54f1425fbc578c783e2b3546fb5645c8b60c31f8ac81af` |
| 20 | `theorem` | [mkClasses_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/mkclasses-classes.md) | 150 | `result-track:abc95d2d45c45001f1cc09205dcd2e42d9a169b6a97f2d466b37e73aac646c02` |
| 21 | `theorem` | [sUnion_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/sunion-classes.md) | 156 | `result-track:1c07c0940e690d4b43c01bb410d975dc8d03e1494830d36064a5484d9e29aa2e` |
| 22 | `def` | [quotientEquivClasses](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/quotientequivclasses.md) | 161 | `declaration-track:f4c091247fa459d1d19943b3c38caf656811ef6cfbb039fb491f65948d68ecae` |
| 23 | `lemma` | [quotientEquivClasses_mk_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/quotientequivclasses-mk-eq.md) | 182 | `result-track:d6fe358befb5cdfa96697cfe488541beffd8c7ebcb82ae95e5960510decd26e1` |
| 24 | `def` | [IsPartition](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/ispartition.md) | 190 | `declaration-track:3b2af5c371e3d9b21289194bc77105fcfc055bd4a93e80b3cebff13debf63b64` |
| 25 | `theorem` | [nonempty_of_mem_partition](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/nonempty-of-mem-partition.md) | 193 | `result-track:662d52432204e4f17ea82ef297b02843891ac4cc3419432a0a7a1581067e55ed` |
| 26 | `theorem` | [isPartition_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/ispartition-classes.md) | 197 | `result-track:7743606ff4adbf25f47d87256c9c65310e380c661186339beb2a6005ec93c35a` |
| 27 | `theorem` | [IsPartition.pairwiseDisjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/ispartition-pairwisedisjoint.md) | 200 | `result-track:60c6302a61f7bf4c579a64e931c2fff170d6eabf8accd3f4bd98956acc5361d7` |
| 28 | `lemma` | [_root_.Set.PairwiseDisjoint.isPartition_of_exists_of_ne_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/root-set-pairwisedisjoint-ispartition-of-exists-of-ne-empty.md) | 204 | `result-track:10078d2a6f2c62b0d63a134ec05305eb83e24e357b2b2b0edcac833808a91a72` |
| 29 | `theorem` | [IsPartition.sUnion_eq_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/ispartition-sunion-eq-univ.md) | 213 | `result-track:34a707cd66638c1f9b98f66005898bbc012f04b0c24417ba168a807c3f634726` |
| 30 | `theorem` | [exists_of_mem_partition](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/exists-of-mem-partition.md) | 222 | `result-track:2a83328a4e0184fbe805be67b08533e595968593823bc6fd05ee9e5f536c1c94` |
| 31 | `theorem` | [classes_mkClasses](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/classes-mkclasses.md) | 229 | `result-track:b33e260a82eeec64326e027c9b233d239bab9187f01c02f883325a4644f37a4d` |
| 32 | `instance` | [Partition.le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/partition-le.md) | 239 | `declaration-track:6608a7fc09bd55674b348b6af8cc9321edcb38cb573fe91f939ff29222d4359d` |
| 33 | `instance` | [Partition.partialOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/partition-partialorder.md) | 244 | `declaration-track:140c9df1b152f4548ee262d988746b4ac00dbe6ee57166b2544ae00bdf010cbc` |
| 34 | `def` | [Partition.orderIso](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/partition-orderiso.md) | 257 | `declaration-track:958694a4fb3ca00f12a01d0215a0f284c162410daec9d64f66b0e1fa51e41aec` |
| 35 | `instance` | [Partition.completeLattice](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/partition-completelattice.md) | 268 | `declaration-track:1f343507a6d0549b64c329c84efc083c49a07fc7a9244268ab880721d4cddd8d` |
| 36 | `def` | [IsPartition.finpartition](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/ispartition-finpartition.md) | 277 | `declaration-track:b0819ad2c1ea440d95bda6c552721da7b56c23b5e13a98c9b4115529f101fb0f` |
| 37 | `theorem` | [Finpartition.isPartition_parts](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/finpartition-ispartition-parts.md) | 287 | `result-track:0f42378a5a3205be25ce8bd82ed2d028eee8f279ea373383c046d73b78ea0a3f` |
| 38 | `structure` | [IndexedPartition](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/indexedpartition.md) | 301 | `declaration-track:e370e53e3cc4ca62ac96ff2d250b9fd25f756e318557dd665b2e47a1a596e2c2` |
| 39 | `def` | [IndexedPartition.mk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/indexedpartition-mk.md) | 316 | `declaration-track:2f4ec07c5183f18070ac120b4dcac36a5d1d9170070ea10b60712d7a3fe2f476` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/instance.md) | 332 | `declaration-track:86e35e576e4c0d088ad0af4110a42271a11c69cd647ada6806ce234451139b33` |
| 41 | `theorem` | [exists_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/exists-mem.md) | 344 | `result-track:ef63131f8dce6bf2cfd5ea263bf5b442d16e624317854542b76930377c563f6e` |
| 42 | `theorem` | [iUnion](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/iunion.md) | 348 | `result-track:e0db325969a79c1ac97d74b6b1e062c1920c17d78924770e8c24b45754897965` |
| 43 | `theorem` | [disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/disjoint.md) | 353 | `result-track:3afd880aadde4a429c819d50d1b4630cfbe590d88793eedadec98225d74aef2a` |
| 44 | `theorem` | [mem_iff_index_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/mem-iff-index-eq.md) | 356 | `result-track:82c539be6693c48211a6cb37e3941769a828e39affd7f0372e782806ee2f29a7` |
| 45 | `theorem` | [eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/eq.md) | 359 | `result-track:525cdd8e4abcd471af36dd89a0859be1cc82bf4935ec82c036e2e9933ea877c2` |
| 46 | `abbrev` | [setoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/setoid.md) | 364 | `declaration-track:e13c0be578a471f7540e70fd3cc3de03b509c319f4f0638416238b6eefd5fac1` |
| 47 | `theorem` | [index_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/index-some.md) | 368 | `result-track:c00829e6b4204a11564040098e99ac1934838c364534d9a63a46117001876a54` |
| 48 | `theorem` | [some_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/some-index.md) | 371 | `result-track:642fd3beba87fb2748b84fd1f1f1c7d58e2628764d0fe3d8b3abcdbeea47c7d5` |
| 49 | `def` | [Quotient](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/quotient.md) | 375 | `declaration-track:0a68bc0aafc4a6f58ea84c690e6da41c4f0b460bc73a1f54cacce5f5fa707404` |
| 50 | `def` | [proj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/proj.md) | 379 | `declaration-track:efd390021505ba48a4b83f82c0685f76ef73f5256a57a903174ad44b7a3c0238` |
| 51 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/instance-source-edition-2.md) | 382 | `declaration-track:a855fc620b199df374800a0f3057331586e473c14437fa5f51196fec75e3222a` |
| 52 | `theorem` | [proj_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/proj-eq-iff.md) | 385 | `result-track:c1245fc646ab1e6073e9496dc3f4e871deafb7e8097c68c23a6413c27b64bc66` |
| 53 | `theorem` | [proj_some_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/proj-some-index.md) | 389 | `result-track:e54d006bc8e058451f2c3fa3694468d1a3645321d2d7db95a6d8dc8e1828d1b4` |
| 54 | `def` | [equivQuotient](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/equivquotient.md) | 394 | `declaration-track:ff38ac19ec1f93d62c673d0c2478d5b91e053780beb468651844f3064da02f5f` |
| 55 | `theorem` | [equivQuotient_index_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/equivquotient-index-apply.md) | 398 | `result-track:0bf8c723c130e56daac6076742630715880ccd185786017900a6beb0cbb6795d` |
| 56 | `theorem` | [equivQuotient_symm_proj_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/equivquotient-symm-proj-apply.md) | 402 | `result-track:1f820ead1584bd003519e1118c692d76c45b8241a7ba3c0d5aa2f2cd3473a3b4` |
| 57 | `theorem` | [equivQuotient_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/equivquotient-index.md) | 405 | `result-track:d785e5a029e23c31354c07de8acaa808fc0d39ee4c18078701bfe4f78b4cf1fe` |
| 58 | `def` | [out](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/out.md) | 410 | `declaration-track:983932687b1f89dbbc975dec2d092f207499dd436ddaa41df5e06b88b22ec7bb` |
| 59 | `theorem` | [out_proj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/out-proj.md) | 415 | `result-track:b5f9d1a12aa2b4b1c55142976d44f9f7e08130b6e978061a0adf306004df1dfc` |
| 60 | `theorem` | [index_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/index-out.md) | 419 | `result-track:26c88d214ef8463ba76856ad9d406737c751a9b01a9b9f73eb312661ffcda8e9` |
| 61 | `theorem` | [proj_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/proj-out.md) | 424 | `result-track:10b947fabd05c3b295067ce9dc2aa1f3174b04d4e4ad48ddcfa720b9129e58d0` |
| 62 | `theorem` | [class_of](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/class-of.md) | 427 | `result-track:8d942fc0a5812f4fbcca61114283f3d914106238be8abd130b4677caa3d4a998` |
| 63 | `theorem` | [proj_fiber](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/proj-fiber.md) | 430 | `result-track:eda72bb2e644d8362e6d3a5cf059d703d4c83b3a8f4a34be61975f07d7878202` |
| 64 | `def` | [piecewise](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/piecewise.md) | 439 | `declaration-track:a5c5e857aeadf50ea41aed18370f51196e7f615d4faa504bb13c0ba504695e6a` |
| 65 | `lemma` | [piecewise_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/piecewise-apply.md) | 441 | `result-track:ffc354020a57661e5255b2511811c9f4071bc57573fede5b1767c90d506817f2` |
| 66 | `theorem` | [piecewise_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/piecewise-inj.md) | 449 | `result-track:245c56f4e9a7dda2162b410ea942b7101b9780730ba1120e7b174efcf054fce5` |
| 67 | `theorem` | [piecewise_bij](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClasses.lean/declarations/piecewise-bij.md) | 464 | `result-track:27ae9ae61e14f1196ee0e7afcd375ebc1fa7a3c41fe39e1af790deb2a6591b9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3219b74ad2d5f744ee6fccc40dc6f078f4915830047a87b17b145f7596ec764a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variante59a8eed9d828df9d1a47816e8c08e498ad9d680540cb0c13ba3f00148c34f0a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variante59a8eed9d828df9d1a47816e8c08e498ad9d680540cb0c13ba3f00148c34f0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

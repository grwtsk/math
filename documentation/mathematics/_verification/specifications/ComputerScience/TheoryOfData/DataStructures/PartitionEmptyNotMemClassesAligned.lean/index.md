# Verification target: Partition Empty Not Mem Classes Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bdcf3c8d9a17ef466936f10db2f8f0473066fd5",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variant1afcf21eded10cb900b9cd3eda5715705955acc5297be42d6bccdea821ad4fc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bdcf3c8d9a17ef466936f10db2f8f0473066fd5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variant1afcf21eded10cb900b9cd3eda5715705955acc5297be42d6bccdea821ad4fc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variant1afcf21eded10cb900b9cd3eda5715705955acc5297be42d6bccdea821ad4fc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_mem_eqv_class](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/eq-of-mem-eqv-class.md) | 47 | `result-track:811a1230cd0013eb75733951472e58617eb2353506a11a18fe986339c8548064` |
| 2 | `def` | [mkClasses](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/mkclasses.md) | 55 | `declaration-track:43101ab92fcc1429338bfd26b759bc5dc1a2038f0edfb595126d39ac0782c2a0` |
| 3 | `def` | [classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/classes.md) | 70 | `declaration-track:8b08514d12b2a5f10fb2cf90fb877399cf3ba84528e352adccdd2cf8cb7e6b68` |
| 4 | `theorem` | [mem_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/mem-classes.md) | 74 | `result-track:15778afc58392a9e68be37caefc4543a5b566580f0e44e1cf516f3cb1944a395` |
| 5 | `theorem` | [classes_ker_subset_fiber_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/classes-ker-subset-fiber-set.md) | 78 | `result-track:cba86088430dc0fc5f9b397c2ee562033fc031b4616364ad3b4771ace9959af7` |
| 6 | `theorem` | [finite_classes_ker](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/finite-classes-ker.md) | 85 | `result-track:5a531944c3f641a37a1f0537d5d581841d1cf829dae574f061304cd971da6c1a` |
| 7 | `theorem` | [card_classes_ker_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/card-classes-ker-le.md) | 89 | `result-track:1b2d632aa79b502c01524d1720e0b73ddb9e1de2cb732b60a88515fd153e790d` |
| 8 | `theorem` | [eq_iff_classes_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/eq-iff-classes-eq.md) | 96 | `result-track:cfe2c4a9301f804487802f03e56542437eca0a5ddc4c5c6ad77571a4f4dcd9c0` |
| 9 | `theorem` | [rel_iff_exists_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/rel-iff-exists-classes.md) | 101 | `result-track:9a9ef4154783b8d6e7381db995cf4ff158572b4eab9e9f2862ec8c1b3bec08c4` |
| 10 | `theorem` | [classes_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/classes-inj.md) | 108 | `result-track:95b6d66bfb647ea8927809886118bcc40b92e0bc5a65d5c0a3ff35cf10f49994` |
| 11 | `theorem` | [empty_not_mem_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/empty-not-mem-classes.md) | 113 | `result-track:891db70abe281972f7514a3e268c1aba0fcaa7bd7b12f3cf97a2c4a912c4b8ea` |
| 12 | `theorem` | [classes_eqv_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/classes-eqv-classes.md) | 120 | `result-track:ff7ab55c44e5c6dcd94698f13303cceaf5513f654f2251a4a9ba3119a0b9df52` |
| 13 | `theorem` | [eq_of_mem_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/eq-of-mem-classes.md) | 128 | `result-track:c392ae78caa7fd758ca984ca1104a93afc09f3306a9bbca0b5caa2d566ee3f2f` |
| 14 | `theorem` | [eq_eqv_class_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/eq-eqv-class-of-mem.md) | 137 | `result-track:5eeb0c72637daf5e81cb6a0451e4578b90cb5b3e4c46b0834b3111fde396c9d6` |
| 15 | `theorem` | [eqv_class_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/eqv-class-mem.md) | 150 | `result-track:557820a15c9a9c530ecd14929f9534ace1566fef936acf630f5bc99fe37017ec` |
| 16 | `theorem` | [eqv_class_mem'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/eqv-class-mem-source-edition-2.md) | 157 | `result-track:f554b707177318c4c60274796ac29a6f0570ae0384ba3d913e15ac6a7f2fe368` |
| 17 | `theorem` | [eqv_classes_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/eqv-classes-disjoint.md) | 166 | `result-track:bd3e21bcf72f1dbe98e07bb4343ddf4a4b1ccefbcf0204991dbea5840443438f` |
| 18 | `theorem` | [eqv_classes_of_disjoint_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/eqv-classes-of-disjoint-union.md) | 175 | `result-track:289205648740699dfe27cef9ef3dcabce292aafbbcefa228509bad1f69166270` |
| 19 | `def` | [setoidOfDisjointUnion](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/setoidofdisjointunion.md) | 182 | `declaration-track:1e228c3cc33832840e7120ff4656caa4f4c03d24717f30d05d005825b267ca17` |
| 20 | `theorem` | [mkClasses_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/mkclasses-classes.md) | 189 | `result-track:726faa0a8b0e9e432747b16c001b2c203b2e5fabee430bec2b8674a1cf79f6a0` |
| 21 | `theorem` | [sUnion_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/sunion-classes.md) | 196 | `result-track:07aa9ace1d3cdb4a2803fb65e840d6c024fdeab2c34d481b120a04a72173f542` |
| 22 | `def` | [IsPartition](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/ispartition.md) | 206 | `declaration-track:f188bd4825681cea46a4ee5fecfb8b9f4f6cc982ce52a8494b5bee4f2462d2b3` |
| 23 | `theorem` | [nonempty_of_mem_partition](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/nonempty-of-mem-partition.md) | 211 | `result-track:0f55c6e2ea643c4239e6c8c805ac3b49dbb9c2bb609bc2659c8a13a00fe394b3` |
| 24 | `theorem` | [isPartition_classes](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/ispartition-classes.md) | 216 | `result-track:d6d9a56eb8ff194ad48a904c73a4f89327df462df2429306a705fd313becc4e1` |
| 25 | `theorem` | [IsPartition.pairwiseDisjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/ispartition-pairwisedisjoint.md) | 220 | `result-track:e0396a765e6230a7ac311653ac3ab191ac51f9dcf851767a401e832189a4fe55` |
| 26 | `theorem` | [IsPartition.sUnion_eq_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/ispartition-sunion-eq-univ.md) | 225 | `result-track:f2929a5791ad998015fa3653ea2d5305755b534516d3dce3a19e80fe46409bbe` |
| 27 | `theorem` | [exists_of_mem_partition](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/exists-of-mem-partition.md) | 235 | `result-track:3c0bb5d7881fdd9c376b8f77cbca00a5e60fffac335fe564bfb225751110b710` |
| 28 | `theorem` | [classes_mkClasses](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/classes-mkclasses.md) | 243 | `result-track:73774b56e650504274e0a10559ff09af59561b362cf811da2664a0f8419ef15e` |
| 29 | `instance` | [Partition.le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/partition-le.md) | 252 | `declaration-track:e78f585957578164be484c7730f9a32b5737921883e78d81df063b5f1337ffcb` |
| 30 | `instance` | [Partition.partialOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/partition-partialorder.md) | 258 | `declaration-track:6e04552efb2a81bff9f7aae9802275df10f783ac9d6184a34d41cdf960939855` |
| 31 | `def` | [Partition.orderIso](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/partition-orderiso.md) | 274 | `declaration-track:76bc25beb3b193eef1f5e7328f5d65533785daa623a67fa035feb354bbdf8d33` |
| 32 | `instance` | [Partition.completeLattice](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/partition-completelattice.md) | 288 | `declaration-track:8ace668efe88b7bd3817f28242c79007841524ae8215fc43f48227eb1813d9a8` |
| 33 | `def` | [IsPartition.finpartition](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/ispartition-finpartition.md) | 298 | `declaration-track:3f614e74c8026f0786ea965bd0ec761a36380615baee75148169e35a3a430bc7` |
| 34 | `theorem` | [Finpartition.isPartition_parts](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/finpartition-ispartition-parts.md) | 309 | `result-track:d06b495796090c6a667bb5b2733b169223483e28242059f9ed89a2ebebd0a2c3` |
| 35 | `structure` | [IndexedPartition](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/indexedpartition.md) | 324 | `declaration-track:534f6be83ddbb1134f585e87f944909dc6825b9ab696ebb51f622e338ef0e38e` |
| 36 | `def` | [IndexedPartition.mk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/indexedpartition-mk.md) | 338 | `declaration-track:38ba7b1054fd78e17519fa3354a7259ed8be837696a855451a83f64866857d80` |
| 37 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/instance-source-edition-2.md) | 356 | `declaration-track:e64e212950b5d8805d9e55379618886e21dc2a8f908b0f6caf8e0d324a77086b` |
| 38 | `theorem` | [exists_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/exists-mem.md) | 366 | `result-track:d228985233cc9929ad8676d34a497776567b442cbce38ff8f3d98abe989d7c61` |
| 39 | `theorem` | [iUnion](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/iunion.md) | 370 | `result-track:a5d7afcc6537aff23327d73fed5c973d0d5680da005c69d4faa86ebbc0f92218` |
| 40 | `theorem` | [disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/disjoint.md) | 375 | `result-track:2251e28d886a097f47a8a6ac7f90d3e3ba342aed01c16059d2a07a3cb9f0acfe` |
| 41 | `theorem` | [mem_iff_index_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/mem-iff-index-eq.md) | 379 | `result-track:4d9fe9a480d55134a156f0c34fc638679360e1a3d56dc6420dc3b69e59f587cb` |
| 42 | `theorem` | [eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/eq.md) | 383 | `result-track:41da9fcd38a3ace3f77cec0a6078435b22a7281248119063a77bf57050cef4e7` |
| 43 | `abbrev` | [setoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/setoid.md) | 389 | `declaration-track:a7f6666493a2ddeaf62ea91e3aca6bbd46479bd01b18ab382ea9e11549be98f6` |
| 44 | `theorem` | [index_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/index-some.md) | 394 | `result-track:2d23668557b8419b2be6ab2ce59b44caebec0310d8f8b4eeae2bc5a7cd574ffc` |
| 45 | `theorem` | [some_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/some-index.md) | 398 | `result-track:e486796aaa12c15c709b475e183b29481e5d0199fb699ac27260c8c68d1a36c1` |
| 46 | `def` | [Quotient](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/quotient.md) | 403 | `declaration-track:9a1dc3710b1f988b058867136376e331436bc6a8da00886b25df73358be751d1` |
| 47 | `def` | [proj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/proj.md) | 408 | `declaration-track:7cf618d98c639018994c723a39af9656274df4c67718f8056cbad0da3c8db348` |
| 48 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/instance.md) | 412 | `declaration-track:3cd5214e23786cf8e7e9270038373135e69f14b166f179abe2db6683619f6d0b` |
| 49 | `theorem` | [proj_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/proj-eq-iff.md) | 415 | `result-track:2415832a21de8364edad79b284c8c6916d5832b942f494228484cdbfce286949` |
| 50 | `theorem` | [proj_some_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/proj-some-index.md) | 420 | `result-track:8971d5c4b4af687fcf0c2ef3c607eae3d0ec319643b371accc0d8dfd8c9411e4` |
| 51 | `def` | [equivQuotient](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/equivquotient.md) | 426 | `declaration-track:62f761af73ca93b5210281bd61e087f7f549dffbc1f8dd4d97dc3f3ce26a2744` |
| 52 | `theorem` | [equivQuotient_index_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/equivquotient-index-apply.md) | 431 | `result-track:03ecc5201e97da84c0c9c7c08e1477e17e4c5da6db64fc8b0020f15cf170f695` |
| 53 | `theorem` | [equivQuotient_symm_proj_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/equivquotient-symm-proj-apply.md) | 436 | `result-track:fbd1aa7cb3159ef89974d98ce5f39cb1eff6f0b8cd6a621bb391d4abb01330a7` |
| 54 | `theorem` | [equivQuotient_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/equivquotient-index.md) | 440 | `result-track:de966f256aad049d28dbea4518bec806304262f415823b678131287a50d39c5c` |
| 55 | `def` | [out](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/out.md) | 446 | `declaration-track:8ed0d9d7401f2eea8a3a1d0a0f0237cf932e564477861fdb1a32df7f2282211c` |
| 56 | `theorem` | [out_proj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/out-proj.md) | 452 | `result-track:3e51652bf86e9dfa727d6875222d3bd84ead68889c30a95d4edebc837b5b6ce5` |
| 57 | `theorem` | [index_out'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/index-out.md) | 457 | `result-track:cb62043eedb6b77fdaeec25e8501e9d4c6a9b39db209b7304578fc644cde7dcc` |
| 58 | `theorem` | [proj_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/proj-out.md) | 463 | `result-track:15fb103f6a3543c73c616b56b557394bf2a1f72c5fd248fd2ae3b4adaf0f796d` |
| 59 | `theorem` | [class_of](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/class-of.md) | 467 | `result-track:9298b49b7671c5fda4dd480c831a2376a2519d4069896e30179cd598fcf7169f` |
| 60 | `theorem` | [proj_fiber](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartitionEmptyNotMemClassesAligned.lean/declarations/proj-fiber.md) | 471 | `result-track:ef2cf61041a6364687fda36dee5ce41090024b012de027eea283f12d8cef6b36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e13b066b619ef29d3efff022655c6878340ae30614e21b5118309bbad4d8382c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variant1afcf21eded10cb900b9cd3eda5715705955acc5297be42d6bccdea821ad4fc4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Partition/Variant1afcf21eded10cb900b9cd3eda5715705955acc5297be42d6bccdea821ad4fc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

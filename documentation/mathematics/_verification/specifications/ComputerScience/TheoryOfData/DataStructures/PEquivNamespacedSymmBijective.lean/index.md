# Verification target: PEquiv Namespaced Symm Bijective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b77288fe08f9a17d495581b5aee375d50ed9ef80",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantc0e56170480f1863296d4892f13dcd0a9806a3973c89fb891925c326ca5b6520.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b77288fe08f9a17d495581b5aee375d50ed9ef80`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantc0e56170480f1863296d4892f13dcd0a9806a3973c89fb891925c326ca5b6520.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantc0e56170480f1863296d4892f13dcd0a9806a3973c89fb891925c326ca5b6520.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Congr` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Contrapose` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/pequiv.md) | 58 | `declaration-track:ab01de239f24f583671402436618effdf4522868a0bf150ae140068f82fe70b6` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/instance-source-edition-4.md) | 77 | `declaration-track:e1d2992144e30e594552843e1292c4e99332851b9ecc721f1ad8798fc95ba74f` |
| 3 | `theorem` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/coe-mk.md) | 84 | `result-track:3b06059f737f65459a347b056f63fc2c9317f55cf71c7b195cf21b11b0632772` |
| 4 | `theorem` | [coe_mk_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/coe-mk-apply.md) | 87 | `result-track:b34306cb516d17a5c5a258d53b3900d2facd7adbb7800b432dcad064422f1bd1` |
| 5 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/ext.md) | 91 | `result-track:c778becd353f33d416664bd202eb2fe4dac1620803ceb24dffd7dbf04cde2d3f` |
| 6 | `def` | [refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/refl.md) | 96 | `declaration-track:e1e66b61604eaa5457f1de6a0616843bb120377066aaa12e0b5fd1abaa3b24c0` |
| 7 | `def` | [symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/symm.md) | 103 | `declaration-track:7a2e868f8d87723de0fc0d942dab00c890c12c56c62fc3a2125fd7c4a4a9d1d5` |
| 8 | `theorem` | [mem_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/mem-iff-mem.md) | 108 | `result-track:936783e4a3ec1344c93dc155992bfe271e16bcbed368b73ac575ea3385a225b3` |
| 9 | `theorem` | [eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/eq-some-iff.md) | 111 | `result-track:54be87dd734855221420172d4705ac4f79f8296f5dbf8044087f87c980039512` |
| 10 | `def` | [trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/trans.md) | 116 | `declaration-track:50c6e59ab972e318e8e72e00ecf50bd0eb28f4eb7f94793a6388608098952d49` |
| 11 | `theorem` | [refl_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/refl-apply.md) | 123 | `result-track:317ed47407f54f07552ce78bd41d87d6c3000dc2991e4b956b818c7a35786da1` |
| 12 | `theorem` | [symm_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/symm-refl.md) | 127 | `result-track:71a9005ef628a60e5a8ddbf48bad4758d0d7583c6c8d7c8eda316279c259937a` |
| 13 | `theorem` | [symm_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/symm-symm.md) | 131 | `result-track:1183b2f5a1a1a9e93940c942fc9bac93605cfcd05a963a2ae2d60f6f5730639a` |
| 14 | `theorem` | [symm_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/symm-bijective.md) | 133 | `result-track:65e28705be36d9a43aee88e6ccd65eebc1635a36239f697515242855088788b8` |
| 15 | `theorem` | [symm_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/symm-injective.md) | 136 | `result-track:4f2585761b88ab48e743aaa075dee6730b305076d434bbf1e8cdd0b9e68f0ec6` |
| 16 | `theorem` | [trans_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/trans-assoc.md) | 139 | `result-track:0fd6bf367d78ff734acd2fae6dd5f80eb63d1027e5215c0aadd8f3ffb73680fa` |
| 17 | `theorem` | [mem_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/mem-trans.md) | 143 | `result-track:9adc3ab4d7af32f312813784abab15ca4c1b8389ba077cef5714a46bfee87ef9` |
| 18 | `theorem` | [trans_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/trans-eq-some.md) | 147 | `result-track:08c8907e7934f2d060e9300919144dfe46789a1b6ea3f345f177963bff0ce4aa` |
| 19 | `theorem` | [trans_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/trans-eq-none.md) | 151 | `result-track:8c527589af7fa9795520aaf3aff01c5ca7a58626f5f57cf8bdc8182d0c695757` |
| 20 | `theorem` | [refl_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/refl-trans.md) | 158 | `result-track:ea7b47ff758fb4af12608ebdc5b7f6e6a89a645901474cad4724768a65fa99e7` |
| 21 | `theorem` | [trans_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/trans-refl.md) | 162 | `result-track:2c323f106e619d8d52c4824717c07e49e976ee9545c558c91a213b3f6a120524` |
| 22 | `theorem` | [inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/inj.md) | 165 | `result-track:eccc19410b712aeb23dacfbf4c4bb54a4147b7d9177904a156284322ec93e0e6` |
| 23 | `theorem` | [injective_of_forall_ne_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/injective-of-forall-ne-issome.md) | 169 | `result-track:9899b657caaef98b8189fccee0b70802595e017cea3c54d24bf3a562eb4c0197` |
| 24 | `theorem` | [injective_of_forall_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/injective-of-forall-issome.md) | 182 | `result-track:7882a012fc3d449e83e8a6b8bc715e48cec82c3e8b170e72b40db5cb71c05e80` |
| 25 | `def` | [ofSet](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/ofset.md) | 192 | `declaration-track:22e559723423908aca5a39a093787c03f13242b2212392b79e9be00232144e75` |
| 26 | `theorem` | [mem_ofSet_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/mem-ofset-self-iff.md) | 203 | `result-track:e21db84f82dc1693fd6c4567f1014f753e006a29835cacb1416a1d8a3a776683` |
| 27 | `theorem` | [mem_ofSet_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/mem-ofset-iff.md) | 206 | `result-track:fced91d08a53d4bf6bdc005940f36b1a458d2b7824d1915cf6cd9c8d788adefc` |
| 28 | `theorem` | [ofSet_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/ofset-eq-some-iff.md) | 218 | `result-track:fdb0aee175681ba737cfedca08ec15923771a0444098a7f26426b531c7fdda87` |
| 29 | `theorem` | [ofSet_eq_some_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/ofset-eq-some-self-iff.md) | 222 | `result-track:30e5807944fb2378a05d3ca882cc4ad019ceb86e3e22662a326d94ef06938a41` |
| 30 | `theorem` | [ofSet_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/ofset-symm.md) | 227 | `result-track:a4878ad54669c71facc6f4e5f92ed7a898bd1567cee65d7c642c45bed275ce74` |
| 31 | `theorem` | [ofSet_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/ofset-univ.md) | 231 | `result-track:5ce1f386be17858e92502923667331699baf902b266a5f549edf8145be1194ff` |
| 32 | `theorem` | [ofSet_eq_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/ofset-eq-refl.md) | 235 | `result-track:47c6836a9507855408a68392939b6e8a4e70067f15c322408342997065062ae8` |
| 33 | `theorem` | [symm_trans_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/symm-trans-rev.md) | 245 | `result-track:37d8229c7cb1d72b21346860f1f4fc77f11f7811e7868af682a3c54248eaf75d` |
| 34 | `theorem` | [self_trans_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/self-trans-symm.md) | 248 | `result-track:e247c681261e47cfd9cf6a2c32c117a9bfda5b3ad2619f9ceafa2435a3fca78f` |
| 35 | `theorem` | [symm_trans_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/symm-trans-self.md) | 258 | `result-track:d19a3317789c6a85a2e9050c45f200b66655b859b8b52fe0950e87b1cebc7f10` |
| 36 | `theorem` | [trans_symm_eq_iff_forall_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/trans-symm-eq-iff-forall-issome.md) | 261 | `result-track:4258b299c06c4783fd7b18637c28471bc897e57980a28f1d345787a255efe268` |
| 37 | `instance` | [instBotPEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/instbotpequiv.md) | 265 | `declaration-track:6d38c0c09496c5d6ddfa8f568864572df4c3ac8c22d27a8dfe63d0221a2362ee` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/instance-source-edition-3.md) | 270 | `declaration-track:6c04156f429125a4c3f828d50460a324541da84e98a9f18bb7507c76119797d8` |
| 39 | `theorem` | [bot_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/bot-apply.md) | 274 | `result-track:78bacfde96b54e67bccdd33fcbdb22b620fe53c8bbba392a22ae24f6642b7ddb` |
| 40 | `theorem` | [symm_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/symm-bot.md) | 278 | `result-track:7c97d2c153aa955cbac2f4726f14e06425484c3733b69b66ad6581a4fe84c45e` |
| 41 | `theorem` | [trans_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/trans-bot.md) | 282 | `result-track:e76f3cc5046d41c65d4132fd3061d661bccff605975ab03de5fd5f4e4c09579f` |
| 42 | `theorem` | [bot_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/bot-trans.md) | 286 | `result-track:0d734747b55fd206e066b902e4af5cb61b17f1e88631fe8b6e61330e36e90c79` |
| 43 | `theorem` | [isSome_symm_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/issome-symm-get.md) | 289 | `result-track:71a7e6fc0dafdff4353c38a909f3bec30b24e56100fe47e07e17f98a2a40efb8` |
| 44 | `def` | [single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/single.md) | 298 | `declaration-track:67b8012767849d29e55fe7898e73affbcb3c9ccc893aa0adcd135ac989218eb5` |
| 45 | `theorem` | [mem_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/mem-single.md) | 311 | `result-track:0d7e188f789b2bc6c59b4d1d4a709308d9368cdb5f3ab718bf9d429d84271d21` |
| 46 | `theorem` | [mem_single_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/mem-single-iff.md) | 314 | `result-track:0687a37607cb330419452583b3c79904d366ab0b60397b18bd1aafc88155e303` |
| 47 | `theorem` | [symm_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/symm-single.md) | 318 | `result-track:2107f8a1cd168c4988a45d79c3c38952b63b154f8cd5302baf9b90f516170468` |
| 48 | `theorem` | [single_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/single-apply.md) | 322 | `result-track:a7f27d00e2539f4cfa1630262cb0a22854ce094d68259589113b6909db693985` |
| 49 | `theorem` | [single_apply_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/single-apply-of-ne.md) | 325 | `result-track:22e8644a4a3f455bf9ab7ca12b4be375243b04ef0a7aaf11648da65f901f139f` |
| 50 | `theorem` | [single_trans_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/single-trans-of-mem.md) | 328 | `result-track:762c510f1ec88948af09eb3d389dc1df600ae343f7eb811943cf9113bc6b70a5` |
| 51 | `theorem` | [trans_single_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/trans-single-of-mem.md) | 334 | `result-track:25dee6ceaf642e6f649ee8e9a9fe408f872d5b09d81eb0a8bf50f09b8872043a` |
| 52 | `theorem` | [single_trans_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/single-trans-single.md) | 339 | `result-track:589d0f8d39f942c98c5e40a06a240269032dc5f95eb56dceba16957f78267bc8` |
| 53 | `theorem` | [single_subsingleton_eq_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/single-subsingleton-eq-refl.md) | 344 | `result-track:7e4a957d20857fcc97045e7429da4b19a124d2f526b76e0482c1b9e2eae27694` |
| 54 | `theorem` | [trans_single_of_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/trans-single-of-eq-none.md) | 349 | `result-track:c14f1ffb2c8d5ca340ba76b042707a4d6b47f0403cb36d378d562554cb847e18` |
| 55 | `theorem` | [single_trans_of_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/single-trans-of-eq-none.md) | 358 | `result-track:09f9c8fc068e573b3f4633e6dc4039d783c4473ca9dff95c398f24578ec756a7` |
| 56 | `theorem` | [single_trans_single_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/single-trans-single-of-ne.md) | 362 | `result-track:fbca00785765b8e7528b0872e61439067ef826c2e2ac749a4aa843c95213c576` |
| 57 | `instance` | [instPartialOrderPEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/instpartialorderpequiv.md) | 370 | `declaration-track:0836f706194e81d4438d14e5a991acf1928c351ead2a61b67dce51bf6cbfa7ff` |
| 58 | `theorem` | [le_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/le-def.md) | 382 | `result-track:f175431340f2923e824c53f50aa458cf42aa32315b2613ed58beaa07a1ddc37e` |
| 59 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/instance-source-edition-2.md) | 385 | `declaration-track:389db3acd3165aa1d6b0c6222964967d9907a18294f479647d4119900248eb9a` |
| 60 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/instance.md) | 388 | `declaration-track:1990b39e2ad1a0cb607f38c2dde256eb9f801f249757713679c0c62c9a98fe50` |
| 61 | `def` | [toPEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/topequiv.md) | 426 | `declaration-track:6f4698b9b0bad8054667235b8ff6a5bb2a32d34662b5ae7e30ba86728c5be80a` |
| 62 | `theorem` | [toPEquiv_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/topequiv-refl.md) | 432 | `result-track:4d9b3a6636de058a8ce8336b6c4d89b4d941764f5dd5ecbf0636c3b40e0baa2c` |
| 63 | `theorem` | [toPEquiv_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/topequiv-trans.md) | 435 | `result-track:ce9dfce3cf71c93f71cc48e415db9c2ac170881ae10eec9264bafff922066662` |
| 64 | `theorem` | [toPEquiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/topequiv-symm.md) | 439 | `result-track:26e21401cb3fe2374c8cdf4dc9e5c966842ca8548ce01967eb657ed5b6af648f` |
| 65 | `theorem` | [toPEquiv_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedSymmBijective.lean/declarations/topequiv-apply.md) | 443 | `result-track:363ca036c7eab1c683359e0c1a7c5eca5fc7237f358182a34d4a9379804b9770` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fef8fee0c96ca892a1c9f19ab444669e3901c470ae0384d57a52a2f8fc1a723 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantc0e56170480f1863296d4892f13dcd0a9806a3973c89fb891925c326ca5b6520.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantc0e56170480f1863296d4892f13dcd0a9806a3973c89fb891925c326ca5b6520.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

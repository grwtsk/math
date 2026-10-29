# Verification target: Weak Pullbacks Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3067cfc8db96867e1608d6a1268aab5c9a9f17e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3067cfc8db96867e1608d6a1268aab5c9a9f17e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasWeakPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/hasweakpullback.md) | 44 | `declaration-track:17bbc61d3c939260ab1624516231d6fe4dd0818e984be52ebaa1a9c329ba16fc` |
| 2 | `abbrev` | [weakPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback.md) | 49 | `declaration-track:88757b1a736a9c6aeef16c241c018b813494fdc1b0415e5f8363e62d6d7a40f7` |
| 3 | `abbrev` | [weakPullback.cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-cone.md) | 53 | `declaration-track:0a24a8030e928054550bdedbcbc1cb429509d111df06afef8f2a00b675d56045` |
| 4 | `abbrev` | [weakPullback.fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-fst.md) | 58 | `declaration-track:7cfb17076ba0711812020d99383f49da6be8ee69a81a305544dc2b22c904b16f` |
| 5 | `abbrev` | [weakPullback.snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-snd.md) | 63 | `declaration-track:d69137a1d0f0b7239357fd142a4bc9fd403cad5c4feaae3949a4cc0c09c6555e` |
| 6 | `abbrev` | [weakPullback.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-lift-source-edition-2.md) | 69 | `declaration-track:d6373051ff3365dc72fcb426a1ebeef44ebeca83d8fc25dd81b6fff88b405ad9` |
| 7 | `lemma` | [weakPullback.exists_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-exists-lift.md) | 74 | `result-track:91b0e91f3996e8a3240bf019ebda8cb825b7cfb3f01f4fed7b97cb65658c9574` |
| 8 | `abbrev` | [weakPullback.isWeakLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-isweaklimit.md) | 81 | `declaration-track:2c68aae160d2280674ef40fd1b3eb13fa712d65a9f674bc0802e27658ef63a44` |
| 9 | `theorem` | [weakLimit.pullbackConeFst_cone_cospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weaklimit-pullbackconefst-cone-cospan.md) | 86 | `result-track:66ed4b924fdfba9b18984de83847bbe2485ffeef780389fb095246f96d456028` |
| 10 | `theorem` | [weakLimit.pullbackConeSnd_cone_cospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weaklimit-pullbackconesnd-cone-cospan.md) | 91 | `result-track:9941430fe00ba239625aeedca696efdbb1ac7895dd0959027f78df5d25dbf2d4` |
| 11 | `theorem` | [weakPullback.lift_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-lift-fst.md) | 96 | `result-track:351444127adc412f510672970bb792eab943108fe44026412f30c5dd9ee4ed32` |
| 12 | `theorem` | [weakPullback.lift_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-lift-snd.md) | 102 | `result-track:3a0b6642e22021b04ee4e83dbfcec5cefc733fd1f6f34f7f6144b5fb98a9c066` |
| 13 | `def` | [weakPullback.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-lift.md) | 109 | `declaration-track:d1a4d4ffd1000b309f78b1ad7430ed4b507532d006138d67e0bdb500acff525f` |
| 14 | `theorem` | [weakPullback.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-condition.md) | 116 | `result-track:7fa35f45bee52ecc3ae5e4987c150ee93ab7788ecdb128a70cfa62aa862ce8cd` |
| 15 | `abbrev` | [weakPullback.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-map.md) | 131 | `declaration-track:bd5cc235c6e03eec8b737ed27b8dc79c36ba57eb72995f708d8e2c31793c8040` |
| 16 | `abbrev` | [weakPullback.mapDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullback-mapdesc.md) | 140 | `declaration-track:a171830e7b87c44070ddc626510f10dfc7882b38680643de4b5c4c87b9c44ef5` |
| 17 | `def` | [isWeakLimitAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/isweaklimitaux.md) | 151 | `declaration-track:2455858922d665286d328ecb4c8868d696ed7496722258f56c0c5c1c7d03203a` |
| 18 | `def` | [isWeakLimitAux'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/isweaklimitaux-source-edition-2.md) | 164 | `declaration-track:66a4ae9091aa5c5f9585557fb615bc59450ca05a7d4284029ec208fecbc380e2` |
| 19 | `def` | [IsWeakLimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/isweaklimit-mk.md) | 174 | `declaration-track:03d27cfa2a5d011cc4c67af088f0b7fae7985b35530e3ddb1d43e169cac09315` |
| 20 | `def` | [IsWeakLimit.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/isweaklimit-lift.md) | 184 | `declaration-track:29189555f824b5f098e75a63fb710fd4933f5d9fd1022b1927d9c868b74b6d64` |
| 21 | `lemma` | [IsWeakLimit.lift_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/isweaklimit-lift-fst.md) | 189 | `result-track:2f63a944dd9eedd1b31f7b4a3788e6bf913733488ae24bf5919a50928b249475` |
| 22 | `lemma` | [IsWeakLimit.lift_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/isweaklimit-lift-snd.md) | 194 | `result-track:f04ed034994e4b2e4b10bf7fcebd151ad53698ff1a58df933aced456f7ed41ee` |
| 23 | `def` | [IsWeakLimit.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/isweaklimit-lift-source-edition-2.md) | 201 | `declaration-track:a8e8cea7c8d777b1bfe7c7b9ed18d006c1b711e6a17d58c0c308faa773c445ff` |
| 24 | `def` | [mkSelfIsWeakLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/mkselfisweaklimit.md) | 208 | `declaration-track:e0a8ecd25bbd49658f685e0c1194a6ac230b521092dfff01a35f3544b67ea0a2` |
| 25 | `def` | [weakPullbackIsWeakPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/weakpullbackisweakpullback.md) | 215 | `declaration-track:3d933267e505487f4027db0161e9a0853be3d8b12aee8ae11e8def5eb98083f3` |
| 26 | `abbrev` | [HasWeakPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/hasweakpullbacks.md) | 224 | `declaration-track:8d4cc440ff4b0cae171bba475f4c4b8f156bb2edfa52f7b42aa8e386c4b389d4` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/instance.md) | 227 | `declaration-track:b635c28dc1b4eee5f8dcd6b300434d2c7842f265a34be3d78ce35fb9b1f4623d` |
| 28 | `theorem` | [hasWeakLimit_cospan_of_hasLimit_pair_of_hasWeakLimit_parallelPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/hasweaklimit-cospan-of-haslimit-pair-of-hasweaklimit-parallelpair.md) | 234 | `result-track:bbf1b98d56827235427dcb22e327da564eca7819d6c464dd2ea5f3aa058e028d` |
| 29 | `theorem` | [hasWeakPullbacks_of_hasBinaryProducts_of_hasWeakEqualizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WeakPullbacksNamespacedPublic.lean/declarations/hasweakpullbacks-of-hasbinaryproducts-of-hasweakequalizers.md) | 252 | `result-track:31898c952fb71bffc658b63bc545fe09b5ec83a93826753763c073ace0e66614` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f86ef1396e558460dfeb5d1238f9cab80cee391d6f5866cd331950c9d2d37b74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakPullbacks/Variant3ee6a0551449b3efa3e2543b531f8daa684defbd7704ab969a7365490798adec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

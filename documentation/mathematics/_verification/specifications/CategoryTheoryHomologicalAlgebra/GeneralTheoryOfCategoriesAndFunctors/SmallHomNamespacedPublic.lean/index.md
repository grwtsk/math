# Verification target: Small Hom Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e49605493428f64f1fd975d1bbe644831f0ae66",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantb16a55b6ce7c98716c6afae9b7e35342af4419d9fc6270ad667ded1bcc844d55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e49605493428f64f1fd975d1bbe644831f0ae66`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantb16a55b6ce7c98716c6afae9b7e35342af4419d9fc6270ad667ded1bcc844d55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantb16a55b6ce7c98716c6afae9b7e35342af4419d9fc6270ad667ded1bcc844d55.lean.json)

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
| 1 | `class` | [HasSmallLocalizedHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/hassmalllocalizedhom.md) | 58 | `declaration-track:47e287d3a40cc0a93fffcda9933e2f90484f7890dcdc687fd02d3ae711ce58bc` |
| 2 | `lemma` | [hasSmallLocalizedHom_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/hassmalllocalizedhom-iff.md) | 65 | `result-track:3add7fc7b19071da96c2d48bc64ed3e8cfb3921c48608685adc7d95c3d5a4894` |
| 3 | `lemma` | [hasSmallLocalizedHom_of_isLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/hassmalllocalizedhom-of-islocalization.md) | 74 | `result-track:685c9b79091b429fab0a3950e793cc3f32699ec4615618a5fc387c1c4320aa14` |
| 4 | `lemma` | [small_of_hasSmallLocalizedHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/small-of-hassmalllocalizedhom.md) | 80 | `result-track:815eb61635adb859af2c02f13a5d3d611252c9ff4428c336ed4d1e6675ad59cb` |
| 5 | `lemma` | [hasSmallLocalizedHom_iff_of_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/hassmalllocalizedhom-iff-of-isos.md) | 84 | `result-track:08dc70c577a308f72634a02e98be46335ed39b6f4dd97328366dfa1a21c1cb60` |
| 6 | `lemma` | [hasSmallLocalizedHom_of_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/hassmalllocalizedhom-of-isos.md) | 89 | `result-track:9593162da28fcfbd6dd71a8c7987c23bcb2eba102de721d00659fae668a407cd` |
| 7 | `lemma` | [hasSmallLocalizedHom_iff_target](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/hassmalllocalizedhom-iff-target.md) | 95 | `result-track:9d5ccda31fad8b1ec565fb1f42b76b19105495014a2c433b1d1000a199c72ade` |
| 8 | `lemma` | [hasSmallLocalizedHom_iff_source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/hassmalllocalizedhom-iff-source.md) | 100 | `result-track:9cd6151d7810b88975406a03d01fa3b1ce32ac30175406755e70830ac7e71639` |
| 9 | `def` | [SmallHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/smallhom.md) | 110 | `declaration-track:07699924fe7a1aaf3f3015e450cc25a73ced4a90a4d91120a26cfc6b4e3b2438` |
| 10 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/equiv.md) | 118 | `declaration-track:3c37284027bf17a46c872889cb504c5c5a65edf81ef22edc3ab9adab7da31941` |
| 11 | `lemma` | [equiv_equiv_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/equiv-equiv-symm.md) | 125 | `result-track:00245f6089504fd63a29a9497fa89ec8d17193afa725fb358e3518400f69975f` |
| 12 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/mk.md) | 136 | `declaration-track:32626c23a77ce288d66805b6f0aeaeea4176cf26ef2db96446dd42aebf543bf3` |
| 13 | `lemma` | [equiv_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/equiv-mk.md) | 142 | `result-track:19ec40bb78fae0de371fc3c3c6cd2806997bac59821f3cf9300741aca2de0f23` |
| 14 | `def` | [mkInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/mkinv.md) | 150 | `declaration-track:8ae1d7d77a4cf8f2893a27231617ed1676404237c63576d17df90628bc11b035` |
| 15 | `lemma` | [equiv_mkInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/equiv-mkinv.md) | 156 | `result-track:2a352a1c97e383b400a829046f119d1f04e4ecd1fed79b8a539ad35949139672` |
| 16 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/comp.md) | 163 | `declaration-track:ddb05fabbeac83a7287fb4a0fa377e034c3a12f4fb21b5a4a60ed931a5effac7` |
| 17 | `lemma` | [equiv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/equiv-comp.md) | 170 | `result-track:0b7ec377480b9aa461db369b10ea0c5691ddd5004eca83dd111e09ee2064bc11` |
| 18 | `lemma` | [mk_comp_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/mk-comp-mk.md) | 186 | `result-track:860dcc2f140ae7a31c4fed31df29ebc950d30acbd846695c03cf3b38525eeb3a` |
| 19 | `lemma` | [comp_mk_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/comp-mk-id.md) | 192 | `result-track:03e7725a9b98afff5e3017c96b2285c6c1d1ae9e4e08e1ee54c2cd30caa8952e` |
| 20 | `lemma` | [mk_id_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/mk-id-comp.md) | 198 | `result-track:3245f5146d812e1bdce6a05646e0f4033d4dbf67f03f72013372515833d2f402` |
| 21 | `lemma` | [comp_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/comp-assoc.md) | 204 | `result-track:694cfe7ae12e43a33a1a4e148069471bfafa901c2e3d53835135dac7facce430` |
| 22 | `lemma` | [mk_comp_mkInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/mk-comp-mkinv.md) | 213 | `result-track:06a6a28dc13dfd3c062069c92e1d201166522571d9d45c9de670be2a5c3713e6` |
| 23 | `lemma` | [mkInv_comp_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/mkinv-comp-mk.md) | 219 | `result-track:ec2dc5465e3ecf282ffb8d4c04560ba45b96d592fbeca98bc55fbcfb35699ac8` |
| 24 | `def` | [chgUniv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/chguniv.md) | 229 | `declaration-track:1ed5622d453d87da6d900eb634b06e0487e18c0dc9421192538345b89e10825a` |
| 25 | `lemma` | [equiv_chgUniv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/equiv-chguniv.md) | 234 | `result-track:79908dd493555bd8200307024fc965775112931cbeff8d1879e1cf23f88e86d6` |
| 26 | `def` | [smallHomMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/smallhommap.md) | 267 | `declaration-track:39d10a2b853bea349bde0de7fa60772e08801f3aa39f2969435c7e993cc4a716` |
| 27 | `lemma` | [equiv_smallHomMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/equiv-smallhommap-source-edition-2.md) | 275 | `result-track:5f61ea918167c8388a10bb456c8e54a205b4939250712e0ee811ebac211db063` |
| 28 | `lemma` | [smallHomMap_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/smallhommap-mk.md) | 308 | `result-track:a302c6343b1b79040825c830fc8df3f0363891e9e98f806e4571ee2d530b5780` |
| 29 | `lemma` | [smallHomMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/smallhommap-comp.md) | 326 | `result-track:aa978630cd7cb546128a07fbc74c55c41fc1ce67c21df178095c74fc5ff2077a` |
| 30 | `def` | [smallHomMap'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/smallhommap-source-edition-2.md) | 344 | `declaration-track:c99c16c486fbbe9a52a0aa46289f0e264cd8c8f3cb7670da5c23dbdb29f72863` |
| 31 | `lemma` | [equiv_smallHomMap'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/equiv-smallhommap.md) | 353 | `result-track:285aa61903cdb56d5a2574a65f55ea3a8422f9666664c36e71fbd8227bf322aa` |
| 32 | `lemma` | [smallHomMap'_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/smallhommap-mk-source-edition-2.md) | 362 | `result-track:b9100473d0c0ee46ccc32d1f2768bc7c30b06597d7e2db0d1ae5cf160a74a0b6` |
| 33 | `lemma` | [smallHomMap'_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespacedPublic.lean/declarations/smallhommap-comp-source-edition-2.md) | 378 | `result-track:f84768fcf413fa03316e40b7ee2b47b77ab9a6ee52f23340226890bde4bd49c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d92ad80c38593d02df134b3c76a1f01e9e772b441ca08b1c44950fc6ed54fd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantb16a55b6ce7c98716c6afae9b7e35342af4419d9fc6270ad667ded1bcc844d55.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantb16a55b6ce7c98716c6afae9b7e35342af4419d9fc6270ad667ded1bcc844d55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

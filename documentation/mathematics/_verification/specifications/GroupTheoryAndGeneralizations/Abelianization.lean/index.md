# Verification target: Abelianization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6ae1c63f35d57a1725a57f662344e2388340fec",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6ae1c63f35d57a1725a57f662344e2388340fec`.

Source path: `GRWTSK/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Finiteness` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commutator](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/commutator.md) | 39 | `declaration-track:e6a56ed3db1dbf2d5ad29e224be4a8d95a414fe661b0ee689329143f392e7b4f` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:8065d1e846877fab9ec07b03d24d229a3438b6afe7fe57b204bf99958449afd8` |
| 3 | `theorem` | [commutator_def](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/commutator-def.md) | 45 | `result-track:fc9c40565dfe3a4e51a2cf57d5cb2c1e590d5f80802a9bcef99949cbd8714124` |
| 4 | `theorem` | [commutator_eq_closure](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/commutator-eq-closure.md) | 49 | `result-track:724e7163c6de010558af3c74a0648793fdbe8381f08e4e5e6a34ede013ab746d` |
| 5 | `theorem` | [commutator_eq_normalClosure](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/commutator-eq-normalclosure.md) | 53 | `result-track:47c7634270f0747ea4e39d8112bfb4435ce17d1d6847ba170ad2aee3269024ec` |
| 6 | `instance` | [commutator_characteristic](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/commutator-characteristic.md) | 57 | `declaration-track:edf4199140d67e5a8cb997c0ed01ef8f219561e48fa22a25eec5297053f9ba74` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/instance.md) | 61 | `declaration-track:7e89babca426fc70ee3942c7bc5eec16434047b19ec31ff3086d316861a0ac0f` |
| 8 | `theorem` | [rank_commutator_le_card](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/rank-commutator-le-card.md) | 65 | `result-track:fdae755b36cfb18b1bd9887e6bd2018452eb9bc47ee8891040e947151282ed74` |
| 9 | `theorem` | [commutator_centralizer_commutator_le_center](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/commutator-centralizer-commutator-le-center.md) | 71 | `result-track:a7dd26838e9ef0c25805f8dfab2ce088c5fca1ee573eb35e517d8d3a64a66f26` |
| 10 | `def` | [Abelianization](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/abelianization.md) | 83 | `declaration-track:090b477d172d95c34307cc306e615d709054aa6cf6d88fc835012dd8c9a4be68` |
| 11 | `instance` | [commGroup](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/commgroup.md) | 91 | `declaration-track:07a2c349ca9e193b3d257deae6772b525c58815fa891b30c96dc978da9b2998c` |
| 12 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/instance-source-edition-3.md) | 100 | `declaration-track:91b6427ca0d1bfcb1ff29ddf49e1bdfa8424f0ef06fb22e343cab61c4d415746` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/instance-source-edition-7.md) | 103 | `declaration-track:fec89ed5f2d76839419891e190e75ca7e574f981adedb81bee443936e2c2749f` |
| 14 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/instance-source-edition-6.md) | 106 | `declaration-track:ca742fc265d5a848085a12fad2f1d88d65f93bdd7c663d7a7bc3d2be03e57319` |
| 15 | `def` | [of](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/of.md) | 112 | `declaration-track:d3a849fa500fabb5213c0583de3b68a63e2b65664e67c3b413faf0f673c96370` |
| 16 | `theorem` | [mk_eq_of](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/mk-eq-of.md) | 119 | `result-track:7f1d9dbbf65d786f1c79456883ebb61ede5762c27bba4bf4326489090e3895ce` |
| 17 | `theorem` | [commutator_subset_ker](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/commutator-subset-ker.md) | 130 | `result-track:97191a6793b7ddb8e0ff9bf9d4a34ea95c7b65d172541692b9961e17a41b5345` |
| 18 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/lift.md) | 138 | `declaration-track:920db11c12e954f9fa2c001957ba4d98410d5cd23fff92f8fee3fd274380c2c3` |
| 19 | `theorem` | [lift.of](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/lift-of-source-edition-2.md) | 146 | `result-track:ad36429a46918690c13ef74d0aacecc9b7c27c2ca05237d89d1eb4b4bc77600d` |
| 20 | `theorem` | [lift.unique](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/lift-unique.md) | 150 | `result-track:e311f84a07b4f8ba5d468d7d7eb1c69c08dc3b2d337a0abc6da3a9702b7aa887` |
| 21 | `theorem` | [lift_of](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/lift-of.md) | 158 | `result-track:169cec291a4831995d80b469a9f05c948320d1243c1a33f55a0d7a2e2cde6d09` |
| 22 | `theorem` | [hom_ext](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/hom-ext.md) | 168 | `result-track:79a3ee92c186be7fb499acb575a1ed914123755cfac62cd93e96fb8b3617c7c9` |
| 23 | `def` | [map](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/map.md) | 177 | `declaration-track:2cf636fdd43910b59874f2b91928090df7c92f55717664663616c3e6178ef07c` |
| 24 | `theorem` | [map_of](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/map-of.md) | 182 | `result-track:21252405b8f6611fda0590a9517de4f46e0cd7638d6f1adcbd00f65de148e71f` |
| 25 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/map-id.md) | 187 | `result-track:d2dcdcdc6d4fcca4083d549b7c21baad37ad3f9dbcf5049b499e5233bea81e21` |
| 26 | `theorem` | [map_comp](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/map-comp.md) | 192 | `result-track:5921f3bdbc19221974e3edc1533185de9caa4eff16f1e39be2aff992ee51823e` |
| 27 | `theorem` | [map_map_apply](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/map-map-apply.md) | 197 | `result-track:f912b32d425df2b4c8135e76fcaf6fea61e7b244ac2a8d6797583b917028e20c` |
| 28 | `def` | [MulEquiv.abelianizationCongr](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/mulequiv-abelianizationcongr.md) | 212 | `declaration-track:2f6ef932876afb8509641b48cb7106c34c368d9f4f30bdfef7f2635bd5a2207e` |
| 29 | `theorem` | [abelianizationCongr_of](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/abelianizationcongr-of.md) | 225 | `result-track:8db4082821a921b25dc1916922fe4f4399bf5c22bbf5eefc66ac2ac7b590a8b8` |
| 30 | `theorem` | [abelianizationCongr_refl](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/abelianizationcongr-refl.md) | 231 | `result-track:7c6cf4be4dc25885ea86fc80adce233329a2b445154e1f1151d2506ac0cbe9e8` |
| 31 | `theorem` | [abelianizationCongr_symm](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/abelianizationcongr-symm.md) | 237 | `result-track:015316e612a54381af3202afb3eb8013806aac7fdd8f5b63e6f46399ba02eac1` |
| 32 | `theorem` | [abelianizationCongr_trans](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/abelianizationcongr-trans.md) | 242 | `result-track:8b29f8366899b55d29bac7986ff85b572c124ae16112cc9cdb71760537bc2b74` |
| 33 | `def` | [Abelianization.equivOfComm](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/abelianization-equivofcomm.md) | 251 | `declaration-track:35d693fada1aa9626ed99d2f467651bb29162c250906d7356723eb1c5697dd6c` |
| 34 | `def` | [commutatorRepresentatives](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/commutatorrepresentatives.md) | 266 | `declaration-track:08584e38ecc3153b2d410d9f4561ccc87693c9048975baebdf8c922e7d92a29f` |
| 35 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/instance-source-edition-4.md) | 270 | `declaration-track:92354c1f1b751e7837614e9b04799b9c64169fb8c9f1be3556bdeefd9b16ff46` |
| 36 | `def` | [closureCommutatorRepresentatives](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/closurecommutatorrepresentatives.md) | 274 | `declaration-track:d5257d1ad76ad098dca1872cdf4fe946fcf079f4025ddfe6b4187b212fed13b4` |
| 37 | `instance` | [closureCommutatorRepresentatives_fg](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/closurecommutatorrepresentatives-fg.md) | 278 | `declaration-track:c7a53831149856fcb2d9c5bd3e573613f6d23e99925a3ee30dba1ab9614ba07b` |
| 38 | `theorem` | [rank_closureCommutatorRepresentatives_le](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/rank-closurecommutatorrepresentatives-le.md) | 283 | `result-track:3662b835ebaaa8bab2d74bdedde626135c3ad39f1527a0db09e8ef6f24df02d3` |
| 39 | `theorem` | [image_commutatorSet_closureCommutatorRepresentatives](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/image-commutatorset-closurecommutatorrepresentatives.md) | 293 | `result-track:9dae18bea58cfb0f448b24b9884e521dc2eed3179468b5e1403b64d860a247ae` |
| 40 | `theorem` | [card_commutatorSet_closureCommutatorRepresentatives](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/card-commutatorset-closurecommutatorrepresentatives.md) | 307 | `result-track:5f37e373ac54782a515e3d91b4aa921497d6f83d52f7ba85e087237ed3df002b` |
| 41 | `theorem` | [card_commutator_closureCommutatorRepresentatives](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/card-commutator-closurecommutatorrepresentatives.md) | 313 | `result-track:c97e1fbe3f74243a9dee642eded6000d10ff009ee155e5dae6645cd9020d65ac` |
| 42 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Abelianization.lean/declarations/instance-source-edition-5.md) | 320 | `declaration-track:977b3f3e9c0a0cf856b5efe5e44854a961d550cd907be0e220c36f69764fffac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c342ab067a494ce2c8e9c69470d3507b3fd0cfb945c4c6137b0d86d33636548 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

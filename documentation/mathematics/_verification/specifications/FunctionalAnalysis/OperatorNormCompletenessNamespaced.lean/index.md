# Verification target: Operator Norm Completeness Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce89b94bc69ef6160c4384f1fd7e906d5be86167",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce89b94bc69ef6160c4384f1fd7e906d5be86167`.

Source path: `GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Bilinear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NNNorm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofMemClosureImageCoeBounded](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/ofmemclosureimagecoebounded.md) | 48 | `declaration-track:28f8473d791d62ea226d1e0556f91c3b8aac1d9adade33f10d2c29cec92f6346` |
| 2 | `def` | [ofTendstoOfBoundedRange](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/oftendstoofboundedrange.md) | 66 | `declaration-track:9630a202fb19b63ba35dcd249499b47d7d9b138cd4fad8593261f19774c2ac09` |
| 3 | `theorem` | [tendsto_of_tendsto_pointwise_of_cauchySeq](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/tendsto-of-tendsto-pointwise-of-cauchyseq.md) | 75 | `result-track:82ea8897eb92df00ba945c5d2151e670340d4949a5bf9e100fcc571a19e8c9d4` |
| 4 | `theorem` | [isCompact_closure_image_coe_of_bounded](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/iscompact-closure-image-coe-of-bounded.md) | 96 | `result-track:142791b78a81661563e842f15fbfca08e8f7c1d4970e041152b180f98a75a6b9` |
| 5 | `theorem` | [isCompact_image_coe_of_bounded_of_closed_image](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/iscompact-image-coe-of-bounded-of-closed-image.md) | 108 | `result-track:7c6a048e01336eb90dd6300483374d5747063f460bf37bce41093bb36fd48517` |
| 6 | `theorem` | [isClosed_image_coe_of_bounded_of_weak_closed](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/isclosed-image-coe-of-bounded-of-weak-closed.md) | 118 | `result-track:e24e41eb5b72dbb37783cc95e740395ebf6216bc984cd073ad3dc55e868de2df` |
| 7 | `theorem` | [isCompact_image_coe_of_bounded_of_weak_closed](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/iscompact-image-coe-of-bounded-of-weak-closed.md) | 129 | `result-track:15a0d82f785e92849889ec96ea7a235c7f6a178a8f37fa38f0a86212a9312970` |
| 8 | `theorem` | [is_weak_closed_closedBall](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/is-weak-closed-closedball.md) | 138 | `result-track:b7ee9163c672e8ef21f364a3b24faa5cd3c0b38ef807e77e9dba8d092b14258e` |
| 9 | `theorem` | [isClosed_image_coe_closedBall](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/isclosed-image-coe-closedball.md) | 151 | `result-track:b4f24b00fedb35a37fec511a834f6eca81162f1ecefacbd33a432b92c78344e3` |
| 10 | `theorem` | [isCompact_image_coe_closedBall](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/iscompact-image-coe-closedball.md) | 159 | `result-track:503b8031216fbe78c307d6fa1df7837049350a510709a786d339b659fa6c081f` |
| 11 | `def` | [extend](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/extend.md) | 179 | `declaration-track:5de0a720f7c128388485624c3344b580a1c41eab849c0121550ea95556fe8234` |
| 12 | `theorem` | [extend_eq](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/extend-eq.md) | 204 | `result-track:398f0aeb4ac283a6ca64c0b6f3c0cd9467c6b3a739562021afe8e31a6bbe3384` |
| 13 | `theorem` | [extend_unique](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/extend-unique.md) | 207 | `result-track:e2c38dfefeeaa7b97ee466a2e37060f4797a48a3e1e666e4362db1f6f2b0d141` |
| 14 | `theorem` | [extend_zero](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/extend-zero.md) | 212 | `result-track:5f1e3d1723fa05625ab5f8a593a9337867eae013eb080017e5ce646374ca894e` |
| 15 | `theorem` | [opNorm_extend_le](../../../../FunctionalAnalysis/OperatorNormCompletenessNamespaced.lean/declarations/opnorm-extend-le.md) | 225 | `result-track:6a940bb65ad645c934d61ebd405229cada4523dd7c47820470fd934088f12fec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a31833403e93fc76686515df427612db8a4c48f36c6681ef28971e7afaa890a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

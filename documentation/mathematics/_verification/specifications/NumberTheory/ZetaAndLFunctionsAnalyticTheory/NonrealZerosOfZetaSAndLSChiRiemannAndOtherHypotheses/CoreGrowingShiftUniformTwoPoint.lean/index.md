# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftUniformTwoPoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "594f9b1aa2f5aaeed3d38d5dd386832eb8d4c70b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `594f9b1aa2f5aaeed3d38d5dd386832eb8d4c70b`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftFirstDifference`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftFirstDifference.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DyadicUniformMertensTwoPointPrefix`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicUniformMertensTwoPointPrefix.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CoreGrowingShiftPrefixEnvelope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/coregrowingshiftprefixenvelope.md) | 22 | `declaration-track:88b9f1a18e59c4699eac78e114093920970a8641bb2890dc1aa3a049522ee7d4` |
| 2 | `theorem` | [coreGrowingShiftPrefixEnvelope_of_dyadic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/coregrowingshiftprefixenvelope-of-dyadic.md) | 32 | `result-track:ced3debfb47b6092941bf3c241366af0e893215674c3dbc10ec78d84c5731c45` |
| 3 | `theorem` | [leftScale_le_harmonicShiftBase](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/leftscale-le-harmonicshiftbase.md) | 62 | `result-track:235892864244ce386b7fc437eb24f9d9623c43ab9db64de3c6a8160ef1b0df52` |
| 4 | `theorem` | [harmonicShiftFirstDifference_nonneg_all](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/harmonicshiftfirstdifference-nonneg-all.md) | 76 | `result-track:be891e0aaaf5b5d366345e82e9227ea5fd78dd93b28a6b9c8fc26b64629d20d1` |
| 5 | `theorem` | [harmonicShiftFirstDifference_le_leftScale_inv_sq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/harmonicshiftfirstdifference-le-leftscale-inv-sq.md) | 90 | `result-track:fa7235e435cbda222cb46a1e3ff85b10094ebf947405b1d2292e02d447a51a01` |
| 6 | `theorem` | [abs_cumulativeHarmonicShiftCorrelation_le_coreEnvelope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/abs-cumulativeharmonicshiftcorrelation-le-coreenvelope.md) | 127 | `result-track:400f1635adc8624826b3df951f6fcaffe0ae212f5ac1f0b4d6cfcae526e23932` |
| 7 | `theorem` | [abs_coreGrowingShiftAnchor_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/abs-coregrowingshiftanchor-le.md) | 152 | `result-track:fe284d9efe839b7db4e1e9d541902088308e50ea7f8cb44bea0d4b9355ca492b` |
| 8 | `theorem` | [abs_coreGrowingShiftFirstDifferenceTail_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/abs-coregrowingshiftfirstdifferencetail-le.md) | 191 | `result-track:80a190341c45c1467a6d8b9fc3c2ddee646dc7e37fa014d9ec9d083c136a28ba` |
| 9 | `theorem` | [abs_coreGrowingShiftFirstDifferenceDepth_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/abs-coregrowingshiftfirstdifferencedepth-le.md) | 238 | `result-track:7bd9d1d0e8fb8684e33b8b68d9dd7479bd74a7986dbc02e9277f8bfb227badf0` |
| 10 | `theorem` | [abs_coreGrowingShiftFirstDifferenceDepth_le_leftScale](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/abs-coregrowingshiftfirstdifferencedepth-le-leftscale.md) | 274 | `result-track:01dda3d3bee8648afdf79d2fadd7520bb2723fdd473fd7ce633b56dfcfb7cadd` |
| 11 | `theorem` | [coreLongDeepDepths_card_le_rightScale](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/corelongdeepdepths-card-le-rightscale.md) | 300 | `result-track:217a191aa7774bad4a209b8ab64d37f18e55932b92e707834754e84de7269304` |
| 12 | `theorem` | [abs_coreGrowingShiftFirstDifferencePacket_le_four](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/abs-coregrowingshiftfirstdifferencepacket-le-four.md) | 314 | `result-track:1326bf97aad9381ccc6f6f215cf9ecfa9b119741c816ac97347f4abb2bc51a57` |
| 13 | `theorem` | [abs_coreGrowingShiftFirstDifferencePacket_le_four_of_dyadic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/abs-coregrowingshiftfirstdifferencepacket-le-four-of-dyadic.md) | 358 | `result-track:2225191b04f39728a4fcf8807a6728eb3479b2c83a05baf98465050eb108df2d` |
| 14 | `theorem` | [subpolynomialCoreGrowingShiftFirstDifferencePacket_of_uniformTwoPoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/subpolynomialcoregrowingshiftfirstdifferencepacket-of-uniformtwopoint.md) | 367 | `result-track:5d7d29496da0935e1d00069bd63922667cb4ba330c2e7feb1be0f277042d3dc7` |
| 15 | `def` | [uniformDyadicTwoPointGrowingShiftSource](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/uniformdyadictwopointgrowingshiftsource.md) | 385 | `declaration-track:48354eb94efd31560d5f84d67a6c9cdcf5161b59150c71fea0adae202443014c` |
| 16 | `def` | [uniformDyadicTwoPointToCoreGrowingShiftAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/uniformdyadictwopointtocoregrowingshiftadapter.md) | 396 | `declaration-track:039fdf7ae19166089769691edd62a7e7c985655630aa3f0bcc1541298c3dcb1a` |
| 17 | `theorem` | [riemannHypothesis_of_uniformTwoPoint_via_coreGrowingShift](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftUniformTwoPoint.lean/declarations/riemannhypothesis-of-uniformtwopoint-via-coregrowingshift.md) | 406 | `result-track:2d9d37992b21271cfe01f89238158458f509bc8dc167243f4a1214ce8f683b27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67b817ae2a504f72b458efcf613eea86630bfff3604e605a2d75357e429d7de2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

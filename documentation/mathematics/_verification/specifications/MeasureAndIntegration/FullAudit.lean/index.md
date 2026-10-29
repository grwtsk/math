# Verification target: Full Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15ef08823849f23560ca197c8ebf7433a0650aad",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant55750b362541e62b0c47c820fa78acd4be6650289e305566234b352d417400fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FullAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FullAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15ef08823849f23560ca197c8ebf7433a0650aad`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant55750b362541e62b0c47c820fa78acd4be6650289e305566234b352d417400fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullAudit/Variant55750b362541e62b0c47c820fa78acd4be6650289e305566234b352d417400fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/FullAudit.lean/declarations/instance.md) | 20 | `declaration-track:6473b0449256f4b3644d8949369a8414cfd8857a217b323261940aed21aeb503` |
| 2 | `def` | [controller](../../../../MeasureAndIntegration/FullAudit.lean/declarations/controller.md) | 25 | `declaration-track:42eecc948d89d74d36ecb05de81be73ab3d158c64f4cbf641da9c2b81cc4f5eb` |
| 3 | `def` | [response](../../../../MeasureAndIntegration/FullAudit.lean/declarations/response.md) | 29 | `declaration-track:e213e0a8b013f29ee8cdc573a5a27e4c711baad00410578f017d27ad0cdfab31` |
| 4 | `theorem` | [controller_ae](../../../../MeasureAndIntegration/FullAudit.lean/declarations/controller-ae.md) | 32 | `result-track:a7b12896377c7f1e40b3c9a8d8fbc7fab0dcd570cbc3a2dff696b9d858494b55` |
| 5 | `theorem` | [controller_inner](../../../../MeasureAndIntegration/FullAudit.lean/declarations/controller-inner.md) | 41 | `result-track:218849f12f86131396b1b19df64d202b4947b03bd94ba3f88690b09c9ec053b9` |
| 6 | `theorem` | [reference_inner_response](../../../../MeasureAndIntegration/FullAudit.lean/declarations/reference-inner-response.md) | 47 | `result-track:4d1329cfbc1455c7f8d66f638f273e03f76e0804824f342407e97697f2f50379` |
| 7 | `theorem` | [response_ae](../../../../MeasureAndIntegration/FullAudit.lean/declarations/response-ae.md) | 54 | `result-track:93ea0a548b10f95498462fb85a429518e8c03e433a47725d076dd0a3dea40db0` |
| 8 | `def` | [signedCorrelation](../../../../MeasureAndIntegration/FullAudit.lean/declarations/signedcorrelation.md) | 66 | `declaration-track:4815fdcdf8ea364021bc32a7f79c8739b871e9edc6edccf55591d68a023b8659` |
| 9 | `def` | [signedCovariance](../../../../MeasureAndIntegration/FullAudit.lean/declarations/signedcovariance.md) | 70 | `declaration-track:4294b770b439d1895d7507f383cff5fd31c377557f11f81acdb5cc4d375cce3b` |
| 10 | `theorem` | [signedCorrelation_integrable](../../../../MeasureAndIntegration/FullAudit.lean/declarations/signedcorrelation-integrable.md) | 74 | `result-track:f30c9011da809e1cf0ba752effa0ebe34ce46e6ce3b3c183c41af8e099e01284` |
| 11 | `theorem` | [shifted_kernel_norm_integral](../../../../MeasureAndIntegration/FullAudit.lean/declarations/shifted-kernel-norm-integral.md) | 81 | `result-track:d8d21047b8fc145d28347ba13af4e8e5483cf05934ca45dbd2e9dd12d0fb5212` |
| 12 | `theorem` | [signed_product_integrable](../../../../MeasureAndIntegration/FullAudit.lean/declarations/signed-product-integrable.md) | 86 | `result-track:995e57298357b09f5d08b19e5c9f86f3634d88097ce0baf42ace40018537aaae` |
| 13 | `theorem` | [weighted_signed_product_integrable](../../../../MeasureAndIntegration/FullAudit.lean/declarations/weighted-signed-product-integrable.md) | 109 | `result-track:b546e91c28ae3ea5e9ee01c890d40c07b2a176f2ecb49d8b93e13f8fe096395f` |
| 14 | `theorem` | [signedCovariance_integrable](../../../../MeasureAndIntegration/FullAudit.lean/declarations/signedcovariance-integrable.md) | 123 | `result-track:57ea3bf64222e212ee9c3afe0ddca20acf4aa910703e3034fd67c8b0be30702a` |
| 15 | `theorem` | [signedCovariance_eq_reordered](../../../../MeasureAndIntegration/FullAudit.lean/declarations/signedcovariance-eq-reordered.md) | 129 | `result-track:065dda0aca9c95afdc718e02a60ff7382155635b24d51304f37b0c89174286c4` |
| 16 | `theorem` | [fullShift_add](../../../../MeasureAndIntegration/FullAudit.lean/declarations/fullshift-add.md) | 137 | `result-track:9487225164cec5dba0d1547adfd04822ea886a1399dcc39a0e710b3e34f0c20f` |
| 17 | `def` | [overlap](../../../../MeasureAndIntegration/FullAudit.lean/declarations/overlap.md) | 150 | `declaration-track:7f79001118c8f1ffcf9f147f4ead53d78d2687cf0818a5123b01383c86ba563e` |
| 18 | `theorem` | [shifted_controller_inner_of_le](../../../../MeasureAndIntegration/FullAudit.lean/declarations/shifted-controller-inner-of-le.md) | 155 | `result-track:74b7d122b7de7137aac5ed55e788cecc48bd890b2957852d7cd3c276e2984497` |
| 19 | `theorem` | [shifted_controller_inner](../../../../MeasureAndIntegration/FullAudit.lean/declarations/shifted-controller-inner.md) | 178 | `result-track:f6afd2fe311a96aceeb962aae8f17600e9945c114c52a61f3495c569f3258976` |
| 20 | `theorem` | [overlap_abs_le](../../../../MeasureAndIntegration/FullAudit.lean/declarations/overlap-abs-le.md) | 189 | `result-track:be0d7abd36054151c41d28365cefcd7bd258423406803006250d61e1e9def3ff` |
| 21 | `theorem` | [overlap_measurable](../../../../MeasureAndIntegration/FullAudit.lean/declarations/overlap-measurable.md) | 204 | `result-track:3a6cd4fb8eeb9719b5b281c44b822901c5f7e5e1a601a3addb59c305d39dc908` |
| 22 | `def` | [gramIntegrand](../../../../MeasureAndIntegration/FullAudit.lean/declarations/gramintegrand.md) | 210 | `declaration-track:90fd6b2cb3bb76da5a427f93468e37615ae85c87497b5bd99d764b83e73e1898` |
| 23 | `theorem` | [gramIntegrand_integrable](../../../../MeasureAndIntegration/FullAudit.lean/declarations/gramintegrand-integrable.md) | 214 | `result-track:48caf2aa801ba5ab6f52f3f7ba742e9d6fae5c31986ce684e62211fdefb8f4e8` |
| 24 | `theorem` | [integral_inner_first](../../../../MeasureAndIntegration/FullAudit.lean/declarations/integral-inner-first.md) | 226 | `result-track:c2ebc116ebab99ad1ae36d597463110664183109f409da144a3f6cfc72c2155e` |
| 25 | `theorem` | [response_inner_full_double](../../../../MeasureAndIntegration/FullAudit.lean/declarations/response-inner-full-double.md) | 238 | `result-track:a4b7202d9131a08312bf9520fcad0fdbcfa36002f02ac3c45c61b3e0f7fa6dca` |
| 26 | `theorem` | [response_inner_double](../../../../MeasureAndIntegration/FullAudit.lean/declarations/response-inner-double.md) | 261 | `result-track:a27c7e3643b762dfd5ec427ac41fb21b1a2661120a04329b2301c6a8b7b236e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49cb0c73934cef6c925d16b96ca6037917159a076928086ceb35a2fbe1473198 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant55750b362541e62b0c47c820fa78acd4be6650289e305566234b352d417400fd.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FullAudit/Variant55750b362541e62b0c47c820fa78acd4be6650289e305566234b352d417400fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

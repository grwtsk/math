# Verification target: Source Full Real Mangoldt Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f2857db4156cbe0355e3b2f65cdbcbfe2ebe0dd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f2857db4156cbe0355e3b2f65cdbcbfe2ebe0dd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fullMangoldtWork](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/fullmangoldtwork.md) | 33 | `declaration-track:f8566084359b1cca7fcc988940cdc724d2257f24d3b3431243cc541d883bf265` |
| 2 | `theorem` | [criticalTest_support](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/criticaltest-support.md) | 36 | `result-track:514e20df9ff75d1c199e0c89fc83eb0285189a7b09ae5f60b67ef884da027088` |
| 3 | `theorem` | [criticalTest_deriv_zero_outside](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/criticaltest-deriv-zero-outside.md) | 49 | `result-track:d923932bfe6080ff932719fce2a69eac36d6ea24f6516f3b087cb2924dc2bb75` |
| 4 | `theorem` | [fullMangoldtWork_integrable](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/fullmangoldtwork-integrable.md) | 55 | `result-track:0627a717f7f57646257fa060eb2d5b4247f30dab599d28bbefb80bd9253403d7` |
| 5 | `theorem` | [fullMangoldtWork_eq_interval](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/fullmangoldtwork-eq-interval.md) | 70 | `result-track:e176759fe360a402e1b6b95d45a2f948f9dc766fe55df4d5db2c9dbf8c1c684f` |
| 6 | `theorem` | [criticalTest_full_integral_eq_interval](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/criticaltest-full-integral-eq-interval.md) | 84 | `result-track:e655f212c88279b0c1d59de24ea98d94e945faf531c937942ff6996d8b860107` |
| 7 | `theorem` | [negative_axis_work_eq_neg_continuous](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/negative-axis-work-eq-neg-continuous.md) | 98 | `result-track:4c5a219e6a94ba10c8d48e4f47261cd62b031c083c731d1f7850687b0a71b858` |
| 8 | `theorem` | [fullMangoldtWork_eq_positive_sub_continuous](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/fullmangoldtwork-eq-positive-sub-continuous.md) | 137 | `result-track:d78c5667d6a89375758c99d76d0d7ea58e04f462b9f5608d8bd9cf4f0a7a2b4c` |
| 9 | `theorem` | [closedPrimeMoment_eq_neg_fullMangoldtWork](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/closedprimemoment-eq-neg-fullmangoldtwork.md) | 149 | `result-track:5f28c39d9652a51d81ac0b1f2368ce3f00222643b76ef5826cddc4179b759ae6` |
| 10 | `theorem` | [mertensResidual_eq_neg_fullMangoldtWork](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/mertensresidual-eq-neg-fullmangoldtwork.md) | 155 | `result-track:b71ca4441c7267d5ec6c57775382e13db64f8603cb5ae6a0933dc710dfbf9c37` |
| 11 | `def` | [boundarySignedMangoldtWork](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/boundarysignedmangoldtwork.md) | 160 | `declaration-track:5c853243656bc40ea0e991d0942527cb776b7aa443dfdda2a7cb5aa9022bf89f` |
| 12 | `theorem` | [boundary_mangoldt_intervalIntegrable](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/boundary-mangoldt-intervalintegrable.md) | 164 | `result-track:37feaedd2e591bd1385b2ff3052d83b66b101dbbd54b814c2314f4bcfec06641` |
| 13 | `theorem` | [boundary_polynomial_intervalIntegrable](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/boundary-polynomial-intervalintegrable.md) | 181 | `result-track:fea3beb69bd27b85b2340308c9cf11bf3bd60e10c65062c580be5b6b76776244` |
| 14 | `theorem` | [boundarySignedMangoldtWork_intervalIntegrable](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/boundarysignedmangoldtwork-intervalintegrable.md) | 189 | `result-track:0f9f4065c337065ae4a75bfa73ab950b4e116d64d7c860e7230a908ec8ca6d0c` |
| 15 | `theorem` | [boundarySignedMangoldtWork_eq_scaled_full](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/boundarysignedmangoldtwork-eq-scaled-full.md) | 197 | `result-track:3120f49ae0bbbe61a2432039d84a98c12797d8f4ed1a3c9883987311798851ae` |
| 16 | `theorem` | [normalized_closedPrimeMoment_eq_neg_boundary](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/normalized-closedprimemoment-eq-neg-boundary.md) | 224 | `result-track:afa79d58ebc946472808dd1e8e9d3d121b0065059318fc9c5ffe5585f540f96f` |
| 17 | `theorem` | [normalized_mertensResidual_eq_neg_boundary](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/normalized-mertensresidual-eq-neg-boundary.md) | 229 | `result-track:4293a74fb326de423a84c97dfa49eb0a8e81c92fc1d23ed8ee0c6af50e36ce2e` |
| 18 | `theorem` | [residual_upper_iff_boundary_lower](../../../../MeasureAndIntegration/SourceFullRealMangoldtNamespaced.lean/declarations/residual-upper-iff-boundary-lower.md) | 234 | `result-track:159ee6de58ff26fb44da25c700adf939791a76403477ca9356828e7292a92694` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c685858035032cbbfe7d484dc401a182b540a2040da4c97bfceb9c8edd090b49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

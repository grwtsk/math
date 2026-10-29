# Functional Analytic Linear Algebra

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `238d9fa2019c172305c471d42655127b6b2b02a4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/FunctionalAnalyticLinearAlgebra.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousLinearOperatorSkeleton](declarations/continuouslinearoperatorskeleton.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [LinearKernel](declarations/linearkernel.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [LinearRange](declarations/linearrange.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [LinearAffineFiber](declarations/linearaffinefiber.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [LinearEqualizer](declarations/linearequalizer.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [LinearConstraintIntersection](declarations/linearconstraintintersection.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [linear_affine_fiber_nonempty_iff_range](declarations/linear-affine-fiber-nonempty-iff-range.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [linear_affine_fiber_zero_eq_kernel](declarations/linear-affine-fiber-zero-eq-kernel.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [LinearAnalyticOperatorForm](declarations/linearanalyticoperatorform.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [analyticGeneratorLinearOperatorForm](declarations/analyticgeneratorlinearoperatorform.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [analytic_generator_has_linear_operator_form](declarations/analytic-generator-has-linear-operator-form.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [LocalFunctionalAnalyticContext](declarations/localfunctionalanalyticcontext.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [LocalAnalyticRange](declarations/localanalyticrange.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [LocalCoefficientFiber](declarations/localcoefficientfiber.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [local_coefficient_fiber_nonempty_iff_range](declarations/local-coefficient-fiber-nonempty-iff-range.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [local_analytic_range_subset_analyticSubspace](declarations/local-analytic-range-subset-analyticsubspace.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [local_coefficient_fiber_witness_lands_in_analyticSubspace](declarations/local-coefficient-fiber-witness-lands-in-analyticsubspace.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [GlobalFunctionalAnalyticContext](declarations/globalfunctionalanalyticcontext.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [GlobalSynthesizedSection](declarations/globalsynthesizedsection.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [GlobalCechEqualizer](declarations/globalcechequalizer.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [GlobalIdentification](declarations/globalidentification.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [GlobalCoefficientFiber](declarations/globalcoefficientfiber.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [global_coefficient_fiber_requires_equalizer](declarations/global-coefficient-fiber-requires-equalizer.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [global_coefficient_fiber_requires_identification](declarations/global-coefficient-fiber-requires-identification.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [global_synthesized_section_lands_in_analyticSubspace](declarations/global-synthesized-section-lands-in-analyticsubspace.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [global_coefficient_fiber_lands_in_local_analyticSubspaces](declarations/global-coefficient-fiber-lands-in-local-analyticsubspaces.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [LocalGeneratorOperatorSignature](declarations/localgeneratoroperatorsignature.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [local_generator_operator_signature_lands_in_range](declarations/local-generator-operator-signature-lands-in-range.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [local_generator_operator_signature_lands_in_analyticSubspace](declarations/local-generator-operator-signature-lands-in-analyticsubspace.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [GlobalGeneratorOperatorSignature](declarations/globalgeneratoroperatorsignature.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [global_generator_operator_signature_satisfies_equalizer](declarations/global-generator-operator-signature-satisfies-equalizer.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [global_generator_operator_signature_identifies_restrictions](declarations/global-generator-operator-signature-identifies-restrictions.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [global_generator_operator_signature_lands_in_local_analyticSubspaces](declarations/global-generator-operator-signature-lands-in-local-analyticsubspaces.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a65ab701f3bb9b61577c18a8ecc3f466131e09b9ec6c10591a54331f94d195b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

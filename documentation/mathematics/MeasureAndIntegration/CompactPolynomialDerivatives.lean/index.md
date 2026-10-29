# Compact Polynomial Derivatives

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Calculus/CompactPolynomialDerivatives.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fb6bc049950750a9955cbaedc3bd8e13d748cc8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/CompactPolynomialDerivatives.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [clippedProfile](declarations/clippedprofile.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [clipped_zero_hasDerivAt](declarations/clipped-zero-hasderivat.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [clipped_profile_hasDerivAt](declarations/clipped-profile-hasderivat.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [bumpPolynomial](declarations/bumppolynomial.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [bumpFirstPolynomial](declarations/bumpfirstpolynomial.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [bumpSecondPolynomial](declarations/bumpsecondpolynomial.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [bumpThirdPolynomial](declarations/bumpthirdpolynomial.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [bump_polynomial_hasDerivAt](declarations/bump-polynomial-hasderivat.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [bump_first_polynomial_hasDerivAt](declarations/bump-first-polynomial-hasderivat.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [bump_second_polynomial_hasDerivAt](declarations/bump-second-polynomial-hasderivat.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [bump_hasDerivAt](declarations/bump-hasderivat.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [bump_first_hasDerivAt](declarations/bump-first-hasderivat.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bump_second_hasDerivAt](declarations/bump-second-hasderivat.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bump_deriv](declarations/bump-deriv.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [bump_second_deriv](declarations/bump-second-deriv.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [bump_continuous](declarations/bump-continuous.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bump_second_continuous](declarations/bump-second-continuous.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [sourceFirst](declarations/sourcefirst.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [sourceSecond](declarations/sourcesecond.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [source_hasDerivAt](declarations/source-hasderivat.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sourceFirst_hasDerivAt](declarations/sourcefirst-hasderivat.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [source_deriv](declarations/source-deriv.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [source_second_deriv](declarations/source-second-deriv.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sourceResidual_eq](declarations/sourceresidual-eq.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sourceResidual_continuous](declarations/sourceresidual-continuous.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [scaled_mem_iff](declarations/scaled-mem-iff.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [residualPolynomial](declarations/residualpolynomial.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sourceResidual_eq_ite](declarations/sourceresidual-eq-ite.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [source_first_zero_outside](declarations/source-first-zero-outside.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [source_second_zero_outside](declarations/source-second-zero-outside.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [source_first_endpoints_zero](declarations/source-first-endpoints-zero.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [source_second_endpoints_zero](declarations/source-second-endpoints-zero.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sourceResidual_zero_eq](declarations/sourceresidual-zero-eq.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sourceResidual_endpoints_zero](declarations/sourceresidual-endpoints-zero.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sourceResidual_zero_outside](declarations/sourceresidual-zero-outside.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sourceResidual_hasCompactSupport](declarations/sourceresidual-hascompactsupport.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sourceResidual_square_integrable](declarations/sourceresidual-square-integrable.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f80809c1907ae82224e48cae94ff0d19b35c3490a1326a047d9ab9586418f38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Calculus/CompactPolynomialDerivatives.lean","GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompactPolynomialDerivatives.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

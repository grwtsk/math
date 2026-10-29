# Complex Taylor Enclosure

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**17 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7c7a410d9ed22cfc21b37faa2356a9de7b9341d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/ComplexTaylorEnclosure.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [taylorValue](declarations/taylorvalue.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [taylorTail](declarations/taylortail.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [componentBound](declarations/componentbound.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [norm_le_componentBound](declarations/norm-le-componentbound.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [componentBound_nonneg](declarations/componentbound-nonneg.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [taylorTail_nonneg](declarations/taylortail-nonneg.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exponential_tail](declarations/exponential-tail.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [powerRadius](declarations/powerradius.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [powerRadius_nonneg](declarations/powerradius-nonneg.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [powerRadius_succ](declarations/powerradius-succ.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [power_error](declarations/power-error.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [polynomialRadius](declarations/polynomialradius.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [polynomial_error](declarations/polynomial-error.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [exponential_enclosure](declarations/exponential-enclosure.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum_from_step_errors](declarations/sum-from-step-errors.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [zero_terms_control](declarations/zero-terms-control.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [polynomialRadius_two](declarations/polynomialradius-two.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=422833474d7395dbe50be0eb0f85fe22bc6675f865fea9f89b012bbe99091569 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

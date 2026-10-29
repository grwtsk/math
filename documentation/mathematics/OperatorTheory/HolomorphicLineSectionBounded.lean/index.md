# Holomorphic Line Section Bounded

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Operator/HolomorphicLineSectionBounded.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9e9d9aaf827604a95bcba5a21e39975157ff101`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/OperatorTheory/HolomorphicLineSectionBounded.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [completeMap](declarations/completemap.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [completeMap_toCompletion](declarations/completemap-tocompletion.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [completedMap_ext](declarations/completedmap-ext.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [completeMap_injective](declarations/completemap-injective.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [completeMap_zero](declarations/completemap-zero.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [completeMap_add](declarations/completemap-add.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [completeMap_sub](declarations/completemap-sub.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [completeMap_smul](declarations/completemap-smul.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [completeMap_id](declarations/completemap-id.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [completeMap_comp](declarations/completemap-comp.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [completeMap_bound](declarations/completemap-bound.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [completeMap_norm](declarations/completemap-norm.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [quotientGaugeMap](declarations/quotientgaugemap.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [completionGaugeMap](declarations/completiongaugemap.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [completeMap_gauge](declarations/completemap-gauge.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [gaugeDefect](declarations/gaugedefect.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [completedGaugeDefect](declarations/completedgaugedefect.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [completeMap_gaugeDefect](declarations/completemap-gaugedefect.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [completedGaugeDefect_norm](declarations/completedgaugedefect-norm.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [completedGaugeDefect_eq_zero_iff](declarations/completedgaugedefect-eq-zero-iff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [completeMap_adjoint_of_pairing](declarations/completemap-adjoint-of-pairing.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [gaugeConjugate](declarations/gaugeconjugate.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [gaugeConjugate_apply](declarations/gaugeconjugate-apply.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gaugeConjugate_adjoint](declarations/gaugeconjugate-adjoint.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [completed_conjugacy_of_defect_zero](declarations/completed-conjugacy-of-defect-zero.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [completed_adjoint_of_defect_zero](declarations/completed-adjoint-of-defect-zero.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [DiracSpace](declarations/diracspace.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [diracUnit_ne_zero](declarations/diracunit-ne-zero.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [completedIdentity_ne_zero](declarations/completedidentity-ne-zero.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [phaseOperator](declarations/phaseoperator.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [phase_is_completed_scalar](declarations/phase-is-completed-scalar.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [phase_adjoint](declarations/phase-adjoint.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [phase_not_self_adjoint](declarations/phase-not-self-adjoint.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f76dd8a95d73663b70f24c49b6f9503fcba40eae6787f2d8c91bd0876beb2220 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Operator/HolomorphicLineSectionBounded.lean","GRWTSK/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

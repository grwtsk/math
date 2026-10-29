# Sigmoid

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `161e5e5e8b90fdeab7fec71e04c5b9395868b098`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/Sigmoid.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RealLinearBound](declarations/reallinearbound.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [RealLinearBound.eval](declarations/reallinearbound-eval.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [RealSymbolicBound](declarations/realsymbolicbound.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sigmoid](declarations/sigmoid.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sigmoid_pos](declarations/sigmoid-pos.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sigmoid_lt_one](declarations/sigmoid-lt-one.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sigmoid_mem_Ioo](declarations/sigmoid-mem-ioo.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sigmoid_nonneg](declarations/sigmoid-nonneg.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sigmoid_le_one](declarations/sigmoid-le-one.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sigmoid_zero](declarations/sigmoid-zero.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [one_sub_sigmoid](declarations/one-sub-sigmoid.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sigmoid_denom_pos](declarations/sigmoid-denom-pos.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sigmoid_strictMono](declarations/sigmoid-strictmono.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sigmoid_mono](declarations/sigmoid-mono.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sigmoid_le_of_le](declarations/sigmoid-le-of-le.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getSigmoidRelaxation](declarations/getsigmoidrelaxation.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sigmoid_lower_bound_valid](declarations/sigmoid-lower-bound-valid.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sigmoid_upper_bound_valid](declarations/sigmoid-upper-bound-valid.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sigmoid_relaxation_sound](declarations/sigmoid-relaxation-sound.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sigmoidLowerApprox](declarations/sigmoidlowerapprox.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sigmoidUpperApprox](declarations/sigmoidupperapprox.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [getSigmoidRelaxationRat](declarations/getsigmoidrelaxationrat.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [sigmoidSecantEval](declarations/sigmoidsecanteval.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sigmoidSecant_at_l](declarations/sigmoidsecant-at-l.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sigmoidSecant_at_u](declarations/sigmoidsecant-at-u.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sigmoid_deriv](declarations/sigmoid-deriv.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sigmoid_deriv_pos](declarations/sigmoid-deriv-pos.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sigmoid_deriv_max](declarations/sigmoid-deriv-max.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1b8ed017b8b92de56c3b70f001e23eb50c44016def69977b05e6eff4be91c95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Bisection

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**22 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c95c9d3fdcae918c38f04dbc05af9f8c85a549b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/Bisection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BisectionResult](declarations/bisectionresult.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [candidates](declarations/candidates.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [statuses](declarations/statuses.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [bisectRootGo](declarations/bisectrootgo.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [bisectRoot](declarations/bisectroot.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [checkRootStatus_noRoot_implies_excludesZero](declarations/checkrootstatus-noroot-implies-excludeszero.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [checkRootStatus_hasRoot_implies_signChange](declarations/checkrootstatus-hasroot-implies-signchange.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [BisectInv](declarations/bisectinv.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [SubIntervalInv](declarations/subintervalinv.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [bisect_inv_initial](declarations/bisect-inv-initial.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [subinterval_inv_initial](declarations/subinterval-inv-initial.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [bisect_inv_cons_hasRoot](declarations/bisect-inv-cons-hasroot.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bisect_inv_cons_other](declarations/bisect-inv-cons-other.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bisect_inv_append](declarations/bisect-inv-append.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [subinterval_inv_append](declarations/subinterval-inv-append.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [subinterval_inv_cons](declarations/subinterval-inv-cons.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bisect_subinterval](declarations/bisect-subinterval.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [go_noRoot_not_in_output](declarations/go-noroot-not-in-output.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [go_hasRoot_has_signChange](declarations/go-hasroot-has-signchange.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [go_subinterval](declarations/go-subinterval.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bisectRoot_hasRoot_correct](declarations/bisectroot-hasroot-correct.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [bisectRoot_noRoot_correct](declarations/bisectroot-noroot-correct.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c6686cc6009b576bffca36c682e641068e08fee6fa3fe19700e4ec66059ad13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

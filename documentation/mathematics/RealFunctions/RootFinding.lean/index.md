# Root Finding

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb77cfffd986ec01707cbbb5deb70cfe0d09f56f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/RootFinding.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RootConfig](declarations/rootconfig.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [NewtonConfig](declarations/newtonconfig.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [checkSignChange](declarations/checksignchange.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [checkNoRoot](declarations/checknoroot.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [newtonStepCore](declarations/newtonstepcore.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [newtonStepCore_extract](declarations/newtonstepcore-extract.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [checkNewtonContractsCore](declarations/checknewtoncontractscore.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [checkNewtonContracts](declarations/checknewtoncontracts.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [verify_no_root](declarations/verify-no-root.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [verify_unique_root_newton](declarations/verify-unique-root-newton.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mvt_lower_bound_core](declarations/mvt-lower-bound-core.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mvt_upper_bound_core](declarations/mvt-upper-bound-core.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [verify_unique_root_core](declarations/verify-unique-root-core.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [newton_preserves_root_core](declarations/newton-preserves-root-core.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [newton_step_core_at_most_one_root](declarations/newton-step-core-at-most-one-root.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mvt_fc_lower_bound_pos_increasing_core](declarations/mvt-fc-lower-bound-pos-increasing-core.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mvt_fc_upper_bound_pos_increasing_core](declarations/mvt-fc-upper-bound-pos-increasing-core.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mvt_fc_upper_bound_neg_decreasing_core](declarations/mvt-fc-upper-bound-neg-decreasing-core.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mvt_fc_lower_bound_neg_decreasing_core](declarations/mvt-fc-lower-bound-neg-decreasing-core.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [verify_unique_root_computable](declarations/verify-unique-root-computable.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [verify_sign_change](declarations/verify-sign-change.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [checkHasRoot](declarations/checkhasroot.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [verify_has_root](declarations/verify-has-root.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5397ed4d38a5ebd290c567e853a08615ee7d0062262afe165dbb464370842df5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

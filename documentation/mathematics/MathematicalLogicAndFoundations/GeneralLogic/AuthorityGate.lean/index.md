# Authority Gate

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variant6542e4a0fa21763b72efea4482477c05fa5ea3d4180659d71ba47b7c342768e9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c2141d35c46b54910299a36bbeee4518f79c17d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/AuthorityGate.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ClaimKind](declarations/claimkind.md) | 9 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [TheoremAuthority](declarations/theoremauthority.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [LeanAuthority](declarations/leanauthority.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [RustAuthority](declarations/rustauthority.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [BuildAuthority](declarations/buildauthority.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ClaimKind.isTheoremLike](declarations/claimkind-istheoremlike.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ClaimKind.isNonAuthoritativeSurface](declarations/claimkind-isnonauthoritativesurface.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [theoremAuthorityMayForward](declarations/theoremauthoritymayforward.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [leanAuthorityMayForward](declarations/leanauthoritymayforward.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [rustAuthorityMayForward](declarations/rustauthoritymayforward.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [buildAuthorityMayForward](declarations/buildauthoritymayforward.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [authority_safety_theorem](declarations/authority-safety-theorem.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [theorem_forward_iff_checked_or_trusted](declarations/theorem-forward-iff-checked-or-trusted.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lean_forward_iff_checked_or_trusted](declarations/lean-forward-iff-checked-or-trusted.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rust_forward_iff_compile_test_or_trusted](declarations/rust-forward-iff-compile-test-or-trusted.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [build_forward_iff_build_checked_or_trusted](declarations/build-forward-iff-build-checked-or-trusted.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [non_authoritative_surface_not_theorem_authority](declarations/non-authoritative-surface-not-theorem-authority.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [generated_text_not_theorem_authority](declarations/generated-text-not-theorem-authority.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [discovery_hit_not_theorem_authority](declarations/discovery-hit-not-theorem-authority.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [jepa_prediction_not_theorem_authority](declarations/jepa-prediction-not-theorem-authority.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [local_model_output_not_theorem_authority](declarations/local-model-output-not-theorem-authority.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [skill_launch_plan_not_theorem_authority](declarations/skill-launch-plan-not-theorem-authority.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [AuthoritySurface](declarations/authoritysurface.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [AuthoritySurface.mayForwardTheorem](declarations/authoritysurface-mayforwardtheorem.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [AuthorityTransitionGate](declarations/authoritytransitiongate.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [AuthorityTransitionGate.isTheoremAuthorityGate](declarations/authoritytransitiongate-istheoremauthoritygate.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [AuthorityTransition](declarations/authoritytransition.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `inductive` | [GateFreeAuthorityRun](declarations/gatefreeauthorityrun.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [AuthorityContext](declarations/authoritycontext.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [AuthorityContext.GateFreeRun](declarations/authoritycontext-gatefreerun.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [authority_non_promotion_for_gate_free_runs](declarations/authority-non-promotion-for-gate-free-runs.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06002530f000dd8be99ba88ebc55ab7ff1bbf246371e4abac4c5a54f4e4e34a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variant6542e4a0fa21763b72efea4482477c05fa5ea3d4180659d71ba47b7c342768e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

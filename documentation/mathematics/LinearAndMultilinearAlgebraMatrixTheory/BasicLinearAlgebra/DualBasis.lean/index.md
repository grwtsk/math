# Dual Basis

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7ac4a782a0ec4f00ac238d7374fec354278cc8f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualBasis.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toDual](declarations/todual.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toDual_apply](declarations/todual-apply.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toDual_linearCombination_left](declarations/todual-linearcombination-left.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toDual_linearCombination_right](declarations/todual-linearcombination-right.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toDual_apply_left](declarations/todual-apply-left.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toDual_apply_right](declarations/todual-apply-right.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_toDual_self](declarations/coe-todual-self.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toDualFlip](declarations/todualflip.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toDualFlip_apply](declarations/todualflip-apply.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toDual_eq_repr](declarations/todual-eq-repr.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toDual_eq_equivFun](declarations/todual-eq-equivfun.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toDual_injective](declarations/todual-injective.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toDual_inj](declarations/todual-inj.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toDual_ker](declarations/todual-ker.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toDual_range](declarations/todual-range.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sum_dual_apply_smul_coord](declarations/sum-dual-apply-smul-coord.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [toDualEquiv](declarations/todualequiv.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toDualEquiv_apply](declarations/todualequiv-apply.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [dualBasis](declarations/dualbasis.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dualBasis_apply_self](declarations/dualbasis-apply-self.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [linearCombination_dualBasis](declarations/linearcombination-dualbasis.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dualBasis_repr](declarations/dualbasis-repr.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [dualBasis_apply](declarations/dualbasis-apply.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_dualBasis](declarations/coe-dualbasis-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toDual_toDual](declarations/todual-todual.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dualBasis_equivFun](declarations/dualbasis-equivfun.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_injective](declarations/eval-injective.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eval_ker](declarations/eval-ker.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_range](declarations/eval-range.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [dualBasis_coord_toDualEquiv_apply](declarations/dualbasis-coord-todualequiv-apply.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [coord_toDualEquiv_symm_apply](declarations/coord-todualequiv-symm-apply.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [linearCombination_coord](declarations/linearcombination-coord.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [evalUseFiniteInstance](declarations/evalusefiniteinstance.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `elab` | [(anonymous)](declarations/elab.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [Module.DualBases](declarations/module-dualbases.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [coeffs](declarations/coeffs.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coeffs_apply](declarations/coeffs-apply.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [lc](declarations/lc.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [lc_def](declarations/lc-def.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [dual_lc](declarations/dual-lc.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coeffs_lc](declarations/coeffs-lc.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lc_coeffs](declarations/lc-coeffs.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [basis](declarations/basis.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_basis](declarations/coe-basis.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mem_of_mem_span](declarations/mem-of-mem-span.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_dualBasis](declarations/coe-dualbasis.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfb10ce9f3c56e5ea1d0459fcbdf48a8ccdf24bb110eb69625e20dcf1817eb26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

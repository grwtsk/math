# Smoothing Seminorm

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb856f040270765afe527066a77b6bb4b1af22e0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SmoothingSeminorm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [smoothingSeminormSeq](declarations/smoothingseminormseq.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [smoothingSeminormSeq_exists_pnat](declarations/smoothingseminormseq-exists-pnat.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [smoothingSeminormSeq_tendsto_aux](declarations/smoothingseminormseq-tendsto-aux.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [zero_mem_lowerBounds_smoothingSeminormSeq_range](declarations/zero-mem-lowerbounds-smoothingseminormseq-range.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [smoothingSeminormSeq_bddBelow](declarations/smoothingseminormseq-bddbelow.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [smoothingFun](declarations/smoothingfun.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tendsto_smoothingFun_of_eq_zero](declarations/tendsto-smoothingfun-of-eq-zero.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tendsto_smoothingFun_of_ne_zero](declarations/tendsto-smoothingfun-of-ne-zero.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tendsto_smoothingFun_of_map_one_le_one](declarations/tendsto-smoothingfun-of-map-one-le-one.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [smoothingFun_nonneg](declarations/smoothingfun-nonneg.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smoothingFun_one_le](declarations/smoothingfun-one-le.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [smoothingFun_le](declarations/smoothingfun-le.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [smoothingFun_le_self](declarations/smoothingfun-le-self.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mu](declarations/mu.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mu_property](declarations/mu-property.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mu_le](declarations/mu-le.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mu_bdd](declarations/mu-bdd.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [μ_bddBelow](declarations/bddbelow.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [μ_bddAbove](declarations/bddabove-source-edition-2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [μ_bddAbove'](declarations/bddabove.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [μ_nonempty](declarations/nonempty.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [μ_limsup_le_one](declarations/limsup-le-one.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [limsup_mu_le](declarations/limsup-mu-le.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tendsto_smoothingFun_comp](declarations/tendsto-smoothingfun-comp.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isNonarchimedean_smoothingFun](declarations/isnonarchimedean-smoothingfun.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [smoothingSeminorm](declarations/smoothingseminorm.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smoothingSeminorm_map_one_le_one](declarations/smoothingseminorm-map-one-le-one.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isPowMul_smoothingFun](declarations/ispowmul-smoothingfun.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [smoothingFun_of_powMul](declarations/smoothingfun-of-powmul.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [smoothingFun_apply_of_map_mul_eq_mul](declarations/smoothingfun-apply-of-map-mul-eq-mul.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [smoothingSeminorm_apply_of_map_mul_eq_mul](declarations/smoothingseminorm-apply-of-map-mul-eq-mul.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [smoothingFun_of_map_mul_eq_mul](declarations/smoothingfun-of-map-mul-eq-mul.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [smoothingSeminorm_of_mul](declarations/smoothingseminorm-of-mul.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e6ff221bf99005d7366636cd29ab79b7152e93236384c176c0ae9bfbbac96fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

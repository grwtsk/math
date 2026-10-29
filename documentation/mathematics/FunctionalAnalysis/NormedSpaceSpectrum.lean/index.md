# Normed Space Spectrum

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8047e6528b21f30cbf65849dca0d5a7a836fc76e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/NormedSpaceSpectrum.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [spectralRadius](declarations/spectralradius.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [SpectralRadius.of_subsingleton](declarations/spectralradius-of-subsingleton.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [spectralRadius_zero](declarations/spectralradius-zero.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_resolventSet_of_spectralRadius_lt](declarations/mem-resolventset-of-spectralradius-lt.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isOpen_resolventSet](declarations/isopen-resolventset.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isClosed](declarations/isclosed.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_resolventSet_of_norm_lt_mul](declarations/mem-resolventset-of-norm-lt-mul.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_resolventSet_of_norm_lt](declarations/mem-resolventset-of-norm-lt.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [norm_le_norm_mul_of_mem](declarations/norm-le-norm-mul-of-mem.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [norm_le_norm_of_mem](declarations/norm-le-norm-of-mem.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [subset_closedBall_norm_mul](declarations/subset-closedball-norm-mul.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [subset_closedBall_norm](declarations/subset-closedball-norm.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [is_bounded](declarations/is-bounded.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isCompact](declarations/iscompact.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [spectralRadius_le_nnnorm](declarations/spectralradius-le-nnnorm.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exists_nnnorm_eq_spectralRadius_of_nonempty](declarations/exists-nnnorm-eq-spectralradius-of-nonempty.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [spectralRadius_lt_of_forall_lt_of_nonempty](declarations/spectralradius-lt-of-forall-lt-of-nonempty.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [spectralRadius_le_pow_nnnorm_pow_one_div](declarations/spectralradius-le-pow-nnnorm-pow-one-div.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [spectralRadius_le_liminf_pow_nnnorm_pow_one_div](declarations/spectralradius-le-liminf-pow-nnnorm-pow-one-div.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasDerivAt_resolvent](declarations/hasderivat-resolvent.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [norm_resolvent_le_forall](declarations/norm-resolvent-le-forall.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [hasFPowerSeriesOnBall_inverse_one_sub_smul](declarations/hasfpowerseriesonball-inverse-one-sub-smul.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isUnit_one_sub_smul_of_lt_inv_radius](declarations/isunit-one-sub-smul-of-lt-inv-radius.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [differentiableOn_inverse_one_sub_smul](declarations/differentiableon-inverse-one-sub-smul.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [limsup_pow_nnnorm_pow_one_div_le_spectralRadius](declarations/limsup-pow-nnnorm-pow-one-div-le-spectralradius.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [pow_nnnorm_pow_one_div_tendsto_nhds_spectralRadius](declarations/pow-nnnorm-pow-one-div-tendsto-nhds-spectralradius.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [pow_norm_pow_one_div_tendsto_nhds_spectralRadius](declarations/pow-norm-pow-one-div-tendsto-nhds-spectralradius.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nonempty](declarations/nonempty.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [exists_nnnorm_eq_spectralRadius](declarations/exists-nnnorm-eq-spectralradius.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [spectralRadius_lt_of_forall_lt](declarations/spectralradius-lt-of-forall-lt.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_polynomial_aeval](declarations/map-polynomial-aeval.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_pow](declarations/map-pow.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [algebraMap_eq_of_mem](declarations/algebramap-eq-of-mem.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [_root_.NormedRing.algEquivComplexOfComplete](declarations/root-normedring-algequivcomplexofcomplete.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [exp_mem_exp](declarations/exp-mem-exp.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [toContinuousLinearMap](declarations/tocontinuouslinearmap.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_toContinuousLinearMap](declarations/coe-tocontinuouslinearmap.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [norm_apply_le_self_mul_norm_one](declarations/norm-apply-le-self-mul-norm-one.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [norm_apply_le_self](declarations/norm-apply-le-self.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toContinuousLinearMap_norm](declarations/tocontinuouslinearmap-norm.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [equivAlgHom](declarations/equivalghom.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [equivAlgHom_coe](declarations/equivalghom-coe.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [equivAlgHom_symm_coe](declarations/equivalghom-symm-coe.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a4a0d55eabfd825765cfc5d76d3d248208edd4fb7b759bd65fddbbc26b8a137 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

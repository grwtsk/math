# Algebra Spectrum

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbf73cbe5aeb32e8126e6abfc578ff3bdb31ce8d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrum.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [spectralRadius](declarations/spectralradius.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [SpectralRadius.of_subsingleton](declarations/spectralradius-of-subsingleton.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [spectralRadius_zero](declarations/spectralradius-zero.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_resolventSet_of_spectralRadius_lt](declarations/mem-resolventset-of-spectralradius-lt.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isOpen_resolventSet](declarations/isopen-resolventset.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isClosed](declarations/isclosed.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_resolventSet_of_norm_lt_mul](declarations/mem-resolventset-of-norm-lt-mul.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_resolventSet_of_norm_lt](declarations/mem-resolventset-of-norm-lt.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [norm_le_norm_mul_of_mem](declarations/norm-le-norm-mul-of-mem.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [norm_le_norm_of_mem](declarations/norm-le-norm-of-mem.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [subset_closedBall_norm_mul](declarations/subset-closedball-norm-mul.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [subset_closedBall_norm](declarations/subset-closedball-norm.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isBounded](declarations/isbounded.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isCompact](declarations/iscompact.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instCompactSpace](declarations/instcompactspace.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instCompactSpaceNNReal](declarations/instcompactspacennreal.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [_root_.quasispectrum.isCompact](declarations/root-quasispectrum-iscompact.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [_root_.quasispectrum.instCompactSpace](declarations/root-quasispectrum-instcompactspace.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [_root_.quasispectrum.instCompactSpaceNNReal](declarations/root-quasispectrum-instcompactspacennreal.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [le_nnnorm_of_mem](declarations/le-nnnorm-of-mem.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_le_norm_of_mem](declarations/coe-le-norm-of-mem.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [spectralRadius_le_nnnorm](declarations/spectralradius-le-nnnorm.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_nnnorm_eq_spectralRadius_of_nonempty](declarations/exists-nnnorm-eq-spectralradius-of-nonempty.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [spectralRadius_lt_of_forall_lt_of_nonempty](declarations/spectralradius-lt-of-forall-lt-of-nonempty.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [spectralRadius_le_pow_nnnorm_pow_one_div](declarations/spectralradius-le-pow-nnnorm-pow-one-div.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [spectralRadius_le_liminf_pow_nnnorm_pow_one_div](declarations/spectralradius-le-liminf-pow-nnnorm-pow-one-div.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [hasDerivAt_resolvent](declarations/hasderivat-resolvent.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eventually_isUnit_resolvent](declarations/eventually-isunit-resolvent.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [resolvent_isBigO_inv](declarations/resolvent-isbigo-inv.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [resolvent_tendsto_cobounded](declarations/resolvent-tendsto-cobounded.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasFPowerSeriesOnBall_inverse_one_sub_smul](declarations/hasfpowerseriesonball-inverse-one-sub-smul.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isUnit_one_sub_smul_of_lt_inv_radius](declarations/isunit-one-sub-smul-of-lt-inv-radius.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [differentiableOn_inverse_one_sub_smul](declarations/differentiableon-inverse-one-sub-smul.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [limsup_pow_nnnorm_pow_one_div_le_spectralRadius](declarations/limsup-pow-nnnorm-pow-one-div-le-spectralradius.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [pow_nnnorm_pow_one_div_tendsto_nhds_spectralRadius](declarations/pow-nnnorm-pow-one-div-tendsto-nhds-spectralradius.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [pow_norm_pow_one_div_tendsto_nhds_spectralRadius](declarations/pow-norm-pow-one-div-tendsto-nhds-spectralradius.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [nonempty](declarations/nonempty.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [exists_nnnorm_eq_spectralRadius](declarations/exists-nnnorm-eq-spectralradius.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [spectralRadius_lt_of_forall_lt](declarations/spectralradius-lt-of-forall-lt.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [map_polynomial_aeval](declarations/map-polynomial-aeval.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_pow](declarations/map-pow.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [algebraMap_eq_of_mem](declarations/algebramap-eq-of-mem.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [_root_.NormedRing.algEquivComplexOfComplete](declarations/root-normedring-algequivcomplexofcomplete.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [exp_mem_exp](declarations/exp-mem-exp.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [toContinuousLinearMap](declarations/tocontinuouslinearmap.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_toContinuousLinearMap](declarations/coe-tocontinuouslinearmap.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [norm_apply_le_self_mul_norm_one](declarations/norm-apply-le-self-mul-norm-one.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [norm_apply_le_self](declarations/norm-apply-le-self.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toContinuousLinearMap_norm](declarations/tocontinuouslinearmap-norm.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [equivAlgHom](declarations/equivalghom.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [equivAlgHom_coe](declarations/equivalghom-coe.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [equivAlgHom_symm_coe](declarations/equivalghom-symm-coe.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [_root_.Subalgebra.isUnit_of_isUnit_val_of_eventually](declarations/root-subalgebra-isunit-of-isunit-val-of-eventually.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [_root_.Subalgebra.frontier_spectrum](declarations/root-subalgebra-frontier-spectrum.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [Subalgebra.frontier_subset_frontier](declarations/subalgebra-frontier-subset-frontier.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [Subalgebra.spectrum_sUnion_connectedComponentIn](declarations/subalgebra-spectrum-sunion-connectedcomponentin.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [Subalgebra.spectrum_isBounded_connectedComponentIn](declarations/subalgebra-spectrum-isbounded-connectedcomponentin.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Subalgebra.spectrum_eq_of_isPreconnected_compl](declarations/subalgebra-spectrum-eq-of-ispreconnected-compl.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [spectralRadius_eq](declarations/spectralradius-eq.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [nnreal_iff](declarations/nnreal-iff.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [nnreal_of_nonneg](declarations/nnreal-of-nonneg.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [real_iff](declarations/real-iff-source-edition-2.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [nnreal_le_iff](declarations/nnreal-le-iff.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [nnreal_lt_iff](declarations/nnreal-lt-iff.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [le_nnreal_iff](declarations/le-nnreal-iff.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [lt_nnreal_iff](declarations/lt-nnreal-iff-source-edition-2.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [nnreal_iff_spectralRadius_le](declarations/nnreal-iff-spectralradius-le.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [_root_.NNReal.spectralRadius_mem_spectrum](declarations/root-nnreal-spectralradius-mem-spectrum.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [_root_.Real.spectralRadius_mem_spectrum](declarations/root-real-spectralradius-mem-spectrum.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [_root_.Real.spectralRadius_mem_spectrum_or](declarations/root-real-spectralradius-mem-spectrum-or.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [compactSpace](declarations/compactspace.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [nnreal_iff](declarations/nnreal-iff-source-edition-2.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [nnreal_of_nonneg](declarations/nnreal-of-nonneg-source-edition-2.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [real_iff](declarations/real-iff.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [le_nnreal_iff](declarations/le-nnreal-iff-source-edition-2.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [lt_nnreal_iff](declarations/lt-nnreal-iff.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [coe_mem_spectrum_real_of_nonneg](declarations/coe-mem-spectrum-real-of-nonneg.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ceed72f8bc85d1ae211cc9e4199564ff311a1c312e5852e305fd984b6ed582cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

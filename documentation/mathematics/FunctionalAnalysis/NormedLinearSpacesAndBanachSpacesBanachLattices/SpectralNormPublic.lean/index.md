# Spectral Norm Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e9a60102536e0e1f02d8eff93d443cc04bc5c46`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpectralNormPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [spectralValueTerms](declarations/spectralvalueterms.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [spectralValueTerms_of_lt_natDegree](declarations/spectralvalueterms-of-lt-natdegree.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [spectralValueTerms_of_natDegree_le](declarations/spectralvalueterms-of-natdegree-le.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [spectralValue](declarations/spectralvalue.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [spectralValueTerms_finite_range](declarations/spectralvalueterms-finite-range.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [spectralValueTerms_bddAbove](declarations/spectralvalueterms-bddabove.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [spectralValueTerms_nonneg](declarations/spectralvalueterms-nonneg.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [spectralValue_nonneg](declarations/spectralvalue-nonneg.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [spectralValue_X_sub_C](declarations/spectralvalue-x-sub-c.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [spectralValue_X_pow](declarations/spectralvalue-x-pow.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [spectralValue_eq_zero_iff](declarations/spectralvalue-eq-zero-iff.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [spectralValue_le_one_iff](declarations/spectralvalue-le-one-iff.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [norm_root_le_spectralValue](declarations/norm-root-le-spectralvalue.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [max_norm_root_eq_spectralValue](declarations/max-norm-root-eq-spectralvalue.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [spectralNorm](declarations/spectralnorm.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [spectralNorm.eq_of_tower](declarations/spectralnorm-eq-of-tower.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [spectralNorm.eq_of_normalClosure'](declarations/spectralnorm-eq-of-normalclosure.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [spectralNorm.eq_of_normalClosure](declarations/spectralnorm-eq-of-normalclosure-source-edition-2.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [spectralNorm_zero](declarations/spectralnorm-zero.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [spectralNorm_nonneg](declarations/spectralnorm-nonneg.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [spectralNorm_zero_lt](declarations/spectralnorm-zero-lt.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_zero_of_map_spectralNorm_eq_zero](declarations/eq-zero-of-map-spectralnorm-eq-zero.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [norm_le_spectralNorm](declarations/norm-le-spectralnorm.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [spectralNorm_eq_of_equiv](declarations/spectralnorm-eq-of-equiv.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [spectralNorm_eq_iSup_of_finiteDimensional_normal](declarations/spectralnorm-eq-isup-of-finitedimensional-normal.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [spectralNorm_eq_invariantExtension](declarations/spectralnorm-eq-invariantextension.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isPowMul_spectralNorm_of_finiteDimensional_normal](declarations/ispowmul-spectralnorm-of-finitedimensional-normal.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [spectralAlgNorm_of_finiteDimensional_normal](declarations/spectralalgnorm-of-finitedimensional-normal.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [spectralAlgNorm_of_finiteDimensional_normal_def](declarations/spectralalgnorm-of-finitedimensional-normal-def.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isNonarchimedean_spectralNorm_of_finiteDimensional_normal](declarations/isnonarchimedean-spectralnorm-of-finitedimensional-normal.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [spectralNorm_extends_of_finiteDimensional](declarations/spectralnorm-extends-of-finitedimensional.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [spectralNorm_unique_of_finiteDimensional_normal](declarations/spectralnorm-unique-of-finitedimensional-normal.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [spectralNorm_extends](declarations/spectralnorm-extends.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [spectralNorm_one](declarations/spectralnorm-one.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [spectralNorm_neg](declarations/spectralnorm-neg.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [spectralNorm_smul](declarations/spectralnorm-smul.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [spectralNorm_mul](declarations/spectralnorm-mul.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isPowMul_spectralNorm](declarations/ispowmul-spectralnorm.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isNonarchimedean_spectralNorm](declarations/isnonarchimedean-spectralnorm.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [spectralAlgNorm](declarations/spectralalgnorm.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [spectralAlgNorm_def](declarations/spectralalgnorm-def.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [spectralAlgNorm_extends](declarations/spectralalgnorm-extends.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [spectralAlgNorm_one](declarations/spectralalgnorm-one.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [spectralAlgNorm_isPowMul](declarations/spectralalgnorm-ispowmul.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [spectralNorm_unique](declarations/spectralnorm-unique.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [spectralNorm_unique_field_norm_ext](declarations/spectralnorm-unique-field-norm-ext.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [NormedAlgebra.norm_eq_spectralNorm](declarations/normedalgebra-norm-eq-spectralnorm.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [spectralAlgNorm_mul](declarations/spectralalgnorm-mul.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [spectralMulAlgNorm](declarations/spectralmulalgnorm.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [spectralMulAlgNorm_def](declarations/spectralmulalgnorm-def.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [normedField](declarations/normedfield.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [nontriviallyNormedField](declarations/nontriviallynormedfield.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [seminormedRing](declarations/seminormedring.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [normedAddCommGroup](declarations/normedaddcommgroup.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [seminormedAddCommGroup](declarations/seminormedaddcommgroup.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [normedSpace](declarations/normedspace.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [normedAlgebra](declarations/normedalgebra.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [normedAlgebra'](declarations/normedalgebra-source-edition-2.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [metricSpace](declarations/metricspace.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [uniformSpace](declarations/uniformspace.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [spectralMulAlgNorm_eq_of_mem_roots](declarations/spectralmulalgnorm-eq-of-mem-roots.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [spectralNorm_pow_natDegree_eq_prod_roots](declarations/spectralnorm-pow-natdegree-eq-prod-roots.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [spectralNorm_eq_norm_coeff_zero_rpow](declarations/spectralnorm-eq-norm-coeff-zero-rpow.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cb51783c30d80c008b840827413ce00b7ca2088e9953ffe5dc3cbebd6660b98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

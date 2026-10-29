# Calculus Vector Field

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 61 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bd74e02092928977d6dc53bb370a01959f7c705`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/CalculusVectorField.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [lieBracket](declarations/liebracket.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [lieBracketWithin](declarations/liebracketwithin.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [lieBracket_eq](declarations/liebracket-eq.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [lieBracketWithin_eq](declarations/liebracketwithin-eq.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lieBracketWithin_univ](declarations/liebracketwithin-univ.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [lieBracketWithin_eq_zero_of_eq_zero](declarations/liebracketwithin-eq-zero-of-eq-zero.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [lieBracket_eq_zero_of_eq_zero](declarations/liebracket-eq-zero-of-eq-zero.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [lieBracketWithin_smul_left](declarations/liebracketwithin-smul-left.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [lieBracket_smul_left](declarations/liebracket-smul-left.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [lieBracketWithin_smul_right](declarations/liebracketwithin-smul-right.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [lieBracket_smul_right](declarations/liebracket-smul-right.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [lieBracketWithin_add_left](declarations/liebracketwithin-add-left.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [lieBracket_add_left](declarations/liebracket-add-left.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [lieBracketWithin_add_right](declarations/liebracketwithin-add-right.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [lieBracket_add_right](declarations/liebracket-add-right.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [lieBracketWithin_swap](declarations/liebracketwithin-swap.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [lieBracket_swap](declarations/liebracket-swap.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [lieBracketWithin_self](declarations/liebracketwithin-self.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [lieBracket_self](declarations/liebracket-self.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [_root_.ContDiffWithinAt.lieBracketWithin_vectorField](declarations/root-contdiffwithinat-liebracketwithin-vectorfield.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [_root_.ContDiffAt.lieBracket_vectorField](declarations/root-contdiffat-liebracket-vectorfield.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [_root_.ContDiffOn.lieBracketWithin_vectorField](declarations/root-contdiffon-liebracketwithin-vectorfield.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [_root_.ContDiff.lieBracket_vectorField](declarations/root-contdiff-liebracket-vectorfield.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lieBracketWithin_of_mem_nhdsWithin](declarations/liebracketwithin-of-mem-nhdswithin.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [lieBracketWithin_subset](declarations/liebracketwithin-subset.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lieBracketWithin_inter](declarations/liebracketwithin-inter.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [lieBracketWithin_of_mem_nhds](declarations/liebracketwithin-of-mem-nhds.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lieBracketWithin_of_isOpen](declarations/liebracketwithin-of-isopen.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lieBracketWithin_eq_lieBracket](declarations/liebracketwithin-eq-liebracket.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lieBracketWithin_congr_set'](declarations/liebracketwithin-congr-set.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lieBracketWithin_congr_set](declarations/liebracketwithin-congr-set-source-edition-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lieBracketWithin_eventually_congr_set'](declarations/liebracketwithin-eventually-congr-set.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lieBracketWithin_eventually_congr_set](declarations/liebracketwithin-eventually-congr-set-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [_root_.DifferentiableWithinAt.lieBracketWithin_congr_mono](declarations/root-differentiablewithinat-liebracketwithin-congr-mono.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [_root_.Filter.EventuallyEq.lieBracketWithin_vectorField_eq](declarations/root-filter-eventuallyeq-liebracketwithin-vectorfield-eq.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [_root_.Filter.EventuallyEq.lieBracketWithin_vectorField_eq_of_mem](declarations/root-filter-eventuallyeq-liebracketwithin-vectorfield-eq-of-mem.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [_root_.Filter.EventuallyEq.lieBracketWithin_vectorField'](declarations/root-filter-eventuallyeq-liebracketwithin-vectorfield.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [_root_.Filter.EventuallyEq.lieBracketWithin_vectorField](declarations/root-filter-eventuallyeq-liebracketwithin-vectorfield-source-edition-2.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [_root_.Filter.EventuallyEq.lieBracketWithin_vectorField_eq_of_insert](declarations/root-filter-eventuallyeq-liebracketwithin-vectorfield-eq-of-insert.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [_root_.Filter.EventuallyEq.lieBracketWithin_vectorField_eq_nhds](declarations/root-filter-eventuallyeq-liebracketwithin-vectorfield-eq-nhds.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [lieBracketWithin_congr](declarations/liebracketwithin-congr-source-edition-2.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lieBracketWithin_congr'](declarations/liebracketwithin-congr.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [_root_.Filter.EventuallyEq.lieBracket_vectorField_eq](declarations/root-filter-eventuallyeq-liebracket-vectorfield-eq.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [_root_.Filter.EventuallyEq.lieBracket_vectorField](declarations/root-filter-eventuallyeq-liebracket-vectorfield.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [leibniz_identity_lieBracketWithin_of_isSymmSndFDerivWithinAt](declarations/leibniz-identity-liebracketwithin-of-issymmsndfderivwithinat.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [leibniz_identity_lieBracketWithin](declarations/leibniz-identity-liebracketwithin.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [leibniz_identity_lieBracket](declarations/leibniz-identity-liebracket.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [pullback](declarations/pullback.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [pullbackWithin](declarations/pullbackwithin.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [pullbackWithin_eq](declarations/pullbackwithin-eq.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [pullback_eq_of_fderiv_eq](declarations/pullback-eq-of-fderiv-eq.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [pullback_eq_of_not_isInvertible](declarations/pullback-eq-of-not-isinvertible.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [pullbackWithin_eq_of_not_isInvertible](declarations/pullbackwithin-eq-of-not-isinvertible.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [pullbackWithin_eq_of_fderivWithin_eq](declarations/pullbackwithin-eq-of-fderivwithin-eq.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [pullbackWithin_univ](declarations/pullbackwithin-univ.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [fderiv_pullback](declarations/fderiv-pullback.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [fderivWithin_pullbackWithin](declarations/fderivwithin-pullbackwithin.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [_root_.exists_continuousLinearEquiv_fderivWithin_symm_eq](declarations/root-exists-continuouslinearequiv-fderivwithin-symm-eq.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [DifferentiableWithinAt.pullbackWithin](declarations/differentiablewithinat-pullbackwithin.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [_root_.exists_continuousLinearEquiv_fderiv_symm_eq](declarations/root-exists-continuouslinearequiv-fderiv-symm-eq.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt](declarations/pullbackwithin-liebracketwithin-of-issymmsndfderivwithinat.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt_of_eventuallyEq](declarations/pullbackwithin-liebracketwithin-of-issymmsndfderivwithinat-of-eventually.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [pullback_lieBracket_of_isSymmSndFDerivAt](declarations/pullback-liebracket-of-issymmsndfderivat.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [pullbackWithin_lieBracketWithin](declarations/pullbackwithin-liebracketwithin.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [pullback_lieBracket](declarations/pullback-liebracket.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb7f7bbb974e4fe6b82cf40d430b03d0e04fc7ddb17bd176ce7744227fe57880 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

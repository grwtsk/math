# Operator Norm Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `060517c681bcfcc0eea848e8360e572433349daa`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/OperatorNormBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_image_of_norm_zero](declarations/norm-image-of-norm-zero.md) | 52 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `theorem` | [SemilinearMapClass.bound_of_shell_semi_normed](declarations/semilinearmapclass-bound-of-shell-semi-normed.md) | 61 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `theorem` | [SemilinearMapClass.bound_of_continuous](declarations/semilinearmapclass-bound-of-continuous.md) | 72 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `theorem` | [bound](declarations/bound.md) | 81 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `def` | [_root_.LinearIsometry.toSpanSingleton](declarations/root-linearisometry-tospansingleton.md) | 92 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `theorem` | [_root_.LinearIsometry.toSpanSingleton_apply](declarations/root-linearisometry-tospansingleton-apply.md) | 98 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `theorem` | [_root_.LinearIsometry.coe_toSpanSingleton](declarations/root-linearisometry-coe-tospansingleton.md) | 103 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [opNorm](declarations/opnorm.md) | 114 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `instance` | [hasOpNorm](declarations/hasopnorm.md) | 117 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [norm_def](declarations/norm-def.md) | 120 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `theorem` | [bounds_nonempty](declarations/bounds-nonempty.md) | 125 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `theorem` | [bounds_bddBelow](declarations/bounds-bddbelow.md) | 130 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `theorem` | [isLeast_opNorm](declarations/isleast-opnorm.md) | 133 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `theorem` | [opNorm_le_bound](declarations/opnorm-le-bound-source-edition-2.md) | 141 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [opNorm_le_bound'](declarations/opnorm-le-bound.md) | 147 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `theorem` | [opNorm_le_of_lipschitz](declarations/opnorm-le-of-lipschitz.md) | 154 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `theorem` | [opNorm_eq_of_bounds](declarations/opnorm-eq-of-bounds.md) | 159 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [opNorm_neg](declarations/opnorm-neg.md) | 167 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [opNorm_nonneg](declarations/opnorm-nonneg.md) | 170 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [opNorm_zero](declarations/opnorm-zero.md) | 175 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [norm_id_le](declarations/norm-id-le.md) | 181 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [le_opNorm](declarations/le-opnorm.md) | 190 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `theorem` | [dist_le_opNorm](declarations/dist-le-opnorm.md) | 192 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [le_of_opNorm_le_of_le](declarations/le-of-opnorm-le-of-le.md) | 196 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `theorem` | [le_opNorm_of_le](declarations/le-opnorm-of-le.md) | 201 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [le_of_opNorm_le](declarations/le-of-opnorm-le.md) | 205 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [opNorm_le_iff](declarations/opnorm-le-iff.md) | 209 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [ratio_le_opNorm](declarations/ratio-le-opnorm.md) | 214 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `theorem` | [unit_le_opNorm](declarations/unit-le-opnorm.md) | 219 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `theorem` | [opNorm_le_of_shell](declarations/opnorm-le-of-shell-source-edition-2.md) | 223 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `theorem` | [opNorm_le_of_ball](declarations/opnorm-le-of-ball.md) | 228 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [opNorm_le_of_nhds_zero](declarations/opnorm-le-of-nhds-zero.md) | 235 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [opNorm_le_of_shell'](declarations/opnorm-le-of-shell.md) | 241 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [opNorm_le_of_unit_norm](declarations/opnorm-le-of-unit-norm.md) | 254 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `theorem` | [opNorm_add_le](declarations/opnorm-add-le.md) | 264 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `theorem` | [norm_id_of_nontrivial_seminorm](declarations/norm-id-of-nontrivial-seminorm.md) | 271 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [opNorm_smul_le](declarations/opnorm-smul-le.md) | 277 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `def` | [seminorm](declarations/seminorm.md) | 289 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `lemma` | [uniformity_eq_seminorm](declarations/uniformity-eq-seminorm.md) | 292 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `instance` | [toPseudoMetricSpace](declarations/topseudometricspace.md) | 312 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `instance` | [toSeminormedAddCommGroup](declarations/toseminormedaddcommgroup.md) | 317 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `instance` | [toNormedSpace](declarations/tonormedspace.md) | 319 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `theorem` | [opNorm_comp_le](declarations/opnorm-comp-le.md) | 324 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `instance` | [toSeminormedRing](declarations/toseminormedring.md) | 330 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `instance` | [toNormedAlgebra](declarations/tonormedalgebra.md) | 335 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `theorem` | [opNorm_subsingleton](declarations/opnorm-subsingleton.md) | 342 | `BLOCKED_SOURCE_DEPENDENCY` |
| 47 | `lemma` | [le_opNorm_enorm](declarations/le-opnorm-enorm.md) | 350 | `BLOCKED_SOURCE_DEPENDENCY` |
| 48 | `theorem` | [norm_restrictScalars](declarations/norm-restrictscalars.md) | 365 | `BLOCKED_SOURCE_DEPENDENCY` |
| 49 | `def` | [restrictScalarsIsometry](declarations/restrictscalarsisometry.md) | 374 | `BLOCKED_SOURCE_DEPENDENCY` |
| 50 | `theorem` | [coe_restrictScalarsIsometry](declarations/coe-restrictscalarsisometry.md) | 380 | `BLOCKED_SOURCE_DEPENDENCY` |
| 51 | `theorem` | [restrictScalarsIsometry_toLinearMap](declarations/restrictscalarsisometry-tolinearmap.md) | 385 | `BLOCKED_SOURCE_DEPENDENCY` |
| 52 | `lemma` | [norm_pi_le_of_le](declarations/norm-pi-le-of-le.md) | 391 | `BLOCKED_SOURCE_DEPENDENCY` |
| 53 | `theorem` | [mkContinuous_norm_le](declarations/mkcontinuous-norm-le.md) | 405 | `BLOCKED_SOURCE_DEPENDENCY` |
| 54 | `theorem` | [mkContinuous_norm_le'](declarations/mkcontinuous-norm-le-source-edition-2.md) | 411 | `BLOCKED_SOURCE_DEPENDENCY` |
| 55 | `theorem` | [norm_toContinuousLinearMap_le](declarations/norm-tocontinuouslinearmap-le.md) | 420 | `BLOCKED_SOURCE_DEPENDENCY` |
| 56 | `theorem` | [norm_subtypeL_le](declarations/norm-subtypel-le.md) | 427 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a634f94a0cd3b6bd6abeca60559fcd5b129e9f761261087fa960c740b524d6a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

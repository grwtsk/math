# CStar Algebra Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2c3d5d9049cdb3fb5dd81e3fd5e67ed5a10842b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/CStarAlgebraBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NormedStarGroup](declarations/normedstargroup.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [norm_star](declarations/norm-star.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [nnnorm_star](declarations/nnnorm-star.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [starNormedAddGroupHom](declarations/starnormedaddgrouphom.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [star_isometry](declarations/star-isometry.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [RingHomIsometric.starRingEnd](declarations/ringhomisometric-starringend.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [CStarRing](declarations/cstarring.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [of_le_norm_mul_star_self](declarations/of-le-norm-mul-star-self.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [norm_star_mul_self](declarations/norm-star-mul-self.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [norm_self_mul_star](declarations/norm-self-mul-star.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [norm_star_mul_self'](declarations/norm-star-mul-self-source-edition-2.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nnnorm_self_mul_star](declarations/nnnorm-self-mul-star.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nnnorm_star_mul_self](declarations/nnnorm-star-mul-self.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [star_mul_self_eq_zero_iff](declarations/star-mul-self-eq-zero-iff.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [star_mul_self_ne_zero_iff](declarations/star-mul-self-ne-zero-iff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_star_self_eq_zero_iff](declarations/mul-star-self-eq-zero-iff.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_star_self_ne_zero_iff](declarations/mul-star-self-ne-zero-iff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [_root_.Pi.starRing'](declarations/root-pi-starring.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [_root_.Prod.cstarRing](declarations/root-prod-cstarring.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [_root_.Pi.cstarRing](declarations/root-pi-cstarring-source-edition-2.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [_root_.Pi.cstarRing'](declarations/root-pi-cstarring.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [norm_one](declarations/norm-one.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [norm_coe_unitary](declarations/norm-coe-unitary.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [norm_of_mem_unitary](declarations/norm-of-mem-unitary.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [norm_coe_unitary_mul](declarations/norm-coe-unitary-mul.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [norm_unitary_smul](declarations/norm-unitary-smul.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [norm_mem_unitary_mul](declarations/norm-mem-unitary-mul.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [norm_mul_coe_unitary](declarations/norm-mul-coe-unitary.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [norm_mul_mem_unitary](declarations/norm-mul-mem-unitary.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsSelfAdjoint.nnnorm_pow_two_pow](declarations/isselfadjoint-nnnorm-pow-two-pow.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [selfAdjoint.nnnorm_pow_two_pow](declarations/selfadjoint-nnnorm-pow-two-pow.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [starₗᵢ](declarations/star.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_starₗᵢ](declarations/coe-star.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [starₗᵢ_apply](declarations/star-apply.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [starₗᵢ_toContinuousLinearEquiv](declarations/star-tocontinuouslinearequiv.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [toNormedAlgebra](declarations/tonormedalgebra.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [to_cstarRing](declarations/to-cstarring.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cf40e9c05efb753b5a1e014d08e387bb2455edd668a78d014d9ac490a6d7186 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Basic/Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

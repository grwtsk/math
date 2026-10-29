# Algebra Basic Algebra Map Submonoid Powers

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**72 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16e299bca327ba1e4eb5cedb20afb7ed7d78bcb5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [_root_.PUnit.algebra](declarations/root-punit-algebra.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [algebraMap_pUnit](declarations/algebramap-punit.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [_root_.ULift.algebra](declarations/root-ulift-algebra.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [_root_.ULift.algebraMap_eq](declarations/root-ulift-algebramap-eq.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [_root_.ULift.down_algebraMap](declarations/root-ulift-down-algebramap.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [ofSubsemiring](declarations/ofsubsemiring.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [algebraMap_ofSubsemiring](declarations/algebramap-ofsubsemiring.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_algebraMap_ofSubsemiring](declarations/coe-algebramap-ofsubsemiring.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [algebraMap_ofSubsemiring_apply](declarations/algebramap-ofsubsemiring-apply.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [ofSubring](declarations/ofsubring.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [algebraMap_ofSubring](declarations/algebramap-ofsubring.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_algebraMap_ofSubring](declarations/coe-algebramap-ofsubring.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [algebraMap_ofSubring_apply](declarations/algebramap-ofsubring-apply.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [algebraMapSubmonoid](declarations/algebramapsubmonoid.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_algebraMapSubmonoid_of_mem](declarations/mem-algebramapsubmonoid-of-mem.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [algebraMapSubmonoid_powers](declarations/algebramapsubmonoid-powers.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mul_sub_algebraMap_commutes](declarations/mul-sub-algebramap-commutes.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mul_sub_algebraMap_pow_commutes](declarations/mul-sub-algebramap-pow-commutes.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [semiringToRing](declarations/semiringtoring.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [End.instAlgebra](declarations/end-instalgebra.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `example` | [(anonymous)](declarations/example.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [algebraMap_end_eq_smul_id](declarations/algebramap-end-eq-smul-id.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [algebraMap_end_apply](declarations/algebramap-end-apply.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ker_algebraMap_end](declarations/ker-algebramap-end.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [End.algebraMap_isUnit_inv_apply_eq_iff](declarations/end-algebramap-isunit-inv-apply-eq-iff.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [End.algebraMap_isUnit_inv_apply_eq_iff'](declarations/end-algebramap-isunit-inv-apply-eq-iff-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_algebraMap_mul](declarations/map-algebramap-mul.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_mul_algebraMap](declarations/map-mul-algebramap.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [nat_algebra_subsingleton](declarations/nat-algebra-subsingleton.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [algebraMap_comp_natCast](declarations/algebramap-comp-natcast.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [algebraMap_int_eq](declarations/algebramap-int-eq.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [int_algebra_subsingleton](declarations/int-algebra-subsingleton.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [algebraMap_comp_intCast](declarations/algebramap-comp-intcast.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [_root_.NeZero.of_faithfulSMul](declarations/root-nezero-of-faithfulsmul.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [faithfulSMul_iff_algebraMap_injective](declarations/faithfulsmul-iff-algebramap-injective.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [algebraMap_injective](declarations/algebramap-injective.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [algebraMap_eq_zero_iff](declarations/algebramap-eq-zero-iff.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [algebraMap_eq_one_iff](declarations/algebramap-eq-one-iff.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Algebra.charZero_of_charZero](declarations/algebra-charzero-of-charzero.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [iff_faithfulSMul](declarations/iff-faithfulsmul.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [iff_algebraMap_injective](declarations/iff-algebramap-injective.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [algebra_compatible_smul](declarations/algebra-compatible-smul.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [algebraMap_smul](declarations/algebramap-smul.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [NoZeroSMulDivisors.trans_faithfulSMul](declarations/nozerosmuldivisors-trans-faithfulsmul.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [smul_algebra_smul_comm](declarations/smul-algebra-smul-comm.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [ltoFun](declarations/ltofun.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [LinearMap.ker_restrictScalars](declarations/linearmap-ker-restrictscalars.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [Invertible.algebraMapOfInvertibleAlgebraMap](declarations/invertible-algebramapofinvertiblealgebramap.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [IsUnit.algebraMap_of_algebraMap](declarations/isunit-algebramap-of-algebramap.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [injective_algebraMap_of_linearMap](declarations/injective-algebramap-of-linearmap.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [surjective_algebraMap_of_linearMap](declarations/surjective-algebramap-of-linearmap.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [bijective_algebraMap_of_linearMap](declarations/bijective-algebramap-of-linearmap.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [bijective_algebraMap_of_linearEquiv](declarations/bijective-algebramap-of-linearequiv.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [LinearMap.extendScalarsOfSurjectiveEquiv](declarations/linearmap-extendscalarsofsurjectiveequiv.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [LinearMap.extendScalarsOfSurjective](declarations/linearmap-extendscalarsofsurjective.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [LinearEquiv.extendScalarsOfSurjective](declarations/linearequiv-extendscalarsofsurjective.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [LinearMap.extendScalarsOfSurjective_apply](declarations/linearmap-extendscalarsofsurjective-apply.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [LinearEquiv.extendScalarsOfSurjective_apply](declarations/linearequiv-extendscalarsofsurjective-apply.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [LinearEquiv.extendScalarsOfSurjective_symm](declarations/linearequiv-extendscalarsofsurjective-symm.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_prod](declarations/coe-prod.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [coe_sum](declarations/coe-sum.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3b6bba1b94531fce419b03b4c464880b60b326828ff32d26faa1f835767ef84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

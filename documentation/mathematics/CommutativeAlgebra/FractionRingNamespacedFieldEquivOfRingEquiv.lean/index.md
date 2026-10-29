# Fraction Ring Namespaced Field Equiv Of Ring Equiv

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da8548cfb98cae39dfa08ba78e6cb9696f997e2b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/FractionRingNamespacedFieldEquivOfRingEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsFractionRing](declarations/isfractionring.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Rat.isFractionRing](declarations/rat-isfractionring.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [to_map_eq_zero_iff](declarations/to-map-eq-zero-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [injective](declarations/injective.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_inj](declarations/coe-inj.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [to_map_ne_zero_of_mem_nonZeroDivisors](declarations/to-map-ne-zero-of-mem-nonzerodivisors.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isDomain](declarations/isdomain.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mul_inv_cancel](declarations/mul-inv-cancel.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [toField](declarations/tofield.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mk'_mk_eq_div](declarations/mk-mk-eq-div.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mk'_eq_div](declarations/mk-eq-div.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [div_surjective](declarations/div-surjective.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isUnit_map_of_injective](declarations/isunit-map-of-injective.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk'_eq_zero_iff_eq_zero](declarations/mk-eq-zero-iff-eq-zero.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mk'_eq_one_iff_eq](declarations/mk-eq-one-iff-eq.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [lift](declarations/lift.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lift_algebraMap](declarations/lift-algebramap.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lift_mk'](declarations/lift-mk.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [map](declarations/map.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [fieldEquivOfRingEquiv](declarations/fieldequivofringequiv.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isFractionRing_iff_of_base_ringEquiv](declarations/isfractionring-iff-of-base-ringequiv.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [nontrivial](declarations/nontrivial.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [FractionRing](declarations/fractionring.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [unique](declarations/unique.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [field](declarations/field.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mk_eq_div](declarations/mk-eq-div-source-edition-2.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [algEquiv](declarations/algequiv.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a75e95913d934f24804bf61cbc9af04d658307270c0093f87f41a3564161d50c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FractionRing/Variant6d322b2c93756fd0e68a7ecb56da8692c2899ef1de8e55c18521f210e5fc37e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

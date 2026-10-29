# ENat Basic Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**95 observed declarations and anonymous commands**, 87 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24d90993f7b56791a353154b8dac7da436a4a6f7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [some_eq_natCast](declarations/some-eq-natcast.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [natCast_inj](declarations/natcast-inj.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [natCast_zero](declarations/natcast-zero.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [natCast_one](declarations/natcast-one.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [natCast_add](declarations/natcast-add.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [natCast_sub](declarations/natcast-sub.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [natCast_lt_top](declarations/natcast-lt-top.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [lift](declarations/lift.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [natCast_lift](declarations/natcast-lift.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lift_natCast](declarations/lift-natcast.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lift_lt_iff](declarations/lift-lt-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lift_le_iff](declarations/lift-le-iff.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lt_lift_iff](declarations/lt-lift-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [le_lift_iff](declarations/le-lift-iff.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lift_zero](declarations/lift-zero.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lift_one](declarations/lift-one.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lift_ofNat](declarations/lift-ofnat.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [add_lt_top](declarations/add-lt-top.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [add_eq_top](declarations/add-eq-top.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [canLift](declarations/canlift.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toNat](declarations/tonat.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toNat_natCast](declarations/tonat-natcast.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toNat_zero](declarations/tonat-zero.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toNat_one](declarations/tonat-one.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toNat_ofNat](declarations/tonat-ofnat.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toNat_top](declarations/tonat-top.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toNat_eq_zero](declarations/tonat-eq-zero.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toNat_pos](declarations/tonat-pos.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lift_eq_toNat_of_lt_top](declarations/lift-eq-tonat-of-lt-top.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [recTopCoe_zero](declarations/rectopcoe-zero.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [recTopCoe_one](declarations/rectopcoe-one.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [recTopCoe_ofNat](declarations/rectopcoe-ofnat.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [top_ne_natCast](declarations/top-ne-natcast.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [top_ne_ofNat](declarations/top-ne-ofnat.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [top_ne_zero](declarations/top-ne-zero.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [top_ne_one](declarations/top-ne-one.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [natCast_ne_top](declarations/natcast-ne-top.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ofNat_ne_top](declarations/ofnat-ne-top.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [zero_ne_top](declarations/zero-ne-top.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [one_ne_top](declarations/one-ne-top.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [top_sub_natCast](declarations/top-sub-natcast.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [top_sub_one](declarations/top-sub-one.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [top_sub_ofNat](declarations/top-sub-ofnat.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [top_pos](declarations/top-pos.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [one_lt_top](declarations/one-lt-top.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [sub_top](declarations/sub-top.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [natCast_toNat_eq_self](declarations/natcast-tonat-eq-self.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [toNat_eq_iff_eq_natCast](declarations/tonat-eq-iff-eq-natcast.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toNat_eq_iff](declarations/tonat-eq-iff.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [natCast_toNat_le_self](declarations/natcast-tonat-le-self.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toNat_add](declarations/tonat-add.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toNat_sub](declarations/tonat-sub.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [add_le_add_iff_left](declarations/add-le-add-iff-left.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [add_le_add_iff_right](declarations/add-le-add-iff-right.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [le_natCast_iff](declarations/le-natcast-iff.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [add_lt_add_iff_right](declarations/add-lt-add-iff-right.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [add_lt_add_iff_left](declarations/add-lt-add-iff-left.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [add_lt_add](declarations/add-lt-add.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [add_lt_add_of_le_of_lt](declarations/add-lt-add-of-le-of-lt.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [add_lt_add_of_lt_of_le](declarations/add-lt-add-of-lt-of-le.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [natCast_lt_natCast](declarations/natcast-lt-natcast.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [natCast_le_natCast](declarations/natcast-le-natcast.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [toNat_le_of_le_natCast](declarations/tonat-le-of-le-natcast.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [toNat_le_toNat](declarations/tonat-le-tonat.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [nat_induction](declarations/nat-induction.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [ne_top_iff_exists](declarations/ne-top-iff-exists.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [eq_top_iff_forall_ne](declarations/eq-top-iff-forall-ne.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [forall_ne_top](declarations/forall-ne-top.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [exists_ne_top](declarations/exists-ne-top.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [eq_top_iff_forall_gt](declarations/eq-top-iff-forall-gt.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [eq_top_iff_forall_ge](declarations/eq-top-iff-forall-ge-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [forall_natCast_le_iff_le](declarations/forall-natcast-le-iff-le.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [eq_of_forall_natCast_le_iff](declarations/eq-of-forall-natcast-le-iff.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [exists_nat_gt](declarations/exists-nat-gt.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [sub_eq_top_iff](declarations/sub-eq-top-iff.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [sub_ne_top_iff](declarations/sub-ne-top-iff.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [addLECancellable_of_ne_top](declarations/addlecancellable-of-ne-top.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [addLECancellable_of_lt_top](declarations/addlecancellable-of-lt-top.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [addLECancellable_natCast](declarations/addlecancellable-natcast.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [map](declarations/map.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [map_top](declarations/map-top.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [map_natCast](declarations/map-natcast.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [map_zero](declarations/map-zero.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [map_one](declarations/map-one.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [map_ofNat](declarations/map-ofnat.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [map_eq_top_iff](declarations/map-eq-top-iff.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [strictMono_map_iff](declarations/strictmono-map-iff.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [monotone_map_iff](declarations/monotone-map-iff.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [map_add](declarations/map-add.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [ENat Basic Namespaced Public](declarations/enatmap.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [ENat Basic Namespaced Public](declarations/enatmap-source-line-397-occurrence-2.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [ENat Basic Namespaced Public](declarations/enatmap-source-line-404-occurrence-2.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [coe_eq_natCast](declarations/coe-eq-natcast.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [eq_top_iff_forall_ge](declarations/eq-top-iff-forall-ge.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18afd4421f1781ab9f1c0ccee20616ace709cae1fd0fe0094d7c1a3fd5e19481 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

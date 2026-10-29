# ENat Basic Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**95 observed declarations and anonymous commands**, 87 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant94ee6f6053be2498583edea636880c2b3118316fd6219f43d19f9780749c4959.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3807445957f39d7670c6be7595e41351da6680f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [some_eq_natCast](declarations/some-eq-natcast.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [natCast_inj](declarations/natcast-inj.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [natCast_zero](declarations/natcast-zero.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [natCast_one](declarations/natcast-one.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [natCast_add](declarations/natcast-add.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [natCast_sub](declarations/natcast-sub.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [natCast_lt_top](declarations/natcast-lt-top.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [lift](declarations/lift.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [natCast_lift](declarations/natcast-lift.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lift_natCast](declarations/lift-natcast.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lift_lt_iff](declarations/lift-lt-iff.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lift_le_iff](declarations/lift-le-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lt_lift_iff](declarations/lt-lift-iff.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [le_lift_iff](declarations/le-lift-iff.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lift_zero](declarations/lift-zero.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lift_one](declarations/lift-one.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lift_ofNat](declarations/lift-ofnat.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [add_lt_top](declarations/add-lt-top.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [add_eq_top](declarations/add-eq-top.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [canLift](declarations/canlift.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toNat](declarations/tonat.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toNat_natCast](declarations/tonat-natcast.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toNat_zero](declarations/tonat-zero.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toNat_one](declarations/tonat-one.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toNat_ofNat](declarations/tonat-ofnat.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toNat_top](declarations/tonat-top.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toNat_eq_zero](declarations/tonat-eq-zero.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toNat_pos](declarations/tonat-pos.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lift_eq_toNat_of_lt_top](declarations/lift-eq-tonat-of-lt-top.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [recTopCoe_zero](declarations/rectopcoe-zero.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [recTopCoe_one](declarations/rectopcoe-one.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [recTopCoe_ofNat](declarations/rectopcoe-ofnat.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [top_ne_natCast](declarations/top-ne-natcast.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [top_ne_ofNat](declarations/top-ne-ofnat.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [top_ne_zero](declarations/top-ne-zero.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [top_ne_one](declarations/top-ne-one.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [natCast_ne_top](declarations/natcast-ne-top.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ofNat_ne_top](declarations/ofnat-ne-top.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [zero_ne_top](declarations/zero-ne-top.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [one_ne_top](declarations/one-ne-top.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [top_sub_natCast](declarations/top-sub-natcast.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [top_sub_one](declarations/top-sub-one.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [top_sub_ofNat](declarations/top-sub-ofnat.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [top_pos](declarations/top-pos.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [one_lt_top](declarations/one-lt-top.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [sub_top](declarations/sub-top.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [natCast_toNat_eq_self](declarations/natcast-tonat-eq-self.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [toNat_eq_iff_eq_natCast](declarations/tonat-eq-iff-eq-natcast.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toNat_eq_iff](declarations/tonat-eq-iff.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [natCast_toNat_le_self](declarations/natcast-tonat-le-self.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toNat_add](declarations/tonat-add.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toNat_sub](declarations/tonat-sub.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [add_le_add_iff_left](declarations/add-le-add-iff-left.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [add_le_add_iff_right](declarations/add-le-add-iff-right.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [le_natCast_iff](declarations/le-natcast-iff.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [add_lt_add_iff_right](declarations/add-lt-add-iff-right.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [add_lt_add_iff_left](declarations/add-lt-add-iff-left.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [add_lt_add](declarations/add-lt-add.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [add_lt_add_of_le_of_lt](declarations/add-lt-add-of-le-of-lt.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [add_lt_add_of_lt_of_le](declarations/add-lt-add-of-lt-of-le.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [natCast_lt_natCast](declarations/natcast-lt-natcast.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [natCast_le_natCast](declarations/natcast-le-natcast.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [toNat_le_of_le_natCast](declarations/tonat-le-of-le-natcast.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [toNat_le_toNat](declarations/tonat-le-tonat.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [nat_induction](declarations/nat-induction.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [ne_top_iff_exists](declarations/ne-top-iff-exists.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [eq_top_iff_forall_ne](declarations/eq-top-iff-forall-ne.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [forall_ne_top](declarations/forall-ne-top.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [exists_ne_top](declarations/exists-ne-top.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [eq_top_iff_forall_gt](declarations/eq-top-iff-forall-gt.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [eq_top_iff_forall_ge](declarations/eq-top-iff-forall-ge.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [forall_natCast_le_iff_le](declarations/forall-natcast-le-iff-le.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [eq_of_forall_natCast_le_iff](declarations/eq-of-forall-natcast-le-iff.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [exists_nat_gt](declarations/exists-nat-gt.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [sub_eq_top_iff](declarations/sub-eq-top-iff.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [sub_ne_top_iff](declarations/sub-ne-top-iff.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [addLECancellable_of_ne_top](declarations/addlecancellable-of-ne-top.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [addLECancellable_of_lt_top](declarations/addlecancellable-of-lt-top.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [addLECancellable_natCast](declarations/addlecancellable-natcast.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [map](declarations/map.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [map_top](declarations/map-top.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [map_natCast](declarations/map-natcast.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [map_zero](declarations/map-zero.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [map_one](declarations/map-one.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [map_ofNat](declarations/map-ofnat.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [map_eq_top_iff](declarations/map-eq-top-iff.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [strictMono_map_iff](declarations/strictmono-map-iff.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [monotone_map_iff](declarations/monotone-map-iff.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [map_add](declarations/map-add.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [_root_.OneHom.ENatMap](declarations/root-onehom-enatmap.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [_root_.ZeroHom.ENatMap](declarations/root-zerohom-enatmap.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [_root_.AddHom.ENatMap](declarations/root-addhom-enatmap.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [coe_eq_natCast](declarations/coe-eq-natcast.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [eq_top_iff_forall_ge](declarations/eq-top-iff-forall-ge-source-edition-2.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f61bb11fa1a408787be49a303c51989cf5f48566ec00bed0d85d2ebc68059dcd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant94ee6f6053be2498583edea636880c2b3118316fd6219f43d19f9780749c4959.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Cast Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65e315e6ebb697b311bcf45a7943aac08fbd51fa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/CastBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [castAddMonoidHom](declarations/castaddmonoidhom.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_castAddMonoidHom](declarations/coe-castaddmonoidhom.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [_root_.Even.natCast](declarations/root-even-natcast.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cast_mul](declarations/cast-mul.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [castRingHom](declarations/castringhom.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [coe_castRingHom](declarations/coe-castringhom.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [_root_.nsmul_eq_mul'](declarations/root-nsmul-eq-mul.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [ofNat_nsmul_eq_mul](declarations/ofnat-nsmul-eq-mul.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [cast_pow](declarations/cast-pow.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [cast_dvd_cast](declarations/cast-dvd-cast.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eq_natCast'](declarations/eq-natcast-source-edition-3.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_natCast'](declarations/map-natcast-source-edition-2.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [map_ofNat'](declarations/map-ofnat-source-edition-2.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ext_nat''](declarations/ext-nat-source-edition-2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [MonoidWithZeroHom.ext_nat](declarations/monoidwithzerohom-ext-nat.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eq_natCast](declarations/eq-natcast-source-edition-2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_natCast](declarations/map-natcast.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_ofNat](declarations/map-ofnat.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ext_nat](declarations/ext-nat.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [NeZero.nat_of_neZero](declarations/nezero-nat-of-nezero.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eq_natCast'](declarations/eq-natcast.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Nat.cast_id](declarations/nat-cast-id.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Nat.castRingHom_nat](declarations/nat-castringhom-nat.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [Nat.uniqueRingHom](declarations/nat-uniqueringhom.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instNatCast](declarations/instnatcast.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [natCast_apply](declarations/natcast-apply.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [natCast_def](declarations/natcast-def.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ofNat_apply](declarations/ofnat-apply.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [ofNat_def](declarations/ofnat-def.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Sum.elim_natCast_natCast](declarations/sum-elim-natcast-natcast.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec7ceebed576eea098357fae7b8ba316e76b9fec10f40b9c287f94e084cc1258 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

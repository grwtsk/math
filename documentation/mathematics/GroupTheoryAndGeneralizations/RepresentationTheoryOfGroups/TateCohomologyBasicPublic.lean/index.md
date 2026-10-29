# Tate Cohomology Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant296dabdbf04196374a3378c9d1c9ad80b74adb25961757954b92181c71fc620f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6682ccaeddc09024cc477e00e3b4747ecc22da3a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Rep.tateNorm](declarations/rep-tatenorm.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [Rep.tateNorm_eq](declarations/rep-tatenorm-eq.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [Rep.norm_comp_d_eq_zero](declarations/rep-norm-comp-d-eq-zero.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [Rep.tateNorm_comp_d](declarations/rep-tatenorm-comp-d.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [Rep.comp_eq_zero](declarations/rep-comp-eq-zero.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Rep.d_comp_tateNorm](declarations/rep-d-comp-tatenorm.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [tateComplexConnectData](declarations/tatecomplexconnectdata.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [tateComplex](declarations/tatecomplex.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [tateComplex_d_neg_one](declarations/tatecomplex-d-neg-one.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [tateComplex_d_ofNat](declarations/tatecomplex-d-ofnat.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [tateComplex_d_neg](declarations/tatecomplex-d-neg.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [tateComplex.map](declarations/tatecomplex-map.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [tateComplex.map_zero](declarations/tatecomplex-map-zero.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [tateComplex.map_add](declarations/tatecomplex-map-add.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [tateComplexFunctor](declarations/tatecomplexfunctor.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [tateCohomologyFunctor](declarations/tatecohomologyfunctor.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [tateCohomology](declarations/tatecohomology.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [tateComplex.evalNonneg](declarations/tatecomplex-evalnonneg.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [tateComplex.evalNeg](declarations/tatecomplex-evalneg.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [map_tateComplexFunctor_shortExact](declarations/map-tatecomplexfunctor-shortexact.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [preservesFiniteLimits_tateComplexFunctor](declarations/preservesfinitelimits-tatecomplexfunctor.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [preservesFiniteColimits_tateComplexFunctor](declarations/preservesfinitecolimits-tatecomplexfunctor.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [δ](declarations/anonymous.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [map_δ](declarations/map-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [δ_map](declarations/map.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [exact₃](declarations/exact-source-edition-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [exact₁](declarations/exact.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [δ_naturality](declarations/naturality.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [isoGroupCohomology](declarations/isogroupcohomology.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [isoGroupHomology](declarations/isogrouphomology.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8db80ec1ef3efa8d73be461b37c961a771d6ab98a183478c345ab315780d7196 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant296dabdbf04196374a3378c9d1c9ad80b74adb25961757954b92181c71fc620f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

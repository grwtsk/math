# Small Affine Zariski Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant8da420f18428070509e9c27a64328076acc7cb84590be11f6766161044513a2e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88631127c12f7f61ca614dd2c94ec5649a52094b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/SmallAffineZariskiPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Scheme.AffineZariskiSite](declarations/scheme-affinezariskisite.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [toOpens](declarations/toopens.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [toOpens_mono](declarations/toopens-mono.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [toOpens_injective](declarations/toopens-injective.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [basicOpen](declarations/basicopen.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [basicOpen_le](declarations/basicopen-le.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toOpensFunctor](declarations/toopensfunctor.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [restrictIsoSpec](declarations/restrictisospec.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [grothendieckTopology](declarations/grothendiecktopology.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mem_grothendieckTopology](declarations/mem-grothendiecktopology.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [presieveOfSections](declarations/presieveofsections.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [sectionsOfPresieve](declarations/sectionsofpresieve.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [presieveOfSections_sectionsOfPresieve](declarations/presieveofsections-sectionsofpresieve.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [presieveOfSections_surjective](declarations/presieveofsections-surjective.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [presieveOfSections_eq_ofArrows](declarations/presieveofsections-eq-ofarrows.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [generate_presieveOfSections](declarations/generate-presieveofsections.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [generate_presieveOfSections_mem_grothendieckTopology](declarations/generate-presieveofsections-mem-grothendiecktopology.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [mem_grothendieckTopology_iff_sectionsOfPresieve](declarations/mem-grothendiecktopology-iff-sectionsofpresieve.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [sheafEquiv](declarations/sheafequiv.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [directedCover](declarations/directedcover.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [cocone](declarations/cocone.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [coequifibered_iff_forall_isLocalizationAway](declarations/coequifibered-iff-forall-islocalizationaway.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [relativeGluingData](declarations/relativegluingdata.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [opensRange_relativeGluingData_map](declarations/opensrange-relativegluingdata-map.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [isColimitCocone](declarations/iscolimitcocone.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca7ba8e4a639a16d1441c57a2d030c1878df77c700b79a8d75090e767e553203 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variant8da420f18428070509e9c27a64328076acc7cb84590be11f6766161044513a2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

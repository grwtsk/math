# Skyscraper

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9132a6ad081a9f67fcff93cb1987dec501dfd4ab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/Skyscraper.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [skyscraperPresheaf](declarations/skyscraperpresheaf.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [skyscraperPresheaf_eq_pushforward](declarations/skyscraperpresheaf-eq-pushforward.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [SkyscraperPresheafFunctor.map'](declarations/skyscraperpresheaffunctor-map.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [SkyscraperPresheafFunctor.map'_id](declarations/skyscraperpresheaffunctor-map-id.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [SkyscraperPresheafFunctor.map'_comp](declarations/skyscraperpresheaffunctor-map-comp.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [skyscraperPresheafFunctor](declarations/skyscraperpresheaffunctor.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [skyscraperPresheafCoconeOfSpecializes](declarations/skyscraperpresheafcoconeofspecializes.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [skyscraperPresheafCoconeIsColimitOfSpecializes](declarations/skyscraperpresheafcoconeiscolimitofspecializes.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [skyscraperPresheafStalkOfSpecializes](declarations/skyscraperpresheafstalkofspecializes.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [skyscraperPresheafCocone](declarations/skyscraperpresheafcocone.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [skyscraperPresheafCoconeIsColimitOfNotSpecializes](declarations/skyscraperpresheafcoconeiscolimitofnotspecializes.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [skyscraperPresheafStalkOfNotSpecializes](declarations/skyscraperpresheafstalkofnotspecializes.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [skyscraperPresheafStalkOfNotSpecializesIsTerminal](declarations/skyscraperpresheafstalkofnotspecializesisterminal.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [skyscraperPresheaf_isSheaf](declarations/skyscraperpresheaf-issheaf.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [skyscraperSheaf](declarations/skyscrapersheaf.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [skyscraperSheafFunctor](declarations/skyscrapersheaffunctor.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [toSkyscraperPresheaf](declarations/toskyscraperpresheaf.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fromStalk](declarations/fromstalk.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [to_skyscraper_fromStalk](declarations/to-skyscraper-fromstalk.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fromStalk_to_skyscraper](declarations/fromstalk-to-skyscraper.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [unit](declarations/unit.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [counit](declarations/counit.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [skyscraperPresheafStalkAdjunction](declarations/skyscraperpresheafstalkadjunction.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [stalkSkyscraperSheafAdjunction](declarations/stalkskyscrapersheafadjunction.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92d7fd70a69c341ae04452162a028dc07e565f9d7872a3dd791b991d8be3963b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Limits Basic Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b8de13138d474a3e68e118dcede877e6a911258`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/LimitsBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [limitCone](declarations/limitcone.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [limitConeIsLimit](declarations/limitconeislimit.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [conePtOfConeForget](declarations/coneptofconeforget.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [topologicalSpaceConePtOfConeForget](declarations/topologicalspaceconeptofconeforget.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [coneOfConeForget](declarations/coneofconeforget.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [isLimitConeOfForget](declarations/islimitconeofforget.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [induced_of_isLimit](declarations/induced-of-islimit.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [limit_topology](declarations/limit-topology.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [hasLimit_iff_small_sections](declarations/haslimit-iff-small-sections.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [topCat_hasLimitsOfShape](declarations/topcat-haslimitsofshape.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [topCat_hasLimitsOfSize](declarations/topcat-haslimitsofsize.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [topCat_hasLimits](declarations/topcat-haslimits.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [forget_preservesLimitsOfSize](declarations/forget-preserveslimitsofsize.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [forget_preservesLimits](declarations/forget-preserveslimits.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [coconePtOfCoconeForget](declarations/coconeptofcoconeforget.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [topologicalSpaceCoconePtOfCoconeForget](declarations/topologicalspacecoconeptofcoconeforget.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [coconeOfCoconeForget](declarations/coconeofcoconeforget.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [isColimitCoconeOfForget](declarations/iscolimitcoconeofforget.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coinduced_of_isColimit](declarations/coinduced-of-iscolimit.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [isOpen_iff_of_isColimit](declarations/isopen-iff-of-iscolimit.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isClosed_iff_of_isColimit](declarations/isclosed-iff-of-iscolimit.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [continuous_iff_of_isColimit](declarations/continuous-iff-of-iscolimit.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [colimit_topology](declarations/colimit-topology.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [colimit_isOpen_iff](declarations/colimit-isopen-iff.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [hasColimit_iff_small_quot](declarations/hascolimit-iff-small-quot.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [topCat_hasColimitsOfShape](declarations/topcat-hascolimitsofshape.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [topCat_hasColimitsOfSize](declarations/topcat-hascolimitsofsize.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [topCat_hasColimits](declarations/topcat-hascolimits.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [forget_preservesColimitsOfSize](declarations/forget-preservescolimitsofsize.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [forget_preservesColimits](declarations/forget-preservescolimits.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [isTerminalPUnit](declarations/isterminalpunit.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [terminalIsoPUnit](declarations/terminalisopunit.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [isInitialPEmpty](declarations/isinitialpempty.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [initialIsoPEmpty](declarations/initialisopempty.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea85560a000f58e516768a3a123aa0bbd428e90d2ee47030e76561ad612f868e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Lawson Topology

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70aab810566fe0cfaef281297bf79ab2b8cc7574`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/LawsonTopology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [lawson](declarations/lawson.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [IsLawson](declarations/islawson.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [lawsonBasis](declarations/lawsonbasis.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isTopologicalBasis](declarations/istopologicalbasis.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [WithLawson](declarations/withlawson.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toLawson](declarations/tolawson.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofLawson](declarations/oflawson.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [to_Lawson_symm_eq](declarations/to-lawson-symm-eq.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [of_Lawson_symm_eq](declarations/of-lawson-symm-eq.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [toLawson_ofLawson](declarations/tolawson-oflawson.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [ofLawson_toLawson](declarations/oflawson-tolawson.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [toLawson_inj](declarations/tolawson-inj.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [ofLawson_inj](declarations/oflawson-inj.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [rec](declarations/rec.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instPreorder](declarations/instpreorder.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instTopologicalSpace](declarations/insttopologicalspace.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instIsLawson](declarations/instislawson.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [homeomorph](declarations/homeomorph.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isOpen_preimage_ofLawson](declarations/isopen-preimage-oflawson.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isClosed_preimage_ofLawson](declarations/isclosed-preimage-oflawson.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isOpen_def](declarations/isopen-def.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [lawson_le_scott](declarations/lawson-le-scott.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [lawson_le_lower](declarations/lawson-le-lower.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [scottHausdorff_le_lawson](declarations/scotthausdorff-le-lawson.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [lawsonClosed_of_scottClosed](declarations/lawsonclosed-of-scottclosed.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [lawsonClosed_of_lowerClosed](declarations/lawsonclosed-of-lowerclosed.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [lawsonOpen_iff_scottOpen_of_isUpperSet](declarations/lawsonopen-iff-scottopen-of-isupperset-source-edition-2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isLawson_le_isScott](declarations/islawson-le-isscott.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [scottHausdorff_le_isLawson](declarations/scotthausdorff-le-islawson.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [lawsonOpen_iff_scottOpen_of_isUpperSet'](declarations/lawsonopen-iff-scottopen-of-isupperset.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [lawsonClosed_iff_scottClosed_of_isLowerSet](declarations/lawsonclosed-iff-scottclosed-of-islowerset.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [lawsonClosed_iff_dirSupClosed_of_isLowerSet](declarations/lawsonclosed-iff-dirsupclosed-of-islowerset.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [singleton_isClosed](declarations/singleton-isclosed.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec0ab774a4ef0172c1d1b60eafccaa47f49c6c8ce7a591787c1f0fa1bf3854f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant8c9999362e82600c193bd4309fd3962d71df045be9d930012ba244667f554703.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

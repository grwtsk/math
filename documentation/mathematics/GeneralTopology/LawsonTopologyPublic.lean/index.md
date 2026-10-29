# Lawson Topology Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce38d8394b7bfc745db9c5f262f07ccdf3349076`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/LawsonTopologyPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [lawson](declarations/lawson.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [IsLawson](declarations/islawson.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [lawsonBasis](declarations/lawsonbasis.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isTopologicalBasis](declarations/istopologicalbasis.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [WithLawson](declarations/withlawson.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toLawson](declarations/tolawson.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofLawson](declarations/oflawson.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [to_Lawson_symm_eq](declarations/to-lawson-symm-eq.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [of_Lawson_symm_eq](declarations/of-lawson-symm-eq.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [toLawson_ofLawson](declarations/tolawson-oflawson.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [ofLawson_toLawson](declarations/oflawson-tolawson.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [toLawson_inj](declarations/tolawson-inj.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [ofLawson_inj](declarations/oflawson-inj.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [rec](declarations/rec.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instPreorder](declarations/instpreorder.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instTopologicalSpace](declarations/insttopologicalspace.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instIsLawson](declarations/instislawson.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [homeomorph](declarations/homeomorph.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isOpen_preimage_ofLawson](declarations/isopen-preimage-oflawson.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isClosed_preimage_ofLawson](declarations/isclosed-preimage-oflawson.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isOpen_def](declarations/isopen-def.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [lawson_le_scott](declarations/lawson-le-scott.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [lawson_le_lower](declarations/lawson-le-lower.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [scottHausdorff_le_lawson](declarations/scotthausdorff-le-lawson.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [lawsonClosed_of_scottClosed](declarations/lawsonclosed-of-scottclosed.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [lawsonClosed_of_lowerClosed](declarations/lawsonclosed-of-lowerclosed.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [lawsonOpen_iff_scottOpen_of_isUpperSet](declarations/lawsonopen-iff-scottopen-of-isupperset.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isLawson_le_isScott](declarations/islawson-le-isscott.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [scottHausdorff_le_isLawson](declarations/scotthausdorff-le-islawson.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [lawsonOpen_iff_scottOpen_of_isUpperSet'](declarations/lawsonopen-iff-scottopen-of-isupperset-source-edition-2.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [lawsonClosed_iff_scottClosed_of_isLowerSet](declarations/lawsonclosed-iff-scottclosed-of-islowerset.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [lawsonClosed_iff_dirSupClosed_of_isLowerSet](declarations/lawsonclosed-iff-dirsupclosed-of-islowerset.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37f2e6071abb740de25c59613a0eab90773edcb8f385a64d5586a660c8cedb8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant446cb184da734a2ed4a5eb7f9910ad31cc20423e1d91d7a580d38fda5a9556ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

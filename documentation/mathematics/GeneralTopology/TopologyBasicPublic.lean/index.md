# Topology Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bce207603a63573751103b7cf27c0c15aab1686a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologyBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.ofClosed](declarations/topologicalspace-ofclosed.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [isOpen_mk](declarations/isopen-mk.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [TopologicalSpace.ext](declarations/topologicalspace-ext.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [TopologicalSpace.ext_iff](declarations/topologicalspace-ext-iff.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isOpen_fold](declarations/isopen-fold.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isOpen_iUnion](declarations/isopen-iunion.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isOpen_biUnion](declarations/isopen-biunion.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsOpen.union](declarations/isopen-union.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isOpen_iff_of_cover](declarations/isopen-iff-of-cover.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isOpen_empty](declarations/isopen-empty.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Set.Finite.isOpen_sInter](declarations/set-finite-isopen-sinter.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Set.Finite.isOpen_biInter](declarations/set-finite-isopen-biinter.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isOpen_iInter_of_finite](declarations/isopen-iinter-of-finite.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [IsOpen.iInter_of_finite_ne_univ](declarations/isopen-iinter-of-finite-ne-univ.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isOpen_biInter_finset](declarations/isopen-biinter-finset.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isOpen_const](declarations/isopen-const.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsOpen.and](declarations/isopen-and.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isOpen_compl_iff](declarations/isopen-compl-iff.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [TopologicalSpace.ext_iff_isClosed](declarations/topologicalspace-ext-iff-isclosed.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isClosed_const](declarations/isclosed-const.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isClosed_empty](declarations/isclosed-empty.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isClosed_univ](declarations/isclosed-univ.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsOpen.isLocallyClosed](declarations/isopen-islocallyclosed.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsClosed.isLocallyClosed](declarations/isclosed-islocallyclosed.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsClosed.union](declarations/isclosed-union.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isClosed_sInter](declarations/isclosed-sinter.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isClosed_iInter](declarations/isclosed-iinter.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isClosed_biInter](declarations/isclosed-biinter.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isClosed_compl_iff](declarations/isclosed-compl-iff.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsOpen.sdiff](declarations/isopen-sdiff.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsClosed.inter](declarations/isclosed-inter.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsClosed.sdiff](declarations/isclosed-sdiff.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Set.Finite.isClosed_biUnion](declarations/set-finite-isclosed-biunion.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [Set.Finite.isClosed_sUnion](declarations/set-finite-isclosed-sunion.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isClosed_biUnion_finset](declarations/isclosed-biunion-finset.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isClosed_iUnion_of_finite](declarations/isclosed-iunion-of-finite.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsClosed.iUnion_of_finite_nonempty](declarations/isclosed-iunion-of-finite-nonempty.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isClosed_imp](declarations/isclosed-imp.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsClosed.not](declarations/isclosed-not.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsClosed.and](declarations/isclosed-and.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [le_nhds_lim](declarations/le-nhds-lim.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [tendsto_nhds_limUnder](declarations/tendsto-nhds-limunder.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [limUnder_of_not_tendsto](declarations/limunder-of-not-tendsto.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6bb3a0d7cd6bec27f0bfdb919597c6ead99205ed0adb6c3d116165763797e90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

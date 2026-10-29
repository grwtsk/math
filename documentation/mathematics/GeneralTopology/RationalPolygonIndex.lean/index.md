# Rational Polygon Index

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/RationalPolygonIndex.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24758d17af4e5bf83b68bd983ddc16f11a27fa9c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/RationalPolygonIndex.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vertex](declarations/vertex.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [leftChart](declarations/leftchart.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [below](declarations/below.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [increment](declarations/increment.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [EdgeValid](declarations/edgevalid.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [edgeDecidable](declarations/edgedecidable.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [prefix](declarations/prefix.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Valid](declarations/valid.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [validDecidable](declarations/validdecidable.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [check](declarations/check.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [evaluate](declarations/evaluate.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [check_iff_valid](declarations/check-iff-valid.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evaluate_eq_some_iff](declarations/evaluate-eq-some-iff.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [prefix_zero](declarations/prefix-zero.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [prefix_succ](declarations/prefix-succ.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [increment_reverse](declarations/increment-reverse.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [points](declarations/points.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [localLog](declarations/locallog.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [branch](declarations/branch.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [leftChart_real](declarations/leftchart-real.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [below_real](declarations/below-real.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [principal_of_not_left](declarations/principal-of-not-left.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [localLog_continuous](declarations/locallog-continuous.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [localLog_exp](declarations/locallog-exp.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [edge_nonzero](declarations/edge-nonzero.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [localLog_endpoint](declarations/locallog-endpoint.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [increment_eq_branches](declarations/increment-eq-branches.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [liftVertex](declarations/liftvertex.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [logCell](declarations/logcell.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [logCell_exp](declarations/logcell-exp.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [finiteLog](declarations/finitelog.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [finiteLog_exp](declarations/finitelog-exp.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteLog_jump](declarations/finitelog-jump.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [checked_nonzero](declarations/checked-nonzero.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [checkedLoop](declarations/checkedloop.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [checkedLoop_closed](declarations/checkedloop-closed.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [winding_eq_prefix](declarations/winding-eq-prefix.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [evaluate_sound](declarations/evaluate-sound.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [checkedLoop_winding](declarations/checkedloop-winding.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a52d00f6d51591ea36f860dcbfc03197dd8b7d6f08afd94dd4dc2015175cfda9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/RationalPolygonIndex.lean","GRWTSK/Analysis/ComplexAnalysis/RationalPolygonIndex.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

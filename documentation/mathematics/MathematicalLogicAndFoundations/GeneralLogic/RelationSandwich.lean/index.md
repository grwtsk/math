# Relation Sandwich

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/GraphTheory/RelationSandwich.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `465feae8404461eae23cf504051668464ff71599`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/RelationSandwich.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [EdgeRelation](declarations/edgerelation.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Subrelation](declarations/subrelation.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Sandwich](declarations/sandwich.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [UpwardClosed](declarations/upwardclosed.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [DownwardClosed](declarations/downwardclosed.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Sandwich.lower_le_upper](declarations/sandwich-lower-le-upper.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Sandwich.middle_of_lower_upward](declarations/sandwich-middle-of-lower-upward.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Sandwich.middle_of_upper_downward](declarations/sandwich-middle-of-upper-downward.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [Path](declarations/path.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Path.mono](declarations/path-mono.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pathProperty_upwardClosed](declarations/pathproperty-upwardclosed.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Sandwich.lower_path_to_middle](declarations/sandwich-lower-path-to-middle.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Sandwich.middle_path_to_upper](declarations/sandwich-middle-path-to-upper.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Acyclic](declarations/acyclic.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [acyclic_of_subrelation](declarations/acyclic-of-subrelation.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [acyclic_downwardClosed](declarations/acyclic-downwardclosed.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Sandwich.middle_acyclic_of_upper](declarations/sandwich-middle-acyclic-of-upper.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [OrderedBy](declarations/orderedby.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [orderedBy_of_subrelation](declarations/orderedby-of-subrelation.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Path.rank_lt](declarations/path-rank-lt.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [acyclic_of_ordered](declarations/acyclic-of-ordered.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Sandwich.middle_acyclic_of_upper_ordered](declarations/sandwich-middle-acyclic-of-upper-ordered.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [OrderedControl](declarations/orderedcontrol.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [OrderedControl.accepts_lower_path](declarations/orderedcontrol-accepts-lower-path.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [OrderedControl.middle_acyclic](declarations/orderedcontrol-middle-acyclic.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [OrderedControl.certified_path_control](declarations/orderedcontrol-certified-path-control.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13536856ba7a5087a712f0000bad418dd027c364755e7865f4a700a16f7c3ce4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/GraphTheory/RelationSandwich.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

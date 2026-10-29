# Quiver Path Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0def375cf74c14abb36d07b7a389cea34130e150b5c69821696402dd7e24ccc3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a28207cbd71ff7a8c1daad8eee7201d7e7b2968e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/QuiverPathNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](declarations/path.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Hom.toPath](declarations/hom-topath.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [nil_ne_cons](declarations/nil-ne-cons.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cons_ne_nil](declarations/cons-ne-nil.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](declarations/obj-eq-of-cons-eq-cons.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [heq_of_cons_eq_cons](declarations/heq-of-cons-eq-cons.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](declarations/hom-heq-of-cons-eq-cons.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [length](declarations/length.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_nil](declarations/length-nil.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_cons](declarations/length-cons.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_of_length_zero](declarations/eq-of-length-zero.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [comp](declarations/comp.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [comp_cons](declarations/comp-cons.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [comp_nil](declarations/comp-nil.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nil_comp](declarations/nil-comp.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [length_comp](declarations/length-comp.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [comp_inj](declarations/comp-inj-source-edition-2.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comp_inj'](declarations/comp-inj.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comp_injective_left](declarations/comp-injective-left.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_injective_right](declarations/comp-injective-right.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [comp_inj_left](declarations/comp-inj-left.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_inj_right](declarations/comp-inj-right.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [toList](declarations/tolist.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toList_comp](declarations/tolist-comp.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toList_chain_nonempty](declarations/tolist-chain-nonempty.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toList_injective](declarations/tolist-injective.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toList_inj](declarations/tolist-inj.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [mapPath](declarations/mappath.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mapPath_nil](declarations/mappath-nil.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mapPath_cons](declarations/mappath-cons.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mapPath_comp](declarations/mappath-comp.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mapPath_toPath](declarations/mappath-topath.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9043bf8943c40f5b447cd4f288bcb1f041c1e321bbaf911f56be35b5c5fa75e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0def375cf74c14abb36d07b7a389cea34130e150b5c69821696402dd7e24ccc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

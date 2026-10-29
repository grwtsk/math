# Quiver Path Namespaced Eq Nil Of Length Zero

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e022e62198ed910c05085ab204d1406d5dd71e2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/QuiverPathNamespacedEqNilOfLengthZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](declarations/path.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Hom.toPath](declarations/hom-topath.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [nil_ne_cons](declarations/nil-ne-cons.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cons_ne_nil](declarations/cons-ne-nil.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](declarations/obj-eq-of-cons-eq-cons.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [heq_of_cons_eq_cons](declarations/heq-of-cons-eq-cons.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](declarations/hom-heq-of-cons-eq-cons.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [length](declarations/length.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_nil](declarations/length-nil.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_cons](declarations/length-cons.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_of_length_zero](declarations/eq-of-length-zero.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eq_nil_of_length_zero](declarations/eq-nil-of-length-zero.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [comp](declarations/comp.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [comp_cons](declarations/comp-cons.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comp_nil](declarations/comp-nil.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [nil_comp](declarations/nil-comp.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_comp](declarations/length-comp.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comp_inj](declarations/comp-inj.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comp_inj'](declarations/comp-inj-source-edition-2.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_injective_left](declarations/comp-injective-left.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [comp_injective_right](declarations/comp-injective-right.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_inj_left](declarations/comp-inj-left.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_inj_right](declarations/comp-inj-right.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [eq_toPath_comp_of_length_eq_succ](declarations/eq-topath-comp-of-length-eq-succ.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toList](declarations/tolist.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toList_comp](declarations/tolist-comp.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toList_chain_nonempty](declarations/tolist-chain-nonempty.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toList_injective](declarations/tolist-injective.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toList_inj](declarations/tolist-inj.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [mapPath](declarations/mappath.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mapPath_nil](declarations/mappath-nil.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mapPath_cons](declarations/mappath-cons.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mapPath_comp](declarations/mappath-comp.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mapPath_toPath](declarations/mappath-topath.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mapPath_id](declarations/mappath-id.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mapPath_comp_apply](declarations/mappath-comp-apply.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c75d9c0f98f0724efbb06fbae0c1c9e7d6dd07b45eff998c8534bb289d1a93d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

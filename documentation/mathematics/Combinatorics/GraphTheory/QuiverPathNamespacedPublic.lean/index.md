# Quiver Path Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8715831abe0a66215bbc4c85cfe4930ff7f04085`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/QuiverPathNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](declarations/path.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Hom.toPath](declarations/hom-topath.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [nil_ne_cons](declarations/nil-ne-cons.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cons_ne_nil](declarations/cons-ne-nil.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](declarations/obj-eq-of-cons-eq-cons.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [heq_of_cons_eq_cons](declarations/heq-of-cons-eq-cons.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](declarations/hom-heq-of-cons-eq-cons.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [length](declarations/length.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_nil](declarations/length-nil.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_cons](declarations/length-cons.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_of_length_zero](declarations/eq-of-length-zero.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eq_nil_of_length_zero](declarations/eq-nil-of-length-zero.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [length_toPath](declarations/length-topath.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [comp](declarations/comp.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comp_cons](declarations/comp-cons.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [comp_nil](declarations/comp-nil.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nil_comp](declarations/nil-comp.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [length_comp](declarations/length-comp.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comp_inj](declarations/comp-inj.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_inj'](declarations/comp-inj-source-edition-2.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [comp_injective_left](declarations/comp-injective-left.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_injective_right](declarations/comp-injective-right.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_inj_left](declarations/comp-inj-left.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [comp_inj_right](declarations/comp-inj-right.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [eq_toPath_comp_of_length_eq_succ](declarations/eq-topath-comp-of-length-eq-succ.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [length_ne_zero_iff_eq_comp](declarations/length-ne-zero-iff-eq-comp.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [length_ne_zero_iff_eq_cons](declarations/length-ne-zero-iff-eq-cons.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [comp_toPath_eq_cons](declarations/comp-topath-eq-cons.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [toList](declarations/tolist.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toList_comp](declarations/tolist-comp.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isChain_toList_nonempty](declarations/ischain-tolist-nonempty.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isChain_cons_toList_nonempty](declarations/ischain-cons-tolist-nonempty.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toList_injective](declarations/tolist-injective.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toList_inj](declarations/tolist-inj.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [BoundedPaths](declarations/boundedpaths.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instSubsingletonBddPaths](declarations/instsubsingletonbddpaths.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [decidableEqBddPathsZero](declarations/decidableeqbddpathszero.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [decidableEqBddPathsOfDecidableEq](declarations/decidableeqbddpathsofdecidableeq.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [decidableEqBoundedPaths](declarations/decidableeqboundedpaths.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instDecidableEq](declarations/instdecidableeq.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [Reachable](declarations/reachable.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Reachable.elim](declarations/reachable-elim.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Reachable.refl](declarations/reachable-refl.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Reachable.rfl](declarations/reachable-rfl.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Reachable.trans](declarations/reachable-trans.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Path.reachable](declarations/path-reachable.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Hom.reachable](declarations/hom-reachable.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [mapPath](declarations/mappath.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mapPath_nil](declarations/mappath-nil.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mapPath_cons](declarations/mappath-cons.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mapPath_comp](declarations/mappath-comp.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mapPath_toPath](declarations/mappath-topath.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mapPath_id](declarations/mappath-id.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mapPath_comp_apply](declarations/mappath-comp-apply.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=164aba65a9cf1e5a4cb262a4f7360e71a484b273126a964b76b3e88f6d262c18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantcb231e61aff506576a01b2d51a40530d7782442517eabba8dcdb6a4ed87ff257.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

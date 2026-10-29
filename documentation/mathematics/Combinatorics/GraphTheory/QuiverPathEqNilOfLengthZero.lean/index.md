# Quiver Path Eq Nil Of Length Zero

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant200c18fdd204e023975c4f986f7e557d7c95c3f7abef58ee8ede0e054c8854ef.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d268d8b7a9cd97a7c1e52c22421ceeff70e4df47`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/QuiverPathEqNilOfLengthZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](declarations/path.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Hom.toPath](declarations/hom-topath.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [nil_ne_cons](declarations/nil-ne-cons.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cons_ne_nil](declarations/cons-ne-nil.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](declarations/obj-eq-of-cons-eq-cons.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [heq_of_cons_eq_cons](declarations/heq-of-cons-eq-cons.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](declarations/hom-heq-of-cons-eq-cons.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [length](declarations/length.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_nil](declarations/length-nil.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_cons](declarations/length-cons.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_of_length_zero](declarations/eq-of-length-zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eq_nil_of_length_zero](declarations/eq-nil-of-length-zero.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [comp](declarations/comp.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [comp_cons](declarations/comp-cons.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comp_nil](declarations/comp-nil.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [nil_comp](declarations/nil-comp.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_comp](declarations/length-comp.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comp_inj](declarations/comp-inj-source-edition-2.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comp_inj'](declarations/comp-inj.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_injective_left](declarations/comp-injective-left.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [comp_injective_right](declarations/comp-injective-right.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_inj_left](declarations/comp-inj-left.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_inj_right](declarations/comp-inj-right.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [eq_toPath_comp_of_length_eq_succ](declarations/eq-topath-comp-of-length-eq-succ.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toList](declarations/tolist.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toList_comp](declarations/tolist-comp.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toList_chain_nonempty](declarations/tolist-chain-nonempty.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toList_injective](declarations/tolist-injective.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toList_inj](declarations/tolist-inj.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [mapPath](declarations/mappath.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mapPath_nil](declarations/mappath-nil.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mapPath_cons](declarations/mappath-cons.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mapPath_comp](declarations/mappath-comp.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mapPath_toPath](declarations/mappath-topath.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mapPath_id](declarations/mappath-id.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mapPath_comp_apply](declarations/mappath-comp-apply.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39dd2a466ac52cfd9561f118737a91b2ed21848b8f8c6275ad55e4a3f51ccf8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant200c18fdd204e023975c4f986f7e557d7c95c3f7abef58ee8ede0e054c8854ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

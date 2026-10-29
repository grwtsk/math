# Basic Basic Namespaced Public Lawful Functor

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6479972dd53301013629f0e4fad0e8e908216bb8a6da98192575d1fa1f70d6b4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96a1b06047a73bf0dc4a02e114301c9e33adec2b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasicBasicNamespacedPublicLawfulFunctor.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [monadLift_self](declarations/monadlift-self.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [LawfulFunctor](declarations/lawfulfunctor.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [id_map'](declarations/id-map.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Functor.map_map](declarations/functor-map-map.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Functor.map_unit](declarations/functor-map-unit.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [LawfulApplicative](declarations/lawfulapplicative.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pure_id_seq](declarations/pure-id-seq.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pure_seqRight](declarations/pure-seqright.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [seqLeft_pure](declarations/seqleft-pure.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [seqRight_pure_unit](declarations/seqright-pure-unit.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pure_unit_seqLeft](declarations/pure-unit-seqleft.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `class` | [LawfulMonad](declarations/lawfulmonad.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bind_pure](declarations/bind-pure.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_eq_pure_bind](declarations/map-eq-pure-bind.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [seq_eq_bind_map](declarations/seq-eq-bind-map.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [bind_congr](declarations/bind-congr.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bind_pure_unit](declarations/bind-pure-unit.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_congr](declarations/map-congr.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [seq_eq_bind](declarations/seq-eq-bind.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [seqRight_eq_bind](declarations/seqright-eq-bind.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [seqLeft_eq_bind](declarations/seqleft-eq-bind.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_bind](declarations/map-bind.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [bind_map_left](declarations/bind-map-left.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [LawfulMonad.map_pure'](declarations/lawfulmonad-map-pure.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [LawfulMonad.map_map](declarations/lawfulmonad-map-map.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [LawfulMonad.mk'](declarations/lawfulmonad-mk.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ext](declarations/ext.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [run_map](declarations/run-map.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [run_bind](declarations/run-bind.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [run_pure](declarations/run-pure.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pure_run](declarations/pure-run.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [run_seqRight](declarations/run-seqright.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [run_seqLeft](declarations/run-seqleft.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [run_seq](declarations/run-seq.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9432e1281fcf0d05d6b78d2ec28fd0e631cfb9ec77dff8580532ba680e7f37c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6479972dd53301013629f0e4fad0e8e908216bb8a6da98192575d1fa1f70d6b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

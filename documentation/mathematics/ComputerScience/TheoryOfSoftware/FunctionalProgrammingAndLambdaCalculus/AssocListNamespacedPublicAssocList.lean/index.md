# Assoc List Namespaced Public Assoc List

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9bd48a69b6893ef68c79c14efbab4b0129d83e005c1e672e2483332ac25a903b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4174006818e773bd5f0eae884af1ddf7fbed664f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AssocListNamespacedPublicAssocList.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AssocList](declarations/assoclist.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toList](declarations/tolist.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [empty_eq](declarations/empty-eq.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [isEmpty](declarations/isempty.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isEmpty_eq](declarations/isempty-eq.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [length](declarations/length.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [length_nil](declarations/length-nil.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [length_cons](declarations/length-cons.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_toList](declarations/length-tolist.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [foldlM](declarations/foldlm.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [foldlM_eq](declarations/foldlm-eq.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [foldl](declarations/foldl.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [foldl_eq](declarations/foldl-eq.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toListTR](declarations/tolisttr.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toList_eq_toListTR](declarations/tolist-eq-tolisttr.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [forM](declarations/form.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [forM_eq](declarations/form-eq.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mapKey](declarations/mapkey.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toList_mapKey](declarations/tolist-mapkey.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [length_mapKey](declarations/length-mapkey.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mapVal](declarations/mapval.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toList_mapVal](declarations/tolist-mapval.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [length_mapVal](declarations/length-mapval.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [findEntryP?](declarations/findentryp.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [findEntryP?_eq](declarations/findentryp-eq.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [findEntry?](declarations/findentry.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [findEntry?_eq](declarations/findentry-eq.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [find?](declarations/find.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [find?_eq_findEntry?](declarations/find-eq-findentry.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [find?_eq](declarations/find-eq.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [any](declarations/any.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [any_eq](declarations/any-eq.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [all](declarations/all.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [all_eq](declarations/all-eq.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [All](declarations/all-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [contains](declarations/contains.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [contains_eq](declarations/contains-eq.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [replace](declarations/replace.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toList_replace](declarations/tolist-replace.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [length_replace](declarations/length-replace.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [eraseP](declarations/erasep.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [toList_eraseP](declarations/tolist-erasep.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [erase](declarations/erase.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [toList_erase](declarations/tolist-erase.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [modify](declarations/modify.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toList_modify](declarations/tolist-modify.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [length_modify](declarations/length-modify.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [forIn](declarations/forin.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [forIn_eq](declarations/forin-eq.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [pop?](declarations/pop.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [Assoc List Namespaced Public Assoc List](declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-as.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Assoc List Namespaced Public Assoc List](declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-as-source-edition-2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [toList_toAssocList](declarations/tolist-toassoclist.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Assoc List Namespaced Public Assoc List](declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-as-source-edition-3.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [beq](declarations/beq.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [beq_nil₂](declarations/beq-nil.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [beq_nil_cons](declarations/beq-nil-cons.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [beq_cons_nil](declarations/beq-cons-nil.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [beq_cons₂](declarations/beq-cons.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [beq_eq](declarations/beq-eq.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba6e151b2d6395d4ef1ca97a05dca3909a95e758a2481f6506290de67a0d8612 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssocList/Variant9bd48a69b6893ef68c79c14efbab4b0129d83e005c1e672e2483332ac25a903b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

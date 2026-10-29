# Context Free Grammar Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant4d616c236beb28d0a47ce844cb86d8bb7ab30f2008d392cd3d3f72d0be7466cb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `292e83219e1367742414da9d4a1a71979113f44b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ContextFreeGrammarNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ContextFreeRule](declarations/contextfreerule.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ContextFreeGrammar](declarations/contextfreegrammar.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Rewrites](declarations/rewrites.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [Rewrites.exists_parts](declarations/rewrites-exists-parts.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [Rewrites.input_output](declarations/rewrites-input-output.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [rewrites_of_exists_parts](declarations/rewrites-of-exists-parts.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rewrites_iff](declarations/rewrites-iff.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [Rewrites.nonterminal_input_mem](declarations/rewrites-nonterminal-input-mem.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [Rewrites.append_left](declarations/rewrites-append-left.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [Rewrites.append_right](declarations/rewrites-append-right.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Produces](declarations/produces.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [Derives](declarations/derives.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Generates](declarations/generates.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [language](declarations/language.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mem_language_iff](declarations/mem-language-iff.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [Derives.refl](declarations/derives-refl.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Produces.single](declarations/produces-single.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Derives.trans](declarations/derives-trans.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Derives.trans_produces](declarations/derives-trans-produces.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Produces.trans_derives](declarations/produces-trans-derives.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Derives.eq_or_head](declarations/derives-eq-or-head.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [derives_iff_eq_or_head](declarations/derives-iff-eq-or-head.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Derives.eq_or_tail](declarations/derives-eq-or-tail.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [derives_iff_eq_or_tail](declarations/derives-iff-eq-or-tail.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Produces.append_left](declarations/produces-append-left.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [Produces.append_right](declarations/produces-append-right.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Derives.append_left](declarations/derives-append-left.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Derives.append_right](declarations/derives-append-right.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Produces.exists_nonterminal_input_mem](declarations/produces-exists-nonterminal-input-mem.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [derives_nonterminal](declarations/derives-nonterminal.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [language_eq_zero_of_forall_input_ne_initial](declarations/language-eq-zero-of-forall-input-ne-initial.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Language.IsContextFree](declarations/language-iscontextfree.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [reverse](declarations/reverse-source-edition-2.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [reverse_reverse](declarations/reverse-reverse.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [reverse_comp_reverse](declarations/reverse-comp-reverse.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [reverse_involutive](declarations/reverse-involutive.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [reverse_bijective](declarations/reverse-bijective-source-edition-2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [reverse_injective](declarations/reverse-injective-source-edition-2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [reverse_surjective](declarations/reverse-surjective-source-edition-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Rewrites.reverse](declarations/rewrites-reverse-source-edition-2.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [rewrites_reverse](declarations/rewrites-reverse.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [rewrites_reverse_comm](declarations/rewrites-reverse-comm.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [reverse](declarations/reverse.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [reverse_reverse](declarations/reverse-reverse-source-edition-2.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [reverse_involutive](declarations/reverse-involutive-source-edition-2.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [reverse_bijective](declarations/reverse-bijective.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [reverse_injective](declarations/reverse-injective.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [reverse_surjective](declarations/reverse-surjective.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [produces_reverse](declarations/produces-reverse.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [produces_reverse_comm](declarations/produces-reverse-comm.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Derives.reverse](declarations/derives-reverse-source-edition-2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [derives_reverse](declarations/derives-reverse.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [derives_reverse_comm](declarations/derives-reverse-comm.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [generates_reverse](declarations/generates-reverse.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [generates_reverse_comm](declarations/generates-reverse-comm.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [language_reverse](declarations/language-reverse.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Language.IsContextFree.reverse](declarations/language-iscontextfree-reverse.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1388bc45db457a63c48b38afdcc8e85611e9b40e8a2f5dada250e85736d2b035 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant4d616c236beb28d0a47ce844cb86d8bb7ab30f2008d392cd3d3f72d0be7466cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

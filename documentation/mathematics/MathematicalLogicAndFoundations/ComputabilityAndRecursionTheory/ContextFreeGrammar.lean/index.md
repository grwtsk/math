# Context Free Grammar

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant7f7ad91a8caf6dbea2a045b8e4732173c85795cce8d42a5908352596a294d2ce.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d08aba748016c84ba00098aad2add342e23fc7a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ContextFreeGrammar.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ContextFreeRule](declarations/contextfreerule.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ContextFreeGrammar](declarations/contextfreegrammar.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Rewrites](declarations/rewrites.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [Rewrites.exists_parts](declarations/rewrites-exists-parts.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [Rewrites.input_output](declarations/rewrites-input-output.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [rewrites_of_exists_parts](declarations/rewrites-of-exists-parts.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rewrites_iff](declarations/rewrites-iff.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [Rewrites.nonterminal_input_mem](declarations/rewrites-nonterminal-input-mem.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [Rewrites.append_left](declarations/rewrites-append-left.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [Rewrites.append_right](declarations/rewrites-append-right.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Produces](declarations/produces.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [Derives](declarations/derives.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Generates](declarations/generates.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [language](declarations/language.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mem_language_iff](declarations/mem-language-iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [Derives.refl](declarations/derives-refl.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Produces.single](declarations/produces-single.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Derives.trans](declarations/derives-trans.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Derives.trans_produces](declarations/derives-trans-produces.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Produces.trans_derives](declarations/produces-trans-derives.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Derives.eq_or_head](declarations/derives-eq-or-head.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [derives_iff_eq_or_head](declarations/derives-iff-eq-or-head.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Derives.eq_or_tail](declarations/derives-eq-or-tail.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [derives_iff_eq_or_tail](declarations/derives-iff-eq-or-tail.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Produces.append_left](declarations/produces-append-left.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [Produces.append_right](declarations/produces-append-right.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Derives.append_left](declarations/derives-append-left.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Derives.append_right](declarations/derives-append-right.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Produces.exists_nonterminal_input_mem](declarations/produces-exists-nonterminal-input-mem.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [derives_nonterminal](declarations/derives-nonterminal.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [language_eq_zero_of_forall_input_ne_initial](declarations/language-eq-zero-of-forall-input-ne-initial.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Language.IsContextFree](declarations/language-iscontextfree.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [reverse](declarations/reverse-source-edition-2.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [reverse_reverse](declarations/reverse-reverse.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [reverse_comp_reverse](declarations/reverse-comp-reverse.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [reverse_involutive](declarations/reverse-involutive-source-edition-2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [reverse_bijective](declarations/reverse-bijective-source-edition-2.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [reverse_injective](declarations/reverse-injective.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [reverse_surjective](declarations/reverse-surjective.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Rewrites.reverse](declarations/rewrites-reverse-source-edition-2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [rewrites_reverse](declarations/rewrites-reverse.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [rewrites_reverse_comm](declarations/rewrites-reverse-comm.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [reverse](declarations/reverse.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [reverse_reverse](declarations/reverse-reverse-source-edition-2.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [reverse_involutive](declarations/reverse-involutive.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [reverse_bijective](declarations/reverse-bijective.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [reverse_injective](declarations/reverse-injective-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [reverse_surjective](declarations/reverse-surjective-source-edition-2.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [produces_reverse](declarations/produces-reverse.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [produces_reverse_comm](declarations/produces-reverse-comm.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Derives.reverse](declarations/derives-reverse.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [derives_reverse](declarations/derives-reverse-source-edition-2.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [derives_reverse_comm](declarations/derives-reverse-comm.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [generates_reverse](declarations/generates-reverse.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [generates_reverse_comm](declarations/generates-reverse-comm.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [language_reverse](declarations/language-reverse.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Language.IsContextFree.reverse](declarations/language-iscontextfree-reverse.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a577f0e6cc0eac7ba64bce6112c775f3b3779cecc4b4763215fe2525fb4983f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant7f7ad91a8caf6dbea2a045b8e4732173c85795cce8d42a5908352596a294d2ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

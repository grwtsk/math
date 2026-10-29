# Independent WNNamespaced Edition3

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c659de0788c489a89b6e5551d7d06a33019e8f4d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Arrow](declarations/arrow.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Arrow.expression](declarations/arrow-expression.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [decodeArrow](declarations/decodearrow.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Arrow.grammar](declarations/arrow-grammar.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [decode_expression](declarations/decode-expression.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [decode_rename](declarations/decode-rename.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [wn_rename](declarations/wn-rename.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [wn_prepend](declarations/wn-prepend.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [wn_lam](declarations/wn-lam.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [wn_pi](declarations/wn-pi.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [neutral_rename](declarations/neutral-rename.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [neutral_step](declarations/neutral-step.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [neutral_reduces](declarations/neutral-reduces.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [wn_neutral_app](declarations/wn-neutral-app.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Reducible](declarations/reducible.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reducible_wn](declarations/reducible-wn.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reducible_rename](declarations/reducible-rename.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [reducible_prepend](declarations/reducible-prepend.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [reducible_neutral](declarations/reducible-neutral.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [reducible_var](declarations/reducible-var.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [ArrowTyping](declarations/arrowtyping.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ReducibleEnvironment](declarations/reducibleenvironment.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [reducible_environment_lift](declarations/reducible-environment-lift.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ArrowTyping.reducible](declarations/arrowtyping-reducible.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ArrowTyping.weakly_normalizing](declarations/arrowtyping-weakly-normalizing.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [BaseArrowType.ne_kind](declarations/basearrowtype-ne-kind.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [BaseArrowType.sort_unique](declarations/basearrowtype-sort-unique.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lookup_sorted](declarations/lookup-sorted.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lookup_decoded](declarations/lookup-decoded.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sorted_convert_to_grammar](declarations/sorted-convert-to-grammar.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [arrow_typing](declarations/arrow-typing.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [typed_weakly_normalizing](declarations/typed-weakly-normalizing.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [monomorphic_arrow_weakly_normalizing](declarations/monomorphic-arrow-weakly-normalizing.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd4e2361faeb943ee5ec5513b09e46c793c1f57fa3bbc443947810b9dd1e01d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

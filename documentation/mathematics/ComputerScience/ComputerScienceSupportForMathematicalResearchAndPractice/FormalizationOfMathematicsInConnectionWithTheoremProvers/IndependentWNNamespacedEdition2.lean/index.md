# Independent WNNamespaced Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant3194b16db1729a403aaeb5e0c3ebc8f3fa0dc074d9f6f3617ba568151a53cbc5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d3ee31d5743e24ed1d80770ea02885282ea1425`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IndependentWNNamespacedEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Arrow](declarations/arrow.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Arrow.expression](declarations/arrow-expression.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [decodeArrow](declarations/decodearrow.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Arrow.grammar](declarations/arrow-grammar.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [decode_expression](declarations/decode-expression.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [decode_rename](declarations/decode-rename.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [wn_rename](declarations/wn-rename.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [wn_prepend](declarations/wn-prepend.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [wn_lam](declarations/wn-lam.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [wn_pi](declarations/wn-pi.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [neutral_rename](declarations/neutral-rename.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [neutral_step](declarations/neutral-step.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [neutral_reduces](declarations/neutral-reduces.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [wn_neutral_app](declarations/wn-neutral-app.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Reducible](declarations/reducible.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reducible_wn](declarations/reducible-wn.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reducible_rename](declarations/reducible-rename.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [reducible_prepend](declarations/reducible-prepend.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [reducible_neutral](declarations/reducible-neutral.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [reducible_var](declarations/reducible-var.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [ArrowTyping](declarations/arrowtyping.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ReducibleEnvironment](declarations/reducibleenvironment.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [reducible_environment_lift](declarations/reducible-environment-lift.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ArrowTyping.reducible](declarations/arrowtyping-reducible.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ArrowTyping.weakly_normalizing](declarations/arrowtyping-weakly-normalizing.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [BaseArrowType.ne_kind](declarations/basearrowtype-ne-kind.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [BaseArrowType.sort_unique](declarations/basearrowtype-sort-unique.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lookup_sorted](declarations/lookup-sorted.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lookup_decoded](declarations/lookup-decoded.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sorted_convert_to_grammar](declarations/sorted-convert-to-grammar.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [arrow_typing](declarations/arrow-typing.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [typed_weakly_normalizing](declarations/typed-weakly-normalizing.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [monomorphic_arrow_weakly_normalizing](declarations/monomorphic-arrow-weakly-normalizing.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7c0c13cd1f9ed836af7d01450b627bd51d425c052b45cd42f3ba24204915e53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant3194b16db1729a403aaeb5e0c3ebc8f3fa0dc074d9f6f3617ba568151a53cbc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Core Namespaced Spin Phase

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2c2faca1da6046319348a7ed92327a81a043181aa329a41e90e152b9828d1f52.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acb644e123a15f2f066039b81054eee18cde4f3a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SpinPhase](declarations/spinphase.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [SpinPhase.weight](declarations/spinphase-weight.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [SpinPhase.weight_null](declarations/spinphase-weight-null.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [SpinPhase.weight_unit](declarations/spinphase-weight-unit.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [SpinPhase.weight_zero](declarations/spinphase-weight-zero.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [SpinPhase.weight_twist](declarations/spinphase-weight-twist.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [FormalMathString](declarations/formalmathstring.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [length](declarations/length.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [empty](declarations/empty.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [singleton](declarations/singleton.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [append](declarations/append.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [length_empty](declarations/length-empty.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [length_singleton](declarations/length-singleton.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [length_append](declarations/length-append.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [append_assoc](declarations/append-assoc.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [empty_append](declarations/empty-append.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [append_empty](declarations/append-empty.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [induction_on_symbols](declarations/induction-on-symbols.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [MacroDictionary](declarations/macrodictionary.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [macroCount](declarations/macrocount.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [hasNoMacros](declarations/hasnomacros.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [macroCount_eq_zero_of_hasNoMacros](declarations/macrocount-eq-zero-of-hasnomacros.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [CompressedSymbol](declarations/compressedsymbol.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [CompressedString](declarations/compressedstring.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [lookupMacroList](declarations/lookupmacrolist.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [lookupMacro](declarations/lookupmacro.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [unwrapSymbol](declarations/unwrapsymbol.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [unwrap](declarations/unwrap.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [unwrap_nil](declarations/unwrap-nil.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [unwrap_cons](declarations/unwrap-cons.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unwrap_append](declarations/unwrap-append.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [expandedLength](declarations/expandedlength.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [expandedLength_nil](declarations/expandedlength-nil.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [expandedLength_append](declarations/expandedlength-append.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41841283ac1a124394fbf6ac465a9dd9f679227f39b9d61fceb4b1fb47b3beca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2c2faca1da6046319348a7ed92327a81a043181aa329a41e90e152b9828d1f52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

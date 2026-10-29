# Core Spin Phase

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `594b5c8265590e6db6302cf33220b326b96a15ce`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SpinPhase](declarations/spinphase.md) | 11 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [SpinPhase.weight](declarations/spinphase-weight.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [SpinPhase.weight_null](declarations/spinphase-weight-null.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [SpinPhase.weight_unit](declarations/spinphase-weight-unit.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [SpinPhase.weight_zero](declarations/spinphase-weight-zero.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [SpinPhase.weight_twist](declarations/spinphase-weight-twist.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [FormalMathString](declarations/formalmathstring.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [length](declarations/length.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [empty](declarations/empty.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [singleton](declarations/singleton.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [append](declarations/append.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [length_empty](declarations/length-empty.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [length_singleton](declarations/length-singleton.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [length_append](declarations/length-append.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [append_assoc](declarations/append-assoc.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [empty_append](declarations/empty-append.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [append_empty](declarations/append-empty.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [induction_on_symbols](declarations/induction-on-symbols.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [MacroDictionary](declarations/macrodictionary.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [macroCount](declarations/macrocount.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [hasNoMacros](declarations/hasnomacros.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [macroCount_eq_zero_of_hasNoMacros](declarations/macrocount-eq-zero-of-hasnomacros.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [CompressedSymbol](declarations/compressedsymbol.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [CompressedString](declarations/compressedstring.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [lookupMacroList](declarations/lookupmacrolist.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [lookupMacro](declarations/lookupmacro.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [unwrapSymbol](declarations/unwrapsymbol.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [unwrap](declarations/unwrap.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [unwrap_nil](declarations/unwrap-nil.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [unwrap_cons](declarations/unwrap-cons.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unwrap_append](declarations/unwrap-append.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [expandedLength](declarations/expandedlength.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [expandedLength_nil](declarations/expandedlength-nil.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [expandedLength_append](declarations/expandedlength-append.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2c7179dd8a7e1896b21a6fccffac647e0de5222d2baa6b1b399f0e69ac63f50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

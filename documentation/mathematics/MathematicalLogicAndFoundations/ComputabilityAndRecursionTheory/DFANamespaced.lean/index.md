# DFANamespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddce8cb42ee91c7093d0ee6b461bc77f5456189c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFANamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DFA](declarations/dfa.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evalFrom](declarations/evalfrom.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [eval](declarations/eval.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eval_nil](declarations/eval-nil.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eval_singleton](declarations/eval-singleton.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evalFrom_of_append](declarations/evalfrom-of-append.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [acceptsFrom](declarations/acceptsfrom.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_acceptsFrom](declarations/mem-acceptsfrom.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [accepts](declarations/accepts.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_accepts](declarations/mem-accepts.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [evalFrom_split](declarations/evalfrom-split.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [evalFrom_of_pow](declarations/evalfrom-of-pow.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pumping_lemma](declarations/pumping-lemma.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [comap](declarations/comap.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comap_id](declarations/comap-id.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [evalFrom_comap](declarations/evalfrom-comap.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eval_comap](declarations/eval-comap.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [accepts_comap](declarations/accepts-comap.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [reindex](declarations/reindex.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [reindex_refl](declarations/reindex-refl.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [symm_reindex](declarations/symm-reindex.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [evalFrom_reindex](declarations/evalfrom-reindex.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eval_reindex](declarations/eval-reindex.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [accepts_reindex](declarations/accepts-reindex.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [comap_reindex](declarations/comap-reindex.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Language.IsRegular](declarations/language-isregular.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [Language.isRegular_iff.helper.](declarations/language-isregular-iff-helper.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Language.isRegular_iff](declarations/language-isregular-iff.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d21c2f8abd33b1481d64fac816b393e78480c6b693abc0075fa25daa1b020ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

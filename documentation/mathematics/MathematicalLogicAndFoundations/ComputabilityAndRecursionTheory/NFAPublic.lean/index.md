# NFAPublic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variant42d15719f191c3125a1ec01be3f655471469df419420fdb76ad87ac1b342ab02.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a4b9fb9d495f0599851f65b5faf0e0c92457bfe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/NFAPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NFA](declarations/nfa.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [stepSet](declarations/stepset.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_stepSet](declarations/mem-stepset.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [stepSet_empty](declarations/stepset-empty.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [stepSet_singleton](declarations/stepset-singleton.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [stepSet_union](declarations/stepset-union.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalFrom](declarations/evalfrom.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evalFrom_cons](declarations/evalfrom-cons.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFrom_append](declarations/evalfrom-append.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evalFrom_union](declarations/evalfrom-union.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evalFrom_iUnion](declarations/evalfrom-iunion-source-edition-2.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [evalFrom_iUnion₂](declarations/evalfrom-iunion.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [evalFrom_eq_biUnion_singleton](declarations/evalfrom-eq-biunion-singleton.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [acceptsFrom](declarations/acceptsfrom.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_acceptsFrom](declarations/mem-acceptsfrom.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nil_mem_acceptsFrom](declarations/nil-mem-acceptsfrom.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cons_mem_acceptsFrom](declarations/cons-mem-acceptsfrom.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cons_preimage_acceptsFrom](declarations/cons-preimage-acceptsfrom.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [append_mem_acceptsFrom](declarations/append-mem-acceptsfrom.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [append_preimage_acceptsFrom](declarations/append-preimage-acceptsfrom.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [acceptsFrom_union](declarations/acceptsfrom-union.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [acceptsFrom_iUnion](declarations/acceptsfrom-iunion.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [acceptsFrom_iUnion₂](declarations/acceptsfrom-iunion-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_acceptsFrom_sep_fact](declarations/mem-acceptsfrom-sep-fact.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [eval](declarations/eval.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_nil](declarations/eval-nil.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eval_singleton](declarations/eval-singleton.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [accepts](declarations/accepts.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_accepts](declarations/mem-accepts.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [accepts_eq_acceptsFrom_start](declarations/accepts-eq-acceptsfrom-start.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `inductive` | [Path](declarations/path.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Path.supp](declarations/path-supp.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_evalFrom_iff_nonempty_path](declarations/mem-evalfrom-iff-nonempty-path.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [accepts_iff_exists_path](declarations/accepts-iff-exists-path.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toDFA](declarations/todfa.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toDFA_correct](declarations/todfa-correct.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pumping_lemma](declarations/pumping-lemma.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [toNFA](declarations/tonfa.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [toNFA_correct](declarations/tonfa-correct.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [reverse](declarations/reverse.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [reverse_reverse](declarations/reverse-reverse.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [disjoint_stepSet_reverse](declarations/disjoint-stepset-reverse.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [disjoint_evalFrom_reverse](declarations/disjoint-evalfrom-reverse.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [disjoint_evalFrom_reverse_iff](declarations/disjoint-evalfrom-reverse-iff.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_accepts_reverse](declarations/mem-accepts-reverse.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IsRegular.reverse](declarations/isregular-reverse.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsRegular.of_reverse](declarations/isregular-of-reverse.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isRegular_reverse_iff](declarations/isregular-reverse-iff.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc6219681ceda1cda055ce4c58a4fe33ee23f13b5199b3f8d1523c32b7035ac6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variant42d15719f191c3125a1ec01be3f655471469df419420fdb76ad87ac1b342ab02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

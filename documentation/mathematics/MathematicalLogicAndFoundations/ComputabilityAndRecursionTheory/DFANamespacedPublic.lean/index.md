# DFANamespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99a7648a0831527181ca64f13ca2d204feaf634a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFANamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DFA](declarations/dfa.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evalFrom](declarations/evalfrom.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [evalFrom_cons](declarations/evalfrom-cons.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [eval](declarations/eval.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eval_nil](declarations/eval-nil.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_singleton](declarations/eval-singleton.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFrom_of_append](declarations/evalfrom-of-append.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [acceptsFrom](declarations/acceptsfrom.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_acceptsFrom](declarations/mem-acceptsfrom.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [accepts](declarations/accepts.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_accepts](declarations/mem-accepts.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [evalFrom_split](declarations/evalfrom-split.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [evalFrom_of_pow](declarations/evalfrom-of-pow.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pumping_lemma](declarations/pumping-lemma.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [comap](declarations/comap.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comap_id](declarations/comap-id.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [evalFrom_comap](declarations/evalfrom-comap.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval_comap](declarations/eval-comap.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [accepts_comap](declarations/accepts-comap.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [reindex](declarations/reindex.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [reindex_refl](declarations/reindex-refl.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [symm_reindex](declarations/symm-reindex.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [evalFrom_reindex](declarations/evalfrom-reindex.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_reindex](declarations/eval-reindex.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [accepts_reindex](declarations/accepts-reindex.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comap_reindex](declarations/comap-reindex.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [compl_def](declarations/compl-def.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [acceptsFrom_compl](declarations/acceptsfrom-compl.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [accepts_compl](declarations/accepts-compl.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [union](declarations/union.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [acceptsFrom_union](declarations/acceptsfrom-union.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [accepts_union](declarations/accepts-union.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [inter](declarations/inter.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [acceptsFrom_inter](declarations/acceptsfrom-inter.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [accepts_inter](declarations/accepts-inter.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [IsRegular](declarations/isregular.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [isRegular_iff.helper.](declarations/isregular-iff-helper.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isRegular_iff](declarations/isregular-iff.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsRegular.compl](declarations/isregular-compl-source-edition-2.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsRegular.of_compl](declarations/isregular-of-compl.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsRegular_compl](declarations/isregular-compl.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsRegular.add](declarations/isregular-add.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsRegular.inf](declarations/isregular-inf.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04121821bb05b9da7ea6422ce88a82f1197fe76b11337754f044a5fd322ab325 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

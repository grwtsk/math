# DFAPublic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5eb9c44511ab077418efc2ed7a9433bb1462e2ca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DFA](declarations/dfa.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evalFrom](declarations/evalfrom.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [evalFrom_cons](declarations/evalfrom-cons.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [eval](declarations/eval.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eval_nil](declarations/eval-nil.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_singleton](declarations/eval-singleton.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFrom_of_append](declarations/evalfrom-of-append.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [acceptsFrom](declarations/acceptsfrom.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_acceptsFrom](declarations/mem-acceptsfrom.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [accepts](declarations/accepts.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_accepts](declarations/mem-accepts.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [evalFrom_split](declarations/evalfrom-split.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [evalFrom_of_pow](declarations/evalfrom-of-pow.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pumping_lemma](declarations/pumping-lemma.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [comap](declarations/comap.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comap_id](declarations/comap-id.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [evalFrom_comap](declarations/evalfrom-comap.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval_comap](declarations/eval-comap.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [accepts_comap](declarations/accepts-comap.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [reindex](declarations/reindex.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [reindex_refl](declarations/reindex-refl.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [symm_reindex](declarations/symm-reindex.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [evalFrom_reindex](declarations/evalfrom-reindex.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_reindex](declarations/eval-reindex.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [accepts_reindex](declarations/accepts-reindex.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comap_reindex](declarations/comap-reindex.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [compl_def](declarations/compl-def.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [acceptsFrom_compl](declarations/acceptsfrom-compl.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [accepts_compl](declarations/accepts-compl.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [union](declarations/union.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [acceptsFrom_union](declarations/acceptsfrom-union.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [accepts_union](declarations/accepts-union.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [inter](declarations/inter.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [acceptsFrom_inter](declarations/acceptsfrom-inter.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [accepts_inter](declarations/accepts-inter.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [IsRegular](declarations/isregular.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [isRegular_iff.helper.](declarations/isregular-iff-helper.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isRegular_iff](declarations/isregular-iff.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsRegular.compl](declarations/isregular-compl-source-edition-2.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsRegular.of_compl](declarations/isregular-of-compl.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsRegular_compl](declarations/isregular-compl.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsRegular.add](declarations/isregular-add.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsRegular.inf](declarations/isregular-inf.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e10e1d53a60aa8ea2327ec158c5b4b853b1826e2ea69a80334ad91287477ad23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

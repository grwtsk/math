# Turing Machine Computable Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Computable/Variant6bd3c9c30288a0e13e4df79f97549858807e3fee0353a598ca581560cb021d95.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd5f3259c7cfb2c1fd8b2c3e8caf9980bebb5285`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineComputableNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [FinTM2](declarations/fintm2.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [decidableEqK](declarations/decidableeqk.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [inhabitedσ](declarations/inhabited.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Stmt](declarations/stmt.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [inhabitedStmt](declarations/inhabitedstmt.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Cfg](declarations/cfg.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [inhabitedCfg](declarations/inhabitedcfg.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [step](declarations/step.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [initList](declarations/initlist.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [haltList](declarations/haltlist.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [TM2Outputs](declarations/tm2outputs.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [TM2OutputsInTime](declarations/tm2outputsintime.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [TM2OutputsInTime.toTM2Outputs](declarations/tm2outputsintime-totm2outputs.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [TM2ComputableAux](declarations/tm2computableaux.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [TM2Computable](declarations/tm2computable.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [TM2ComputableInTime](declarations/tm2computableintime.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [TM2ComputableInPolyTime](declarations/tm2computableinpolytime.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [TM2ComputableInTime.toTM2Computable](declarations/tm2computableintime-totm2computable.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [TM2ComputableInPolyTime.toTM2ComputableInTime](declarations/tm2computableinpolytime-totm2computableintime.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [idComputer](declarations/idcomputer.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [inhabitedFinTM2](declarations/inhabitedfintm2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [idComputableInPolyTime](declarations/idcomputableinpolytime.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [inhabitedTM2ComputableInPolyTime](declarations/inhabitedtm2computableinpolytime.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [inhabitedTM2OutputsInTime](declarations/inhabitedtm2outputsintime.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [inhabitedTM2Outputs](declarations/inhabitedtm2outputs.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [inhabitedEvalsToInTime](declarations/inhabitedevalstointime.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [inhabitedTM2EvalsTo](declarations/inhabitedtm2evalsto.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [idComputableInTime](declarations/idcomputableintime.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [inhabitedTM2ComputableInTime](declarations/inhabitedtm2computableintime.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [idComputable](declarations/idcomputable.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [inhabitedTM2Computable](declarations/inhabitedtm2computable.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [inhabitedTM2ComputableAux](declarations/inhabitedtm2computableaux.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=722035587321076784371f66de400be71a2650a5087b27b5adeac501cff94b79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Computable/Variant6bd3c9c30288a0e13e4df79f97549858807e3fee0353a598ca581560cb021d95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

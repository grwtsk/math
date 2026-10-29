# TMComputable Namespaced Aligned

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75e0b611a992986ee8abc6a43e931c3d756138e4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMComputableNamespacedAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [FinTM2](declarations/fintm2.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [decidableEqK](declarations/decidableeqk.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [inhabitedσ](declarations/inhabited.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Stmt](declarations/stmt.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [inhabitedStmt](declarations/inhabitedstmt.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Cfg](declarations/cfg.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [inhabitedCfg](declarations/inhabitedcfg.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [step](declarations/step.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [initList](declarations/initlist.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [haltList](declarations/haltlist.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [EvalsTo](declarations/evalsto.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [EvalsToInTime](declarations/evalstointime.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [EvalsTo.refl](declarations/evalsto-refl.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [EvalsTo.trans](declarations/evalsto-trans.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [EvalsToInTime.refl](declarations/evalstointime-refl.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [EvalsToInTime.trans](declarations/evalstointime-trans.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [TM2Outputs](declarations/tm2outputs.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [TM2OutputsInTime](declarations/tm2outputsintime.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [TM2OutputsInTime.toTM2Outputs](declarations/tm2outputsintime-totm2outputs.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [TM2ComputableAux](declarations/tm2computableaux.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [TM2Computable](declarations/tm2computable.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [TM2ComputableInTime](declarations/tm2computableintime.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [TM2ComputableInPolyTime](declarations/tm2computableinpolytime.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [TM2ComputableInTime.toTM2Computable](declarations/tm2computableintime-totm2computable.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [TM2ComputableInPolyTime.toTM2ComputableInTime](declarations/tm2computableinpolytime-totm2computableintime.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [idComputer](declarations/idcomputer.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [inhabitedFinTM2](declarations/inhabitedfintm2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [idComputableInPolyTime](declarations/idcomputableinpolytime.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [inhabitedTM2ComputableInPolyTime](declarations/inhabitedtm2computableinpolytime.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [inhabitedTM2OutputsInTime](declarations/inhabitedtm2outputsintime.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [inhabitedTM2Outputs](declarations/inhabitedtm2outputs.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [inhabitedEvalsToInTime](declarations/inhabitedevalstointime.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [inhabitedTM2EvalsTo](declarations/inhabitedtm2evalsto.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [idComputableInTime](declarations/idcomputableintime.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [inhabitedTM2ComputableInTime](declarations/inhabitedtm2computableintime.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [idComputable](declarations/idcomputable.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [inhabitedTM2Computable](declarations/inhabitedtm2computable.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [inhabitedTM2ComputableAux](declarations/inhabitedtm2computableaux.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=709d5a5529325f7de316cf112821cd704e8ee3045270007ce548bb57493d6b02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

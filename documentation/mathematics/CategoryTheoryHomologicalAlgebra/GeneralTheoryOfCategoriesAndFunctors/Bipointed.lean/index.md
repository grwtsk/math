# Bipointed

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant82ad2bd092906b4e43956d7855e143f7400d6ab8b875f7dc287faaa56e88f881.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81bff7c80315c0983eeb306e3605664ccca51769`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Bipointed](declarations/bipointed.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [of](declarations/of.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_of](declarations/coe-of.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Hom](declarations/hom.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [id](declarations/id.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [comp](declarations/comp.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [largeCategory](declarations/largecategory.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [HomSubtype](declarations/homsubtype.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [hasForget](declarations/hasforget.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [swap](declarations/swap.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [swapEquiv](declarations/swapequiv.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [swapEquiv_symm](declarations/swapequiv-symm.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [bipointedToPointedFst](declarations/bipointedtopointedfst.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [bipointedToPointedSnd](declarations/bipointedtopointedsnd.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bipointedToPointedFst_comp_forget](declarations/bipointedtopointedfst-comp-forget.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [bipointedToPointedSnd_comp_forget](declarations/bipointedtopointedsnd-comp-forget.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [swap_comp_bipointedToPointedFst](declarations/swap-comp-bipointedtopointedfst.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [swap_comp_bipointedToPointedSnd](declarations/swap-comp-bipointedtopointedsnd.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [pointedToBipointed](declarations/pointedtobipointed.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [pointedToBipointedFst](declarations/pointedtobipointedfst.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [pointedToBipointedSnd](declarations/pointedtobipointedsnd.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [pointedToBipointedFst_comp_swap](declarations/pointedtobipointedfst-comp-swap.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [pointedToBipointedSnd_comp_swap](declarations/pointedtobipointedsnd-comp-swap.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [pointedToBipointedCompBipointedToPointedFst](declarations/pointedtobipointedcompbipointedtopointedfst.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [pointedToBipointedCompBipointedToPointedSnd](declarations/pointedtobipointedcompbipointedtopointedsnd.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [pointedToBipointedFstBipointedToPointedFstAdjunction](declarations/pointedtobipointedfstbipointedtopointedfstadjunction.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [pointedToBipointedSndBipointedToPointedSndAdjunction](declarations/pointedtobipointedsndbipointedtopointedsndadjunction.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b86625cda931980cbe733a7d6eef87164718e82e5b654420e6faeff405e56a46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant82ad2bd092906b4e43956d7855e143f7400d6ab8b875f7dc287faaa56e88f881.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

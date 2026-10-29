# Basic Basic Namespaced Edition9

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33f3a6031d0765723975303cb815ab9b9180f9e2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedEdition9.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](declarations/expr.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [liftRen](declarations/liftren.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [rename](declarations/rename.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [liftSub](declarations/liftsub.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [subst](declarations/subst-source-edition-2.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [single](declarations/single.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [instantiate](declarations/instantiate.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Specification](declarations/specification.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `axioms` | [(anonymous)](declarations/axioms.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [Beta](declarations/beta.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Converts](declarations/converts.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Normal](declarations/normal.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [WeaklyNormalizing](declarations/weaklynormalizing.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [StronglyNormalizing](declarations/stronglynormalizing.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `inductive` | [HasType](declarations/hastype.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [ValidContext](declarations/validcontext.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Legal](declarations/legal.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [SystemWeaklyNormalizing](declarations/systemweaklynormalizing.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [SystemStronglyNormalizing](declarations/systemstronglynormalizing.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [valid](declarations/valid.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [liftRen_zero](declarations/liftren-zero.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [liftRen_succ](declarations/liftren-succ.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [liftRen_id](declarations/liftren-id.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [liftRen_comp](declarations/liftren-comp.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rename_id](declarations/rename-id.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rename_comp](declarations/rename-comp.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [liftSub_zero](declarations/liftsub-zero.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [liftSub_succ](declarations/liftsub-succ.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [liftSub_var](declarations/liftsub-var.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [subst_var](declarations/subst-var.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [subst_rename](declarations/subst-rename.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rename_subst](declarations/rename-subst.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [subst_subst](declarations/subst-subst.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [instantiate_rename](declarations/instantiate-rename.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [instantiate_subst](declarations/instantiate-subst.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [rename](declarations/rename-source-edition-2.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [subst](declarations/subst.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71fcf2f3851765dbff8288595c5e6972b69dcb83bf96acb1ccdd17f4d9061bcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

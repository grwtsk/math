# MGoal Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MGoal/Variant7dd34a736b41785d15cd0fdb4a7b96844e70ccaadf56ec94d9acce50a3dd450f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `231fcf6c1cef301eace9484644ce98071c44af19`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MGoalNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [nameAnnotation](declarations/nameannotation.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [uniqAnnotation](declarations/uniqannotation.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Hyp](declarations/hyp.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [parseHyp?](declarations/parsehyp.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Hyp.toExpr](declarations/hyp-toexpr.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [SPred.mkType](declarations/spred-mktype.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [SPred.mkPure](declarations/spred-mkpure.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SPred.isPure?](declarations/spred-ispure.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [emptyHypName](declarations/emptyhypname.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [emptyHyp](declarations/emptyhyp.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [parseEmptyHyp?](declarations/parseemptyhyp.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [pushLeftConjunct](declarations/pushleftconjunct.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [pushRightConjunct](declarations/pushrightconjunct.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [SPred.mkAnd!](declarations/spred-mkand-source-edition-2.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [SPred.mkAnd](declarations/spred-mkand.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [TypeList.mkType](declarations/typelist-mktype.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [TypeList.mkNil](declarations/typelist-mknil.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [TypeList.mkCons](declarations/typelist-mkcons.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [TypeList.length](declarations/typelist-length.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [parseAnd?](declarations/parseand.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [MGoal](declarations/mgoal.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [parseMGoal?](declarations/parsemgoal.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ensureMGoal](declarations/ensuremgoal.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [MGoal.strip](declarations/mgoal-strip.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [MGoal.toExpr](declarations/mgoal-toexpr.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [MGoal.findHyp?](declarations/mgoal-findhyp.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [checkHasType](declarations/checkhastype.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [MGoal.checkProof](declarations/mgoal-checkproof.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [getFreshHypName](declarations/getfreshhypname.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [pushForallContextIntoHyps](declarations/pushforallcontextintohyps.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [betaPreservingHypNames](declarations/betapreservinghypnames.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [dropStateList](declarations/dropstatelist.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [MGoal.renameInaccessibleHyps](declarations/mgoal-renameinaccessiblehyps.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [addLocalVarInfo](declarations/addlocalvarinfo.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [addHypInfo](declarations/addhypinfo.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96527350f70248bbd2ac142c67835421686061e6991bafa517a4736b279bfa04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MGoal/Variant7dd34a736b41785d15cd0fdb4a7b96844e70ccaadf56ec94d9acce50a3dd450f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

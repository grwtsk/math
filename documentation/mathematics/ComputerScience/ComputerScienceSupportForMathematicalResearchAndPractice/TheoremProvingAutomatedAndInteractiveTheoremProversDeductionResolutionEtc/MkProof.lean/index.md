# Mk Proof

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfc379783c76d7ad01c62f53e4cc6306991feafd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MkProof.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CCM](declarations/ccm.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [run](declarations/run.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [modifyCache](declarations/modifycache.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [getCache](declarations/getcache.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [getEntry](declarations/getentry.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [normalize](declarations/normalize.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [getRoot](declarations/getroot.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [isCgRoot](declarations/iscgroot.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [isCongruent](declarations/iscongruent.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mkCCHCongrTheorem](declarations/mkcchcongrtheorem.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mkCCCongrTheorem](declarations/mkcccongrtheorem.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [setFO](declarations/setfo.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [updateMT](declarations/updatemt.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [hasHEqProofs](declarations/hasheqproofs.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [flipProofCore](declarations/flipproofcore.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [flipDelayedProofCore](declarations/flipdelayedproofcore.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [flipProof](declarations/flipproof.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [isEqv](declarations/iseqv.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isNotEqv](declarations/isnoteqv.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [isEqTrue](declarations/iseqtrue.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isEqFalse](declarations/iseqfalse.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mkTrans](declarations/mktrans.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [mkTransOpt](declarations/mktransopt.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [mkCongrProofCore](declarations/mkcongrproofcore.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mkSymmCongrProof](declarations/mksymmcongrproof.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mkCongrProof](declarations/mkcongrproof.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkDelayedProof](declarations/mkdelayedproof.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mkProof](declarations/mkproof.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [getEqProofCore](declarations/geteqproofcore.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [getEqProof](declarations/geteqproof.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [getHEqProof](declarations/getheqproof.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [getEqTrueProof](declarations/geteqtrueproof.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [getEqFalseProof](declarations/geteqfalseproof.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [getPropEqProof](declarations/getpropeqproof.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [getInconsistencyProof](declarations/getinconsistencyproof.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [mkNeOfEqOfNe](declarations/mkneofeqofne.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [mkNeOfNeOfEq](declarations/mkneofneofeq.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [mkACProof](declarations/mkacproof.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [mkACSimpProof](declarations/mkacsimpproof.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [simplifyACCore](declarations/simplifyaccore.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [simplifyACStep](declarations/simplifyacstep.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [simplifyAC](declarations/simplifyac.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2a3dc8f97724989db9f400729a505379dba617b1702e2be57b6677cfbcc7af7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

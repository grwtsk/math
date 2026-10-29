# Proof Public Get Ring Context

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toContextExpr](declarations/tocontextexpr.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ProofM.State](declarations/proofm-state.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [ProofM.Context](declarations/proofm-context.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [ProofM](declarations/proofm.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [getContext](declarations/getcontext.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [getRingContext](declarations/getringcontext.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [caching](declarations/caching.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `macro` | [(anonymous)](declarations/macro.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mkVarDecl](declarations/mkvardecl.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mkPolyDecl](declarations/mkpolydecl.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mkExprDecl](declarations/mkexprdecl.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkRingPolyDecl](declarations/mkringpolydecl.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkRingExprDecl](declarations/mkringexprdecl.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkRingVarDecl](declarations/mkringvardecl.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkContext](declarations/mkcontext.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkRingContext](declarations/mkringcontext.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [withProofContext](declarations/withproofcontext.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkIntModThmPrefix](declarations/mkintmodthmprefix.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mkIntModNoNatDivThmPrefix](declarations/mkintmodnonatdivthmprefix.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [mkIntModPreThmPrefix](declarations/mkintmodprethmprefix.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mkIntModPreOrdThmPrefix](declarations/mkintmodpreordthmprefix.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mkIntModLawfulPreOrdThmPrefix](declarations/mkintmodlawfulpreordthmprefix.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [mkIntModLinOrdThmPrefix](declarations/mkintmodlinordthmprefix.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [mkCommRingThmPrefix](declarations/mkcommringthmprefix.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mkCommRingNoNatDivThmPrefix](declarations/mkcommringnonatdivthmprefix.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mkCommRingLEThmPrefix](declarations/mkcommringlethmprefix.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkCommRingLTThmPrefix](declarations/mkcommringltthmprefix.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mkCommRingPreOrdThmPrefix](declarations/mkcommringpreordthmprefix.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mkCommRingLawfulPreOrdThmPrefix](declarations/mkcommringlawfulpreordthmprefix.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [mkCommRingLinOrdThmPrefix](declarations/mkcommringlinordthmprefix.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mkFieldChar0ThmPrefix](declarations/mkfieldchar0thmprefix.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [RingIneqCnstr.toExprProof](declarations/ringineqcnstr-toexprproof.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [RingEqCnstr.toExprProof](declarations/ringeqcnstr-toexprproof.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [RingDiseqCnstr.toExprProof](declarations/ringdiseqcnstr-toexprproof.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [IneqCnstr.toExprProof](declarations/ineqcnstr-toexprproof.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [DiseqCnstr.toExprProof](declarations/diseqcnstr-toexprproof.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [EqCnstr.toExprProof](declarations/eqcnstr-toexprproof.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [UnsatProof.toExprProofCore](declarations/unsatproof-toexprproofcore.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [UnsatProof.toExprProof](declarations/unsatproof-toexprproof.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [setInconsistent](declarations/setinconsistent.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [propagateImpEq](declarations/propagateimpeq.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [IneqCnstr.collectDecVars](declarations/ineqcnstr-collectdecvars.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [DiseqCnstr.collectDecVars](declarations/diseqcnstr-collectdecvars.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [EqCnstr.collectDecVars](declarations/eqcnstr-collectdecvars.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [UnsatProof.collectDecVars](declarations/unsatproof-collectdecvars.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0ca2963cdebf360ff5ed97c35164ded92e5bdd55ea6191b12d44a8706856000 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

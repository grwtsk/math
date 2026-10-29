# Verification target: Proof Public Get Ring Context

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3`.

Source path: `GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Module.OfNatModule` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Data.RArray` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.ToExpr` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProofUtil` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.VarRename` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.ToExpr` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.VarRename` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toContextExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/tocontextexpr.md) | 30 | `declaration-track:ebe57de978f1d1b41a6fefee3904d1a38ec560f84fe71e574f1ca410c751438f` |
| 2 | `structure` | [ProofM.State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/proofm-state.md) | 37 | `declaration-track:dccd4ef4e2a16b2c2a554d0b212c5e3b5ad21b19bdafd4972921c022aea3dd29` |
| 3 | `structure` | [ProofM.Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/proofm-context.md) | 46 | `declaration-track:b8c76b9fd60fcbcb3205b04aa37517663bb411cc8b9defb1724ebb21bc075c04` |
| 4 | `abbrev` | [ProofM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/proofm.md) | 51 | `declaration-track:e854aa87fe822b277fde023281302c63435323a2ce16ee891b081d5cbf7036dc` |
| 5 | `abbrev` | [getContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/getcontext.md) | 54 | `declaration-track:2b9a91177fc2446ad5031574f56f35b6bf450531c5e9f9674de4ce4b2b2fd744` |
| 6 | `abbrev` | [getRingContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/getringcontext.md) | 61 | `declaration-track:e3e5218e0914a438a0bc445fc1cc5ca195d1f1fb461e8709a065b441d130f938` |
| 7 | `abbrev` | [caching](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/caching.md) | 64 | `declaration-track:def6ce5ab63a57e1283241149b704dfb3b6632363209366d0b3e5ca8f3266588` |
| 8 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/macro.md) | 73 | `declaration-track:18779d98d3adbd4db3da85f35b9dea02c7f26673d3d8df758e5f1da3275b0412` |
| 9 | `def` | [mkVarDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkvardecl.md) | 80 | `declaration-track:326d0f98b68cf82f0c24e83e6beeffc2cf572422ec9d4a0d9d683c609346d0e6` |
| 10 | `def` | [mkPolyDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkpolydecl.md) | 83 | `declaration-track:fd0715ca167367b0e4d3d163b21360e420a015a073575c7eb6edd150d56196f6` |
| 11 | `def` | [mkExprDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkexprdecl.md) | 86 | `declaration-track:3197065c8498ac1162829b9ffee2aa57273ae6292e5712768d2e7ce692cbefd3` |
| 12 | `def` | [mkRingPolyDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkringpolydecl.md) | 89 | `declaration-track:6d6acc376985d2db5a7df1d04ad155b0bef86d0b2fb88167afff3e2e78a7f94b` |
| 13 | `def` | [mkRingExprDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkringexprdecl.md) | 92 | `declaration-track:f960b67a6fdcd8368d0206b395690dd30d908d2638397b0e6c9e91cba1f75f34` |
| 14 | `def` | [mkRingVarDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkringvardecl.md) | 95 | `declaration-track:276ab15a6593c68f4989b511a88e1a0f1afc3ffda47a82c2cae13d30e565a1d0` |
| 15 | `def` | [mkContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkcontext.md) | 98 | `declaration-track:aedfb330b5a44c5315a703d38935aa1eca48a12ed9a8afcb536809050ad3790a` |
| 16 | `def` | [mkRingContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkringcontext.md) | 124 | `declaration-track:d5e27b27420ece3ee4081e4216c749fc76a573da1557ba1a10ba50b19a290795` |
| 17 | `abbrev` | [withProofContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/withproofcontext.md) | 148 | `declaration-track:b4a8867a1b0dc1b1d350ebd0e0d5d120d257293001638af8208646014b27d44f` |
| 18 | `def` | [mkIntModThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkintmodthmprefix.md) | 162 | `declaration-track:1150b9f3515d8e6c484e285f7279a760a6c31932b26172b640104c6aeee78d58` |
| 19 | `def` | [mkIntModNoNatDivThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkintmodnonatdivthmprefix.md) | 170 | `declaration-track:a71896f8036c25eaad1200477eff64b81cbe69ec0ef358c4141e997b8d6e3555` |
| 20 | `def` | [mkIntModPreThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkintmodprethmprefix.md) | 178 | `declaration-track:465e3ecabe0666693c584129ff12cc14a925b0891834bab40c31bd1c022af96f` |
| 21 | `def` | [mkIntModPreOrdThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkintmodpreordthmprefix.md) | 187 | `declaration-track:b63a4bc242f9d7aa9fe6c115cae4697a6334a3684df51c11b7393197573d791f` |
| 22 | `def` | [mkIntModLawfulPreOrdThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkintmodlawfulpreordthmprefix.md) | 196 | `declaration-track:ce9363b5d2650c6c5f732ece22cac29f6c86aafffe3396d921e93f00505e78c3` |
| 23 | `def` | [mkIntModLinOrdThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkintmodlinordthmprefix.md) | 205 | `declaration-track:ae4f9378057c85c61a5ef7331dc3b963a6596955f39cb8aa046488d7278ea395` |
| 24 | `def` | [mkCommRingThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkcommringthmprefix.md) | 213 | `declaration-track:ae795ac60c138e6eee850b60efbae1e3763ab2be3ca9df1c61c29866fb27c68e` |
| 25 | `def` | [mkCommRingNoNatDivThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkcommringnonatdivthmprefix.md) | 221 | `declaration-track:59fdb83197ee3730fce52bcc094e85ea89cd7aad262679879cc26a0a135c450f` |
| 26 | `def` | [mkCommRingLEThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkcommringlethmprefix.md) | 229 | `declaration-track:8ad79ff2b12df89dfa0bf3dc56322a3bfa1c62929194a51254742ca73a0635ba` |
| 27 | `def` | [mkCommRingLTThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkcommringltthmprefix.md) | 237 | `declaration-track:12c9033ef7f49c775a3af51bd296677dbb28e72f5d94a9d5f35ce108776fc8ee` |
| 28 | `def` | [mkCommRingPreOrdThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkcommringpreordthmprefix.md) | 245 | `declaration-track:b50b36f4d69a4b1d5d3619bdf2385b110abbbc700baa50bed0ea1b62c4c5d929` |
| 29 | `def` | [mkCommRingLawfulPreOrdThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkcommringlawfulpreordthmprefix.md) | 253 | `declaration-track:37fb311facc37730172593ac13781687fa70c01b78872071a0134be043f7e040` |
| 30 | `def` | [mkCommRingLinOrdThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkcommringlinordthmprefix.md) | 261 | `declaration-track:7b5ce1e18b7cd0acf4cc0a2c124e17d4adeb1409c28e7406aa8e59d4e59c754a` |
| 31 | `def` | [mkFieldChar0ThmPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/mkfieldchar0thmprefix.md) | 269 | `declaration-track:636c8628dcad742084ef01248410059ddbe9bbff075d4c0ba0180d5e92fdb5d5` |
| 32 | `def` | [RingIneqCnstr.toExprProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/ringineqcnstr-toexprproof.md) | 273 | `declaration-track:f3e2169713085165d60cfa5c104bd00475fcb073077932cc1dcaa15978d7030d` |
| 33 | `def` | [RingEqCnstr.toExprProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/ringeqcnstr-toexprproof.md) | 296 | `declaration-track:0703af310017f50f9ff842fc6a76ff49ae1546bdec8e3b0de6812a3fdc41faf3` |
| 34 | `def` | [RingDiseqCnstr.toExprProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/ringdiseqcnstr-toexprproof.md) | 314 | `declaration-track:32a2ea84e2efb5faa07e517a8ac1d24acfcaadc27d94a8e12443207855be3486` |
| 35 | `def` | [IneqCnstr.toExprProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/ineqcnstr-toexprproof.md) | 329 | `declaration-track:d2f915dc32d04db0b151a0d73788d8acd124cf30682c9820c0bb6b0542934637` |
| 36 | `def` | [DiseqCnstr.toExprProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/diseqcnstr-toexprproof.md) | 414 | `declaration-track:8789957e2a1b38cfa645ca42a0285edff05ce65b2d8fa55f18677751839938a1` |
| 37 | `def` | [EqCnstr.toExprProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/eqcnstr-toexprproof.md) | 446 | `declaration-track:dc1ff4da075c03af3d90135c36b5fb3d00cb6bc505c7d2b4c485963e850cbcde` |
| 38 | `def` | [UnsatProof.toExprProofCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/unsatproof-toexprproofcore.md) | 472 | `declaration-track:e1430ad2d91a3b2076114327fcaaf738a5c5949dbb2d8162153fa15e9162d0d7` |
| 39 | `def` | [UnsatProof.toExprProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/unsatproof-toexprproof.md) | 479 | `declaration-track:d70f9bbc64907cfdbdd2f78951dbde5869fc89b4ec0e783a37b411e21daeaf38` |
| 40 | `def` | [setInconsistent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/setinconsistent.md) | 482 | `declaration-track:93c0e37a97697d6f536b8e1790b38895e8cf5552874f90870bdd2ae2385c2ff1` |
| 41 | `def` | [propagateImpEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/propagateimpeq.md) | 490 | `declaration-track:6d5789b5c0ba6dbe04dd2eb76bf5043507d4d8ec0061e1cb6fd206fe5f10da04` |
| 42 | `def` | [IneqCnstr.collectDecVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/ineqcnstr-collectdecvars.md) | 507 | `declaration-track:e35dcc6b2b086e19c70203d0b4b8411e3750de89225af4edeeaf6cfd66d398a3` |
| 43 | `def` | [DiseqCnstr.collectDecVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/diseqcnstr-collectdecvars.md) | 519 | `declaration-track:57c54c7634fed7d0775940f5bb6b9a4ab37246389bca494a7504300d6b995b73` |
| 44 | `def` | [EqCnstr.collectDecVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/eqcnstr-collectdecvars.md) | 525 | `declaration-track:422c39e6f8e5124893ca4bd594a74bfca105c092f6aa9abfe8dea86fbc4bb417` |
| 45 | `def` | [UnsatProof.collectDecVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofPublicGetRingContext.lean/declarations/unsatproof-collectdecvars.md) | 533 | `declaration-track:66d773e08a7bee4e691e339819a5cd7ceaa722083d90c39f09ade763bea379b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9232dc340eb53d35ab47146f5db86cbd08b3b1a4a5c1a988c57bb2e013f20eb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean","GRWTSK/_verification/specifications/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

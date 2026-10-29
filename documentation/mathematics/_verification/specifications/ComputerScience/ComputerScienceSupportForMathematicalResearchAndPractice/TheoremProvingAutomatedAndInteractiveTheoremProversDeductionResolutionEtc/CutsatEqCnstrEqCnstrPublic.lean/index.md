# Verification target: Cutsat Eq Cnstr Eq Cnstr Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d0e24c220358ae013b8c06545e8598cb06de521",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d0e24c220358ae013b8c06545e8598cb06de521`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Proof` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Var` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.DvdCnstr` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.LeCnstr` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.CommRing` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Norm` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.EvalNum` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Int.Internal.Linear.Poly.substVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/root-int-internal-linear-poly-substvar.md) | 24 | `declaration-track:63bba7d73fe65ea12ed9b6c1025e938f80992ae5febaa24646f99a1ca1b3d74f` |
| 2 | `def` | [EqCnstr.norm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/eqcnstr-norm.md) | 31 | `declaration-track:9ba9d6ad7558bd5e4f0b19d75682a3286bf7318b1a48a545a30d429827eef523` |
| 3 | `def` | [DiseqCnstr.norm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/diseqcnstr-norm.md) | 37 | `declaration-track:b6f4638bbaded99a7f621dea2edb8078af8d755b364914602b98c8604d3479a0` |
| 4 | `def` | [DiseqCnstr.applyEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/diseqcnstr-applyeq.md) | 47 | `declaration-track:a11920b7db816409506924744ca9664d9fd55799d26e59ded0be7eca68d1107c` |
| 5 | `def` | [DiseqCnstr.applySubsts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/diseqcnstr-applysubsts.md) | 54 | `declaration-track:41f7f3e5492c6f98719ceedbd8be78213d8886d6bb37d99767ec38785c0cef7e` |
| 6 | `def` | [DiseqCnstr.findLe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/diseqcnstr-findle.md) | 63 | `declaration-track:79eabc7cc0f9f3dd9a5a26aef7df3d9e3b0c5268a718ecb53f2e3f1a0946aaee` |
| 7 | `def` | [DiseqCnstr.assert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/diseqcnstr-assert.md) | 76 | `declaration-track:e104ba8e27a80f82faf77bd5b9d697441082ae78d2ccc90f9c53c392ea811b69` |
| 8 | `def` | [_root_.Int.Internal.Linear.Poly.pickVarToElim?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/root-int-internal-linear-poly-pickvartoelim.md) | 104 | `declaration-track:a75b4a01f47b7d5697b0cd8c98b58e8a542a5a6c8436a3838f6231afe8a4eee7` |
| 9 | `def` | [EqCnstr.applySubsts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/eqcnstr-applysubsts.md) | 120 | `declaration-track:130647162026236ffd6ddb5ab69b58896a2b64fbf9faa21578432779a2d58998` |
| 10 | `def` | [updateDvdCnstr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/updatedvdcnstr.md) | 125 | `declaration-track:88289d6b5d868fb1d8f5dd1c8a057ff2da7f64392226c2704c218595b0c187c5` |
| 11 | `def` | [splitLeCnstrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/splitlecnstrs.md) | 133 | `declaration-track:6af33fd4c27bf0fb5d037e9351ead8c9982003431e735b7231cd0ce3b8038bc6` |
| 12 | `def` | [updateLeCnstrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/updatelecnstrs.md) | 140 | `declaration-track:4cc8670d99b78c9539e870eae8c4317388d058e209d40a9305d0fb9b1b85aa05` |
| 13 | `def` | [updateLowers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/updatelowers.md) | 149 | `declaration-track:f1d0d75ed61e47efa2afc7dd9fac4569d5f0be8dc88756a04ed5b99dcff786d6` |
| 14 | `def` | [updateUppers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/updateuppers.md) | 158 | `declaration-track:4c6fa1a45a64406472d32c82b956f00fea817d8a6459af9990666c0b92fc804d` |
| 15 | `def` | [splitDiseqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/splitdiseqs.md) | 164 | `declaration-track:05b9e9eec407abbefcfdef32e27cb710c931e4a2cb4e57e1f539ed31f871799d` |
| 16 | `def` | [updateDiseqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/updatediseqs.md) | 167 | `declaration-track:ce55fed1e9806f67b865290155851317b15b81412a330056c61b63c3afddd785` |
| 17 | `def` | [isVarEqConst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/isvareqconst.md) | 177 | `declaration-track:e23c1758c5b8df8b6cb65bd6d6606f0260691f5a814b22750c27c1f2340ca31a` |
| 18 | `def` | [isExprEqConst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/isexpreqconst.md) | 184 | `declaration-track:cb2c1755338bce12275d3e22958fe1fbcb4f02cfd0a560839a23e060b2f8339a` |
| 19 | `structure` | [PropagateMul.State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatemul-state.md) | 188 | `declaration-track:5256e6b4d56c02f265e5557ea6eca146c8b520b274da62f8fce623e7669df116` |
| 20 | `def` | [propagateNonlinearMul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatenonlinearmul.md) | 194 | `declaration-track:cf5ca1f74efd459459f0e92e8654490ce64831b0a1f18476a408347efcdfcb62` |
| 21 | `def` | [propagateNonlinearDiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatenonlineardiv.md) | 226 | `declaration-track:fdaaa21e639b4236fe8d3b706e03c9420677e5a4608a8db018ad988160108b00` |
| 22 | `def` | [propagateNonlinearMod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatenonlinearmod.md) | 241 | `declaration-track:017fd2d9ffa9957fec45e893f9e4e16e2c3b67bcb1089a7aef55a6300b4e0b0a` |
| 23 | `def` | [propagateNonlinearPow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatenonlinearpow.md) | 256 | `declaration-track:18757bbd1642055e049fe28486080787dbff0119013e3ba954aab2280b8c15da` |
| 24 | `def` | [propagateNonlinearTermImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatenonlineartermimpl.md) | 281 | `declaration-track:06a3683eb8fc3b1b86fd35e8e45094ace5be21e8d653fa2fbbbf907585aa1697` |
| 25 | `def` | [propagateNonlinearTerms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatenonlinearterms.md) | 290 | `declaration-track:4bbb89dd2f1d9cdbaf0a7d2619cd1da6fc5a315bd0274e9d603b3f1bbcf95d23` |
| 26 | `def` | [updateElimEqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/updateelimeqs.md) | 295 | `declaration-track:10e489b96145ca8031f8117b539343b019d0f8fdf1b5a4cc3d9597b8f6463db5` |
| 27 | `def` | [updateOccsAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/updateoccsat.md) | 306 | `declaration-track:cafde61f3786b828b116416814855f72502d104b8b7dcb89ea8d885caf7d3c17` |
| 28 | `def` | [updateOccs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/updateoccs.md) | 312 | `declaration-track:a0ac9ed0636b1356de1a4f2bb9270dae14d72fe1b97699516ed3634eff429bfb` |
| 29 | `def` | [_root_.Int.Internal.Linear.Poly.updateOccsForElimEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/root-int-internal-linear-poly-updateoccsforelimeq.md) | 335 | `declaration-track:01ebdd49f3744e64baa646c60580705eabc16990cb7aca614075b524cdaa1c93` |
| 30 | `def` | [EqCnstr.assertImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/eqcnstr-assertimpl.md) | 344 | `declaration-track:5b3735795190a677b6ddfed53517b19e9034cb197cfe131d81657201c38276ad` |
| 31 | `def` | [exprAsPoly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/expraspoly.md) | 384 | `declaration-track:2491ee76c0ad092e25cf9b55d91b5048fc1718884477ff0996f830eb1f3814e8` |
| 32 | `def` | [EqCnstr.assertCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/eqcnstr-assertcore.md) | 393 | `declaration-track:9b7fc30acb694179d73249ed584df616acd34ec53a5b5e681944e9c506bbcc35` |
| 33 | `def` | [processNewIntEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/processnewinteq.md) | 400 | `declaration-track:33d60adfafe577118f5c13b95625384712fd1b3c44d94a5c4d11e37a1eb54e6c` |
| 34 | `def` | [natToIntExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/nattointext.md) | 411 | `declaration-track:54d6bb71b9d22fe719267cdddbec16b452d6442038e95393ab90c09c7f9fb69e` |
| 35 | `def` | [processNewNatEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/processnewnateq.md) | 416 | `declaration-track:fdffa5b222efcb034582c76bb5b0e73d4e496902561711c573c4b659ad404512` |
| 36 | `def` | [processNewToIntEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/processnewtointeq.md) | 427 | `declaration-track:56de9a8b328c8de7b69afbf5455d54420f0dee96dc3e7dff0af61b8d842bba2e` |
| 37 | `def` | [processNewEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/processneweq.md) | 438 | `declaration-track:f070aaa6f6b60ae4c599a0ed53a247bfe0862a6e494c6102a805d5a9a03c6cff` |
| 38 | `def` | [processNewIntDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/processnewintdiseq.md) | 450 | `declaration-track:5c42d923a93d402ed3a54fe6f827d8c8db0fc5ec6fc0a35ff15fb8c24d67f53c` |
| 39 | `def` | [DiseqCnstr.assertCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/diseqcnstr-assertcore.md) | 463 | `declaration-track:bbebd86ba02501ee0dec491651f9ca8304a5811ed6561d8041b3680d84fa9d9a` |
| 40 | `def` | [processNewNatDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/processnewnatdiseq.md) | 470 | `declaration-track:3d9b44c3d65d63592b8e5b9f4fb5025b58feec3d280741856a45c55fb8188ce5` |
| 41 | `def` | [processNewToIntDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/processnewtointdiseq.md) | 482 | `declaration-track:ae40cc2353d78bec8da19543c9837d209221e06b22a452be5c94daa5d94f391a` |
| 42 | `def` | [processNewDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/processnewdiseq.md) | 493 | `declaration-track:57c2923fe4dcb44875b1f6f6b1c491f1bb7d5f36e326b182aa29a7e12ee09d47` |
| 43 | `inductive` | [SupportedTermKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/supportedtermkind.md) | 506 | `declaration-track:fe818750d55ff9c5f4ef75f00c0afdd818f763f0f826da0892ed5e1b87bd9274` |
| 44 | `def` | [getKindAndType?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/getkindandtype.md) | 510 | `declaration-track:d9c1ea107192d65b166103d46258d5d10abdeb77a2d12f8f97ac5cacc42a91f0` |
| 45 | `def` | [isForbiddenParent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/isforbiddenparent.md) | 530 | `declaration-track:62f5b27c3b5f8dcb70733d6ec7fafeb8c91956af552c6f9ea3f6f9ba50443b0d` |
| 46 | `def` | [internalizeInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/internalizeint.md) | 546 | `declaration-track:6f51b0de2a54cfe1c64acb9cb0b404de4a1908366bb5b640e6f56a4853bf20b5` |
| 47 | `def` | [expandDivMod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/expanddivmod.md) | 562 | `declaration-track:ba49f902de109e39d78038ad133fe10367430b4093764d7c24546b968bd60f63` |
| 48 | `def` | [propagateDiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatediv.md) | 594 | `declaration-track:d7f204868e1fd1f2a4da173c7354b31a2cb94ee6c80430083769f1f900f4c70f` |
| 49 | `def` | [propagateMod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatemod.md) | 603 | `declaration-track:b9ec1ff47ce423320690609ab274bd1d7eb4b8632174042db0817f23e33b930a` |
| 50 | `def` | [propagateToInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatetoint.md) | 611 | `declaration-track:45d3c5e257079cfab527e4cc8452004ec400664446992d473124a15257964d91` |
| 51 | `def` | [propagateNatAbs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatenatabs.md) | 626 | `declaration-track:1074ed117002376309d284ba27beb755d2f1cb69c791afdaff7652206f65bed4` |
| 52 | `def` | [propagateToNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatetonat.md) | 630 | `declaration-track:85f3375165496ebffb9792592a49aa41eed8fe0d24f94e8e06f769329f66a522` |
| 53 | `def` | [isToIntForbiddenParent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/istointforbiddenparent.md) | 634 | `declaration-track:0ead042e9031758ae17a5fe320b72b0b26ed560ee44aaf8454332e162ce7e154` |
| 54 | `def` | [internalizeIntTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/internalizeintterm.md) | 640 | `declaration-track:75a4f616430737c5daf0dbfc589b0aed7cf340dbc6279bf5c0ad9f9a866c9e33` |
| 55 | `def` | [propagateNatSub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/propagatenatsub.md) | 649 | `declaration-track:483402eb4b106fc58dc96ad22012735a7c25322e95db9339f121757e0d21cb8c` |
| 56 | `def` | [internalizeNatTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/internalizenatterm.md) | 656 | `declaration-track:2d3d12ee335c1238a0cc25cf7bb4dcbfc62f991e866fd505a4a1febe46fd6d66` |
| 57 | `def` | [internalizeToIntTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/internalizetointterm.md) | 693 | `declaration-track:ba039153a6b0863e3232e478e0a796052b4f2db7d85e81bc4beaae79441aca7b` |
| 58 | `def` | [internalize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CutsatEqCnstrEqCnstrPublic.lean/declarations/internalize.md) | 713 | `declaration-track:91026e93b0fbe42bd3481cbcb06c0527ca887559203e5568d2d9fb3f7738586e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae16dc6e3a8134e42a53803c462b43e6b8e0a157bfb661c9e0bcb189f7129194 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

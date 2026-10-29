# Verification target: Expr Basic Last Component As String

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "030b7089fd4e3f5264c0b786eeccbc78ee0fc05b",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta8aa0f71dfed9ee59bdc5a53ca41b68c7abadbc6979e6d6d2cc1992375185523.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `030b7089fd4e3f5264c0b786eeccbc78ee0fc05b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta8aa0f71dfed9ee59bdc5a53ca41b68c7abadbc6979e6d6d2cc1992375185523.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta8aa0f71dfed9ee59bdc5a53ca41b68c7abadbc6979e6d6d2cc1992375185523.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Rewrite` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Alias` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Binders` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [brackets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/brackets.md) | 27 | `declaration-track:1690640dd6c18444a985a94a0f3c259ffef9b5abf9fb55d0a755e71744f970db` |
| 2 | `def` | [mapPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/mapprefix.md) | 41 | `declaration-track:d2460f27a14268b429cff89f56d50059a78e6d2b618d9aff23f8d063a333c9f2` |
| 3 | `def` | [fromComponents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/fromcomponents.md) | 51 | `declaration-track:be365f4afa47e00917d544e8535a9eeb1b27fa43f6ee9846501874c299585cb2` |
| 4 | `def` | [updateLast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/updatelast.md) | 58 | `declaration-track:3c53957a7ceed59c57880d61840658f3b59d0e84850425e60c0341c25ac6de6c` |
| 5 | `def` | [lastComponentAsString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/lastcomponentasstring.md) | 64 | `declaration-track:07489172c6bb6eff55d19396a1d104edc9d99f0b5544069820bbf559140817f9` |
| 6 | `def` | [splitAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/splitat.md) | 72 | `declaration-track:77be31ec43b48e4bcc740fe9d28a59b7fe5fdd3c21e3b98fc0fbc19b001336d3` |
| 7 | `def` | [isPrefixOf?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/isprefixof.md) | 79 | `declaration-track:665db9aed8a9c53049311e734651189052a9fd7a31f43240593b175337c131ae` |
| 8 | `def` | [isBlackListed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/isblacklisted.md) | 90 | `declaration-track:51a1b8a5bbb03b41d7d4756d1ae6d66795947c7f49a879f2df45f66b1ef00a3f` |
| 9 | `def` | [isDef](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/isdef.md) | 105 | `declaration-track:796ebce09f5e9a6e821c4976cffefc39d4f9848c7e921405fd3dc566e6e4f9b0` |
| 10 | `def` | [isThm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/isthm.md) | 110 | `declaration-track:39cc8c87618b670f58fd4412862f5cc439f9cec841de624bc19fad652b804812` |
| 11 | `def` | [updateConstantVal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/updateconstantval.md) | 116 | `declaration-track:8af406afa292e8da8467408368f7ee4279d38f2a33642ee81cfbf9e4ccb4ae68` |
| 12 | `def` | [updateName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/updatename.md) | 127 | `declaration-track:c17035a7b151444d3c8abff28da5d64e28d1fed4ccbac11bfffecddd171d73cd` |
| 13 | `def` | [updateType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/updatetype.md) | 131 | `declaration-track:f8bab21305452f602321f7cb088ce2c6822e27923398014e58f75263a79e3d74` |
| 14 | `def` | [updateLevelParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/updatelevelparams.md) | 135 | `declaration-track:a3b7e3dd27d3df1c29e230f47be148a0af9e2455866a60088aaa8034da3751c7` |
| 15 | `def` | [updateValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/updatevalue.md) | 140 | `declaration-track:b7f2330c904044ef78d4da7daf9c135179ffe3d938ca6583d682cb8ec8895211` |
| 16 | `def` | [toDeclaration!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/todeclaration.md) | 147 | `declaration-track:379cd7946e3d5907a2f55c8208192b0f0267dcf1250cadc604e808a90a95eaf1` |
| 17 | `def` | [mkConst'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/mkconst.md) | 162 | `declaration-track:7fc96498eaa43078b85d620027f8449135de1cc1257926cc6761ae2c03c256bb` |
| 18 | `def` | [bvarIdx?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/bvaridx.md) | 169 | `declaration-track:586a7bdbea9e10eda92dd152aa69bd708a54af171d319aa0cea90825b1b4306e` |
| 19 | `def` | [getAppAppsAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/getappappsaux.md) | 174 | `declaration-track:b3c2e6c7293436c673b1e1c9b168524fd1e96f0f467eeb01e2f58885ab9faabf` |
| 20 | `def` | [getAppApps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/getappapps.md) | 182 | `declaration-track:925fe7a7ee42dfd271d50bd7fedf34c8b41276a51fa0b292b5a17877ea90e793` |
| 21 | `def` | [eraseProofs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/eraseproofs.md) | 196 | `declaration-track:d533359ea9d2ed281ba8bb05cbb80f45069aa0ee91e9e55855a23714c08834ed` |
| 22 | `def` | [type?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/type.md) | 205 | `declaration-track:cc423093390d92c290d84aa88b682f30f002a726dc8c871f8f4a7042d51e011e` |
| 23 | `def` | [isConstantApplication](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/isconstantapplication.md) | 212 | `declaration-track:368c4b36bc246cb15915c27dd298adbdf4ba2a2a8b7e6ad61c4fc12210dd4a6c` |
| 24 | `def` | [letDepth](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/letdepth.md) | 223 | `declaration-track:0632efc19b3c2b5baa16063b844f62d83812c6e6460a8cf8536ecfffda8025b4` |
| 25 | `def` | [ensureHasNoMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/ensurehasnomvars.md) | 231 | `declaration-track:1ef0b26811e4d94e14459d2274a5d12df9253c3747b39ac9325b3d9cda50b9ac` |
| 26 | `def` | [ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/ofnat.md) | 238 | `declaration-track:bb55f550deabfa23877ac564722e768a03ce7ae6499b27017036f3556cd65d39` |
| 27 | `def` | [ofInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/ofint.md) | 243 | `declaration-track:a3aaf4e60b95efabbcbee1e9f4795bc4d7049a7dd2338d7469f57be27db7ef30` |
| 28 | `def` | [numeral?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/numeral.md) | 255 | `declaration-track:df1ca3ca587107c656e9c4100230b60fa55391c7879e073403d41a331933016c` |
| 29 | `def` | [zero?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/zero.md) | 269 | `declaration-track:b84deb567d705b4d93cc9ec0c825dcfc28d4f58079eb5bad03f452e5d1f24b5a` |
| 30 | `def` | [ne?'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/ne.md) | 276 | `declaration-track:df4ff23447cf09b67b9430c5f86856eb769671aa641e9891bba5a4bea57b3a3d` |
| 31 | `def` | [le?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/le.md) | 282 | `declaration-track:bf32814a213ac4aaf8d46f48f421dc2d56a2c94761a1ae99fd368677b7dc4ade` |
| 32 | `def` | [lt?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/lt.md) | 289 | `declaration-track:c393d9e7232c101185ccbaf9a18f7d700ad28be5c2609e341301a495d300cdaa` |
| 33 | `def` | [sides?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/sides.md) | 298 | `declaration-track:ef3af21cf042348faa72844400a3b7313204c1ff3b9073c35c61bf0d1107cb23` |
| 34 | `def` | [modifyAppArgM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/modifyappargm.md) | 310 | `declaration-track:6fcaadb58d112a8331f4a2f4eb14142f10a6b550993e00e26544b882c6108a57` |
| 35 | `def` | [modifyRevArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/modifyrevarg.md) | 315 | `declaration-track:75b67f543b2e30b75412cc4cc6199c2e3ef1c59e4461a5b4577b5fcbc615dc3a` |
| 36 | `def` | [modifyArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/modifyarg.md) | 322 | `declaration-track:aa2e578939a4894ba2caa7f8349faa6a259ab9747eba233049cf060147ed763e` |
| 37 | `def` | [setArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/setarg.md) | 327 | `declaration-track:42bab7b4efbc96d767554b7e6599d210ef66f99a21a7797cb51e41275e4f5e67` |
| 38 | `def` | [getRevArg?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/getrevarg.md) | 330 | `declaration-track:c4579e8fe95ef4c93d15744c2c1a0a225b0e8bb4e35319ba63a4fd697b3ed578` |
| 39 | `def` | [getArg?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/getarg.md) | 336 | `declaration-track:4f708a75cc0f53ab350f96f091a852551dd0abfaa3d7339013aa917f22ab1bf0` |
| 40 | `def` | [modifyArgM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/modifyargm.md) | 341 | `declaration-track:b3bf7ba89ac7ec0f8d72dda2558f7f2a1c59d53fd6c5ff9a8a3af05b39cc9766` |
| 41 | `def` | [renameBVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/renamebvar.md) | 348 | `declaration-track:ad86e9231d291e3d3cd39830c103569bc72c3926f6a23dd896589008e4eecf79` |
| 42 | `def` | [getBinderName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/getbindername.md) | 361 | `declaration-track:4adbb5afaf3ecf3941f98eeef06aa2321e083bf8aac5c99e9e8c70f186e4ae7f` |
| 43 | `def` | [addLocalVarInfoForBinderIdent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/addlocalvarinfoforbinderident.md) | 368 | `declaration-track:b287db9c455a37e535dcb06d59f3db5388b7c1da76e887de8b3b99eefbdfc465` |
| 44 | `def` | [mkDirectProjection](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/mkdirectprojection.md) | 378 | `declaration-track:7f60259834984e8932dfa2c85601c8e66bd165b4152de5b2c95914f8ce9758d4` |
| 45 | `def` | [mkProjection](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/mkprojection.md) | 387 | `declaration-track:6ffd8717f77e93bdd13ca8016e94e424f76685fe363495afaf023e3368af889d` |
| 46 | `def` | [reduceProjStruct?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/reduceprojstruct.md) | 402 | `declaration-track:76630b9fdc7988c82beca35007d6523698a13eecc6642047b46af35615a88195` |
| 47 | `def` | [containsConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/containsconst.md) | 424 | `declaration-track:7d67e43f573f1978152c8deaa5ca8bf2a38575c9778dc636c7c28be9674a23eb` |
| 48 | `def` | [rewrite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/rewrite.md) | 433 | `declaration-track:5bed55331e8d97227ddd5b08698b13c6cbb85e44ae78477d81b8e602a8abb752` |
| 49 | `def` | [rewriteType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/rewritetype.md) | 444 | `declaration-track:9192b0de07207dca93974c57f3b3826eb67df662aac16852ac50512f8837e2d3` |
| 50 | `def` | [forallNot_of_notExists](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/forallnot-of-notexists.md) | 451 | `declaration-track:ce3430ef0a4cf491e40e38113112b4acfe6e8eb7a263eac7bf8551f37110e049` |
| 51 | `def` | [getFieldsToParents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicLastComponentAsString.lean/declarations/getfieldstoparents.md) | 482 | `declaration-track:d11ab6bf1fd2f09bb5a17743016708d468a0f7013ceea7e882c06df6d5980931` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2915fcac99612d5f3204a81f5b72d958d1a6d7357a28ac49c53b1494e85af79c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta8aa0f71dfed9ee59bdc5a53ca41b68c7abadbc6979e6d6d2cc1992375185523.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta8aa0f71dfed9ee59bdc5a53ca41b68c7abadbc6979e6d6d2cc1992375185523.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

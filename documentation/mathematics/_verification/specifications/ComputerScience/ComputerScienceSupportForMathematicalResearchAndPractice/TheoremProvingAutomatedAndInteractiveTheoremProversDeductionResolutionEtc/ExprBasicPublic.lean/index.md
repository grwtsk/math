# Verification target: Expr Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e67f7aa32b4f4ed7c1414a56493affd1726ecabd",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b82e9ae20521997c0d16e8ddfba4fe205bac92d5f11a4e9dc7d6231c5d08987.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e67f7aa32b4f4ed7c1414a56493affd1726ecabd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b82e9ae20521997c0d16e8ddfba4fe205bac92d5f11a4e9dc7d6231c5d08987.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b82e9ae20521997c0d16e8ddfba4fe205bac92d5f11a4e9dc7d6231c5d08987.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linter.Header` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [brackets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/brackets.md) | 33 | `declaration-track:a7dcac810933b36cdc1176d8063e2f5552cb17e2b4153372ecdb8aebc263641f` |
| 2 | `def` | [mapPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/mapprefix.md) | 47 | `declaration-track:61d07034fcae2a63be6e557103371e175d6184996f9a835c16c1a106556bac1b` |
| 3 | `def` | [fromComponents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/fromcomponents.md) | 57 | `declaration-track:f3417cab306ca22de27d09dc7ac3a678ee1cac34e38ee6faee2a2c7c872109ef` |
| 4 | `def` | [updateLast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/updatelast.md) | 64 | `declaration-track:2d8f65eb40d7f5a0cfcb1a6381f7721fede39d7c065e68a7feaf95d64f99e6d6` |
| 5 | `def` | [lastComponentAsString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/lastcomponentasstring.md) | 70 | `declaration-track:93d7b29ebce2ee17ae351a852e0dfa1210cafecfb938f8f2e86f0f208bc8605e` |
| 6 | `def` | [splitAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/splitat.md) | 78 | `declaration-track:6876cde8b916b65899a75ce451dea9c2952463431dab16c7c973d4b1305ceb4a` |
| 7 | `def` | [isPrefixOf?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/isprefixof.md) | 85 | `declaration-track:eb26b75620af953c762b95c880e2622b6e61420df88c6429738cfee19237ad59` |
| 8 | `def` | [isBlackListed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/isblacklisted.md) | 96 | `declaration-track:9d960a35a64d2461fd3ec99796cc7e39ce88bb7ec7d1cd68c124cd557d989944` |
| 9 | `def` | [isDef](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/isdef.md) | 111 | `declaration-track:80ea79110dd6a9baa61d399eb10f6326f0225e2dbcca924e9053753e83397dfb` |
| 10 | `def` | [isThm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/isthm.md) | 116 | `declaration-track:0c516bb7f6bc8099dfdbc4cc55baf92860999baa768fb37cd5fe754b4b7017ab` |
| 11 | `def` | [updateConstantVal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/updateconstantval.md) | 122 | `declaration-track:38772a863434fd79473b1b018ce6a1d0f20fd393c9d55cea28a1fe90e9bc5e07` |
| 12 | `def` | [updateName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/updatename.md) | 133 | `declaration-track:72d5c3438e285391f386ac20e2feb3bc970fca70792b5c202d44cc6c2b0b2dde` |
| 13 | `def` | [updateType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/updatetype.md) | 137 | `declaration-track:1c62b98488df5a9c992b8d678afb5d5331c188822d9021c8ac7bcf44c4e20b21` |
| 14 | `def` | [updateLevelParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/updatelevelparams.md) | 141 | `declaration-track:cf55a520ef04d19600247ba5da52e94f34088ecabfe52963c14faf17e2f9c422` |
| 15 | `def` | [updateAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/updateall.md) | 150 | `declaration-track:9b84c664d0c24ee2e27f9add360e65aeba774f6b88dc6bb36731952808adbba1` |
| 16 | `def` | [updateValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/updatevalue.md) | 158 | `declaration-track:87bf23f49a82a6ed5b656b7d0fd212c98ff7cacb5fc6213866b4d99f79aa7387` |
| 17 | `def` | [toDeclaration!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/todeclaration.md) | 165 | `declaration-track:de4b2483d859a54499811e7774a020f4a7caa84e1152d6ffb82c871c44d9642a` |
| 18 | `def` | [mkConst'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/mkconst.md) | 180 | `declaration-track:dd03cc4c28c3b57c700fcdd84e75f2761f23eb6066218d5e122119eddeb55411` |
| 19 | `def` | [bvarIdx?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/bvaridx.md) | 187 | `declaration-track:4d9c8ae33145e7e0e11e2330874c38affab2afa813b99b1c927cb9a2d33ddc9a` |
| 20 | `def` | [getAppAppsAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/getappappsaux.md) | 192 | `declaration-track:9fa9663fdfb31753fc2f744fd65e4d6ca96211e54c4e614ed0f02a7f4f547d5e` |
| 21 | `def` | [getAppApps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/getappapps.md) | 200 | `declaration-track:c485307964097c19eb07049ed939969fd2d095001a13002b183cc3c9b9663f7e` |
| 22 | `def` | [eraseProofs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/eraseproofs.md) | 214 | `declaration-track:d4980076d9f884707de7647504d14d89c346941036f97e4e912eb0b5bb2f959e` |
| 23 | `def` | [type?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/type.md) | 223 | `declaration-track:57e70c018e8a371ea6d3e01e059d5e915de8e310139c54d2bb1c23eece4eab24` |
| 24 | `def` | [isAppOrForallOfConstP](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/isapporforallofconstp.md) | 234 | `declaration-track:b429294bbd3870a4872079f28caf853286c56440db386ca8fd3626d9243d70c6` |
| 25 | `def` | [isAppOrForallOfConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/isapporforallofconst.md) | 246 | `declaration-track:22e6d2d48e55e0e5bfdac8581c190f818f3abd3bc8a11e494762d040829d8c75` |
| 26 | `def` | [getUnusedForallInstanceBinderIdxsWhere](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/getunusedforallinstancebinderidxswhere.md) | 264 | `declaration-track:748b8e14c119ab8a8016dec38aca6675176c9b1c50a9accb969e94f7b3c828cd` |
| 27 | `def` | [hasInstanceBinderOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/hasinstancebinderof.md) | 288 | `declaration-track:8a1cd65f335716da23d0c4f808ab04b3c4f409ad1c1b36f91e3493858b5615ae` |
| 28 | `def` | [letDepth](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/letdepth.md) | 295 | `declaration-track:a7b6fb5b393adf3c33183d1ff72ae2de96063490f5afe2a85e3470c4fa96627f` |
| 29 | `def` | [ensureHasNoMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/ensurehasnomvars.md) | 303 | `declaration-track:b3253ae1a1b017609dbd3a4fc43a2f93c853dbec2d0096ef79989b0cf22d1b65` |
| 30 | `def` | [ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/ofnat.md) | 310 | `declaration-track:91dac0994d1f20c0f95a8aadb691d570432cf84598321ec0bf6cb1f206e6a7bf` |
| 31 | `def` | [ofInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/ofint.md) | 315 | `declaration-track:37f37301aad5b0b6a411fe621d62e3ef753f3fbcdbd46f0ec389de9b781e2a06` |
| 32 | `def` | [numeral?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/numeral.md) | 327 | `declaration-track:80f78f988894db33754a251452a5f38dac4ac1e6244207313fe53c8fb77a184d` |
| 33 | `def` | [zero?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/zero.md) | 341 | `declaration-track:0f0419123d6ec6498431d830cf1bdb272bb94ca5cc142cc7bb1ab867d92fb88a` |
| 34 | `def` | [ne?'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/ne.md) | 348 | `declaration-track:48579bdbc9c7c375c5ddd15517ba383c2f10689cf8fe58e37061f54b8ddd5e39` |
| 35 | `def` | [le?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/le.md) | 354 | `declaration-track:59e28ea1de48c30f8d1ad9d52bf83d98f4d2fa41661df10b96c208bfa4de604e` |
| 36 | `def` | [lt?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/lt.md) | 361 | `declaration-track:d2373ddc37fc4955abcd2de600d293dffaba587fd2f222a1286ec44f5efb56e4` |
| 37 | `def` | [sides?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/sides.md) | 370 | `declaration-track:da943ab56cc16328d74f088eeb90d70df442413808e6e478ab2d37bbc7731f88` |
| 38 | `def` | [isSorryAx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/issorryax.md) | 383 | `declaration-track:d3013137939ff73829967d93c61a64e7e4e40e5e0ee2a1b2b1a10fa92b1d051d` |
| 39 | `def` | [modifyAppArgM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/modifyappargm.md) | 391 | `declaration-track:1c9c6bcc729f9eb6fcbf67ddb41607e50991279dcb2d74deb01a102d87b9d1d8` |
| 40 | `def` | [modifyRevArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/modifyrevarg.md) | 396 | `declaration-track:01bec5601b96cc725a36c215e31ac514567891466c04e9e527659028f5a1689f` |
| 41 | `def` | [modifyArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/modifyarg.md) | 403 | `declaration-track:51db06f28b7465d6459e6a67ac0be957fb67486d017ec930dfc5155ce2056b87` |
| 42 | `def` | [setArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/setarg.md) | 408 | `declaration-track:f292a57abb3070cda7a5cdc3afb0cc6e916ab4859f3b79688787560d239916da` |
| 43 | `def` | [getRevArg?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/getrevarg.md) | 411 | `declaration-track:0adf794e30f644b017c346af9ea4a2b0dbe5456780b2521f370b251fbfd7bccf` |
| 44 | `def` | [getArg?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/getarg.md) | 417 | `declaration-track:b9e039f7aa2f8bcc2640cfd31d633201dd070dc4688cf954df019460c70d8821` |
| 45 | `def` | [modifyArgM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/modifyargm.md) | 422 | `declaration-track:fe1093e531979fbbcd93e3d7743aba191d9d265af3010eefaecd91219bf4c43f` |
| 46 | `def` | [renameBVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/renamebvar.md) | 429 | `declaration-track:ee5b7f007e14ea0b5960c493bdb558ed1fb649a488f6417462e9edb1c3f4ab0d` |
| 47 | `def` | [getBinderName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/getbindername.md) | 442 | `declaration-track:a69443ef507a0d253e9abc703ff04fca4c6dad6a2e131e18e5323f5cda6a9f26` |
| 48 | `def` | [mapForallBinderNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/mapforallbindernames.md) | 448 | `declaration-track:c235e2f63b99ee4627e184fdcf4ae85fc62c40a65d94d325789a1dbfecf64966` |
| 49 | `def` | [mkDirectProjection](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/mkdirectprojection.md) | 454 | `declaration-track:115ff19cbd178b27fb001e24927f9b2e9f25f44fc955700289f4d86085b6ce51` |
| 50 | `def` | [mkProjection](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/mkprojection.md) | 463 | `declaration-track:a34d1a3cf747102e941a8eb29b49391d4080b3c3d488df6324e7336117f02785` |
| 51 | `def` | [reduceProjStruct?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/reduceprojstruct.md) | 478 | `declaration-track:d5b3ad1ebf0d7dccd8711208d9fb506a8d7e86e2ce30dd589d8a41f999875bf1` |
| 52 | `def` | [containsConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/containsconst.md) | 501 | `declaration-track:31d66a33e1644f520b38b6a61242e5f027905a0eecb9871829a0a28bcbbd891b` |
| 53 | `def` | [forallNot_of_notExists](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/forallnot-of-notexists.md) | 508 | `declaration-track:b3458fd70edf451d1846da3f24b92e004342755e4d1f53fd1b5bd96d024a2e16` |
| 54 | `def` | [getFieldsToParents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprBasicPublic.lean/declarations/getfieldstoparents.md) | 539 | `declaration-track:1851ffb73ebf45ea9ece9a679c6d77fdc8ac76420d1c72b42851956b0cf4e7eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=233e6ac28aeb90c41f397825bf7c05a4c09aae6659bed5ba1ac00a0af3c81a9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b82e9ae20521997c0d16e8ddfba4fe205bac92d5f11a4e9dc7d6231c5d08987.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b82e9ae20521997c0d16e8ddfba4fe205bac92d5f11a4e9dc7d6231c5d08987.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

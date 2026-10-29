# Verification target: Fixed Params Namespaced Public Info

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40a8b5d26013b73ac5fa85ff0e020f1e3b240148",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40a8b5d26013b73ac5fa85ff0e020f1e3b240148`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Info](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/info.md) | 73 | `declaration-track:c861b744a6ee4eaaf886c9941156a145ca155992677b01b98ba55cceb33951f4` |
| 2 | `def` | [Info.init](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/info-init.md) | 95 | `declaration-track:e681f8bbe302df7416781410c862aa374801203145fb3307589f804522ea84e8` |
| 3 | `def` | [Info.addSelfCalls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/info-addselfcalls.md) | 100 | `declaration-track:864e4cbf320f1d23252575474241b3785d2ccd362d9aba151b97c20aa8e630b0` |
| 4 | `def` | [Info.mayBeFixed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/info-maybefixed.md) | 109 | `declaration-track:89e8294616acc1ca3a4fa0a43c775dc8aaf5f4b97d7d975557dbac266386b5fe` |
| 5 | `def` | [Info.setVarying](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/info-setvarying.md) | 115 | `declaration-track:d23896e18cec38c4064f5ab19d341b40c0210beb8da4a56dcac906453a1c2ae4` |
| 6 | `def` | [Info.getCallerParam?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/info-getcallerparam.md) | 131 | `declaration-track:3b1ea4cc1e1ea7e558cbae8c9a511d1a2196be8f8d5f54c3848af361064355ba` |
| 7 | `def` | [Info.setCallerParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/info-setcallerparam.md) | 137 | `declaration-track:a9ab1549d75ee1a1ff3394226940f24bd42c0722dac66fec865dcec0c5dd8a66` |
| 8 | `def` | [Info.format](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/info-format.md) | 173 | `declaration-track:b915c232d0384d69c5168eb1a4546bff4942502f1b4ba3578b6cee9b1b0210a7` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/instance.md) | 182 | `declaration-track:ee32420316a5a8c4f7c48b8ced9a19131b95f23b7788189777eb4806b91e4411` |
| 10 | `def` | [getParamRevDeps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/getparamrevdeps.md) | 188 | `declaration-track:e3ad7487bdbed92222af36a381005190019ae64b11f193e1b86a0a8835b1e4cd` |
| 11 | `def` | [getFixedParamsInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/getfixedparamsinfo.md) | 199 | `declaration-track:c45a850d0dcde32e16ca696e5a02abfc977fe7d78c97a9e2c5589627e6563bfd` |
| 12 | `abbrev` | [FixedParamPerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperm.md) | 258 | `declaration-track:510f4a1f72562651a74d2fe444d0dce62f0a7ace13f0c80dbe71282da724e735` |
| 13 | `structure` | [FixedParamPerms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperms.md) | 264 | `declaration-track:2cab170e37a3c42ce1ab808e39b36797953f85b60248f90d4301a66764e08727` |
| 14 | `def` | [getFixedParamPerms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/getfixedparamperms.md) | 279 | `declaration-track:7706085a8760a19a1f6ee085ca63b07904cad8bb9fbfa53b5bb0449c691efb1b` |
| 15 | `def` | [FixedParamPerm.numFixed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperm-numfixed.md) | 312 | `declaration-track:bf80aa827adac9f7e73081a84087777ef39c90996f5d726a24c0a5bff1159f46` |
| 16 | `def` | [FixedParamPerm.isFixed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperm-isfixed.md) | 315 | `declaration-track:ba69f020f917dab03d2224a2a5e91dfa2174bbe92d22d3575179189a416aba79` |
| 17 | `def` | [FixedParamPerm.forallTelescopeImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperm-foralltelescopeimpl.md) | 322 | `declaration-track:e78e185a423c7b1706c52f430b21c597f350c1d3821876e3449c0296874f39a0` |
| 18 | `def` | [FixedParamPerm.forallTelescope](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperm-foralltelescope.md) | 342 | `declaration-track:05f5053aee6ad2c8891483b65420f897a8e18ae99e50225e8163c31b25406039` |
| 19 | `def` | [FixedParamPerm.instantiateForall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperm-instantiateforall.md) | 350 | `declaration-track:52b4934fe365f99803ba684225177f31fc804c70925ad5ee6aef6850feda8672` |
| 20 | `def` | [FixedParamPerm.instantiateLambda](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperm-instantiatelambda.md) | 369 | `declaration-track:41d6aa6be85a045e7e20e238ec2aec7c206d740e0d68c753101cbe15508648e8` |
| 21 | `def` | [FixedParamPerm.pickFixed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperm-pickfixed.md) | 391 | `declaration-track:553f518b377bf0f0eec97803d0c00d90505be32122fe36c31327638d914f9d76` |
| 22 | `def` | [FixedParamPerm.pickVarying](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperm-pickvarying.md) | 411 | `declaration-track:ca2bdfb991af20ffd4ec1c6fb0b7a736cfbe755fa16136e17c76c58fca6d7b54` |
| 23 | `def` | [FixedParamPerm.buildArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperm-buildargs.md) | 423 | `declaration-track:67361fc46d8590ee6e4c9d9a2293c04040d932609de2b16440099e8f18e15988` |
| 24 | `def` | [FixedParamPerms.fixedArePrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperms-fixedareprefix.md) | 448 | `declaration-track:5cb01910704aa00a39a5d0548414e73b5226bc1b2bbd97e2ceca39c81e1563b5` |
| 25 | `def` | [FixedParamPerms.erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/fixedparamperms-erase.md) | 462 | `declaration-track:5be0ee2d9cebfacefad8df7552cfdacc7eec86b7dcd40e70805d50d3895d7968` |
| 26 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FixedParamsNamespacedPublicInfo.lean/declarations/builtin-initialize.md) | 507 | `declaration-track:00ba73fba72f3cfa831658cc56fee4c34da86ce74e9597813a46958680086148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19e6dfba12dd4d24ab625cd64f82db03250467200d152495d427c3d8edf5c2b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

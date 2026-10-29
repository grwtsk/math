# Verification target: Have Telescope Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ea9e0bcbdb69927c2266dfc8468a69b9927cd1a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant0e7dfb60344bf4734a6184a5521daf0604ea5df5c28ef0e8cb154272db7c8789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ea9e0bcbdb69927c2266dfc8468a69b9927cd1a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant0e7dfb60344bf4734a6184a5521daf0604ea5df5c28ef0e8cb154272db7c8789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant0e7dfb60344bf4734a6184a5521daf0604ea5df5c28ef0e8cb154272db7c8789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.CollectFVars` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectLooseBVars` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 17; external provider; requires a separately pinned dependency.
- `Init.While` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HaveInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/declarations/haveinfo.md) | 33 | `declaration-track:78ec72eaaeedc622b900deacbe6a247d8844110b6861bf46a9d6e5db18487d11` |
| 2 | `structure` | [HaveTelescopeInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/declarations/havetelescopeinfo.md) | 71 | `declaration-track:8c534815545eff43b107aa1de2982460077c58e425bb2fca65e08d567e1461e1` |
| 3 | `def` | [getHaveTelescopeInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/declarations/gethavetelescopeinfo.md) | 95 | `declaration-track:79784b909c11af788d6b3f2c3bf843ce74620adeea264e109509dc7adda60cee` |
| 4 | `def` | [HaveTelescopeInfo.computeFixedUsed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/declarations/havetelescopeinfo-computefixedused.md) | 140 | `declaration-track:2ad864fdf82ddb02259c9341f2cf883ed264382af80c5d2924c0a6bf152d39b1` |
| 5 | `structure` | [SimpHaveResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/declarations/simphaveresult.md) | 170 | `declaration-track:bfac8045302ca852dbaeed29490d651ac83d219eaa5841d25db94bdaaa0ff7ef` |
| 6 | `def` | [simpHaveTelescopeAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/declarations/simphavetelescopeaux.md) | 217 | `declaration-track:3927b8229c7110bb854975cb41f14b6d9fbbc8ec13e998080eb14d8fd831749b` |
| 7 | `inductive` | [ZetaUnusedMode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/declarations/zetaunusedmode.md) | 343 | `declaration-track:059c5fe7670833baed8c486b7d8f2c8a014ae2766976169c671f109b05df906d` |
| 8 | `def` | [zetaUnused](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/declarations/zetaunused.md) | 352 | `declaration-track:1e0bc0c609424ae1315a143d41f7e6747d0bfda60b511409dc538034aa71c818` |
| 9 | `def` | [SimpHaveResult.toResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/declarations/simphaveresult-toresult.md) | 375 | `declaration-track:c18ebf2bc9ed9c0d8d491e06c8c4c33e04144a8e15ae52fdd8162763f77e9836` |
| 10 | `def` | [simpHaveTelescope](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/HaveTelescopeNamespacedPublic.lean/declarations/simphavetelescope.md) | 462 | `declaration-track:107f291b02c14618505e047b92d66ba346d736d90b8deaec0bf5f572be01f84c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c12e6d56c8d66c6d49ea7f73eba4951b54fc1611530d9dae1dfd338f64e5685e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant0e7dfb60344bf4734a6184a5521daf0604ea5df5c28ef0e8cb154272db7c8789.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant0e7dfb60344bf4734a6184a5521daf0604ea5df5c28ef0e8cb154272db7c8789.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

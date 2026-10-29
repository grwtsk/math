# Verification target: Mor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0943135b5d13b5a3adae23214b7283b0fb3c9bb2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Variant93d0afad25b973da71ae12d4527e74593d54ac8ab8d4aa02042500682ae10962.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0943135b5d13b5a3adae23214b7283b0fb3c9bb2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Variant93d0afad25b973da71ae12d4527e74593d54ac8ab8d4aa02042500682ae10962.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Variant93d0afad25b973da71ae12d4527e74593d54ac8ab8d4aa02042500682ae10962.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.FunLike.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.ToBatteries` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isCoeFunName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/iscoefunname.md) | 32 | `declaration-track:5311f9f59a41d7e246e5678f978ad46de2bb7c936da5a8daabf3fb5ed231c723` |
| 2 | `def` | [isCoeFun](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/iscoefun.md) | 37 | `declaration-track:2cb6780e4fe0bff2e3e0dd2bc0bf969672d09868b8e23b63cb661d80b002d62a` |
| 3 | `structure` | [App](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/app.md) | 43 | `declaration-track:5043aa9f1330efd2f288aa925adf66ba84a0ecd6ba45258a13388708588ea83a` |
| 4 | `def` | [isMorApp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/ismorapp.md) | 52 | `declaration-track:27edb5123466383a9a6816b072838c2224cf2f9b40c5261a5724c2682117c5c3` |
| 5 | `def` | [whnfPred](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/whnfpred.md) | 66 | `declaration-track:d1397893e0b8788d44a0f8d98fade175eb21c05b9c011188128394c68d15d143` |
| 6 | `def` | [whnf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/whnf.md) | 91 | `declaration-track:a004f0273cdb901ec7d9d86529efdb1935150e2fe5547873f847bbaf047d0788` |
| 7 | `structure` | [Arg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/arg.md) | 96 | `declaration-track:2993a8c7dbfef3863a9f980b3ede74886744973cd733255ba71a46e978c939d9` |
| 8 | `def` | [app](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/app-source-edition-2.md) | 104 | `declaration-track:55e16b9f2d2723ad6b46aa04c0d140aa8aa276bc64cb0ec97505ff3fd7160a6a` |
| 9 | `def` | [withApp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/withapp.md) | 111 | `declaration-track:a621039fad46d0bb1f07374ec3c605fe156e9322e87ca9de5ec5daa210ab9854` |
| 10 | `def` | [getAppFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/getappfn.md) | 139 | `declaration-track:78e70737ba7373396bed671bb96c0faee33e81f2450db0f742108ad3b1133da6` |
| 11 | `def` | [getAppArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/getappargs.md) | 152 | `declaration-track:83c567431295dec2242317b49455c18079bf0c265255f9d92f049e987ee2d91c` |
| 12 | `def` | [mkAppN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Mor.lean/declarations/mkappn.md) | 155 | `declaration-track:3b509a1ba1804d5ace3f8b0b761b004924ddf1248f1990ebabb3dbad04c38d38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf08f99fcb67a8a9a5c18c56737cccc72247c983c695d4432b30ca0052b7c46e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Variant93d0afad25b973da71ae12d4527e74593d54ac8ab8d4aa02042500682ae10962.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Variant93d0afad25b973da71ae12d4527e74593d54ac8ab8d4aa02042500682ae10962.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

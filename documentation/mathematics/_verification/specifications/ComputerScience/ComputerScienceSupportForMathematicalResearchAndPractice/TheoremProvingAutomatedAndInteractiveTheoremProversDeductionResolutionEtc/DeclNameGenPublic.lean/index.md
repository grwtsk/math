# Verification target: Decl Name Gen Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b066885af07612d0abc58f0d8e139677ac422f41",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b066885af07612d0abc58f0d8e139677ac422f41`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Modify` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getParentProjArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/getparentprojarg.md) | 44 | `declaration-track:900994a7e475fe7cc30ea2587ef1ccbf275e0e6d6858c0472e1e276c4930a6fe` |
| 2 | `def` | [winnowExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/winnowexpr.md) | 58 | `declaration-track:ad2ec8649de169d038b53a93526cd9ad5732e0eb6153dcd4de6d79d581c3d12c` |
| 3 | `structure` | [MkNameState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/mknamestate.md) | 109 | `declaration-track:996915c82d7b29c03c23f9201fabf9bf6c86af0606040f31875a22e7ccb7bb96` |
| 4 | `abbrev` | [MkNameM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/mknamem.md) | 118 | `declaration-track:3ee5af43278a014c4ceced5ac6a2849b5b437c011f7a90ecabeb311a19a78a60` |
| 5 | `def` | [mkBaseNameCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/mkbasenamecore.md) | 125 | `declaration-track:869c0004c76a2492d30c7182dab8ac12b6c46040eee3c9b19d7419d431e2d1ec` |
| 6 | `def` | [mkBaseNameAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/mkbasenameaux.md) | 158 | `declaration-track:ab6e19a43a6c4383dd51d7e93ca310819a105199ba8a5ae28586de4c1b4cf155` |
| 7 | `def` | [visitNamespace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/visitnamespace.md) | 176 | `declaration-track:4b8af8de3e0d6746efe068575a130b71c78dcd3d2e27a65d99b13e125de44a57` |
| 8 | `def` | [mkBaseName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/mkbasename.md) | 196 | `declaration-track:c471cb7bba26385d38dd73530666eadfa915cb29a42b1a5e65607e6a763e7288` |
| 9 | `def` | [moduleToSuffix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/moduletosuffix.md) | 205 | `declaration-track:423a1ecd6b91f6a1c4ad17a921c9567bc8eb01ed9b0012325492f196d6907535` |
| 10 | `def` | [mkBaseNameWithSuffix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/mkbasenamewithsuffix.md) | 219 | `declaration-track:43a9942f24b57635e18db929fd2d1bf7dac6678b16331fb2c00319e840484c79` |
| 11 | `def` | [mkBaseNameWithSuffix'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/mkbasenamewithsuffix-source-edition-2.md) | 243 | `declaration-track:6a135961e524093720a7c8ec13307e487404987b76a2f87c853888e0836d5906` |
| 12 | `def` | [mkInstanceName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenPublic.lean/declarations/mkinstancename.md) | 262 | `declaration-track:dd96d0b016c899b7fbae93349086abecca4b9908214b23f3d7550130b16be109` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f24dcdb301d0db60be9c8c572ad647f1680ba7010649410ab875f1a441c2999a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

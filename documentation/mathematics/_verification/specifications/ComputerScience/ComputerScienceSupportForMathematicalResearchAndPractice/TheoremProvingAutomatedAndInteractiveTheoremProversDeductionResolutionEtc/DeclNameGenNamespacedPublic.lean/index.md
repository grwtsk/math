# Verification target: Decl Name Gen Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "340fcf95d8c446b0e503c8b3253106c48fcb681d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variantd7e6b6ba47f1009e48f3b2c71d746c9db501442aa63b890584d2174e333cd010.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `340fcf95d8c446b0e503c8b3253106c48fcb681d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variantd7e6b6ba47f1009e48f3b2c71d746c9db501442aa63b890584d2174e333cd010.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variantd7e6b6ba47f1009e48f3b2c71d746c9db501442aa63b890584d2174e333cd010.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Modify` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getParentProjArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/getparentprojarg.md) | 52 | `declaration-track:d446812794e6fbcaad1dd6d069e84d5e21bb6bfc406e905c8d7d2389c295592b` |
| 2 | `def` | [winnowExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/winnowexpr.md) | 66 | `declaration-track:471f07001cedbf0993844c62fe30026807d04f4aae36c8f3b747803c15b077ec` |
| 3 | `structure` | [MkNameState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/mknamestate.md) | 117 | `declaration-track:49f8c2e1f5b6c236c0ebf4562ac818a24b54078797c2c3c4f104dc0bc3423987` |
| 4 | `abbrev` | [MkNameM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/mknamem.md) | 126 | `declaration-track:95cf4910d0958d02e5ff40c4051c2292d83d08cae2ca3455673e3eaa580ccfae` |
| 5 | `def` | [mkBaseNameCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/mkbasenamecore.md) | 133 | `declaration-track:c6c69645d8f8b1a9cd24b977807e309c4b57e17069cba0b95075d07ba579c9ed` |
| 6 | `def` | [mkBaseNameAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/mkbasenameaux.md) | 166 | `declaration-track:a3e74b05b0ed920cee5fda63b7cbc13a6f64cb9581e5b1260b543773962e4b40` |
| 7 | `def` | [visitNamespace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/visitnamespace.md) | 184 | `declaration-track:1a57c6321299e9d3ef12fcb9b52915abc1ffe58c7e814374cfdc7bd18725b80d` |
| 8 | `def` | [mkBaseName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/mkbasename.md) | 204 | `declaration-track:aab55e6ca9774d7a0e1096765c690ab3e006859c465962b082fa9d3370a10bbc` |
| 9 | `def` | [moduleToSuffix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/moduletosuffix.md) | 213 | `declaration-track:35783468bc7255afd28272945e2057b23c892b534f8df93d6d12e0963bc179c8` |
| 10 | `def` | [mkBaseNameWithSuffix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/mkbasenamewithsuffix.md) | 227 | `declaration-track:32a4b36078d9d8c259da6e5e5ebdc2bdbd60ef5e336e13047b05d9880e45454e` |
| 11 | `def` | [mkBaseNameWithSuffix'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/mkbasenamewithsuffix-source-edition-2.md) | 251 | `declaration-track:d3b68986d3e4d7bc663d45f7f34c7f0083404745c81f1a3b8aa4f61f3e00082c` |
| 12 | `def` | [mkInstanceName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclNameGenNamespacedPublic.lean/declarations/mkinstancename.md) | 270 | `declaration-track:6af1d393c0f7d484c955e1f29ff8f308774aaf782c200e003e4f3438c9541081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16f91f84175baee650bb9060db219cb0de556180e97f8c30fa4c36eb13cad20f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variantd7e6b6ba47f1009e48f3b2c71d746c9db501442aa63b890584d2174e333cd010.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variantd7e6b6ba47f1009e48f3b2c71d746c9db501442aa63b890584d2174e333cd010.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Subdiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6a6700a430de62391daa9ef13940fd0aacffecc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6a6700a430de62391daa9ef13940fd0aacffecc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Bound` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.BoundVerify` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proveUpperBoundWithSubdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/declarations/proveupperboundwithsubdiv.md) | 27 | `declaration-track:20664243f0695f4f177ba2e2eb785a5d251923fda813f795fff7f3d71d3f2b0b` |
| 2 | `def` | [proveLowerBoundWithSubdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/declarations/provelowerboundwithsubdiv.md) | 102 | `declaration-track:240ffc360ca7f691d4f79420f0a6034527fb7ad6376234a89cb6383701ef65a2` |
| 3 | `def` | [proveStrictUpperBoundWithSubdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/declarations/provestrictupperboundwithsubdiv.md) | 177 | `declaration-track:bd3d321a68100777913733088c5a2037e5fdcecb9c9b886da4e8481b2cc4c35f` |
| 4 | `def` | [proveStrictLowerBoundWithSubdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/declarations/provestrictlowerboundwithsubdiv.md) | 252 | `declaration-track:5043d996c85c44bd8fb6f4e0b55ac52fa38904c4a6a632a5d3333588dc206e48` |
| 5 | `def` | [proveForallLeSubdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/declarations/proveforalllesubdiv.md) | 327 | `declaration-track:7c427c751cc982684046443e14d0ab3388b59a9aea29d8fdb3640facab53e166` |
| 6 | `def` | [proveForallGeSubdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/declarations/proveforallgesubdiv.md) | 371 | `declaration-track:ff12c0c34b37947c08c911d5ea32f509e599a40d822d13a8d99c420ab074ecd7` |
| 7 | `def` | [proveForallLtSubdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/declarations/proveforallltsubdiv.md) | 415 | `declaration-track:109b6fae1ba1e7755e2bcd1159f51db0696875107f3c2ecd291bcd4baa2f5e37` |
| 8 | `def` | [proveForallGtSubdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/declarations/proveforallgtsubdiv.md) | 461 | `declaration-track:42904f43435c3b6b39465ff298967db135f0c4f6b03b64246c983539cd02d6dd` |
| 9 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Subdiv.lean/declarations/elab.md) | 505 | `declaration-track:322c0e9a881a4f61b4420389cf9d18a6cb88ad75091ab9284cdf825a5264be02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a86a9f5b4757d5f04e0351bb2652015c46e7fcd8597ee8cbda1b3f3c4d3af23c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

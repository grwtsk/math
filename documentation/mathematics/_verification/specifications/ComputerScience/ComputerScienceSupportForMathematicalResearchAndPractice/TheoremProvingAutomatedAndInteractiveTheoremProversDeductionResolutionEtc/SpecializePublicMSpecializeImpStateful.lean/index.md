# Verification target: Specialize Public MSpecialize Imp Stateful

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6ad00fa378ad5016a982967eb8f2b3700f992ff",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicMSpecializeImpStateful.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicMSpecializeImpStateful.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6ad00fa378ad5016a982967eb8f2b3700f992ff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Do.ProofMode.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.Focus` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicMSpecializeImpStateful.lean/declarations/initialize.md) | 20 | `declaration-track:4b507373a45191338a77d93b0296fa8468753ba4b56936da387b62c3c68c6cf3` |
| 2 | `def` | [mSpecializeImpStateful](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicMSpecializeImpStateful.lean/declarations/mspecializeimpstateful.md) | 22 | `declaration-track:77ca58b33552682e16ccba6bd93ee532b0b1c646cb37e57e8da3557d4a17c199` |
| 3 | `def` | [mSpecializeImpPure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicMSpecializeImpStateful.lean/declarations/mspecializeimppure.md) | 44 | `declaration-track:a22db9f94972a664c7de61a8db4e4db36e3e059cd2c3ea56d9bba03aab9f8b4a` |
| 4 | `def` | [mSpecializeForall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicMSpecializeImpStateful.lean/declarations/mspecializeforall.md) | 72 | `declaration-track:c57d6f6837d7b74195c0bf4f3f6465d61d992c85210604da4b7fb26c153ddaaf` |
| 5 | `def` | [elabMSpecialize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicMSpecializeImpStateful.lean/declarations/elabmspecialize.md) | 87 | `declaration-track:214c59fd98ec2ff7b400b881ec5bc2331444fdba937fcdce9c57d54964a2fda4` |
| 6 | `def` | [elabMspecializePure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicMSpecializeImpStateful.lean/declarations/elabmspecializepure.md) | 131 | `declaration-track:dbe62445a79777bc67348af2e0c988cf69a30a24cf2d46ca2991c6a7d46d565e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4548dba0996e771ba54734b6033e871c57cfbefdbdde6a14167f823a46f3d911 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

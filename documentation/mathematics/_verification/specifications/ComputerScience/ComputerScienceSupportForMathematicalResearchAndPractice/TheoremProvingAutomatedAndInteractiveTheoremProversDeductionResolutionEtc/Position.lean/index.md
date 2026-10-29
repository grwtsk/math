# Verification target: Position

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b8946efac3f132b8a3796c03e3a98e6b256b3e4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantf26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Position.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Position.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b8946efac3f132b8a3796c03e3a98e6b256b3e4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantf26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantf26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Syntax` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Data.Lsp.Utf16` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.FileMap.utf8RangeToLspRange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Position.lean/declarations/lean-filemap-utf8rangetolsprange.md) | 10 | `declaration-track:e2fb243c021c72d25afaac2bc650dcdb7a1f22e60af5a717df43e443c0966c0c` |
| 2 | `def` | [Lean.FileMap.rangeOfStx?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Position.lean/declarations/lean-filemap-rangeofstx.md) | 14 | `declaration-track:eaa8fdbfe66329121cfe23919b1a37b7693522895f03523b17dc71f0bf758c41` |
| 3 | `def` | [Lean.FileMap.ofPosition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Position.lean/declarations/lean-filemap-ofposition.md) | 18 | `declaration-track:7abfcb706c3c24c7c46007181bb47c8fd700a0f0fdca4a3ab9807a3beb209d4b` |
| 4 | `def` | [Lean.findLineStart](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Position.lean/declarations/lean-findlinestart.md) | 29 | `declaration-track:3518d2d2ca0b08fd6e69f67ab096aba57fb551305632cb0dc2d2258516c02daa` |
| 5 | `def` | [Lean.findIndentAndIsStart](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Position.lean/declarations/lean-findindentandisstart.md) | 38 | `declaration-track:3ee1dfafe7e8bd2222bcb966dbcc64c9f41c255ebaa20b5b7d2571e2002e7ed9` |
| 6 | `def` | [Lean.Syntax.ofRange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Position.lean/declarations/lean-syntax-ofrange.md) | 44 | `declaration-track:887da03ac0813d1c7d7f9eab58c434c09137a71555d3917691e06106d5b55bd7` |
| 7 | `def` | [Lean.FileMap.lineStart](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Position.lean/declarations/lean-filemap-linestart.md) | 48 | `declaration-track:c7287d0626c2f052f71c60b16444ba3d1f86d0b37b41e2cb89bb7b40bb863ab4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=941dacd21d3f6d8df50ad1b97ffe0a18ae37881e2bbefac6d6e76a0e169b3b28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantf26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantf26ca6b3468ff66d62cf31929921d1cc945b4b423ccef48b8ea77040cb372ba2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

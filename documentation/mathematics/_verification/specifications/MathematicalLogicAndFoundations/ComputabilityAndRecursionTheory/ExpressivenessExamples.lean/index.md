# Verification target: Expressiveness Examples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ace205f213b8bc36e6ab69fea25421dbd3d533ef",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressivenessExamples.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressivenessExamples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ace205f213b8bc36e6ab69fea25421dbd3d533ef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Presentation.Expressiveness` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toyProgram](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressivenessExamples.lean/declarations/toyprogram.md) | 15 | `declaration-track:bf4477486308de10263768dcb367a5d097409b49ff324cb5aa7a13d91d8698a0` |
| 2 | `def` | [toggleRun](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressivenessExamples.lean/declarations/togglerun.md) | 20 | `declaration-track:4ccce28ceb3e38afb1246c6f0e9cbd2e50f775c2a35c113deaaca14ef0689422` |
| 3 | `def` | [toyAccepts](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressivenessExamples.lean/declarations/toyaccepts.md) | 25 | `declaration-track:abadadb67a980c209adef8c3cd230f35896d74de1681d5b4ee350311db78dac4` |
| 4 | `def` | [toyMachineSemantics](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressivenessExamples.lean/declarations/toymachinesemantics.md) | 29 | `declaration-track:780695a0ff4cfe0ed6e31c9aebf6dd37d9669c66c3438c4ac4b00f1f17873a7d` |
| 5 | `def` | [toyTuringCompletenessWitness](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressivenessExamples.lean/declarations/toyturingcompletenesswitness.md) | 38 | `declaration-track:4a35eb9bd055c8cb12ea878cfbea78ddb6da237efee21e49e3ec3fa0efcea025` |
| 6 | `theorem` | [toy_simulation_routed_through_realization](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressivenessExamples.lean/declarations/toy-simulation-routed-through-realization.md) | 45 | `result-track:26f60c2355076a2dd2e4148475df47ecbe715595f4333e995cb8351b4d6aa653` |
| 7 | `theorem` | [toy_program_syntax_not_turing_completeness_authority](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressivenessExamples.lean/declarations/toy-program-syntax-not-turing-completeness-authority.md) | 52 | `result-track:464904b8ab10f50b3b9407cc1f67beb0a0e33aabe401506fe81e62ba300b4aa3` |
| 8 | `theorem` | [toy_program_syntax_not_machine_semantics_authority](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressivenessExamples.lean/declarations/toy-program-syntax-not-machine-semantics-authority.md) | 57 | `result-track:8c4dbd89a8534088f4a465e187b09dccfec18f25a09046d6871a757064295bbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e9984a84b10df4c4c16e1815a000dc4bc59353a05a494c46148820541cf19bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

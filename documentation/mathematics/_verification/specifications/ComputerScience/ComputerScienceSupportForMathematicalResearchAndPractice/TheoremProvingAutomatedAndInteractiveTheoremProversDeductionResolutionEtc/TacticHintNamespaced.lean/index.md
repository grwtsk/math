# Verification target: Tactic Hint Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "483ecbb8e747cd02423ffed4560bebe1371d0b50",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variantb6b43ba89fab96501f51a9ff691fb07330b6520ff2f192b8aae664e747b5ea74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `483ecbb8e747cd02423ffed4560bebe1371d0b50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variantb6b43ba89fab96501f51a9ff691fb07330b6520ff2f192b8aae664e747b5ea74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variantb6b43ba89fab96501f51a9ff691fb07330b6520ff2f192b8aae664e747b5ea74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.TryThis` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Linter.UnreachableTactic` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Control.Nondet.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FailIfNoProgress` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/initialize.md) | 37 | `declaration-track:23c7b5f9233d3b4ff313b1ea7b252c15b20b96e0859b06e8fff07c50609d577a` |
| 2 | `def` | [addHint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/addhint.md) | 44 | `declaration-track:4c002dd9a50b902fc399d2310d164a497b7ccf55874d5be57b993f216bc09c73` |
| 3 | `def` | [getHints](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/gethints.md) | 48 | `declaration-track:9596d8cb6fee5f84089dd20431c1bb0c2111a1f0e646c23261c6b3293be3f65c` |
| 4 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/elab.md) | 54 | `declaration-track:43ebf1dd289aaa008ffea866d03eab82dc6fa4ded7da40cd99fa6a453c2ec9e4` |
| 5 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/initialize-source-edition-2.md) | 59 | `declaration-track:8a9d2a52bac3ecf17aa01085d3ec093aef69b0b1ea6919f2eab642f1e949df23` |
| 6 | `def` | [suggestion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/suggestion.md) | 69 | `declaration-track:d6ec632d7c86d7bd13ac92fc9539128076b2b2aaa928e2a30e512252882daede` |
| 7 | `def` | [withMessageLog](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/withmessagelog.md) | 88 | `declaration-track:e29b5c195392b93c3f2ad96856e3e9758473c1d979cf9eb788a87499bdeb2a3c` |
| 8 | `def` | [withoutInfoTrees](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/withoutinfotrees.md) | 97 | `declaration-track:9499d37729e00952a53c42d10205ab1df21824d24ac06e7a0e4b4a3a19de3eff` |
| 9 | `def` | [hint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/hint.md) | 111 | `declaration-track:062973907ac3943b4452dc7b48b2ef46f4264ed9e784fa75584f4d934a511a30` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/syntax.md) | 134 | `declaration-track:e2990e19f14b109c970a37fcd060d7be324994e12f3024be0849733747215b64` |
| 11 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticHintNamespaced.lean/declarations/elab-rules.md) | 137 | `declaration-track:0e60d9bc1a4dc8decdd9e62ae5be9efffe0496b85f7b77db39241edcd06aad4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=020a4efa9f624df8ce840a572dbc194db19a0b9607774b61634090ad7b57087a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variantb6b43ba89fab96501f51a9ff691fb07330b6520ff2f192b8aae664e747b5ea74.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variantb6b43ba89fab96501f51a9ff691fb07330b6520ff2f192b8aae664e747b5ea74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

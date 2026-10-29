# Verification target: Linter Deprecated Syntax Linter Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92dbc26217606e8296e27cd8df7bfaacf00f892f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant4a17df538adc2ccf0d450024264971ff630be521b3705dda152dc741a448d033.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterDeprecatedSyntaxLinterNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterDeprecatedSyntaxLinterNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92dbc26217606e8296e27cd8df7bfaacf00f892f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant4a17df538adc2ccf0d450024264971ff630be521b3705dda152dc741a448d033.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant4a17df538adc2ccf0d450024264971ff630be521b3705dda152dc741a448d033.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.style.refine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterDeprecatedSyntaxLinterNamespaced.lean/declarations/linter-style-refine.md) | 51 | `declaration-track:2364ef5f662ccd0f95c62d49f2d5103010d819c118bbf7fd959dc8fde54b4c56` |
| 2 | `register_option` | [linter.style.cases](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterDeprecatedSyntaxLinterNamespaced.lean/declarations/linter-style-cases.md) | 61 | `declaration-track:8c55486d6a4bf9c0285f7fdf3e184de3a0d43a09d8621ea25e35148eb0f8b1cd` |
| 3 | `register_option` | [linter.style.admit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterDeprecatedSyntaxLinterNamespaced.lean/declarations/linter-style-admit.md) | 68 | `declaration-track:e1b279a6ccd05651ef2674ff04b39efd99ab2681bc39bb583ef51d74b3f60f23` |
| 4 | `register_option` | [linter.style.maxHeartbeats](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterDeprecatedSyntaxLinterNamespaced.lean/declarations/linter-style-maxheartbeats.md) | 79 | `declaration-track:80c31839fefe16e99fab4308b44d06ee2c68bf211d2322a58637d04e7f5a7954` |
| 5 | `def` | [getSetOptionMaxHeartbeatsComment](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterDeprecatedSyntaxLinterNamespaced.lean/declarations/getsetoptionmaxheartbeatscomment.md) | 92 | `declaration-track:c0eb7b93f6ec21ade1f4868a1c69c8000f109619653b5a5ee0575e8d490305c6` |
| 6 | `def` | [getDeprecatedSyntax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterDeprecatedSyntaxLinterNamespaced.lean/declarations/getdeprecatedsyntax.md) | 107 | `declaration-track:445ad1846b4bcbd6c57286fa8779c65a4760d563d82cbdd7f5ef6321317a07a1` |
| 7 | `def` | [deprecatedSyntaxLinter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterDeprecatedSyntaxLinterNamespaced.lean/declarations/deprecatedsyntaxlinter.md) | 149 | `declaration-track:5c3fe946a8472bd0f6e518b33083b4c1f49fc71ec698aac44941fd4386fb559c` |
| 8 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterDeprecatedSyntaxLinterNamespaced.lean/declarations/initialize.md) | 172 | `declaration-track:870058e517dc5382e55190d2d6722070c6098ec6b41eaf7b5a61f48a0bfa654b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b048b5af04af5d361303f498cab712c050a29b10e18e43497f667e92ba13ac5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant4a17df538adc2ccf0d450024264971ff630be521b3705dda152dc741a448d033.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variant4a17df538adc2ccf0d450024264971ff630be521b3705dda152dc741a448d033.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

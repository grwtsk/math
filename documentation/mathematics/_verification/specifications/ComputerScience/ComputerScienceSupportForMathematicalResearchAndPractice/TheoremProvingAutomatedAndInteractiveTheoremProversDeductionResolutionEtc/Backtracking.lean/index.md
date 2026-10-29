# Verification target: Backtracking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "984691ce69a73bca2b2d3285b2fc228c502fe71f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Backtracking.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Backtracking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `984691ce69a73bca2b2d3285b2fc228c502fe71f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Util` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Except.emoji](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Backtracking.lean/declarations/except-emoji.md) | 42 | `declaration-track:40726dbcc8972c99a731607dcda04161f65d35f45bdc3608db55318fdee33cfc` |
| 2 | `def` | [List.tryAllM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Backtracking.lean/declarations/list-tryallm.md) | 48 | `declaration-track:df3488f409c8aa2ccdde7c38e3351cd615fa81c7e79e33209fc0c3172c09658d` |
| 3 | `def` | [firstContinuation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Backtracking.lean/declarations/firstcontinuation.md) | 60 | `declaration-track:a22359304d31a5cb6e567d5abc854c3465f2a39aa5027f8fce325e6f6f15f1fc` |
| 4 | `structure` | [BacktrackConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Backtracking.lean/declarations/backtrackconfig.md) | 76 | `declaration-track:ca81a6d5e9005921008002b1d2ae5f63402eaf60f7085189f9e7f38af09c2950` |
| 5 | `def` | [ppMVarIds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Backtracking.lean/declarations/ppmvarids.md) | 100 | `declaration-track:1b6775be5874f45b6fa6f585a978aaf5ad67ca9cf28ab401cd249c8c857b64ef` |
| 6 | `def` | [backtrack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Backtracking.lean/declarations/backtrack.md) | 113 | `declaration-track:85aa17b78e2ace1846e1ab16dfb114750ee770ccf881c4f5a27f6167af567ebe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f529bcfc9b35e9759f82a6745e14456888756a9e5261e6f0f679dd696680a79d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

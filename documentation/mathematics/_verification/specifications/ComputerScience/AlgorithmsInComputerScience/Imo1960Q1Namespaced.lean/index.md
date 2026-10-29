# Verification target: Imo1960 Q1 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0e9ee0035920bc50f92355f6ee37425df0de4ec",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variant31b6c2eee0fedf2f6fc91275b9a9b4fb4a4cf19dd43aa7060ad72c170b14c012.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0e9ee0035920bc50f92355f6ee37425df0de4ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variant31b6c2eee0fedf2f6fc91275b9a9b4fb4a4cf19dd43aa7060ad72c170b14c012.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variant31b6c2eee0fedf2f6fc91275b9a9b4fb4a4cf19dd43aa7060ad72c170b14c012.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Digits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumOfSquares](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/sumofsquares.md) | 35 | `declaration-track:cb074fd08874e18d5dc5ec50fe4a18eeaa056a28440f25e247cf3a725698251f` |
| 2 | `def` | [ProblemPredicate](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/problempredicate.md) | 38 | `declaration-track:3e947b43572f543552f2a44150ac18b5bf174bfda2202a9be7f7dcd8989df803` |
| 3 | `def` | [SolutionPredicate](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/solutionpredicate.md) | 41 | `declaration-track:a9e844ddd78d36bcde2bd7c028674b450e7164d71d86836e389a04ff937e05e3` |
| 4 | `theorem` | [not_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/not-zero.md) | 47 | `result-track:af2042133a5c10f70229102c18b84ca00158b320b1854f847657e2acb91f9862` |
| 5 | `theorem` | [ge_100](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/ge-100.md) | 51 | `result-track:b8de270ee65b374cd25899799c88216f97336a1e0946ef2a524ab8028d6810b0` |
| 6 | `theorem` | [lt_1000](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/lt-1000.md) | 58 | `result-track:1a12993470d04291187bc07e78287984a7250becfc6e18f71e6b5011878d43ae` |
| 7 | `def` | [SearchUpTo](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/searchupto.md) | 68 | `declaration-track:220e4179f23ebc17d01be1fa79d46cf11a5db2aef0296ec35dd81b8f0c566dc8` |
| 8 | `theorem` | [searchUpTo_start](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/searchupto-start.md) | 71 | `result-track:4de12e2a2e879aa602a833966a6233f97bf65684c80427d71adf0eda4ab426af` |
| 9 | `theorem` | [searchUpTo_step](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/searchupto-step.md) | 74 | `result-track:892f657c280d4e93821f2cceb2542e9ddc2e0212d3e93d865414fd91e780ff04` |
| 10 | `theorem` | [searchUpTo_end](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/searchupto-end.md) | 85 | `result-track:be23b92f097815992f955acbc17e6619624ccdec3a80646e178e5ee53f3b9e4e` |
| 11 | `theorem` | [right_direction](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/right-direction.md) | 89 | `result-track:c12be2f667e06ea4d2cb83b5a550bd0ebe2dcde211a2895a89dfc40f278ece24` |
| 12 | `theorem` | [left_direction](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/left-direction.md) | 100 | `result-track:9ba151e54d78c55aa98ae90b193919571976d3ce22088ede75378eb74926af6f` |
| 13 | `theorem` | [imo1960_q1](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Namespaced.lean/declarations/imo1960-q1.md) | 107 | `result-track:af4c6ac9c8d71038d79fda1ce94dbeecaf9e8bd182a9c6dc56e24615014ef225` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b05c7f1fbe7567cceded8f62e366d74a6b32a5d9919a922801952b73001b7ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variant31b6c2eee0fedf2f6fc91275b9a9b4fb4a4cf19dd43aa7060ad72c170b14c012.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variant31b6c2eee0fedf2f6fc91275b9a9b4fb4a4cf19dd43aa7060ad72c170b14c012.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

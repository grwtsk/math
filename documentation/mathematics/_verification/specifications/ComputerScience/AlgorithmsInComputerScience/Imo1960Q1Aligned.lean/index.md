# Verification target: Imo1960 Q1 Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df450b7c95bf40a142da1d1e9251cbf9f95817b5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variantfc130619f4154d3054d27344d63bc1b6c7a6f660e993cd86c5207877682a84aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df450b7c95bf40a142da1d1e9251cbf9f95817b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variantfc130619f4154d3054d27344d63bc1b6c7a6f660e993cd86c5207877682a84aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variantfc130619f4154d3054d27344d63bc1b6c7a6f660e993cd86c5207877682a84aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Digits` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumOfSquares](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/sumofsquares.md) | 29 | `declaration-track:20de5c7419868df5a4425cc1d337a26c209c30310c5b885946bd692310a390b9` |
| 2 | `def` | [ProblemPredicate](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/problempredicate.md) | 33 | `declaration-track:40910350e49b6d892974ab4bb1403ec7d9f7714606b47f61fe54ef21811b7ab9` |
| 3 | `def` | [SolutionPredicate](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/solutionpredicate.md) | 37 | `declaration-track:21b1f55ebc204724ec4abbd697613016e3d4b9412e2e183d1e60933ee3333e55` |
| 4 | `theorem` | [not_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/not-zero.md) | 44 | `result-track:57644eab9e245ece607bed51e043f7a777c2693292dd929716658ce92dd27d49` |
| 5 | `theorem` | [ge_100](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/ge-100.md) | 49 | `result-track:c383f15eafcc31d626c29eaece8e03f02f98c2e879acc4100814745f48581a09` |
| 6 | `theorem` | [lt_1000](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/lt-1000.md) | 57 | `result-track:23eb0e346391cd60b383f8f95f1640397a1c59eb3dc13822f7434924cd176bba` |
| 7 | `def` | [SearchUpTo](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/searchupto.md) | 68 | `declaration-track:37f0801ee1edf01c10d44498026c2b85b15a8be6cc3e0f4f7eaa29a7d264a8b9` |
| 8 | `theorem` | [searchUpTo_start](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/searchupto-start.md) | 72 | `result-track:ad22744672980289d69099caa6655820dbe82a30521d0c72b1b9d241a3bb0fe2` |
| 9 | `theorem` | [searchUpTo_step](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/searchupto-step.md) | 76 | `result-track:a002b63320fccc4ab1107679b1c544d3a9a74235c1b6df5112dda73da62d6f2b` |
| 10 | `theorem` | [searchUpTo_end](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/searchupto-end.md) | 88 | `result-track:be25aff80417c57738504bf4e304455e950ec0a34ca885800cdfc3bdb7c09297` |
| 11 | `theorem` | [right_direction](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/right-direction.md) | 94 | `result-track:bd3d058bf31c1facfa7da85195bec735f4aa592e31fcd79fce73c6e053016003` |
| 12 | `theorem` | [left_direction](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/left-direction.md) | 105 | `result-track:2ebcc029f8f9f49faffce7d709dd8c644c23e78183b4e06b9469d928c26520de` |
| 13 | `theorem` | [imo1960_q1](../../../../../ComputerScience/AlgorithmsInComputerScience/Imo1960Q1Aligned.lean/declarations/imo1960-q1.md) | 114 | `result-track:e5368bf1d0cfb07d0c564abd34a5909ca29032169dfd430bd599eb81d3767d81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad4f81e473802e720dd26622d118b0498dfacb4412e62afb978c50438d70f868 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variantfc130619f4154d3054d27344d63bc1b6c7a6f660e993cd86c5207877682a84aa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1960Q1/Variantfc130619f4154d3054d27344d63bc1b6c7a6f660e993cd86c5207877682a84aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

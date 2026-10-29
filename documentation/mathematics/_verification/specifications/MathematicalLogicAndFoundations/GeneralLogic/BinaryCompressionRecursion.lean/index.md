# Verification target: Binary Compression Recursion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "250de8f0b6b93c7f78cf81a409c5ea83710f330f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryCompressionRecursion/Variant59001e204de7474a7d80454d627222e4986d62b7795c85c6c95a7cac3fdab001.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryCompressionRecursion.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryCompressionRecursion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `250de8f0b6b93c7f78cf81a409c5ea83710f330f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryCompressionRecursion/Variant59001e204de7474a7d80454d627222e4986d62b7795c85c6c95a7cac3fdab001.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryCompressionRecursion/Variant59001e204de7474a7d80454d627222e4986d62b7795c85c6c95a7cac3fdab001.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.RecursiveBoundary` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.Complexity.BinaryMatrixArrangement` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RequiresBacktracking](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryCompressionRecursion.lean/declarations/requiresbacktracking.md) | 20 | `declaration-track:45e7e62c6e69f0f60ddaf26d4048ef2e02aecbe01a3cd0651ec113a7286d1ae8` |
| 2 | `structure` | [BinaryCompressionRecursion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryCompressionRecursion.lean/declarations/binarycompressionrecursion.md) | 32 | `declaration-track:4bc27d4bf59603408e18c14f79e81022590d6d964d73775cc574421e66b84f52` |
| 3 | `theorem` | [glitched_stream_requires_backtracking_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryCompressionRecursion.lean/declarations/glitched-stream-requires-backtracking-if-supplied.md) | 43 | `result-track:eb4438e638b29b250bd0185e05f305c4fe5f552a04ffc99a81c0b6b5ada70764` |
| 4 | `theorem` | [binary_recursion_forbidden_escape_obstructed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryCompressionRecursion.lean/declarations/binary-recursion-forbidden-escape-obstructed.md) | 50 | `result-track:e7751a336575c10e2ac9a7adb5846a1f872e6dd644922e371fde8b4921bcf4cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c862c1555413d4c10c23da2ae54562449fb8ffd4eb9f03536dcf3c75a869b5bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryCompressionRecursion/Variant59001e204de7474a7d80454d627222e4986d62b7795c85c6c95a7cac3fdab001.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryCompressionRecursion/Variant59001e204de7474a7d80454d627222e4986d62b7795c85c6c95a7cac3fdab001.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

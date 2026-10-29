# Verification target: Source Declarations Namespaced Pattern Accumulator Nodup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54f53c830f15f62d9936a0e53de6dc0d887df3ec",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant7b31564d57e6e50da47940616ecb2341f7b29adbe2dfc6c38db0ae46bd45f66c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54f53c830f15f62d9936a0e53de6dc0d887df3ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant7b31564d57e6e50da47940616ecb2341f7b29adbe2dfc6c38db0ae46bd45f66c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant7b31564d57e6e50da47940616ecb2341f7b29adbe2dfc6c38db0ae46bd45f66c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72537465702e6c65616e` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pattern_accumulator_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-nodup.md) | 30 | `result-track:da38e69f2afd05a0482476d5fb24cb111a7f9ac2fce1f0fac2e517fb831c0df9` |
| 2 | `theorem` | [pattern_accumulator_member_properties](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-member-properties.md) | 36 | `result-track:0a5227f3fee1fa7010f7981879d1da5268e2d36f861e409826c24ae02cc5930c` |
| 3 | `theorem` | [pattern_accumulator_member_not_source](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-member-not-source.md) | 49 | `result-track:87575c6b575dd89ec6e32c2ec98a3a735aaf130d25b90153181ec41b98c2ac30` |
| 4 | `theorem` | [pattern_accumulator_member_avoids_xs](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-member-avoids-xs.md) | 57 | `result-track:de625c471bc3f29bda646bfdb9bbe22196725a9e1461e365dcb3deeb748d62d9` |
| 5 | `theorem` | [pattern_accumulator_member_avoids_forbidden](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-member-avoids-forbidden.md) | 65 | `result-track:a7697292800383722003cb2e88fa53c02482837ab144cbc931af4eea2c2c757a` |
| 6 | `theorem` | [pattern_accumulator_member_nonadjacent_source](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-member-nonadjacent-source.md) | 73 | `result-track:0acedd351be7c02ad160da2f19aa4ec7c439b698575ec561a4d69c8bcea7fa6e` |
| 7 | `theorem` | [pattern_accumulator_member_copies_pattern](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-member-copies-pattern.md) | 81 | `result-track:322fb6924e0e43e88c09c6bde6a116de0df0514c09db443e29566f6215bd9f43` |
| 8 | `theorem` | [pattern_accumulator_member_core_bundle](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-member-core-bundle.md) | 90 | `result-track:110a4eda92fae5fb697c36d76cc0bd406d47e80a3798c8eaf84a6eff45e276f1` |
| 9 | `theorem` | [pattern_accumulator_member_avoidance_bundle](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-member-avoidance-bundle.md) | 108 | `result-track:16b78d08fd2093bbb9a285f8c6c40d0100bfabfbc5c52105f01075f82b47e23e` |
| 10 | `theorem` | [pattern_accumulator_member_edge_bundle](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-member-edge-bundle.md) | 119 | `result-track:49002020d61f8096cc5cde8db51d018982210e8c9b7cb4cd7ef9bdf15a06bbf5` |
| 11 | `theorem` | [pattern_accumulator_member_pair_bundle](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceDeclarationsNamespacedPatternAccumulatorNodup.lean/declarations/pattern-accumulator-member-pair-bundle.md) | 131 | `result-track:13d9331a55f55641000a2313c9bd492d7686f66b18a1041bd233840352d544e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a378988a513c24a7f246dd457766650d58a19a9b91d47a7a9edf6a9e71b039b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant7b31564d57e6e50da47940616ecb2341f7b29adbe2dfc6c38db0ae46bd45f66c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant7b31564d57e6e50da47940616ecb2341f7b29adbe2dfc6c38db0ae46bd45f66c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

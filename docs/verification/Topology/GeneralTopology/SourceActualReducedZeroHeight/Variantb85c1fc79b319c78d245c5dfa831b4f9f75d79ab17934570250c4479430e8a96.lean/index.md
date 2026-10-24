# Verification target: GRWTSK.Topology.GeneralTopology.SourceActualReducedZeroHeight.Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ce9b7a8088c722ba7eab660fe86fb1a5168110d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ce9b7a8088c722ba7eab660fe86fb1a5168110d`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualOffAxisResidualUpper` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualReducedZeroHeight](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/declarations/actualreducedzeroheight--904a63ca1c1c722b85906caf.md) | 31 | `declaration-track:904a63ca1c1c722b85906cafdeea3b06c7af08472f67bd33fe42d315030829a3` |
| 2 | `def` | [actualReducedZeroEnvelope](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/declarations/actualreducedzeroenvelope--8265decb0d18de794532f1c8.md) | 34 | `declaration-track:8265decb0d18de794532f1c8813d023976f02726bb601ea3e828901857edd4f4` |
| 3 | `theorem` | [actualReducedZeroHeight_ge_four](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/declarations/actualreducedzeroheight-ge-four--5c0ff630fbdce0efa5f51aaa.md) | 38 | `result-track:5c0ff630fbdce0efa5f51aaaedac711d87f2d5162fc04c3d6a8736d0de3474c8` |
| 4 | `theorem` | [actualReducedZeroTail_norm_bound](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/declarations/actualreducedzerotail-norm-bound--92b1a9fc6598d4100d837807.md) | 48 | `result-track:92b1a9fc6598d4100d83780755038b40c8181d3bc7ab62d7186bc363c30bfcb9` |
| 5 | `theorem` | [actualReducedZeroTail_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/declarations/actualreducedzerotail-tendsto-zero--fd73f7b65c5a772a177b80fb.md) | 82 | `result-track:fd73f7b65c5a772a177b80fb276987e70067081ff0a3fc87ff88d991a6bf2fc4` |
| 6 | `theorem` | [actualSourceQuadraticValue_sub_reducedHead](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/declarations/actualsourcequadraticvalue-sub-reducedhead--64b8d28245fc2d47723f1fb3.md) | 98 | `result-track:64b8d28245fc2d47723f1fb34ce8b454c968b1b12512da2f1ad9de7ddc269a20` |
| 7 | `theorem` | [actualResidual_reducedHead_signed_error_bound](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/declarations/actualresidual-reducedhead-signed-error-bound--85eb03b035980c7ba1dfae36.md) | 107 | `result-track:85eb03b035980c7ba1dfae3609149602d633d12515b1b29da8256a575088fdc4` |
| 8 | `theorem` | [actualResidual_reducedHead_signed_error_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/declarations/actualresidual-reducedhead-signed-error-tendsto--d13a0686e33e576807f8196d.md) | 129 | `result-track:d13a0686e33e576807f8196d39b340d0b0cf2e89da593dceb5776081a403e816` |
| 9 | `theorem` | [actualResidual_reducedOffAxisHead_upper](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variantb85c1fc79b319c78d245c5dfa831b4f9f75d79ab17934570250c4479430e8a96.lean/declarations/actualresidual-reducedoffaxishead-upper--f69817ac1ea787c7f72d0219.md) | 144 | `result-track:f69817ac1ea787c7f72d02196584ffb4c8e68afe9802c74cd76f8ec2a603f49c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

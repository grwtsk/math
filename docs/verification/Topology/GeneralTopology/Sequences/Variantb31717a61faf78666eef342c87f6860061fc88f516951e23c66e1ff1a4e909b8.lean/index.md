# Verification target: GRWTSK.Topology.GeneralTopology.Sequences.Variantb31717a61faf78666eef342c87f6860061fc88f516951e23c66e1ff1a4e909b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5548bfac6db34943528c0905aa6d9c6a883fca13",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequences/Variantb31717a61faf78666eef342c87f6860061fc88f516951e23c66e1ff1a4e909b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantb31717a61faf78666eef342c87f6860061fc88f516951e23c66e1ff1a4e909b8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantb31717a61faf78666eef342c87f6860061fc88f516951e23c66e1ff1a4e909b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5548bfac6db34943528c0905aa6d9c6a883fca13`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequences/Variantb31717a61faf78666eef342c87f6860061fc88f516951e23c66e1ff1a4e909b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequences/Variantb31717a61faf78666eef342c87f6860061fc88f516951e23c66e1ff1a4e909b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sequences` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_subseq_of_frequently_bounded](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantb31717a61faf78666eef342c87f6860061fc88f516951e23c66e1ff1a4e909b8.lean/declarations/tendsto-subseq-of-frequently-bounded--e91df6d79d3fd46bfe479cbe.md) | 25 | `result-track:e91df6d79d3fd46bfe479cbe0c63e24ca2f16e9e9e0502fa4c31b1a39b789369` |
| 2 | `theorem` | [tendsto_subseq_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantb31717a61faf78666eef342c87f6860061fc88f516951e23c66e1ff1a4e909b8.lean/declarations/tendsto-subseq-of-bounded--2aac4452228605a3643e40c3.md) | 34 | `result-track:2aac4452228605a3643e40c3168fe9e8fadc3adb2ac5084d929c6c0fbd5355b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

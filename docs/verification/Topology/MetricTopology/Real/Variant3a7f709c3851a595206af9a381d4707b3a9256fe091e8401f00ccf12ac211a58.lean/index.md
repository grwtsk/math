# Verification target: GRWTSK.Topology.MetricTopology.Real.Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fc3b61c683174cc41bf07fac1bb946a91a404e8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Real/Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Real/Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Real/Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fc3b61c683174cc41bf07fac1bb946a91a404e8`.

Source path: `GRWTSK/Topology/MetricTopology/Real/Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Real/Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Bornology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsOrderBornology](../../../../../mathematics/Topology/MetricTopology/Real/Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58.lean/declarations/instisorderbornology--12a5ec4e76434a35f2305036.md) | 20 | `declaration-track:12a5ec4e76434a35f2305036ef7dee565ee888a4e07c9a2bf578f4e9b16b30a6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Real/Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58.lean/declarations/instance--a976e6952da94a0931fc42fc.md) | 33 | `declaration-track:a976e6952da94a0931fc42fcd983f0e886229ba4e63f2353ca48d3774a47af20` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Real/Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58.lean/declarations/instance--5848e20ea96289461f749fa8.md) | 37 | `declaration-track:5848e20ea96289461f749fa880d4a49c63704cf987a73302cb3d4d777c3dc2dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.RectangleContour.Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fda4c6a2556d5fca237f3d151e62f20b984209b5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fda4c6a2556d5fca237f3d151e62f20b984209b5`.

Source path: `GRWTSK/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedRectangle](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/declarations/closedrectangle--3e494b94de20dcc720b72468.md) | 36 | `declaration-track:3e494b94de20dcc720b72468cec0ff0962363b54558153bf81e05ef2c79b6881` |
| 2 | `theorem` | [isCompact_closedRectangle](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/declarations/iscompact-closedrectangle--307026513879bb220b426766.md) | 39 | `result-track:307026513879bb220b4267662937aee9d80836168c4109e6b148d1d73e3e1114` |
| 3 | `def` | [rectangleHorizontalIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/declarations/rectanglehorizontalintegral--d05e26c51305e4cdaa86e742.md) | 44 | `declaration-track:d05e26c51305e4cdaa86e74292f503a2c287f146624857f2ae849bd2a290c148` |
| 4 | `def` | [rectangleVerticalIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/declarations/rectangleverticalintegral--b0161b7c917ad2493b1ea3ff.md) | 50 | `declaration-track:b0161b7c917ad2493b1ea3ffe03b40ce17b7de4f34e85984edf592c21502d150` |
| 5 | `def` | [rectangleBoundaryIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/declarations/rectangleboundaryintegral--b152b5c81b78109e80799ed5.md) | 56 | `declaration-track:b152b5c81b78109e80799ed5339bc507f56d031f689bc39e8a4450bf66995f6f` |
| 6 | `theorem` | [rectangleBoundaryIntegral_eq_zero_of_differentiableOn](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/declarations/rectangleboundaryintegral-eq-zero-of-differentiableon--7c5009598187aa0ed8d52dca.md) | 65 | `result-track:7c5009598187aa0ed8d52dca9c2a7b837186e29ee3a1dc65b25040161dc50735` |
| 7 | `theorem` | [rectangleVerticalShift_eq_horizontalDifference](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/declarations/rectangleverticalshift-eq-horizontaldifference--2da0b7ce8a4128992ca0c87d.md) | 73 | `result-track:2da0b7ce8a4128992ca0c87d7c7c3de64a324384949692b1bcfc0af305e9dbf9` |
| 8 | `theorem` | [rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756.lean/declarations/rectangleboundaryintegral-eq-zero-of-continuouson-of-differentiableon--e25fb1adfd04fd332bff3ede.md) | 96 | `result-track:e25fb1adfd04fd332bff3ede075da274fc5093c1683676a2ab4c94546780a880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

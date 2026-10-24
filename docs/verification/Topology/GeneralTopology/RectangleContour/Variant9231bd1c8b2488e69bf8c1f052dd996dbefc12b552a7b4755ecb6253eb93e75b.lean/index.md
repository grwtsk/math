# Verification target: GRWTSK.Topology.GeneralTopology.RectangleContour.Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efa04f7499f2853b07cf38f04180ffd014ebbec4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efa04f7499f2853b07cf38f04180ffd014ebbec4`.

Source path: `GRWTSK/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedRectangle](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/declarations/closedrectangle--ad6cbaf2973e687fab0ba5a8.md) | 28 | `declaration-track:ad6cbaf2973e687fab0ba5a8e761f7e92dde9a50d3bb3cf231ef434b9cdaa6d3` |
| 2 | `theorem` | [isCompact_closedRectangle](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/declarations/iscompact-closedrectangle--cd9d3f054e124cccd99f7727.md) | 31 | `result-track:cd9d3f054e124cccd99f77271980ab691ec0b0b2330934c086f3a581fdf43d72` |
| 3 | `def` | [rectangleHorizontalIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/declarations/rectanglehorizontalintegral--8eb202ceb991f9a163600c27.md) | 36 | `declaration-track:8eb202ceb991f9a163600c27f54b076f7a4b77dbfcc2b5d17121a18e99daa997` |
| 4 | `def` | [rectangleVerticalIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/declarations/rectangleverticalintegral--67fb1029b19ff5fa9d2e3452.md) | 42 | `declaration-track:67fb1029b19ff5fa9d2e345201823428379ca8f4ae02b8d21a6e90a67b9571f2` |
| 5 | `def` | [rectangleBoundaryIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/declarations/rectangleboundaryintegral--a5a880cb267c914fd64bf5f7.md) | 48 | `declaration-track:a5a880cb267c914fd64bf5f75f565e2cab30fa00c8ddff92787debda9e2569f5` |
| 6 | `theorem` | [rectangleBoundaryIntegral_eq_zero_of_differentiableOn](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/declarations/rectangleboundaryintegral-eq-zero-of-differentiableon--9563858332347444c2c4f081.md) | 57 | `result-track:9563858332347444c2c4f0812bf77d2b67a57be96504da36af1dc1186f87c7a0` |
| 7 | `theorem` | [rectangleVerticalShift_eq_horizontalDifference](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/declarations/rectangleverticalshift-eq-horizontaldifference--91c2c1e970043e2ea50eb0ed.md) | 65 | `result-track:91c2c1e970043e2ea50eb0ed1268c3542c742872086b282b575b18a2ae6d3c6d` |
| 8 | `theorem` | [rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b.lean/declarations/rectangleboundaryintegral-eq-zero-of-continuouson-of-differentiableon--551d0b9845a9e652d0f7f8bb.md) | 88 | `result-track:551d0b9845a9e652d0f7f8bb989c3ca728b25b2aad0857c7260063b2a4e8d107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

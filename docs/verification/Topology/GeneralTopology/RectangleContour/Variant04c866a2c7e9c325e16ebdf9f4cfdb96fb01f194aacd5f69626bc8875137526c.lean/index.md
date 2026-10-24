# Verification target: GRWTSK.Topology.GeneralTopology.RectangleContour.Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b3243cd547eb2f1ae83a33f297d53e778f28df8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b3243cd547eb2f1ae83a33f297d53e778f28df8`.

Source path: `GRWTSK/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedRectangle](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/declarations/closedrectangle--aff7fe3f0a2845e2716d16bb.md) | 30 | `declaration-track:aff7fe3f0a2845e2716d16bb76271c7bcdc103fc3cce51d54b0cd9c09afb5e28` |
| 2 | `theorem` | [isCompact_closedRectangle](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/declarations/iscompact-closedrectangle--3dfa7b9e62e1cc597c5ec647.md) | 34 | `result-track:3dfa7b9e62e1cc597c5ec647a779c7675a06424b1930a585968d0cb3867bb8ac` |
| 3 | `def` | [rectangleHorizontalIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/declarations/rectanglehorizontalintegral--e5b3a0ac8926c39e4b710cd3.md) | 40 | `declaration-track:e5b3a0ac8926c39e4b710cd3d8151d470d2b70838b8ef787c0c92d56b7c385a5` |
| 4 | `def` | [rectangleVerticalIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/declarations/rectangleverticalintegral--053b60d25e68ef26aef533b6.md) | 47 | `declaration-track:053b60d25e68ef26aef533b675fe8a47db68d53623d75a665ca7cdb69043c5ba` |
| 5 | `def` | [rectangleBoundaryIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/declarations/rectangleboundaryintegral--f2d7620a16faa0e193e0b819.md) | 54 | `declaration-track:f2d7620a16faa0e193e0b819319debfdab706e40edef307f0ab564e5972c7e63` |
| 6 | `theorem` | [rectangleBoundaryIntegral_eq_zero_of_differentiableOn](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/declarations/rectangleboundaryintegral-eq-zero-of-differentiableon--13bda6056333b504b83e355d.md) | 64 | `result-track:13bda6056333b504b83e355d0116b0c05ed0bdb9d73e2b8cdc9cd1be23195f4a` |
| 7 | `theorem` | [rectangleVerticalShift_eq_horizontalDifference](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/declarations/rectangleverticalshift-eq-horizontaldifference--0a4db79e52cb4f4539494991.md) | 73 | `result-track:0a4db79e52cb4f45394949913788d89b3507a37ee18d0a36ed96033a7930e87d` |
| 8 | `theorem` | [rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c.lean/declarations/rectangleboundaryintegral-eq-zero-of-continuouson-of-differentiableon--69035a0b57b76c91141d810e.md) | 97 | `result-track:69035a0b57b76c91141d810e76d13b65b0a3f7b372005c21cd333cf140d4f5e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.RectangleContour.Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a1d2901945e8b38eeccfd6b9a70275cfc48a5fd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a1d2901945e8b38eeccfd6b9a70275cfc48a5fd`.

Source path: `GRWTSK/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedRectangle](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/declarations/closedrectangle--e1618a165e8f1ab1c6a2df24.md) | 38 | `declaration-track:e1618a165e8f1ab1c6a2df24af8dde96f80fba472ffebaa1bca75230491c376a` |
| 2 | `theorem` | [isCompact_closedRectangle](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/declarations/iscompact-closedrectangle--1fbdfffbedaa10f7c2f5cebb.md) | 42 | `result-track:1fbdfffbedaa10f7c2f5cebbc66fd313e5ac61b1e680f70fcf1406e7b63d0790` |
| 3 | `def` | [rectangleHorizontalIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/declarations/rectanglehorizontalintegral--fd979df3637cfde77198dc86.md) | 48 | `declaration-track:fd979df3637cfde77198dc86fb4452738cb7137e5e8a40121e628ad50bab048a` |
| 4 | `def` | [rectangleVerticalIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/declarations/rectangleverticalintegral--685caeb27060984687bd0210.md) | 55 | `declaration-track:685caeb27060984687bd021019bcb7d7e4e6654efbf81409089bd12ca8a36524` |
| 5 | `def` | [rectangleBoundaryIntegral](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/declarations/rectangleboundaryintegral--4560bf37bdaae978ff97f5aa.md) | 62 | `declaration-track:4560bf37bdaae978ff97f5aa5f9bcf6a01aaaf57f3dd7aabf5b9e4e7b3d631b0` |
| 6 | `theorem` | [rectangleBoundaryIntegral_eq_zero_of_differentiableOn](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/declarations/rectangleboundaryintegral-eq-zero-of-differentiableon--9bc5a4f7ae1ab40f911555e6.md) | 72 | `result-track:9bc5a4f7ae1ab40f911555e60c81ea3beb368a23856c45d1ec7e5d71aee6be68` |
| 7 | `theorem` | [rectangleVerticalShift_eq_horizontalDifference](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/declarations/rectangleverticalshift-eq-horizontaldifference--77c9bfc0cb0500d78de524a4.md) | 81 | `result-track:77c9bfc0cb0500d78de524a4ebe94f02591e131a6c2789ada694620e374ddd9c` |
| 8 | `theorem` | [rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn](../../../../../mathematics/Topology/GeneralTopology/RectangleContour/Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4.lean/declarations/rectangleboundaryintegral-eq-zero-of-continuouson-of-differentiableon--34ba2d9b5559eac6c1e28480.md) | 105 | `result-track:34ba2d9b5559eac6c1e2848034e47bad01ee310368b0e3b1f89d83bacebf2ad9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

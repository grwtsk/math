# Verification target: GRWTSK.Topology.GeneralTopology.PivotTransitionFixtures.Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd2ecf4c42cf2365484431a2084f8553ac68d565",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd2ecf4c42cf2365484431a2084f8553ac68d565`.

Source path: `GRWTSK/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotBounds` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotCech` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IntermediateValue` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstFrame](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/firstframe--22489284278752707e0856ac.md) | 35 | `declaration-track:22489284278752707e0856acb5a9f1f5b0dbb079e862de6fb2ea8e0a31228fa5` |
| 2 | `def` | [secondFrame](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/secondframe--d09348609b3d3764c74f59b4.md) | 38 | `declaration-track:d09348609b3d3764c74f59b425c533bf613161638ef99550d0294cc742a7a342` |
| 3 | `theorem` | [firstFrame_pivots](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/firstframe-pivots--f72f4cc60aadfe53b598269f.md) | 40 | `result-track:f72f4cc60aadfe53b598269fe0e75f6adf1e29f0c845ab483a6d68f7376a0ecf` |
| 4 | `theorem` | [normalize_first_to_second](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/normalize-first-to-second--27735d1601f15e42666bde71.md) | 45 | `result-track:27735d1601f15e42666bde712701518fa41a7a485d40237ab251c4e55c78efca` |
| 5 | `abbrev` | [Overlap](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/overlap--b752a0a91b383136f0a98e69.md) | 54 | `declaration-track:b752a0a91b383136f0a98e698f56b2d5a96a3cfba3d177a1d880000e362729fd` |
| 6 | `def` | [overlapInverse](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/overlapinverse--6ee38c799dcc3d044760d03f.md) | 57 | `declaration-track:6ee38c799dcc3d044760d03f8c1f94c0c2df5dbb7e3f4da6b7f49fcf3043286c` |
| 7 | `def` | [overlapHomeomorph](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/overlaphomeomorph--75ae9bffca9b476d399616ea.md) | 60 | `declaration-track:75ae9bffca9b476d399616eabd51018456b0f6283bc28afc6cf35eaee6ed73c2` |
| 8 | `theorem` | [overlap_two_connected_pieces](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/overlap-two-connected-pieces--6887a5764bb301581aa97b64.md) | 71 | `result-track:6887a5764bb301581aa97b64c04725a13e187f8d070ff95dfa8dfe62c2eb4acd` |
| 9 | `theorem` | [overlap_not_preconnected](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/overlap-not-preconnected--462ff820228a48b96ca905f2.md) | 87 | `result-track:462ff820228a48b96ca905f2b84a9aae64975ec805745d9979f6e41d68ba22f4` |
| 10 | `def` | [unitFrame](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/unitframe--df839a948d56b40279856251.md) | 95 | `declaration-track:df839a948d56b402798562513472f967ca995c90c7fc554617376640eeefe949` |
| 11 | `theorem` | [unitFrame_orthonormal](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/unitframe-orthonormal--16588491e41f1dc9633b4d6e.md) | 98 | `result-track:16588491e41f1dc9633b4d6ea2cafbe94c1f1075ec8a1fae852fc571ccfaab33` |
| 12 | `def` | [firstCircle](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/firstcircle--eb4eb29d39225dfeb4527a92.md) | 110 | `declaration-track:eb4eb29d39225dfeb4527a92e81e0d8d9141e0ccbfef7353fc1ce513e1f451a7` |
| 13 | `def` | [secondCircle](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/secondcircle--8b3575a195c3b27129a217a4.md) | 114 | `declaration-track:8b3575a195c3b27129a217a4e7bbdeb9d8fd2f8cfba1111af58ebe87420c22c3` |
| 14 | `theorem` | [firstCircle_unit](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/firstcircle-unit--ff30364890ecb13a8f4e218f.md) | 118 | `result-track:ff30364890ecb13a8f4e218f66ab87b646241121e78bb58f38c6e544f938cfab` |
| 15 | `theorem` | [secondCircle_unit](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/secondcircle-unit--1912cbdc601d8afdc9b50f44.md) | 125 | `result-track:1912cbdc601d8afdc9b50f44bf21ba18de8468f53a14da0181ab423c7fde9d34` |
| 16 | `theorem` | [circle_formula_overlap](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/circle-formula-overlap--10b864684b8c92f121a75272.md) | 132 | `result-track:10b864684b8c92f121a7527281573948a34c53fc8613e85c288020aa22028b13` |
| 17 | `theorem` | [pivotCoefficientTransport_column_variance](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/pivotcoefficienttransport-column-variance--3eaf468e0ccd33c80d610358.md) | 141 | `result-track:3eaf468e0ccd33c80d610358f9b311b088b662f2beff829bfafb54784a8a5110` |
| 18 | `theorem` | [boundaryPivotFamily_transition_realization](../../../../../mathematics/Topology/GeneralTopology/PivotTransitionFixtures/Variantf6ba79ceae8c6946ee96f1626e6fa73f4bec786afc6eebeb83aa7f4cd11e5992.lean/declarations/boundarypivotfamily-transition-realization--f4444725a0dcbc91b1f043a2.md) | 149 | `result-track:f4444725a0dcbc91b1f043a220a630a28d1f4f7ef4e5a7eefe79cdf9b21a0208` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: Euclidean Plane Subsumption Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4fc770a333ad154f8c99770ac51781577ea540c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variantcd2eb0d9e4806a02dbec0bdcfff4c9a351a1710268d860b37f14d34ccf6ae5d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4fc770a333ad154f8c99770ac51781577ea540c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variantcd2eb0d9e4806a02dbec0bdcfff4c9a351a1710268d860b37f14d34ccf6ae5d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variantcd2eb0d9e4806a02dbec0bdcfff4c9a351a1710268d860b37f14d34ccf6ae5d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.Circumcircle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Geometry.DirectedArc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Geometry.EuclideanPlaneCorpus` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Geometry.HalfTurn` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [link](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/link.md) | 27 | `declaration-track:7f1fd6f4097ef35690e40e8d99056e053ba7712defd957e6a3e66cc841628b46` |
| 2 | `def` | [point](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/point.md) | 53 | `declaration-track:06e8d818f37a0d409500f0f59db60c48b5d0b6951b609f23ff0a1a817f3734e1` |
| 3 | `def` | [squaredDistance](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/squareddistance.md) | 60 | `declaration-track:f175383c4038e9087493c0600fe5638ff3086475116a719120303f38114dea7f` |
| 4 | `def` | [circle](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/circle.md) | 67 | `declaration-track:fbf39e4c14ed6fc50b4d7b267f96543b99accfa865df470fe2d8dc8e86476141` |
| 5 | `def` | [circleContains](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/circlecontains.md) | 74 | `declaration-track:1d86e4af2d193297d71189dbf6c517dcc1e53a54ac4ae3d6ec9559bebb938f18` |
| 6 | `def` | [circumcircleDatum](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/circumcircledatum.md) | 81 | `declaration-track:3f7484fcb3fb5ca4d3a528d5af70de6e10d689f13dee309107f94cd8fac496de` |
| 7 | `def` | [yAxisDirection](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/yaxisdirection.md) | 88 | `declaration-track:473392da993537f8bc112bba80e9152e63c172b07724b9f357fa8e8a1c17239b` |
| 8 | `def` | [arcOrientation](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/arcorientation.md) | 95 | `declaration-track:d4cd59e8bdc56c8792bd2c8301615a613147d214f1fad0e3c7a520ffd7b5dc6d` |
| 9 | `def` | [directedArc](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/directedarc.md) | 102 | `declaration-track:e182cefdb03998771d1b3723a8844d246518bfb4da0d399cf50acefba2c1ce1f` |
| 10 | `def` | [windingNumber](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/windingnumber.md) | 109 | `declaration-track:61f74c02990c3fb062e841a297a762ccf415e299744100f7eaee1fd43165190f` |
| 11 | `def` | [halfTurn](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/halfturn.md) | 116 | `declaration-track:a923fb5eabc34ec7de63a43b116865fa1d520cd433a825635e356b9da03a632c` |
| 12 | `def` | [halfTurnInvolutive](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/halfturninvolutive.md) | 123 | `declaration-track:f5c0a731fa32ccf6bba36b2efd7dfc9cc91ae7759dd5b0ca1607336e368b9166` |
| 13 | `def` | [links](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/links.md) | 130 | `declaration-track:96b1b0a56ab662415d47badc90f65134e80b1983d54f980e71dad3c722d7ba39` |
| 14 | `theorem` | [links_length](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclideanPlaneSubsumptionNamespaced.lean/declarations/links-length.md) | 144 | `result-track:3a8e9d121b924f64ffb272d37868efb5bd923d901cd6300154e0a0eb23a3d02a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e7963b84346c14f67f4eaace29968da651ca2bbd507da3fe5b8d38531e5fe5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variantcd2eb0d9e4806a02dbec0bdcfff4c9a351a1710268d860b37f14d34ccf6ae5d2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variantcd2eb0d9e4806a02dbec0bdcfff4c9a351a1710268d860b37f14d34ccf6ae5d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Topology Order Lattice Filter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed2f5978f56ef0bda1418a676e913ca4f060e1be",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed2f5978f56ef0bda1418a676e913ca4f060e1be`.

Source path: `GRWTSK/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousInf](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/continuousinf.md) | 38 | `declaration-track:532d3a16605c34c418e60a8393ad2655139e0ee8d6f4a55e2f09841c3aea3a27` |
| 2 | `class` | [ContinuousSup](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/continuoussup.md) | 47 | `declaration-track:f770d4a4101642892df8c3cc1ffc8018eaebd79dd08f38c6705f9f5f652d2703` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:b9f8d36d1afd46f90f8b36e4d10f03ba4648941ede51f5e23f4c27856af11eeb` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/instance.md) | 59 | `declaration-track:5430a696a69e59d83346728eb2402f3664fa38508e2e38b2531a5a0eae32c5a5` |
| 5 | `class` | [TopologicalLattice](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/topologicallattice.md) | 67 | `declaration-track:c44e6c32cf21c90e421aab885492077ec75a8962bd848359d81b09b5e5905558` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/instance-source-edition-4.md) | 72 | `declaration-track:e6db256e17132e985a907bce3dd150b6bf6658b24dbbb9303ba9d1224aa60c11` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/instance-source-edition-3.md) | 77 | `declaration-track:d9a7b018e02214d4808b0de9e3478464f007f6ad8cebc50a8e0800124ae88b37` |
| 8 | `theorem` | [continuous_inf](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/continuous-inf.md) | 87 | `result-track:4a4fe93673bca75e7db30ae0f43e75b896f84c8b077ae7fc7e211f4890035b67` |
| 9 | `theorem` | [Continuous.inf](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/continuous-inf-source-edition-2.md) | 92 | `result-track:5e92c44dccf29773ebed6d133122099e630a4eea5ee744d26390f491eda449d9` |
| 10 | `theorem` | [continuous_sup](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/continuous-sup.md) | 98 | `result-track:00445c6db6480e185b647c5b88bf06f2f10afe62e280f59173b437de4f04ac3b` |
| 11 | `theorem` | [Continuous.sup](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/continuous-sup-source-edition-2.md) | 103 | `result-track:9113001a397d42f34c1945ea20ed6b060ed821d60b2a80a1f5a4dda747e6e110` |
| 12 | `theorem` | [Filter.Tendsto.sup_right_nhds'](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/filter-tendsto-sup-right-nhds-source-edition-2.md) | 108 | `result-track:fb8a5538902cbec60f098c1ddb3fecf2f86c21cbc0053c448db4a6f051ab6bac` |
| 13 | `theorem` | [Filter.Tendsto.sup_right_nhds](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/filter-tendsto-sup-right-nhds.md) | 114 | `result-track:7c17b70a33d99c151678f983d833a22f048b75d0ff06dd4b7c896f2cbbfe64cd` |
| 14 | `theorem` | [Filter.Tendsto.inf_right_nhds'](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/filter-tendsto-inf-right-nhds.md) | 120 | `result-track:1e5d1fe84be086807363dce7735de7d64561563a8f9261c4d23ab4a2a007efa6` |
| 15 | `theorem` | [Filter.Tendsto.inf_right_nhds](../../../../GeneralTopology/TopologyOrderLatticeFilter.lean/declarations/filter-tendsto-inf-right-nhds-source-edition-2.md) | 126 | `result-track:961fe5790516a1911d1ad448e3b3640fe357b78ba37539e26b87b45839f4ef89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db202b5012a444e2845a9049a397e6afc1bd5079574176b3322d7ba900de5287 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

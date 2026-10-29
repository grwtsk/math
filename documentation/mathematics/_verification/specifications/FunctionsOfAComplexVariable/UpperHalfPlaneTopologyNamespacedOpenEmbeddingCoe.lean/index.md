# Verification target: Upper Half Plane Topology Namespaced Open Embedding Coe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "336b1ec91c511b7b52421cfc31577d65152680c3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variantb879889aaa72cd1516ee603d59a0b3bc91ca80d01b5002442616a8819baa68fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `336b1ec91c511b7b52421cfc31577d65152680c3`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variantb879889aaa72cd1516ee603d59a0b3bc91ca80d01b5002442616a8819baa68fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variantb879889aaa72cd1516ee603d59a0b3bc91ca80d01b5002442616a8819baa68fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Contractible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Normed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Complex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Contractible` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/instance-source-edition-8.md) | 39 | `declaration-track:df11e91835254a2e27530dbede28d26178c5a7a7ee9f31a9392956633dbc1e57` |
| 2 | `theorem` | [openEmbedding_coe](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/openembedding-coe.md) | 42 | `result-track:387d9b4d3f2c2ab52b652165be777454991b21e834e73ae0c29f558990e051c2` |
| 3 | `theorem` | [embedding_coe](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/embedding-coe.md) | 46 | `result-track:86eabb67af513697346697ae160fbecd839c92e60f86332232d8ebd410cb31f9` |
| 4 | `theorem` | [continuous_coe](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/continuous-coe.md) | 50 | `result-track:30fc7f60e3dfe976e57a0bc88aac12f7851a43bef2497db9b683a53a76a2a273` |
| 5 | `theorem` | [continuous_re](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/continuous-re.md) | 54 | `result-track:dacf2db894dc0f348fd6f15e82d87bda2942fae8c68385b06859863d3a8f4f72` |
| 6 | `theorem` | [continuous_im](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/continuous-im.md) | 58 | `result-track:3a1c112ebb72dcc5a7c4c80f33f87ccd50d841f51e3da77ca348a3c58f6e300d` |
| 7 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/instance-source-edition-3.md) | 62 | `declaration-track:87577394f57f681473ab72c81ab5a53cd55f9d67cb454c29ba2c0432d287ea2d` |
| 8 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/instance-source-edition-4.md) | 65 | `declaration-track:8f30964d82faf79360a32cb68c6f166d2f07a6eb6efd00858b30d37b1d1828d5` |
| 9 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/instance-source-edition-5.md) | 68 | `declaration-track:a12e2ce2e0ddf0cb8d18e24af42d969c709827256ea1c19d3f55ffbfe054f605` |
| 10 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:6d17cd595f15f9f9a26fb497912c536f2e311810747779aa72d11a5c203a03c3` |
| 11 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/instance-source-edition-7.md) | 74 | `declaration-track:d34e1ce2b971dd9261abef51c7eebf0621972d43d56801b975740852b22eb81a` |
| 12 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/instance.md) | 77 | `declaration-track:4e6114e5a8ea8de6c74a6b06594c6580626e9ced1b09a66055885584dd385aaa` |
| 13 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneTopologyNamespacedOpenEmbeddingCoe.lean/declarations/instance-source-edition-6.md) | 84 | `declaration-track:a1c006fd44e89a35a142a41da0e246d584b387edb68e7ac5c0712b50a205194e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4aaaf3fee0cd75123118349bec868085c9428b67525a30086cb803df90e8a9a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variantb879889aaa72cd1516ee603d59a0b3bc91ca80d01b5002442616a8819baa68fd.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variantb879889aaa72cd1516ee603d59a0b3bc91ca80d01b5002442616a8819baa68fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

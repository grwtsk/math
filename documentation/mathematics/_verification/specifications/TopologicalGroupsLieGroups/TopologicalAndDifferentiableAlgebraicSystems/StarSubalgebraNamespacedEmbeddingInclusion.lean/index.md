# Verification target: Star Subalgebra Namespaced Embedding Inclusion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01da1e1fb14c6505e720ec37a7366399896cc2be",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variante4542aced347c61679a0f43aec674321189087f2affb6827b7f76faed9d1fd6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01da1e1fb14c6505e720ec37a7366399896cc2be`.

Source path: `GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variante4542aced347c61679a0f43aec674321189087f2affb6827b7f76faed9d1fd6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StarSubalgebra/Variante4542aced347c61679a0f43aec674321189087f2affb6827b7f76faed9d1fd6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Subalgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:c93adba3092ff1d7d4c1f6f4743bdcabd3aee975f015b22bb5895fd48b6d32eb` |
| 2 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/instance-source-edition-6.md) | 51 | `declaration-track:f4fcd8fdeb099f7e9129f330915a82e3e8607621891ef90fe8bbc5f86a0f634a` |
| 3 | `theorem` | [embedding_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/embedding-inclusion.md) | 55 | `result-track:ed4973e0041376304a18adf1a0db6b38541c4c138741262eee1a6189ab63c5e6` |
| 4 | `theorem` | [closedEmbedding_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/closedembedding-inclusion.md) | 61 | `result-track:76e12967c04dbd65a3dcc23cf188b98ecb2ed0fcb78aaf0d5c4808932fef84b7` |
| 5 | `def` | [topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/topologicalclosure.md) | 77 | `declaration-track:83696d2438366dad3018534360740bf84b0dbfe6562ae35d3a73fd0a39ff7c3f` |
| 6 | `theorem` | [topologicalClosure_toSubalgebra_comm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/topologicalclosure-tosubalgebra-comm.md) | 85 | `result-track:8834c98e850aeb75745117c22ed679aec296fc7bd6ebf10f95812f809dd013c1` |
| 7 | `theorem` | [topologicalClosure_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/topologicalclosure-coe.md) | 90 | `result-track:fe89565d4fcaccaf535054837f29fe75927806bd77585c621672b7053bfcebe0` |
| 8 | `theorem` | [le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/le-topologicalclosure.md) | 95 | `result-track:c623574d319af123c22e2802a1916752e7efde8f6fa41e3087dde9edc3a6e8a2` |
| 9 | `theorem` | [isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/isclosed-topologicalclosure.md) | 99 | `result-track:1adc29ceed0fa9998844600eb6a65a96ba3aa79f5c653f1cd55cdf4bb2657e05` |
| 10 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/instance-source-edition-3.md) | 104 | `declaration-track:61933ec35b16359d3efa6150aeb4ee83b9d4cb179f806d985ad93acb93811371` |
| 11 | `theorem` | [topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/topologicalclosure-minimal.md) | 109 | `result-track:ebad15fdbb296eb8cf82a2381d46d99f72dc9ef8b143684670a4812718f14c05` |
| 12 | `theorem` | [topologicalClosure_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/topologicalclosure-mono.md) | 114 | `result-track:9553653d2812cc99c34f43eca52ea286ab3afc132417bf51d4a5476e11e6a6d2` |
| 13 | `theorem` | [topologicalClosure_map_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/topologicalclosure-map-le.md) | 119 | `result-track:f65e229ed6d6034d321be2d917b09d95155a5d0e60d9faafc9f6bd292dd9951f` |
| 14 | `theorem` | [map_topologicalClosure_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/map-topologicalclosure-le.md) | 124 | `result-track:231748f1ca106a576ccf6cbe1c90ea528ed442a13e9856d82c5db6e460a43f79` |
| 15 | `theorem` | [topologicalClosure_map](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/topologicalclosure-map.md) | 129 | `result-track:7125792220f0c3497b65ea13bb5211adc9ebbc6a4034f44fc814cc9c096c173d` |
| 16 | `theorem` | [Star Subalgebra Namespaced Embedding Inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/topologicalclosure-star-comm.md) | 134 | `result-track:7c368a69c335a3e5dd54b63c447bd90cb43bbb820f8bb3f6ad56fdd93c15f777` |
| 17 | `def` | [commSemiringTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/commsemiringtopologicalclosure.md) | 144 | `declaration-track:e85630532d4c0a8c5c6886927ace27f73c120b893f40406fe7d2befc8d008f92` |
| 18 | `def` | [commRingTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/commringtopologicalclosure.md) | 152 | `declaration-track:87482e866fd0b458173819b31bbcf435fd452f4fc3cafbf0a5f9118660f7a087` |
| 19 | `theorem` | [Star Subalgebra Namespaced Embedding Inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/ext-topologicalclosure.md) | 160 | `result-track:01418170fa8e0431fb579544410941782dd491a0e23886c11933db6df56581c5` |
| 20 | `theorem` | [Star Subalgebra Namespaced Embedding Inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/ext-topologicalclosure-source-line-180-occurrence-2.md) | 180 | `result-track:8fc50d5751b749f1ca6884b0da656c90094e75e9c0cc6dc592be60095a8e9b2d` |
| 21 | `def` | [elementalStarAlgebra](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/elementalstaralgebra.md) | 210 | `declaration-track:bfb826f8ddcf929fadaa66302a490cfe7de4923ae82f969e4644686cd1cfcf94` |
| 22 | `theorem` | [self_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/self-mem.md) | 216 | `result-track:3260138f51df0d56b66a3167f7e9e1ad8338f3c50aaf2e88acea7233526fb8d3` |
| 23 | `theorem` | [star_self_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/star-self-mem.md) | 220 | `result-track:dcfd9cc3af0f2f0fadb77dadeca784b94f9759608242148b3c9898d737e149cc` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/instance-source-edition-2.md) | 225 | `declaration-track:3ad7dfb77c3d69a669e46e334b9d6a0f7894c87999d3a5531b5da8f2fbceaf78` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/instance.md) | 229 | `declaration-track:1190423c67602f1bf9664c57213a4ea08160e1f2c26b28a1bc77bacb7eae1c48` |
| 26 | `theorem` | [isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/isclosed.md) | 234 | `result-track:0d1dbdc514920aadac47dda011640e864710dc9cfc5966b38529c79250bf320c` |
| 27 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/instance-source-edition-5.md) | 238 | `declaration-track:dd4d175d21ea4974e99c774e98ee130e31ab70be09f638fa37f0bc8867f0f960` |
| 28 | `theorem` | [le_of_isClosed_of_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/le-of-isclosed-of-mem.md) | 243 | `result-track:ddaf9bb89cdd86a25479213946b8f90ebe61d96fb3b0925fbddda716d59e4a95` |
| 29 | `theorem` | [closedEmbedding_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/closedembedding-coe.md) | 249 | `result-track:62854c2c3a01f06bee91d798393d1ff882d151cd53f6aab2337338e76af31004` |
| 30 | `theorem` | [starAlgHomClass_ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedEmbeddingInclusion.lean/declarations/staralghomclass-ext.md) | 261 | `result-track:49dbf86ddd0ffd8ecf6ad513fdebd7fd0d72750f1c3d618cafa32302ffc24005` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64aa850f7ef09524ac1983bdb1454cbdc6c7ac9f3fe73e92d2c6bba52a9912dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variante4542aced347c61679a0f43aec674321189087f2affb6827b7f76faed9d1fd6c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/StarSubalgebra/Variante4542aced347c61679a0f43aec674321189087f2affb6827b7f76faed9d1fd6c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

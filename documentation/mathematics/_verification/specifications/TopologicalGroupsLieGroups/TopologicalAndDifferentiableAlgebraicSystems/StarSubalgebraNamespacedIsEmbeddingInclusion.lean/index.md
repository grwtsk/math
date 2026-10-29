# Verification target: Star Subalgebra Namespaced Is Embedding Inclusion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8040d9627a20bad11789bc52ede18d77dfbe7abc",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant10b02717940481dfa8e9d602a2d8b2063eddd2bd397bb103ab79d7db4497d1d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8040d9627a20bad11789bc52ede18d77dfbe7abc`.

Source path: `GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant10b02717940481dfa8e9d602a2d8b2063eddd2bd397bb103ab79d7db4497d1d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StarSubalgebra/Variant10b02717940481dfa8e9d602a2d8b2063eddd2bd397bb103ab79d7db4497d1d5.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/instance-source-edition-3.md) | 41 | `declaration-track:9dfb9ea465a667abc5fd91c949420b7f50159778012be3b83df8e534b19ee691` |
| 2 | `lemma` | [isEmbedding_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/isembedding-inclusion.md) | 45 | `result-track:4027b2901c5bbabde8e6920f244cc65807e02ffb7791f0a62f13652bccdc60e4` |
| 3 | `theorem` | [isClosedEmbedding_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/isclosedembedding-inclusion.md) | 54 | `result-track:481f82cdf81352a83e53b6b49b4517f036306616425a186b5bbf94557872e5f8` |
| 4 | `def` | [topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/topologicalclosure.md) | 68 | `declaration-track:7f78c078d9929c1ec1e2d95792f03d99dd604054af9f4a31deba00195474271c` |
| 5 | `theorem` | [topologicalClosure_toSubalgebra_comm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/topologicalclosure-tosubalgebra-comm.md) | 75 | `result-track:86078e7d29667f42ace35c40a92b1748bf6f89c03024a486b14cb6c6b6a722a5` |
| 6 | `theorem` | [topologicalClosure_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/topologicalclosure-coe.md) | 80 | `result-track:cfbf458cf1761f1df032fe47bf3cd05958767ebfe71f75db5eba370098c5e408` |
| 7 | `theorem` | [le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/le-topologicalclosure.md) | 84 | `result-track:1698a4cfcf5544a630cb8b636ad7868a028dfffbab14be74fc6b996242140c27` |
| 8 | `theorem` | [isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/isclosed-topologicalclosure.md) | 87 | `result-track:66979eda2d0cd66d82ff16199b8d19e2014c317ec5b567e8409a9aa9827e25d6` |
| 9 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/instance-source-edition-2.md) | 91 | `declaration-track:8497d943ed089bc91e7981da4daf5f152e0e837f7e11fc268eab94f08cae3ddf` |
| 10 | `theorem` | [topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/topologicalclosure-minimal.md) | 96 | `result-track:78789f39b6b4096489ff54272cd4a5152391e9439c746eb5577d6c8cbc8d6a81` |
| 11 | `theorem` | [topologicalClosure_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/topologicalclosure-mono.md) | 100 | `result-track:f8e1b4e4e00d172bf6c6820e3ec5f46eebe72aba520a76b135a47d6721bdf488` |
| 12 | `theorem` | [topologicalClosure_map_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/topologicalclosure-map-le.md) | 104 | `result-track:69afa3045af75e3c68f8c2d52fd6566a1fbd1571740c3c730cc0209094c3f099` |
| 13 | `theorem` | [map_topologicalClosure_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/map-topologicalclosure-le.md) | 109 | `result-track:3aa26c1a7c72d576972fbf5c1a74e02d3708814bf4727136cdc54d1c84b90d77` |
| 14 | `theorem` | [topologicalClosure_map](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/topologicalclosure-map.md) | 114 | `result-track:d83fbf8790b65535976f5810cd18df19c340ff286318daba773f380b488cf251` |
| 15 | `theorem` | [Star Subalgebra Namespaced Is Embedding Inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/topologicalclosure-star-comm.md) | 119 | `result-track:e848101050debd6e2ef7ded6dc74d7bd3d6591e0abd5b2d461f853e9c8b6eb78` |
| 16 | `abbrev` | [commSemiringTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/commsemiringtopologicalclosure.md) | 128 | `declaration-track:06281ee8ef9c31ddf0d2704ac645fab274eda364c70eabf4062595c7176266c7` |
| 17 | `abbrev` | [commRingTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/commringtopologicalclosure.md) | 134 | `declaration-track:c93670b355c0d24950f09a56ea4bc2cb79ad354aecaf3d4ba47e154205d8fc49` |
| 18 | `theorem` | [Star Subalgebra Namespaced Is Embedding Inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/ext-topologicalclosure-source-line-141-occurrence-2.md) | 141 | `result-track:ba3e47d397c33dbd787c18ec19c6590b6d6501e5f60b977167c464c8c5d11d18` |
| 19 | `theorem` | [Star Subalgebra Namespaced Is Embedding Inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/ext-topologicalclosure.md) | 160 | `result-track:9b81219e8af6a18cca80c1fce00f7af89b120696939c857d67db94643fbed38a` |
| 20 | `def` | [elemental](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/elemental.md) | 188 | `declaration-track:ee5e1dfe30ae529f4a98a59aca60f8d39523246e31eb2a56566fb13085c01194` |
| 21 | `theorem` | [self_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/self-mem.md) | 196 | `result-track:f89030f87f4487a3b5dcd91319f42bda1c63e8554f0eae95f082f19e0f2f3366` |
| 22 | `theorem` | [star_self_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/star-self-mem.md) | 201 | `result-track:2742ac8e3aa516c273d292723f75eeda5ea94c9eeb186ea34b347a490d057c30` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/instance-source-edition-4.md) | 208 | `declaration-track:b3d2daeff1d4be7befb9213579527938e05d0f4452a31d7be59676cffc1803d9` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/instance-source-edition-5.md) | 212 | `declaration-track:f800b0058cdf93ac388474384d3c494dc70800bc53ca5662f2bd3d29f44ae44b` |
| 25 | `theorem` | [isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/isclosed.md) | 217 | `result-track:2e232b7d2f8f2c56194a5cb5ab6fddba61056aa4099c23710ccb8c118d1ce734` |
| 26 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/instance.md) | 222 | `declaration-track:5d54cb101acc550ab005d8ef2cc7788513d941589c2e2916f98fbbba048316d2` |
| 27 | `theorem` | [le_of_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/le-of-mem.md) | 228 | `result-track:e028a9fc7ab56fb757b1ad24b606e512bb4e5acc697fff47eda4bf03ac3242d7` |
| 28 | `theorem` | [le_iff_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/le-iff-mem.md) | 233 | `result-track:d2076a2ad8f76e4fe0eaf4bf280a61989ac4908501a1e25aa319f78c855dac31` |
| 29 | `theorem` | [isClosedEmbedding_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/isclosedembedding-coe.md) | 241 | `result-track:4aaa30ba5a79804be3c0e61531bb28d832e1ec06a0c63bcedbaddda0d3cc3207` |
| 30 | `theorem` | [induction_on](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/induction-on.md) | 249 | `result-track:1a3450b6305836b7b38560864e7fffab7ff36a448b6a713616a0927bb80915f3` |
| 31 | `theorem` | [starAlgHomClass_ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StarSubalgebraNamespacedIsEmbeddingInclusion.lean/declarations/staralghomclass-ext.md) | 275 | `result-track:b155cc5b7cd5790cea092af39c0556105781858ed62b8148f87dfafa5a3b3483` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=295c3e0a840399c7a1475b558853cab83db0a724c2d1b5444e0be1b1c16f326c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant10b02717940481dfa8e9d602a2d8b2063eddd2bd397bb103ab79d7db4497d1d5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/StarSubalgebra/Variant10b02717940481dfa8e9d602a2d8b2063eddd2bd397bb103ab79d7db4497d1d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

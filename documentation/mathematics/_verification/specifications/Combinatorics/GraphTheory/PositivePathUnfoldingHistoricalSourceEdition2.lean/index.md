# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PathUnfolding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "362286d96509e9fff5ee86f50d24bf692a409511",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `362286d96509e9fff5ee86f50d24bf692a409511`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathUnfolding`](../../../../../Combinatorics/GraphTheory/DirectedGraphPathUnfolding.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Combinatorics.Quiver.SingleObj` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path.Vertices` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-14.md) | 17 | `declaration-track:f6f11bc3b5529fd26338f2530de68eeb235c746ff3070c86f26653c34124f7c8` |
| 2 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-11.md) | 19 | `declaration-track:cab68c91d5b9a320b60f2b704dcb74c41917e6961207d26691ed4df7b227ea69` |
| 3 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-8.md) | 22 | `declaration-track:5779083afe3cf1e9dbc36e6348fe5492b27d27ed8c595022aa4f1fcd228d2e2c` |
| 4 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example.md) | 26 | `declaration-track:0505c169fd4c09169577b0b860e4cac445a7305a5d5e708fbfadf0ef86352c69` |
| 5 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-13.md) | 30 | `declaration-track:ec3e78644770920d8ad2ff15b2e4aa52decad22c4508b086af614e4204150f6e` |
| 6 | `def` | [firstOccurrence](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/firstoccurrence.md) | 39 | `declaration-track:3a14590547110194a1d6f2133526a370a0af9b1fa21f7b74f2c0406d244a1f87` |
| 7 | `def` | [otherOccurrence](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/otheroccurrence.md) | 42 | `declaration-track:86f1c7862ba64bbced0792c4ae2f430cd422746e1f6ef172765682acde1ef5ce` |
| 8 | `def` | [twiceOccurrence](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/twiceoccurrence.md) | 45 | `declaration-track:d96702ff31b3cb412d02aa09365dfda1a361f9f49c49ea8f471879b18b06836e` |
| 9 | `def` | [twoStepLift](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/twosteplift.md) | 48 | `declaration-track:81569444837b7ed46be63099f92d7da3db049dcbecf4f503dad093311f8c484e` |
| 10 | `def` | [twoBaseEdges](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/twobaseedges.md) | 52 | `declaration-track:bf86f3f1c50191291e86491f34c3d381435473f4d391826a22b362a866201635` |
| 11 | `theorem` | [parallel_occurrences_distinct](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/parallel-occurrences-distinct.md) | 55 | `result-track:7ce24eb8c77a81e841d8c7f6e8c89a47cc7741a0079c0008479f70cb1d216ec4` |
| 12 | `theorem` | [repeated_base_vertices_distinct](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/repeated-base-vertices-distinct.md) | 62 | `result-track:a5706af0748ee2717384131f27ce781f49a5fa91f1fe4115b47ae4c4e38cc209` |
| 13 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-4.md) | 74 | `declaration-track:14008718e284620dab1c7bfcccf553ce9b1d413e1672e035821b2a4ea9bb1135` |
| 14 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-10.md) | 77 | `declaration-track:8177f1f407f2fb681ee1ff04b556b81824e4a5f6aff97929d6d9f5ee609ae278` |
| 15 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-6.md) | 79 | `declaration-track:337eed19abf4ba72cb2f603b5ea0e3afd7be3f8bf4a83cf55f7f50bfeb83ac71` |
| 16 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-7.md) | 82 | `declaration-track:3fe04a6ae0b7e0391c1fdb5386ef25003211d6e2f554e5b1d9d5b0039f1a07a0` |
| 17 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-5.md) | 84 | `declaration-track:266cd56338fd526eac0355436db2504aab4d9cce867be18c5752990b1bfa77e4` |
| 18 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-2.md) | 86 | `declaration-track:0641c6b76d7ec7692e6119e99d3afa38fb6d1b59b3d4505af9b32f786b01cd0d` |
| 19 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-9.md) | 88 | `declaration-track:7f8c0d89ad7a392195439d370ad29c7783501c5e6818c6fb53bc00ccd6c10fa1` |
| 20 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-12.md) | 90 | `declaration-track:db3b2fbac493e252bdd11b5c09b27d5ba829d654eb267547d0e43049d600fac6` |
| 21 | `theorem` | [single_loop_outgoing_bijective](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/single-loop-outgoing-bijective.md) | 96 | `result-track:40eaaee2588cccf78314392017e8305f95f9b5b126730ba1a6bb6ef1b2ae1feb` |
| 22 | `theorem` | [single_loop_empty_origin_costar](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/single-loop-empty-origin-costar.md) | 100 | `result-track:73b5eaff1d7025dc45bf01f7bca40db5aaf81c3a2532aa8757475c508129601f` |
| 23 | `theorem` | [single_loop_costar_not_surjective](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/single-loop-costar-not-surjective.md) | 103 | `result-track:8a413868d2173781e9fb7d21584830f90d5c851ba784187d4ee3090c2b717085` |
| 24 | `theorem` | [single_loop_not_covering](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/single-loop-not-covering.md) | 107 | `result-track:da7cc92129c73bd2b9a122871e0a66a51919f6afeba22885af9076155cb355ae` |
| 25 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathUnfoldingHistoricalSourceEdition2.lean/declarations/example-source-edition-3.md) | 110 | `declaration-track:12d3792572f7fa0aa4c93fee7670c9aff27231d691b30edaa76bbb6bdbe0cad8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffdc5fb705e68ae52a060ee447441b11fa4ccad5faa73cc4964ea7237d53316c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

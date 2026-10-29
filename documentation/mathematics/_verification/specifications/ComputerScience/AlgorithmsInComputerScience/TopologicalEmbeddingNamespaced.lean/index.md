# Verification target: Topological Embedding Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b6615cbe47b6cd76f6e8bf172dba31545e3220b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TopologicalEmbedding/Variantc012871abb9742fe206b53e71c094a4fd0ba6fdcdc5c17d337feed4d0682e66d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologicalEmbeddingNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologicalEmbeddingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b6615cbe47b6cd76f6e8bf172dba31545e3220b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TopologicalEmbedding/Variantc012871abb9742fe206b53e71c094a4fd0ba6fdcdc5c17d337feed4d0682e66d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TopologicalEmbedding/Variantc012871abb9742fe206b53e71c094a4fd0ba6fdcdc5c17d337feed4d0682e66d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.MordellWeil` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [R4Like](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologicalEmbeddingNamespaced.lean/declarations/r4like.md) | 27 | `declaration-track:2c3c9fcaee56a461a54f6d95c7e704c1b7d7b3aadee9433542bdc129fd34c80c` |
| 2 | `structure` | [ComplexTorusUniformization](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologicalEmbeddingNamespaced.lean/declarations/complextorusuniformization.md) | 35 | `declaration-track:77707bcceadb2a75c3aecda5cd58a3841ec17bef0da79f46adf0284b50ce3ffe` |
| 3 | `structure` | [TopologicalEmbeddingData](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologicalEmbeddingNamespaced.lean/declarations/topologicalembeddingdata.md) | 43 | `declaration-track:0eff80622e3e1318ee70efd5e2905c5d33f75578a1aca928444dae3d6ad14e2d` |
| 4 | `def` | [orbitSet](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologicalEmbeddingNamespaced.lean/declarations/orbitset.md) | 57 | `declaration-track:6a4c7a443ec9d3b93389907cf6c543a6398434cf8f13ef02f315c2540cfea68d` |
| 5 | `structure` | [OrbitClosure](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologicalEmbeddingNamespaced.lean/declarations/orbitclosure.md) | 65 | `declaration-track:f0e519579346836b64a937f4fecf558b80dc4acf7645f87cebe45e086da4c182` |
| 6 | `structure` | [InfiniteOrderPointCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologicalEmbeddingNamespaced.lean/declarations/infiniteorderpointcertificate.md) | 75 | `declaration-track:d91dddba32cf2f50f0a3d0a60585d6e79429c1cf6a699e2e1dab529fbb673fe0` |
| 7 | `structure` | [LoopFromPoint](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologicalEmbeddingNamespaced.lean/declarations/loopfrompoint.md) | 84 | `declaration-track:37c1ce96d701e6a17a22f72d7675fdc40d99123ff1dd114ac2a1b70719aa93d4` |
| 8 | `theorem` | [certified_infinite_order_point_induces_certified_loop](../../../../../ComputerScience/AlgorithmsInComputerScience/TopologicalEmbeddingNamespaced.lean/declarations/certified-infinite-order-point-induces-certified-loop.md) | 96 | `result-track:285be21b09122145add852f61c12e6006a98d8a12b13b8ba80cc79c51761833a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db497e53c87418ecb04242152aecab5108e006edb5c509e9ae5b54a23b056476 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TopologicalEmbedding/Variantc012871abb9742fe206b53e71c094a4fd0ba6fdcdc5c17d337feed4d0682e66d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TopologicalEmbedding/Variantc012871abb9742fe206b53e71c094a4fd0ba6fdcdc5c17d337feed4d0682e66d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

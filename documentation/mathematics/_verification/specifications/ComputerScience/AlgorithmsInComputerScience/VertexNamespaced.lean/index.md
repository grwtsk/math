# Verification target: Vertex Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fc9945581dafd18465eb7b09ddafb9a0a1c5d2f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variantc983f5fa17fffd76a180d3f0e2d568ab95bb2bf001ceb73d0df1b9a411f9827a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fc9945581dafd18465eb7b09ddafb9a0a1c5d2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variantc983f5fa17fffd76a180d3f0e2d568ab95bb2bf001ceb73d0df1b9a411f9827a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variantc983f5fa17fffd76a180d3f0e2d568ab95bb2bf001ceb73d0df1b9a411f9827a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Boundary` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Residue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MemoryKind](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/memorykind.md) | 16 | `declaration-track:e4d48f1b244f8680dc3b041367accc53ba0ebff0e0954d591ee3db6564444069` |
| 2 | `def` | [MemoryKind.defaultSide](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/memorykind-defaultside.md) | 29 | `declaration-track:e37833d7e05d5df6c849d711f899e45e2be1e2374ff93e8dd7948a1e2870e66f` |
| 3 | `structure` | [MemoryVertex](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/memoryvertex.md) | 41 | `declaration-track:9fae5e0b62a1b76c4ae33570531dd595eb3aefff7391b4f4d2c4fc22691f59b2` |
| 4 | `def` | [noopVertex](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/noopvertex.md) | 53 | `declaration-track:70195c1f560a94de339aa71582fbd86fc25b93ba7c197d00e1f0e4142dbef844` |
| 5 | `def` | [MemoryVertex.usesDefaultBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/memoryvertex-usesdefaultboundary.md) | 64 | `declaration-track:d48b37dda189501aa37f564e936b07fe2920256175f097582c46c5f4532be072` |
| 6 | `def` | [MemoryVertex.isBridgeWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/memoryvertex-isbridgewitness.md) | 67 | `declaration-track:8d273baea729d7d0fdb87326d1c0f68167fc6ce3cf0799548fac1b1256e39e71` |
| 7 | `def` | [supportBounded](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/supportbounded.md) | 72 | `declaration-track:e211202d3794257f0b6881417f5fd80b171bb38797e766edba4b04a3fb3f4b6a` |
| 8 | `theorem` | [residueWitness_defaults_bridge](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/residuewitness-defaults-bridge.md) | 75 | `result-track:1d70db2512ec31fc6b9b53a533df3fd85fa07e07eed50b6886f44ad6613fb1d6` |
| 9 | `theorem` | [refusalWitness_defaults_bridge](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/refusalwitness-defaults-bridge.md) | 79 | `result-track:a4e38d5f56893135bb26dd8fad42536e5fc0956b62ca389b86d05b5aa1d410b4` |
| 10 | `theorem` | [sourceTreeNode_defaults_bridge](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/sourcetreenode-defaults-bridge.md) | 83 | `result-track:2749bed3490b97324fa8af57d9a49113251d40402d0b96bb216ac4ff91b74507` |
| 11 | `theorem` | [noopVertex_is_default_boundary](../../../../../ComputerScience/AlgorithmsInComputerScience/VertexNamespaced.lean/declarations/noopvertex-is-default-boundary.md) | 87 | `result-track:14740f57483bbd538bcdd0968d6430000a07a0cdd1dca05a27ae082ceb21ae1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4974fc7c6abcee0f9d6f6ca7b49c939571dabbd26ec73e208e307eafeff64c65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variantc983f5fa17fffd76a180d3f0e2d568ab95bb2bf001ceb73d0df1b9a411f9827a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variantc983f5fa17fffd76a180d3f0e2d568ab95bb2bf001ceb73d0df1b9a411f9827a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

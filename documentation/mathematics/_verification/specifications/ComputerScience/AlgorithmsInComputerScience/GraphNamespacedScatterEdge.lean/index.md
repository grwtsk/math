# Verification target: Graph Namespaced Scatter Edge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb1c5f2ed0aca8e7d0dfae217ee5bca4c288d10e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantc61a0d8dfbe148f2739ed62d249955eece5583b7bf9615f1777530bafdd2c354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/GraphNamespacedScatterEdge.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/GraphNamespacedScatterEdge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb1c5f2ed0aca8e7d0dfae217ee5bca4c288d10e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantc61a0d8dfbe148f2739ed62d249955eece5583b7bf9615f1777530bafdd2c354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantc61a0d8dfbe148f2739ed62d249955eece5583b7bf9615f1777530bafdd2c354.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Color.Scatter` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ScatterEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/GraphNamespacedScatterEdge.lean/declarations/scatteredge.md) | 13 | `declaration-track:9d2a78159edcdbb0327d2003d0e1bf4219edd87ef3fd2c986a2dd3a821394579` |
| 2 | `structure` | [ScatterGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/GraphNamespacedScatterEdge.lean/declarations/scattergraph.md) | 19 | `declaration-track:d576987f20fea7024753da19cb5a334788e796e3506b7021bf44816b1181aa07` |
| 3 | `def` | [colorGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/GraphNamespacedScatterEdge.lean/declarations/colorgraph.md) | 24 | `declaration-track:0598b19ecc74f6d6a558296688d2e5511c77afc7781ec9df4d384d263992d974` |
| 4 | `theorem` | [colorGraph_root](../../../../../ComputerScience/AlgorithmsInComputerScience/GraphNamespacedScatterEdge.lean/declarations/colorgraph-root.md) | 35 | `result-track:ce32de6fce56dc93917144c8d95f5f9ced08ba2017d4159ee43a877482590e0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cba24a3febd63470d156b10abfab8f624a5904fac3c6bae1c368458755ace65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantc61a0d8dfbe148f2739ed62d249955eece5583b7bf9615f1777530bafdd2c354.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Graph/Variantc61a0d8dfbe148f2739ed62d249955eece5583b7bf9615f1777530bafdd2c354.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

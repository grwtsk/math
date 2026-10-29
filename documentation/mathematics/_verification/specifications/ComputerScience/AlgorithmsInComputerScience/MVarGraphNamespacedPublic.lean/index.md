# Verification target: MVar Graph Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "726e3485de66c59a5843c06dbdfa8814c030b2a5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `726e3485de66c59a5843c06dbdfa8814c030b2a5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Graph](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/graph.md) | 24 | `declaration-track:9e7575c7cc20b89a47a4b4d24e8abaeee6d8e1f328d92177546efd4df373f504` |
| 2 | `def` | [Graph.filterReachable](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/graph-filterreachable.md) | 29 | `declaration-track:9687fb8d3a803fab6f72159f1dbd6b6630b38e3c3558923000b6ca829c31618f` |
| 3 | `def` | [MVar Graph Namespaced Public](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-gr.md) | 43 | `declaration-track:6bf830a1d038be36c3045d22b77459ebf0624916b1d11262d52bdb9c715d45d5` |
| 4 | `def` | [buildMVarGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/buildmvargraph.md) | 53 | `declaration-track:f23abc92ea5f190655d2ace94e8d9d7d3f067fb11da99ad16250d9be8fd2d17c` |
| 5 | `def` | [mkLabel](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/mklabel.md) | 68 | `declaration-track:e9d413f65b9c79f641dab6d1a131a54ebf26bdf7c7fda4d169d2aad23745d611` |
| 6 | `def` | [drawMVarGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/drawmvargraph.md) | 95 | `declaration-track:fb417789d550099078ad31c8d93ee8755489985f3a1e251e1f439ae8e15c60e8` |
| 7 | `def` | [MVarGraph.rpc](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/mvargraph-rpc.md) | 158 | `declaration-track:88048c025c9c457e3919a396a0f7525c92abb141a77268bc204c3dd955c1d5ac` |
| 8 | `def` | [MVarGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/mvargraph.md) | 179 | `declaration-track:2e9c5aecf5b36934c49f4cd3bfb272e62f290ad58eb62b3bda27939b08c1c9d3` |
| 9 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/example-source-edition-3.md) | 190 | `declaration-track:187efb7a5036012f91482deb4ae9a3fb3b19de46b1a619ea6510b366a595e3d9` |
| 10 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/example.md) | 195 | `declaration-track:04d6d323b683f4dac7ed4ef8331ab094938124d3083e636506fa5971e9105037` |
| 11 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/example-source-edition-5.md) | 202 | `declaration-track:404fa9ef02bf2105dd13d195b534124c15e3f55ce7e01c91e3434ba955a90d40` |
| 12 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/example-source-edition-4.md) | 208 | `declaration-track:3eb24a6fd7163cf8d44e2fd3604bbbb95c2f9af84c94b61ec91f49050aa95ee6` |
| 13 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/example-source-edition-7.md) | 214 | `declaration-track:cae2dd04cfbac70bb618bed3d3c6d0487405897c48434f477f9641480e09c676` |
| 14 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/example-source-edition-2.md) | 220 | `declaration-track:12ec1943a548c3b3d98cfddb910411b35817b375268662e1027e8880deee72bb` |
| 15 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphNamespacedPublic.lean/declarations/example-source-edition-6.md) | 226 | `declaration-track:57e6be1246e9d6102e4a56db5da7cb27e69922f717e8cadedbb7f342d78daaec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a160616ebc752b54114072c333fc8b6e6b9d6f3f2a9cc03b4ff9ba07fcbc209 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

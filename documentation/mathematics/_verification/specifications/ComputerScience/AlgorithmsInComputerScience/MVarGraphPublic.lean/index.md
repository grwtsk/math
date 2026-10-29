# Verification target: MVar Graph Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b350ecd3c7993df157622d3aef442311d2a02e1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Varianta7c164596853d7624c9d15d2a31bad216d3ad23a34deb2b2f1a6006add0e9d71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b350ecd3c7993df157622d3aef442311d2a02e1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Varianta7c164596853d7624c9d15d2a31bad216d3ad23a34deb2b2f1a6006add0e9d71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Varianta7c164596853d7624c9d15d2a31bad216d3ad23a34deb2b2f1a6006add0e9d71.lean.json)

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
| 1 | `abbrev` | [Graph](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/graph.md) | 16 | `declaration-track:9b44f6802f58049fdc8867e24cb4e117eb26b56665dffccc564dbb7f7adea593` |
| 2 | `def` | [Graph.filterReachable](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/graph-filterreachable.md) | 21 | `declaration-track:206922c4a4cfae726e03d759f9cb0b02baae47300de324c0642479db71c0c59a` |
| 3 | `def` | [_root_.Lean.MVarId.getName](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/root-lean-mvarid-getname.md) | 35 | `declaration-track:03e59df08ee743ce12d3d2bd5ea0ddb3895809dcef2f2ab93e63daad09d4acfc` |
| 4 | `def` | [buildMVarGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/buildmvargraph.md) | 45 | `declaration-track:9f491c9f3558747aefe8c693d818d927b4a912f5fc4cf33fad3862cb622fe1ce` |
| 5 | `def` | [mkLabel](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/mklabel.md) | 60 | `declaration-track:fc3612905ed58139ef6b180b9e106d07fb52aee8c60473c5dd619471d54798fd` |
| 6 | `def` | [drawMVarGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/drawmvargraph.md) | 87 | `declaration-track:7143f2a8182ca8b9275d14b83ce46b68d7bedc3936d967c85fff6a621cc7f3d9` |
| 7 | `def` | [MVarGraph.rpc](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/mvargraph-rpc.md) | 150 | `declaration-track:0a7d8b8c09c60bbc80a1543c7be477439a2c5fed0bd9699ab74f743ef1953061` |
| 8 | `def` | [MVarGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/mvargraph.md) | 171 | `declaration-track:bf200a96fd0ec607c6661ef983f896bbde7172e001b82938bfc0847419218d50` |
| 9 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/example-source-edition-4.md) | 182 | `declaration-track:6d0db0dc9ce97e10d55c7b360fe715449926ca63d4b6341a039a1f6787929a30` |
| 10 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/example-source-edition-2.md) | 187 | `declaration-track:4fa5d301a287adc1f7aaf74ea81ef3a0fe30bb7edf527ea20d6c3f59d170284c` |
| 11 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/example-source-edition-5.md) | 194 | `declaration-track:7a1b49bfd2982c6c0bf0edcfa1155e6cef5ae8532c651d78aeaede272e781510` |
| 12 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/example.md) | 200 | `declaration-track:3a267d69d5d30064f274348c6cc59f3073fa6036260c7b0eaf2a58a572489322` |
| 13 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/example-source-edition-6.md) | 206 | `declaration-track:b0c77f132a535e8781d712330a5fe41e3a9f85619aa455a7885850b2e6631bcb` |
| 14 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/example-source-edition-3.md) | 212 | `declaration-track:56917ece87d5bab804f2ebf9e07426756064c45ab8ba3c1cf22affb617e2481a` |
| 15 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MVarGraphPublic.lean/declarations/example-source-edition-7.md) | 218 | `declaration-track:bb9198237e2cc9c10dfd0a60f82946dcc0e2e2cb8076ac3384a58014b5d7ed6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8bc46fcd50912111e1a40b3ef300ace2c90cc12a58db86e9dd5eae38669bca50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Varianta7c164596853d7624c9d15d2a31bad216d3ad23a34deb2b2f1a6006add0e9d71.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Varianta7c164596853d7624c9d15d2a31bad216d3ad23a34deb2b2f1a6006add0e9d71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

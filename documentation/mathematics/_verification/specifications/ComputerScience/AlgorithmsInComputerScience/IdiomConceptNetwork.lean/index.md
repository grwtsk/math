# Verification target: Idiom Concept Network

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7442c8007c5c0d13e2ce53b2ac9ab71bd3ee5c6e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IdiomConceptNetwork/Variant3ea114c5b7618c4d065c440bcd27370182a0e5908340f72fc1fcfd44b188f089.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetwork.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetwork.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7442c8007c5c0d13e2ce53b2ac9ab71bd3ee5c6e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IdiomConceptNetwork/Variant3ea114c5b7618c4d065c440bcd27370182a0e5908340f72fc1fcfd44b188f089.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IdiomConceptNetwork/Variant3ea114c5b7618c4d065c440bcd27370182a0e5908340f72fc1fcfd44b188f089.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Substitution` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NetworkVertexKind](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetwork.lean/declarations/networkvertexkind.md) | 7 | `declaration-track:ae0c39969b9de5959dcc65b0508f33267e4a5ed3193feeff6bb7980ba51e08c3` |
| 2 | `structure` | [NetworkVertex](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetwork.lean/declarations/networkvertex.md) | 16 | `declaration-track:08bc29fc94148e1f056bb098f7d5f6f706142862b2fb23bc71a1b473de49c9df` |
| 3 | `inductive` | [NetworkEdgeType](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetwork.lean/declarations/networkedgetype.md) | 22 | `declaration-track:fcca94977a5e28bf9a0aa107b6c272297261a8b60ea2a14bcc7ee0c879a12208` |
| 4 | `structure` | [NetworkEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetwork.lean/declarations/networkedge.md) | 36 | `declaration-track:cf59541df94fe51759cf15d8aa1f8fb6803d49a128d83c90053b93487e99aa24` |
| 5 | `structure` | [IdiomConceptNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetwork.lean/declarations/idiomconceptnetwork.md) | 44 | `declaration-track:03b9f87f498c2cc776708d3e4b97701d9a0a4e486da6099db3ebe92ab5b8a7ca` |
| 6 | `def` | [NetworkEdgeType.entails](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetwork.lean/declarations/networkedgetype-entails.md) | 58 | `declaration-track:756d4f1426f952768f31f9f48165ea922807e3d7850c53018a939092086ca223` |
| 7 | `theorem` | [shared_imagery_not_synonymy](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetwork.lean/declarations/shared-imagery-not-synonymy.md) | 65 | `result-track:41a7ceb1158754452a583bb07962d05e96b7feb84686aefc91fd8fc0e4bea88d` |
| 8 | `theorem` | [shared_concept_not_synonymy](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetwork.lean/declarations/shared-concept-not-synonymy.md) | 70 | `result-track:39c22e2ea63d8e6e5057fa0747908295ee58bd8a6c376a11b2d4a56d05534048` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73a146af308207e5187a33ae80590a2f02de3540f924e737d30d6b682fdbdeb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IdiomConceptNetwork/Variant3ea114c5b7618c4d065c440bcd27370182a0e5908340f72fc1fcfd44b188f089.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IdiomConceptNetwork/Variant3ea114c5b7618c4d065c440bcd27370182a0e5908340f72fc1fcfd44b188f089.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

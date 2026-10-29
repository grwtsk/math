# Verification target: Reference Graph Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a65273506b0650a7795d2cbcd3db5c0de3010379",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceGraph/Varianteeca3b67f85722e78840c3a9570f8429e2a1206ca474e70629481d28a6537b7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraphNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraphNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a65273506b0650a7795d2cbcd3db5c0de3010379`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceGraph/Varianteeca3b67f85722e78840c3a9570f8429e2a1206ca474e70629481d28a6537b7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceGraph/Varianteeca3b67f85722e78840c3a9570f8429e2a1206ca474e70629481d28a6537b7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModuleId](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraphNamespaced.lean/declarations/moduleid.md) | 26 | `declaration-track:0da47b7b2154a91bc9d21f81fbf2bc7ef91aad005c37fac7fdf1801b8029dd38` |
| 2 | `structure` | [DeclarationId](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraphNamespaced.lean/declarations/declarationid.md) | 30 | `declaration-track:1ee9d352a21f6a18de862400006390ba24e876909e76542acc8662621117419b` |
| 3 | `inductive` | [ReferenceKind](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraphNamespaced.lean/declarations/referencekind.md) | 35 | `declaration-track:86f956c8c4e89eda95d0b7e6099505982cb7e17b666de6cab1ee7da53c695998` |
| 4 | `structure` | [ReferenceEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraphNamespaced.lean/declarations/referenceedge.md) | 44 | `declaration-track:9b6aa0a107bd655f8be7acf3efd305f591f9b6aace88582dab381d4cee8011f0` |
| 5 | `structure` | [ReferenceGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraphNamespaced.lean/declarations/referencegraph.md) | 51 | `declaration-track:b0aa2ffd063cc6cf22122d2c63dd27ec4da4a69287d7a551df8674e103463956` |
| 6 | `def` | [inboundWeight](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraphNamespaced.lean/declarations/inboundweight.md) | 56 | `declaration-track:9d4f737681af66d425e5323b7f2c95f81bea32c3cd82c8c12068330cce46f671` |
| 7 | `def` | [outboundWeight](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraphNamespaced.lean/declarations/outboundweight.md) | 62 | `declaration-track:3645af8052da691e6d7dff9644e0c8969e06ef9527e5946b7b3acc6741e774bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=856b9500e6e6abe053f8664d6627c2fa2dad8683a6ff859109ba3906f1da87e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceGraph/Varianteeca3b67f85722e78840c3a9570f8429e2a1206ca474e70629481d28a6537b7c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceGraph/Varianteeca3b67f85722e78840c3a9570f8429e2a1206ca474e70629481d28a6537b7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

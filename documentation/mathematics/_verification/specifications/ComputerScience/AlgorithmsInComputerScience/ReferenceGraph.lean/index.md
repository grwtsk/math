# Verification target: Reference Graph

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "669f7a742a0897e1fc1b073308e48ff0170e0ed4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceGraph/Variant15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraph.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraph.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `669f7a742a0897e1fc1b073308e48ff0170e0ed4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceGraph/Variant15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceGraph/Variant15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModuleId](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraph.lean/declarations/moduleid.md) | 18 | `declaration-track:e272182521d684402306d5b25b9599b2d039bced7080acb046e99104408689f0` |
| 2 | `structure` | [DeclarationId](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraph.lean/declarations/declarationid.md) | 22 | `declaration-track:cefe20bc0b3d5b42214e7598109a0962fc8a1259b6901f141abfb41036e2357a` |
| 3 | `inductive` | [ReferenceKind](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraph.lean/declarations/referencekind.md) | 27 | `declaration-track:c93b04454728a9269aefa11e5b4984661f9430e7cc3c42da3d59d18e111c0ad0` |
| 4 | `structure` | [ReferenceEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraph.lean/declarations/referenceedge.md) | 36 | `declaration-track:fcb9f4f98039dd59948829321f6686826d4ca5bc3cf57464af9b6ac2fe9570b1` |
| 5 | `structure` | [ReferenceGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraph.lean/declarations/referencegraph.md) | 43 | `declaration-track:2da9a20baf79f50860c11bab177215c52ba935e4b90794e1631c08c8b911ce3c` |
| 6 | `def` | [inboundWeight](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraph.lean/declarations/inboundweight.md) | 48 | `declaration-track:2816a08128a1c2308c81ef1f54fc416b6fb70ab68d782e7ad5ca8bb06f5c63f2` |
| 7 | `def` | [outboundWeight](../../../../../ComputerScience/AlgorithmsInComputerScience/ReferenceGraph.lean/declarations/outboundweight.md) | 54 | `declaration-track:7021de9a701ae0af6345f815c570e995b9829c231ebf62cc23ee2835cc183cae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab7fc0d1e2a2852d94d73171c1ff8faacee2dd55646e013e65d7bfd803051600 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceGraph/Variant15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceGraph/Variant15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

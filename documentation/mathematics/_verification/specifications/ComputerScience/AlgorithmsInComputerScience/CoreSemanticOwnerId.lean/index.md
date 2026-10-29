# Verification target: Core Semantic Owner Id

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2b783f13ae0cc6becd435818796799c8a3e4913",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfb76e3490e1597c084ee666457214251e33978b534dc0a8ea3e92e8b6ecef878.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2b783f13ae0cc6becd435818796799c8a3e4913`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfb76e3490e1597c084ee666457214251e33978b534dc0a8ea3e92e8b6ecef878.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfb76e3490e1597c084ee666457214251e33978b534dc0a8ea3e92e8b6ecef878.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Manifest` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.LiteratureTranslation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemanticOwnerId](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/declarations/semanticownerid.md) | 15 | `declaration-track:ca0570841e4771775862990a8f97c9cbf05f206fb736459e40c45fc537fb1107` |
| 2 | `structure` | [GlobalLocusRef](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/declarations/globallocusref.md) | 20 | `declaration-track:dff90347b395b9ddaceaee5666f2f6a1f3772f9fb493072705d58ccb5924a346` |
| 3 | `structure` | [IndexMetadata](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/declarations/indexmetadata.md) | 26 | `declaration-track:bc18143e95556d09f6d08aef593351ad76dd1de95e8624409d510e95ae94b4ce` |
| 4 | `inductive` | [IndexRecordKind](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/declarations/indexrecordkind.md) | 44 | `declaration-track:53bc08c543a2fab8166d71c996bf89a3cad77108f188196f41314477724c26c8` |
| 5 | `structure` | [IndexRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/declarations/indexrecord.md) | 73 | `declaration-track:1b6dfc6b2d4ced8c5d643a9c0f6d184fc5997a7d55bde6c995150f76086a2507` |
| 6 | `structure` | [AnyIndexRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/declarations/anyindexrecord.md) | 84 | `declaration-track:2847cf4ff40b12ba9023bd899ac4a628a31d8782239d66a2e60cdefc41fee7c0` |
| 7 | `def` | [IndexRecord.erase](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/declarations/indexrecord-erase.md) | 96 | `declaration-track:50a06e35780ff3a6b6472f1ee1c57a720e8471753a6905344bbe2e9a536b3710` |
| 8 | `structure` | [CanonicalIndex](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/declarations/canonicalindex.md) | 108 | `declaration-track:87a3074c1bbe55b9a5263baf14b91515cad327222f207e051571df6aaef81cbb` |
| 9 | `def` | [CanonicalIndex.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/declarations/canonicalindex-valid.md) | 115 | `declaration-track:92ef882e75c9dfec1ad18b8cf4b7367d5f00a294f604ccf6bc514e5e8ea421c0` |
| 10 | `theorem` | [CanonicalIndex.identifiers_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSemanticOwnerId.lean/declarations/canonicalindex-identifiers-unique.md) | 119 | `result-track:36b72d38b65d4ff4a7ac9b688bf69c291fd922dd8a44a9b2ed72aeb8f235ef8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74c4ca396d5f2b6e719881a721e6e662b8958c2924a374471cea59b0d40681c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfb76e3490e1597c084ee666457214251e33978b534dc0a8ea3e92e8b6ecef878.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfb76e3490e1597c084ee666457214251e33978b534dc0a8ea3e92e8b6ecef878.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Manifest Manifest Dir

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a4d6b6c8dc0e4e3e87927e376a96aac40e08d46",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variante45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a4d6b6c8dc0e4e3e87927e376a96aac40e08d46`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variante45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variante45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.SafePath` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Archive.SymmetricStream` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ManifestDir](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/declarations/manifestdir.md) | 19 | `declaration-track:04bafa3d1807d30b00b0fc5f9d90424ce0f3c30307df15253e4013c58437c622` |
| 2 | `structure` | [AtomRef](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/declarations/atomref.md) | 23 | `declaration-track:fefec233ae24bdce18c7bce6e7f5abaf392f2b77b97c940b59019d5bbc95d31c` |
| 3 | `structure` | [SpinRef](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/declarations/spinref.md) | 29 | `declaration-track:79257f1b368b4b32e531cb2c059f9d124f49a3e0888965902107f0e14736f02c` |
| 4 | `structure` | [RecipeRef](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/declarations/reciperef.md) | 32 | `declaration-track:5c128fb6d3977343a99e7399aa95e47ecc16580f694b966573e95eb1fdf50cfd` |
| 5 | `structure` | [ManifestFile](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/declarations/manifestfile.md) | 39 | `declaration-track:5b6cd0b8f776739b775ee6ea58629641b52776c17ef87f1968ea9cf674c82bdc` |
| 6 | `structure` | [ArchiveManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/declarations/archivemanifest.md) | 47 | `declaration-track:9210ca87036293dd7e47bdef0f6d1459ea2b1da0c66ccdc86849f05762f008f3` |
| 7 | `def` | [StreamMatchesManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/declarations/streammatchesmanifest.md) | 57 | `declaration-track:6c8a08f147cc485bfae60151b6ca6e15cb5977d862513cf1b15a9bf8bdcc64f3` |
| 8 | `theorem` | [stream_matches_logical_layer_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/declarations/stream-matches-logical-layer-count.md) | 63 | `result-track:3b4e7d9d12586bdaf620e75ff40059beda4447391e2dfeb8f58a228d3351f290` |
| 9 | `theorem` | [stream_matches_atom_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestManifestDir.lean/declarations/stream-matches-atom-count.md) | 70 | `result-track:a2b95d9017193200df882c08d4ced8ee22e601a0f8dbb4e8ae22cd21e81cf4f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3f8240f9fde74cbf9f2b2a0ebdc76a9ce6a4f032035888cb3f087daa0cc8271 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variante45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variante45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

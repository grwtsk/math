# Verification target: Manifest Cell Manifest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4660223f54ef71a130412c367659e507f10155bd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variantb728b8e32fd12c945a35e4dda2d6f839a0024c46ef838d231d857e015973e8e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestCellManifest.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestCellManifest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4660223f54ef71a130412c367659e507f10155bd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variantb728b8e32fd12c945a35e4dda2d6f839a0024c46ef838d231d857e015973e8e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variantb728b8e32fd12c945a35e4dda2d6f839a0024c46ef838d231d857e015973e8e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Manifest` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CellManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestCellManifest.lean/declarations/cellmanifest.md) | 18 | `declaration-track:6201603d8a121dddac96e8b37a40f3abab9d929fb4f80a18f6dbd595d215c411` |
| 2 | `structure` | [FabricManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestCellManifest.lean/declarations/fabricmanifest.md) | 29 | `declaration-track:410be7bdb8b219254f49d9db8efd9c9cccb850ab815247f30204181bdba59614` |
| 3 | `def` | [UniqueCellIds](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestCellManifest.lean/declarations/uniquecellids.md) | 37 | `declaration-track:f1e3f4dca0f737097b8860c661269e6cdf23c4398cba5f21742076bad69a4646` |
| 4 | `def` | [ValidFaceReferences](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestCellManifest.lean/declarations/validfacereferences.md) | 41 | `declaration-track:3e1e474bdcf3d8e34d0d9142c360beba2942b1f3d9ebca0a5368c90927dbc549` |
| 5 | `def` | [StructurallyValid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestCellManifest.lean/declarations/structurallyvalid.md) | 47 | `declaration-track:2ea4caa0ee147c670c95f9abdead0e2ac2e97e34a3b8dfa8c3e0c13849fa2aab` |
| 6 | `theorem` | [uniqueCellIds_of_structurallyValid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestCellManifest.lean/declarations/uniquecellids-of-structurallyvalid.md) | 50 | `result-track:ab14f82d93e908e0c74f3f51cd8b9bff60c204d33004bd2fec3d07980d38729e` |
| 7 | `theorem` | [validFaceReferences_of_structurallyValid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestCellManifest.lean/declarations/validfacereferences-of-structurallyvalid.md) | 56 | `result-track:357ec0e0360e294c1289bc36fe58bfeb63127c0519f828b329fed7d64bab74aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fbef081a06d801139446eedb42e565acc4dc17b3329e969ba4bc505e10a9c98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variantb728b8e32fd12c945a35e4dda2d6f839a0024c46ef838d231d857e015973e8e7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variantb728b8e32fd12c945a35e4dda2d6f839a0024c46ef838d231d857e015973e8e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Symmetric Archive Codec Namespaced Manifest Serializer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdfa2fc839105e9539fd05a143ab0da0164b8b5d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricArchiveCodec/Varianta0bf4dcd0b65269a586fdc0324f2cd43c802360a65f4619a4554397443cfd6db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdfa2fc839105e9539fd05a143ab0da0164b8b5d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricArchiveCodec/Varianta0bf4dcd0b65269a586fdc0324f2cd43c802360a65f4619a4554397443cfd6db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricArchiveCodec/Varianta0bf4dcd0b65269a586fdc0324f2cd43c802360a65f4619a4554397443cfd6db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.Byte` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Archive.ByteMatrix` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Archive.FolderTree` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.Archive.Manifest` — import line 9; external provider; requires a separately pinned dependency.
- `Folder.Archive.MatrixOrbit` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ManifestSerializer](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/manifestserializer.md) | 30 | `declaration-track:216dd6581def556557fe6485efced0179649efc3934dd0c56a7c9523c8dcd1b2` |
| 2 | `structure` | [PresentationEncoder](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/presentationencoder.md) | 35 | `declaration-track:0b46cdcdc62bc32f563bc1be8d16882fc601e406fbcaf8187ccaf24a67b64570` |
| 3 | `def` | [copyPresentationEncoder](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/copypresentationencoder.md) | 43 | `declaration-track:dd26e7f4aa03fc40c9898a63dbb4a30557956197dd3726585246f5e97cc692dd` |
| 4 | `structure` | [SymmetricArchivePackage](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/symmetricarchivepackage.md) | 48 | `declaration-track:97821c1922007ac96eb84d782452b0e43924f58d0c56c7eab760e289a8b7fb69` |
| 5 | `def` | [emptyArchiveManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/emptyarchivemanifest.md) | 53 | `declaration-track:26c4630517aff8aa5b9da4586fcb8612af4a6b25cdc149732153f25a032ec37d` |
| 6 | `def` | [encodeArchiveWith](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/encodearchivewith.md) | 61 | `declaration-track:7178bb103ac97ec600f0beef3ec04e0273008efe66b311c7500f368ccd73d8ab` |
| 7 | `def` | [decodeArchiveWith](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/decodearchivewith.md) | 70 | `declaration-track:bc63b7ad7ac5a49c8131b0e388407f7804b0ecb4cc7896e54e071f595904d260` |
| 8 | `def` | [materializeArchiveStream?](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/materializearchivestream.md) | 77 | `declaration-track:a7dae81b7630d80171bf4abfd36ddb794f11728158e28ca40b201ba8f458c55b` |
| 9 | `def` | [encodeCopyMatrixArchive](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/encodecopymatrixarchive.md) | 82 | `declaration-track:392ef10d89f184fcf2ee84099b69cd9a9734aed0b466bf0f19d5a05985b54a27` |
| 10 | `def` | [fileByteMatricesWith](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/filebytematriceswith.md) | 93 | `declaration-track:ddea79027861f4803e57d70dd6f91d9efc6fa4710fc294b020b3edad4cc6ecc0` |
| 11 | `def` | [encodeCopyFileMatrixArchiveWith](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/encodecopyfilematrixarchivewith.md) | 99 | `declaration-track:9404ddd92c26287440b6b074665a564be80897ff3a48b47a6c30ef75f832c037` |
| 12 | `theorem` | [manifestSerializer_decode_encode_with](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/manifestserializer-decode-encode-with.md) | 105 | `result-track:57bee9d1a43e2bff0a2827202d240cfe141c123759066f030c8ccddcc35fdf1a` |
| 13 | `theorem` | [manifestSerializer_decode_encode_copy_with](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/manifestserializer-decode-encode-copy-with.md) | 112 | `result-track:c8b9e8eddaeba9a9c955f6486415da340ab4228cc11d8eb04c578c31967ca1a3` |
| 14 | `theorem` | [encodeCopyMatrixArchive_materializes](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/encodecopymatrixarchive-materializes.md) | 119 | `result-track:cb57c520d76f31210582cbb84f25ce0182f9eb1f317fe4b5e1233a37ad43559d` |
| 15 | `theorem` | [copyArchive_materializes_file_layers_with](../../../../../ComputerScience/AlgorithmsInComputerScience/SymmetricArchiveCodecNamespacedManifestSerializer.lean/declarations/copyarchive-materializes-file-layers-with.md) | 125 | `result-track:2ab42957c4760eebff766284f28a7c283758082ce628b764d1c7393258ad2179` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3811c443d0c9eeeff25c3ada184a65bfe13ef81b061ed77eaadeb0d0dfd08f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricArchiveCodec/Varianta0bf4dcd0b65269a586fdc0324f2cd43c802360a65f4619a4554397443cfd6db.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricArchiveCodec/Varianta0bf4dcd0b65269a586fdc0324f2cd43c802360a65f4619a4554397443cfd6db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

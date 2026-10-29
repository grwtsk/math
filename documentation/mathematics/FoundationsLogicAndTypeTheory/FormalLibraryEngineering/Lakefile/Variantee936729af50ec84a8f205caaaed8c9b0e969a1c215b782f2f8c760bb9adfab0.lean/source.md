# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantee936729af50ec84a8f205caaaed8c9b0e969a1c215b782f2f8c760bb9adfab0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17c679ad6e419fc9e64443a45c2703e5777cba27` · SHA-256 `fdc05af6202f0f9fc2caa87da8582b2dad1e82f83c76b2d1c6a04b018c71cc75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant29cb0724f6e4406d7e44a3e16fa258b1ec35f678b289d5daab7864641d051362","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29cb0724f6e4406d7e44a3e16fa258b1ec35f678b289d5daab7864641d051362","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Lake.Variant29cb0724f6e4406d7e44a3e16fa258b1ec35f678b289d5daab7864641d051362","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"29cb0724f6e4406d7e44a3e16fa258b1ec35f678b289d5daab7864641d051362","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/export/formal/lakefile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lake


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lake.Variant29cb0724f6e4406d7e44a3e16fa258b1ec35f678b289d5daab7864641d051362

open Lake DSL

package «surface» where
  version := v!"0.1.0"

lean_lib Boolean where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/98a59bb90aca50e4fc389339f5a2b86c136b5ed4cb004c7acd248d4a2f1b67f2/lib"
  roots := #[
    `Boolean.Cube.ListTools,
    `Boolean.Cube.PrismaticGeometry.DirectionFrame,
    `Boolean.Cube.PrismaticGeometry.AngleRatio,
    `Boolean.Cube.PrismaticGeometry.CellComplex,
    `Boolean.Cube.PrismaticGeometry.Prism,
    `Boolean.Cube.PrismaticGeometry.Sphere,
    `Boolean.Cube.PrismaticGeometry.OctahedralChain
  ]

@[default_target]
lean_lib SurfaceCore where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/98a59bb90aca50e4fc389339f5a2b86c136b5ed4cb004c7acd248d4a2f1b67f2/lib/SurfaceCore"
  roots := #[
    `Surface.Core.Classification,
    `Surface.Core.TopologySurgeryGame
  ]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78744f4642f10ca7c9e738169e80d7e42b2b7f66c8a08fdb204b8a8a658c791c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantee936729af50ec84a8f205caaaed8c9b0e969a1c215b782f2f8c760bb9adfab0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

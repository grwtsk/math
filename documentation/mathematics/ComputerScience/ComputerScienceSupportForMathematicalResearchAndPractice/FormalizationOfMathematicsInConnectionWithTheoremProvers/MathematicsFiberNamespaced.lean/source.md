# Mathematics Fiber Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5cb3de99c1b46ed30bb0052b9bf432d35db6ccd` · SHA-256 `1de8523a275726339cfe548d27ef66b5bdae1c5b885ff238230f904382ef386c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectExportMetadata.Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectExportMetadata.Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54","mathematical_subject":"Foundations.Unclassified","original_sha256":"6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/bridge/BridgeElements/MathematicsFiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Export.Project
import URSMContracts

/-! # Project-fiber metadata adapter. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectExportMetadata.Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54

namespace URSM.Bridge

open URSM.Contracts

structure ProjectExportMetadata where
  packageName : String
  publicRoot : String
  leanToolchainDigest : DigestRef
  lakeGraphDigest : DigestRef
  compiledEnvironmentDigest : DigestRef
  publicApiDigest : DigestRef
  theoremIndexDigest : DigestRef
  kernelCheckDigest : DigestRef
  unresolvedDigest : DigestRef
  payloadRoot : ObjectRef
  exportDigest : DigestRef

def projectKeyOfFiber
    (fiber : Mathematics.Federation.ProjectFiber) :
    ProjectKey where
  projectId := fiber.snapshot.identity.projectId.value
  revisionId := fiber.snapshot.revision.revisionId.value
  snapshotDigest := ⟨fiber.snapshot.rootDigest.value⟩

def projectExportOfFiber
    (fiber : Mathematics.Federation.ProjectFiber)
    (metadata : ProjectExportMetadata) :
    ProjectExport where
  key := projectKeyOfFiber fiber
  packageName := metadata.packageName
  publicRoot := metadata.publicRoot
  leanToolchainDigest := metadata.leanToolchainDigest
  lakeGraphDigest := metadata.lakeGraphDigest
  sourceDigest := ⟨fiber.snapshot.revision.sourceDigest.value⟩
  compiledEnvironmentDigest := metadata.compiledEnvironmentDigest
  publicApiDigest := metadata.publicApiDigest
  theoremIndexDigest := metadata.theoremIndexDigest
  kernelCheckDigest := metadata.kernelCheckDigest
  unresolvedDigest := metadata.unresolvedDigest
  payloadRoot := metadata.payloadRoot
  exportDigest := metadata.exportDigest

@[simp] theorem projectExportOfFiber_key
    (fiber : Mathematics.Federation.ProjectFiber)
    (metadata : ProjectExportMetadata) :
    (projectExportOfFiber fiber metadata).key =
      projectKeyOfFiber fiber :=
  rfl

end URSM.Bridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c44c7c328195b2a54a697047b868e066eb33f798d098383b60337136be4dea2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathematicsFiber/Variantc378c3c0e4f234bcace346856ce631142096683cdda4a10bdff9719491a3c8c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

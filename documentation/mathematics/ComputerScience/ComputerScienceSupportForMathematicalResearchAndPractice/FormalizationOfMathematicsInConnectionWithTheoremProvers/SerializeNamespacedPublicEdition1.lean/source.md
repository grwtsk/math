# Serialize Namespaced Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fd03cfff4e9b93d0a0336d13d5c64923e17b014` · SHA-256 `30bdab17fef0d49bf0e317c0172ee8da8033e7dd05bdaf9fa9f83a3d580ffbd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WriteTrace.Variantb88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.WriteTrace.Variantb88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"b88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/tools/LeanSource/Serialize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import tools.LeanSource.Frontend


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WriteTrace.Variantb88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2

public section

/-! # Canonical raw trace serialization -/

open Lean

namespace MathematicsLeanSource

def writeTrace (path : System.FilePath) (trace : RawTrace) : IO Unit := do
  if let some parent := path.parent then
    IO.FS.createDirAll parent
  IO.FS.writeFile path ((toJson trace).compress ++ "\n")

end MathematicsLeanSource
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f563f879d6a8b415270c0688d92f9e22db6dfaaf3896cc06ca8331effcee763 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialize/Variantb2ddc6e277594aaa6418fcfea03bf8a2a41110ac4893ead8dd95e2787b78dd1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

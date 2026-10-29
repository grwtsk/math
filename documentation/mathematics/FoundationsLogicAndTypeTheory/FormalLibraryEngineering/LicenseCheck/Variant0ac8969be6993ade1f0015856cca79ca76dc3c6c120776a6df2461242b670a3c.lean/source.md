# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LicenseCheck.Variant0ac8969be6993ade1f0015856cca79ca76dc3c6c120776a6df2461242b670a3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f715d703b00ae3e1bb5e814ce67f8553a4ca67bb` · SHA-256 `cf74ff4a5741dc2db1384087ea63286408a1bff925148bec831ca24696efe115`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LicenseCheck.Variant5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LicenseCheck.Variant5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042","mathematical_subject":"Foundations.Unclassified","original_sha256":"5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/LicenseCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.License
import Mathematics.Reflection.Patch

/-! # Reflection license compatibility -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LicenseCheck.Variant5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042

namespace Mathematics.Reflection

structure LicenseCheck (patch : Patch) where
  sourceLicense : Ecosystem.LicenseRecord
  destinationLicense : Ecosystem.LicenseRecord
  compatible : Bool
  attributionPreserved : Bool
  checkDigest : Digest

def LicenseCheck.Passes {patch : Patch} (check : LicenseCheck patch) : Prop :=
  check.compatible = true ∧
    check.attributionPreserved = true ∧
    check.sourceLicense.LegallyAdmissible

end Mathematics.Reflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e49c55f98deb484aed615b73028553f8e0249fb321e505d617029f35a3058bc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LicenseCheck/Variant0ac8969be6993ade1f0015856cca79ca76dc3c6c120776a6df2461242b670a3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComparison.Variantec9d342b99e22ac3d94c53a2568967255b103c06e62c2a836d43100149ac4240

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4472b86e8dfdc540bc3b9a2f3098cdeb644ed86` · SHA-256 `9e747f386433c95df649f9b5fd8f13501ad60f56852fa3e4afacf7726f88aa34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittRealization.Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WittRealization.Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8","mathematical_subject":"Foundations.Unclassified","original_sha256":"2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/WittComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Prismatic.PrismaticRealization

/-!
# Folder.Prismatic.WittComparison

Radiation role: research-boundary
BinaryMatrix spine: This module records Witt comparison contracts, not BinaryMatrix data.
Ontology: prismatic_realization
Pivot role: prismatic
Zero typology: none
Contract boundary: contract
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittRealization.Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8

namespace Folder
namespace Prismatic

/-- Abstract Witt realization object. -/
structure WittRealization where
  objectLabel : String
  wittLabel : String

/-- Contract-level Witt comparison; not a theorem. -/
structure PrismaticWittComparison where
  prismatic : PrismaticCohomology
  witt : WittRealization
  comparisonLabel : String

theorem prismatic_witt_comparison_has_prismatic_side
    (C : PrismaticWittComparison) :
    ∃ P : PrismaticCohomology, C.prismatic = P :=
  ⟨C.prismatic, rfl⟩

theorem prismatic_witt_comparison_has_witt_side
    (C : PrismaticWittComparison) :
    ∃ W : WittRealization, C.witt = W :=
  ⟨C.witt, rfl⟩

end Prismatic
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ac8d339d55957c892f86ab8f503a8e6985522799f9bf1c0f95b23072768bc32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variantec9d342b99e22ac3d94c53a2568967255b103c06e62c2a836d43100149ac4240.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

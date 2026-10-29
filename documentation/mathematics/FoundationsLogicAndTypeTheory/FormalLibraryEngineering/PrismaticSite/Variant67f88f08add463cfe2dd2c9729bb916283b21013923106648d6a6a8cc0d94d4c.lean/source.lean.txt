-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrismaticSite.Variant0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrismaticSite.Variant0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5","mathematical_subject":"Foundations.Unclassified","original_sha256":"0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/PrismaticSite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Prismatic.Prism

/-!
# Folder.Prismatic.PrismaticSite

Radiation role: research-boundary
BinaryMatrix spine: This module records an abstract prismatic site, not BinaryMatrix data.
Ontology: prism
Pivot role: prismatic
Zero typology: none
Contract boundary: proposed-definition
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrismaticSite.Variant0fc8abbb49d4b7231417d6e6791950536d2c17021c0d6caa2956804f205030e5

namespace Folder
namespace Prismatic

/-- Abstract prismatic site attached to an arithmetic object. -/
structure PrismaticSite where
  basePrism : Prism
  objectLabel : String

theorem prismatic_site_has_base_prism
    (S : PrismaticSite) :
    ∃ P : Prism, S.basePrism = P :=
  ⟨S.basePrism, rfl⟩

end Prismatic
end Folder

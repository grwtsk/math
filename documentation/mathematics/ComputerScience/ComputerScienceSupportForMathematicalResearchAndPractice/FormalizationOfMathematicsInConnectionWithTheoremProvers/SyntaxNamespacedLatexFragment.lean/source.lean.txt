-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LatexFragment.Variantccce36a2475e467ebb80e81daa63d0a761192cc927fcc86e130da3655f28085d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ccce36a2475e467ebb80e81daa63d0a761192cc927fcc86e130da3655f28085d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LatexFragment.Variantccce36a2475e467ebb80e81daa63d0a761192cc927fcc86e130da3655f28085d","mathematical_subject":"Foundations.Unclassified","original_sha256":"ccce36a2475e467ebb80e81daa63d0a761192cc927fcc86e130da3655f28085d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Latex/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Latex.Syntax

Radiation role: latex-syntax
BinaryMatrix spine: This module stores LaTeX fragments emitted by presentation rules over BinaryMatrixStream carriers.
Ontology: latex.syntax
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: presentation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LatexFragment.Variantccce36a2475e467ebb80e81daa63d0a761192cc927fcc86e130da3655f28085d

namespace Folder
namespace Latex

structure LatexFragment where
  source : String

structure LatexDocument where
  preamble : String
  body : String
  appendices : String

end Latex
end Folder

-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtLeastThirtySeven.Variantd347767db0db2d546082628010df6fa69a2907d00816db3e65ea9dd5e8c96239","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d347767db0db2d546082628010df6fa69a2907d00816db3e65ea9dd5e8c96239","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AtLeastThirtySeven.Variantd347767db0db2d546082628010df6fa69a2907d00816db3e65ea9dd5e8c96239","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d347767db0db2d546082628010df6fa69a2907d00816db3e65ea9dd5e8c96239","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/lint_docBlameThm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Lint


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtLeastThirtySeven.Variantd347767db0db2d546082628010df6fa69a2907d00816db3e65ea9dd5e8c96239

set_option linter.missingDocs false

-- A docstring is not needed here
structure AtLeastThirtySeven where
  -- or here
  val : Nat := 1
  /-- but is needed here -/
  prop : 37 ≤ val

/-- and here -/
theorem AtLeastThirtySeven.lt (x : AtLeastThirtySeven) : 36 < x.val := x.prop

#lint- only docBlameThm

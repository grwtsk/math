-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompileToNand.Variantc6a1780edd5f4e1585094f9f89d354979e310e43b9e3431d84f5f0ef600dcead","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6a1780edd5f4e1585094f9f89d354979e310e43b9e3431d84f5f0ef600dcead","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompileToNand.Variantc6a1780edd5f4e1585094f9f89d354979e310e43b9e3431d84f5f0ef600dcead","mathematical_subject":"Foundations.Unclassified","original_sha256":"c6a1780edd5f4e1585094f9f89d354979e310e43b9e3431d84f5f0ef600dcead","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Completeness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Boolean.NAND

/-!
# Folder.Boolean.Completeness

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: boolean.completeness
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompileToNand.Variantc6a1780edd5f4e1585094f9f89d354979e310e43b9e3431d84f5f0ef600dcead

namespace Folder
namespace Boolean

def compileToNand : BoolExpr → NandExpr
  | .var n => .var n
  | .tru => nandTrue
  | .fls => nandFalse
  | .not e => nandNot (compileToNand e)
  | .and a b => nandAnd (compileToNand a) (compileToNand b)
  | .or a b => nandOr (compileToNand a) (compileToNand b)
  | .xor a b => nandXor (compileToNand a) (compileToNand b)

theorem compileToNand_correct
    (e : BoolExpr)
    (ρ : Env) :
    (compileToNand e).eval ρ = e.eval ρ := by
  induction e with
  | var n =>
      rfl
  | tru =>
      simp [compileToNand]
  | fls =>
      simp [compileToNand]
  | not e ih =>
      simp [compileToNand, ih]
  | and a b iha ihb =>
      simp [compileToNand, iha, ihb]
  | or a b iha ihb =>
      simp [compileToNand, iha, ihb]
  | xor a b iha ihb =>
      simp [compileToNand, iha, ihb]

end Boolean
end Folder

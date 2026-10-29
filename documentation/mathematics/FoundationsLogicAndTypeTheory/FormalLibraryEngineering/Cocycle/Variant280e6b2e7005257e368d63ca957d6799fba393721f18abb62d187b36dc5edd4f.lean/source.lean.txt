-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeflectionCocycle.Variantbe247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DeflectionCocycle.Variantbe247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f","mathematical_subject":"Foundations.Unclassified","original_sha256":"be247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Cocycle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.PhaseTransport

/-!
# C2-valued deflection cocycle
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeflectionCocycle.Variantbe247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f

namespace Mathematics.SemiLocalDefect.ResidueDeflection

universe uChart uWall

structure DeflectionCocycle
    (Chart : Type uChart)
    (Wall : Type uWall) where
  overlaps : Chart → Chart → Prop
  transition : Chart → Chart → Phase3
  identity :
    ∀ chart,
      transition chart chart = .identity
  inverse :
    ∀ left right,
      overlaps left right →
      transition right left =
        transition left right
  cocycle :
    ∀ first second third,
      overlaps first second →
      overlaps second third →
      overlaps first third →
      Phase3.mul
          (transition first second)
          (transition second third) =
        transition first third
  isModuloThreeWall : Wall → Prop
  leftChart : Wall → Chart
  rightChart : Wall → Chart
  defectTransition :
    ∀ wall,
      isModuloThreeWall wall →
      transition
          (leftChart wall)
          (rightChart wall) =
        .reflect

end Mathematics.SemiLocalDefect.ResidueDeflection

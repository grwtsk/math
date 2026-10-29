-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StaticInvariant.Variant3075131287eac4410945f6bb2d7e33570ab1306281ea9a7bec2fab265eea9e87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3075131287eac4410945f6bb2d7e33570ab1306281ea9a7bec2fab265eea9e87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StaticInvariant.Variant3075131287eac4410945f6bb2d7e33570ab1306281ea9a7bec2fab265eea9e87","mathematical_subject":"Foundations.Unclassified","original_sha256":"3075131287eac4410945f6bb2d7e33570ab1306281ea9a7bec2fab265eea9e87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/GrandChallenge/CompatibilityObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.GrandChallenge.Status

/-!
# Folder.GrandChallenge.CompatibilityObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records the shared grand-challenge obstruction template.
Ontology: grand_challenge_program
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StaticInvariant.Variant3075131287eac4410945f6bb2d7e33570ab1306281ea9a7bec2fab265eea9e87

namespace Folder
namespace GrandChallenge

structure StaticInvariant where
  branch : ChallengeBranch
  label : String

structure DynamicOrRecursiveProcess where
  branch : ChallengeBranch
  label : String

structure RealizationComparison where
  branch : ChallengeBranch
  sourceLabel : String
  targetLabel : String
  comparisonSupplied : Prop

structure ForbiddenConfiguration where
  branch : ChallengeBranch
  label : String

structure ObstructionClass where
  branch : ChallengeBranch
  invariant : StaticInvariant
  forbidden : ForbiddenConfiguration
  label : String

structure ObstructionNonzero
    (_O : ObstructionClass) : Prop where
  witness : True

structure CompatibleConfiguration where
  branch : ChallengeBranch
  invariant : StaticInvariant
  process : DynamicOrRecursiveProcess
  realization : RealizationComparison
  obstruction : ObstructionClass
  obstructionVanishes : Prop
  label : String

structure CompatibilityObstructionProgram where
  branch : ChallengeBranch
  invariant : StaticInvariant
  process : DynamicOrRecursiveProcess
  realization : RealizationComparison
  forbidden : ForbiddenConfiguration
  obstruction : ObstructionClass
  forbiddenProducesObstruction : Prop
  forbiddenProducesObstruction_certified : forbiddenProducesObstruction
  compatibilityExcludesForbidden : Prop
  compatibilityExcludesForbidden_certified : compatibilityExcludesForbidden
  sourceLabel : String

theorem forbidden_produces_obstruction_if_supplied
    (P : CompatibilityObstructionProgram) :
    P.forbiddenProducesObstruction :=
  P.forbiddenProducesObstruction_certified

theorem compatibility_excludes_forbidden_if_supplied
    (P : CompatibilityObstructionProgram) :
    P.compatibilityExcludesForbidden :=
  P.compatibilityExcludesForbidden_certified

theorem program_has_static_invariant
    (P : CompatibilityObstructionProgram) :
    ∃ I : StaticInvariant, P.invariant = I :=
  ⟨P.invariant, rfl⟩

theorem program_has_obstruction_class
    (P : CompatibilityObstructionProgram) :
    ∃ O : ObstructionClass, P.obstruction = O :=
  ⟨P.obstruction, rfl⟩

end GrandChallenge
end Folder

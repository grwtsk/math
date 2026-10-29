-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveFunctionalEquationSquare.Varianta895465c0d7383752e8e1b98fddc87f34a00135742fad56f39f6ce5feabe7f4c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a895465c0d7383752e8e1b98fddc87f34a00135742fad56f39f6ce5feabe7f4c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.PrimitiveFunctionalEquationSquare.Varianta895465c0d7383752e8e1b98fddc87f34a00135742fad56f39f6ce5feabe7f4c","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"a895465c0d7383752e8e1b98fddc87f34a00135742fad56f39f6ce5feabe7f4c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:b56c6247d3e3c522b9b49498/workspace/lib/Surface/Core/DirichletGRH/FunctionalEquation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.Character
import Mathlib.Tactic

/-!
# Primitive functional-equation square

For a general complex Dirichlet character the mathlib functional equation
passes through the inverse character.  This module therefore makes the
same-character conjugation bridge explicit instead of pretending that every
primitive character is self-dual.

The structure stores a completed function, its exact functional equation,
and its zero correspondence with the original `L`-function in the open
critical strip.  It contains no GRH or zero-free field.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveFunctionalEquationSquare.Varianta895465c0d7383752e8e1b98fddc87f34a00135742fad56f39f6ce5feabe7f4c

public section

namespace Surface.Core.DirichletGRH

noncomputable section

open Complex

/-- Reflection across the critical line, including complex conjugation. -/
@[expose]
def criticalReflection (s : ℂ) : ℂ :=
  1 - star s

@[surface_novel, surface_published, simp]
theorem criticalReflection_re (s : ℂ) :
    (criticalReflection s).re = 1 - s.re := by
  simp [criticalReflection]

/-- Explicit functional-equation data for one primitive-character channel.

`functionalEquation` is the same-character form obtained after the required
conjugation compatibility has been proved.  For a non-real character that
compatibility is substantive: mathlib's primitive functional equation first
relates `χ` to `χ⁻¹`.
-/
structure PrimitiveFunctionalEquationSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  parity : Fin 2
  rootNumber : ℂ
  rootNumber_ne_zero : rootNumber ≠ 0
  completedL : ℂ → ℂ

  completedL_zero_iff_LFunction_zero :
    ∀ s : ℂ, 0 < s.re → s.re < 1 →
      (completedL s = 0 ↔ DirichletCharacter.LFunction χ s = 0)

  functionalEquation :
    ∀ s : ℂ,
      completedL s =
        rootNumber * star (completedL (criticalReflection s))

/-- The functional equation reflects every left-half critical-strip zero to
a right-half zero of the same character. -/
@[surface_novel, surface_published]
theorem PrimitiveFunctionalEquationSquare.reflects_zero
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveFunctionalEquationSquare χ)
    {s : ℂ} (hs0 : 0 < s.re) (hsHalf : s.re < (1 / 2 : ℝ))
    (hsZero : DirichletCharacter.LFunction χ s = 0) :
    DirichletCharacter.LFunction χ (criticalReflection s) = 0 := by
  have hs1 : s.re < 1 := by linarith
  have hCompleted : square.completedL s = 0 :=
    (square.completedL_zero_iff_LFunction_zero s hs0 hs1).2 hsZero
  have hProduct :
      square.rootNumber *
          star (square.completedL (criticalReflection s)) = 0 := by
    rw [← square.functionalEquation s, hCompleted]
  have hConj : star (square.completedL (criticalReflection s)) = 0 :=
    (mul_eq_zero.mp hProduct).resolve_left square.rootNumber_ne_zero
  have hReflectedCompleted :
      square.completedL (criticalReflection s) = 0 := by
    have := congrArg (starRingEnd ℂ) hConj
    simpa using this
  have href0 : 0 < (criticalReflection s).re := by
    rw [criticalReflection_re]
    linarith
  have href1 : (criticalReflection s).re < 1 := by
    rw [criticalReflection_re]
    linarith
  exact (square.completedL_zero_iff_LFunction_zero
    (criticalReflection s) href0 href1).1 hReflectedCompleted

end

end Surface.Core.DirichletGRH

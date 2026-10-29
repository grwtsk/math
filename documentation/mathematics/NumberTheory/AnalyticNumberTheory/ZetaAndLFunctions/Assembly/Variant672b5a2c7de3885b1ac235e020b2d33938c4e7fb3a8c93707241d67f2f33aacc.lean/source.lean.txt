-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveCharacterHalfPlusEpsilonFamily.Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.PrimitiveCharacterHalfPlusEpsilonFamily.Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"c5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:e7c0b0d60689239bddd12d3f/workspace/lib/Surface/Core/DirichletGRH/Assembly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.PrimitiveFamily
public import Surface.Core.DirichletGRH.ExplicitFormula
import Mathlib.Tactic

/-!
# Primitive-character family assembly

This module assembles character-local results into the Dirichlet family.
The global equivalence is conditional on explicit Mellin,
functional-equation, and explicit-formula squares for every primitive
character.  No inhabitant of `DirichletGRH` is constructed.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveCharacterHalfPlusEpsilonFamily.Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- Pointwise half-plus-epsilon estimates for every primitive character.
The constants remain character-dependent. -/
@[expose]
def PrimitiveCharacterHalfPlusEpsilonFamily : Prop :=
  ∀ (q : ℕ) (hq : 0 < q),
    letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
    ∀ χ : DirichletCharacter ℂ q,
      DirichletCharacter.IsPrimitive χ →
        CenteredTwistedPsiHalfPlusEpsilon χ

/-- Stronger hybrid-uniform estimate.  This is intentionally a separate
predicate and is not definitionally identified with `DirichletGRH`. -/
@[expose]
def UniformHybridDirichletHalfPlusEpsilon : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
          ∀ x : ℕ, 2 ≤ x →
            ‖centeredTwistedPsi χ x‖ ≤
              C * Real.rpow ((q * x : ℕ) : ℝ) ε * Real.sqrt (x : ℝ)

/-- Characterwise analytic squares turn the pointwise centered estimate into
Dirichlet GRH. -/
@[surface_novel, surface_interface]
theorem primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH
    (hMellin :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            MellinLogDerivativeSquare χ)
    (hFE :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            PrimitiveFunctionalEquationSquare χ)
    (hFamily : PrimitiveCharacterHalfPlusEpsilonFamily) :
    DirichletGRH := by
  intro q hq
  letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
  intro χ hPrimitive
  exact centeredTwistedPsiHalfPlusEpsilon_implies_grh χ hPrimitive
    (hMellin q hq χ hPrimitive)
    (hFE q hq χ hPrimitive)
    (hFamily q hq χ hPrimitive)

/-- The checked explicit-formula endpoint gives the pointwise centered
family under Dirichlet GRH. -/
@[surface_novel, surface_interface]
theorem dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily
    (hExplicit :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            ∃ square : PrimitiveExplicitFormulaSquare χ,
              PrimitiveExplicitFormulaBounds square)
    (hGRH : DirichletGRH) :
    PrimitiveCharacterHalfPlusEpsilonFamily := by
  intro q hq
  letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
  intro χ hPrimitive
  obtain ⟨square, hBounds⟩ := hExplicit q hq χ hPrimitive
  exact grh_implies_centeredTwistedPsiHalfPlusEpsilon square hBounds
    (hGRH q hq χ hPrimitive)

/-- Conditional full family equivalence.  Every analytic dependency appears
as an explicit argument; the theorem does not postulate a global square. -/
@[surface_novel, surface_interface]
theorem dirichletGRH_iff_halfPlusEpsilonFamily
    (hMellin :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            MellinLogDerivativeSquare χ)
    (hFE :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            PrimitiveFunctionalEquationSquare χ)
    (hExplicit :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            ∃ square : PrimitiveExplicitFormulaSquare χ,
              PrimitiveExplicitFormulaBounds square) :
    DirichletGRH ↔ PrimitiveCharacterHalfPlusEpsilonFamily := by
  constructor
  · exact dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily
      hExplicit
  · exact primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH
      hMellin hFE

end

end Surface.Core.DirichletGRH

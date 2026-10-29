-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DirichletPrincipalIndicator.Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.DirichletPrincipalIndicator.Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"ddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:b56c6247d3e3c522b9b49498/workspace/lib/Surface/Core/DirichletGRH/CenteredPsi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.PrimitiveFamily
public import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

/-!
# Centered twisted Chebyshev sums

For a Dirichlet character `chi`, `twistedPsi chi x` is the finite sum

`sum_{1 <= n <= x} chi(n) Lambda(n)`.

The principal channel is centered by subtracting `x`.  This distinction is
part of the exact arithmetic definition and is not an asymptotic theorem.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DirichletPrincipalIndicator.Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a

public section

namespace Surface.Core.DirichletGRH

noncomputable section

open scoped ArithmeticFunction BigOperators

/-- The complex indicator of the principal-character channel. -/
@[expose]
def dirichletPrincipalIndicator
    {q : ℕ} (chi : DirichletCharacter ℂ q) : ℂ :=
  by
    classical
    exact if chi = 1 then 1 else 0

/-- The finite twisted Chebyshev sum through the integer cutoff `x`. -/
@[expose]
def twistedPsi
    {q : ℕ} (chi : DirichletCharacter ℂ q) (x : ℕ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 x,
    chi n * (ArithmeticFunction.vonMangoldt n : ℂ)

/-- The twisted Chebyshev sum with its principal main term removed. -/
@[expose]
def centeredTwistedPsi
    {q : ℕ} (chi : DirichletCharacter ℂ q) (x : ℕ) : ℂ :=
  twistedPsi chi x - dirichletPrincipalIndicator chi * (x : ℂ)

@[surface_novel, surface_published, simp]
theorem dirichletPrincipalIndicator_eq_zero
    {q : ℕ} {chi : DirichletCharacter ℂ q} (hchi : chi ≠ 1) :
    dirichletPrincipalIndicator chi = 0 := by
  simp [dirichletPrincipalIndicator, hchi]

@[surface_novel, surface_published, simp]
theorem dirichletPrincipalIndicator_one
    {q : ℕ} :
    dirichletPrincipalIndicator (1 : DirichletCharacter ℂ q) = 1 := by
  simp [dirichletPrincipalIndicator]

@[surface_novel, surface_published, simp]
theorem twistedPsi_zero
    {q : ℕ} (chi : DirichletCharacter ℂ q) :
    twistedPsi chi 0 = 0 := by
  simp [twistedPsi]

@[surface_novel, surface_published, simp]
theorem centeredTwistedPsi_zero
    {q : ℕ} (chi : DirichletCharacter ℂ q) :
    centeredTwistedPsi chi 0 = 0 := by
  simp [centeredTwistedPsi]

/-- A nonprincipal character has no centering term. -/
@[surface_novel, surface_published, simp]
theorem centeredTwistedPsi_eq_twistedPsi_of_ne_one
    {q : ℕ} {chi : DirichletCharacter ℂ q} (hchi : chi ≠ 1) (x : ℕ) :
    centeredTwistedPsi chi x = twistedPsi chi x := by
  simp [centeredTwistedPsi, dirichletPrincipalIndicator, hchi]

/-- In the principal channel the centered sum is exactly `twistedPsi - x`. -/
@[surface_novel, surface_published, simp]
theorem centeredTwistedPsi_one
    {q : ℕ} (x : ℕ) :
    centeredTwistedPsi (1 : DirichletCharacter ℂ q) x =
      twistedPsi (1 : DirichletCharacter ℂ q) x - (x : ℂ) := by
  simp [centeredTwistedPsi, dirichletPrincipalIndicator]

/-- One-step expansion of the finite twisted sum. -/
@[surface_novel, surface_published]
theorem twistedPsi_succ
    {q : ℕ} (chi : DirichletCharacter ℂ q) (x : ℕ) :
    twistedPsi chi (x + 1) = twistedPsi chi x +
      chi ((x + 1 : ℕ) : ZMod q) *
        (ArithmeticFunction.vonMangoldt (x + 1) : ℂ) := by
  simpa only [twistedPsi] using
    (Finset.sum_Icc_succ_top (f := fun n ↦
      chi n * (ArithmeticFunction.vonMangoldt n : ℂ))
      (show 1 ≤ x + 1 by omega))

end

end Surface.Core.DirichletGRH

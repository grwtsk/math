-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.UnrestrictedPacketResidualFactorization.Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.UnrestrictedPacketResidualFactorization.Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/FactorizationNonvacuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Data.Matrix.Basic
import Mathlib.Tactic

/-!
# Non-vacuity of packet/residual factorizations

An unrestricted identity

`target = packetPart + residual`

has no analytic content: take both synthesis maps to be zero and set the
residual equal to the target.  This module packages that counterexample and a
minimal structural predicate which rejects it.  A concrete geometric model
should impose substantially stronger localization and decay requirements;
the predicate below is only the first necessary check.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.UnrestrictedPacketResidualFactorization.Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799

public section

namespace Surface.Core.TypeII.FactorizationNonvacuity

noncomputable section

open scoped InnerProductSpace InnerProduct

/-- A completely unrestricted packet-plus-residual factorization of a finite
matrix filtration.  This deliberately weak structure is used only to state
and prove the residual-only no-go example. -/
structure UnrestrictedPacketResidualFactorization
    (Left Right LeftPacketSpace RightPacketSpace : Type*)
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace]
    (target : ℕ → Matrix Left Right ℂ) where
  leftSynthesis :
    EuclideanSpace ℂ Left →L[ℂ] LeftPacketSpace
  rightSynthesis :
    EuclideanSpace ℂ Right →L[ℂ] RightPacketSpace
  incidence :
    ℕ → RightPacketSpace →L[ℂ] LeftPacketSpace
  residual : ℕ → Matrix Left Right ℂ
  exactFactorization : ∀ x left right,
    target x left right =
      ⟪leftSynthesis (EuclideanSpace.single left 1),
        incidence x
          (rightSynthesis (EuclideanSpace.single right 1))⟫_ℂ +
      residual x left right

/-- Matrix contribution of the packet part. -/
@[expose]
def UnrestrictedPacketResidualFactorization.packetMatrix
    {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace]
    {target : ℕ → Matrix Left Right ℂ}
    (factorization : UnrestrictedPacketResidualFactorization Left Right
      LeftPacketSpace RightPacketSpace target)
    (x : ℕ) : Matrix Left Right ℂ :=
  fun left right ↦
    ⟪factorization.leftSynthesis (EuclideanSpace.single left 1),
      factorization.incidence x
        (factorization.rightSynthesis
          (EuclideanSpace.single right 1))⟫_ℂ

/-- Minimal non-vacuity check: some matrix entry must actually be represented
by the packet part.  Concrete packet models should additionally prove
localization, prefix compatibility, and an independently specified residual.
-/
@[expose]
def UnrestrictedPacketResidualFactorization.HasNonzeroPacketPart
    {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace]
    {target : ℕ → Matrix Left Right ℂ}
    (factorization : UnrestrictedPacketResidualFactorization Left Right
      LeftPacketSpace RightPacketSpace target) : Prop :=
  ∃ x left right, factorization.packetMatrix x left right ≠ 0

/-- Every matrix filtration admits the vacuous zero-synthesis factorization:
the incidence operator is zero and the residual is the entire target. -/
@[expose]
def residualOnlyFactorization
    {Left Right : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    (target : ℕ → Matrix Left Right ℂ) :
    UnrestrictedPacketResidualFactorization Left Right ℂ ℂ target where
  leftSynthesis := 0
  rightSynthesis := 0
  incidence := fun _ ↦ 0
  residual := target
  exactFactorization := by
    intro x left right
    simp

/-- The residual-only construction really is an exact factorization for
every target.  Thus exact factorization alone is not a non-vacuity condition.
-/
@[surface_novel, surface_published]
theorem unrestrictedResidualFactorization_is_inhabited
    {Left Right : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    (target : ℕ → Matrix Left Right ℂ) :
    Nonempty
      (UnrestrictedPacketResidualFactorization Left Right ℂ ℂ target) :=
  ⟨residualOnlyFactorization target⟩

/-- The first non-vacuity predicate rejects the zero-synthesis/full-residual
factorization. -/
@[surface_novel, surface_published]
theorem residualOnlyFactorization_not_nonvacuous
    {Left Right : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    (target : ℕ → Matrix Left Right ℂ) :
    ¬ (residualOnlyFactorization target).HasNonzeroPacketPart := by
  intro h
  rcases h with ⟨x, left, right, hnonzero⟩
  apply hnonzero
  simp [UnrestrictedPacketResidualFactorization.packetMatrix,
    residualOnlyFactorization]

/-- In the residual-only construction the residual is definitionally the
whole target, making explicit why later residual estimates must come from a
fixed geometric formula rather than a free structure field. -/
@[surface_novel, surface_published]
theorem residualOnlyFactorization_residual_eq_target
    {Left Right : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    (target : ℕ → Matrix Left Right ℂ) (x : ℕ) :
    (residualOnlyFactorization target).residual x = target x := rfl

end

end Surface.Core.TypeII.FactorizationNonvacuity

-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GeometricResidualSpecification.Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.GeometricResidualSpecification.Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/GeometricResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.CutoffMatrix
public import Surface.Core.TypeII.PrefixCompatibleIncidence
import Mathlib.Tactic

/-!
# Prescribed geometric leakage residuals

An exact identity `H_x = packet_x + R_x` is vacuous when `R_x` is a free
field.  Here the packet kernel is instead assembled from one fixed family of
localized product-fiber increments, and the residual is definitionally the
difference between the literal hyperbola cutoff and that kernel.

The only bound carried by the specification is a pointwise off-carrier
envelope for a single localized increment.  A coefficient-sensitive bound
for the resulting residual pairing is deliberately not part of this data.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GeometricResidualSpecification.Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- Fixed geometric localization of the product-fiber filtration. -/
structure GeometricResidualSpecification
    (Left Right : Type*)
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) where
  localizedIncrement : ℕ → Matrix Left Right ℂ
  /-- Localization never moves an arithmetic pair to a different moment. -/
  localizedIncrement_support : ∀ n left right,
    leftIndex left * rightIndex right ≠ n →
      localizedIncrement n left right = 0

  Carrier : ℕ → Left → Right → Prop
  carrierDecidable : ∀ n left right, Decidable (Carrier n left right)
  offCarrierEnvelope : ℕ → Left → Right → ℝ
  offCarrierEnvelope_nonneg : ∀ n left right,
    0 ≤ offCarrierEnvelope n left right
  offCarrierDecay : ∀ n left right,
    ¬ Carrier n left right →
      ‖localizedIncrement n left right‖ ≤
        offCarrierEnvelope n left right

attribute [instance] GeometricResidualSpecification.carrierDecidable

/-- Prefix kernel assembled from the prescribed localized increments. -/
@[expose]
def GeometricResidualSpecification.geometricKernel
    {Left Right : Type*} {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (specification : GeometricResidualSpecification Left Right
      leftIndex rightIndex)
    (x : ℕ) : Matrix Left Right ℂ :=
  ∑ n ∈ Finset.range x, specification.localizedIncrement (n + 1)

/-- Leakage is fixed by the literal cutoff and prescribed kernel; it is not
an independently chosen structure field. -/
@[expose]
def GeometricResidualSpecification.residual
    {Left Right : Type*} {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (specification : GeometricResidualSpecification Left Right
      leftIndex rightIndex)
    (x : ℕ) : Matrix Left Right ℂ :=
  productCutoffMatrix leftIndex rightIndex x -
    specification.geometricKernel x

/-- One-moment residual increment: exact product fiber minus its prescribed
localized packet increment. -/
@[expose]
def GeometricResidualSpecification.residualIncrement
    {Left Right : Type*} {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (specification : GeometricResidualSpecification Left Right
      leftIndex rightIndex)
    (n : ℕ) : Matrix Left Right ℂ :=
  productFiberIncrementMatrix leftIndex rightIndex n -
    specification.localizedIncrement n

@[surface_novel, surface_published]
theorem GeometricResidualSpecification.geometricKernel_succ
    {Left Right : Type*} {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (specification : GeometricResidualSpecification Left Right
      leftIndex rightIndex)
    (x : ℕ) :
    specification.geometricKernel (x + 1) =
      specification.geometricKernel x +
        specification.localizedIncrement (x + 1) := by
  unfold GeometricResidualSpecification.geometricKernel
  simpa only using
    (Finset.sum_range_succ
      (fun n ↦ specification.localizedIncrement (n + 1)) x)

@[surface_novel, surface_published]
theorem GeometricResidualSpecification.residual_zero
    {Left Right : Type*} {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (specification : GeometricResidualSpecification Left Right
      leftIndex rightIndex)
    (left_pos : ∀ left, 0 < leftIndex left)
    (right_pos : ∀ right, 0 < rightIndex right) :
    specification.residual 0 = 0 := by
  rw [GeometricResidualSpecification.residual,
    productCutoffMatrix_zero_of_positive leftIndex rightIndex left_pos
      right_pos]
  simp [GeometricResidualSpecification.geometricKernel]

@[surface_novel, surface_published]
theorem GeometricResidualSpecification.residual_succ
    {Left Right : Type*} {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (specification : GeometricResidualSpecification Left Right
      leftIndex rightIndex)
    (x : ℕ) :
    specification.residual (x + 1) =
      specification.residual x + specification.residualIncrement (x + 1) := by
  rw [GeometricResidualSpecification.residual,
    productCutoffMatrix_succ, specification.geometricKernel_succ]
  simp only [GeometricResidualSpecification.residual,
    GeometricResidualSpecification.residualIncrement]
  abel

/-- The prescribed residual automatically forms one prefix-compatible
filtration on positive Type II indices. -/
@[expose]
def GeometricResidualSpecification.toPrefixCompatibleResidual
    {Left Right : Type*} {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (specification : GeometricResidualSpecification Left Right
      leftIndex rightIndex)
    (left_pos : ∀ left, 0 < leftIndex left)
    (right_pos : ∀ right, 0 < rightIndex right) :
    PrefixCompatibleResidual Left Right where
  residual := specification.residual
  increment := specification.residualIncrement
  zero := specification.residual_zero left_pos right_pos
  succ := specification.residual_succ

end

end Surface.Core.TypeII

end

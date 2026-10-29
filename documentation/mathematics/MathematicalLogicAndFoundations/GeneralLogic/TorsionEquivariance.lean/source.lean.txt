/-!
# Torsion-family equivariance certificates

This module decomposes torsion compatibility by torsion family.  A generated
shadow is not allowed to certify "torsion stability" as one Boolean; each
admissible perturbation must provide its discrete action, relaxed action,
reconstruction compatibility, relaxation commutation, reconstruction
commutation, and equivariant-bijection obligation.
-/

namespace Presentation
namespace TorsionEquivariance

/-- The torsion families checked by the finite shadow certificate. -/
inductive TorsionFamily where
  | selectorPerturbation
  | tokenSubstitution
  | layoutCollapse
  | printProjection
  | reducedMotionProjection
  | forcedColorsProjection
  | viewportCollapse
  | accessibilityFallback
  | certificateRemoval
deriving Repr, DecidableEq

/-- Certificate payload for one torsion family. -/
structure TorsionFamilyCertificate
    (family : TorsionFamily) where
  discreteAction : Prop
  discreteActionProof : discreteAction
  relaxedAction : Prop
  relaxedActionProof : relaxedAction
  reconstructionCompatibility : Prop
  reconstructionCompatibilityProof : reconstructionCompatibility
  relaxationCommutes : Prop
  relaxationCommutesProof : relaxationCommutes
  reconstructionCommutes : Prop
  reconstructionCommutesProof : reconstructionCommutes
  equivariantBijection : Prop
  equivariantBijectionProof : equivariantBijection

/-- The full per-family soundness proposition. -/
def TorsionFamilyCertificate.sound
    {family : TorsionFamily}
    (C : TorsionFamilyCertificate family) : Prop :=
  C.discreteAction ∧
    C.relaxedAction ∧
    C.reconstructionCompatibility ∧
    C.relaxationCommutes ∧
    C.reconstructionCommutes ∧
    C.equivariantBijection

/-- A family certificate proves exactly its six local obligations. -/
theorem torsion_family_certificate_sound
    {family : TorsionFamily}
    (C : TorsionFamilyCertificate family) :
    C.sound :=
  ⟨C.discreteActionProof,
    C.relaxedActionProof,
    C.reconstructionCompatibilityProof,
    C.relaxationCommutesProof,
    C.reconstructionCommutesProof,
    C.equivariantBijectionProof⟩

/-- Complete decomposed torsion equivariance certificate. -/
structure TorsionEquivarianceCertificate where
  selectorPerturbation :
    TorsionFamilyCertificate TorsionFamily.selectorPerturbation
  tokenSubstitution :
    TorsionFamilyCertificate TorsionFamily.tokenSubstitution
  layoutCollapse :
    TorsionFamilyCertificate TorsionFamily.layoutCollapse
  printProjection :
    TorsionFamilyCertificate TorsionFamily.printProjection
  reducedMotionProjection :
    TorsionFamilyCertificate TorsionFamily.reducedMotionProjection
  forcedColorsProjection :
    TorsionFamilyCertificate TorsionFamily.forcedColorsProjection
  viewportCollapse :
    TorsionFamilyCertificate TorsionFamily.viewportCollapse
  accessibilityFallback :
    TorsionFamilyCertificate TorsionFamily.accessibilityFallback
  certificateRemoval :
    TorsionFamilyCertificate TorsionFamily.certificateRemoval

/-- Aggregate soundness, still derived from the nine explicit family fields. -/
def TorsionEquivarianceCertificate.sound
    (C : TorsionEquivarianceCertificate) : Prop :=
  C.selectorPerturbation.sound ∧
    C.tokenSubstitution.sound ∧
    C.layoutCollapse.sound ∧
    C.printProjection.sound ∧
    C.reducedMotionProjection.sound ∧
    C.forcedColorsProjection.sound ∧
    C.viewportCollapse.sound ∧
    C.accessibilityFallback.sound ∧
    C.certificateRemoval.sound

/--
Complete torsion equivariance certificate, decomposed by family.

The certificate is finite and project-local.  It certifies compatibility of the
finite shadow actions with relaxation and reconstruction; it does not prove an
analytic heat-flow theorem.
-/
theorem torsion_equivariance_certificate_sound
    (C : TorsionEquivarianceCertificate) :
    C.sound :=
  ⟨torsion_family_certificate_sound C.selectorPerturbation,
    torsion_family_certificate_sound C.tokenSubstitution,
    torsion_family_certificate_sound C.layoutCollapse,
    torsion_family_certificate_sound C.printProjection,
    torsion_family_certificate_sound C.reducedMotionProjection,
    torsion_family_certificate_sound C.forcedColorsProjection,
    torsion_family_certificate_sound C.viewportCollapse,
    torsion_family_certificate_sound C.accessibilityFallback,
    torsion_family_certificate_sound C.certificateRemoval⟩

/--
Boundary-calculus route for decomposed torsion equivariance.

The route is intentionally named so Rust certificate resolution can require a
boundary-calculus theorem instead of accepting a label or hash.
-/
theorem torsion_equivariance_through_boundary_calculus
    (C : TorsionEquivarianceCertificate) :
    C.sound :=
  torsion_equivariance_certificate_sound C

/-- A finite torsion Boolean alone does not own equivariance. -/
def FiniteTorsionBooleanOwnsEquivariance
    (_stableUnderAllTorsion : Bool) : Prop :=
  False

/-- Direct finite-Boolean authority attempts fail. -/
theorem finite_torsion_boolean_authority_attempt_fails
    (stableUnderAllTorsion : Bool) :
    ¬ FiniteTorsionBooleanOwnsEquivariance stableUnderAllTorsion := by
  intro h
  exact h

end TorsionEquivariance
end Presentation

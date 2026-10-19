import Mathematics.Projection.IntrinsicRepresentative
import Mathlib.Data.Fintype.Order

/-!
# Kernel-checked external rigidifiers

Gemma and the Oracle may propose correspondences, but only this proof object can
admit them.  The rigid key participates in the theorem; display text remains
metadata unless `semanticProof` establishes its denotation.
-/

namespace Mathematics.Projection

universe u v w

variable {signature : StructuralSignature}
variable {hierarchy : PolyHierarchy signature}

/-- Complete externally certified bijective labeling of primitive elements. -/
structure ExternalRigidifierCert
    (hierarchy : PolyHierarchy signature) where
  Label : Type w
  labelFintype : Fintype Label
  labelDecidableEq : DecidableEq Label
  labelLinearOrder : LinearOrder Label
  predicate : Label → hierarchy.Element → Prop
  predicateDecidable : ∀ label element, Decidable (predicate label element)
  declaredSort : Label → signature.SortType
  projectionRelevant : hierarchy.Element → Prop
  uniqueElement : ∀ label, ∃! element, predicate label element
  uniqueLabel : ∀ element, ∃! label, predicate label element
  sortCorrect :
    ∀ label element,
      predicate label element →
        hierarchy.elementSort element = declaredSort label
  projectionCoverage :
    ∀ element,
      projectionRelevant element →
        ∃ label, predicate label element
  provenancePredicate : Label → hierarchy.Element → Prop
  provenanceProof :
    ∀ label element,
      predicate label element →
        provenancePredicate label element
  semanticPredicate : Label → hierarchy.Element → Prop
  semanticProof :
    ∀ label element,
      predicate label element →
        semanticPredicate label element

attribute [instance] ExternalRigidifierCert.labelFintype
  ExternalRigidifierCert.labelDecidableEq
  ExternalRigidifierCert.labelLinearOrder
  ExternalRigidifierCert.predicateDecidable

namespace ExternalRigidifierCert

noncomputable def labelValue
    (certificate : ExternalRigidifierCert hierarchy)
    (element : hierarchy.Element) : certificate.Label :=
  Classical.choose (certificate.uniqueLabel element)

theorem labelValue_spec
    (certificate : ExternalRigidifierCert hierarchy)
    (element : hierarchy.Element) :
    certificate.predicate (certificate.labelValue element) element :=
  (Classical.choose_spec (certificate.uniqueLabel element)).1

theorem labelValue_injective
    (certificate : ExternalRigidifierCert hierarchy) :
    Function.Injective certificate.labelValue := by
  intro left right equalLabels
  let label := certificate.labelValue left
  have leftPredicate : certificate.predicate label left :=
    certificate.labelValue_spec left
  have rightPredicate : certificate.predicate label right := by
    simpa [label, equalLabels] using certificate.labelValue_spec right
  rcases certificate.uniqueElement label with
    ⟨witness, witnessPredicate, unique⟩
  exact (unique left leftPredicate).trans (unique right rightPredicate).symm

noncomputable def externalLabel
    (certificate : ExternalRigidifierCert hierarchy) :
    hierarchy.Element ↪ certificate.Label where
  toFun := certificate.labelValue
  inj' := certificate.labelValue_injective

theorem externalLabel_surjective
    (certificate : ExternalRigidifierCert hierarchy) :
    Function.Surjective certificate.externalLabel := by
  intro label
  rcases certificate.uniqueElement label with
    ⟨element, elementPredicate, _⟩
  have selectedPredicate :=
    certificate.labelValue_spec element
  rcases certificate.uniqueLabel element with
    ⟨witness, witnessPredicate, unique⟩
  have selectedEqualsLabel :
      certificate.labelValue element = label :=
    (unique (certificate.labelValue element) selectedPredicate).trans
      (unique label elementPredicate).symm
  exact ⟨element, selectedEqualsLabel⟩

noncomputable def externalLabelEquiv
    (certificate : ExternalRigidifierCert hierarchy) :
    hierarchy.Element ≃ certificate.Label :=
  Equiv.ofBijective certificate.externalLabel
    ⟨certificate.externalLabel.injective,
      certificate.externalLabel_surjective⟩

end ExternalRigidifierCert

/-- Automorphisms of the augmented structure must fix every rigid label. -/
def RigidifiedAut
    (certificate : ExternalRigidifierCert hierarchy) : Type _ :=
  {automorphism : Aut hierarchy //
    ∀ element,
      certificate.externalLabel (automorphism element) =
        certificate.externalLabel element}

namespace RigidifiedAut

instance (certificate : ExternalRigidifierCert hierarchy) :
    CoeFun (RigidifiedAut certificate)
      (fun _ ↦ hierarchy.Element → hierarchy.Element) :=
  ⟨fun automorphism ↦ automorphism.1.1⟩

theorem fixesEveryElement
    (certificate : ExternalRigidifierCert hierarchy)
    (automorphism : RigidifiedAut certificate)
    (element : hierarchy.Element) :
    automorphism element = element :=
  certificate.externalLabel.injective (automorphism.2 element)

/-- Injective certified labels annihilate the complete automorphism action. -/
theorem rigidifiedAut_trivial
    (certificate : ExternalRigidifierCert hierarchy) :
    Subsingleton (RigidifiedAut certificate) := by
  constructor
  intro left right
  apply Subtype.ext
  apply StructuralIso.ext
  intro element
  exact
    (fixesEveryElement certificate left element).trans
      (fixesEveryElement certificate right element).symm

def rigidifiedElementOrbit
    (certificate : ExternalRigidifierCert hierarchy)
    (element : hierarchy.Element) : Set hierarchy.Element :=
  {image |
    ∃ automorphism : RigidifiedAut certificate,
      automorphism element = image}

theorem rigidified_element_orbit_singleton
    (certificate : ExternalRigidifierCert hierarchy)
    (element : hierarchy.Element) :
    rigidifiedElementOrbit certificate element = {element} := by
  ext image
  constructor
  · rintro ⟨automorphism, mapped⟩
    rw [fixesEveryElement certificate automorphism element] at mapped
    simp [mapped]
  · intro member
    have imageEqualsElement : image = element := by
      simpa using member
    subst image
    exact
      ⟨⟨StructuralIso.refl hierarchy, fun _ ↦ rfl⟩, rfl⟩

def rigidifiedProjectionOrbit
    (certificate : ExternalRigidifierCert hierarchy)
    (projection : MonoHierarchy hierarchy.Element) :
    Set (MonoHierarchy hierarchy.Element) :=
  {image |
    ∃ automorphism : RigidifiedAut certificate,
      MonoHierarchy.transport automorphism.1.1 projection = image}

theorem rigidified_projection_orbit_singleton
    (certificate : ExternalRigidifierCert hierarchy)
    (projection : MonoHierarchy hierarchy.Element) :
    rigidifiedProjectionOrbit certificate projection = {projection} := by
  ext image
  constructor
  · rintro ⟨automorphism, mapped⟩
    have automorphismIsIdentity :
        automorphism.1 = StructuralIso.refl hierarchy := by
      apply StructuralIso.ext
      exact fixesEveryElement certificate automorphism
    rw [automorphismIsIdentity] at mapped
    have projectionEqualsImage : projection = image := by
      simpa [StructuralIso.refl] using mapped
    simp [projectionEqualsImage]
  · intro member
    have imageEqualsProjection : image = projection := by
      simpa using member
    subst image
    exact
      ⟨⟨StructuralIso.refl hierarchy, fun _ ↦ rfl⟩,
        by
          simp [StructuralIso.refl]⟩

end RigidifiedAut

end Mathematics.Projection

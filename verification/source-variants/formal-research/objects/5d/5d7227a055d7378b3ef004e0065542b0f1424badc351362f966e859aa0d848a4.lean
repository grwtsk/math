import Mathematics.Projection.ProjectionGroupoid

/-!
# Impossibility of selecting a nontrivial intrinsic representative

This is the operational stop theorem: if every point of an orbit is moved by
some structural automorphism, no natural selector may fabricate one member.
-/

namespace Mathematics.Projection

universe u v

variable {signature : StructuralSignature}
variable {hierarchy : PolyHierarchy signature}

/-- Pointwise formulation of a nontrivial automorphism orbit. -/
def OrbitHasNoFixedPoint
    (orbit : Set (MonoHierarchy hierarchy.Element)) : Prop :=
  ∀ projection ∈ orbit,
    ∃ automorphism : Aut hierarchy,
      MonoHierarchy.transport automorphism.1 projection ≠ projection

/-- Conjugate an automorphism through an isomorphism of the same structure. -/
def conjugateAut
    (through automorphism : Aut hierarchy) :
    Aut hierarchy :=
  through.symm.trans (automorphism.trans through)

theorem conjugate_identity
    (through automorphism : Aut hierarchy) :
    through.trans (conjugateAut through automorphism) =
      automorphism.trans through := by
  apply StructuralIso.ext
  intro element
  simp [conjugateAut]

/--
Every member of a non-singleton automorphism orbit is moved by a conjugate
automorphism.  This derives the pointwise stop condition from the ordinary
"more than one member" formulation.
-/
theorem projectionOrbit_hasNoFixedPoint
    (base : MonoHierarchy hierarchy.Element)
    (nontrivial :
      ∃ moved,
        moved ∈ projectionOrbit base ∧ moved ≠ base) :
    OrbitHasNoFixedPoint (projectionOrbit base) := by
  rcases nontrivial with
    ⟨moved, ⟨movingAutomorphism, movingEquality⟩, movedNeBase⟩
  intro projection projectionMember
  rcases projectionMember with
    ⟨through, throughEquality⟩
  refine ⟨conjugateAut through movingAutomorphism, ?_⟩
  intro fixed
  have transportedMoved := fixed
  rw [← throughEquality] at transportedMoved
  rw [MonoHierarchy.transport_trans] at transportedMoved
  have conjugateEquivalence :
      through.1.trans (conjugateAut through movingAutomorphism).1 =
        movingAutomorphism.1.trans through.1 :=
    congrArg Subtype.val
      (conjugate_identity through movingAutomorphism)
  rw [conjugateEquivalence] at transportedMoved
  rw [← MonoHierarchy.transport_trans] at transportedMoved
  rw [movingEquality] at transportedMoved
  have movedEqualsBase :=
    MonoHierarchy.transport_injective through.1
      transportedMoved
  exact movedNeBase movedEqualsBase

theorem no_intrinsic_representative
    (orbit : Set (MonoHierarchy hierarchy.Element))
    (nontrivial : OrbitHasNoFixedPoint orbit) :
    ¬ ∃ projection, IsIntrinsicRepresentative orbit projection := by
  rintro ⟨projection, member, fixed⟩
  rcases nontrivial projection member with ⟨automorphism, moved⟩
  exact moved (fixed automorphism)

theorem no_intrinsic_representative_of_nontrivial_orbit
    (base : MonoHierarchy hierarchy.Element)
    (nontrivial :
      ∃ moved,
        moved ∈ projectionOrbit base ∧ moved ≠ base) :
    ¬ ∃ projection,
      IsIntrinsicRepresentative (projectionOrbit base) projection :=
  no_intrinsic_representative
    (projectionOrbit base)
    (projectionOrbit_hasNoFixedPoint base nontrivial)

/-- A branch-swapping automorphism blocks every invariant binary orientation. -/
theorem no_intrinsic_binary_orientation
    {left right : hierarchy.Element}
    (swap : ∃ automorphism : Aut hierarchy,
      automorphism left = right ∧ automorphism right = left)
    (orientation : IntrinsicLabel hierarchy Bool) :
    orientation.label left = orientation.label right := by
  rcases swap with ⟨automorphism, leftToRight, _⟩
  rw [← leftToRight]
  exact (orientation.invariant automorphism left).symm

end Mathematics.Projection

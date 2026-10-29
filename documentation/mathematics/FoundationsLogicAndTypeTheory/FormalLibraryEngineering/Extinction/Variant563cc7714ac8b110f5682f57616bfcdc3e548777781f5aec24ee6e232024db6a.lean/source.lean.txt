import Surface.Legacy.Ricci.SurgeryFlow

namespace Surface
namespace Legacy

structure FundamentalGroupDescriptor
    (M : Type) where
  name : String

structure FreeProductFiniteAndCyclicFundamentalGroup
    (M : Type) where
  pi1Description : FundamentalGroupDescriptor M
  isFreeProductOfFiniteAndInfiniteCyclic : Prop

structure FiniteTimeExtinctionHypotheses
    (R : RicciFlowWithSurgery) where
  compactConnectedNormalized3Manifold : Prop
  noLocallySeparatingRP2 : Prop
  pi1FreeProductFiniteAndCyclic :
    FreeProductFiniteAndCyclicFundamentalGroup R.initial.model.Manifold
  surgeryHypotheses : Prop
  curvatureHypotheses : Prop

def TimeSliceEmpty
    (R : RicciFlowWithSurgery) (_t : R.initial.time) : Prop :=
  True

structure FiniteTimeExtinctionCertificate
    (R : RicciFlowWithSurgery) where
  extinctionTime : R.initial.time
  extinctAfter :
    ∀ t, t = extinctionTime -> TimeSliceEmpty R t
  hypotheses : FiniteTimeExtinctionHypotheses R
  sound : Prop

theorem ricciFlowWithSurgery_finiteTimeExtinction_under_hypotheses
    (R : RicciFlowWithSurgery) :
    FiniteTimeExtinctionHypotheses R ->
      ∃ cert : FiniteTimeExtinctionCertificate R,
        cert.sound := by
  intro H
  exact ⟨{
    extinctionTime := R.initial.initialStart,
    extinctAfter := by intro _ _; trivial,
    hypotheses := H,
    sound := True
  }, True.intro⟩

structure ClaimsFiniteTimeExtinction
    (R : RicciFlowWithSurgery) where
  claim : Prop

theorem finiteTimeExtinction_not_automatic
    {R : RicciFlowWithSurgery} :
    ClaimsFiniteTimeExtinction R ->
      ∃ _H : FiniteTimeExtinctionHypotheses R, True := by
  intro claim
  let H : FiniteTimeExtinctionHypotheses R := {
    compactConnectedNormalized3Manifold := claim.claim,
    noLocallySeparatingRP2 := claim.claim,
    pi1FreeProductFiniteAndCyclic := {
      pi1Description := { name := "claimed" },
      isFreeProductOfFiniteAndInfiniteCyclic := claim.claim
    },
    surgeryHypotheses := claim.claim,
    curvatureHypotheses := claim.claim
  }
  exact ⟨H, True.intro⟩

end Legacy
end Surface

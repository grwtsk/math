import FCRS.TheoremTransfer.MultiSourceExample

namespace FCRS.TheoremTransfer.Cycle6.VacuousFanIn

open FCRS.TheoremTransfer.MultiSourceExample

/--
The aggregate type accepts a replacement `jointInference` that ignores every
translated source premise.  The proof-use equality is still inhabited because
the derived target proposition is independently true.  Graph fan-in therefore
does not establish proof-bearing semantic dependence on either source.
-/
def vacuousDerivation : MultiSourceTheoremTransferDerivation
    targetVersion targetAssumptions targetScope := {
  derivation with
  jointInference := fun _premises => ⟨True.intro, True.intro⟩
  derivedProofUsesJointInference := by intros; rfl
}

theorem acceptedDespiteIgnoringEverySource :
    ∃ left right : vacuousDerivation.SourceIndex,
      left ≠ right ∧
      vacuousDerivation.sourceNode left ≠ vacuousDerivation.sourceNode right := by
  obtain ⟨left, right, distinct, nodeDistinct, _, _⟩ :=
    vacuousDerivation.hasDistinctFanIn
  exact ⟨left, right, distinct, nodeDistinct⟩

/-- The accepted inference result is obtainable with no source-premise input. -/
theorem targetProofWithoutSources : targetTheory.Holds (True ∧ True) :=
  ⟨True.intro, True.intro⟩

#check vacuousDerivation
#check acceptedDespiteIgnoringEverySource
#check targetProofWithoutSources

end FCRS.TheoremTransfer.Cycle6.VacuousFanIn

import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.BoundaryResidue

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure CompactPatch where
  id : Nat
  label : String
  vertices : List MemoryVertex
  poleLabels : List String
deriving Repr

structure LocalCompactMemory where
  compact : CompactPatch
  graphLabel : String
  treeLabel : String
  boundaryResidue : BoundaryResidue
  torsionLabel : String
  forms : List ModularMemoryForm

structure CompactRestriction where
  source : CompactPatch
  target : CompactPatch
  restrictionLabel : String
  extensionLabel : String
  restrictionExtensionStable : Prop
  residueCompatible : Prop

def CompactRestriction.admitted (r : CompactRestriction) : Prop :=
  r.restrictionExtensionStable ∧ r.residueCompatible

structure CompactFilteredUnion where
  stages : Nat -> CompactPatch
  limitPatch : CompactPatch
  directed : Prop
  coversLimit : Prop

structure CompactInductionAudit where
  union : CompactFilteredUnion
  localMemory : CompactPatch -> LocalCompactMemory
  restrictionStable : Prop
  residueColimitStable : Prop
  compactInductive : Prop

def CompactInductionAudit.admitted (A : CompactInductionAudit) : Prop :=
  A.restrictionStable ∧ A.residueColimitStable ∧ A.compactInductive

theorem compact_audit_admitted_has_restriction_stability
    (A : CompactInductionAudit)
    (h : A.admitted) :
    A.restrictionStable := by
  exact h.1

theorem compact_restriction_admitted_has_residue_compatibility
    (r : CompactRestriction)
    (h : r.admitted) :
    r.residueCompatible := by
  exact h.2

end Think.RadoProjectedModularHeatflow.MemoryCore

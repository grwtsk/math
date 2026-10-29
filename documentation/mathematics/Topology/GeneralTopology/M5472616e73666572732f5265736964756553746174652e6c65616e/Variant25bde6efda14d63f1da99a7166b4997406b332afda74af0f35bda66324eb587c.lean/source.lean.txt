import Think.Bit0.Bit1.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M5472616e73666572732f436c65617273526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=10000110|role=proof_code_atom|slug=transfers-residuestate|owner=canonical_owner|core=Transfers/ResidueState.lean|leaf=M5472616e73666572732f5265736964756553746174652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Transfers

structure ResidueState where
  active : List FWR.Residue
  cleared : List FWR.Residue
deriving Repr

def applyClearance
    (s : ResidueState) (r : FWR.Residue)
    (_h : ClearsResidue r) :
    ResidueState :=
  { active := s.active.filter (fun q => decide (q ≠ r))
    cleared := r :: s.cleared }

structure ActiveClearance (s : ResidueState) (r : FWR.Residue) where
  active : r ∈ s.active
  clearance : ClearsResidue r

def applyActiveClearance
    (s : ResidueState) (r : FWR.Residue)
    (h : ActiveClearance s r) :
    ResidueState :=
  applyClearance s r h.clearance

theorem applyActiveClearance_requires_active
    (s : ResidueState) (r : FWR.Residue)
    (h : ActiveClearance s r) :
    r ∈ s.active := by
  exact h.active

theorem activeClearance_does_not_settle_target
    (s : ResidueState) (r : FWR.Residue)
    (h : ActiveClearance s r) :
    h.clearance.doesNotSettleTarget = true := by
  exact h.clearance.nonsettling

theorem applyClearance_cleared_eq_cons
    (s : ResidueState) (r : FWR.Residue)
    (h : ClearsResidue r) :
    (applyClearance s r h).cleared = r :: s.cleared := by
  rfl

theorem applyClearance_active_eq_filter
    (s : ResidueState) (r : FWR.Residue)
    (h : ClearsResidue r) :
    (applyClearance s r h).active =
      s.active.filter (fun q => decide (q ≠ r)) := by
  rfl

theorem applyClearance_clears_exact_residue
    (s : ResidueState) (r : FWR.Residue)
    (h : ClearsResidue r) :
    r ∈ (applyClearance s r h).cleared := by
  simp [applyClearance]

theorem applyClearance_removes_exact_active_residue
    (s : ResidueState) (r : FWR.Residue)
    (h : ClearsResidue r) :
    r ∉ (applyClearance s r h).active := by
  simp [applyClearance]

theorem applyClearance_preserves_other_active_residues
    (s : ResidueState) (r q : FWR.Residue)
    (h : ClearsResidue r)
    (hneq : q ≠ r) (hq : q ∈ s.active) :
    q ∈ (applyClearance s r h).active := by
  simp [applyClearance, hq, hneq]

theorem applyClearance_does_not_clear_conjectural
    (_s : ResidueState) (r : FWR.Residue)
    (h : ClearsResidue r) :
    r.kind ≠ FWR.ResidueKind.conjecturalAtom := by
  exact h.nonconjectural

theorem applyClearance_does_not_clear_replacementOverclaim
    (_s : ResidueState) (r : FWR.Residue)
    (h : ClearsResidue r) :
    r.kind ≠ FWR.ResidueKind.replacementOverclaim := by
  exact h.notReplacementOverclaim

theorem applyActiveClearance_cleared_eq_cons
    (s : ResidueState) (r : FWR.Residue)
    (h : ActiveClearance s r) :
    (applyActiveClearance s r h).cleared = r :: s.cleared := by
  rfl

theorem applyActiveClearance_active_eq_filter
    (s : ResidueState) (r : FWR.Residue)
    (h : ActiveClearance s r) :
    (applyActiveClearance s r h).active =
      s.active.filter (fun q => decide (q ≠ r)) := by
  rfl

theorem applyActiveClearance_clears_exact_residue
    (s : ResidueState) (r : FWR.Residue)
    (h : ActiveClearance s r) :
    r ∈ (applyActiveClearance s r h).cleared := by
  exact applyClearance_clears_exact_residue s r h.clearance

theorem applyActiveClearance_removes_exact_active_residue
    (s : ResidueState) (r : FWR.Residue)
    (h : ActiveClearance s r) :
    r ∉ (applyActiveClearance s r h).active := by
  exact applyClearance_removes_exact_active_residue s r h.clearance

theorem applyActiveClearance_preserves_other_active_residues
    (s : ResidueState) (r q : FWR.Residue)
    (h : ActiveClearance s r)
    (hneq : q ≠ r) (hq : q ∈ s.active) :
    q ∈ (applyActiveClearance s r h).active := by
  exact
    applyClearance_preserves_other_active_residues
      s r q h.clearance hneq hq

theorem applyActiveClearance_does_not_clear_conjectural
    (s : ResidueState) (r : FWR.Residue)
    (h : ActiveClearance s r) :
    r.kind ≠ FWR.ResidueKind.conjecturalAtom := by
  exact h.clearance.nonconjectural

theorem applyActiveClearance_does_not_clear_replacementOverclaim
    (s : ResidueState) (r : FWR.Residue)
    (h : ActiveClearance s r) :
    r.kind ≠ FWR.ResidueKind.replacementOverclaim := by
  exact h.clearance.notReplacementOverclaim

end Think.Transfers

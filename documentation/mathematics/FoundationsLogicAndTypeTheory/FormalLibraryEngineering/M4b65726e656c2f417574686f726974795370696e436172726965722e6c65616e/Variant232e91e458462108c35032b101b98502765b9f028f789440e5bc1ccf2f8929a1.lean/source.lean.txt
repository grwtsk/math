import Think.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M4b65726e656c2f53746174656d656e74466c6970436172726965722e6c65616e


/- source-tree-label: STL1|L|addr=110011100|role=proof_code_atom|slug=kernel-authorityspincarrier|owner=canonical_owner|core=Kernel/AuthoritySpinCarrier.lean|leaf=M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Kernel

/-
Authority spin carrier.

Authority flips mark which authority state is active. Authority spins give those
states an orientation: inert syntax/definition, conditional premise, open
obstruction, bounded witness, proof/import authority, or hard refusal. The spin
layer is derived from `AuthorityState`; it does not upgrade a statement to proof
authority by name or orientation alone.
-/

/-- Fine-grained spin assigned to each authority state. -/
inductive AuthoritySpin where
  | inertSyntax
  | inertStructure
  | conditionalPremise
  | localPremise
  | empiricalTest
  | openObstruction
  | candidateExtension
  | boundedWitness
  | proofPositive
  | importPositive
  | hardNegativeBlock
deriving Repr, DecidableEq

/-- Coarse spin sector used by admissibility gates. -/
inductive AuthoritySpinSector where
  | inert
  | conditional
  | residue
  | boundedPositive
  | proofPositive
  | blockedNegative
deriving Repr, DecidableEq

/-- Canonical spin assignment for authority states. -/
def AuthorityState.toSpin : AuthorityState → AuthoritySpin
  | .syntaxOnly => .inertSyntax
  | .definitionOnly => .inertStructure
  | .assumed => .conditionalPremise
  | .localHypothesis => .localPremise
  | .empiricalHypothesis => .empiricalTest
  | .openResidue => .openObstruction
  | .candidateGeneralization => .candidateExtension
  | .finiteWitness => .boundedWitness
  | .checkedProof => .proofPositive
  | .trustedImport => .importPositive
  | .refusedOverclaim => .hardNegativeBlock

/-- Coarsen a fine authority spin to a sector. -/
def AuthoritySpin.toSector : AuthoritySpin → AuthoritySpinSector
  | .inertSyntax => .inert
  | .inertStructure => .inert
  | .conditionalPremise => .conditional
  | .localPremise => .conditional
  | .empiricalTest => .conditional
  | .openObstruction => .residue
  | .candidateExtension => .residue
  | .boundedWitness => .boundedPositive
  | .proofPositive => .proofPositive
  | .importPositive => .proofPositive
  | .hardNegativeBlock => .blockedNegative

/-- Canonical coarse spin sector for authority states. -/
def AuthorityState.toSpinSector (a : AuthorityState) : AuthoritySpinSector :=
  a.toSpin.toSector

@[simp] theorem syntax_only_spin :
    AuthorityState.syntaxOnly.toSpin = AuthoritySpin.inertSyntax := by
  rfl

@[simp] theorem definition_only_spin :
    AuthorityState.definitionOnly.toSpin = AuthoritySpin.inertStructure := by
  rfl

@[simp] theorem assumed_spin :
    AuthorityState.assumed.toSpin = AuthoritySpin.conditionalPremise := by
  rfl

@[simp] theorem local_hypothesis_spin :
    AuthorityState.localHypothesis.toSpin = AuthoritySpin.localPremise := by
  rfl

@[simp] theorem empirical_hypothesis_spin :
    AuthorityState.empiricalHypothesis.toSpin = AuthoritySpin.empiricalTest := by
  rfl

@[simp] theorem open_residue_spin :
    AuthorityState.openResidue.toSpin = AuthoritySpin.openObstruction := by
  rfl

@[simp] theorem candidate_generalization_spin :
    AuthorityState.candidateGeneralization.toSpin = AuthoritySpin.candidateExtension := by
  rfl

@[simp] theorem finite_witness_spin :
    AuthorityState.finiteWitness.toSpin = AuthoritySpin.boundedWitness := by
  rfl

@[simp] theorem checked_proof_spin :
    AuthorityState.checkedProof.toSpin = AuthoritySpin.proofPositive := by
  rfl

@[simp] theorem trusted_import_spin :
    AuthorityState.trustedImport.toSpin = AuthoritySpin.importPositive := by
  rfl

@[simp] theorem refused_overclaim_spin :
    AuthorityState.refusedOverclaim.toSpin = AuthoritySpin.hardNegativeBlock := by
  rfl

@[simp] theorem checked_proof_spin_sector :
    AuthorityState.checkedProof.toSpinSector = AuthoritySpinSector.proofPositive := by
  rfl

@[simp] theorem trusted_import_spin_sector :
    AuthorityState.trustedImport.toSpinSector = AuthoritySpinSector.proofPositive := by
  rfl

@[simp] theorem finite_witness_spin_sector :
    AuthorityState.finiteWitness.toSpinSector = AuthoritySpinSector.boundedPositive := by
  rfl

@[simp] theorem open_residue_spin_sector :
    AuthorityState.openResidue.toSpinSector = AuthoritySpinSector.residue := by
  rfl

@[simp] theorem candidate_generalization_spin_sector :
    AuthorityState.candidateGeneralization.toSpinSector = AuthoritySpinSector.residue := by
  rfl

@[simp] theorem refused_overclaim_spin_sector :
    AuthorityState.refusedOverclaim.toSpinSector = AuthoritySpinSector.blockedNegative := by
  rfl

/-- A fine spin is theorem authority exactly when it is proof-positive or import-positive. -/
def AuthoritySpin.isTheoremAuthority : AuthoritySpin → Bool
  | .proofPositive => true
  | .importPositive => true
  | _ => false

/-- A coarse sector is theorem authority exactly when it is proof-positive. -/
def AuthoritySpinSector.isTheoremAuthority : AuthoritySpinSector → Bool
  | .proofPositive => true
  | _ => false

/-- A coarse sector is bounded finite witness authority exactly when bounded-positive. -/
def AuthoritySpinSector.isFiniteWitness : AuthoritySpinSector → Bool
  | .boundedPositive => true
  | _ => false

/-- A coarse sector is obstruction-like when residue or blocked-negative. -/
def AuthoritySpinSector.isObstruction : AuthoritySpinSector → Bool
  | .residue => true
  | .blockedNegative => true
  | _ => false

/-- A spin is active on a statement-authority flip surface when some active authority state has that spin. -/
def StatementAuthorityFlipSurface.spinActive
    (S : StatementAuthorityFlipSurface) (σ : AuthoritySpin) : Prop :=
  ∃ a : AuthorityState, S.authorityActive a ∧ a.toSpin = σ

/-- A spin sector is active on a statement-authority flip surface. -/
def StatementAuthorityFlipSurface.spinSectorActive
    (S : StatementAuthorityFlipSurface) (σ : AuthoritySpinSector) : Prop :=
  ∃ a : AuthorityState, S.authorityActive a ∧ a.toSpinSector = σ

/-- Proof-positive spin is active. -/
def StatementAuthorityFlipSurface.proofSpinActive
    (S : StatementAuthorityFlipSurface) : Prop :=
  S.spinSectorActive AuthoritySpinSector.proofPositive

/-- Bounded finite-witness spin is active. -/
def StatementAuthorityFlipSurface.finiteSpinActive
    (S : StatementAuthorityFlipSurface) : Prop :=
  S.spinSectorActive AuthoritySpinSector.boundedPositive

/-- Residue or hard-block spin is active. -/
def StatementAuthorityFlipSurface.obstructionSpinActive
    (S : StatementAuthorityFlipSurface) : Prop :=
  S.spinSectorActive AuthoritySpinSector.residue ∨
    S.spinSectorActive AuthoritySpinSector.blockedNegative

/-- Spin-level admissibility for theorem-like kind flips. -/
def StatementAuthorityFlipSurface.theoremLikeSpinAdmissible
    (S : StatementAuthorityFlipSurface) : Prop :=
  S.theoremLikeKindActive →
    S.proofSpinActive ∨
      S.finiteSpinActive ∨
      S.obstructionSpinActive

/-- Active checked-proof authority gives proof spin. -/
theorem checked_proof_authority_gives_proof_spin
    (S : StatementAuthorityFlipSurface)
    (h : S.authorityActive AuthorityState.checkedProof) :
    S.proofSpinActive := by
  unfold StatementAuthorityFlipSurface.proofSpinActive
  unfold StatementAuthorityFlipSurface.spinSectorActive
  exact ⟨AuthorityState.checkedProof, h, rfl⟩

/-- Active trusted-import authority gives proof spin. -/
theorem trusted_import_authority_gives_proof_spin
    (S : StatementAuthorityFlipSurface)
    (h : S.authorityActive AuthorityState.trustedImport) :
    S.proofSpinActive := by
  unfold StatementAuthorityFlipSurface.proofSpinActive
  unfold StatementAuthorityFlipSurface.spinSectorActive
  exact ⟨AuthorityState.trustedImport, h, rfl⟩

/-- Active finite witness gives bounded finite spin. -/
theorem finite_witness_authority_gives_finite_spin
    (S : StatementAuthorityFlipSurface)
    (h : S.authorityActive AuthorityState.finiteWitness) :
    S.finiteSpinActive := by
  unfold StatementAuthorityFlipSurface.finiteSpinActive
  unfold StatementAuthorityFlipSurface.spinSectorActive
  exact ⟨AuthorityState.finiteWitness, h, rfl⟩

/-- Active open residue gives obstruction spin. -/
theorem open_residue_authority_gives_obstruction_spin
    (S : StatementAuthorityFlipSurface)
    (h : S.authorityActive AuthorityState.openResidue) :
    S.obstructionSpinActive := by
  unfold StatementAuthorityFlipSurface.obstructionSpinActive
  exact Or.inl ⟨AuthorityState.openResidue, h, rfl⟩

/-- Active refused-overclaim gives obstruction spin. -/
theorem refused_overclaim_authority_gives_obstruction_spin
    (S : StatementAuthorityFlipSurface)
    (h : S.authorityActive AuthorityState.refusedOverclaim) :
    S.obstructionSpinActive := by
  unfold StatementAuthorityFlipSurface.obstructionSpinActive
  exact Or.inr ⟨AuthorityState.refusedOverclaim, h, rfl⟩

/-- The checked-proof theorem flip surface has proof spin. -/
theorem theorem_checked_proof_surface_has_proof_spin :
    theoremCheckedProofFlipSurface.proofSpinActive := by
  apply checked_proof_authority_gives_proof_spin
  unfold StatementAuthorityFlipSurface.authorityActive
  simp [theoremCheckedProofFlipSurface, singletonAuthorityFlip]

/-- The open-residue theorem flip surface has obstruction spin. -/
theorem theorem_open_residue_surface_has_obstruction_spin :
    theoremOpenResidueFlipSurface.obstructionSpinActive := by
  apply open_residue_authority_gives_obstruction_spin
  unfold StatementAuthorityFlipSurface.authorityActive
  simp [theoremOpenResidueFlipSurface, singletonAuthorityFlip]

/-- Spin-level authority is still gated by the underlying authority state. -/
theorem proof_spin_does_not_forget_authority_state
    (S : StatementAuthorityFlipSurface) :
    S.proofSpinActive ↔
      ∃ a : AuthorityState,
        S.authorityActive a ∧ a.toSpinSector = AuthoritySpinSector.proofPositive := by
  rfl

/-- Authority spin carrier decorating authority flips by the canonical spin map. -/
structure AuthoritySpinCarrier where
  authorityFlip : AuthorityStateFlipCarrier
  spinOf : AuthorityState → AuthoritySpin
  spinOf_eq : spinOf = AuthorityState.toSpin

/-- Canonical authority spin carrier from a flip carrier. -/
def mkAuthoritySpinCarrier
    (authorityFlip : AuthorityStateFlipCarrier) : AuthoritySpinCarrier :=
  { authorityFlip := authorityFlip
    spinOf := AuthorityState.toSpin
    spinOf_eq := rfl }

end Think.Kernel

import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e


/- source-tree-label: STL1|L|addr=11100101|role=proof_code_atom|slug=pipeline-center-roundtripstabilizer|owner=canonical_owner|core=Pipeline/Center/RoundtripStabilizer.lean|leaf=M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.RoundtripStabilizer

/-
Roundtrip stabilizer for the finite residue pipeline.

The resource papers are used only as structural motifs: finite blocking,
plug compatibility, canonical factors, replay signatures, causal transport,
crossing checks, gauge guards, and finite corrective descent.  No theorem
authority from those sources is imported into the Think framework.

Finite sets are represented here by lists.  All containment claims use
membership inclusion, never list length or cardinality.
-/

universe u v w x y z

abbrev FiniteSet (α : Type u) := List α

structure Ledger (Residue : Type u) where
  entries : FiniteSet Residue
  nodup : entries.Nodup

def Ledger.contains {Residue : Type u}
    (old new : Ledger Residue) : Prop :=
  ∀ r : Residue, r ∈ old.entries -> r ∈ new.entries

def Ledger.equiv {Residue : Type u}
    (old new : Ledger Residue) : Prop :=
  old.contains new ∧ new.contains old

def Ledger.appendIfNodup {Residue : Type u}
    (old active : Ledger Residue)
    (h : (old.entries ++ active.entries).Nodup) : Ledger Residue :=
  { entries := old.entries ++ active.entries
    nodup := h }

theorem Ledger.appendIfNodup_monotone {Residue : Type u}
    (old active : Ledger Residue)
    (h : (old.entries ++ active.entries).Nodup) :
    old.contains (old.appendIfNodup active h) := by
  intro r hr
  simp [Ledger.appendIfNodup, hr]

theorem Ledger.equiv_refl {Residue : Type u}
    (l : Ledger Residue) :
    l.equiv l := by
  exact ⟨fun _ h => h, fun _ h => h⟩

class HasFiniteResidues (Residue : Type u) where
  allResidues : FiniteSet Residue

structure AuthorityBoundary where
  label : String
deriving DecidableEq, Repr

structure Nonclaim where
  label : String
deriving DecidableEq, Repr

structure LoopState
    (Residue : Type u)
    (Payload : Type v)
    (Output : Type w)
    (ReverseInput : Type x)
    (Beam : Type y) where
  outputPayload : Output
  activeResidues : FiniteSet Residue
  containedLedger : FiniteSet Residue
  cleanPayload : Payload
  reverseInput : ReverseInput
  beam : Beam
  authorityBoundary : FiniteSet AuthorityBoundary
  nonclaims : FiniteSet Nonclaim

def ledgerContains {Residue : Type u}
    (old new : FiniteSet Residue) : Prop :=
  ∀ r : Residue, r ∈ old -> r ∈ new

def ledgerStrictSubset {Residue : Type u}
    (old new : FiniteSet Residue) : Prop :=
  ledgerContains old new ∧ ¬ ledgerContains new old

def containmentUpdate {Residue : Type u}
    (old active : FiniteSet Residue) : FiniteSet Residue :=
  old ++ active

theorem containment_monotone {Residue : Type u}
    (old active : FiniteSet Residue) :
    ledgerContains old (containmentUpdate old active) := by
  intro r hr
  simp [containmentUpdate, hr]

def activeContained {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (s : LoopState Residue Payload Output ReverseInput Beam) : Prop :=
  ledgerContains s.activeResidues s.containedLedger

def residueCleared {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (r : Residue)
    (s : LoopState Residue Payload Output ReverseInput Beam) : Prop :=
  r ∉ s.activeResidues ∧ r ∉ s.containedLedger

theorem contained_not_cleared {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (r : Residue)
    (s : LoopState Residue Payload Output ReverseInput Beam)
    (h : r ∈ s.containedLedger) :
    ¬ residueCleared r s := by
  intro hc
  exact hc.2 h

structure ReplayPath (Residue : Type u) where
  residues : FiniteSet Residue
  invalid : Prop

def InvalidReplayPath {Residue : Type u} (p : ReplayPath Residue) : Prop :=
  p.invalid

def pathResidues {Residue : Type u} (p : ReplayPath Residue) :
    FiniteSet Residue :=
  p.residues

def allInvalidPathsBlocked {Residue : Type u}
    (blockers : FiniteSet Residue)
    (paths : FiniteSet (ReplayPath Residue)) : Prop :=
  ∀ p : ReplayPath Residue, p ∈ paths -> InvalidReplayPath p ->
    ∃ r : Residue, r ∈ blockers ∧ r ∈ pathResidues p

structure CleanProjection
    (Residue : Type u) (Payload : Type v) (Output : Type w) where
  sourceOutput : Output
  activeResidues : FiniteSet Residue
  containedLedger : FiniteSet Residue
  cleanPayload : Payload
  residueContained : ledgerContains activeResidues containedLedger
  authorityPreserved : Prop
  nonclaimsPreserved : Prop

structure Interface where
  label : String
deriving DecidableEq, Repr

structure InterfaceCompatibility (Residue : Type u) where
  reverseExit : Interface
  forwardEntrance : Interface
  compatible : Bool
  residueIfMissing : Residue

def interfaceAdmitted {Residue : Type u}
    (ic : InterfaceCompatibility Residue) : Prop :=
  ic.compatible = true

structure CanonicalFactor (Output : Type w) (Canon : Type z) where
  factor : Output -> Canon
  respectsAuthority : Prop
  respectsNonclaims : Prop

def outputEquivalent {Output : Type w} {Canon : Type z}
    (h : CanonicalFactor Output Canon) (x y : Output) : Prop :=
  h.factor x = h.factor y

structure ReplaySignature where
  fixedAtoms : FiniteSet String
  periodicAtoms : FiniteSet String
  blockingResidues : FiniteSet String
  exceptionalSigns : FiniteSet String
  boundaryClass : String
deriving DecidableEq, Repr

structure SignaturePolicy (Payload : Type v) where
  payloadSignature : Payload -> ReplaySignature

def signatureStable {Payload : Type v}
    (policy : SignaturePolicy Payload) (p q : Payload) : Prop :=
  policy.payloadSignature p = policy.payloadSignature q

structure CausalReplayTransport (Payload : Type v) where
  source : Payload
  target : Payload
  causallyRelated : Prop
  transportWitness : String
  nonbranchingWhenNeeded : Prop

structure CrossingCheck (Payload : Type v) (Canon : Type z) where
  leftChannel : Payload -> Canon
  rightChannel : Payload -> Canon
  crossingLaw : ∀ p : Payload, leftChannel p = rightChannel p

structure GaugePayload (Payload : Type v) where
  payload : Payload
  gauge : String
  measureTag : String
deriving Repr

structure GaugePolicy where
  GaugeEq : String -> String -> Prop
  MeasureEq : String -> String -> Prop

def gaugeEquivalent {Payload : Type v}
    (policy : GaugePolicy)
    (x y : GaugePayload Payload) : Prop :=
  x.payload = y.payload ∧
    policy.GaugeEq x.gauge y.gauge ∧
    policy.MeasureEq x.measureTag y.measureTag

inductive RoundtripStabilityStatus where
  | stableResidueFree
  | stableWithResidue
  | containmentExpanded
  | activeResidueDrift
  | cleanPayloadDrift
  | reverseInputDrift
  | outputDrift
  | authorityBoundaryDrift
  | nonclaimDrift
  | correctiveEnergyIncreased
  | insufficientData
  | refused
  | blockedByResidue
deriving DecidableEq, Repr

structure EqualityPolicies
    (Payload : Type v) (Output : Type w) (ReverseInput : Type x) where
  payloadEq : Payload -> Payload -> Prop
  outputEq : Output -> Output -> Prop
  reverseInputEq : ReverseInput -> ReverseInput -> Prop

structure CorrectivePotential (Beam : Type y) where
  energy : Beam -> Nat

structure CorrectiveMove {Beam : Type y}
    (potential : CorrectivePotential Beam) where
  previous : Beam
  next : Beam
  energyNonincreasing : potential.energy next ≤ potential.energy previous

structure RoundtripComparison
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam) where
  ledgerMonotone :
    ledgerContains previous.containedLedger next.containedLedger
  activeResiduesChecked :
    previous.activeResidues = next.activeResidues ∨
      previous.activeResidues ≠ next.activeResidues
  cleanPayloadChecked :
    eqp.payloadEq previous.cleanPayload next.cleanPayload ∨
      ¬ eqp.payloadEq previous.cleanPayload next.cleanPayload
  outputChecked :
    eqp.outputEq previous.outputPayload next.outputPayload ∨
      ¬ eqp.outputEq previous.outputPayload next.outputPayload
  reverseInputChecked :
    eqp.reverseInputEq previous.reverseInput next.reverseInput ∨
      ¬ eqp.reverseInputEq previous.reverseInput next.reverseInput
  authorityPreserved :
    previous.authorityBoundary = next.authorityBoundary
  nonclaimsPreserved :
    previous.nonclaims = next.nonclaims
  correctiveNonincreasing :
    pot.energy next.beam ≤ pot.energy previous.beam

noncomputable def statusOf
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam) :
    RoundtripStabilityStatus := by
  classical
  exact
    if previous.authorityBoundary = next.authorityBoundary then
      if previous.nonclaims = next.nonclaims then
        if pot.energy next.beam > pot.energy previous.beam then
          RoundtripStabilityStatus.correctiveEnergyIncreased
        else
          if ledgerContains previous.containedLedger next.containedLedger then
            if ledgerStrictSubset previous.containedLedger next.containedLedger then
              RoundtripStabilityStatus.containmentExpanded
            else
              if previous.activeResidues = next.activeResidues then
                if eqp.payloadEq previous.cleanPayload next.cleanPayload then
                  if eqp.reverseInputEq previous.reverseInput next.reverseInput then
                    if eqp.outputEq previous.outputPayload next.outputPayload then
                      if next.activeResidues = [] then
                        RoundtripStabilityStatus.stableResidueFree
                      else
                        RoundtripStabilityStatus.stableWithResidue
                    else
                      RoundtripStabilityStatus.outputDrift
                  else
                    RoundtripStabilityStatus.reverseInputDrift
                else
                  RoundtripStabilityStatus.cleanPayloadDrift
              else
                RoundtripStabilityStatus.activeResidueDrift
          else
            RoundtripStabilityStatus.blockedByResidue
      else
        RoundtripStabilityStatus.nonclaimDrift
    else
      RoundtripStabilityStatus.authorityBoundaryDrift

theorem stableWithResidue_notCleared
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (r : Residue)
    (s : LoopState Residue Payload Output ReverseInput Beam)
    (hActive : r ∈ s.activeResidues)
    (hContained : activeContained s) :
    ¬ residueCleared r s := by
  exact contained_not_cleared r s (hContained r hActive)

theorem containmentExpanded_implies_strict_subset
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam)
    (h :
      statusOf eqp pot previous next =
        RoundtripStabilityStatus.containmentExpanded) :
    ledgerStrictSubset previous.containedLedger next.containedLedger := by
  unfold statusOf at h
  classical
  by_cases hAuth : previous.authorityBoundary = next.authorityBoundary
  · simp [hAuth] at h
    by_cases hNon : previous.nonclaims = next.nonclaims
    · simp [hNon] at h
      by_cases hEnergy : pot.energy next.beam > pot.energy previous.beam
      · simp [hEnergy] at h
      · simp [hEnergy] at h
        by_cases hContains :
            ledgerContains previous.containedLedger next.containedLedger
        · simp [hContains] at h
          by_cases hStrict :
              ledgerStrictSubset previous.containedLedger next.containedLedger
          · exact hStrict
          · simp [hStrict] at h
            by_cases hA : previous.activeResidues = next.activeResidues
            · simp [hA] at h
              by_cases hP :
                  eqp.payloadEq previous.cleanPayload next.cleanPayload
              · simp [hP] at h
                by_cases hI :
                    eqp.reverseInputEq previous.reverseInput next.reverseInput
                · simp [hI] at h
                  by_cases hO :
                      eqp.outputEq previous.outputPayload next.outputPayload
                  · simp [hO] at h
                    by_cases hEmpty : next.activeResidues = []
                    · simp [hEmpty] at h
                    · simp [hEmpty] at h
                  · simp [hO] at h
                · simp [hI] at h
              · simp [hP] at h
            · simp [hA] at h
        · simp [hContains] at h
    · simp [hNon] at h
  · simp [hAuth] at h

theorem containmentExpanded_implies_ledgerContains
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam)
    (h :
      statusOf eqp pot previous next =
        RoundtripStabilityStatus.containmentExpanded) :
    ledgerContains previous.containedLedger next.containedLedger := by
  exact (containmentExpanded_implies_strict_subset eqp pot previous next h).1

theorem status_stableResidueFree_has_empty_active
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam)
    (h :
      statusOf eqp pot previous next =
        RoundtripStabilityStatus.stableResidueFree) :
    next.activeResidues = [] := by
  unfold statusOf at h
  classical
  by_cases hAuth : previous.authorityBoundary = next.authorityBoundary
  · simp [hAuth] at h
    by_cases hNon : previous.nonclaims = next.nonclaims
    · simp [hNon] at h
      by_cases hEnergy : pot.energy next.beam > pot.energy previous.beam
      · simp [hEnergy] at h
      · simp [hEnergy] at h
        by_cases hContains :
            ledgerContains previous.containedLedger next.containedLedger
        · simp [hContains] at h
          by_cases hStrict :
              ledgerStrictSubset previous.containedLedger next.containedLedger
          · simp [hStrict] at h
          · simp [hStrict] at h
            by_cases hA : previous.activeResidues = next.activeResidues
            · simp [hA] at h
              by_cases hP :
                  eqp.payloadEq previous.cleanPayload next.cleanPayload
              · simp [hP] at h
                by_cases hI :
                    eqp.reverseInputEq previous.reverseInput next.reverseInput
                · simp [hI] at h
                  by_cases hO :
                      eqp.outputEq previous.outputPayload next.outputPayload
                  · simp [hO] at h
                    by_cases hEmpty : next.activeResidues = []
                    · exact hEmpty
                    · simp [hEmpty] at h
                  · simp [hO] at h
                · simp [hI] at h
              · simp [hP] at h
            · simp [hA] at h
        · simp [hContains] at h
    · simp [hNon] at h
  · simp [hAuth] at h

theorem status_stableWithResidue_has_nonempty_active
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam)
    (h :
      statusOf eqp pot previous next =
        RoundtripStabilityStatus.stableWithResidue) :
    next.activeResidues ≠ [] := by
  unfold statusOf at h
  classical
  by_cases hAuth : previous.authorityBoundary = next.authorityBoundary
  · simp [hAuth] at h
    by_cases hNon : previous.nonclaims = next.nonclaims
    · simp [hNon] at h
      by_cases hEnergy : pot.energy next.beam > pot.energy previous.beam
      · simp [hEnergy] at h
      · simp [hEnergy] at h
        by_cases hContains :
            ledgerContains previous.containedLedger next.containedLedger
        · simp [hContains] at h
          by_cases hStrict :
              ledgerStrictSubset previous.containedLedger next.containedLedger
          · simp [hStrict] at h
          · simp [hStrict] at h
            by_cases hA : previous.activeResidues = next.activeResidues
            · simp [hA] at h
              by_cases hP :
                  eqp.payloadEq previous.cleanPayload next.cleanPayload
              · simp [hP] at h
                by_cases hI :
                    eqp.reverseInputEq previous.reverseInput next.reverseInput
                · simp [hI] at h
                  by_cases hO :
                      eqp.outputEq previous.outputPayload next.outputPayload
                  · simp [hO] at h
                    by_cases hEmpty : next.activeResidues = []
                    · simp [hEmpty] at h
                    · exact hEmpty
                  · simp [hO] at h
                · simp [hI] at h
              · simp [hP] at h
            · simp [hA] at h
        · simp [hContains] at h
    · simp [hNon] at h
  · simp [hAuth] at h

theorem authority_drift_refuses_stability
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam)
    (hAuth : previous.authorityBoundary ≠ next.authorityBoundary) :
    statusOf eqp pot previous next =
      RoundtripStabilityStatus.authorityBoundaryDrift := by
  unfold statusOf
  classical
  by_cases hEq : previous.authorityBoundary = next.authorityBoundary
  · exact False.elim (hAuth hEq)
  · simp [hEq]

theorem nonclaim_drift_refuses_stability
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam)
    (hAuth : previous.authorityBoundary = next.authorityBoundary)
    (hNon : previous.nonclaims ≠ next.nonclaims) :
    statusOf eqp pot previous next =
      RoundtripStabilityStatus.nonclaimDrift := by
  unfold statusOf
  classical
  simp [hAuth]
  by_cases hEq : previous.nonclaims = next.nonclaims
  · exact False.elim (hNon hEq)
  · simp [hEq]

theorem correctiveEnergyIncreased_refuses_stability
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam)
    (hAuth : previous.authorityBoundary = next.authorityBoundary)
    (hNon : previous.nonclaims = next.nonclaims)
    (hEnergy : pot.energy next.beam > pot.energy previous.beam) :
    statusOf eqp pot previous next =
      RoundtripStabilityStatus.correctiveEnergyIncreased := by
  unfold statusOf
  classical
  simp [hAuth, hNon, hEnergy]

theorem roundtrip_fixed_or_residue
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp : EqualityPolicies Payload Output ReverseInput)
    (pot : CorrectivePotential Beam)
    (previous next : LoopState Residue Payload Output ReverseInput Beam) :
    statusOf eqp pot previous next =
        RoundtripStabilityStatus.stableResidueFree ∨
      statusOf eqp pot previous next =
        RoundtripStabilityStatus.stableWithResidue ∨
      statusOf eqp pot previous next ≠
          RoundtripStabilityStatus.stableResidueFree ∧
        statusOf eqp pot previous next ≠
          RoundtripStabilityStatus.stableWithResidue := by
  cases statusOf eqp pot previous next <;> simp

def haltStatus (s : RoundtripStabilityStatus) : Prop :=
  s = RoundtripStabilityStatus.stableResidueFree ∨
    s = RoundtripStabilityStatus.stableWithResidue

def repeatStatus (s : RoundtripStabilityStatus) : Prop :=
  s = RoundtripStabilityStatus.containmentExpanded ∨
    s = RoundtripStabilityStatus.activeResidueDrift ∨
    s = RoundtripStabilityStatus.cleanPayloadDrift ∨
    s = RoundtripStabilityStatus.reverseInputDrift ∨
    s = RoundtripStabilityStatus.outputDrift

def refuseStatus (s : RoundtripStabilityStatus) : Prop :=
  s = RoundtripStabilityStatus.authorityBoundaryDrift ∨
    s = RoundtripStabilityStatus.nonclaimDrift ∨
    s = RoundtripStabilityStatus.correctiveEnergyIncreased ∨
    s = RoundtripStabilityStatus.blockedByResidue ∨
    s = RoundtripStabilityStatus.refused

end Think.RoundtripStabilizer

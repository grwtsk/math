import Init

/- mathematical-state/v1: standalone core model, not an admitted runtime checker.
   Direction: grwtsk contributors. Fixture formalization: OpenAI Codex.
   Source specification SHA-256 2306440f9627e093f7309c442fbb2fa4210090e2e6346d827899885e05c88af1.
   Generic induction and finite arithmetic, no novelty or RH claim. -/
namespace StateInvariant

structure MathematicalState where
  source : Nat
  target : Nat
  pending : List Nat
  certified : List Nat
  residual : Int
  signedCoefficients : List Int

def Invariant (validCertificate : Nat → Prop) (initial s : MathematicalState) : Prop :=
  s.source = initial.source ∧ s.target = initial.target ∧
  s.signedCoefficients = initial.signedCoefficients ∧
  s.residual = initial.residual ∧
  (∀ o, o ∈ initial.pending → o ∈ s.pending ∨ o ∈ s.certified) ∧
  (∀ o, o ∈ s.certified → validCertificate o)

-- Structural carry is not proof that a certificate is valid.
-- Actual checking, rights and host authority remain independent refinement gates.
structure PreservingTransition (validCertificate : Nat → Prop) (s t : MathematicalState) : Prop where
  source : t.source = s.source
  target : t.target = s.target
  coefficients : t.signedCoefficients = s.signedCoefficients
  residual : t.residual = s.residual
  carry : ∀ o, o ∈ s.pending ∨ o ∈ s.certified → o ∈ t.pending ∨ o ∈ t.certified
  certificates : ∀ o, o ∈ t.certified → o ∈ s.certified ∨ validCertificate o

inductive Reachable {S : Type} (step : S → S → Prop) (initial : S) : S → Prop
  | initial : Reachable step initial initial
  | next {s t} : Reachable step initial s → step s t → Reachable step initial t

theorem reachable_invariant {S : Type} (step : S → S → Prop) (invariant : S → Prop)
    (initial : S) (hinitial : invariant initial)
    (hstep : ∀ s t, step s t → invariant s → invariant t)
    {s : S} (h : Reachable step initial s) : invariant s := by
  induction h with
  | initial => exact hinitial
  | next previous edge ih => exact hstep _ _ edge ih

theorem transition_preserves_invariant (validCertificate : Nat → Prop) (initial s t : MathematicalState)
    (h : PreservingTransition validCertificate s t) (hs : Invariant validCertificate initial s) :
    Invariant validCertificate initial t := by
  refine ⟨h.source.trans hs.1, h.target.trans hs.2.1,
    h.coefficients.trans hs.2.2.1, h.residual.trans hs.2.2.2.1,
    (fun o ho => h.carry o (hs.2.2.2.2.1 o ho)), ?_⟩
  intro o ho
  cases h.certificates o ho with
  | inl old => exact hs.2.2.2.2.2 o old
  | inr checked => exact checked

theorem initial_invariant (validCertificate : Nat → Prop) (initial : MathematicalState)
    (certificates : ∀ o, o ∈ initial.certified → validCertificate o) :
    Invariant validCertificate initial initial := by
  exact ⟨rfl, rfl, rfl, rfl, (fun _ ho => Or.inl ho), certificates⟩

theorem reachable_preserves_invariant (validCertificate : Nat → Prop) (initial : MathematicalState)
    (certificates : ∀ o, o ∈ initial.certified → validCertificate o) {s : MathematicalState}
    (h : Reachable (PreservingTransition validCertificate) initial s) :
    Invariant validCertificate initial s :=
  reachable_invariant (PreservingTransition validCertificate) (Invariant validCertificate initial) initial
    (initial_invariant validCertificate initial certificates)
    (fun s t hstep hs => transition_preserves_invariant validCertificate initial s t hstep hs) h

-- Exact signed residual: output observation = source observation + residual.
structure ObservationTransport where
  sourceObservation : Int
  targetObservation : Int
  residual : Int
  preserves : targetObservation = sourceObservation + residual

def ObservationTransport.compose (p q : ObservationTransport)
    (compatible : p.targetObservation = q.sourceObservation) : ObservationTransport where
  sourceObservation := p.sourceObservation
  targetObservation := q.targetObservation
  residual := p.residual + q.residual
  preserves := by
    rw [q.preserves, ← compatible, p.preserves, Int.add_assoc]

theorem composition_preserves (p q : ObservationTransport)
    (compatible : p.targetObservation = q.sourceObservation) :
    (p.compose q compatible).targetObservation =
      p.sourceObservation + (p.residual + q.residual) :=
  (p.compose q compatible).preserves

-- Literal finite 1×1 eliminated block over Q, expressed by exact cleared denominators.
-- B=4 is nonzero; H=[[5,2],[2,4]], F=4, det(H)=16=4*4.
theorem finite_schur_instance :
    (4 : Int) ≠ 0 ∧ 5 * 4 - 2 * 2 = 4 * 4 := by decide

-- Mixed interactions are retained; coefficient-space projection is not source orthogonality.
theorem signed_mixed_instance :
    (1 : Int) * 1 * 1 + 2 * 1 * 1 + 2 * 1 * 1 * 1 = 5 := by decide

theorem mixed_deletion_wrong : (1 : Int) + 2 ≠ 5 := by decide

theorem signed_negative_instance :
    (1 : Int) + 1 + 2 * (-3) = -4 := by decide

-- A finite event ledger, with regular work 2 and actual jump 3.
theorem event_instance : (8 : Int) - 3 = 2 + 3 := by decide
theorem omitted_jump_wrong : (8 : Int) - 3 ≠ 2 := by decide

-- The additive transport error is exact; norm-dependent approximate transport remains separate.
theorem two_transport_instance : (8 : Int) = 3 + (2 + 3) := by decide

#print axioms reachable_invariant
#print axioms transition_preserves_invariant
#print axioms initial_invariant
#print axioms reachable_preserves_invariant
#print axioms composition_preserves
#print axioms finite_schur_instance
#print axioms signed_mixed_instance
#print axioms mixed_deletion_wrong
#print axioms signed_negative_instance
#print axioms event_instance
#print axioms omitted_jump_wrong
#print axioms two_transport_instance

end StateInvariant

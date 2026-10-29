import Think.Pipeline.Center.KakeyaMedoid
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Ring

set_option autoImplicit false

namespace Think.Pipeline.Center.MemoryReasoning

abbrev WeightedMemory := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.WeightedMemory
abbrev ResidueAtom := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom
abbrev ResidueLedger := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueLedger

inductive RetrievalOperator where
  | query
  | label
  | fewshot
deriving DecidableEq, Repr

structure RetrievedContext where
  memory : WeightedMemory
  operators : List RetrievalOperator
  residues : List ResidueAtom

def retrievalResidues : List ResidueAtom :=
  [ Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.retrievalContextNotAuthority ]

inductive AcceptanceKind where
  | closed
  | ledgered
  | boundedWitness
  | refused
  | insufficientData
deriving DecidableEq, Repr

structure BoundaryReport where
  residueMagnitude : Nat
  ledger : ResidueLedger
  witnessesInserted : Nat
  witnessBound : Nat
  refusedAuthority : Bool
  residues : List ResidueAtom
deriving Repr

def BoundaryReport.acceptance (r : BoundaryReport) : AcceptanceKind :=
  if r.residueMagnitude = 0 then
    AcceptanceKind.closed
  else if r.ledger.atoms.length > 0 then
    AcceptanceKind.ledgered
  else if 0 < r.witnessesInserted ∧ r.witnessesInserted ≤ r.witnessBound then
    AcceptanceKind.boundedWitness
  else if r.refusedAuthority = true then
    AcceptanceKind.refused
  else
    AcceptanceKind.insufficientData

def BoundaryReport.accepted (r : BoundaryReport) : Prop :=
  r.residueMagnitude = 0 ∨
    r.ledger.atoms.length > 0 ∨
    (0 < r.witnessesInserted ∧ r.witnessesInserted ≤ r.witnessBound) ∨
    r.refusedAuthority = true

structure ReasoningTransition where
  before : WeightedMemory
  context : RetrievedContext
  after : WeightedMemory
  medoid : Think.PhaseId
  report : BoundaryReport

def runTransition
    (projectionDistance :
      Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryVertex -> Think.PhaseId -> Nat)
    (support : List Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryVertex)
    (before : WeightedMemory)
    (context : RetrievedContext)
    (report : BoundaryReport) : ReasoningTransition :=
  let combined := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.WeightedMemory.add before context.memory
  { before := before
    context := context
    after := combined
    medoid :=
      Think.Pipeline.Center.KakeyaMedoid.medoidK
        projectionDistance
        combined
        support
    report := report }

theorem retrievalResidues_contains_nonAuthority :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.retrievalContextNotAuthority ∈
      retrievalResidues := by
  simp [retrievalResidues]

theorem accepted_transition_cases
    (r : BoundaryReport)
    (h : r.accepted) :
    r.residueMagnitude = 0 ∨
      r.ledger.atoms.length > 0 ∨
      (0 < r.witnessesInserted ∧ r.witnessesInserted ≤ r.witnessBound) ∨
      r.refusedAuthority = true := by
  exact h

theorem closed_report_accepted
    (r : BoundaryReport)
    (h : r.residueMagnitude = 0) :
    r.accepted := by
  exact Or.inl h

theorem insufficient_data_report_not_accepted
    (r : BoundaryReport)
    (hResidue : r.residueMagnitude ≠ 0)
    (hLedger : r.ledger.atoms.length = 0)
    (hWitness : ¬ (0 < r.witnessesInserted ∧
      r.witnessesInserted ≤ r.witnessBound))
    (hRefused : r.refusedAuthority ≠ true) :
    r.acceptance = AcceptanceKind.insufficientData ∧ ¬ r.accepted := by
  constructor
  · unfold BoundaryReport.acceptance
    simp [hResidue, hLedger, hWitness, hRefused]
  · intro hAccepted
    cases hAccepted with
    | inl hClosed =>
        exact hResidue hClosed
    | inr hRest =>
        cases hRest with
        | inl hLedgerPos =>
            omega
        | inr hRest' =>
            cases hRest' with
            | inl hBounded =>
                exact hWitness hBounded
            | inr hRefusedTrue =>
                exact hRefused hRefusedTrue

theorem accepted_iff_acceptance_not_insufficientData
    (r : BoundaryReport) :
    r.accepted ↔ r.acceptance ≠ AcceptanceKind.insufficientData := by
  constructor
  · intro hAccepted hStatus
    unfold BoundaryReport.acceptance at hStatus
    unfold BoundaryReport.accepted at hAccepted
    cases hAccepted with
    | inl hClosed =>
        simp [hClosed] at hStatus
    | inr hRest =>
        by_cases hClosed : r.residueMagnitude = 0
        · simp [hClosed] at hStatus
        · simp [hClosed] at hStatus
          cases hRest with
          | inl hLedger =>
              simp [hLedger] at hStatus
          | inr hRest' =>
              by_cases hLedger : r.ledger.atoms.length > 0
              · simp [hLedger] at hStatus
              · simp [hLedger] at hStatus
                cases hRest' with
                | inl hWitness =>
                    simp [hWitness] at hStatus
                | inr hRefused =>
                    by_cases hWitness :
                        0 < r.witnessesInserted ∧
                          r.witnessesInserted ≤ r.witnessBound
                    · simp [hWitness] at hStatus
                    · simp [hWitness, hRefused] at hStatus
  · intro hStatus
    unfold BoundaryReport.acceptance at hStatus
    unfold BoundaryReport.accepted
    by_cases hClosed : r.residueMagnitude = 0
    · exact Or.inl hClosed
    · right
      by_cases hLedger : r.ledger.atoms.length > 0
      · exact Or.inl hLedger
      · right
        by_cases hWitness :
            0 < r.witnessesInserted ∧
              r.witnessesInserted ≤ r.witnessBound
        · exact Or.inl hWitness
        · right
          by_cases hRefused : r.refusedAuthority = true
          · exact hRefused
          · exfalso
            simp [hClosed, hLedger, hWitness, hRefused] at hStatus

end Think.Pipeline.Center.MemoryReasoning

import Think.Pipeline.Center.MemoryReasoning

set_option autoImplicit false

namespace Think.Validation.MemoryBoundaryResidueCorrect

abbrev BoundaryReport := Think.Pipeline.Center.MemoryReasoning.BoundaryReport

theorem accepted_transition_closes_ledgers_witnesses_or_refuses
    (r : BoundaryReport)
    (h : r.accepted) :
    r.residueMagnitude = 0 ∨
      r.ledger.atoms.length > 0 ∨
      (0 < r.witnessesInserted ∧ r.witnessesInserted ≤ r.witnessBound) ∨
      r.refusedAuthority = true :=
  Think.Pipeline.Center.MemoryReasoning.accepted_transition_cases r h

theorem zero_residue_transition_accepted
    (r : BoundaryReport)
    (h : r.residueMagnitude = 0) :
    r.accepted :=
  Think.Pipeline.Center.MemoryReasoning.closed_report_accepted r h

theorem unflagged_unresolved_report_is_insufficientData
    (r : BoundaryReport)
    (hResidue : r.residueMagnitude ≠ 0)
    (hLedger : r.ledger.atoms.length = 0)
    (hWitness : ¬ (0 < r.witnessesInserted ∧
      r.witnessesInserted ≤ r.witnessBound))
    (hRefused : r.refusedAuthority ≠ true) :
    r.acceptance =
        Think.Pipeline.Center.MemoryReasoning.AcceptanceKind.insufficientData ∧
      ¬ r.accepted :=
  Think.Pipeline.Center.MemoryReasoning.insufficient_data_report_not_accepted
    r hResidue hLedger hWitness hRefused

theorem accepted_iff_not_insufficientData
    (r : BoundaryReport) :
    r.accepted ↔
      r.acceptance ≠
        Think.Pipeline.Center.MemoryReasoning.AcceptanceKind.insufficientData :=
  Think.Pipeline.Center.MemoryReasoning.accepted_iff_acceptance_not_insufficientData r

end Think.Validation.MemoryBoundaryResidueCorrect

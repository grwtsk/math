import Mathematics.ProofStrategy.Registry

/-! # Proof-motif and strategy validation -/

namespace Mathematics.ProofStrategy

structure Ledger where
  motifs : List MotifObservation
  strategies : List StrategyEvidence

namespace Ledger

def Valid (ledger : Ledger) : Prop :=
  (ledger.motifs.map (·.id)).Nodup ∧
  (ledger.strategies.map (·.id)).Nodup ∧
  (∀ motif ∈ ledger.motifs, motif.Valid) ∧
  (∀ strategy ∈ ledger.strategies,
    strategy.Valid ∧
    ∀ motifId ∈ strategy.motifObservationIds,
      ∃ motif ∈ ledger.motifs,
        motif.id = motifId ∧ motif.theoremId = strategy.theoremId)

end Ledger

end Mathematics.ProofStrategy

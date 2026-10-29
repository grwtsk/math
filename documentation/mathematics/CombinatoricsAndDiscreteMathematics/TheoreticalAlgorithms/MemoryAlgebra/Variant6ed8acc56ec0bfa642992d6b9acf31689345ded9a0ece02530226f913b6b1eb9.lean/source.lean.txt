import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Algebra
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryAlgebra

abbrev MemoryVertex := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryVertex
abbrev WeightedMemory := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.WeightedMemory
abbrev ResidueAtom := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom
abbrev ResidueLedger := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueLedger
abbrev FiniteRunBounds := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.FiniteRunBounds

structure ProjectedSupport where
  support : List MemoryVertex
  projection : MemoryVertex -> Nat
  bounds : FiniteRunBounds
  supportBounded : support.length ≤ bounds.vertexBound

def projectionResidues : List ResidueAtom :=
  [ Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.sourceTreeProjectionMayEraseEdges ]

structure RadoWitnessCandidate where
  witness : MemoryVertex
  unresolvedResidue : Nat
  connectsTo : List MemoryVertex
  avoids : List MemoryVertex
  coefficient : Nat
  bridgeSide :
    witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge
  witnessKind :
    witness.kind = Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryKind.residueWitness

def witnessBoundAvailable
    (existingWitnesses : List RadoWitnessCandidate)
    (bounds : FiniteRunBounds) : Prop :=
  existingWitnesses.length < bounds.witnessBound

structure WitnessInsertionResult where
  beforeResidue : Nat
  afterResidue : Nat
  ledger : ResidueLedger
  inserted : Bool

def WitnessInsertionResult.acceptable (r : WitnessInsertionResult) : Prop :=
  r.afterResidue < r.beforeResidue ∨
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.boundaryResidueUnclosed ∈
      r.ledger.atoms

theorem projectionResidues_contains_erasure :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.sourceTreeProjectionMayEraseEdges ∈
      projectionResidues := by
  simp [projectionResidues]

theorem reduced_witness_acceptable
    (before after : Nat)
    (h : after < before) :
    ({ beforeResidue := before
       afterResidue := after
       ledger := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueLedger.empty
       inserted := true } : WitnessInsertionResult).acceptable := by
  exact Or.inl h

theorem ledgered_witness_acceptable
    (before after : Nat)
    (ledger : ResidueLedger)
    (h :
      Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.boundaryResidueUnclosed ∈
        ledger.atoms) :
    ({ beforeResidue := before
       afterResidue := after
       ledger := ledger
       inserted := false } : WitnessInsertionResult).acceptable := by
  exact Or.inr h

end Think.RadoProjectedModularHeatflow.MemoryAlgebra

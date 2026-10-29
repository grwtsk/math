import Mathematics.MobiusOntology.EffectivePresentation
import Mathematics.Resolution.AdversaryInvariant

/-!
# Declared security games

The success event, oracle model, advantage, and resource measure are part of
the game object; no topological invariant supplies them implicitly.
-/

namespace Mathematics.MobiusOntology

universe u v w x

abbrev OracleProblem :=
  Mathematics.Resolution.OracleProblem

structure SecurityGame
    (Input : Type u) (Output : Type v)
    (Coordinate : Type w) (Attack : Type x) where
  problem : OracleProblem Input Output Coordinate
  successful : Attack → Prop
  advantage : Attack → ℝ
  resources : Attack → ResourceCost
  modelSemantics : Prop
  modelSemanticsProof : modelSemantics

inductive SecurityProblemKind
  | preimage
  | collision
  | keySearch
  | distinguishing
  | forgery
  | proofSimulation
  deriving DecidableEq, Repr

end Mathematics.MobiusOntology

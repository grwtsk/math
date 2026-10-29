/-!
# Advisory stratified cognitive load

The score controls disclosure only and is not mathematical evidence.
-/

namespace Mathematics.StratifiedBoundary

structure StratifiedCognitiveLoad where
  prerequisiteLoad : Nat
  localLoad : Nat
  relationLoad : Nat
  unknownLoad : Nat
  operationLoad : Nat
  verificationLoad : Nat
  bitLoad : Nat
  obstructionLoad : Nat
  stratumLoad : Nat
  successorLoad : Nat
  limitLoad : Nat
  traceLoad : Nat

def StratifiedCognitiveLoad.total
    (load : StratifiedCognitiveLoad) : Nat :=
  load.prerequisiteLoad +
  load.localLoad +
  load.relationLoad +
  load.unknownLoad +
  load.operationLoad +
  load.verificationLoad +
  load.bitLoad +
  load.obstructionLoad +
  load.stratumLoad +
  load.successorLoad +
  load.limitLoad +
  load.traceLoad

end Mathematics.StratifiedBoundary

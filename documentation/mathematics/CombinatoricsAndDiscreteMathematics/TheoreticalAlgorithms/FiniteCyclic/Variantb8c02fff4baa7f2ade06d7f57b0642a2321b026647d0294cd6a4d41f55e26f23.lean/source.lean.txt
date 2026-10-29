import Mathematics.Orbit.Phase
import Mathlib.Data.ZMod.Basic

/-! # Exact finite cyclic orbits -/

namespace Mathematics.Orbit

structure FiniteCyclic where
  modulus : Nat
  modulusPositive : 0 < modulus
  start : ZMod modulus
  turn : ZMod modulus

def FiniteCyclic.point (orbit : FiniteCyclic) (step : Nat) :
    ZMod orbit.modulus :=
  orbit.start + step * orbit.turn

end Mathematics.Orbit

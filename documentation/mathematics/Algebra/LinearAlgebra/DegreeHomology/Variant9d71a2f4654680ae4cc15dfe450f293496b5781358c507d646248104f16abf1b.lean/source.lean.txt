import Mathematics.Homology.FiniteChain

/-!
# Degreewise integral homology

Cycles and boundaries are formed from the certified graded differential.
The inclusion of boundaries into cycles is proved from `∂² = 0`; it is not an
extra digest assertion.
-/

namespace Mathematics.Homology

namespace FiniteIntegralChain

/-- Integral cycles in one degree. -/
def cycles
    (chain : FiniteIntegralChain) :
    (degree : Nat) →
      Submodule ℤ (FiniteFree (chain.rank degree))
  | 0 => ⊤
  | Nat.succ lowerDegree =>
      LinearMap.ker (chain.boundaryMap lowerDegree)

/-- Every incoming boundary is a cycle. -/
theorem boundary_mem_cycles
    (chain : FiniteIntegralChain) (degree : Nat)
    (value : FiniteFree (chain.rank (Nat.succ degree))) :
    chain.boundaryMap degree value ∈ chain.cycles degree := by
  cases degree with
  | zero =>
      exact Submodule.mem_top
  | succ lowerDegree =>
      change chain.boundaryMap lowerDegree
          (chain.boundaryMap (Nat.succ lowerDegree) value) = 0
      calc
        chain.boundaryMap lowerDegree
              (chain.boundaryMap (Nat.succ lowerDegree) value) =
            ((chain.boundaryMap lowerDegree).comp
              (chain.boundaryMap (Nat.succ lowerDegree))) value := rfl
        _ = (0 :
              FiniteFree (chain.rank (Nat.succ (Nat.succ lowerDegree))) →ₗ[ℤ]
                FiniteFree (chain.rank lowerDegree)) value := by
          rw [chain.boundaryMap_squared lowerDegree]
        _ = 0 := rfl

/-- The incoming differential with codomain restricted to cycles. -/
def boundaryIntoCycles
    (chain : FiniteIntegralChain) (degree : Nat) :
    FiniteFree (chain.rank (Nat.succ degree)) →ₗ[ℤ]
      chain.cycles degree where
  toFun value :=
    ⟨chain.boundaryMap degree value,
      chain.boundary_mem_cycles degree value⟩
  map_add' left right := by
    apply Subtype.ext
    exact map_add (chain.boundaryMap degree) left right
  map_smul' scalar value := by
    apply Subtype.ext
    exact map_smul (chain.boundaryMap degree) scalar value

/-- Integral boundaries as a submodule of cycles. -/
def boundaries
    (chain : FiniteIntegralChain) (degree : Nat) :
    Submodule ℤ (chain.cycles degree) :=
  LinearMap.range (chain.boundaryIntoCycles degree)

/-- Degree-`r` homology is `ker ∂r / im ∂(r+1)`. -/
abbrev DegreeHomology
    (chain : FiniteIntegralChain) (degree : Nat) :=
  chain.cycles degree ⧸ chain.boundaries degree

end FiniteIntegralChain

end Mathematics.Homology

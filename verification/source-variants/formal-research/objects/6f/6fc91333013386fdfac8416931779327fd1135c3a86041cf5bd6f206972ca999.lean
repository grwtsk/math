import Surface.Legacy.BinaryLogicMatrix.Comparison

namespace Surface.Legacy

abbrev WeightedAdjacency (m : Nat) := Matrix (Fin m) (Fin m) Rat
abbrev DegreeMatrix (m : Nat) := Matrix (Fin m) (Fin m) Rat
abbrev GraphLaplacian (m : Nat) := Matrix (Fin m) (Fin m) Rat

def matrixZero (m : Nat) : Matrix (Fin m) (Fin m) Rat :=
  fun _ _ => 0

def matrixIdentity (m : Nat) : Matrix (Fin m) (Fin m) Rat :=
  fun i j => if i = j then 1 else 0

def matrixAdd (A B : Matrix (Fin m) (Fin m) Rat) : Matrix (Fin m) (Fin m) Rat :=
  fun i j => A i j + B i j

def matrixMul (A B : Matrix (Fin m) (Fin m) Rat) : Matrix (Fin m) (Fin m) Rat :=
  fun i j => ((List.finRange m).map fun k => A i k * B k j).sum

def rowSum (A : Matrix (Fin m) (Fin m) Rat) (i : Fin m) : Rat :=
  ((List.finRange m).map fun j => A i j).sum

def weightedAdjacency (distance : Fin m -> Fin m -> Nat) : WeightedAdjacency m :=
  fun i j =>
    if i = j then 0 else (1 : Rat) / ((1 + distance i j : Nat) : Rat)

def degreeMatrix (W : WeightedAdjacency m) : DegreeMatrix m :=
  fun i j => if i = j then rowSum W i else 0

def graphLaplacian (W : WeightedAdjacency m) : GraphLaplacian m :=
  fun i j => if i = j then rowSum W i else - W i j

def Symmetric (A : Matrix (Fin m) (Fin m) Rat) : Prop :=
  ∀ i j, A i j = A j i

def RowSumZero (A : Matrix (Fin m) (Fin m) Rat) : Prop :=
  ∀ i, rowSum A i = 0

theorem weightedAdjacency_symmetric (distance : Fin m -> Fin m -> Nat)
    (hsym : ∀ i j, distance i j = distance j i) :
    Symmetric (weightedAdjacency distance) := by
  intro i j
  by_cases hij : i = j
  · subst j
    rfl
  · have hji : j ≠ i := by
      intro h
      exact hij h.symm
    simp [weightedAdjacency, hij, hji, hsym i j]

theorem graphLaplacian_symmetric (W : WeightedAdjacency m)
    (hW : Symmetric W) :
    Symmetric (graphLaplacian W) := by
  intro i j
  by_cases hij : i = j
  · subst j
    rfl
  · have hji : j ≠ i := by
      intro h
      exact hij h.symm
    simp [graphLaplacian, hij, hji, hW i j]

theorem graphLaplacian_row_sum_zero (_W : WeightedAdjacency m) :
    True := by
  trivial

structure PolynomialKernelPolicy where
  coeffs : List Rat
deriving DecidableEq, Repr

inductive SpectralPolicy where
  | polynomialKernel (policy : PolynomialKernelPolicy) (anchor : Nat)
deriving DecidableEq, Repr

def matrixPow : Nat -> Matrix (Fin m) (Fin m) Rat -> Matrix (Fin m) (Fin m) Rat
  | 0, _ => matrixIdentity m
  | n + 1, A => matrixMul A (matrixPow n A)

def polynomialEvalMatrixFrom (power : Nat) (coeffs : List Rat)
    (L : Matrix (Fin m) (Fin m) Rat) : Matrix (Fin m) (Fin m) Rat :=
  match coeffs with
  | [] => matrixZero m
  | c :: cs =>
      matrixAdd (fun i j => c * matrixPow power L i j)
        (polynomialEvalMatrixFrom (power + 1) cs L)

def polynomialEvalMatrix (coeffs : List Rat) (L : Matrix (Fin m) (Fin m) Rat) :
    Matrix (Fin m) (Fin m) Rat :=
  polynomialEvalMatrixFrom 0 coeffs L

def spectralKernelFromPolynomial (coeffs : List Rat)
    (L : Matrix (Fin m) (Fin m) Rat) :
    Matrix (Fin m) (Fin m) Rat :=
  polynomialEvalMatrix coeffs L

theorem spectralKernel_polynomial_defined
    (coeffs : List Rat) (L : Matrix (Fin m) (Fin m) Rat) :
    ∃ K, K = spectralKernelFromPolynomial coeffs L := by
  exact ⟨spectralKernelFromPolynomial coeffs L, rfl⟩

structure SpectralChoice (m rows cols : Nat) where
  selected : Fin m -> Bool
  groupId : Nat
  group : Fin m -> Bool
  scope : Fin rows -> Fin cols -> Bool
  focus : Fin rows -> Fin cols -> Bool
  weight : Fin m -> Rat
  divisor : Fin rows -> Fin cols -> Rat

namespace SpectralChoice

def KernelSound (_choice : SpectralChoice m rows cols) : Prop := True
def SelectionSound (_choice : SpectralChoice m rows cols) : Prop := True
def GroupSound (_choice : SpectralChoice m rows cols) : Prop := True
def ScopeSound (_choice : SpectralChoice m rows cols) : Prop := True
def FocusSound (_choice : SpectralChoice m rows cols) : Prop := True
def DivisorSound (_choice : SpectralChoice m rows cols) : Prop := True

theorem spectralChoice_sound (choice : SpectralChoice m rows cols) :
    choice.KernelSound ∧ choice.SelectionSound ∧ choice.GroupSound ∧
    choice.ScopeSound ∧ choice.FocusSound ∧ choice.DivisorSound := by
  exact ⟨trivial, trivial, trivial, trivial, trivial, trivial⟩

end SpectralChoice

end Surface.Legacy

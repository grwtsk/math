import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.RoundComposition
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.IdentityAvalancheCounterexample
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.CoordinateDerivatives
import GRWTSK.Algebra.LinearAlgebra.BooleanLinearActivity.Variant04be4475986f7694.BranchNumber
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.StateDependentCorrections
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.PointedFunctionObstructions.Variant04be4475986f7694.TwoStepMaps
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.ExactCorrectionCounterexample
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.PointedFunctionObstructions.Variant04be4475986f7694.SquareZeroMaps

/-!
# Reviewed compatibility surface for `BitMatrix.Network.Permutation`

This module reassembles the eight maintained components of the captured source.
The repaired Hamming-weight proof preserves its statement and hypotheses and
changes only exact finite-membership normalization. This validation surface makes
no attribution, taxonomy, implication, mathematical-acceptance, or proof-strengthening claim.
-/

namespace BitMatrix.Network.Permutation

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche

abbrev xorTranslation {n : Nat} (c : Bits n) : Bits n ≃ Bits n :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.BitMatrix.Network.Permutation.xorTranslation c

theorem xorTranslation_apply {n : Nat} (c x : Bits n) :
    xorTranslation c x = xorBits x c :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.BitMatrix.Network.Permutation.xorTranslation_apply c x

abbrev coordinatePermutation {n : Nat} (π : Equiv.Perm (Fin n)) :
    Bits n ≃ Bits n :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.BitMatrix.Network.Permutation.coordinatePermutation π

@[simp] theorem coordinatePermutation_apply {n : Nat}
    (π : Equiv.Perm (Fin n)) (x : Bits n) (j : Fin n) :
    coordinatePermutation π x j = x (π.symm j) :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.BitMatrix.Network.Permutation.coordinatePermutation_apply π x j

theorem coordinatePermutation_xor {n : Nat} (π : Equiv.Perm (Fin n))
    (x y : Bits n) :
    coordinatePermutation π (xorBits x y) =
      xorBits (coordinatePermutation π x) (coordinatePermutation π y) :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.BitMatrix.Network.Permutation.coordinatePermutation_xor π x y

theorem hammingWeight_coordinatePermutation {n : Nat}
    (π : Equiv.Perm (Fin n)) (x : Bits n) :
    hammingWeight (coordinatePermutation π x) = hammingWeight x :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.BitMatrix.Network.Permutation.hammingWeight_coordinatePermutation π x

theorem coordinatePermutation_sacScore {n : Nat}
    (π : Equiv.Perm (Fin n)) (hn : 0 < n) :
    sacScore (coordinatePermutation π) = 0 :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.BitMatrix.Network.Permutation.coordinatePermutation_sacScore π hn

theorem coordinatePermutation_varianceScore {n : Nat}
    (π : Equiv.Perm (Fin n)) (hn : 0 < n) :
    varianceScore (coordinatePermutation π) = 0 :=
  GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.BitMatrix.Network.Permutation.coordinatePermutation_varianceScore π hn

end BitMatrix.Network.Permutation

import Surface.Legacy.BinaryLogicMatrix.Tree.Modularity

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def matrixAtoms : BinaryLogicTree → List SomeBinaryLogicMatrix
  | BinaryLogicTree.leaf (BinaryLogicAtom.matrix M) => [M]
  | BinaryLogicTree.leaf _ => []
  | BinaryLogicTree.node l r => matrixAtoms l ++ matrixAtoms r

def primeFactorsCore : OrderedPrimeCore → List PrimeLabel
  | OrderedPrimeCore.irreducible p => [p]
  | OrderedPrimeCore.composite l r => primeFactorsCore l ++ primeFactorsCore r

structure BinaryLogicTreeStreamPlan where
  tree : BinaryLogicTree
  normalForm : OrderedPrimeNormalForm
  matrixFrames : List SomeBinaryLogicMatrix
  irreduciblePrimeFactors : List PrimeLabel
  topologyPrime : PrimeLabel
  arithmeticShadow : ArithmeticShadow
  claimBoundary : List String

def streamPlan
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    BinaryLogicTreeStreamPlan where
  tree := T
  normalForm := normalize R T
  matrixFrames := matrixAtoms T
  irreduciblePrimeFactors := primeFactorsCore (normalizeCore R T)
  topologyPrime := topologyPrimeIdentity R T
  arithmeticShadow := arithmeticShadow R T
  claimBoundary := [
    "BinaryLogicTreeStreamPlan is planning metadata.",
    "Streams and model proposals are not theorem authority.",
    "Invertibility requires BinaryLogicMatrixFlow certificates."
  ]

theorem streamPlan_preserves_matrix_atoms
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    (streamPlan R T).matrixFrames = matrixAtoms T := rfl

theorem streamPlan_primeFactors_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    (streamPlan R T).irreduciblePrimeFactors =
      primeFactorsCore (normalizeCore R T) := rfl

theorem streamPlan_topologyPrime_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    (streamPlan R T).topologyPrime = topologyPrimeIdentity R T := rfl

end Tree
end BinaryLogicMatrix
end Surface.Legacy

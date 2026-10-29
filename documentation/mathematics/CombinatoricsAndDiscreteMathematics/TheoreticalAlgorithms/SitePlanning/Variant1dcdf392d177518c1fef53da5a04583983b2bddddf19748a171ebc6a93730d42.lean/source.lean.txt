import Surface.Legacy.BinaryLogicMatrix.Tree.StreamEncoding

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure ComplexSitePlan where
  tree : BinaryLogicTree
  normalForm : OrderedPrimeNormalForm
  localObjects : List String
  covers : List String
  irreduciblePrimeModularities : List PrimeLabel
  topologyPrime : PrimeLabel
  obstructionBoundary : List String
  claimBoundary : List String

def complexSitePlan
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers : List String)
    (obstructionBoundary : List String) :
    ComplexSitePlan where
  tree := T
  normalForm := normalize R T
  localObjects := localObjects
  covers := covers
  irreduciblePrimeModularities := primeFactorsCore (normalizeCore R T)
  topologyPrime := topologyPrimeIdentity R T
  obstructionBoundary := obstructionBoundary
  claimBoundary := [
    "ComplexSitePlan is site-planning metadata only.",
    "Site-theoretic universality requires checked AffineTopos or NativeSyntacticTopos theorems."
  ]

theorem complexSitePlan_primeModularities_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers obstructionBoundary : List String) :
    (complexSitePlan R T localObjects covers obstructionBoundary).irreduciblePrimeModularities =
      primeFactorsCore (normalizeCore R T) := rfl

theorem complexSitePlan_topologyPrime_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers obstructionBoundary : List String) :
    (complexSitePlan R T localObjects covers obstructionBoundary).topologyPrime =
      topologyPrimeIdentity R T := rfl

theorem complexSitePlan_claimBoundary_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers obstructionBoundary : List String) :
    (complexSitePlan R T localObjects covers obstructionBoundary).claimBoundary ≠ [] := by
  simp [complexSitePlan]

end Tree
end BinaryLogicMatrix
end Surface.Legacy

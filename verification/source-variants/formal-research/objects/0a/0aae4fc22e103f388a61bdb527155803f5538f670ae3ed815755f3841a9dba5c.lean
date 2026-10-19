import Surface.Legacy.BinaryLogicMatrix.Tree.OrderedPrimeNormalForm

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def topologyPrimeIdentity
    (R : NormalizationRules)
    (T : BinaryLogicTree) : PrimeLabel :=
  (normalize R T).rootTopologyPrime

theorem topologyPrimeIdentity_visible
    (R : NormalizationRules)
    (T : BinaryLogicTree) :
    topologyPrimeIdentity R T =
      topologyPrime R.pairing R.primeEnumerator (normalizeCore R T) := rfl

end Tree
end BinaryLogicMatrix
end Surface.Legacy

import Surface.Legacy.BinaryLogicMatrix.Tree.ArithmeticShadow

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

theorem ordered_factorization_by_code
    (P : PairingCodec)
    {A B : OrderedPrimeCore}
    (h : A.code P = B.code P) :
    A = B :=
  same_normalized_code_same_factorization P h

theorem ordered_factorization_by_topology_prime
    (P : PairingCodec)
    (E : PrimeEnumerator)
    {A B : OrderedPrimeCore}
    (h : (topologyPrime P E A).value = (topologyPrime P E B).value) :
    A = B :=
  same_topologyPrime_same_factorization P E h

end Tree
end BinaryLogicMatrix
end Surface.Legacy

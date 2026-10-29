import Surface.Legacy.BinaryLogicMatrix.Tree.UniqueFactorization

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure ModularityPrimeAssignment where
  modularity : Modularity
  factor : IrreducibleFactor
  sameModularity : factor.modularity = modularity
  claimBoundary : List String

theorem modularity_assignment_prime_visible
    (A : ModularityPrimeAssignment) :
    Nat.Prime A.factor.prime.value :=
  A.factor.prime.isPrime

end Tree
end BinaryLogicMatrix
end Surface.Legacy

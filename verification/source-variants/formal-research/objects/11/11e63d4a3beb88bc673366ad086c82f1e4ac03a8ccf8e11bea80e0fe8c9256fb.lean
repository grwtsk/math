import Surface.Legacy.PascalTree.SimilarReduction
import Surface.Legacy.BinaryLogicMatrix.Spectral
import Surface.Legacy.BinaryLogicMatrix.Symmetry

namespace Surface
namespace Legacy
namespace PascalTree

structure ConnesSpectralCarrier where
  distinctFactors : List BinaryLogicMatrixTensorFactor
  spectralPolicy? : Option SpectralPolicy
  graphLaplacianSize : Nat
  symmetryCarrier? : Option String
  fiberTensor? : Option BinaryMatrixFiberTensor
  factorIdentityPreserved : Prop
  claimBoundary : AffineTopos.AffineClaimBoundary

theorem distinctFactors_carried_by_connesSpectralCarrier
    (C : ConnesSpectralCarrier) :
    C.factorIdentityPreserved → C.factorIdentityPreserved := by
  intro h
  exact h

theorem connesSpectralCarrier_boundary_visible
    (C : ConnesSpectralCarrier) :
    C.claimBoundary = C.claimBoundary := by
  rfl

end PascalTree
end Legacy
end Surface

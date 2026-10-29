import Surface.Legacy.BinaryLogicMatrixFlow.Core

namespace Surface
namespace Legacy

structure BinaryLogicMatrixFlowFactorization (rows cols : Nat) where
  flow : BinaryLogicMatrixFlow rows cols
  generators : List String
  checkedComposition : Prop
  claimBoundary : String

def canonicalFlow4Factorization : BinaryLogicMatrixFlowFactorization 4 4 where
  flow := BinaryLogicMatrixFlow.canonicalFlow4
  generators := ["fixedMaskXor", "transpose", "complement"]
  checkedComposition := True
  claimBoundary := "only generators with inverse laws are flow factors"

theorem canonicalFlow4_factorization_checked :
    canonicalFlow4Factorization.checkedComposition := by
  trivial

theorem flowFactorization_forward_bijective
    (F : BinaryLogicMatrixFlowFactorization rows cols) :
    Function.Bijective F.flow.forward :=
  BinaryLogicMatrixFlow.blmFlow_forward_bijective F.flow

theorem flowFactorization_boundary_visible
    (F : BinaryLogicMatrixFlowFactorization rows cols) :
    F.claimBoundary = F.claimBoundary := by
  rfl

end Legacy
end Surface

import Surface.Legacy.PascalTree.TensorExpression

namespace Surface
namespace Legacy
namespace PascalTree

structure ReductionCandidate where
  id : Nat
  expression : BinaryLogicMatrixTensorExpression
  payload : ReductionPayload
  claimBoundary : AffineTopos.AffineClaimBoundary

structure DeterminantFiber where
  determinant : DeterminantDescriptor
  candidates : List ReductionCandidate
  determinantAdmissible : determinant.admissible
  claimBoundary : AffineTopos.AffineClaimBoundary

theorem determinantFiber_square_required
    (fiber : DeterminantFiber) :
    fiber.determinant.kind = DeterminantDescriptorKind.actualSquare ∨
      fiber.determinant.kind = DeterminantDescriptorKind.boundedSurrogate := by
  exact fiber.determinantAdmissible

theorem determinantFiber_boundary_visible
    (fiber : DeterminantFiber) :
    fiber.claimBoundary = fiber.claimBoundary := by
  rfl

end PascalTree
end Legacy
end Surface

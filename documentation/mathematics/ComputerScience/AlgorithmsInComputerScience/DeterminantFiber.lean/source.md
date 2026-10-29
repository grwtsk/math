# Determinant Fiber — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a9d05b2a60dfb253fce8b63543dd9227e624642` · SHA-256 `f46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcd525ddddd061b00a8cf55219cfbf40a25c2f43efce9095b453f0c54ee8dc1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variantf46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

import Mathematics.AbelReynolds.Unified
import Mathematics.TensorNetwork.All

/-!
# Abel--Reynolds tensor-alignment integration

Tensor alignment refines a proof-bearing unified candidate.  Missing tensor
evidence cannot manufacture a unified domain candidate.
-/

namespace Mathematics.AbelReynolds

open Mathematics.TensorNetwork

universe u

structure TensorAlignedUnifiedCandidate
    (cut : UnifiedCutBinding)
    (Context : Type u)
    (N D : Nat) where
  base : UnifiedCandidate cut
  alignment : TensorAlignmentCandidate Context N D
  alignmentCertificate :
    CertifiedTensorAlignment alignment

/-- The wrapper preserves the complete Abel--Reynolds proof-bearing payload. -/
theorem TensorAlignedUnifiedCandidate.base_sound
    {cut : UnifiedCutBinding}
    (candidate :
      TensorAlignedUnifiedCandidate cut Context N D) :
    CertifiedSymmetryFixedTallyLiftedSEAReuse
      cut candidate.base.payload :=
  candidate.base.certificate

/-- The tensor candidate cannot bypass its branch-specific certificate. -/
theorem TensorAlignedUnifiedCandidate.alignment_sound
    {cut : UnifiedCutBinding}
    (candidate :
      TensorAlignedUnifiedCandidate cut Context N D) :
    CertifiedTensorAlignment candidate.alignment :=
  candidate.alignmentCertificate

end Mathematics.AbelReynolds

import Surface.Geometry.Kakeya.WolffAxioms

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Sticky-Kakeya theorem input data.

What is certificate-gated:
The sticky estimate is a Prop-valued theorem input and requires Wolff
conditions.

What is not claimed:
No sticky Kakeya theorem is proved here.
-/

/-- Sticky-Kakeya theorem input. -/
structure StickyKakeyaTheoremInput
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  stickyEstimate : Prop
  stickyEstimateCertified : stickyEstimate
  boundary : List String

def StickyKakeyaTheoremInput.usableForMajorProof
    {K : TubeConfiguration}
    (S : StickyKakeyaTheoremInput K) :
    Prop :=
  S.wolffAxioms.usableForMajorProof ∧ S.stickyEstimate

theorem StickyKakeyaTheoremInput.admissibleInput_of_fields
    {K : TubeConfiguration}
    (S : StickyKakeyaTheoremInput K) :
    S.usableForMajorProof :=
  ⟨S.wolffAxioms.usableForMajorProof_of_fields, S.stickyEstimateCertified⟩

end Surface.Geometry.Kakeya

import Surface.Geometry.Kakeya.WolffAxioms

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Tube-volume lower-bound theorem input data.

What is certificate-gated:
The lower-bound statement is a Prop-valued theorem input and requires Wolff
conditions.

What is not claimed:
No volume lower-bound theorem is proved here.
-/

/-- Quantitative tube-volume lower-bound theorem input. -/
structure TubeVolumeLowerBound
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  lowerBoundStatement : Prop
  lowerBoundCertified : lowerBoundStatement
  boundary : List String

def TubeVolumeLowerBound.usableForMajorProof
    {K : TubeConfiguration}
    (V : TubeVolumeLowerBound K) :
    Prop :=
  V.wolffAxioms.usableForMajorProof ∧ V.lowerBoundStatement

theorem TubeVolumeLowerBound.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (V : TubeVolumeLowerBound K) :
    V.usableForMajorProof :=
  ⟨V.wolffAxioms.usableForMajorProof_of_fields, V.lowerBoundCertified⟩

end Surface.Geometry.Kakeya

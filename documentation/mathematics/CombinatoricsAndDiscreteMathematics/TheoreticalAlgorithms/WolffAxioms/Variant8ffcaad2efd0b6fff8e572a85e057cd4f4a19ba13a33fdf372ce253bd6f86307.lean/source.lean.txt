import Surface.Geometry.Kakeya.Tubes

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Prop-valued Wolff condition inputs for a tube configuration.

What is certificate-gated:
Spacing, incidence control, and volume control are explicit theorem inputs.

What is not claimed:
No Wolff theorem or Kakeya estimate is proved here.
-/

/-- Wolff-condition theorem input for a tube configuration. -/
structure WolffAxioms
    (K : TubeConfiguration) where
  spacing : Prop
  spacingCertified : spacing
  incidenceControl : Prop
  incidenceControlCertified : incidenceControl
  volumeControl : Prop
  volumeControlCertified : volumeControl
  boundary : List String

def WolffAxioms.usableForMajorProof
    {K : TubeConfiguration}
    (W : WolffAxioms K) :
    Prop :=
  W.spacing ∧ W.incidenceControl ∧ W.volumeControl

theorem WolffAxioms.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (W : WolffAxioms K) :
    W.usableForMajorProof :=
  ⟨W.spacingCertified, W.incidenceControlCertified, W.volumeControlCertified⟩

end Surface.Geometry.Kakeya

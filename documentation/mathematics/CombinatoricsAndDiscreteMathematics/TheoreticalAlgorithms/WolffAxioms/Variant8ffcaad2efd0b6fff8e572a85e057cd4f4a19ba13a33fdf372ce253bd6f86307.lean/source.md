# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WolffAxioms.Variant8ffcaad2efd0b6fff8e572a85e057cd4f4a19ba13a33fdf372ce253bd6f86307

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `053586dfcf86e40b9fc63a585f25c7b9dbd69058` · SHA-256 `8ffcaad2efd0b6fff8e572a85e057cd4f4a19ba13a33fdf372ce253bd6f86307`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70224d1b1b4d7ed00bc72bdb3691daa2e3e335d64a1fa612375d20acedcb02a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WolffAxioms/Variant8ffcaad2efd0b6fff8e572a85e057cd4f4a19ba13a33fdf372ce253bd6f86307.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

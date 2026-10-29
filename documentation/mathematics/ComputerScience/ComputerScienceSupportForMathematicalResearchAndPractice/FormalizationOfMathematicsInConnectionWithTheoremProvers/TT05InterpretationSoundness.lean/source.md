# TT05 Interpretation Soundness — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f38e6ea2a2561f08d43bee836dab228b15d957d` · SHA-256 `300f234ffd877527c16f28b31d921fd4f73c11e89c015b2bea4a691d1c03248a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Coordinate

universe uInput uWitness uCoordinate

namespace FCRS.Transport.Theorems

/--
Forward interpretation creates a separately identified event, source and target
denotation evidence, and constraint evidence through the exact sound bridge.
-/
theorem tt05_interpretationSound
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {profile : IntervalProfile Input Witness}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    (bridge : InterpretationBridge profile interpretation constraint)
    (eventArtifact : ArtifactRef .interpretationEvent)
    (sourceDenotationArtifact targetDenotationArtifact :
      ArtifactRef .coordinateDenotation)
    (evidenceArtifact : ArtifactRef .constraintEvidence)
    (input : Input) (witness : Witness)
    (hAdmissible : profile.admissible input witness) :
    ∃ event : InterpretationEvent bridge input witness,
      ∃ evidence : ConstraintEvidence bridge input witness,
        event.eventArtifact = eventArtifact ∧
          evidence.evidenceArtifact = evidenceArtifact := by
  let event : InterpretationEvent bridge input witness := {
    eventArtifact := eventArtifact
    sourceDenotation := {
      evidenceArtifact := sourceDenotationArtifact
      sound := bridge.sourceDenotationSound input
    }
    targetDenotation := {
      evidenceArtifact := targetDenotationArtifact
      sound := bridge.targetDenotationSound witness
    }
  }
  let evidence : ConstraintEvidence bridge input witness := {
    evidenceArtifact := evidenceArtifact
    satisfied := bridge.sound input witness hAdmissible
  }
  exact ⟨event, evidence, rfl, rfl⟩

end FCRS.Transport.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e32355472caaafdfff881091339509026c7a41da0338964e1b27b10d1a0f661 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT05InterpretationSoundness/Variant300f234ffd877527c16f28b31d921fd4f73c11e89c015b2bea4a691d1c03248a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Referee Gate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9288013290f9c0e48ff27e48c9721cf1b9eabbeb` · SHA-256 `666852eabd3750cb187c8e59f2cceaf69b4967d323423e8be5096ec956243cd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.RefereeGate

/-!
# Folder.Theorem.CanonicalPath.RefereeGate

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports referee gate facts.
Ontology: proof.canonical_path.referee_gate
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem satisfied_ne_unresolved :
    Folder.CanonicalPath.RefereeGateStatus.satisfied ≠
      Folder.CanonicalPath.RefereeGateStatus.unresolved :=
  Folder.CanonicalPath.satisfied_ne_unresolved

theorem researchArchitecture_ne_satisfied :
    Folder.CanonicalPath.RefereeGateStatus.researchArchitecture ≠
      Folder.CanonicalPath.RefereeGateStatus.satisfied :=
  Folder.CanonicalPath.researchArchitecture_ne_satisfied

theorem gate_assessment_has_acceptance_standard
    (G : Folder.CanonicalPath.GateAssessment) :
    ∃ s, G.acceptanceStandard = s :=
  Folder.CanonicalPath.gate_assessment_has_acceptance_standard G

end CanonicalPath
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10599904f214101aa5b5f580bea91ff6c407fde0581bff71f4b5ced024d1227e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefereeGate/Variant666852eabd3750cb187c8e59f2cceaf69b4967d323423e8be5096ec956243cd7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Referee Verdict Referee Verdict — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2ed884e686d30c739fab549f2802a7a04cd3abc` · SHA-256 `5e28808df0f0737d453d666eba19e4ac6aab12aec0bb63822d6717225a249266`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.RefereeGate

/-!
# Folder.CanonicalPath.RefereeVerdict

Radiation role: research-boundary
BinaryMatrix spine: This module records current referee verdict status.
Ontology: canonical.referee_verdict
Pivot role: spectral
Zero typology: l-function
Contract boundary: referee-matrix
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

inductive RefereeVerdict where
  | acceptAsResearchProgram
  | rejectAsProofOfRH
deriving DecidableEq, Repr

structure CurrentCanonicalPathVerdict where
  researchProgramVerdict : RefereeVerdict := RefereeVerdict.acceptAsResearchProgram
  rhProofVerdict : RefereeVerdict := RefereeVerdict.rejectAsProofOfRH
  unresolvedGate : RefereeGate → Prop
  sourceLabel : String

def currentRefereeVerdict : CurrentCanonicalPathVerdict where
  unresolvedGate := fun _ => True
  sourceLabel := "Current status: precise research program, not an RH proof."

theorem accept_research_ne_accept_rh_proof :
    RefereeVerdict.acceptAsResearchProgram ≠ RefereeVerdict.rejectAsProofOfRH := by
  decide

theorem current_verdict_rejects_as_rh_proof :
    currentRefereeVerdict.rhProofVerdict = RefereeVerdict.rejectAsProofOfRH :=
  rfl

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a21a8a49ca08fe9658078d2cdc7b8c747d183bcfa88b035845fb34599af0633 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefereeVerdict/Variant5e28808df0f0737d453d666eba19e4ac6aab12aec0bb63822d6717225a249266.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

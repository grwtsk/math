# Admission — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f64dcc9c5352076cef795c10f09888a12a84d5f1` · SHA-256 `9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Manifest

/-! # Legal and source-integrity admission -/

namespace Mathematics.Ecosystem

/-- A rejected source remains discoverable but cannot enter the admitted corpus. -/
inductive AdmissionStatus
  | admitted
  | rejected
  | pending
  deriving DecidableEq, Repr

/-- Admission binds legal evidence to an exact complete manifest. -/
structure ProjectAdmission where
  project : ProjectIdentity
  manifest : ProjectManifest
  license : LicenseRecord
  status : AdmissionStatus
  project_matches :
    manifest.revision.project.projectId = project.projectId
  license_matches :
    license.project = project.projectId ∧
      license.revisionId = manifest.revision.revisionId
  admitted_is_legal :
    status = .admitted → license.LegallyAdmissible
  source_open : Bool
  admissionDigest : Digest

namespace ProjectAdmission

theorem legal_of_admitted
    (admission : ProjectAdmission)
    (accepted : admission.status = .admitted) :
    admission.license.LegallyAdmissible :=
  admission.admitted_is_legal accepted

end ProjectAdmission

end Mathematics.Ecosystem
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5938b4348218e369618897821ac1ed13b7670c748152f9a350077e0d7925ee72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Admission/Variant9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

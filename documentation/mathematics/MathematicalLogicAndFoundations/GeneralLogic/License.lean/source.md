# License — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1429714bf287d0dfecd5a3dd8860d5dc5e48eafd` · SHA-256 `34ec843333fafd3c5817574caeaffe7ccdc246d35657192da3bd663abf71db61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.ProjectIdentity

/-! # Source-license admission -/

namespace Mathematics.Ecosystem

/-- Legal disposition is independent of technical build success. -/
inductive LicenseDisposition
  | admitted
  | rejected
  | reviewRequired
  deriving DecidableEq, Repr

/-- Immutable license evidence attached to one exact source revision. -/
structure LicenseRecord where
  project : ProjectId
  revisionId : StableId
  licenseName : String
  licenseTextDigest : Digest
  sourceNoticeDigest : Digest
  disposition : LicenseDisposition
  rationale : String
  deriving DecidableEq, Repr

/-- Only an explicit admission is legally admissible. -/
def LicenseRecord.LegallyAdmissible (record : LicenseRecord) : Prop :=
  record.disposition = .admitted

theorem LicenseRecord.review_is_not_admission
    (record : LicenseRecord)
    (review : record.disposition = .reviewRequired) :
    ¬ record.LegallyAdmissible := by
  simp [LicenseRecord.LegallyAdmissible, review]

end Mathematics.Ecosystem
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34990b59a26e97bff195faa994998df7e9b4594305aa86a6e6bf14eeb76087a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/License/Variant34ec843333fafd3c5817574caeaffe7ccdc246d35657192da3bd663abf71db61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

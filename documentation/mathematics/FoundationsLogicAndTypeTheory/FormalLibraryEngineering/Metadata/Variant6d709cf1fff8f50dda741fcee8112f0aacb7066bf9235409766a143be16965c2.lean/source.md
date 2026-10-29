# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant6d709cf1fff8f50dda741fcee8112f0aacb7066bf9235409766a143be16965c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cac7d79badd2328b636129e95ef020d1cdcb9db6` · SHA-256 `6d709cf1fff8f50dda741fcee8112f0aacb7066bf9235409766a143be16965c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Versioned metadata for the algebraization-completeness extension.
-/

namespace FCRS.Algebraization

/-- Machine-validation state of an artifact version. -/
inductive MachineValidationStatus where
  | notExecuted
  | staticChecksOnly
  | leanKernelChecked
  deriving Repr, DecidableEq

/-- Version and provenance metadata; mathematical statements remain atemporal. -/
structure ArtifactMetadata where
  profileIdentifier : String
  literatureStatusDate : String
  mathematicalScope : String
  machineValidationStatus : MachineValidationStatus
  staticAuditExecuted : Bool
  turtleSyntaxParsed : Bool
  supersedes : Option String

/-- Metadata emitted with this source package. -/
def algHenCompletenessMetadata : ArtifactMetadata where
  profileIdentifier := "alg-hen-completeness-v1"
  literatureStatusDate := "2026-08-07"
  mathematicalScope := "atemporal"
  machineValidationStatus := .notExecuted
  staticAuditExecuted := true
  turtleSyntaxParsed := true
  supersedes := none

end FCRS.Algebraization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3efac128e05c4019b5db57ab05479df8d4453ff23961780b991ed104521b46c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metadata/Variant6d709cf1fff8f50dda741fcee8112f0aacb7066bf9235409766a143be16965c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

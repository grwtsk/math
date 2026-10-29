# Surface Surgery Validate Main — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d3f032637b91c06204ea6dae1ff00819770ce16` · SHA-256 `0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Data.Json
import Surface.Refactor.Surgery

/-!
# Structural-surgery validation manifest

Operational source validation is performed by the strict Rust protocol and the
existing isolated overlay/compiler gates.  This Lean executable publishes the
formal gate order and stable rejection vocabulary without accepting source
bytes or mutating the repository.
-/

open Lean
open Surface.Refactor.Surgery

namespace SurfaceSurgeryValidate

def rejectionCodes : List String := [
  .invalidStructuralPacket, .unsupportedLanguage,
  .parserFingerprintMismatch, .packetHashMismatch,
  .staleRepositoryRevision, .equalRevisionSurgeryConflict,
  .nodeNotFound, .ambiguousNodeCorrespondence, .sourceSpanMismatch,
  .unsupportedSurgeryOperation, .overlappingCompiledEdits,
  .bracketProjectionInvalid, .parseRecoveryNotAdmissible,
  .importCycle, .unresolvedReference, .compilerValidationFailed,
  .leanStatementChanged, .leanPublicApiChanged, .leanAxiomGrowth,
  .inverseRoundtripFailed, .patchRenderFailed, .patchApplyCheckFailed,
  .transactionRace, .transactionRollback, .schemaOrAlgorithmMismatch,
  .contractOrSnapshotMismatch, .sourceBytesOrHashesMismatch,
  .compiledHashMismatch, .structuralInvariantFailed
].map SurgeryRejectionCode.wireCode

def main (args : List String) : IO UInt32 := do
  if !args.isEmpty then
    IO.eprintln "usage: surface_surgery_validate"
    return 64
  let output := Json.mkObj [
    ("schema", toJson "surface.surgery.validation-manifest.v1"),
    ("algorithmVersion", toJson (1 : Nat)),
    ("mutationEnabled", toJson false),
    ("authority", toJson "finiteDeterministicManifest"),
    ("rejectionCodes", toJson rejectionCodes),
    ("requiredDownstreamGates", toJson [
      "exact-source-and-hash-recheck",
      "canonical-parser-or-compiler",
      "requested-build-targets",
      "theorem-task-identity",
      "public-api-and-classification",
      "axiom-closure",
      "inverse-roundtrip",
      "journaled-transaction"])
  ]
  IO.println output.compress
  pure 0

end SurfaceSurgeryValidate

def main (args : List String) : IO UInt32 :=
  SurfaceSurgeryValidate.main args
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8518e366733062410c35b95f653b2e066fa2f760ce8a5410b1674b9ea1f0a08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceSurgeryValidateMain/Variant0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

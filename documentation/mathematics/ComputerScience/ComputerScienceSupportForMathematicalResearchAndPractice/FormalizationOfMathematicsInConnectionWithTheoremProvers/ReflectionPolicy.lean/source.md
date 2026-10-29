# Reflection Policy — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08ad8f7574a18c8a57c4620a6077b9b587466457` · SHA-256 `363bfd16b25c417b8f33b11057b3b1664fb344c35d864f3536d26b12fe8fda3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projects.Mathlib.DeclarationIndex

/-! # Mathlib-positive reflection policy -/

namespace Mathematics.Projects.Mathlib

structure ReflectionPolicy where
  targetRevisionId : StableId
  requireGenerality : Bool := true
  requireProjectIndependence : Bool := true
  requireApiStability : Bool := true
  requireMathlibStyle : Bool := true
  requireMinimalDependencies : Bool := true
  requireDocumentation : Bool := true
  requireKernelCheck : Bool := true
  requireTests : Bool := true
  requireLicenseCompatibility : Bool := true
  requireMigrationPlanForApiChange : Bool := true
  policyDigest : Digest

end Mathematics.Projects.Mathlib
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=063b9aad1d9dcc3762120d98c29cda2e056db6c6ae7aa86747e028f7edb2614b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflectionPolicy/Variant363bfd16b25c417b8f33b11057b3b1664fb344c35d864f3536d26b12fe8fda3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

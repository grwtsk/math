# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Profile.Varianta0ef6e1672e9fb17db479717654ed21aa2463d33a43cbb17b2bee8b02f281727

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed854c6992d67a84fc9ff0cde3e12df36c143e44` · SHA-256 `a0ef6e1672e9fb17db479717654ed21aa2463d33a43cbb17b2bee8b02f281727`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projects.Profile

/-! # Mathlib sovereign-source profile -/

namespace Mathematics.Projects.Mathlib

/-- Mathlib-specific complete-snapshot requirements. -/
structure Profile where
  base : Projects.ProjectProfile
  rootModuleRequired : Bool := true
  tacticsRequired : Bool := true
  metaprogrammingRequired : Bool := true
  documentationRequired : Bool := true
  testsRequired : Bool := true
  lintersRequired : Bool := true
  generatorsRequired : Bool := true
  workflowsRequired : Bool := true
  dependencyStateRequired : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Mathlib
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0eb22288432f6536dd535d1bd89f22d4c8d12c8e8a64e3c4855e8d7c612390fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profile/Varianta0ef6e1672e9fb17db479717654ed21aa2463d33a43cbb17b2bee8b02f281727.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

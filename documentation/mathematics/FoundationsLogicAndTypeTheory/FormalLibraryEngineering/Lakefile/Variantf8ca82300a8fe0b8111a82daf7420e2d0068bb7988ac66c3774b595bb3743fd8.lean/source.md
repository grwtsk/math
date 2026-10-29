# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantf8ca82300a8fe0b8111a82daf7420e2d0068bb7988ac66c3774b595bb3743fd8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e51c292e341d71671b84e1fed44bdf47a74bb30e` · SHA-256 `f8ca82300a8fe0b8111a82daf7420e2d0068bb7988ac66c3774b595bb3743fd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package SpectralProof where
  srcDir := "lean"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.3.0"

@[default_target]
lean_lib SpectralProof

lean_exe spectralProof where
  root := `SpectralProof.Main
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00f80f8f755e7914de7b3b91f75b86fb3708a2a363b13a805cec95fef9f14ffb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantf8ca82300a8fe0b8111a82daf7420e2d0068bb7988ac66c3774b595bb3743fd8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

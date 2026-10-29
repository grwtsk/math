# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variantb9b33079f28a6e2d0c525c3c8c065821f4b8cba64aaee7d876289fe36c1d8457

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffe253fdad71eaa25e2347d5710cbfbadada0885` · SHA-256 `b9b33079f28a6e2d0c525c3c8c065821f4b8cba64aaee7d876289fe36c1d8457`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification

/-!
# Finite transport authority firewall

Transport metadata may carry deterministic or finite evidence. It never exposes
an unrelated theorem proposition merely by being well formed or content
addressed.
-/

public section

namespace Surface.Core.Transport

@[surface_novel]
structure FiniteTransportArtifact where
  schemaId : String
  artifactId : String
deriving DecidableEq, Repr

@[expose] def FiniteTransportHasTheoremAuthority
    (_artifact : FiniteTransportArtifact) : Prop :=
  False

@[surface_novel, surface_published]
theorem finiteTransport_has_no_theorem_authority
    (artifact : FiniteTransportArtifact) :
    ¬ FiniteTransportHasTheoremAuthority artifact := by
  simp [FiniteTransportHasTheoremAuthority]

end Surface.Core.Transport
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9571c5d532744e584665ca3f928e8ae4a820598cf5beb45b757589b7b7a9d93f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantb9b33079f28a6e2d0c525c3c8c065821f4b8cba64aaee7d876289fe36c1d8457.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

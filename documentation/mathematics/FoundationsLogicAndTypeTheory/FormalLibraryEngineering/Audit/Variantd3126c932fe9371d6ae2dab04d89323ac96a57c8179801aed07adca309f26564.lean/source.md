# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Audit.Variantd3126c932fe9371d6ae2dab04d89323ac96a57c8179801aed07adca309f26564

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c92841db277849358babb0369856aabc3714f38a` · SHA-256 `d3126c932fe9371d6ae2dab04d89323ac96a57c8179801aed07adca309f26564`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Presentation.Transport.Projection

/-! # Presentation transport authority firewall -/

public section

namespace Presentation.Transport

@[surface_novel]
structure PresentationProjectionArtifact where
  projectionId : String
  rendererId : String
deriving DecidableEq, Repr

@[expose] def PresentationProjectionHasTheoremAuthority
    (_artifact : PresentationProjectionArtifact) : Prop :=
  False

@[surface_novel, surface_published]
theorem presentationProjection_has_no_theorem_authority
    (artifact : PresentationProjectionArtifact) :
    ¬ PresentationProjectionHasTheoremAuthority artifact := by
  simp [PresentationProjectionHasTheoremAuthority]

end Presentation.Transport
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a55e523f0edce4e61ef1e279da9ee6e4bfdef1b32d3e0acb244ee6feab6c109 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Audit/Variantd3126c932fe9371d6ae2dab04d89323ac96a57c8179801aed07adca309f26564.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

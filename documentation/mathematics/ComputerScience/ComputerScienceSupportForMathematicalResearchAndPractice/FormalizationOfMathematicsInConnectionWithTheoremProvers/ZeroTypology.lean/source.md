# Zero Typology — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e03300da5ce91f2b4eb930c21cb890c7da39402` · SHA-256 `bb00305c1da689f8509e258e8a7dd6bb78b4ce48e73afcc9c1d69bd9984ecfc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.ZeroTypology

/-!
# Folder.Theorem.Core.ZeroTypology

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes typed-zero separation facts for downstream finite carriers.
Ontology: proof.core.zero_typology
Pivot role: none
Zero typology: spectral
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Core

theorem spectralFieldZero_ne_ellipticIdentityZero :
    Folder.Core.ZeroKind.spectralFieldZero ≠
      Folder.Core.ZeroKind.ellipticIdentityZero :=
  Folder.Core.spectralFieldZero_ne_ellipticIdentityZero

theorem heatResidualZero_ne_lFunctionZero :
    Folder.Core.ZeroKind.heatResidualZero ≠
      Folder.Core.ZeroKind.lFunctionZero :=
  Folder.Core.heatResidualZero_ne_lFunctionZero

theorem shellHolonomyZero_ne_deBruijnNewmanZero :
    Folder.Core.ZeroKind.shellHolonomyZero ≠
      Folder.Core.ZeroKind.deBruijnNewmanZero :=
  Folder.Core.shellHolonomyZero_ne_deBruijnNewmanZero

theorem neutralPhaseZero_ne_spectralModeZero :
    Folder.Core.ZeroKind.neutralPhaseZero ≠
      Folder.Core.ZeroKind.spectralModeZero :=
  Folder.Core.neutralPhaseZero_ne_spectralModeZero

end Core
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54285420ee63e9a0fcb905c248176208157def040e4df77f0b43abf5b40969b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroTypology/Variantbb00305c1da689f8509e258e8a7dd6bb78b4ce48e73afcc9c1d69bd9984ecfc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Zero Typology Zero Kind — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d594e5382bafc6ac6d768fce4bcc4ea02db33814` · SHA-256 `b97439c130cdade2f77399ff2dfa0dc52af77272da5996fdf21f6ae6b6e28829`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Core.ZeroTypology

Radiation role: core-architecture
BinaryMatrix spine: This module prevents downstream BinaryMatrix-adjacent layers from conflating typed zero notions.
Ontology: core.zero_typology
Pivot role: none
Zero typology: spectral
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Core

inductive ZeroKind where
  | spectralFieldZero
  | spectralModeZero
  | harmonicLaplacianZero
  | heatResidualZero
  | shellHolonomyZero
  | ellipticIdentityZero
  | neutralPhaseZero
  | lFunctionZero
  | deBruijnNewmanZero
deriving DecidableEq, Repr

structure TypedZero where
  carrier : Type
  kind : ZeroKind
  description : String

theorem spectralFieldZero_ne_ellipticIdentityZero :
    ZeroKind.spectralFieldZero ≠ ZeroKind.ellipticIdentityZero := by
  decide

theorem heatResidualZero_ne_lFunctionZero :
    ZeroKind.heatResidualZero ≠ ZeroKind.lFunctionZero := by
  decide

theorem shellHolonomyZero_ne_deBruijnNewmanZero :
    ZeroKind.shellHolonomyZero ≠ ZeroKind.deBruijnNewmanZero := by
  decide

theorem neutralPhaseZero_ne_spectralModeZero :
    ZeroKind.neutralPhaseZero ≠ ZeroKind.spectralModeZero := by
  decide

end Core
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6f9706ecc4f6b4bce798584a8cfcb84d5483bd2ad98b6f690021d6acd002821 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroTypology/Variantb97439c130cdade2f77399ff2dfa0dc52af77272da5996fdf21f6ae6b6e28829.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

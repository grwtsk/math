# Boundary Laplacian — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55fda0e54fa6dfc4eda8a1c4c9ff326d0dcce548` · SHA-256 `30d3128c1c3cdae89a749df85a81421945bdf0a8f80e1c2e66dc3d0b26e81011`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Spectral.Laplacian

/-!
# Folder.Harmonic.BoundaryLaplacian

Radiation role: harmonic-control
BinaryMatrix spine: This module records boundary Laplacian effects as contracts for cellular carrier boundaries.
Ontology: harmonic.boundary_laplacian
Pivot role: spectral
Zero typology: harmonic
Contract boundary: contract
Composite stack role: residual
-/

namespace Folder
namespace Harmonic

structure BoundaryLaplacianEffect where
  Carrier : Type
  boundary : Carrier → Prop
  laplacianMagnitude : Carrier → ℝ
  boundarySignificant : Prop
  boundarySignificant_certified : boundarySignificant

theorem boundary_laplacian_significant
    (E : BoundaryLaplacianEffect) :
    E.boundarySignificant :=
  E.boundarySignificant_certified

end Harmonic
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b48b22dad208997a6767c3841e3f3a15c6237162c60efd6b22ec897fb42bbd99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BoundaryLaplacian/Variant30d3128c1c3cdae89a749df85a81421945bdf0a8f80e1c2e66dc3d0b26e81011.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

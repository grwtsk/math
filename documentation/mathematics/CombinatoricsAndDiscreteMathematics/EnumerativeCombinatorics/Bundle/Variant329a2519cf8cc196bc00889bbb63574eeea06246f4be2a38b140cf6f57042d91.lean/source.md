# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Bundle.Variant329a2519cf8cc196bc00889bbb63574eeea06246f4be2a38b140cf6f57042d91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f2ec2c9a1cf9b81d30bf92b88f838721852cc6c` · SHA-256 `329a2519cf8cc196bc00889bbb63574eeea06246f4be2a38b140cf6f57042d91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Catalan.Tree
import Folder.Spectral.Tensor

/-!
# Folder.Fiber.Bundle

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.bundle
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

universe u v

structure Bundle (Base : Type u) where
  Fiber : Base → Type v

structure BundleMap {Base : Type u}
    (B₁ B₂ : Bundle.{u, v} Base) where
  map : ∀ b, B₁.Fiber b → B₂.Fiber b

structure FiberEquiv {Base : Type u}
    (B : Bundle.{u, v} Base)
    (b₁ b₂ : Base) where
  equiv : B.Fiber b₁ ≃ B.Fiber b₂

structure CatalanSpectralBundle (k : Nat) where
  Fiber : Catalan.CTree → Type v
  visibleShape : Catalan.CTree → Carrier.GridShape
  visible :
    ∀ T, Fiber T → Spectral.SpectralTensor (visibleShape T) k

end Fiber
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5e92efe8e1b5da04126370611b306283588d443d19fd136d50e1d82e86a9b5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bundle/Variant329a2519cf8cc196bc00889bbb63574eeea06246f4be2a38b140cf6f57042d91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

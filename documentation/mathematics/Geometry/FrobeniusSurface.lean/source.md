# Frobenius Surface — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69fefb915e01c0ef8e7107dd56dca96fb44c0519` · SHA-256 `7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Geometry.FrobeniusSurface

structure FrobeniusSurface where
  absoluteFrobeniusImplemented : Bool := false
  geometricFrobeniusGlued : Bool := false
  mathlibSchemeInterfaceActive : Bool := false
  drinfeldShtukaResidueIsolated : Bool := true

def currentGeometryBoundary : FrobeniusSurface := {}

theorem absolute_frobenius_not_implemented :
    currentGeometryBoundary.absoluteFrobeniusImplemented = false :=
  rfl

theorem geometric_frobenius_not_glued :
    currentGeometryBoundary.geometricFrobeniusGlued = false :=
  rfl

theorem mathlib_scheme_interface_not_active :
    currentGeometryBoundary.mathlibSchemeInterfaceActive = false :=
  rfl

theorem drinfeld_shtuka_residue_isolated :
    currentGeometryBoundary.drinfeldShtukaResidueIsolated = true :=
  rfl

end Think.Geometry.FrobeniusSurface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb31b60eb580c820989c0179185c72d7ad7fcb3209acf7189a997ba9d150d39f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

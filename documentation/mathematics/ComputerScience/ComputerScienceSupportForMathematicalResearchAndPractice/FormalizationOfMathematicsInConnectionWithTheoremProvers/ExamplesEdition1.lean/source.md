# Examples Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b5611525c4325d65aa8dc42a952ad6b792561e3` · SHA-256 `0974637318fd06c9c54cd4659f0a3378c426e32fcac70d213f41f280b9d8f624`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean
import Boolean.Cube.CertificateBoundary

/-!
# Boolean import examples

Small examples showing that the public Boolean surface and the explicit
certificate-boundary surface are independently importable.
-/

namespace Boolean

example :
    Tree.eval (fun x : Fin 1 => decide (x = 0)) (.var (0 : Fin 1)) = true := by
  rfl

example (p : Tree (Fin 2)) :
    Formula.eval (fun _ : Fin 2 => false) (Tree.toFormula p) =
      Tree.eval (fun _ : Fin 2 => false) p := by
  simp

namespace Cube

example
    (report : SpectralDeterminantBoundary.BoundaryReport) :
    SpectralDeterminantBoundary.FiniteMobiusAuthority report ∨
      SpectralDeterminantBoundary.RequiresExternalAnalyticOrArithmeticCertificate
        report :=
  SpectralDeterminantBoundary.mobius_reducer_is_boundary_detector report

example :
    PrismaticProjection.stepChecked
      PrismaticProjection.exampleShapeUpdateWitness :=
  PrismaticProjection.example_stepChecked

example :
    PrismaticProjection.exampleShapeUpdateWitness.certificate.precisionSound :=
  PrismaticProjection.example_stepChecked_exposes_precision

example :
    PrismaticProjection.PrismaticComputed :=
  PrismaticProjection.examplePrismaticComputed

example :
    PrismaticProjection.ToroidalShadowState :=
  PrismaticProjection.examplePriorShadowState

end Cube

end Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51627e0f11929629599224ad4d0d02147e20807e9b64413736682389b4a94057 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant0974637318fd06c9c54cd4659f0a3378c426e32fcac70d213f41f280b9d8f624.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

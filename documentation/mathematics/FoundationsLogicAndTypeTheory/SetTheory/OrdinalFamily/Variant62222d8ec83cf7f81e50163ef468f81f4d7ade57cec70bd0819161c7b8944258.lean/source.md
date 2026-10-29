# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalFamily.Variant62222d8ec83cf7f81e50163ef468f81f4d7ade57cec70bd0819161c7b8944258

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7b115e267c584317974962154c182726c209960` · SHA-256 `62222d8ec83cf7f81e50163ef468f81f4d7ade57cec70bd0819161c7b8944258`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.SquareRoot.FiniteStratum

/-!
# Uniform ordinal-family square-root bound

The result is conditional on a common scale and explicit finite-stratum
certificates.
-/

namespace Mathematics.StratifiedBoundary

structure OrdinalFamilySquareRootCertificate where
  finiteCertificate : Nat → FiniteStratumSquareRootCertificate
  uniformScale : Nat
  scaleDominates :
    ∀ stage,
      (finiteCertificate stage).squareRootScale *
          (finiteCertificate stage).spectralMultiplicityScale ≤
        uniformScale

theorem ordinal_family_square_root_bound
    (certificate : OrdinalFamilySquareRootCertificate)
    (stage : Nat) :
    (certificate.finiteCertificate stage).unnormalizedDiscrepancy ≤
      certificate.uniformScale :=
  Nat.le_trans
    (certificate.finiteCertificate stage).bound
    (certificate.scaleDominates stage)

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb5d5779a540e042f0f553a4751f68a238a524b9aec2630186810f65f7e4972c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalFamily/Variant62222d8ec83cf7f81e50163ef468f81f4d7ade57cec70bd0819161c7b8944258.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

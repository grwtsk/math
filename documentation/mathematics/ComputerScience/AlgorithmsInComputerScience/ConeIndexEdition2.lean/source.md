# Cone Index Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26fa03311c1b72b39b4a8687950c801fad3da721` · SHA-256 `8a0e90fd1c90e3a1c8ba8ee06949a0b702ad3bab1c6392e81a683e609e5083bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface.Arithmetic.EllipticCurve.BSD
namespace ConeIndex

/-! Audit-facing index for the BSD theorem cone. -/

def coneName : String := "BSD"

def publicTheoremDeclarations : List String := [
  "BSD.firstPart",
  "BSD.secondPart",
  "BSDReadiness.ready",
  "currentBSDReadiness_not_ready"
]

def certificateOnlyDeclarations : List String := [
  "BSDCertificate",
  "BSDTheoremSeed",
  "PackedSmoothBSDTheoremInput"
]

def hardInputDeclarations : List String := [
  "AnalyticContinuationCertificate",
  "FunctionalEquationCertificate",
  "OrderOfVanishingCertificate",
  "FinitelyGeneratedAbelianCertificate"
]

def forbiddenClaims : List String := [
  "Hilbert trace bridge",
  "Ricci flow bridge",
  "analytic PDE bridge",
  "spectral correspondence"
]

end ConeIndex
end Surface.Arithmetic.EllipticCurve.BSD
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80e733d30784692e4b6450bc4b53fc882ab177ef03f74d36665da25beaf33f60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConeIndex/Variant8a0e90fd1c90e3a1c8ba8ee06949a0b702ad3bab1c6392e81a683e609e5083bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

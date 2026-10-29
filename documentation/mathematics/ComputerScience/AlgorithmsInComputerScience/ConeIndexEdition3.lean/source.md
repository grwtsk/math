# Cone Index Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb7fbb2313e1a214f13c1fdbd13b3bf8e59bca89` · SHA-256 `9686056712d1b3b9257c54c97f7289bfbcd86935898c1564be61beecf7200ef7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace Prismatic
namespace ConeIndex

/-! Audit-facing index for the prismatic comparison cone. -/

def coneName : String := "PrismaticComparison"

def publicTheoremDeclarations : List String := [
  "CrystallineComparisonCertificate.certifiedForMajorProof_of_fields",
  "HodgeTateComparisonCertificate.certifiedForMajorProof_of_fields",
  "PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof_of_field",
  "PrismaticHilbertEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields"
]

def certificateOnlyDeclarations : List String := [
  "CrystallineComparisonCertificate",
  "HodgeTateComparisonCertificate",
  "DeRhamComparisonCertificate",
  "EtaleComparisonCertificate",
  "PrismaticEnvelopeTheoremCertificate"
]

def hardInputDeclarations : List String := [
  "comparison witnesses",
  "Nygaard/conjugate witnesses",
  "envelope witnesses",
  "Hilbert embedding witnesses"
]

def forbiddenClaims : List String := [
  "BSD",
  "Ricci surgery",
  "analytic PDE stability",
  "zeta spectral correspondence"
]

end ConeIndex
end Prismatic
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4099adfb84ee4ab6db25173c11a9523566d4f5143a06460f71d87d403ac038f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConeIndex/Variant9686056712d1b3b9257c54c97f7289bfbcd86935898c1564be61beecf7200ef7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

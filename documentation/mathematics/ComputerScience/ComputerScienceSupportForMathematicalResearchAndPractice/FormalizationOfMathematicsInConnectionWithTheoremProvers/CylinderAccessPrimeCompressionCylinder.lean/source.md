# Cylinder Access Prime Compression Cylinder — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b8efe7bfed7b946ebc47659673896f63d1d411e` · SHA-256 `9044f65d0de8faf71d3fb678790d9e735c92359a4e6f516e33be186eb48d9a51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Access.ReleaseProfile

/-!
# Cofinal prime/compression cylinders
-/

namespace Mathematics.SemiLocalDefect.Access

structure PrimeCompressionCylinder where
  primeUniverse : FinitePrimeUniverse
  compressionRank : Nat
  stage : Nat
  cutDigest : CapacityDigest
  compressionDigest : CompressionId

structure CylinderEmbedding
    (source target : PrimeCompressionCylinder) where
  primeEmbedding :
    PrimeUniverseEmbedding
      source.primeUniverse target.primeUniverse
  rankMonotone :
    source.compressionRank ≤
      target.compressionRank
  stageStrict :
    source.stage < target.stage
  capacityCompatible : Prop
  capacityCompatibleProof :
    capacityCompatible
  compressionCompatible : Prop
  compressionCompatibleProof :
    compressionCompatible

structure CylinderAccessReceipt
    (cylinder : PrimeCompressionCylinder) where
  inspectedCutCount : Nat
  inspectedCompressionCount : Nat
  compatibilityChecked : Bool
  authority :
    CertificateStatus
  digest : CertificateDigest
  noLimitClaim :
    authority ≠ .certified →
      True

end Mathematics.SemiLocalDefect.Access
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e25fee52779b676d844893a9a09cb257d770eef26d4cd3585ce72c4e726b850e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderAccess/Variant9044f65d0de8faf71d3fb678790d9e735c92359a4e6f516e33be186eb48d9a51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

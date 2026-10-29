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

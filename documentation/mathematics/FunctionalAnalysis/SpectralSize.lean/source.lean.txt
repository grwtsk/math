import Mathematics.ConnesBitfield.SpectralMeasure

/-!
# Uniform finite spectral size

Self-adjointness removes Jordan nilpotents.  Multiplicity control remains a
separate dimension/effective-rank certificate tied to the arithmetic mass.
-/

namespace Mathematics.ConnesBitfield

universe uScale

structure UniformSpectralSizeCertificate
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system)
    (_purity : OperatorPurityCertificate spectral)
    (Scale : Type uScale) where
  mass : Scale → ℝ
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  effectiveRank :
    Scale → Bitfield system.bits → Nat
  effectiveRankLeDimension :
    ∀ scale state,
      effectiveRank scale state ≤ spectral.dim
  dimensionConstant : ℝ
  dimensionConstantNonnegative :
    0 ≤ dimensionConstant
  dimensionToMass :
    ∀ scale,
      (spectral.dim : ℝ) ≤
        dimensionConstant * mass scale
  effectiveRankConstant : ℝ
  effectiveRankConstantNonnegative :
    0 ≤ effectiveRankConstant
  effectiveRankToMass :
    ∀ scale state,
      (effectiveRank scale state : ℝ) ≤
        effectiveRankConstant * mass scale
  ensembleTotalVariation :
    Scale → ℝ
  totalVariationConstant : ℝ
  totalVariationConstantNonnegative :
    0 ≤ totalVariationConstant
  totalVariationUniform :
    ∀ scale,
      ensembleTotalVariation scale ≤
        totalVariationConstant
  traceTransformUniformlyBounded : Prop

end Mathematics.ConnesBitfield

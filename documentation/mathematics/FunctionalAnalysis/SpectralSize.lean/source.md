# Spectral Size — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `374161a9a43446e5a5b191aaafdfa2096767563f` · SHA-256 `0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6569247da793710096c613eaa15b1d19ee477c695839b28395b00fa7505cc977 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SpectralSize/Variant0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

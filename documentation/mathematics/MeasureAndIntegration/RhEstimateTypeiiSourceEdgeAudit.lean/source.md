# Rh Estimate Typeii Source Edge Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d88fbbfbb9a13ab679c9a917df5ee848b30de6a9` · SHA-256 `d2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTypeTwoBlockStrength

set_option autoImplicit false

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateSourceEdgeProfile EstimateSourceEdgeCorrelation EstimateTypeTwoLogBlocks
open EstimateTypeTwoBlockStrength EstimateMertensResidual EstimateVaughanSource
open EstimateVaughanTranslationGate
open FormalResearch.RiemannHypothesis.SourcePairing

example (A z : ℝ) (hA : 1 ≤ A) (hz : 0 ≤ z) (hzA : z ≤ 2*A) :
    sourceCorrelation Realization.explicitSecondDerivative A (2*A-z) =
      1 / (A^9 * sourceNormalization A) *
        ∫ r in (0 : ℝ)..z, endpointPolynomial A r * endpointPolynomial A (z-r) :=
  sourceCorrelation_upper_edge A z hA hz hzA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ r in (0 : ℝ)..2*A, endpointPolynomial A r * endpointPolynomial A (2*A-r)) =
      A^9 * sourceNormalization A := endpointPolynomial_full_overlap_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    typeTwoOffDiagonal A = ∑ c ∈ logCells A, logBlockSum A c :=
  typeTwoOffDiagonal_eq_logBlocks A hA

example (A : ℝ) (hA : 1 ≤ A) :
    32*A^2 ≤ edgeBlockBudget A ∧ edgeBlockBudget A ≤ 398721024*A^2 :=
  ⟨edgeBlockBudget_ge A hA, edgeBlockBudget_le A hA⟩

example (K R A : ℝ) (p : ℕ) (hR : 1 ≤ R)
    (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + K * (1+2*A)^p * densityBlockBudget A :=
  mertensResidual_le_of_blocks K R A p hR hB hRA

example (K R A : ℝ) (p : ℕ) (hK : 0 ≤ K) (hR : 1 ≤ R)
    (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + 398721024 * Real.exp 1 * K * 3^p * A^(p+2) :=
  mertensResidual_le_coarse_block_budget K R A p hK hR hB hRA
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbde19efb5e8da22b862e929fe7e11ebf77ac4fa88a7d8e164063f34aa985e12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateTypeiiSourceEdgeAudit/Variantd2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

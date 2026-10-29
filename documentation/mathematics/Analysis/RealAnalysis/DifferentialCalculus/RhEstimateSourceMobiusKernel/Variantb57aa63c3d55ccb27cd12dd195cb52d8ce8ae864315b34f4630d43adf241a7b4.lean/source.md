# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RhEstimateSourceMobiusKernel.Variantb57aa63c3d55ccb27cd12dd195cb52d8ce8ae864315b34f4630d43adf241a7b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cb7e63d8e2003f3630c830f14dfd94f7a080321` · SHA-256 `b57aa63c3d55ccb27cd12dd195cb52d8ce8ae864315b34f4630d43adf241a7b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel.sourceKernelTerm_eq_archive
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel.sourceMobiusKernel_differentiableAt
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel.sourceMobiusKernel_deriv_integrable
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel.sourceMobiusKernel_upper_zero
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel.sourceMobiusKernel_contract_iff_integerAgreement
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel.source_mobius_kernel_checkpoint

example (A : ℝ) (hA : 1 ≤ A) :
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel.SourceMobiusKernelAnalyticContract A :=
  FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel.sourceMobiusKernel_analytic_contract A hA
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2f45b9c163def979581b26e0de7fe60ba7697ad5fcf596ff783cb796f21ec7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RhEstimateSourceMobiusKernel/Variantb57aa63c3d55ccb27cd12dd195cb52d8ce8ae864315b34f4630d43adf241a7b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

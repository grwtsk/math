# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularKernelClosedForm

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a430f60e1b95267283e12880af873bc0a408325f` · SHA-256 `ad55c76ce5adcba8d0d86d00a3bd6689c2307672e0b753d20c0b32f69115f90e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHalfAngleSineConversion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- The exponential phase in the half-angle representation has unit modulus,
so it cancels exactly against its complex conjugate. -/
theorem triangularPhaseConjugateCancellation :
    TriangularPhaseConjugateCancellationClaim := by
  intro N hN t ht0 htHalf
  dsimp
  rw [Complex.mul_conj']
  simp

/-- The geometric-block normalized squared modulus is exactly the sine-ratio
square on the off-boundary interval. -/
theorem triangularGeometricBlockSineNorm_offBoundary :
    TriangularGeometricBlockSineNormOffBoundaryClaim :=
  phaseCancellation_to_sineNorm
    triangularPhaseConjugateCancellation

/-- The explicit symmetric triangular kernel has the classical Fejer
sine-squared closed form on the exact off-boundary domain used downstream. -/
theorem symmetricTriangularKernelClosedForm_offBoundary :
    SymmetricTriangularKernelClosedFormOffBoundaryClaim :=
  autocorrelation_and_offBoundarySineNorm_to_closedForm
    symmetricTriangularKernel_autocorrelation
    triangularGeometricBlockSineNorm_offBoundary

/-- The symmetric triangular kernel therefore satisfies the explicit
off-boundary decay bound with constant 1/4. -/
theorem symmetricTriangularKernelDecay :
    SymmetricTriangularKernelDecayClaim :=
  symmetricTriangularKernelDecay_of_offBoundaryClosedForm
    symmetricTriangularKernelClosedForm_offBoundary

end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80c3171200ad4c6422a0b63ef54dc33db3dd60a983aa7a1c0fb3ff32ed841b95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

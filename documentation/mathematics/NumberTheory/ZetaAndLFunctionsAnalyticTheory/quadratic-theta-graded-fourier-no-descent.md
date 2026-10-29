# Graded Fourier premise-strength correction

The Fejer boundary error is now source-closed, but the smoothed value still
requires a Fourier/arithmetic supplier.  This module records the exact premise
strength needed to avoid circularity.

A threshold-parameterized prime-only Fourier premise is defined by the scale

fullGreenPrimeOnlyCoordinateStage(X,N)
  <= C X^(-2(1-rho)+eta).

At rho=1/2 this specializes exactly to the existing
AllDyadicPrimeOnlyFourierCoordinateBound.

The repository already proves that existing premise is equivalent to
AllDyadicEnergyBound.  Combined with the graded half-threshold identity, the
source now records

AllDyadicPrimeOnlyFourierCoordinateBound
  iff AllDyadicEnergyAtThreshold(1/2).

Thus the old Fourier premise is critical-line/RH strength and cannot be used as
a genuine seven-eighths-to-three-quarters descent supplier.

For a threshold-rho energy premise and effective Fourier bandwidth exponent
beta, naive Cauchy--Schwarz reconstruction has exponent

M_rho(beta) = rho + beta/2.

The quadratic target is Q(rho)=2rho-1.  The source proves

M_rho(beta) <= Q(rho)
  iff beta <= 2(rho-1).

Hence when rho<1 and beta>=0, naive graded Fourier reconstruction is strictly
too weak.  In particular, at rho=7/8,

3/4 < M_{7/8}(beta)

for every nonnegative beta.

The corrected frontier is therefore a genuinely graded seven-eighths Fourier
readout, or some stronger nonlinear/maximal arithmetic input.  The critical
prime-only Fourier premise is not an admissible noncircular substitute.

Status:
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CRITICAL_PREMISE_STRENGTH_CLASSIFIED /
GRADED_FOURIER_PREMISE_TYPED /
NAIVE_GRADED_FOURIER_NO_DESCENT_SOURCE_PROVED /
SEVEN_EIGHTHS_SMOOTHED_VALUE_SUPPLIER_OPEN.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e06e2ae71903f33ba49d0b2b23841fa33f021a5f2973b13b68026e81dbf5d87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

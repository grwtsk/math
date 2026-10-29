# Möbius–von Mangoldt coefficient bridge

Issue: #948  
Parent: draft PR #937 at `b109a7e835230614092d17f9ad7a098a3e132d17`.

Mathlib provides the exact arithmetic-function identity
```lean
ArithmeticFunction.moebius_mul_log_eq_vonMangoldt
```
meaning
```text
mu * log = Lambda.
```

The new source binds this theorem and exposes the pointwise finite convolution
```text
Lambda(n)
 = sum_(ab=n) mu(a) log(b).
```

It then proves exact substitution identities for arbitrary finite real and complex test-function sums. The complex version is the relevant shape for Fourier coordinates:
```text
sum_n Lambda(n) F(n)
 =
sum_n sum_(ab=n) mu(a) log(b) F(n).
```

This is the first substantive arithmetic bridge between the centered Möbius stack and the coefficient type used by the graded von-Mangoldt Fourier stack.

It is only a coefficient bridge. The centered fiber energy is quadratic in Möbius-pair amplitudes, while the graded Green coordinate is linear in Lambda with a continuum background. No norm or energy implication is claimed.

Next mathematical frontier:
```text
MOBIUS_LOG_CONVOLUTION_TO_CENTERED_PAIR_COORDINATE_OPEN
```
i.e. determine whether the divisor convolution can be reorganized against the centered pair coordinate 2m+h in a way that yields a usable norm comparison.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2ebb583209388b7dc2a40bf292102ea2cfd3339672eea017f8786899dcdf18d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

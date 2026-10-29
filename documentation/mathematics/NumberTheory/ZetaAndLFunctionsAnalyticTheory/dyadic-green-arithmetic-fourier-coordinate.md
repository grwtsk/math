# Explicit arithmetic Fourier coordinates

The Fourier witness coordinates are now written directly in the original arithmetic variables.

For nonzero k, the zero-endpoint Fourier primitive is

phi_k(t)
 = (exp(-2 pi i k t)-1)/(-2 pi i k),

expressed in Lean through the unit-additive-circle Fourier monomial.

For one octave X define

P_X(k)
 = sum_(X<n<=2X)
   (Lambda(n)/n) phi_k(n/X-1),

B(k)
 = integral_0^1 phi_k(t)/(1+t) dt.

Then the exact coordinate is

c_X(k) = B(k)-P_X(k).

The zero mode is identically zero because phi_0 is totalized to zero and the centered residual has zero mean.

For every integer k,

c_X(k)
 = greenResidualFourierCoeff(X,k).

Therefore every admissible source-frame mode energy is exactly

|B(k)-P_X(k)|^2.

The complete Green energy is recovered as the limit of finite symmetric sums of these explicit arithmetic coordinates.

This is the arithmetic coordinate requested by the witness program: it is a finite von Mangoldt exponential sum with exact source labels and weights, compared against one fixed continuum coordinate. No zero list, RH, PNT, or fitted final Gram is used.

The remaining all-scale supplier can now be attacked directly as a quantitative statement about these coordinates and the two endpoint moments. By the previous equivalence theorem, a sufficiently strong uniform all-scale bound on all finite coordinate heads is exactly AllDyadicEnergyBound and hence has the repository's existing conditional RH consequence.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3c06805ff4976dccae660de39c1fd5a8ddda614c3b218c0c44aff9a170790c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Adapter from the classical von-Koch theta error

A standard RH-strength prime-number-theorem error term has the form

|theta(x)-x| <= C sqrt(x) (log x)^2

for all sufficiently large x.

This module does not import an external theorem asserting that bound. Instead it proves the transport from that proposition into the recovered dyadic witness.

Mathlib provides

(log x)^2 = o(x^delta)

for every delta>0.

Given eta>0, take delta=eta/4. On a dyadic octave X<=u<=2X,

sqrt(u) (log u)^2
 <= constant * X^(1/2+eta/4)
 <= constant * X^(1/2+eta/2).

The remaining +1 floor correction is absorbed because X^(1/2+eta/2)>=1.

Hence the source route is

ClassicalThetaSqrtLogSqBound
 -> AllDyadicThetaOctaveSquareRootBound
 -> AllDyadicEnergyBound
 -> RH.

External audit: PrimeNumberTheoremAnd contains RH-conditional sqrt(x) log^2(x) statements in its TMEEMT material, but the inspected declarations still use sorry; they are not treated as trusted proof inputs here.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9791fbd1ccbe8a8764c63c1d024867c359dd6f1b3976cc028fa454a4dd28f386 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

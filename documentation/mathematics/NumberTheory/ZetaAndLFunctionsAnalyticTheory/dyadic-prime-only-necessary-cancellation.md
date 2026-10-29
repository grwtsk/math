# Necessary classical cancellation in the prime-only witness

The prime-only stage is a sum of nonnegative squares. Therefore its all-scale bound already implies RH-strength cancellation for elementary prime observables.

For every eta>0, eventually along dyadic X:

1. Harmonic prime mass:
   [sum_(X<p<=2X) log(p)/p - log 2]^2
   <= C X^(-1+eta).

2. Chebyshev-theta octave:
   [(theta(2X)-theta(X))/X - 1]^2
   <= C X^(-1+eta).

3. The first positive and negative prime-only weighted DFT coordinates have squared norm
   <= C X^(-1+eta).

Thus the remaining theorem is visibly a cancellation theorem, not a positivity theorem.

Chebyshev's unconditional linear upper bounds do not imply any of these square-root-scale discrepancies. Higher prime powers have already been removed as an O(1/X) energy residual, so these conditions isolate the prime-only difficulty.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d572bc9e0daba177f1af4c75722911badd7f59d0e7c0e304507c575521adb7c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

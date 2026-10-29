# Complete higher-prime-power witness residual is O(1/X)

The entire higher-prime-power contribution is now controlled, not only its individual Fourier modes.

Define:
- higher-power mass0 contribution = weighted non-prime octave mass;
- higher-power mass1 contribution = the same weights multiplied by the normalized location;
- higher-power Fourier energy = the sum over all squared higher-power Fourier corrections.

Because every location lies in [0,1], the second endpoint contribution is bounded by the first. The Fourier channel is bounded by C_freq times the first mass squared.

Hence the complete residual satisfies

R_hp(X)
 <= (2+C_freq) M_hp(X)^2.

Pinned Chebyshev gives

M_hp(X)
 <= C sqrt(2X)/X.

Therefore there is one constant K such that

R_hp(X) <= K/X

for every positive X.

This is exactly the scale needed for the RH-G01 target: for every eta>0, K/X is stronger than K X^(-1+eta) for X>=1.

The hard arithmetic supplier can therefore be reduced to the prime-only witness. Higher prime powers can be carried as a fully explicit, independently controlled residual channel.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1ae24c29d7f12d7c29c55e5460d0ae57590de22bdf7cf97c38b7d94c29e7fc5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

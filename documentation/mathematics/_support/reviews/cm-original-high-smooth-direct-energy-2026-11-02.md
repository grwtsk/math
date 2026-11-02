# Original unsmoothed Möbius high-smooth/low direct energy

Date: 2026-11-02. Mathematical direction: grwtsk contributors; formalization
assistance: OpenAI. SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## Exact original source and optimization

The earlier adaptive-high-low route used a C-infinity replacement
and a 1/12 smoothing error. That regularization is not needed for this
physical-time energy comparison. The coefficient is the ORIGINAL
moebiusReal n and the response is the ORIGINAL pickupResponse n u,
with the unchanged closed integer inventory 1..2^j.

Fix a genuine-prime bank B of size r. Let H_s be the preexisting
highSmoothBlock B (2^s) (log(2^(s+1))). These are original n with a
genuinely B-smooth DIVISOR above nearSquareRootCut, NOT integers that
are necessarily entirely B-smooth. Each H_s lies in
(2^s,2^(s+1)]; the dyadic shells are pairwise disjoint.
Index n=1 stays in the low source.

OriginalHighWave(B,j,u) sums ORIGINAL mu(n)*pickupResponse(n,u) over
s<j, and OriginalLowWave = originalFixedWave - OriginalHighWave.
The exact return F=H+L and square F²=H²+2HL+L² keep every source
sign, squareful zero, parity/residue and mixed term.

## Fixed-bank original high-wave bound

The existing highSmoothCofactorCount_target source candidate gives
card(H_s)<=exp(2sqrt(T_s))*(1+T_s/log2)^r, T_s=(s+1)log2.
The independently sourced UNsmoothed response bound gives
|mu(n)*pickupResponse(n,u)|<=2/sqrt(2^s) for all u,n in H_s.
Thus |H(B,j,u)|<=finiteHighEnvelope B j.

Let a=log 2>0, q=exp(-a/8)=2^(-1/8), and
C_r=(1+8(r+1)/a)^r. The ordinary scalar inequalities
2sqrt(T)<=4+T/4 and (1+T/a)^r<=C_r exp(T/8)
give highShellCost(B,s)<=D_r*q^(s+1),
D_r=2sqrt(2)*exp(4)*C_r. Hence
|H(B,j,u)|<=K_B=D_r*q/(1-q) for every j,u.
The new GeometricSummation leaf gives the actual finite geometric
payment from the explicit scalar CanonicalShellScalarDecay proposition.
This final source-specific scalar normalization is OPEN in Lean;
it is not a hidden Möbius arithmetic premise or an asserted axiom.

## Strictly stronger original energy

At T_j=j log 2, the existing original finitePickup theorem identifies
pickupEnergy(T_j)=integral_0^T_j originalFixedWave(j,u)^2 du.
The candidate source integrates (x+y)^2<=2x²+2y² to obtain
H_original(T_j)<=2H_low(T_j)+2K_B²*T_j and
H_low(T_j)<=2H_original(T_j)+2K_B²*T_j.
This reduces the previous factor 4 to 2, removes the adaptive
1/12 error and eliminates any mandatory all-even Fourier-moment step.
The mixed original signed term is retained in its exact square identity.

The physical-energy source includes a CONDITIONAL original RH consumer,
taking the unproved OriginalLowAllRate B arithmetic estimate plus
the scalar GlobalHighEnvelope. Neither premise nor RH is proved here.

## Qualified boundaries

The exact index-filtered complement identification remains a separate
finite OriginalLowComplementReturn Prop; source intervals are disjoint
and belong to 1..2^j mathematically, but native Lean checking is open.
Fixed bank B only: K_B is NOT uniform in a bank growing with j.
The fixed-bank low source remains arithmetically hard, and the
unresolved low-low and cross-shell signed correlations remain visible.

Pinned Lean 4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Full native parser/elaboration, expected-type checks, fresh kernel
replay, complete import closure and axiom/native-helper audit NOT_RUN.
No source is claimed kernel-accepted, and RH is NOT_CLAIMED.
No root imports, dependency, CI, scheduler or runner changes.

# Source-optimized Möbius smoothing and fixed-bank global high-smooth removal

Date: 2026-11-02. Mathematical direction: grwtsk contributors;
formalization assistance: OpenAI.
Evidence: mathematical derivation + Lean SOURCE_PROOF_CANDIDATES. Pinned Lean
v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No new RH claim.

## Related mathematics actually examined

- CMAdaptiveDisjointBirth, CMAdaptiveBirthEnvelope,
  CMAdaptiveErrorSupportOrthogonality, CMAdaptiveSignedTupleMoments,
  CMAdaptivePhysicalTimeHolderLp, and CMAdaptiveFiniteCyclicTrace.
- MoebiusSmoothBirthGramRegularization: already constructs original causal
  smoothBirthResponse eta kappa n u with width kappa/n^2 and exact complete
  ordered signed Gram defect.
- MoebiusCriticalWidthSmoothBirth: larger kappa/sqrt(n) windows and a
  conditional linear-in-time unsigned Gram defect, not disjoint at
  all large n.
- MoebiusHighSmoothDensePairs, MoebiusHighSmoothCofactorCountProof,
  MoebiusHighSmoothTimeLocalGramProof and MoebiusHighSmoothAllRateProof:
  source-true fixed-bank high-smooth-divisor counting and SAME-SHELL
  high-incident signed Gram all-rate source candidates; low-low and
  cross-shell remainder not disposed of by those same-shell statements.
- MoebiusCausalMertensSquareBridge and
  MoebiusCausalMertensSquareEnergyIntegration: source-exact original
  signed Mertens/Abel and weighted-square majorants; they do not
  furnish an all-positive-rate Mertens estimate.
- MoebiusFiniteSmoothEulerMomentsProof: finite prime-bank Euler
  reciprocal and reciprocal-square-root weight estimates; no
  need to assume independence or probabilistic Möbius signs.

## Optimization A: reuse preexisting kappa/n^2 smoother

For 0<kappa<=1/2 and n>=1,
  h_n=kappa/n^2 <= 1/(n+1) <= log(n+1)-log n.
The first inequality follows from 2n^2>=n+1, and the second is already
proved as adaptiveWidth_le_log_gap. Consequently the original legacy
smoothBirthResponse with eta=Real.smoothTransition has NONOVERLAPPING
error supports even though that fact was not used in its older Gram
source. Its error atoms are the literal
  e_n(u)=mu(n)[pickupResponse(n,u)-smoothBirthResponse(theta,kappa,n,u)].
For n<m and all u, e_n(u)e_m(u)=0. The original pickup still
has all its ordered mixed arithmetic products. Only the smoothing
error family is pairwise orthogonal.

For u=log n+s, 0<=s<=h_n,
  0<=pickupResponse(n,u)
   =2 n^(-1/2) (1-exp(-s/2)) <= s/sqrt n.
Since 0<=theta<=1 and |mu(n)|<=1,
  |e_n(log n+s)| <= s/sqrt n,
and e_n vanishes elsewhere. Therefore exactly for each finite original
dyadic inventory, integrating and using disjointness,
  integral_0^T |sum_n e_n(u)|^2 du
  <= sum_(n>=1) (1/n) integral_0^(kappa/n^2) s^2 ds
   = (kappa^3/3) * sum_(n>=1) 1/n^7.
The elementary integral test gives
  sum_(n>=1)n^(-7) <= 1 + integral_1^infty x^(-7) dx = 7/6.
Thus
  ||E_kappa||_L2(0,T)^2 <= (7/18) * kappa^3  [ALL T>=0].
At kappa=1/2 the bound is 7/144 < 1/12. As kappa tends to
zero it converges to zero with CUBIC rate without changing the source.
The constant is deliberately independent of the dyadic scale and
independent of all arithmetic cancellation.
The new Lean file proves candidate width nesting, literal return,
atom support, and pairwise zero; the last infinite integral inequality
is still a named open Prop, not a proved Lean declaration.
Using the earlier adaptive error square comparison and cutoffs should
reduce the integral gate further.

## Optimization B: high-smooth ORIGINAL waveform is globally bounded

Fix a PrimeBand B with r=B.primes.card. For s>=0 put X=2^s,
T_s=log(2X)=(s+1)*a, a=log2, and
H_s=highSmoothBlock B X T_s, the ORIGINAL integers in (X,2X]
having a P-smooth divisor above nearSquareRootCut(2X).
It is emphatically NOT the set of integers wholly P-smooth.
The existing source proof candidate establishes
  card(H_s) <= exp(2 sqrt(T_s)) (1 + T_s/a)^r.
The original adaptive response satisfies
  |mu(n) adaptiveResponse(n,u)| <= 2/sqrt(X)
for every n in H_s, for all physical times u.
Hence the full SIGNED high-shell readout has the uniform pointwise bound
  |sum_(n in H_s) mu(n) adaptiveResponse(n,u)|
     <= 2 * 2^(-s/2) exp(2 sqrt(T_s)) (s+2)^r. [A]

Make the scalar summability quantitative:
  2 sqrt(T) <= 4 + T/4
from the nonnegative square (sqrt(T)-4)^2.
The existing source lemma one_add_div_pow_le_exp_rate with epsilon=1/4
and a=log2 gives
  (1+T/a)^r <= C_r exp(T/8),
  C_r=(1+8*(r+1)/a)^r.
Therefore [A] is at most
  2*sqrt(2)*exp(4)*C_r * exp(-T_s/8).
Set rho=exp(-a/8)=2^(-1/8). The geometric series over s>=0 is
  sum_s exp(-T_s/8)=rho/(1-rho)=1/(2^(1/8)-1).
One explicit scale-INDEPENDENT bound is
  B_r=2 + 2 sqrt(2) exp(4) C_r / (2^(1/8)-1),
where 2 pays the original index n=1 separately.
Thus for every finite j and real u,
  |highSelectedWave(B,j,u)| <= B_r,
once the source-true equality with the disjoint shell enumeration
is proved. The same upper bound applies to its Fourier polynomial
at EVERY spatial position x, because each Fourier phase has modulus one.

The source high+low partition is exact BEFORE squaring. For any integer k>=1,
if H_B is the high polynomial and L_B the low polynomial,
  |H_B+L_B|^(2k)
    <= 2^(2k-1)(|L_B|^(2k)+B_r^(2k)).
Integrating over physical time and normalized torus,
  M_k(full,T) <= 2^(2k-1)(M_k(low,T)+B_r^(2k)*T).
The reverse inequality is identical since low=full-high.
Hence the existing FlexibleSignedTupleMomentProfile could be checked
just on the genuine source complement of these fixed-bank high
supports, without worsening its exponential exponent eta or required
ratio (1+eta)/k<epsilon. All mixed terms are paid by the standard
power inequality, not erased from the source. This is a strictly
smaller arithmetic support, not a claimed proof of cancellation.

The new Lean source provides the shellwise SOURCE bound and literal
highSelectedWave+lowSelectedWave equality. The complete global
finite-sum geometric bound, the equality of highSelectedWave with
the disjoint shell sum plus n=1, and the all-k integration transfer
are not yet kernel-checked theorems.

## Acceptance and noncircularity

Both optimizations are arithmetic-free conditional on the already
authored exact source count/response declarations. Neither proves
the low-smooth all-rate supplier. The original signed cross-energy,
diagonal, source cutoff, squareful zeros, prime-bank fixedness,
ordered parity/residue and winding strata are unchanged.
Do not conflate high-smooth-divisor support with ordinary P-smooth
integers, or a global high-wave envelope with total Möbius
cancellation. Native Lean compilation, exact declaration types,
fresh kernel and transitive axiom/opaque/native helper review
remain NOT_RUN. No CI, execution, scheduler or root import changes.

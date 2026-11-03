# Terminal high-smooth collar: a genuine global cross-shell all-rate reduction

Research date: 2026-11-01 (America/Los_Angeles).
Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Ordinary mathematical proof + Lean source proof candidates; pinned compilation and kernel verification intentionally DEFERRED by the user.

## Scope and preserved original source

The only physical source is the original real Mobius response and its ordered causal Gram in
\`MertensPrimitive.lean\`, with the original finite endpoint inventory,
true moebiusReal values (including n=1, squareful zero values, both orientations
and the diagonal exclusion), and the same endpointSum curvature allowance 1/4.

The new Lean file imports, without modification:
- MoebiusHighSmoothDensePairs.lean, original highSmoothBlock and nearSquareRootCut;
- MoebiusHighSmoothCofactorCountProof.lean via MoebiusHighSmoothAllRateProof.lean, the fixed-bank exponent/cofactor estimate;
- PickupEndpointQuadrature.lean, the ORIGINAL endpointSum and error <=1/4.

A complete signed pair is never rewritten as an unsigned statistic,
and the changing finite bank is a *selection label* only; it never
modifies the original Mobius coefficients or physical time.

## 1. A fixed grid and a varying near-terminal collar

For J>=1 let a=log 2>0, T_J=J*a, N_J=2^J and s_J=floor(sqrt J).
Choose **any** finite bank B_J of genuine primes with r_J=card(B_J)<=s_J.
One fixed bank family B:J |-> B_J may be selected in advance, or
the estimate may be read uniformly over ALL such bank families.

For 1<=j<=J, put X_j=2^(j-1), t_j=j*a=log(2X_j), and retain the
EXISTING original highSmoothBlock B_J X_j t_j. The strict real cutoff
at this j is Q_j=2X_j exp(-2 sqrt(log(2X_j))); the selected smooth
divisor d is a true divisor of the original integer n, and d=1 is
correctly permitted when Q_j<1.

Define the terminal high collar
  H_(B,J) = union_(max(1,J-s_J)<=j<=J) highSmoothBlock(B_J,X_j,t_j)
inside the SAME complete original terminal endpoint inventory
  S_J={1,...,2^J}.
Its complement L_(B,J)=S_J \ H_(B,J) is an actual source-index
complement, not a probability event or convolution-component proxy.
In the Lean definition H is filtered through the terminalInventory
for definitional literal source membership.

The near-terminal index cutoff is j>=J-s_J. Every selected m obeys
  m>2^(j-1)>=2^(J-s_J-1)
in the usual real-power interpretation. For the only edge case J=1
the right side is 1/2, so the same lower estimate holds trivially.
There is no dependence of the shell selection on epsilon.

## 2. Count actual high-smooth original indices, allowing growing banks

For a genuine finite prime bank P of size r, the independently
proved elementary prime-exponent/cofactor argument gives
  card(highSmoothBlock P X_j t_j)
       <= exp(2 sqrt(t_j))*(1+t_j/log 2)^r
       = exp(2 sqrt(j*a))*(1+j)^r.

No classical Mertens or RH premise enters this count. By finite
union counting, not independence,
  Hcount:=card(H_(B,J))
       <= (s_J+1)*exp(2 sqrt(T_J))*(1+J)^r_J.       (1)
This includes overlapping original divisor witnesses safely;
the n in the selected collar is counted at most once in H.

## 3. Preserve the complete physical Gram and both pair orders

The unchanged original response obeys, for every positive original
index n and every u>=0,
  0<=pickupResponse(n,u)<=2/sqrt(n).
As a result, for m,n>=1 and T>=0,
  0<=K_T(m,n)<=4*T/sqrt(m*n).                      (2)
This bound is on the actual physical-time integral, not on a
surrogate entry or a phase-averaged Gram. All original mu values
have absolute value <=1.

Define the complete ordered collar-incident original signed packet,
with any finite excluded additive-gap set A:
  I_(B,J;A) =
    sum_(m,n in S_J, m!=n, |m-n| notin A,
         m in H_(B,J) OR n in H_(B,J))
        mu(m)*mu(n)*K_(T_J)(m,n).

The true complementary signed packet is the identical sum on
m,n not in H_(B,J). Its original signed coefficients, Gram, time,
mask, diagonal and orientations are not dropped. Hence EXACTLY
  X_A(T_J)=I_(B,J;A)+R_(B,J;A).                   (3)
For A=empty, X_A is precisely the repository's pickupCross(T_J).
This is a pure two-case finite double-sum identity and does not
need a cancellation assumption.

The incident relation is covered, without double-counting
required, by two oriented rectangles:
  H x S_J   and   S_J x H.
Thus the absolute sum of genuine original source entries is bounded by
  |I_(B,J;A)|
     <= 8*T_J * (sum_(m in H)1/sqrt(m))
                 * (sum_(n in S_J)1/sqrt(n)).
The endpoint half-harmonic inequality
  sum_(n=1)^N 1/sqrt(n) <= 2 sqrt(N)
follows by telescoping the increasing sqrt function.
Every m in H satisfies 1/sqrt(m) <=2^(-(J-s_J-1)/2).
Therefore
  |I_(B,J;A)| <= 16*T_J*card(H)*2^((s_J+1)/2).
Using (1):
  |I_(B,J;A)|
    <= 16*T_J*(s_J+1)*2^((s_J+1)/2)
       *exp(2 sqrt(T_J))*(1+J)^r_J.              (4)

This holds for ALL original masks A and ALL bank choices with no
source-sign cancellation, hence in particular for A=empty.

## 4. Uniform every-positive-rate growth with banks that grow

Assume only  r_J<=floor(sqrt J). Taking logarithms of the upper
expression in (4), its nonconstant terms are
  O(log J)
  + (log 2)/2 * (sqrt J+1)
  + 2 sqrt(J log 2)
  + sqrt J * log(1+J).

All terms are o(J), because log(1+J)/sqrt J tends to zero.
Consequently, for every epsilon>0 there is a SINGLE finite C_epsilon
not depending on J, on the bank family or on any mask A, such that
  |I_(B,J;A)|<=C_epsilon*exp(epsilon*T_J)
for all J>=1. This is strictly stronger than the previously
published fixed-bank SAME-shell HH+HL+LH result: it controls
both orientations of the actual cross-shell incidence against every
other original index (including n=1 and very old shells). The bank
may grow at the predetermined cardinality rate floor(sqrt J).

A concrete growing example is P_J={primes <=floor(sqrt J)}.
Its true-prime cardinality is at most floor(sqrt J), so no PNT
or prime-distribution hypothesis is needed for this construction.

## 5. Exact RH-facing reduction and acceptance frontier

The published uniform endpoint quadrature error says
  |endpointSum(T)-pickupCross(T)|<=1/4  (T>=0).
Combining (3) for A=empty gives
  endpointSum(T_J)
      <=R_(B,J;empty)+|I_(B,J;empty)|+1/4.       (5)

The fixed times {j log 2:j>=1} are affinely frequent with
alpha=1 and beta=log2, independent of the desired positive rate.
Because I is controlled in absolute value at EVERY positive
rate, (3) proves the logical equivalence between
  for every epsilon>0: X(T_J)=O_epsilon(exp(epsilon*T_J))
and
  for every epsilon>0: R_(B,J;empty)=O_epsilon(exp(epsilon*T_J)).
The same holds for upper rather than absolute bounds on the two
SIGNED packets; their difference is an absolutely paid I. Thus
a noncircular one-sided, every-rate estimate for R on the fixed
grid is a sufficient remaining arithmetic supplier for the
preexisting RH-return theorem. Such an estimate is NOT proved
here, and changing the bank J-by-J does not supply it.

This does not remove the complete old low/low or all cross-shell
source: only the near-terminal, high-smooth-INCIDENT pairs are
paid. The complement can still carry RH-strength growth.

## 6. Hostile sign check: why arbitrary-prime cube positivity cannot be assumed

The original two-prime {2,3} cube waveform has a nonnegative
4-term signed combination. The analogous THREE-prime {2,3,5}
8-term waveform need not be nonnegative. At the ORIGINAL time
u=log 10 and source base n=1, unborn responses at 15 and 30
vanish and the response at 10 is exactly zero. The waveform is
  W_{2,3,5}(1,log10)
    =2*(1-1/sqrt2-1/sqrt3-1/sqrt5+1/sqrt6+1/sqrt10)
    <-1/100.
For a fully rational sign certificate use
  1/sqrt2>707/1000, 1/sqrt3>577/1000,
  1/sqrt5>447/1000, 1/sqrt6<409/1000,
  1/sqrt10<317/1000.
The resulting parenthesized expression is <-1/200; each
inequality is certified by squaring positive rationals
(2*707²,3*577²,5*447²<1000000 and
6*409²,10*317²>1000000).
This forbids assuming positivity for an arbitrary growing
prime-bank orbit and explains why the collar proof uses genuine
absolute response estimates rather than extending the two-prime
odd-base sign argument without a new lemma.

## 7. Independent finite preflight and verification restrictions

Independent local Python preflight on the ORIGINAL integer support:
- 50 high-support/count checks: J=1..10, five distinct true-prime
  banks including empty, with Q_j and all positive smooth divisors;
- 140 original signed, masked global cross-shell decompositions and
  tested quantitative bounds: J=1..7, five banks, four masks;
- the rational three-prime negative-wave certificate above.

Finite tests are noncertifying. The Lean module contains original
finite sum definitions, a source-level proof candidate for the
complete cross partition, an endpoint comparison, and an all-rate
equivalence proof GIVEN the explicitly undischarged numerical
UniformCollarAllRateTarget. The genuine analytical/cardinality
TerminalCollarQuantitativeTarget and UniformCollarAllRateTarget
remain named PROPOSITIONS until compiled and proven.

Pinned Lean v4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
At user request: COMPILATION DEFERRED. Parser, expected types,
fresh kernel replay and transitive axiom/opaque/unsafe auditing
NOT_RUN. No native job, Noe worker, CI or scheduler initiated.
No claim of complete RH or independent verification.

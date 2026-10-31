# Reverse-counting saturation: square-divisor causal transport and its limits

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.
Analytical argument complete at the indicated classical elementary level.
Formal evidence: SOURCE_PROOF_CANDIDATE; compilation, expected theorem types,
fresh kernel replay, transitive axiom audit and complete Lean replay NOT_RUN.
No Riemann Hypothesis proof or arithmetic cancellation bound is claimed.

## Motivation and exact original sources

The user-linked October 18, 2026 educational Short
https://www.youtube.com/shorts/MyFAueaAhaA
presents the elementary 1982 Putnam lattice/Gaussian counting reversal.
It motivates reversing the incidence order here. No mathematical
result, arithmetic estimate or historical influence is imported from
the video.

## Exact original sources and competing representations

Use the literal `CCC.pickupResponse`, Mathlib `ArithmeticFunction.liouville`
and `ArithmeticFunction.moebius`, the complete signed Liouville
`LiouvilleCausalEnergy.waveform` and `energy`, and the established
`wholePickup_response_sum` from `FiniteResponseSum.lean`.
Imported dependencies and separately cited adjacent sources retain their
exact definitions: original response blob
`45e06c371d67bcf8c939d20a95fcbc63570546fa`, Liouville causal
energy blob `a00aaa07c067b4c88203372870b5d5d151de0de4`,
finite response sum blob `15402baec3be3c090a23f9ac1943124e16357dd0`,
positive-index analytic gates blob `b4bd9a83c83603faa5eff5326d9a99ec35dae2d4`,
and adjacent, non-imported all-N double Abel closure blob
`54dc35f79844d1fbfc59f5b408f7e06039c0e812`.
The existing complete signed double-Abel aggregate and its earlier
conditional and all-N interfaces remain unchanged.

The new Lean file proves (as source-level uncompiled proof candidates)
the exact original-response square-index causal scaling and its finite
two-coordinate sum interchange. The two explicit source-specific arithmetic
coefficient bridges are `Prop` declarations, not proved Lean theorems.
Their mathematical derivations below are independent of RH and must be
formally implemented before a Lean waveform equivalence is claimed.

## 1. Arithmetic reversal, rigorously without a zeta analytic assumption

At a prime p, write X for its formal Euler-factor variable. The original
Liouville coefficients have generating series
  sum_{j>=0} lambda(p^j) X^j = 1/(1+X).
The Möbius coefficients give 1-X; the indicator of square arguments has
local factor 1+X^2+X^4+...=1/(1-X^2).
Hence (1-X)/(1-X^2)=1/(1+X).
Unique factorization and multiplicativity give for EVERY n>=1

  lambda(n) = sum_{d^2|n} mu(n/d^2).

For the inverse, the square-supported coefficients mu(d) have local
factor 1-X^2. Since (1-X^2)/(1+X)=1-X, we also have

  mu(n) = sum_{d^2|n} mu(d) lambda(n/d^2).

These are finite identities, not RH-strength estimates. At n=0 both
source arithmetic functions are separately defined; the identities above
and the causal scaling lemma intentionally restrict to positive n.

## 2. Exact causal scaling, including equality at birth

For every d,k>=1 and every real u, the actual response is

  r_n(u) = 2 max(n^(-1/2)-exp(-u/2), 0).

Use sqrt(d^2*k)=d*sqrt(k) and
exp(-(u-2 log d)/2)=d exp(-u/2), to obtain

  r_(d^2 k)(u) = d^(-1) r_k(u-2 log d).

Both sides vanish at the matching birth u=log(d^2 k);
there is no step discontinuity or omitted terminal face.

For arbitrary finite positive sets D,K and scalar coefficients a(d),b(k),
the literal reversed square-factor identity is

  sum_{d in D,k in K} a(d)b(k) r_(d^2 k)(u)
  = sum_{d in D} a(d)/d
       * sum_{k in K} b(k) r_k(u-2 log d).

The imported Lean module formally expresses precisely this general
finite statement, with no arithmetic cancellation hypothesis.

## 3. Actual waveform transport: mathematical derivation

Define the response-sum Möbius waveform F_mu(s) for all real s as the
closed positive-integer response inventory; it is zero for s<0.
For s>=0, it agrees with the pre-existing `CCC.wholePickup s` by
`wholePickup_response_sum`. IMPORTANT: do not identify the artificially
zero-extended response sum with `wholePickup s` at negative s, since
`wholePickup` itself is an oriented time integral there.
Likewise F_lambda is zero below s=0.
The exact arithmetic
coefficient identities and finite causal support give, for all u>=0,

  F_lambda(u) = sum_{1<=d<=exp(u/2)} (1/d) F_mu(u-2 log d),
  F_mu(u) = sum_{1<=d<=exp(u/2)} (mu(d)/d) F_lambda(u-2 log d).

At the endpoint d=exp(u/2), the inner k=1 response has value 0;
the inclusion convention does not affect the formula. No lambda sign
is discarded, and coefficients are neither randomized nor replaced.

Define on zero-extended functions the causal delay operator
  (S_b f)(u) = sum_{d>=1} b(d)/d f(u-2 log d).
The sum is finite at each fixed nonnegative u. Since

  sum_{d|n} mu(d) = [n=1],

grouping factorizations n=de in S_mu S_1 shows
  S_mu S_1 = S_1 S_mu = Id.
Thus the two source waveforms are linked by inverse causal operators
with no lost information.

## 4. Two-sided quantitative physical-time energy equivalence

Put H_a(T)=integral_0^T |F_a(u)|^2 du for T>=0.
For any shift h>=0 and zero-extended f, translation by h contracts the
L²[0,T] norm. Apply Minkowski to the finite delay expansion, using
|mu(d)|<=1. The harmonic estimate

  sum_{1<=d<=exp(T/2)} 1/d <= 1+T/2

gives BOTH inequalities:

  sqrt(H_lambda(T)) <= (1+T/2) sqrt(H_mu(T)),
  sqrt(H_mu(T)) <= (1+T/2) sqrt(H_lambda(T)).

Squaring yields the mathematically exact symmetric comparison

  H_mu(T)/(1+T/2)^2 <= H_lambda(T)
     <= (1+T/2)^2 H_mu(T).

This is a proved mathematical consequence of the two arithmetic
factorizations, the original causal scaling, elementary harmonic bounds,
and Minkowski; it is NOT a Lean-checked theorem of the new module.
In particular, for every eps>0, an all-height O(exp(eps*T)) energy
bound for one source implies the same all-positive-rate type of
bound for the other, by spending a portion of the exponent on the
polynomial factor. No such bound has been established here.

Stronger fixed-positive-rate comparison: for sigma>0 define

  ||f||_(sigma,T)^2 = integral_0^T exp(-sigma*u)|f(u)|^2 du.

A translation by 2 log d contracts this norm by d^(-sigma);
the coefficient 1/d makes the operator norm <=
sum_{d>=1} d^(-1-sigma) <= 1+1/sigma.
Consequently both inequalities hold for every T>=0:

  ||F_lambda||_(sigma,T) <= (1+1/sigma) ||F_mu||_(sigma,T),
  ||F_mu||_(sigma,T) <= (1+1/sigma) ||F_lambda||_(sigma,T).

The constant deteriorates as sigma tends to zero. This is NOT
an estimate of either waveform from zero or an RH proof.

## 5. A third reversed count: a one-dimensional arithmetic primitive

For u>=0 write X=exp u and
  L(x)=sum_{1<=n<=x} lambda(n).
The exact unchanged source admits another reverse incidence identity:

  F_lambda(u) = integral_{1}^{X} L(x) x^(-3/2) dx.

Indeed, for every n<=X,
  integral_n^X x^(-3/2) dx
       = 2(n^(-1/2)-X^(-1/2)) = r_n(u);
reversing the finite signed sum and integral proves the formula.
Thus

  H_lambda(T) =
    integral_{1}^{exp T}
      |integral_1^x L(y)y^(-3/2)dy|^2 dx/x.

This is an exact one-dimensional alternative to the original
rectangle-lattice Gram and cyclic Fourier representations, not a
smallness theorem. It exposes the actual signed Liouville summatory
function and is useful for checking whether a proposed argument
quietly assumes the RH-strength square-root cancellation estimate.

## 6. Hostile sign-free obstruction (not an arithmetic claim)

Replace lambda(n) by the all-positive coefficient sequence 1,
retaining EXACTLY the same causal response. For X=exp u>=8,
let M=floor(X/4). For every 1<=n<=M,
  r_n(u)>=1/sqrt(n),
so F_+(u)>=sum_{n<=M}1/sqrt(n)>=sqrt(M)>=sqrt(X/8).
Therefore for T>=log 8,

  H_+(T) >= (exp T-8)/8.

This lower bound is elementary and shows that kernel positivity,
nonnegative mixed differences, pointwise |a(n)|<=1 and finite
reordering alone cannot imply a bound O(exp(eps*T)) for every eps>0.
An even stronger arithmetic-structure warning already exists in
the prime-two exact-delay obstruction source
`LiouvillePrimeDelayObstruction.lean`; the all-positive fixture
is not presented as a new Liouville counterexample.

## 7. One-sided sign orientation: what is already unconditional

For T=log N>=0, the full original signed Liouville Gram is the
nonnegative physical energy H_lambda(T), and the positive-gap half
aggregate A_N is exactly (H_lambda(T)-D_lambda(T))/2. The diagonal
D_lambda(T) is nonnegative, and each literal response satisfies
0<=r_n(u)<=2/sqrt(n) for positive n and 0<=u<=T. Hence

  D_lambda(T) <= 4*T*sum_{n<=exp T}1/n <= 4*T*(1+T).

Consequently every N>=1 satisfies the mathematically unconditional
one-sided bound

  A_N >= -2*T*(1+T).

The diagonal can also be bounded more sharply by previously analyzed
response integration; the displayed coarse bound is sufficient here.
**This is the LOWER bound.** The RH-facing search needs an UPPER bound,
and exchanging those two orientations would be a fatal logical error.

For the hostile all-positive fixture in Section 6, the same diagonal
bound and H_+(T)>=(exp T-8)/8 for T>=log 8 imply

  A_+(T) >= (exp T-8)/16 - 2*T*(1+T).

Thus a positive mixed kernel and sign-free coefficient magnitude bounds
cannot produce the required subexponential-in-T upper bound for the
weighted rectangle aggregate. This is a finite-kernel sign obstruction,
not a counterexample to the actual Liouville statement.

## 8. Saturation graph: exact transformations vs new information

Vertices:
  A_N = original signed positive-gap aggregate;
  R_N = complete signed rectangle-prefix field;
  H_lambda = complete Liouville causal energy;
  H_mu = original Möbius pickup energy;
  L = actual Liouville summatory function.

Edges:
  A_N <-> sum R_N*Omega: exact double Abel with zero faces;
  H_lambda = diagonal + 2*A_N: original signed Gram decomposition
    (only N with T=log N, retaining diagonal and both orders);
  F_lambda <-> F_mu: exact inverse square-divisor delay, polynomial
    physical-horizon norm loss and sigma-weighted finite norm loss;
  F_lambda <-> primitive of L: exact integral source identity.

None of these arrows proves the all-positive-rate arithmetic bound.
No proposition deduced solely from a reversible transformation can be
reported as an independent cancellation estimate. A successful next
route must introduce a source-specific inequality for the complete
signed R_N/Omega average or an exactly equivalent original observation;
per-rectangle RH-strength bounds must not be silently assumed.

Finite diagnostics: direct coefficient checks for 1<=n<=300 had zero
integer discrepancy. Testing d,k<=24 at seven u values gave maximal
floating-point causal scaling residual <7e-17; seven waveform
evaluation heights gave reverse-transform residual <1.2e-16.
Finite calculations are diagnostics, not Lean, kernel or all-N proof.

## Formalization frontier and trust boundary

New Lean candidate declarations:
  pickupResponse_square_scaling,
  finite_square_factor_reverse.
Open, explicitly named Lean formalization targets:
  LiouvilleSquareCoefficientIdentity,
  MoebiusInverseSquareCoefficientIdentity,
  LiouvilleSquareWaveformBridge,
  MoebiusInverseSquareWaveformBridge,
  SquareDelayEnergyEquivalence.

The actual waveform identities and both L² estimates are mathematically
proved above but NOT encoded as accepted Lean theorems. An exact-source
Lean continuation should first prove the two coefficient identities,
then the finite cutoff reindexing and norm comparisons. Preserve the
previous source blobs, original source signs, zero squarefree convention
for Möbius, actual exp-floor cutoffs and complete signed Gram.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Compilation, expected types, fresh kernel replay, and axiom audit NOT_RUN.
No native verification, scheduler, background work or user-local Git
index lock is invoked.

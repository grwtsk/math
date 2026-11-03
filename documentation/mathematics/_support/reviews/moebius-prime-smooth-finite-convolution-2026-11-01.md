# Exact source Möbius–prime-smooth finite convolution and rough/matched prefixes

Local mathematical attribution: grwtsk contributors. Date 2026-11-01.
Formalization assistance: OpenAI ChatGPT. New Lean source is a
SOURCE_PROOF_CANDIDATE until actual pinned compilation/kernel replay.

## A precise missing supplier, not another RH-sized premise

The previous original balanced two-sided source
`MoebiusBalancedTwoSidedPNTDense.lean` depends analytically
on the finite identity expressing the original signed rough
Möbius prefix via unsifted Mertens prefixes. It is a necessary
arithmetic reduction but NOT any quantitative cancellation
claim, and does not depend on the prime number theorem, RH,
Kakeya or physical-observer assumptions.

Fix B : `GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator.PrimeBand`.
Its finite P=B.primes contains only true primes; duplicates
are impossible because it is a Finset. Let
`Smooth_P(d)` mean that every prime factor of d lies in P.
By convention 1 is smooth. Let `Rough_P(n)` mean that
no selected prime divides n. With n>=1,
`firstSelectedDivisor P n = 0 iff Rough_P(n)`,
where nonzero Nat.find cannot be zero because selected
divisors are prime. This source is the literal
`taggedMoebius P true n`, not a stochastic sign proxy
or a unitary ideal weight.

## Full coefficient proof at EVERY original n>=1

Define arithmetic functions over ℤ:
  S_P(n) = 1 if n>=1 and Smooth_P(n), else 0;
  R_P(n) = 1 if n>=1 and Rough_P(n), else 0;
  G_P(n) = μ(n) R_P(n)  (POINTWISE multiplication).

For coprime m,n, both indicator functions are
multiplicative. The smooth indicator actually
obeys Smooth_P(mn) iff Smooth_P(m) and Smooth_P(n)
without a coprimality requirement. The rough
indicator's multiplicativity uses that every
member of P is prime, so p|mn implies p|m or p|n.
The original μ is already multiplicative
on coprime indices in pinned Mathlib.
Consequently S_P, G_P and ζ*G_P are multiplicative.

At a selected prime p, the ORIGINAL local values are
  G_P(1)=1, G_P(p)=0, G_P(p^k)=0 for k>=2.
Hence Σ_(j=0..k) G_P(p^j)=1 for every k.
At a prime p NOT selected, the values are
  G_P(1)=1, G_P(p)=-1, G_P(p^k)=0 for k>=2.
Hence the same sum equals 1 for k=0 and 0
for every k>=1. These are exactly S_P(p^k).
Mathlib `ArithmeticFunction.IsMultiplicative.eq_iff_eq_on_prime_powers`
turns this into the equality `ζ*G_P=S_P` for
all positive n, with the zero-index carrier
handled by ArithmeticFunction itself.

Multiply by μ on the left, using the genuine
Mathlib `ArithmeticFunction.moebius_mul_coe_zeta`
identity μ*ζ=1, to obtain

   G_P = μ * S_P,

where * on arithmetic functions is DIRICHLET
convolution. At every original n this is the
complete formula

  μ(n) 1_(Rough_P(n))
    = Σ_(d|n, Smooth_P(d)) μ(n/d).

For n=1 the sole smooth divisor d=1 gives
μ(1)=1. For n=p∈P, the sum μ(p)+μ(1)=0.
For n=p²∈P, the sum μ(p²)+μ(p)+μ(1)=0.
For n=pq with p∈P, q∉P the two terms
μ(pq)+μ(q) cancel. For n=q outside P the
only smooth divisor is 1, retaining μ(q)=-1.
For any nonsquarefree n with no selected
prime factor, μ(n)=0 and the divisor sum
also vanishes. Nothing is silently omitted.

## Genuine finite prefix and original two-channel return

Pinned Mathlib `ArithmeticFunction.sum_Ioc_mul_eq_sum_sum`
says for f,g arithmetic functions and natural N:
  Σ_(1<=n<=N)(f*g)(n)
  =Σ_(1<=d<=N)f(d) Σ_(1<=k<=floor(N/d))g(k).
The `Ioc 0 N` used in Mathlib is definitionally
the same original index inventory as `Icc 1 N`.

Applying it to S_P and μ gives, EXACTLY,

  Σ_(1<=n<=N,Rough_P(n)) μ(n)
     = Σ_(1<=d<=N,Smooth_P(d)) M(floor(N/d)),

where M(k)=Σ_(1<=j<=k) μ(j).
In the new module `roughMobius_prefix_eq_primeSmooth_Mertens`
states the ℤ identity and
`original_rough_prefix_eq_primeSmooth_Mertens`
casts it back to the literal `moebiusReal` and
`taggedMoebius P true` used by the source.

The matched coefficient remains exactly
c_M(n)=μ(n)-c_R(n), so
`original_matched_prefix_eq_total_sub_primeSmooth`
subtracts the rough expression from the
unchanged total finite original Mertens prefix.
Both rough and matched channels therefore have
an exact arithmetic formula, retaining squareful
zeros, repeated prime powers, first-prime uniqueness,
and all original numerical boundaries.

These formulas are the specific arithmetic
input for the FOUR original ordered
RR,RM,MR,MM signed two-sided causal Abel packets.
They do NOT, by themselves, bound any of the
finite prefixes or prove the real interval-integral
inequality needed for a dense block estimate.

## Source APIs pinned and trust comparison

GRWTSK math main baseline recorded in the passive
target and exact Git blob readback. Original consumer:
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusBalancedTwoSidedPNTDense.lean`
blob `8abba800d86af6cee6065b11dfff52713ae85785`.
Original tag owner
`LiouvilleSignedBuchstabTypeII.lean`
blob `c2de5cb221f03ff5792de4d29b104912e79d4771`,
original source μ
`MertensPrimitive.lean`
blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`.
No original source definition or downstream namespace
is changed by this leaf module.

Pinned Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`,
`Mathlib/NumberTheory/ArithmeticFunction/Defs.lean`,
`Moebius.lean`, `Zeta.lean`, `Misc.lean`, and
`Mathlib/NumberTheory/Divisors.lean` have been
inspected for the exact theorem names and APIs:
`IsMultiplicative.eq_iff_eq_on_prime_powers`,
`isMultiplicative_moebius`,
`isMultiplicative_zeta`,
`moebius_apply_prime_pow`,
`moebius_mul_coe_zeta`,
`coe_zeta_mul_apply`,
`Nat.sum_divisors_prime_pow`,
`Nat.sum_divisorsAntidiagonal'`,
`sum_Ioc_mul_eq_sum_sum`.
The source uses these rather than importing
a Tau Ceti ideal-arithmetic carrier.
Tau Ceti's `IdealArithmeticFunction.moebius`
is NOT a completely multiplicative unitary
weight; the GRWTSK source retains the
ordinary integer coefficient and actual
pointwise vs convolution product distinction.

## Diagnostics and hostile controls

Independent finite integer diagnostic: for
P=∅, {2}, {2,3}, {7,19}, {2,3,5},
{2,3,5,7,11}, and every integer n=1,...,600,
both the coefficient identity and the cumulative
prefix identity passed. This is 7,200 exact
integer equalities. It used independent
integer Möbius and prime-factor enumeration.
This is NOT native Lean, not a kernel proof,
and not a quantitative PNT or RH check.

Hostile controls:
- P containing nonprimes is prohibited by
  the `PrimeBand` witness; otherwise the
  firstSelectedDivisor or rough multiplicativity
  argument can be invalid.
- n=0 is excluded from a Möbius count by the
  natural positive index set; the arithmetic
  functions map zero to zero.
- Replacing pointwise multiplication `pmul`
  by Dirichlet convolution would change G_P
  and invalidate the prime-power table.
- Repeated selected p appears through
  smooth divisor p^k for all k, but μ(p^j)
  vanishes for j>=2. Do not truncate the
  smooth divisor class to squarefree numbers.
- The unit d=1 remains present even for
  an empty P; P=∅ gives the original M(N).
- Ordinary Möbius is not completely
  multiplicative; Tau Ceti's unitary ideal
  weight hypothesis cannot be imported by
  relabeling the coefficient.

## Verification and one next mathematical step

Local Lean toolchain `leanprover/lean4:v4.34.1`;
pinned Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
The module deliberately authors no `sorry`
or new research `axiom`. There is no
local Lean/Lake binary, and no Noe native
verification operation was dispatched.
New source parsing, elaboration and compilation,
exact expected-type checks, fresh kernel replay,
transitive axiom and unsafe audit all NOT_RUN.
A published script is a SOURCE_PROOF_CANDIDATE
until those checks run and issues are repaired.

The next missing step is to transport a genuine
classical quantitative Mertens bound to the
two explicitly source-bound finite rough and
matched prefix formulas, WITH the finite
P-smooth divisor-sum/Euler-factor constants
shown and uniformly quantified in the prime
bank, before the original two-dimensional
causal Abel/Gram estimates can be considered
Lean certified. The global dense all-positive-
rate RH arithmetic supplier remains OPEN,
and RH remains OPEN.

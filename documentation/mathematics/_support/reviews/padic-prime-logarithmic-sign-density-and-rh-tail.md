# From finite p-adic prime signs to the logarithmic prime number theorem and an RH-equivalent large-prime tail

Local mathematical attribution: grwtsk contributors. Date: 2026-10-31.

**Disposition:** (1) a finite Euler-product identity; (2) an unconditional mathematical asymptotic for the growing but truncated prime-valuation sign model, using classical Mertens; (3) an exact large-prime signed-tail identity and a new RH-equivalent formulation, NOT an unconditional RH proof. The companion finite Lean declarations are SOURCE_PROOF_CANDIDATE; compilation, expected-type checking, fresh kernel replay, and transitive axiom audit are NOT_RUN. No executor, scheduler, root import, prior source, or dependency pin was changed.

## Source and mathematical objects

The input is the actual prime-factor valuation `v_p(n)=n.factorization p` (positive integers), as in Mathlib `Mathlib/Data/Nat/Factorization/Defs.lean` / `Basic.lean` at Mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612`. The existing math source `LiouvilleCausalEnergyTarget.lean`, blob `a00aaa07c067b4c88203372870b5d5d151de0de4`, uses actual `ArithmeticFunction.liouville`, not a simulated sign. `LiouvilleWeightedPrefixSquareCriterion.lean`, blob `d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`, names the original `WeightedPrefixSquareAllRate` proposition. The preceding fixed-prime model and its counterexample are reviewed in `weighted-prefix-2adic-doubling-obstruction-2026-10-31.md`, blob `7298ccaff9f41be886d655c503b7effbecb4eaa7`.

The repository has a distinct complete 2-adic ring/residue tower `GRWTSK/CommutativeAlgebra/DyadicPadicDelta.lean` and the source issues #1524/#467. The present `v_p(n)` are *integer prime-exponent coordinates*. They are not a new map from completed `PadicInt p` to the real logarithm. The bridge to log n uses the Archimedean realization of finite unique factorization and averages in a separate step. Nothing here asserts a continuous p-adic-to-real logarithmic isomorphism.

For any finite prime inventory P, define the completely multiplicative sign

    a_P(n) = (-1)^(sum_(p in P) v_p(n)), n>=1,

the summatory function `A_P(N)=sum_(1<=n<=N) a_P(n)`, and its finite-prime density

    delta_P = product_(p in P) (p-1)/(p+1).

P= {2} is the previously studied valuation countermodel. Every fixed P has delta_P>0 and, as proved below, A_P(N) is asymptotically delta_P*N. It is not the full Liouville function unless all prime divisors up to the current N have been included.

## 1. An exact valuation-to-log-prime identity

Unique factorization (for n>=1) gives

    n = product_(p|n) p^(v_p(n)),
    log n = sum_(p|n) v_p(n) log p.

Consequently, summing n=1,...,N and exchanging finite sums gives Legendre's exact formula

    log(N!) = sum_(p<=N) log(p) sum_(j>=1) floor(N/p^j)
            = sum_(d<=N) Lambda(d) floor(N/d).

Here Lambda is the *ordinary* von Mangoldt function and p^j prime powers are retained. Stirling and the elementary Chebyshev bound `psi(N)=sum_(d<=N)Lambda(d)=O(N)` yield

    sum_(d<=N) Lambda(d)/d = log N + O(1).

The higher-prime-power contribution `sum_p sum_(j>=2) log p/p^j` is finite. Therefore the weaker-than-PNT, fully logarithmic **Mertens first theorem** is

    sum_(p<=N) log(p)/p = log N + O(1).

This is classical; it follows from valuation identities and Chebyshev without assuming the asymptotic `pi(N)~N/log N`. At the pinned Mathlib revision, `Mathlib/NumberTheory/Chebyshev.lean` blob `0c70e9d4de7e8d454df1a5840334ef3e0dcbf777` includes `Chebyshev.psi_le_const_mul_self` and `Chebyshev.psi_eq_sum_Icc`. The full Stirling/log-factorial/Mertens proof is **analytically cited, not supplied by the new Lean module**. External reference: https://alexkontorovich.github.io/PrimeNumberTheoremAnd/blueprint/explicit-chapter.html .

## 2. Exact finite Euler product and its Mertens asymptotic

The Euler factor of a_P at a selected prime is `1/(1+p^(-s))`, whereas unselected primes have `1/(1-p^(-s))`. Thus, initially for Re s>1,

    sum_(n>=1) a_P(n)/n^s
      = zeta(s) product_(p in P) (1-p^(-s))/(1+p^(-s)).

Its residue at s=1 is delta_P. At each selected prime,

    [(p-1)/(p+1)] * (1-p^(-2)) = (1-p^(-1))^2.

Hence, **exactly for every finite P**,

    delta_P * product_(p in P)(1-p^(-2))
      = [product_(p in P)(1-p^(-1))]^2.                  (A)

The new Lean source `PadicPrimeLogarithmicDensity.lean` contains proof candidates for this exact finite identity and positivity (without importing any external asymptotic as an axiom).

For P_y={p prime:p<=y}, Mertens' classical third theorem and the convergent square Euler product give

    product_(p<=y)(1-1/p) ~ exp(-gamma)/log y,
    product_(p<=y)(1-1/p^2) -> 1/zeta(2),

so that

    delta_y ~ [zeta(2)*exp(-2 gamma)]/(log y)^2,
    zeta(2)*exp(-2 gamma) = 0.5185436719728396... .        (B)

Equivalently,

    -0.5*log(delta_y)
       = log(log y) + gamma - 0.5*log(zeta(2)) + o(1).

This is the requested logarithmic-prime-number-theorem-like statement *for our p-adic sign density*. Its inverse density diverges quadratically in log y, not polynomially in y. It is weaker than PNT and RH and uses a classical Mertens theorem, not a newly supplied zero-free argument.

Reference: https://personal.science.psu.edu/rcv4/CENT.pdf , Theorem 8.10, and https://alexkontorovich.github.io/PrimeNumberTheoremAnd/blueprint/explicit-chapter.html .

## 3. A NEW uniform finite-prime cutoff bound; analytic proof

Let b_P be the ordinary Dirichlet-convolution correction such that `a_P = 1 * b_P`. Explicitly,

    b_P(1)=1;
    b_P(p^r)=2*(-1)^r for p in P, r>=1;
    b_P(p^r)=0 for p not in P, r>=1;

and b_P is multiplicative, supported on P-smooth integers. For the finite P, its absolutely convergent real Euler sums are

    sum_(d>=1) b_P(d)/d = delta_P,
    sum_(d>=1)|b_P(d)|/sqrt(d)
       = C_P := product_(p in P)(1 + 2/(sqrt(p)-1)).

The finite convolution identity is exact:

    A_P(N) = sum_(d<=N) b_P(d) floor(N/d).

Subtract delta_P*N, and split at d=N:

    A_P(N)-delta_P*N
      = sum_(d<=N)b_P(d)[floor(N/d)-N/d]
         - N*sum_(d>N)b_P(d)/d.

Use `|floor x-x|<=1`, `sqrt(d)<=sqrt(N)` for d<=N, and `N/d<=sqrt(N)/sqrt(d)` for d>N. Both error pieces are <= sqrt(N) C_P in absolute value, proving

    |A_P(N)-delta_P*N| <= 2 sqrt(N) C_P               (C)

**uniformly for EVERY finite prime set P and every N>=1**. There is no P-dependent constant concealed in O notation.

For P_y, compare logarithms:

    log C_(P_y)
       <= sum_(p<=y) 2/(sqrt(p)-1)
       <= 8 + 8 sqrt(y) <= 16 sqrt(y), y>=2.

The last inequality follows by separately paying p=2,3 and comparing the terms p>=4 with the integral of 4/sqrt(t); no PNT is used. Consequently

    |A_y(N)-delta_y*N| <= 2 sqrt(N) exp(16 sqrt(y)).

Choose the genuinely MOVING cutoff y=log N (N>=exp 2). Since exp(16 sqrt(log N)) <= N^eps eventually for each eps>0,

    A_(log N)(N) = delta_(log N)*N + O_eps(N^(1/2+eps)). (D)

Combining (B) and (D), the main term dominates:

    A_(log N)(N)
       ~ zeta(2)*exp(-2 gamma) N/(log log N)^2.           (E)

This is an unconditional mathematical asymptotic for the expanding prime-valuation *truncation*. It does NOT say L(N) has such a main term; actual Liouville is not a finite-prime truncation.

More generally, y=(log N)^alpha with fixed 0<alpha<2 also gives `A_y(N)=delta_y*N+O_eps(N^(1/2+eps))` and main term `zeta(2)e^(-2gamma)N/[alpha^2(loglog N)^2]`. The condition alpha<2 pays the elementary exp(O(sqrt y)) cost. This is a useful parameterized family, not a claim at alpha=2 or y=N.

## 4. Exact signed large-prime correction, and an RH-equivalent target

Write the true Liouville sign via ALL primes:

    lambda(n) = (-1)^(sum_(p prime) v_p(n)),

and for each cutoff y let

    Omega_>(n;y) = sum_(p>y, p|n) v_p(n).

Only finitely many primes divide n. Therefore

    lambda(n) = a_y(n) * (-1)^(Omega_>(n;y))
              = a_y(n) - 2*a_y(n)*1[Omega_>(n;y) is odd].

Define the **signed** (not unsigned counting) large-prime parity remainder

    B_y(N) = sum_(n<=N, Omega_>(n;y) odd) a_y(n).

Then the source-exact identity is

    L(N) = A_y(N) - 2*B_y(N),                             (F)

without a random-sign assumption, a discarded prime-power contribution, or a hidden numerical zero certificate. Substituting the known mean delta_y gives the centered return

    L(N) = [A_y(N)-delta_y*N]
            -2*[B_y(N)-delta_y*N/2],

and thus, by (C),

    |L(N)| <= 2 sqrt(N) C_(P_y)
                 + 2*|B_y(N)-delta_y*N/2|.              (G)

At y=log N, the first error is O_eps(N^(1/2+eps)). Conversely, (F) gives the reverse half-error bound

    |B_y(N)-delta_y*N/2|
       <= sqrt(N) C_(P_y) + |L(N)|/2.                   (H)

The standard classical Liouville criterion `RH iff for every eps>0, L(N)=O_eps(N^(1/2+eps))` now establishes the exact noncircular *logical equivalence*

    RH
      iff for every eps>0,
        B_(log N)(N)
          = [delta_(log N)/2]*N + O_eps(N^(1/2+eps)).   (I)

The existing `WeightedPrefixSquareAllRate` is analytically RH-equivalent (see previous zero-abscissa mathematical review), so (I) is also an exact arithmetic REFORMULATION of that named target. No theorem here proves the actual remainder estimate in (I).

Mertens gives the explicit main term

    [delta_(log N)/2]*N
       ~ [zeta(2)*exp(-2gamma)/2] *
          N/(loglog N)^2
       = 0.2592718359864198... * N/(loglog N)^2.

It is **NOT enough** to prove that B_y(N) has this leading asymptotic with o(main term) error. RH needs the much sharper square-root-plus-epsilon error in (I).

As a separate analytic consequence, any existing fixed zero-free half-plane giving `L(N)=O_eps(N^(theta+eps))` for some theta<1 implies by (D),(H)

    B_(log N)(N) = delta_(log N)*N/2 + O_eps(N^(theta+eps)).

This provides the main asymptotic unconditionally via known classical zero-free-region results, or conditionally on a supplied checked `theta` and the still-separate classical contour transfer. The local source note `liouville-actual-spectral-zero-free-return.md` cites external theta=0.8733819666133; it does not contain a locally kernel-verified transfer. This fixed exponent is not the all-positive-rate bound in (I).

## 5. Hostile controls and actual dependency boundary

1. **Fixed-prime failure:** for fixed P, delta_P>0 and A_P(N)/N -> delta_P. The weighted square of A_P grows linearly; this never proves RH.
2. **Growing-prime failure:** y=N makes a_y(n)=lambda(n) for all n<=N but C_(P_y) grows too fast for the floor-count estimate (C) to yield a square-root-scale bound. No uniformity for y=N was proved.
3. **Relative versus square-root accuracy:** an o(N/(loglog N)^2) large-prime-tail remainder is insufficient for (I). The exact cancellation needs O_eps(N^(1/2+eps)).
4. **Prime powers:** the full v_p(n), not only p|n or radical support, drives both a_P and B_y. Dropping multiplicity changes the sign.
5. **No p-adic/real topology identification:** the prime valuations and their Archimedean log realization do not imply continuity of `PadicInt p -> R`, nor a p-adic proof of Mertens' theorem.
6. **External inputs:** Mertens' estimates and the classical Liouville/RH equivalence are analytic inputs; finite Euler algebra and an exact convolution error do not establish them independently.
7. **Numerical diagnostics:** `/mnt/data/padic_prime_logarithmic_reference.py` ran and exited 0 with 17,927 finite fixture assertions across seven selected finite-prime sets and N<=640: exact rational Euler product, exact signed odd-tail identity, exact finite convolution, and floating-point checks of the analytic sqrt envelope. Tests are NOT all exact real proof certificates, Lean builds, kernel checks, or asymptotic evidence.

## Mathematical status and verification

The uniform inequality (C) and conditional equivalence (I) are complete analytic arguments, given classical named results, with explicit cutoffs, rates, and losses. They are not unconditional proofs of the RH-strength signed tail estimate. The Lean module `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PadicPrimeLogarithmicDensity.lean` implements only the exact finite Euler-product identity, its positive sign-density factor, and a generic centered signed-tail inequality. It does not assert analytic Mertens, (C), (D), (E), or (I) as kernel-accepted theorems.

Lean v4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. `COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / WEIGHTED_PREFIX_ALL_RATE_OPEN / RH_OPEN`.

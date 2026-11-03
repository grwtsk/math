# The exact arithmetic seam: moving p-adic prime signs through Möbius, Euler inversion and logarithmic windows

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition.** Source-exact finite Möbius/log/PNT window identities; a proved finite floor-carry/one-hit boundary; an unconditional squarefree small-prime moving-cutoff window estimate derived from the earlier independently bounded `a_y` count; exact fixed-cutoff Euler-product residue/pole-order comparison; a complete signed Putnam-style pair criterion with explicit remaining arithmetic cancellation. The analytic supplier for uniform cancellation of the large-prime signed tail remains OPEN. These are not an RH proof, a new PNT proof, or a completed analytic Lean proof. New Lean module is a source proof candidate, with `COMPILATION_NOT_RUN`, `EXPECTED_TYPES_NOT_RUN`, `FRESH_KERNEL_NOT_RUN`, `TRANSITIVE_AXIOM_AUDIT_NOT_RUN`.

## 1. Actual sources and the meaning of “Putnam counting”

- `Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean` at pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Git blob `f0587555fbb762fc7283a1c22c7f1be07350c589`, proves `ArithmeticFunction.moebius_mul_log_eq_vonMangoldt`, i.e. `μ * log = Λ`. It also proves the divisor identity for `log n`. This is the **original** Möbius/prime-number-theorem coefficient source, not an external optional adapter.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PadicPrimeLogarithmicDensity.lean`, Git blob `7764823b46a9eb47422a2e9036d888ca818ac775`, defines the genuine finite prime exponent sign `a_P(n)=(-1)^(sum_{p∈P} v_p(n))`, and proves finite Euler factor identities as source candidates. Earlier analytic review `padic-prime-logarithmic-sign-density-and-rh-tail.md`, blob `713523972718dba5ffe34823e9dfe9a3b7cd8ed2`, proves the moving `y=log N` approximation with explicit `C_y`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleSquareDivisorReverseCounting.lean`, blob `feae1ca93e3a21ebc033da05e14fe1e2f77c6b2d`, records the actual square-divisor bridge. Exact coefficient identities are still open in the named Lean interface; the mathematical identities below are proved directly.
- `GRWTSK/ProbabilityTheoryAndStochasticProcesses/SignedCyclicWalkPacket.lean`, blob `2f07d2d96384e6bbcca610bce9f5cb1eecade91b`, retains the **complete signed** cyclic-pair identity, not just the diagonal. Its status is a Lean proof candidate.
- The earlier locally available mathematical note `liouville-putnam-residue-counting.md` uses “Putnam-style counting” for exact positive/negative arithmetic pair counting `L(N)^2−N` and its weighted Möbius analogue. It is not claimed to be an independently named Putnam theorem or a source-verified path on current main. The generic pair counting is elementary and is applied below after the genuine Möbius/log window weight is defined.
- Issue #1530 isolates the actual Liouville Fejér window and its still-open all-N diffusive upper bound. Issue #516 preserves the mismatch between logarithmic averaging in a base variable and the original harmonic **shift** weights. No result in those issues is silently upgraded here.

The original Liouville, Möbius, von Mangoldt, Chebyshev, and complete signed-pair source identities remain unchanged.

## 2. Exact Möbius–PNT integer-window double count

Write `Λ(n)=sum_{d|n} μ(d) log(n/d)` and let integers `0<=X<Y=X+H`, `H>=1`. Define

    Δψ(X,H) := ψ(Y)−ψ(X)=sum_{X<n<=Y} Λ(n),
    W_X,H(d) := sum_{X/d<m<=Y/d} log m,  1<=d<=Y.

Rearranging a FINITE ordered divisor sum gives

    Δψ(X,H) = sum_{1<=d<=Y} μ(d) W_X,H(d).                 (A)

This identity includes all genuine prime powers, divisibility incidence, nonunits, and terminal endpoints. It is valid for each X,H and does not use a prime-number theorem or a zero-free region.

The number of multiples of d in `(X,Y]` is exactly

    K_X,H(d)=floor(Y/d)-floor(X/d),
    d*K_X,H(d)+Y mod d=H+(X mod d).                        (B)

The right-hand expression is the TRUE discrete floor remainder. If d>H then `K` is either 0 or 1, with

    K_X,H(d)=1 iff X mod d+H>=d.                          (C)

Thus the counting-only seam is at divisor length d=H: dense rows d<=H versus possible single-hit rows d>H. In the log-weighted identity a single hit at d>H has weight `log floor(Y/d)`; when d>Y/2 this is log 1=0, so the nonzero one-hit logarithmic seam is contained in `H<d<=Y/2`.

This is a Putnam-style finite incidence count. It does NOT bound the total signed sum in (A) because there are many d and the floor residue is highly correlated with μ(d).

## 3. Source-exact squarefree Möbius filter applied to moving p-adic signs

Let `P_y={p prime:p<=y}`, use exact natural valuation `v_p(n)`, and put

    a_y(n)=(-1)^{sum_{p<=y}v_p(n)},
    b_y(n)=a_y(n) * 1[sum_{p>y}v_p(n) is odd],
    λ(n)=a_y(n)−2b_y(n).

Define the squarefree-filtered signed coefficients

    U_y(n)=μ(n)^2 a_y(n),
    V_y(n)=μ(n)^2 b_y(n).

The squarefree sieve identity `μ(n)^2=sum_{r²|n}μ(r)` and parity invariance after removing a square give

    U_y(n)=sum_{r²|n}μ(r)a_y(n/r²),
    V_y(n)=sum_{r²|n}μ(r)b_y(n/r²),
    μ(n)=U_y(n)−2V_y(n),                               (D)

including squareful n, where both U and V are zero. Hence, substituting into the actual PNT source (A),

    Δψ(X,H)= W(U_y)−2W(V_y),
    W(f)=sum_{d<=Y}f(d) W_X,H(d).                         (E)

No average, probabilistic independence, Fourier phase, missing prime-power term or squarefree surrogate is silently identified with μ. The entire arithmetic task is retained in the **signed large-prime** term V, and both components are passed through exactly the SAME window kernel.

## 4. Unconditional uniform squarefree approximate-window bound

For fixed finite P_y, define

    δ_y=∏_{p<=y}(p−1)/(p+1),
    C_y=∏_{p<=y}(1+2/(sqrt p−1)),
    ρ_y=δ_y/ζ(2).

The earlier source-derived Dirichlet-convolution estimate for the exact finite valuation sign is

    A_y(t):=sum_{1<=n<=t}a_y(n),
    |A_y(t)−δ_y t|<=2 C_y sqrt(t) for t>=1.             (F)

For real 0<=t<1, A_y(t)=0 and the error is `δ_y t`, which is paid below. For integers X<Y, the square-divisor count gives the exact identity

    S_U(Y)−S_U(X)
      =sum_{1<=r<=sqrt Y} μ(r) [ A_y(Y/r²)−A_y(X/r²) ].

Write E_y(t)=A_y(t)−δ_y t and extend the finite r-sum before separating means:

    S_U(Y)−S_U(X)
      =δ_y H * sum_{r<=sqrt Y} μ(r)/r²
        +sum_{r<=sqrt Y}μ(r)[E_y(Y/r²)−E_y(X/r²)].     (G)

For every included r, each absolute E-error is at most `2C_y sqrt(Y)/r`, even when `X/r²<1`. Use `sum_{r<=sqrt Y}1/r<=1+log Y` and `sum_{r>sqrt Y}1/r²<=1/floor(sqrt Y)` to obtain a completely explicit uniform window allowance:

    |S_U(Y)−S_U(X)−ρ_y H|
      <=4 C_y sqrt(Y)(1+log Y)
          +δ_y H/floor(sqrt Y),    Y>=1.                (H)

This is independent of H except for the paid tail. The earlier elementary bound `C_y<=exp(16 sqrt y)` permits the moving cutoff `y=log Y`, giving for every eps>0

    S_U(Y)−S_U(X)=ρ_(log Y) H+O_eps(Y^(1/2+eps))       (I)

UNIFORMLY for integers `0<=X<Y`. Mertens' known theorem gives `ρ_y~exp(-2γ)/(log y)^2`; at y=log Y, it is approximately `exp(-2γ)/(loglog Y)^2`. (I) is a genuine unconditional estimate on U, not on μ or on the PNT weighted packet W(U).

It identifies a square-root window threshold: the error in (I) is smaller than a main term of order H only if H is sufficiently larger than `Y^(1/2+eps)`. Whether the true μ window is small still requires the signed cancellation from V.

## 5. Euler inverse and its *quadratic boundary zero*

For complex `s` with `Re(s)>1`, the true absolutely convergent Dirichlet series/Euler products satisfy

    F_mu(s)=sum μ(n)n^(−s)=1/ζ(s)=∏_p(1−p^(−s)),
    F_U(s)=sum U_y(n)n^(−s)
          =∏_{p<=y}(1−p^(−s)) *∏_{p>y}(1+p^(−s))
          =ζ(s) G_y(s)/ζ(2s),
    G_y(s)=∏_{p<=y}(1−p^(−s))/(1+p^(−s)),
    2 F_V(s)=F_U(s)−F_mu(s).                             (J)

The rough-prime sign correction is the quotient

    R_y(s)=F_mu(s)/F_U(s)
          =∏_{p>y}(1−p^(−s))/(1+p^(−s))
          =ζ(2s)/[ζ(s)^2 G_y(s)].                        (K)

At any fixed y, approach the boundary along real σ↓1. Since ζ(σ)~1/(σ−1), ζ(2σ)→ζ(2), and G_y(σ)→δ_y>0,

    R_y(σ)~(σ−1)^2/ρ_y,
    F_U(σ)~ρ_y/(σ−1),
    2F_V(σ)~ρ_y/(σ−1),
    F_mu(σ)~σ−1.                                        (L)

**The arithmetic inverse-Euler seam has order TWO**, not merely one: the infinite rough-prime product must cancel the surrogate's pole and leave the simple zero of `1/ζ` at s=1. For the von Mangoldt series,

    −ζ'(s)/ζ(s)=[−ζ'(s)] [F_U(s)−2F_V(s)]               (M)

and each bracketed component individually has leading order `ρ_y/(σ−1)^3` after multiplying by `−ζ'`. Those third-order contributions cancel exactly, leaving the known simple pole `1/(σ−1)` of `−ζ'/ζ`. This is a **fixed-y** asymptotic and CANNOT be interchanged with a growing `y=log Y` without a uniform theorem. The cancellation of Laurent singularities is not a proof of corresponding short-window cancellation.

The Euler products above are justified by absolute convergence only for Re(s)>1. A finite product is invertible on Re(s)>0, but that fact does NOT extend the infinite product through zeta zeros or prove the PNT/RH. At `Re(s)=1`, the PNT needs a Tauberian argument together with suitable analytic control; a pole at the real point 1 alone is not sufficient.

## 6. Exact Putnam counting of the rough-prime subset layers

If n is squarefree, let k be the number of prime divisors of n exceeding y. The **exact** binomial enumeration of nonempty rough prime subsets gives

    1[k odd] = sum_{r=1}^k (−1)^(r+1) 2^(r−1) binom(k,r). (N)

Thus the large-prime V weight is a COMPLETE SIGNED sum over divisors q of n built from r distinct primes >y. Concretely, after exchanging the finite sums,

    W(V_y)
      =sum_{r>=1} (−1)^(r+1)2^(r−1)
         sum_{q squarefree, p|q => p>y, ω(q)=r, q<=Y}
           sum_{d<=Y/q, gcd(d,q)=1} μ(d)^2 a_y(d)
              W_X,H(qd).                                 (O)

The sum is finite, with r<=log Y/log y for y>1. The log-window weight W_X,H(qd) retains the original multiplier m and the actual endpoint carry (B). This is the precise Putnam-style **multi-prime collision packet**, with every subset and its sign preserved. For k=2, the layers `+2−2` cancel; for k=3, `+3−6+4` gives one. Absolute values taken before the r-sum lose this arithmetic cancellation.

At an index t=qd>H the window count K_X,H(t) is 0 or 1, and it is 1 precisely if the residual carry crosses the terminal edge. This simultaneously locates the rough-prime/collision seam and the floor/window seam. It does NOT prove that their *weighted signed sum* is small.

## 7. Connection to the existing complete signed-pair/Fejér readout

Define the actual windowed source amplitude c_d=μ(d)W_X,H(d). The complete ordered Putnam pair packet is

    sum_{1<=d,e<=Y, d!=e} c_d c_e
       = [Δψ(X,H)]² −sum_{d<=Y}c_d².                   (P)

This is exactly the earlier signed-equal/opposite-sign double counting with arbitrary real weights. It is compatible with `SignedCyclicWalkPacket.completePacket_eq_signedWalk_sq` after a finite cyclic relabeling of the exact c_d, but that is a finite readout, NOT periodicity of μ or a signed upper bound. Adding one deterministic anchor c_0=−H makes its complete signed packet exactly `[Δψ(X,H)−H]²` before subtracting the full diagonal. This is the prime-window counterpart of the earlier Liouville/Möbius zero-mode criterion.

For N original unit-bounded arithmetic labels a_n and H-sample windows, the cyclic/ordinary disagreement occurs only at the final H−1 roots t=N−H+1,...,N−1. Counting alone gives the crude energy cost

    |V_cyclic−V_ordinary|<=(H−1)H².                   (Q)

Relative to a diffusive target O(NH), this absolute seam costs H²/N; for near-full H=N^(1−eta) with eta<1/2, that factor grows. So treating a small fraction of wrapped roots as a small energy contribution is invalid. The original opposite-gap signed transport (#1529) is essential if one wants to avoid this absolute loss.

## 8. Exact remaining theorem, without hidden PNT/RH

The *source-exact* prime-window target is

    Δψ(X,H)−H = W(U_y)−2W(V_y)−H.                  (R)

PNT for global X=0,H=Y asks `Δψ(0,Y)=Y+o(Y)`; the classical RH prime-number-theorem error asks `ψ(Y)−Y=O(sqrt Y log²Y)`. The latter implies the same bound uniformly for windows by subtracting endpoints, and conversely the window statement includes X=0. It is RH-equivalent, not supplied by (B), (I), (L), or (P).

Equivalently, for the unweighted Möbius window, (D),(I) give

    sum_{X<n<=Y} μ(n)
     = ρ_(logY)H−2 sum_{X<n<=Y} V_(logY)(n)
          +O_eps(Y^(1/2+eps)),                         (S)

uniformly. The signed large-prime window estimate needed to improve this formula is independent. A fixed small-prime surrogate bound, Mertens' theorem, or the Laurent cancellation at σ=1 does not prove the uniform original-source cancellation. Nor does the ordinary fixed-form Chowla theorem supply all growing shifts in the weighted Fejér packet (#516).

**First unpayable arithmetic seam:** source-bound signed cancellation of the full y-rough squarefree high-prime parity packet (O) against the small-prime surrogate's positive mean, with uniformity in y~logY, X, H, divisor-factor q, prime-factor subset size r, and the original logarithmic/cyclic window weights. This is not merely floor arithmetic or an inversion of a finite ζ factor.

## 9. Verification and hostile controls

- New finite Lean source: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PadicMobiusPrimeWindowSeam.lean`. It uses the real pinned `μ*log=Λ` and defines source-preserving finite divisor-window counts and terminal-carry laws. It does **not** assert the infinite Euler product continuation, (H), (I), (L), or (R) as checked Lean theorems.
- Reference checker `padic_mobius_pnt_window_reference.py` executed locally and passed **169,774** exact integer, rational, and *formal logarithm prime-vector* assertions: actual prime-power Möbius/log coefficients, both square-divisor filters, whole-window PNT packets, floor carry/one-hit thresholds, all subset binomial layers, cyclic wrap count/energy loss, and exact square-divisor window mean/error algebra. These are bounded finite tests, not acceptance of infinite estimates.
- Hostile controls: n=4 at y=2 shows a_y(4)=1 while μ(4)=0 (squarefree gate indispensable); a two-rough-prime n has signed subset layers 2−2=0 and a three-rough-prime n has 3−6+4=1 (signed r-sum indispensable); d>H gives either no multiple or one, not H/d exactly; near-full cyclic windows have H−1 wrapped roots, not zero; a finite Euler product cannot be substituted for the infinite inverse at s=1; neither a residue nor a diagonal Putnam count alone proves RH.
- Existing root imports, actual arithmetic coefficient identities, toolchain v4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, and previous receipts remain unchanged. No native compilation, fresh kernel replay, axiom census, runner or scheduler was dispatched.

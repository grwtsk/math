# Weighted Liouville–Möbius prefix equivalence, exact PNT window duality, and the arithmetic seam

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Analytic result, not an RH proof.** The original Liouville `WeightedPrefixSquareAllRate` is quantitatively equivalent to the weighted Möbius prefix all-rate condition under **unconditionally true** square-divisor identities and weighted L² dilation; the finite horizon loses only `(1+T/2)^2`. A second source-exact formula expresses the actual Möbius–log PNT window as an Abel dual pairing of the weighted Möbius prefix with the complete signed logarithmic divisor kernel. The resulting RH-equivalent uniform PNT-window estimate is derived through classical zeta analytic theory, not from Putnam/floor counting alone. All arithmetic bounds, kernel signs, terminal boundaries and still-open gates are distinguished below. No unconditional `WeightedPrefixSquareAllRate`, RH, or new PNT proof is asserted.

## 1. Source identity and pinned mathematical inputs

Baseline `grwtsk/math/main@ab9d4b6892af6e99e63d276bfcd69770fe4c0727`:

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixSquareCriterion.lean`, Git blob `d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`: literal original `liouvillePrefix`, `weightedPrefixSquareMoment`, `WeightedPrefixSquareAllRate`; continuous-to-discrete and full signed shift decomposition are still named open Lean gates.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleSquareDivisorReverseCounting.lean`, Git blob `feae1ca93e3a21ebc033da05e14fe1e2f77c6b2d`: real original Möbius `moebiusReal` and Liouville `coefficient`; `LiouvilleSquareCoefficientIdentity`, `MoebiusInverseSquareCoefficientIdentity`, and the *CAUSAL* `SquareDelayEnergyEquivalence` are named, currently OPEN Lean gates. The present analytic result establishes an **analogous, distinct WEIGHTED-PREFIX comparison**, not a proof of the older causal gate.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PadicMobiusPrimeWindowSeam.lean`, Git blob `027d24046d0563be5cd66e01d7ecf3235d99f801`: exact 81*log=Lambda source, divisor floor carry `d*K + Y%d = H + X%d`, and the one-hit regime `d>H`. Its direct `pntWindow`/`divisorLogWindow` exact double-count bridge is mathematically qualified but not yet a local Lean theorem.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PadicPrimeLogarithmicDensity.lean`, Git blob `7764823b46a9eb47422a2e9036d888ca818ac775`: finite prime-valuation signs and exact finite Mertens-product algebra.
- `GRWTSK/ProbabilityTheoryAndStochasticProcesses/SignedCyclicWalkPacket.lean`, Git blob `2f07d2d96384e6bbcca610bce9f5cb1eecade91b`: exact complete signed cyclic pair packet with opposite-gap seam. Issue #1530 owns the stronger still-unproved **diffusive near-full window** estimate and must not be declared solved by an RH-equivalent weaker window condition.
- Mathlib `Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean`, Git blob `f0587555fbb762fc7283a1c22c7f1be07350c589` at `d13f23b723b8a846827a245b89c10fc7d3f11612`, proves the actual Möbius–log convolution `ArithmeticFunction.moebius_mul_log_eq_vonMangoldt`.

The repository pins Lean v4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root imports, upstream dependencies, source identities or existing proof receipts are altered.

## 2. Exact finite square-divisor inverse without an RH assumption

For all n>=1, the ordinary Dirichlet convolution identities are

    lambda(n) = sum_(d^2 | n) mu(n/d^2),
    mu(n)     = sum_(d^2 | n) mu(d)*lambda(n/d^2).          (1)

They follow from finite prime-power multiplication or from absolutely convergent Euler products in Re(s)>1: `sum lambda(n)n^-s = zeta(2s)/zeta(s)` and `sum mu(n)n^-s = 1/zeta(s)`. The inverse square-supported arithmetic function has coefficient `mu(d)` at d². No complex analytic continuation is needed for the coefficient identities. The original actual signs remain unchanged; squareful Möbius coefficients remain zero.

Let `L(x)=sum_(1<=n<=x)lambda(n)`, `M(x)=sum_(1<=n<=x)mu(n)`, extended as zero for `x<1`. Finite reindexing of (1) gives, for real x>=1,

    L(x) = sum_(d<=sqrt x) M(x/d²),
    M(x) = sum_(d<=sqrt x) mu(d)*L(x/d²).                 (2)

At the EXACT integer window `0<=X<Y=X+H`, subtracting endpoint sums gives

    M(Y)-M(X) = sum_(1<=d<=sqrt Y) mu(d)
                       [L(Y/d²)-L(X/d²)],
    L(Y)-L(X) = sum_(1<=d<=sqrt Y)
                       [M(Y/d²)-M(X/d²)].                (3)

The `d` cutoff is kept at the *upper endpoint* Y, with zero extension for the lower endpoint; this avoids replacing the two sums by incompatible source inventories.

The number of positive integers in the dilated `(X/d²,Y/d²]` window is `K_(X,H)(d²)` from the existing source, and

    d²*K_(X,H)(d²) + Y mod d² = H + X mod d².           (4)

For `d²>H`, K is 0 or 1, and K=1 exactly when `X mod d² + H >= d²`. The new *square-divisor window seam* is `d≈sqrt(H)`, distinct from the ordinary PNT divisor-window seam `d≈H`. The isolated Lean candidate imports and applies the EXISTING `windowCount_*` theorems to the literal divisor square.

## 3. Quantitative two-sided weighted-prefix comparison, no zero information needed

Define, for T>=0,

    J_lambda(T) = integral_1^(exp T) L(x)^2 dx/x²,
    J_mu(T)     = integral_1^(exp T) M(x)^2 dx/x².

Fix D=floor(exp(T/2)). For an arbitrary function f zero below 1, write `S_(d²)f(x)=f(x/d²)`. Change variables `u=x/d²` and use positivity to get the exact one-sided norm inequality

    integral_1^(exp T) |S_(d²)f(x)|² dx/x²
       = d^-2 * integral_(1/d²)^(exp T/d²) |f(u)|² du/u²
       <= d^-2 * integral_1^(exp T) |f(u)|² du/u².

Apply finite Minkowski to (2), preserving `mu(d)` in the reverse identity until the norm majorant:

    sqrt(J_mu(T)) <= (sum_(d<=D) |mu(d)|/d) sqrt(J_lambda(T))
                   <= H_D sqrt(J_lambda(T)),
    sqrt(J_lambda(T)) <= (sum_(d<=D) 1/d) sqrt(J_mu(T))
                       = H_D sqrt(J_mu(T)).

The elementary harmonic bound `H_D<=1+log D<=1+T/2` gives the **complete unconditional comparison**

    J_mu(T)     <= (1+T/2)² J_lambda(T),
    J_lambda(T) <= (1+T/2)² J_mu(T).                    (5)

The factor is finite, and the proof does **not** claim the unsupported uniform constant 1 in place of the harmonic price.

For any eta>0 the entirely elementary inequality

    (1+T/2)² <= (1+2/eta)² exp(eta*T/2)               (6)

is obtained from `1+t <= exp(t)` for t>=0. Therefore if `J_lambda(T)<=A_(eta/2) exp(eta*T/2)` for all T>=0 then

    J_mu(T) <= A_(eta/2) (1+2/eta)² exp(eta*T).

The converse uses the second inequality of (5) and the same constant. Hence

    WeightedPrefixSquareAllRate(lambda)
      IFF WeightedPrefixSquareAllRate(mu).               (7)

This is a *complete analytic proof of the two-sided transfer*, not a new unconditional proof of either all-rate statement. The new Lean module proves a conditional all-rate assembler from a visibly named `SquareDivisorWeightedComparison` gate, while the actual integral change-of-variable/source coefficient identities are qualified in this mathematical review and remain unelaborated Lean inputs. They are not assumed in an asserted RH theorem.

## 4. Direct zeta implication from Möbius weighted energy

Set `f(u)=exp(-u/2)*M(exp u)` for u>=0. Then `J_mu(T)=int_0^T f(u)²du`. If the all-rate condition holds, for EVERY a>0 choose 0<eta<2a and use integration by parts to obtain

    integral_0^infinity exp(-2a*u) f(u)² du
       = 2a*integral_0^infinity exp(-2a*T) J_mu(T)dT < infinity.

For any complex s with Re(s)>1/2 choose a with `0<a<Re(s)-1/2`. Cauchy–Schwarz proves the literal Mellin/Laplace integral

    G(s)=integral_1^infinity M(x) x^(-s-1) dx
        = integral_0^infinity f(u) exp(-(s-1/2)*u) du

converges absolutely and locally uniformly, so G is holomorphic on `Re(s)>1/2`. For Re(s)>1, summing the original absolutely convergent Möbius Dirichlet series gives

    G(s)=1/(s*zeta(s)).                                 (8)

By meromorphic uniqueness, any hypothetical nontrivial zeta zero with Re(s)>1/2 would give a genuine pole of the continuation `1/(s*zeta(s))`, contrary to holomorphy of G. The functional equation then places all nontrivial zeros on `Re(s)=1/2`.

Conversely the classical RH summatory Möbius bound `M(x)=O_eps(x^(1/2+eps))` immediately gives weighted all-rate after integrating `M(x)²/x²`. Thus, with the authentic original Möbius coefficients,

    J_lambda all-rate <-> J_mu all-rate <-> RH.          (9)

The Mellin and classical RH summatory transfers are analytical results, NOT locally accepted Lean declarations. This second proof path passes through `1/zeta(s)` rather than the Liouville numerator `zeta(2s)/zeta(s)` and shows exactly where invertibility beyond Re(s)>1 must be earned.

**Graded consequence:** if `J_lambda(T)<=C exp(alpha*T)` for a fixed `alpha>=0`, the square-divisor polynomial factor preserves all damping exponents strictly above alpha; hence `zeta(s) != 0` for `Re(s)>(1+alpha)/2`, and classical explicit-formula transfer gives `psi(x)-x=O_eps(x^((1+alpha)/2+eps))` whenever alpha<1. This is conditional on the FIXED energy rate, not an extrapolation from finite data.

## 5. Exact PNT window Abel duality and why raw Cauchy loses the main term

Let integers Y=X+H, X>=0, H>=1 and

    W_(X,H)(d) = sum_(X/d<m<=Y/d) log m.

The pinned Mathlib theorem `mu*log=Lambda` gives the exact source

    DeltaPsi_(X,H) := psi(Y)-psi(X)
        = sum_(d=1)^Y mu(d) W_(X,H)(d).                 (10)

Put `M(k)=sum_(1<=n<=k)mu(n)`. The generic finite Abel identity, with the literal terminal `W(Y+1)=0`, gives

    DeltaPsi_(X,H) = sum_(k=1)^Y M(k)
                         [W_(X,H)(k)-W_(X,H)(k+1)].    (11)

Both (10) and (11) are EXACT FINITE identities, no smallness claim. The companion Lean proof candidates include a proved-form generic `finiteAbel`, `windowLogIncidence_terminal_zero`, and `divisorLogWindow_eq_prefix_dual`; the separate actual Möbius/prime-window double-count identification is a named remaining Lean gate.

Finite Cauchy applied to (11) yields

    |DeltaPsi_(X,H)|² <= J_mu(log(Y+1)) * D_(X,H),
    D_(X,H) = sum_(k=1)^Y k(k+1)
                   [W_(X,H)(k)-W_(X,H)(k+1)]².       (12)

This is the exact *dual weighted prefix* norm for the original logarithmic PNT kernel. It exposes why one cannot simply conclude a prime number theorem by taking absolute values of all the divisor windows. For X=0, even Y>=4, the k=1 term alone gives

    D_(0,Y) >= 2 [log(Y!)-log(floor(Y/2)!)]²
             >= (Y²/2) [log(Y/2)]².                   (13)

Thus the uncentered raw Cauchy bound carries a `Y*logY` kernel scale even if the weighted Möbius energy is subpolynomial. The desired PNT main term is Y; the **renormalized signed** expression must cancel the deterministic zeta pole, and the 0/1 floor carry and opposite-gap contributions must remain fully signed. A diagonal/absolute-value or fixed-shift substitution is not a proof.

The previous Putnam-style count also has the literal complete ordered-pair equality for `c_d=mu(d)*W_(X,H)(d)`:

    sum_(d != e) c_d*c_e = (DeltaPsi_(X,H))² - sum_d c_d².

Both orientations are present, and the second term is signed; replacing the off-diagonal sum by its absolute value destroys the original cancellation mechanism. The stronger diffusive near-full cyclic Fejér window supplier in issue #1530 is **not** proved by the raw comparison (5) or by this Abel identity.

## 6. Re-enter the moving p-adic high-prime squarefree correction

At each integer Y>=2 freeze `y=logY`. Let `a_y(n)=(-1)^(sum_(p<=y)v_p(n))` and retain the actual squarefree sieve `mu(n)²`. Define

    U_y(n)=mu(n)²*a_y(n),
    V_y(n)=mu(n)²*a_y(n)*1[sum_(p>y)v_p(n) odd],
    mu(n)=U_y(n)-2V_y(n).

The previous source-bound independent small-prime count is, uniformly for integers `0<=X<Y`,

    sum_(X<n<=Y) U_(logY)(n)
      = rho_(logY)*(Y-X)+O_eps(Y^(1/2+eps)),
    rho_y= (1/zeta(2))*product_(p<=y)(p-1)/(p+1).     (14)

Consequently (2), (7), (9) and the classical RH–Mertens criterion yield a new explicit *moving-prime-squarefree window criterion*:

    WeightedPrefixSquareAllRate
      IFF (forall eps>0, exists C_eps, forall integer 0<=X<Y)
           |sum_(X<n<=Y) V_(logY)(n)
                 - rho_(logY)*(Y-X)/2|
                      <= C_eps*Y^(1/2+eps).            (15)

**Proof:** if RH, the interval Mertens difference is `O_eps(Y^(1/2+eps))`, and (14) plus `mu=U-2V` gives (15). Conversely take X=0 in (15), subtract twice the signed V term from (14), and obtain the classical RH-strength bound `M(Y)=O_eps(Y^(1/2+eps))` uniformly in Y. It follows that RH holds, hence the original all-rate condition. The exact prelimit `rho_(logY)` must not be replaced by its Mertens limit at square-root accuracy.

The original **weighted** PNT source remains

    DeltaPsi_(X,H)-H = W_(X,H)(U_y)-2W_(X,H)(V_y)-H,  (16)

with the same W kernel at each y. Although (15) is RH-equivalent, inserting it into a triangle/absolute Abel bound does not itself yield the sharp centered window error, for the reason quantified by (12)–(13). The classical analytic RH–Chebyshev equivalence supplies the independent exact proposition edge:

    WeightedPrefixSquareAllRate
      IFF (forall eps>0, DeltaPsi_(X,H)-H
           =O_eps((X+H)^(1/2+eps)) uniformly X,H).    (17)

The reverse of (17) chooses X=0. The forward follows from RH and the classical explicit formula, with no assertion that the large-prime weighted cancellation has been proved directly from Putnam counting.

## 7. Verification, hostile checks, and open arithmetic work

Independently executed finite reference: `/mnt/data/mobius_weighted_prefix_pnt_window_reference.py`. It returned **637,374 PASS** exact integer, rational, and symbolic-prime-log assertions: actual original µ/λ square-divisor identities through N=512; exact rational two-sided discrete J inequalities; square-dilation contraction; all integer windows and square carry; complete Möbius–log Abel dual against exact formal prime-log basis through Y=64; and squarefree high-prime parity across seven y choices. This is bounded diagnostic evidence, NOT an infinite theorem, compilation, kernel acceptance or an analytic zeta proof.

Hostile controls:

1. Removing µ(d) from inverse (2) changes coefficients already at n=p²: `lambda(p²)=+1` but `mu(p²)=0`; a positive square-divisor inverse is invalid.
2. Failing to zero-extend below 1 or changing the terminal `Y+1` changes square-window membership and the exact kernel comparison.
3. The divisor floor boundary is d>H, but after square-divisor transport the one-hit boundary is d²>H. They are **not interchangeable**.
4. The Cauchy/PNT dual norm grows at least Y logY in norm; positivity does NOT give the desired signed cancellation.
5. A fixed prime cutoff has a positive mean; pointwise Euler products at Re(s)>1 must not be interpreted as invertibility beyond their convergence domain.
6. The previous `rho_y` from the squarefree U_y source is not the same as the Liouville-only `delta_y`; factor ζ(2) must remain.
7. The near-full diffusive cyclic Fejér bound is not a consequence of RH or all-rate by the finite inequalities here; it is a stronger open source-specific requirement.

Status: elementary finite analytical identities (1)–(7), (10)–(13), and (14) with its cited earlier proof; classical analytic implications (8)–(9) and (15)–(17) explicitly qualified; new Lean declarations are `SOURCE_PROOF_CANDIDATE`, with full `COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. The central actual source theorem `WeightedPrefixSquareAllRate`, the signed large-prime tail estimate (15), the weighted PNT window estimate (16), and the stronger diffusive Fejér supplier remain **OPEN**.

External classical RH–PNT source: NIST DLMF §25.16(iv), https://dlmf.nist.gov/25.16#E4 (`psi(x)=x+O_eps(x^(1/2+eps))` iff RH), and classical Möbius/Mertens equivalence in standard analytic-number-theory texts. The mathematical equivalence is a restatement, not a new resolution of RH or a novel PNT result.

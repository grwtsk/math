# Uniform signed rough-count and causal-energy cancellation: the unconditional VK scale

Local mathematical attribution: grwtsk contributors.
Research date: 2026-10-31.

**Mathematical classification:** a complete analytic deduction using the classical
Vinogradov–Korobov Mertens bound and Mertens' finite prime-product theorem,
with a new source-exact quantified application to the **growing** prime-free
Liouville/Möbius residue readout in this RH programme. These inputs are
established earlier mathematics, not original claims. The present deduction
proves a uniform proper saving relative to exponential rate one. It does **not**
prove the all-positive-rate energy estimate, the arithmetic theorem P, or RH.
No kernel-accepted Lean formalization is claimed.

## 1. Literal target and quantifiers

For every real outer horizon T≥2, freeze the finite prime set

    P_T = {p prime : p≤T},
    Q_T = product_(p in P_T) p.

Define the **actual squarefree-filtered Liouville parity count**

    R_T(x) = sum_(1≤n≤x, gcd(n,Q_T)=1) mu(n)
           = E_T(x)-O_T(x),

where E_T and O_T count squarefree, P_T-rough integers with respectively
even and odd total prime-factor multiplicity. All original positive integer
labels, squareful zero coefficients, and signs are retained. The time
response is the original

    r_n(u) = 2*(n^(-1/2)-exp(-u/2)) if 0≤log n≤u, else 0,

and the P_T-rough waveform and its full signed causal energy are

    U_T(u) = sum_(1≤n≤exp u, gcd(n,Q_T)=1) mu(n)*r_n(u),
    V_T(T) = integral_(u=0..T) U_T(u)^2 du.

The set P_T is fixed while the inner variable u varies. For comparison, the
original full source is F_mu(u)=sum_n mu(n)r_n(u), with
H_mu(T)=integral_(0..T) F_mu(u)^2 du.

Put

    Phi(t) = t^(3/5) / (log(e+t))^(1/5)       (t≥0).

**Proved, unconditional analytic statement:** there exist absolute constants
c,C>0 and T0 such that for every T≥T0:

(A)  for every v with T/4≤v≤T,
       |R_T(exp v)| ≤ C exp(v-c Phi(T));

(B)  for every u with T/2≤u≤T,
       |U_T(u)| ≤ C exp(u/2-c Phi(T));

(C)  V_T(T) ≤ C exp(T-c Phi(T)).

In particular, if D_T is the original actual squarefree diagonal restricted
to P_T-rough indices and X_T the complete signed ordered off-diagonal over
those same indices, with original kernel K_T(m,n), then

    0 ≤ D_T(T)+X_T(T)=V_T(T)
      ≤ C exp(T-c Phi(T)).                                  (D)

No individual signed row is taken in absolute value. Equation (D) is a
quantitative uniform signed aggregate estimate, but only with *rate-one*
main exponent. The constants in (A)-(D) do not depend on T, its growing
prime set, the underlying modulus Q_T, or the indicated inner times.

## 2. Exact Putnam-style multiplicative counting, not frequencies

Let S_T be the multiplicative monoid of all positive integers whose
prime factors lie in P_T (including 1 and arbitrary selected-prime powers).

The **finite integer coefficient identity** is

    mu(n)*1_(gcd(n,Q_T)=1)
       = sum_(d|n, d in S_T) mu(n/d).                         (1)

To prove (1), factor n into prime powers. At p≤T, the local sum is
sum_(0≤j≤a) mu(p^(a-j)), equal to 1 for a=0 and to
mu(1)+mu(p)=0 for a≥1. At p>T the only selected-prime
divisor exponent is 0, so the factor is mu(p^a). Taking the
product over prime powers proves (1), including nonunits and
squareful zero cases without a probabilistic hypothesis.

Summing (1) over the full closed cutoff gives an **exact** signed
arithmetic identity

    R_T(x) = sum_(d in S_T, d≤x) M(x/d),                     (2)
    M(y) = sum_(1≤n≤y) mu(n).

Thus the actual rough Liouville parity imbalance is a finite
positive-weight superposition of **already signed and cancelled**
ordinary Mertens prefixes. Equation (2) is not the absolute pair-row
majorant. It is Dirichlet-convolution inversion of the complete source.

The same multiplicative counting and exact birth scaling

    r_(dn)(u)=d^(-1/2) r_n(u-log d)

yield the finite causal identity

    U_T(u)=sum_(d in S_T, d≤exp u)
                 d^(-1/2) F_mu(u-log d),                    (3)

where F_mu(v)=0 for v<0. The inverse identity is the geometrically
convergent causal product of the previously documented finite-prime
filter; the sum is in fact finite at every fixed observation u.
Equation (3) preserves the entire original real waveform, not a
modular projection or reweighted surrogate.

## 3. Previously known analytic inputs

The Vinogradov–Korobov zero-free-region method implies that for fixed
constants a,A>0, all y≥1 satisfy (after enlarging A on bounded y)

    |M(y)| ≤ A*y*exp(-a Phi(log y)).                          (4)

This is a classical unconditional theorem, not assumed RH or proved
here from first principles. A modern explicit source is Ethan S. Lee
and Nicol Leong, *New explicit bounds for Mertens function and the
reciprocal of the Riemann zeta-function*, arXiv:2208.06141, latest
2026 version, https://arxiv.org/abs/2208.06141.
The extra logarithmic prefactor in some explicit formulations is
absorbed by decreasing a, because log(log y) = o(Phi(log y)).

The classical Mertens prime-product theorem supplies

    sum_(d in S_T) 1/d
       = product_(p≤T) (1-1/p)^(-1)
       ≤ A1 log(2+T).                                       (5)

Reference: Jared Duker Lichtman, *Mertens' Prime Product Formula,
Dissected*, INTEGERS 21A (2021), Article A17,
https://math.colgate.edu/~integers/graham17/graham17.pdf.
The proof of the current signed bound uses only this
uniform product upper bound, not a stochastic rough-number model.

The completely elementary second Euler-product allowance is

    sum_(d in S_T) d^(-1/2)
       = product_(p≤T)(1-p^(-1/2))^(-1)
       ≤ exp(B sqrt(T)),
       B=2/(1-2^(-1/2)),                                   (6)

because -log(1-z)≤z/(1-z), p^(-1/2)≤2^(-1/2),
and sum_(p≤T) p^(-1/2)≤2sqrt(T).

The function Phi is increasing and satisfies
Phi(theta*T)≥theta^(3/5) Phi(T) for 0<theta≤1.
Also Phi(T)=o(T), sqrt(T)=o(Phi(T)), and loglog(2+T)=o(Phi(T)).

## 4. Proof of the UNIFORM rough signed-count estimate (A)

Fix T≥2 and T/4≤v≤T, and put x=e^v. Split the EXACT
signed sum (2) at the geometric midpoint d=sqrt(x).

For d≤sqrt(x), the argument x/d has log(x/d)≥v/2≥T/8.
By the already established Mertens cancellation (4), monotonicity
of Phi, and (5),

    |sum_(d in S_T,d≤sqrt(x)) M(x/d)|
       ≤ A*x*exp(-a Phi(T/8))*sum_(d in S_T)1/d
       ≤ A*A1*x*log(2+T)*exp(-a 8^(-3/5)Phi(T)).           (7)

For d>sqrt(x), use only the trivial |M(x/d)|≤x/d
*after* the entire ordinary Mertens prefix has been formed.
Rankin's elementary device, with exponent 1/2, gives

    sum_(d in S_T,d>sqrt(x)) 1/d
       ≤ x^(-1/4) sum_(d in S_T) d^(-1/2)
       ≤ exp(-v/4+B sqrt(T))
       ≤ exp(-T/16+B sqrt(T)).                             (8)

The last expression is ≤exp(-T/32) for all sufficiently large T.
Since Phi(T)=o(T), (8) is eventually at most exp(-c1 Phi(T)).
Likewise the logarithmic factor in (7) is absorbed by lowering
the fixed positive constant in front of Phi(T).
Combining (7) and (8) proves

    |R_T(e^v)| ≤ C e^v exp(-c Phi(T))                       (A)

simultaneously for **every** v in [T/4,T] and every
sufficiently large T. This uses the actual Liouville parity signs
on squarefree rough numbers, never a classwise positive variance.

## 5. Proof of original causal-wave cancellation (B)

For each fixed T the source responses are born with value zero and
have derivative e^(-u/2) after birth. Exact summation before
integration therefore gives

    U_T(u)=integral_(w=0..u) exp(-w/2) R_T(exp w) dw.        (9)

The fully source-fixed closed prefix at each birth is essential,
but a singleton endpoint has zero measure and no jump correction
because the new response is zero at birth.

Fix T/2≤u≤T. Split the physical-time integral (9) at w=u/2.

For 0≤w≤u/2, use |R_T(e^w)|≤e^w, giving

    integral_(0..u/2) exp(-w/2)|R_T(e^w)|dw ≤ 2e^(u/4).   (10)

For u/2≤w≤u, one has T/4≤w≤T and (A) applies. Hence

    integral_(u/2..u) exp(-w/2)|R_T(e^w)|dw
       ≤ 2C e^(u/2-c Phi(T)).                             (11)

Since u≥T/2 and Phi(T)=o(T), the first term in (10) is
also ≤C' e^(u/2-c'Phi(T)) after reducing c' and enlarging
the fixed threshold T0. This proves (B) uniformly over
the entire terminal half interval. The cross signs in the
real response remain inside R_T before applying any norm.

## 6. Proof of FULL signed causal-energy estimate (C),(D)

For the early physical-time interval, every original response
satisfies 0≤r_n(u)≤2n^(-1/2), so

    |U_T(u)|≤2 sum_(n≤exp u)n^(-1/2)≤4e^(u/2).             (12)

Consequently

    integral_(0..T/2) U_T(u)^2du ≤ 16e^(T/2).             (13)

On the terminal half, square the **complete aggregated waveform**
bound (B), not individual Möbius pair terms:

    integral_(T/2..T) U_T(u)^2du
       ≤ C² exp(-2c Phi(T)) integral_(T/2..T)e^u du
       ≤ C² exp(T-2c Phi(T)).                             (14)

As T/2 >> Phi(T), the sum of (13) and (14) is bounded by
C' exp(T-c'Phi(T)), proving (C) with absolute constants.

Finally, expand the literal original-source square only after
the full summation:

    V_T(T)=D_T(T)+X_T(T),
    D_T(T)=sum_(n≤exp T,(n,Q_T)=1)mu(n)^2 K_T(n,n),
    X_T(T)=sum_(m≠n≤exp T,(mn,Q_T)=1)
                     mu(m)mu(n)K_T(m,n).                  (15)

Both orientations, four parities, all nonunit residues and
original causal weights are preserved. Equations (C) and (15)
prove the one-sided complete signed ordered correlation bound

    X_T(T) ≤ C exp(T-c Phi(T))-D_T(T).                     (16)

This is a real, uniform, noncircular cancellation estimate,
but it is not an every-positive-rate or an RH-strength estimate.
No remaining ordered pair row was individually upper-bounded by
its absolute contribution.

## 7. Exact quantitative gap to Problem P

The previously written **source-exact finite-prime factorization**
gives for P_T frozen during the u-integral

    exp(-B' sqrt(T))*V_T(T) ≤ H_mu(T)
                              ≤ exp(4sqrt(T))*V_T(T),
    B'=4/(1-2^(-1/2)).                                   (17)

This bound is proved using contractions of the causal shift on
L²(0,T); it does not assume signs of individual prime-block
kernels. Because both multiplicative costs are exp(o(T)),
the every-positive-rate energy property on the dyadic
T=j log 2 grid is equivalent for V_T(T) and H_mu(T).

The original endpoint energy/curvature and diagonal equations
then connect that property to the *unchanged* Problem P and
its source-candidate analytic return; all original source
verification limitations apply. Analytically one also sees
the RH-strength of the target directly: for Re z>1/2,

    integral_0^infinity exp(-zu) F_mu(u)du
       = 1/[z(z+1/2) zeta(z+1/2)].                        (18)

All-rate L² energy makes the left side holomorphic for Re z>0
by Cauchy–Schwarz, excluding any zeta zero with Re s>1/2;
functional-equation symmetry gives RH. Conversely the standard
RH Mertens bound M(x)=O_epsilon(x^(1/2+epsilon)) gives
all-rate H_mu and hence, through (17), all-rate V_T.
This is an analytic equivalence, NOT a newly kernel-verified
Lean proof.

Our proven bound has log V_T(T)≤T-cPhi(T)+O(1). Since
Phi(T)/T→0, it **does not imply** for any fixed
delta<1 the desired universal inequality
V_T(T)≤C_delta exp(delta*T). In particular it does
not close P, the unsupplied all-rate signed remainder,
or RH. The precise missing contribution is arithmetic
cancellation on the e^((1-o(1))T) scale, not another
finite residue partition or a Fourier-positive square.

## 8. Source comparison and reproducibility

Existing same-source constructions: grwtsk/math #1406 (endpoint
quadrature), #1527 and #1528 (original four-sector residue),
#1529 (finite cyclic count), #1530 (Liouville Fejér supplier
open), #1531 (double Abel), #1419 (distinct finite-prime
block extraction), and previous signed prime-free note at
commit ffef7414066fd001e21e63ae0c3aa002258a5c4e,
blob d67d35851cff3c033fdbc2447219383c393b9460.
The quantitative contribution here is to derive the
unconditional known zero-free-region cancellation at a
uniform *growing sieve* horizon directly from exact
multiplicative signed counts and the original waveform.
The reduction and its analytic inputs should not be
presented as a newly discovered zero-free region, new
unconditional RH-strength theorem, or independent proof
of the known Mertens estimate.

Independent finite reference script:
prime_free_signed_cancellation_reference.py
SHA-256 c9c9167b6dbd5a400265512c0df423f909ca7424eb166a6e32e79dfc9030d125.
It passed 9,216 exact integer convolution identities and 162
75-digit original-waveform/inverse-filter comparisons; maximum
floating discrepancy about 1.80e-75. These checks do not certify
the asymptotic inequalities or the external Mertens bounds.

This publication is documentation-only analytical mathematics.
No Lean code or import graph was changed. No Lean/Lake executable
was available in the local check environment. The pre-existing
source candidates retain COMPILATION_NOT_RUN,
EXPECTED_TYPES_NOT_RUN, FRESH_KERNEL_NOT_RUN and
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No native verifier, CI workflow,
Noe scheduler, detached execution authority, or axiom was added.

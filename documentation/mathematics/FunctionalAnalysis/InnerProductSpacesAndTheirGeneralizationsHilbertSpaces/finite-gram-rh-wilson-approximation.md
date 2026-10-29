# Finite Gram approximation: Wilson and signed pickup consumers

Local mathematical attribution: grwtsk contributors.

## Status and exact scope

This increment has three Lean SOURCE_PROOF_CANDIDATE modules and the analytic derivations below. Compilation, fresh kernel replay and transitive axiom audit are NOT_RUN. The analytic operator-norm Taylor remainder, min-max spectral construction, and the concrete continuous-time RH step-projection estimates are hand proofs, not claimed as elaborated Lean declarations. The algebraic spectral-ratio consumers explicitly retain their eigenvalue-bound premises.

The Wilson source is the actual invariant real L2 operator and weighted word moments introduced at `6aea0fce0484efd7592083e95a01af8898963fca`; `WilsonSliceL2StrictPositivity.lean` was reread on main with unchanged blob `4395c93658aada411ab7f7fdf302be390fbb79aa`. Its exact quadratic/source identification, temporal gauge integration and spatial half weights are retained. No surrogate operator replaces it.

The RH formulas are the exact signed pickup and endpoint completion problem pinned at `7a6f1142dfe6ee66bfd79600158695c00b7a4fc6`. No redefinition of the endpoint source or analytic return is proposed. Current endpoint-module path resolution was not completed by the available reads; no new file imports a guessed legacy path. Wiring the generic signed-family theorem to the maintained Lean pickup objects remains explicit work.

Canonical workflow source read: `grwtsk/noeaaeue` main snapshot `a587eab7e370d80a5fd7296ddc7574f54fa8891a`, `workflows/research/orchestration/skills/noe-proof-automation/SKILL.md`. This is provenance, not execution authority. No verification was dispatched.

## 1. Whole Taylor energies, rather than separately charged moments

On a compact probability space, let Phi have d continuous real coordinates, and write

    K(x,y) = c M(x) M(y) exp(t <Phi(x),Phi(y)>),
    c > 0, t >= 0, |<Phi(x),Phi(y)>| <= R, R >= 0.

M is a continuous real function. At truncation order m, retain all ordered coordinate words of lengths n<m, including the empty word and repetitions. The finite quadratic is

    Q_m(h) = c sum_(n<m) t^n/n! sum_(w:Fin n -> Fin d)
                       |integral h M Phi_w|^2.

The new `FiniteRealGramTruncation` source proves nonnegativity and monotonicity of the complete Taylor quadratic, passes that complete inequality to the actual dominated exponential limit, and proves the literal remainder nonnegative. Adding single-word bounds with the same right side would not prove this theorem and is not used.

### Quantitative upper remainder (analytic proof, Lean formalization pending)

For real z and integer m>=0,

    |exp(z) - sum_(n<m) z^n/n!| <= exp(|z|) |z|^m/m!.

Indeed, apply absolute convergence, reindex n=m+k, and use (m+k)! >= m! k!. This also covers m=0 and z=0, with the usual zeroth-power convention.

Every omitted degree is a sum of squared moments with nonnegative coefficient. Thus the remainder operator is positive semidefinite. Its kernel has absolute value at most

    epsilon_m = c ||M||_infinity^2 exp(t R) (t R)^m/m!.

The norm of an integral operator with uniformly bounded kernel on a probability space is at most that uniform bound: Cauchy-Schwarz bounds the L1 norm of each input by its L2 norm. Consequently,

    0 <= T-T_m <= epsilon_m I

in quadratic-form order. The same bound extends from continuous functions to L2 by continuity; strict inequalities are not extended by density. T_m has rank at most sum_(n<m) d^n. No finite truncation is declared exact or uniformly coercive.

For an invariant Hilbert subspace, compress T_m to that subspace with the actual orthogonal projection. This preserves order and the error bound. The finite-rank features are the projected weighted word vectors, not unproved pointwise invariant representatives. The existing exact gauge reduction identifies the limiting form with the actual Wilson operator.

## 2. Actual Wilson finite energy

`WilsonSliceFiniteMomentEnergy.finiteMomentEnergy` is

    exp(-beta E_s) sum_(n<m) (beta/2)^n/n!
                          sum_w wordMoment(beta,w,h)^2.

For L nonzero, beta>0 and every h in the existing `gaugeInvariantSpace L`, the new source body gives

    0 <= finiteMomentEnergy(beta,m,h) <= <h,invariantOperator(beta) h>.

The proof first uses the complete generic Taylor estimate on the actual continuous invariant embedding. It preserves the normalization exp(-beta E_s), all link coordinates and the real/complex moment agreement. The closed inequality then passes through the existing invariant-continuous density to every invariant L2 class. The residual is defined by subtraction of these two actual forms.

The explicit epsilon_m operator estimate above still needs its Lean proof and actual compression construction. This source increment does not assume that construction under an opaque certificate.

### Spectral continuation

After the compact self-adjoint spectral theorem and the compressed finite-rank operator have actually been constructed, write their eigenvalues in decreasing order, with multiplicities and zero padding for the finite-rank approximation. On a space of dimension at least two, the min-max principle gives

    lambda_0 >= nu_0,  lambda_1 <= nu_1 + epsilon_m.

The new algebraic Lean consumer proves the ratio bound from those explicit premises. It does not supply min-max, computed eigenvalues, simplicity, or the physical vacuum.

A certified inequality 0 < nu_1+epsilon_m < nu_0 yields

    lambda_1/lambda_0 <= (nu_1+epsilon_m)/nu_0 < 1.

For a>0, a constructed normalized logarithmic Hamiltonian then has regulated gap at least

    (1/a) log(nu_0/(nu_1+epsilon_m)).

No such numerical eigenvalue certificate, regulator-uniform bound, continuum/infinite-volume construction or physical mass gap is claimed here.

## 3. The actual RH response, projected without changing its signs

For n>=1 retain the original response

    r_n(u) = 0                                  if u < log n,
             2(n^(-1/2)-exp(-u/2))              otherwise.

It is continuous at birth and is globally 1/sqrt(n)-Lipschitz for u>=0. On each side of the birth the derivative has absolute value at most 1/sqrt(n); across the birth the same bound follows by splitting the interval there.

Fix T>0, N=floor(exp T), m>=1 and h=T/m. Let I_j=[jh,(j+1)h] for 0<=j<m, disregarding measure-zero endpoint overlaps. Let P be orthogonal projection in real L2[0,T] onto the bin-constant functions. Define the actual features

    b_j(n) = (1/sqrt h) integral_(I_j) r_n(u) du.

Then

    G(n,k) = integral_0^T r_n(u) r_k(u) du,
    B(n,k) = sum_j b_j(n)b_j(k),
    G-B = Gram((I-P)r_n).

In particular G-B is positive semidefinite. No strict positivity is needed or claimed: at T=log N the newest r_N is zero on the entire interval.

### Explicit trace remainder

For an L-Lipschitz function f on an interval I of length h, with mean fbar,

    integral_I (f-fbar)^2
      = (1/(2h)) integral_I integral_I (f(x)-f(y))^2 dx dy
      <= L^2 h^3/12.

The last constant follows from integral_I integral_I (x-y)^2 = h^4/6. It is attained by affine functions.

Summing over bins for each actual response gives

    ||(I-P)r_n||_2^2 <= T^3/(12 m^2 n).

For any real coefficients a_n, Cauchy-Schwarz in the finite coefficient index gives

    ||sum_n a_n (I-P)r_n||_2^2
      <= (sum_n a_n^2) sum_n ||(I-P)r_n||_2^2
      <= (sum_n a_n^2) T^3 H_N/(12m^2),
    H_N = sum_(1<=n<=N) 1/n.

The first inequality is the new generic `FiniteSignedApproximation.signedSum_norm_sq_le` Lean source body. The specific continuous-response trace bound is proved above on paper; its Lean instantiation is pending.

### A sharper signed residual, without discarding prefix cancellation

Let F(u)=sum_(n<=N) mu(n)r_n(u), with the causal zero responses retained. On [0,T] this is continuous and piecewise C1, hence absolutely continuous, with

    F'(u) = exp(-u/2) M_floor(exp u)  almost everywhere,
    M_n = sum_(k<=n) mu(k).

For any absolutely continuous f on a bin [a,a+h], apply Cauchy-Schwarz to f(y)-f(x)=integral_x^y f'. The variance identity and nonnegative Fubini yield

    integral_I (f-fbar)^2
      <= integral_a^(a+h) [(z-a)(a+h-z)/2] |f'(z)|^2 dz
      <= (h^2/8) integral_I |f'(z)|^2 dz.

The exact weight is obtained by integrating (y-x) over a<=x<=z<=y<=a+h and dividing by h. No optimality of 1/8 is claimed.

Consequently the actual signed projection remainder also obeys

    ||(I-P)F||_2^2 <= (h^2/8) V(T),
    V(T) = integral_0^T exp(-u) M_floor(exp u)^2 du
         = sum_(n=1)^N M_n^2 [1/n-exp(-min(log(n+1),T))].

Both bounds are available for the SAME remainder, so their minimum may be used once. The elementary |M_floor(exp u)|<=exp u gives V(T)<=exp T-1. Thus the signed bound supplies an unconditional approximation allowance h^2(exp T-1)/8, without assuming a new Mertens estimate. Better arithmetic estimates for V can be retained, but are not assumed proved.

### Exact arithmetic readout of every bin

For a<=b and s=max(a,log n), the exact integral is zero when b<=s, and otherwise

    integral_a^b r_n(u)du = 2(b-s)/sqrt n + 4(exp(-b/2)-exp(-s/2)).

Define prescribed prefixes A_q=sum_(n<=q)mu(n)/sqrt n and B_q=sum_(n<=q)mu(n)log(n)/sqrt n, in addition to M_q. With q_a=floor(exp a), q_b=floor(exp b), the signed bin integral S(a,b) is exactly

    2(b-a) A_qa + 4(exp(-b/2)-exp(-a/2)) M_qa
    + (2b-4)(A_qb-A_qa) - 2(B_qb-B_qa)
    + 4 exp(-b/2)(M_qb-M_qa).

Variable prefixes and all newborn terms are retained. At a birth endpoint the new response contributes zero, so the convention does not introduce a jump. This is an exact evaluation formula, not a cancellation estimate.

### Return to the original signed endpoint quantity

Keep the original energy H(T), diagonal D(T), signed cross term X(T) and endpoint sum E(T), with H=D+X and |E-X|<=1/4. Orthogonality, not a deleted mixed term, gives

    H(T) = (1/h) sum_(j<m) S(jh,(j+1)h)^2 + ||(I-P)F||_2^2.

Therefore the concrete source-bound upper certificate is

    E(T) <= (1/h) sum_(j<m) S(jh,(j+1)h)^2 - D(T) + 1/4
            + min( T^3 H_N/(12m^2) sum_(n<=N)mu(n)^2,
                   T^2/(8m^2) V(T) ).

This is the main RH hand-proof output of the increment. It retains the original diagonal, signed prefix combinations, ordered-pair source, terminal zero-width cell and the already-paid quarter-unit error.

T=0 is handled separately: the response energy, endpoint and diagonal are all zero. A choice m^2 >= T^2(exp T-1)/8 makes the second remainder at most one. This is accuracy at the cost of more bins, NOT a proof that the finite signed feature energy is subexponential. Finite feature counts that grow with T require their full accounting.

The remaining RH arithmetic witness is still the one-sided all-positive-rate bound on adequately covering scales. The current good-scale, energy, and Laplace return are not reopened. The separate reflected compact-source route is unchanged.

## 4. Implemented sources, evidence and next exact obligations

- `FiniteRealGramTruncation.lean`: five whole-Taylor nonnegativity/monotonicity/lower-bound/remainder source bodies.
- `FiniteSignedApproximation.lean`: literal signed sums, explicit coefficient mass and residual trace, exact mixed-term identity, Cauchy-Schwarz residual estimate, conditional orthogonal endpoint handoff and explicit-premise spectral-ratio algebra.
- `WilsonSliceFiniteMomentEnergy.lean`: actual finite weighted word energy, continuity, nonnegativity, continuous embedding estimate and all-invariant-L2 extension with actual residual nonnegativity.

Finite diagnostics were executed outside the mathematical repository: 735 exact rational assertions and 667 65-decimal-digit numerical assertions passed. These include mixed-term and input-mass hostile controls, the sharp affine variance constant, actual RH inventories through N=32, two RH residual bounds, the arithmetic bin-readout identity, and finite exponential Gram tests with negative Gram entries, empty words and repeated coordinates. The numerical tests are not interval-certified and are not asymptotic evidence. The source-bound passive target records hashes and exact command; no durable external runner receipt is claimed.

Remaining formalization: scalar exponential remainder; bounded L2 kernel norm transfer; actual invariant compression and finite matrix; min-max and logarithmic-domain construction; concrete RH step projection, variance/Fubini and source-identity bridge against the maintained Lean objects. The existing terminal RH arithmetic bound and regulator-uniform physical gap remain unsupplied. No research axiom, hidden strictness/orthogonality certificate, solver acceptance or native execution is asserted.

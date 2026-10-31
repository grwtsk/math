# Two-parameter Abel transport for the original signed causal kernel

**Local mathematical attribution:** grwtsk contributors.

**Mathematical status:** analytic finite-kernel identities and quantitative bounds; no new uniform Liouville/Möbius cancellation theorem, RH proof, or Lean verification. **Source status:** `SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`.

**Source provenance:** this review retains the mathematical argument of the supplied local standalone note. The independently reported local `LiouvilleWeightedCyclicEnergy.lean` and its accompanying derivation were not accessible for bytewise comparison. The added source file is separate and does not replace or certify them. The local shared Git lock has not been touched.

## 1. Original causal source, with no changed weights

Take an integer N>=2, T=log N, and a sign sequence a(n) with |a(n)|<=1 (specifically original Liouville or Möbius). For integers n>=1 and u>=0 define

    r_n(u) = 2 max(n^(-1/2) - exp(-u/2), 0).
    W_T(m,n) = integral_{0}^{T} r_m(u) r_n(u) du.
    K_T(m,g) = W_T(m,m+g),  m,g>=1.

Since r_n(u)=0 for n>=N throughout 0<=u<=T, K_T(m,g)=0 whenever m+g>=N. Thus also K_T(N,g)=K_T(m,N)=0. The off-diagonal half-energy is

    A_N = sum_{g=1}^{N-1} sum_{m=1}^{N-g} a(m)a(m+g) K_T(m,g)

(the pair m+g=N has exactly zero weight, and no coefficient is discarded). The complete original causal square is H_a(T)=D_a(T)+2 A_N with D_a(T)=sum_{n=1}^N a(n)^2 W_T(n,n).

## 2. Positive *mixed* discrete kernel differences

For fixed u, let v_n=r_n(u) and d_n=v_n-v_{n+1}.

The real-variable function x -> 2 max(x^(-1/2)-exp(-u/2),0), x>0, is nonnegative, decreasing and convex. Consequently

    v_n>=v_{n+1}>=0,
    d_n>=d_{n+1}>=0,
    0<=d_n<=2(n^(-1/2)-(n+1)^(-1/2))<=n^(-3/2),
    0<=v_n<=2 n^(-1/2).

Define the mixed difference

    Omega_T(p,q) = K_T(p,q)-K_T(p+1,q)
                   -K_T(p,q+1)+K_T(p+1,q+1).

Before integrating, its integrand is

    v_p d_{p+q} - v_{p+1} d_{p+q+1}
      = d_p d_{p+q} + v_{p+1}(d_{p+q}-d_{p+q+1}) >=0.

Thus **Omega_T(p,q)>=0 for every p,q>=1**, and it vanishes for p+q>=N. Its total mass telescopes exactly:

    sum_{p,q>=1} Omega_T(p,q) = K_T(1,1) = W_T(1,2).

All sums are finite because the causal kernel has compact integer support at T=log N. No boundary face is omitted.

## 3. Full two-parameter Abel summation

Define the **signed rectangular cumulative shift correlation**

    R_N(p,q) = sum_{m=1}^p sum_{g=1}^q
         1_{m+g<N} a(m)a(m+g),  p,q>=1.

For p+q<N every rectangle entry is an original source pair, with no cutoff mask. The discrete double telescoping formula reads

    K_T(m,g) = sum_{p>=m,q>=g} Omega_T(p,q).

Insert this into A_N and exchange the finite sums:

    **A_N = sum_{p,q>=1} R_N(p,q) Omega_T(p,q).**   (I)

Because Omega>=0, this is a positive-weighted mean of SIGNED RECTANGLE PREFIXES. It retains every original positive gap and both orientations in the energy. In particular, no absolute value is taken for each individual shifted correlation, no fake random independence is assumed, and no terminal boundary term survives. The original parity and square-modulus buckets can be inserted in the finite pair sums without changing this identity.

## 4. Exact polynomial kernel-moment bound

For any u>=0 set M=floor(exp u) >=1. Because d_n=0 for n>=M, harmonic estimates give

    sum_n sqrt(n) d_n <= sum_{n<=M} 1/n <=1+u.

For the first term of the mixed-difference integrand, d_{p+q}<=d_q, hence

    sum_{p,q>=1}sqrt(pq) d_p d_{p+q} <= (1+u)^2.

For the second term, summation by parts in q and the fact that d_n is eventually zero show

    sum_{q>=1} sqrt(q) (d_{p+q}-d_{p+q+1})
      = sum_{q>=1}(sqrt(q)-sqrt(q-1)) d_{p+q}
      <=sum_{q>=1} q^(-1/2)(p+q)^(-3/2).

Split this sum at q=p:

    sum_{q<=p} q^(-1/2)(p+q)^(-3/2) <= 2/p,
    sum_{q>p} q^(-1/2)(p+q)^(-3/2) <=1/p.

Since sqrt(p) v_{p+1}<=2 and v_{p+1}=0 for p>=M,

    sum_{p,q>=1}sqrt(pq) v_{p+1}(d_{p+q}-d_{p+q+1})
       <=6(1+u).

Add the two estimates and integrate from u=0 to T:

    **sum_{p,q>=1} sqrt(pq) Omega_T(p,q)
       <= T^3/3 +4 T^2+7 T.**                     (II)

This uses no number theory. The constant and all boundary terms are explicit. The estimate is source-compatible for all T=log N and both actual arithmetic sequences.

## 5. A genuinely one-sided rectangle-prefix criterion (OPEN)

Equation (I), positivity and (II) give the rigorous conditional transfer:

    If R_N(p,q) <= B_N sqrt(pq) whenever p+q<N,
    then A_N <= B_N [T^3/3+4T^2+7T], T=log N.  (III)

No absolute estimate on R_N is needed: negative rectangular correlations are favorable. Equivalently one may use the positive part of R_N.

A source-specific sufficient hypothesis would be, for all delta>0, constants C_delta independent of N,p,q such that

    R_N(p,q) <= C_delta (pq)^(1/2+delta)
    for all N>=2 and p,q>=1 with p+q<N.        (OPEN)

Since pq<=N^2/4 on the support, (III) would imply

    A_N <= C_delta N^(2 delta) [T^3/3+4T^2+7T].

The original diagonal satisfies D_a(T)<=4T+2T^2, and thus the complete energy would be O_epsilon(exp(epsilon T)) for each positive epsilon, after choosing delta<epsilon/2 and absorbing the polynomial. The established Möbius/Liouville causal-delay transfer and conditional Laplace return would then imply RH **only if this genuinely new arithmetic premise were proved and its source chain accepted**.

**Critical circularity check (BOTH signs):** for actual Liouville, lambda(1)=1 and lambda(2)=lambda(3)=-1. For all q>=1 with the active source range p+q<N,

    R_N(1,q) = L(q+1)-1,
    R_N(2,q) = -1-lambda(q+2),
    R_N(3,q) = -L(q+3)-lambda(q+2)-2.

These follow by writing each m-row as lambda(m)[L(m+q)-L(m)]. A one-sided bound R_N(p,q)<=C_delta*(pq)^(1/2+delta) for ALL active rectangles (and all N) bounds positive L(q+1) through p=1 AND negative L(q+3) through p=3, up to an absolute correction <=3. Therefore this supposedly new uniform one-sided rectangle source already contains the RH-strength TWO-SIDED Liouville partial-sum estimate. It is not a weaker arithmetic problem, and cannot be presented as a new proof or inferred from fixed-shift Chowla, entropy or kernel positivity. The advance here is the *positive mixed-kernel, exact double Abel identity, polynomial-loss analytic transport, and this sharpened circularity witness*, NOT the unproved arithmetic envelope.

The useful future target must be a **directly weighted signed mean** over rectangles under Omega_T, with a genuine number-theoretic method controlling the p=1 and p=3 contributions jointly with the others, rather than a uniform rectangle supremum.

In particular, the alternating sign fixture a(n)=(-1)^n has R_N(p,1)=-p, showing that absolute square-root rectangle control would incorrectly exclude some highly cancelling sign sequences. This motivates the strictly **one-sided** formulation; even that remains a source-specific research hypothesis.

## 6. Independence and verification boundaries

- Analytic result: (I) and (II) for the **unchanged causal kernel**, with no global/local shift parameter omitted.
- Independent finite numerical check of the actual kernel (not a proof): for N=2,3,4,5,8,12,16,24, numerical quadrature verifies Omega>=0 within numerical tolerance, double Abel equality A_N=sum R Omega, and the exact telescoping mass sum Omega=K_T(1,1). All tested square-root moments lie below the bound in (II).
- Existing classical arithmetic bounds may independently yield the previously derived Vinogradov-Korobov-type saving on the complete energy. Nothing in (I)-(II) strengthens that unconditional exponent.
- Not proved: a nontrivial source-specific bound on R_N(p,q) over all active growing rectangular prefixes, nor any RH-strength complete packet estimate.
- No inspection of the inaccessible /Users/think/Desktop/math local Lean candidate, no compilation, no kernel acceptance, no Git mutation, and no shared-lock removal.

Next analytic direction: find cancellation for a *weighted, averaged collection* of rectangular prefixes, rather than uniformly pointwise controlling R_N(p,q). The p=1 and p=3 rows jointly encode both signs of Liouville's RH-strength one-point bound; any putative theorem must explain how these weighted contributions are controlled jointly with all other rows, without assuming that bound.

## 7. Additive Lean implementation and source-bound acceptance gates

The additive source candidate is
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelCausalKernel.lean`,
under `GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel`.

Its **source-level theorem candidates** include:

- `tailWeightedAggregate_eq_rectangularOmegaAggregate`: a complete finite double-Fubini identity, using original Liouville signed pair labels, the intact triangular support mask and every rectangle coordinate; no sign or term is omitted.
- `mixedIntegrand_decomposition`: the exact four-corner mixed-difference algebra with the two favorable terms.
- `mixedIntegrand_nonneg_of_convex`: conditional positivity for an arbitrary nonnegative, decreasing, discrete-convex response array. This is unconditional GIVEN those explicit scalar hypotheses, not a proof that `pickupResponse` has already been fully checked by Lean.
- `positiveGapAggregate_eq_rectangles_of_tail`: a **conditional** exact source return requiring the visibly named `KernelTailIdentity` for the actual integrated causal Gram kernel. The review derives that premise mathematically by full finite telescoping; it has not yet been discharged in the Lean source.
- `rectangularOmegaAggregate_le_of_prefix_budget`: one-sided inequality for any nonnegative omega and a prescribed upper budget on **all** active source rectangles. The budget is a mathematical premise, not a bound proved for arithmetic Liouville labels.
- `UniformRectangularArithmeticSupplier`: a named **open `Prop`**, not a `theorem`, `axiom`, instance, or certificate.

The complete analytic chain still needs source-bound formalization of: (i) monotonicity and convexity of the literal causal `pickupResponse n u`; (ii) the interval-integral mixed-difference identity and its positivity; (iii) exact zero-boundary finite telescoping to `KernelTailIdentity N`; (iv) harmonic estimates yielding the polynomial square-root kernel moment in equation (II); (v) the full source-to-energy and original signed curvature / RH return, if any arithmetic estimate is eventually proved.

The source alone does **not** assert or prove an integrated positivity theorem, the polynomial moment bound in Lean, or the all-rate cancellation theorem. The analytic derivation above explains each with its actual hypotheses; compilation and fresh kernel checking remain NOT_RUN. This distinction prevents source-proof candidates from being reported as kernel-accepted proofs.

Independent numerical checks in the current research environment reproduced 994 assertions (eight cutoffs N=2,3,4,5,8,12,16,24, actual Möbius/Liouville and alternating signed fixtures, 55-digit kernel arithmetic): pointwise Omega nonnegativity within precision tolerance, complete double Abel equality, exact kernel-mass telescoping and the square-root-moment polynomial bound. These are **finite numerical diagnostics**, not a rigorous certification for all N or a proof of the missing cancellation estimate.

The next defensible increment is to discharge the four numbered Lean analytic gates **without** altering any existing local locked checkout, and only then work on a new genuinely number-theoretic weighted signed rectangle-average bound. Fixed-shift Chowla, all-coordinate Bernoulli analogies and low-order mod-2 sign projections cannot be silently promoted to that supplier.
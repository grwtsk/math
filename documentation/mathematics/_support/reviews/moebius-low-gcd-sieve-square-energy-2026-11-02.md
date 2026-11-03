# The original unmasked Möbius low-gcd Gram as a finite signed sieve of square energies

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-02 (America/Los_Angeles).
Status: mathematically exact finite Möbius inversion, bilinear source rearrangement and square-energy identity; Lean proof CANDIDATES for inversion/finite rearrangement; source-specific finite Gram-to-integral interchange and first-collar coefficient are explicit UNPROVED Lean Props. The signed all-rate estimate and RH remain unresolved.

## 1. Source identity pinned to the same unmasked low-gcd cross

Work with the ORIGINAL signed finite off-diagonal causal Gram from MertensPrimitive.lean (blob 45e06c371d67bcf8c939d20a95fcbc63570546fa), through MoebiusUnmaskedLowGcdEndpoint.lean (blob 1adfd2470cb28a0d98ad567d436853ab2d091f67):
  A_D(T) = sum_(1<=m,n<=N, m!=n,gcd(m,n)<=D) mu(m)mu(n)K_T(m,n),
  N=floor(exp T), K_T(m,n)=integral_0^T r_m(u)r_n(u)du.
Both original orientations, squareful zeros, exact birth cutoffs, and the original diagonal exclusion are retained. There is NO strong/weak physical geometry mask in A_D.

Define for d>=1:
  c_D(d) = sum_(x*y=d, y<=D) mu(x)
         = sum_(k|d,k<=D) mu(d/k).                         (1)
This is the genuine Dirichlet convolution mu * 1_[1,D]. Pinned Mathlib  d13f23b723b8a846827a245b89c10fc7d3f11612  in NumberTheory/ArithmeticFunction/Moebius.lean explicitly exposes ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq. Applying that theorem gives the EXACT finite inversion
  sum_(d|q) c_D(d)=1_(q<=D), for q>0.                  (2)
No PNT, RH or pair cancellation.

## 2. Direct finite original-source transport

Because d|gcd(m,n) iff d|m AND d|n for positive m,n, apply (2) to q=gcd(m,n), interchange three FINITE sums, and obtain for the ORIGINAL FULL (including diagonal) low-gcd Gram
  B_D(T) := sum_(1<=m,n<=N,gcd(m,n)<=D) mu(m)mu(n)K_T(m,n)
          = sum_(d<=N) c_D(d) G_d(T),                    (3)
where
  G_d(T):=sum_(1<=m,n<=N, d|m,d|n) mu(m)mu(n)K_T(m,n).
The authored candidate Lean proofs lowGcdSieveWeight_sum_divisors, gcd_le_indicator_eq_sieve, gcd_le_indicator_eq_sieve_Icc, lowGcdFullGram_eq_signed_divisorGrams implement exactly these identities with the pinned divisor/inversion API.

The full low-gcd Gram contains the diagonal only for n<=D, since gcd(n,n)=n. Thus
  A_D(T)=B_D(T)-Diag_{<=D}(T),
  Diag_{<=D}(T)=sum_(1<=n<=min(D,N)) mu(n)^2 K_T(n,n).    (4)
Replacing this by the entire original pickupDiagonal(T) would be WRONG. The authored Lean proof candidate lowGcdFullGram_eq_cross_add_diagonal preserves (4).

## 3. Exact nonnegative square-energy representation, with signed coefficients

For each d<=N define the ORIGINAL divisor-restricted causal response
  F_{d,T}(u)=sum_(1<=n<=N,d|n)mu(n)r_n(u)
and its nonnegative integral
  E_d(T)=integral_0^T F_{d,T}(u)^2 du >=0, T>=0.        (5)
The Gram is an integral of original response products; finite distributivity and interval-integral linearity show
  G_d(T)=E_d(T).                                       (6)
The pinned Lean proof of (6) is NOT YET written: it is explicitly named DivisorRestrictedEnergyIdentityTarget and NOT supplied as an axiom.

Combining (3)-(6) gives the mathematical exact identity
  A_D(T)=sum_(d<=N)c_D(d)E_d(T)-Diag_{<=D}(T).          (7)
The candidate Lean theorem plainLowGcdCross_eq_signed_energy_of_finite_integral consumes exactly (6); it does not pretend that (6) or the RH-strength growth of A_D is already accepted.

## 4. A genuine unconditional negative first-divisor collar

For D>=1, (1) has elementary exact consequences:
  c_D(1)=1;
  c_D(d)=0 for 2<=d<=D;
  c_D(d)=-1 for D<d<=2D.                               (8)

Proof: for d<=D the truncation retains every divisor, so c_D(d)=sum_(x|d)mu(x)=1_(d=1). If D<d<=2D, every proper divisor k of d satisfies k<=d/2<=D, while k=d is omitted. The complete sum of mu(d/k) over k|d vanishes for d>1; removing the k=d term mu(1)=1 leaves -1.

Therefore (7) can be regrouped as
  A_D(T) = E_1(T) - Diag_{<=D}(T)
           - sum_(D<d<=min(2D,N)) E_d(T)
           + sum_(2D<d<=N) c_D(d) E_d(T).              (9)
The first large-divisor collar is a genuine negative NONNEGATIVE-square source credit. The later c_D(d) are NOT sign definite. The Lean gate FirstDivisorCollarCoefficientTarget and conditional candidate firstDivisorCollarSignedEnergy_nonpos record the exact scope; neither supplies a signed all-rate bound by itself.

Important hostile limitation: for d>D, the crude positive original response bound yields E_d(T)<=16*T*N/d^2. The absolute sum of the first collar is at most 16*T*N/D and hence at the fixed D_*(T) is already O(T*exp(sqrt T)). Thus this negative credit is SUBEXPONENTIALLY small in the very regime of the RH-facing target. It cannot by itself cancel a hypothetical exponentially large E_1(T); controlling the positive full pickup energy remains genuinely RH-strength.

## 5. True common-divisor time shift and squarefree signs

For n=d*a with Squarefree(d*a), the exact original source response has
  r_(d*a)(u) = d^(-1/2) r_a(u-log d).
The factor mu(d*a)=mu(d)mu(a) holds only when gcd(d,a)=1; otherwise the original mu vanishes. Thus when d is squarefree,
  F_{d,T}(u) =
    mu(d)/sqrt(d) * sum_(a<=N/d, gcd(a,d)=1) mu(a) r_a(u-log d),
with the original source birth gate and endpoint. If d is squareful, F_{d,T}=0. This is another finite source-only identity whose Lean proof needs a separate coprime multiples reindex; it is not imported into the new module or mistaken for an all-rate bound.

## 6. Actual diagnostic computations executed in this conversation

Twenty-four integer random bilinear fixtures tested (7) on N=8,16,40,90 and six D selections per N, including small D=1,2,3 and D=N. Integer equality PASS on all 24; the inputs were generic random real-like integer kernel entries, intentionally NOT a claim about the original physical source. They check the exact finite algebra independently of positivity.

Four further direct ORIGINAL birth-gated causal Gram numerical tests, with N,D=(12,1),(18,4),(24,6),(32,8), used the true mu sequence and the direct closed formula for its interval integral. The absolute residuals in (7) were about 4.44e-16, 8.88e-16, 1.78e-15 and 8.88e-16 respectively. These were float calculations, not certified interval arithmetic or Lean replay. Each test also checked c_D(d)=0 on 2<=d<=D and c_D(d)=-1 on the first collar.

## 7. Formal verification and actual completion boundary

New source: MoebiusLowGcdSieveSquareEnergy.lean.
Authored proof candidate declarations:
 lowGcdSieveWeight_sum_divisors,
 gcd_le_indicator_eq_sieve,
 gcd_le_indicator_eq_sieve_Icc,
 lowGcdFullGram_eq_cross_add_diagonal,
 lowGcdFullGram_eq_signed_divisorGrams,
 divisorRestrictedEnergy_nonneg,
 plainLowGcdCross_eq_signed_energy_of_finite_integral,
 firstDivisorCollarSignedEnergy_nonpos.

Named UNPROVED pinned Lean targets:
 DivisorRestrictedEnergyIdentityTarget,
 FirstDivisorCollarCoefficientTarget.

Still unproved in earlier files:
 DivisorCoverRootTailTarget, FixedGcdRatioTarget,
 PlainPrimitiveGcdReindexTarget, PlainLowGcdEveryRateDyadic.

The finite identity is not cancellation of the sum of positive square energies: c_D(d) changes sign, and the d=1 term is the complete original pickup energy. No bound on its RH-scale positive excursions is inferred. The canonical RH theorem is unresolved.

Pinned current repository environment: Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Source parsing, expected types, Lake compilation, independent kernel and transitive axiom/unsafe/sorry audit all NOT_RUN. No root promotion, native execution, scheduler, external runner or existing source modification authorized by the publication.

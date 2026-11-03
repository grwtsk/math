# Noncircular Möbius–elliptic rate bounds, forced compensation and squareful cancellation

Local attribution: grwtsk contributors.
Research date: 2026-11-01.
Classification: complete elementary mathematical arguments, exact finite diagnostics, classical Mertens zero-free-region transfer, Lean SOURCE_PROOF_CANDIDATE. The requested all-positive-rate bound for the complete source is NOT PROVED.

## Original target and arithmetic source

The already published exact identity for any genuine GoodPrimeBank B is

  E_B(T) + R_B(T) = pickupCross(T) = X(T),

where E_B is the full elliptic trace packet and R_B is the original rough, both mixed orientations, and the actual signed source-minus-elliptic kernel defect. The original endpointSum differs from X by an explicitly signed correction of absolute value at most 1/4 for T>=0. This equality is unaffected by the choice of bank, and it is not an estimate.

The required RH-facing statement is: choose a fixed set G of affinely covering scales, with its coverage constants fixed before epsilon, then for EVERY epsilon>0 prove the existence of fixed nonnegative constants C_epsilon and R_epsilon with X(T)<=C_epsilon exp(epsilon T) for all T in G above R_epsilon. This remains OPEN. The current repository's conditional good-scale return would consume that theorem and imply RH, subject to separate native source verification.

## 1. Unconditional source-exact rate one: a complete mathematical proof

The ACTUAL original GRWTSK.RiemannHypothesis.CCC primitives are:

  M(x) = mertensPrefix x = sum_(1<=n<=floor x) mu(n);
  V(u) = pickupVelocity u = exp(-u/2) M(exp u);
  F(u) = wholePickup u = integral_0^u V(v) dv;
  H(T) = pickupEnergy T = integral_0^T F(u)^2 du;
  X(T) = pickupCross T = H(T) - pickupDiagonal T.

The original source has 0<=pickupDiagonal T<=2 T^2 for T>=0 and the exact complete energy/diagonal/cross identity. For x>=1, |M(x)|<=floor x<=x by |mu(n)|<=1. Hence for u>=0, |V(u)|<=exp(u/2). Interval integration gives

  |F(u)| <= 2(exp(u/2)-1).

Since exp(u/2)>=1, (exp(u/2)-1)^2<=exp u; consequently

  0<=H(T)<=4 integral_0^T exp u du=4(exp T-1).

Therefore the entire signed combined elliptic packet satisfies, without RH, BSD, a zero-free-region hypothesis or a small arbitrary remainder,

  -2T^2 <= E_B(T)+R_B(T) <=4(exp T-1)    (T>=0).   [A]

This is strictly stronger at large T than the existing source-already-written finite-count allowance X<=2 exp T T^2. The new Lean rate module gives proved-at-source candidates for the latter explicit bound on E_B+R_B using the existing accepted-at-source pickupEnergy_exponential_allowance and positive diagonal, together with

  E_B(T)+R_B(T) <= [4/(delta-1)^2] exp(delta T)

for all T>=0 and every fixed delta>1. This is an unconditional all-scale rate for delta>1; the exponent interval (0,1] remains unproved. The sharpened [A] is a complete mathematical proof in this review and is NOT a claimed newly compiled Lean theorem.

Because exp(T)>=T^2/2 for T>=0, the two-sided bracket gives |X(T)|<=4 exp T. Neither estimate silently discards negative squarefree correlations.

## 2. Established outside mathematical improvement: Vinogradov–Korobov

The standard unconditional Vinogradov–Korobov zero-free region and Perron summation yield a genuine classical Mertens bound for large x of the form

  |M(x)| <= C x exp(-c (log x)^(3/5)/(log log x)^(1/5))

for fixed C,c>0. This is established external number theory, not an RH-equivalent assumption or a new GRWTSK discovery. A modern source is Ethan Simpson Lee and Nicol Leong, New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function, arXiv:2208.06141v5, last revised 9 Sep 2026, DOI 10.48550/arXiv.2208.06141. Its stated explicit estimates may include a log x prefactor; absorbing a fixed logarithmic factor into a slightly smaller positive c is legitimate for the asymptotic form above. No new explicit numerical constant is claimed.

Put g(u)=u^(3/5)/(log u)^(1/5) for u sufficiently large. Then the ACTUAL pickup velocity satisfies |V(u)|<=C' u exp(u/2-c g(u)) eventually. Split the defining integral for F(u) at u/2: on [0,u/2] the bound is O(u exp(u/4)); on [u/2,u], g(v)>=g(u/2) and exp(v/2)<=exp(u/2), giving O(u^2 exp(u/2-c g(u/2))). Since g(u/2) is comparable to g(u), and g(u) grows faster than log u, the polynomial factors can be absorbed by reducing c. Thus |F(u)|<=C1 exp(u/2-c1 g(u)) eventually. A second split for H(T)=integral F^2 gives

  X(T)<=H(T)<=C2 exp(T-c2 g(T))   for all large T.  [VK]

This is a mathematically proved transfer of the classical bound to the genuine source, not a proof of a new zero-free region. Since g(T)=o(T), [VK] does NOT yield X(T)<=C_delta exp(delta T) for any fixed delta<1. The analytic step is reviewed on paper and has not undergone new Lean kernel verification.

## 3. Actual record {7,19} bank: exact quadratic elliptic packet

The original integral record curve has actual good reduction at 7 and 19 with finite counts N7=13, N19=27; its Frobenius traces are -5,-7. The original firstSelectedDivisor chooses 7 whenever 7 divides n; otherwise it chooses 19 when 19 divides n; otherwise the original integer remains unmatched.

For an original endpoint inventory 1,...,N, the exact numbers of occurrences are

  A_N=floor(N/7), B_N=floor(N/19)-floor(N/133).

The subtraction is the actual overlap of divisible-by-7 and divisible-by-19 sources; it retains both original integer positions but assigns their least prime once. Therefore the actual bank's matched trace packet equals

  E_N=(5 A_N+7 B_N)^2 -25 A_N-49 B_N.      [E]

For N=133k, A_N=19k and B_N=6k, so [E] becomes the EXACT source formula

  E_(133k)=18769 k^2-769 k.

The new Lean rate module proves a separate exact pure-integer polynomial theorem for counts 19k and 6k, and exact floor identities for N=133k. The connection between actual Nat.find first-selected-prime tags and this floor-count model remains an explicit Lean comparison obligation, not a field assumed true by an adapter. Pinned Mathlib provides Nat.Ioc_filter_dvd_card_eq_div (Mathlib/Data/Nat/Factorization/Basic.lean, blob 33ebfe9b25f9b23edaea0893f627d77efb54f86a). A paper proof follows immediately from the unique selection rule and inclusion/exclusion.

Let kappa=137/133. Because each floor differs from its real quotient by less than one,

  |5 A_N+7 B_N-kappa N|<=12,
  0<=25 A_N+49 B_N<=25N/7+49N/19<7N.

By difference of squares,

  |E_N-kappa^2 N^2|<=12(2kappa N+12)+7N<=32N+144. [F]

For T>=0 put N=floor(exp T), so exp T<N+1. The [A] bracket implies |X(T)|<=4exp T<=4(N+1). Since R_B=X-E_B, [F] gives the UNCONDITIONAL signed residual bound

  |R_B(T)+kappa^2 N^2|<=36N+148.            [R]

Thus R_B(T)=-(18769/17689) exp(2T)+O(exp T) while E_B(T) has the opposite positive quadratic main term. These are mathematically complete estimates on the actual finite bank, using no RH-strength statement. The large forced negative residual is a feature, not proof that the smaller complete X has every-positive-rate growth. A separate claim |R_B|=o(exp(2T)) would be FALSE for this bank.

Exact finite-integer diagnostics checked source membership and bound [F] at N=1,...,20000 with zero exceptions, and verified N=133k for k=1,2,3,10,100. The proof of all N is the floor-and-square argument above, not the diagnostic.

## 4. Entire squareful matched sector cancels at EVERY positive rate

For any original integer m, not Squarefree m implies mu(m)=0. Hence the literal original Möbius kernel vanishes for any ordered pair touching a non-squarefree index. The new Lean source defines the full elliptic trace packet E_sq,B and exact signed defect D_sq,B over ALL original matched ordered pairs m!=n with one or both indices non-squarefree. On each such pair the complete source-minus-model identity gives

  K_E(m,n)+[K_mu(T;m,n)-K_E(m,n)]=K_mu(T;m,n)=0.

Therefore for EVERY horizon T and EVERY genuine certified bank B,

  E_sq,B(T)+D_sq,B(T)=0.

This is a true all-positive-rate upper estimate with constant zero for this SPECIFIED sector. The companion theorem identifies the remaining original matched Möbius source with exactly its squarefree/squarefree ordered kernel. It does not bound the entire original source because squarefree matched, unmatched/rough and mixed squarefree pairs survive.

This is a genuine mathematical consumer-backed increment rather than a restatement of an unknown estimate; it uses the actual ArithmeticFunction.moebius_eq_zero_of_not_squarefree, original pair orientation and real source kernel.

## 5. RH consequence and exact remaining source

The elliptic bank does not change X(T). Consequently any proof of an all-positive-rate upper bound for E_B+R_B on an affinely covering set, with its coverage constants chosen independently of delta, would establish the same strong upper bound for the ORIGINAL pickupCross, and the existing conditional RH chain would apply (once fully source-verified).

Even a fixed exponent delta<1 for X(T) on ALL sufficiently large T would be a major arithmetic advance: adding the polynomial diagonal gives H(T)=O(exp(delta' T)) for any delta'>delta, so the Laplace return would extend 1/zeta across a fixed strip Re(s)>(1+delta')/2. Present unconditional zeta zero-free regions do not establish such a fixed strip. The classical [VK] bound approaches exponent one and does not change this boundary.

The next noncircular supplier must control the *complete surviving squarefree original Möbius correlation*, including its rough/mixed sectors, at exponents below one and ultimately every positive rate on controlled-cover scales. This work has NOT solved that task, RH or BSD. Selecting a different fixed elliptic bank cannot by itself supply it because E_B+R_B=X identically.

## 6. Source/evidence contract and disposition

Original sources unchanged:
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticFiberKernelComparison.lean, blob df9ded979964790b92f3053efc3aedeb6e2dfa78.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticRecordCertifiedBank.lean, blob b33d580f9d62d3dbe6b43a98af988a95674fb885.
- GRWTSK/MeasureAndIntegration/UnsignedEnergyBound.lean, blob 43cb362696828a0231f2ea9d5b77cacdfd6d9e4c.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean, blob c1f86b43daefd7fbb8cfc4254d6888c410d051d9.
- GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PickupDyadicCoarseBounds.lean, blob 65f64b7919dc270abefacce86ef838e075ad36ae.
- GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/Record4239Curve.lean, blob 9b489d813ddf451a7c8d164ca808fb569b29b5b8.

New candidate source files:
1. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticSignedRateBoundary.lean, providing full combined source estimates at the already available rate1 with polynomial cost, explicit every delta>1 bound, a forced signed residual upper compensation, and the exact 133-block count polynomial.
2. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticSquarefulCancellation.lean, providing the all-horizon all-positive-rate exact cancellation of the full matched squareful sector, and the exact squarefree matched source return.

The source proofs were written with no admitted axioms/sorry. Compilation, expected-type elaboration, fresh independent kernel replay and transitive axiom inspection are NOT_RUN. The paper proof of the fixed-bank source tag cases and of [A],[VK],[F],[R] is mathematically complete but is NOT claimed to be newly Lean-accepted. The source of [VK] is existing classical Mertens zero-free-region literature, not independent improvement or a new critical-strip result. Full source identity for the original RH quantities is preserved; no change to an existing theorem, local model, root import, dependency version or foreign repository.

Any new source acceptance must be tied to exact Git blobs and pinned Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No remote verifier/controller, scheduler, CI bypass or force update is authorized by these mathematical source files.

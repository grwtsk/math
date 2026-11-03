# Three concrete L-function Möbius closures: complex Hermitian Gram, full family gcd sieve, and Dirichlet Euler identification

Research date: 2026-11-02 (America/Los_Angeles).
Local mathematical attribution: grwtsk contributors.
Immutable baseline checked at grwtsk/math commit `200c2af81d3cbc00bbb0fce53218d0976a1a9651`; the code modules from this continuation were authored afterward and published additively.
Lean toolchain `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Formal status: all new theorem bodies are SOURCE_PROOF_CANDIDATES; no Lean parsing, expected-types check, full import compilation, fresh independent kernel replay or transitive axiom audit was run. No RH or Dirichlet GRH has been proved.

## 1. Source boundaries and exact theorem targets

Existing source definitions and hashes, verified at baseline:
- `MoebiusLFunctionFamilyInverse.lean`, blob `2b9c2b556de587db611478b7724c9205db90fd3b`, gives `NormalizedCoefficients`, the actual Mathlib Dirichlet convolution inverse, exact complex Dirichlet `mu_chi` and `DirichletEulerSourceIdentificationTarget` reference source.
- `MoebiusLFunctionHermitianPickup.lean`, blob `0643134718a73f65f1ca01f2db0804b4883676b4`, defines the *actual* original causal response with complex `mu_L`, `familyFullGram`, `familyFiniteResponseEnergy`, and unproved `FamilyHermitianFiniteGramTarget`.
- `MoebiusLFunctionFamilySieveBridge.lean`, blob `50b874689f0b5eab0bc1d30da71494ca752ba644`, defines complex divisor-restricted positive energies, the low-gcd truncated diagonal, and unproved `FamilyHermitianDivisorSieveTarget`.
- `MoebiusLFunctionEulerSynthesis.lean`, blob `20ba091e118bc17511d20604e3b4a978d85d91f9`, defines prime Euler polynomial Möbius synthesis using actual `Nat.factorization`, the `SynthesizedPrimePowerCompatibilityTarget`, and exact source-identification target for the Dirichlet family.
- `MoebiusLFunctionFamilySourceGraphBridge.lean`, blob `58e7475f6b933941456afe3f0ee5653e379e6c37`, provides the previous source-exact Hermitian low/high-gcd split and the conditional Euler-source Möbius equality.
- `MoebiusLowGcdSieveSquareEnergy.lean`, blob `72e6bcf5046f090011ae261dda8a77b837906741`, supplies the exact finite classical `c_D(d)` gcd sieve.
- `MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`, defines the immutable real birth-gated `pickupResponse n u` and true interval `pickupResponseGram T m n`.
- `MoebiusCausalGramCauchy.lean`, blob `01c7128c5c81664405b6fe4d1a373dfdbb0a51dc`, supplies positivity-index response continuity and genuine real Gram integrals.
- The previously published `MoebiusLowGcdSieveTargetClosures.lean`, blob `644f7ce39711b520d3bad6d26ba107d6ef4f0171`, authors the small `c_D` coefficient/first-collar targets, but is NOT known compiled.

The exact source-preserving additions from this continuation are intentionally separate modules and do not alter those definitions.

## 2. First proof: the true complex Hermitian finite causal Gram

For a finite set S of positive integers, ANY complex coefficients b(n), and the immutable real response r_n(u), put
  w_n(u)=b(n)r_n(u),
  K_T(m,n)=integral_0^T r_m(u)r_n(u)du.

The exact identity is
  Re sum_(m,n in S) b(m)*conj(b(n))*K_T(m,n)
    = integral_0^T |sum_(n in S)b(n)r_n(u)|^2 du.       (1)

It is true even for any oriented real T because it is finite interval-integral algebra, though nonnegativity requires T>=0. Neither the gcd mask nor Euler factors enter.

New module `MoebiusLFunctionComplexGramClosure.lean` supplies an actual Lean proof candidate `originalFiniteHermitianGram_eq_energy`, and specializes it to the PREEXISTING target via
  `familyHermitianFiniteGram_proof : FamilyHermitianFiniteGramTarget`.

The Lean argument uses:
1. Genuine `pickupResponse_continuous` for positive indices.
2. Continuity of each complex coefficient-weighted original response.
3. Two `intervalIntegral.integral_finsetSum` exchanges (full ordered m,n, without collapsing the diagonal).
4. `intervalIntegral.integral_const_mul` and PINNED `intervalIntegral.integral_ofReal` to identify the literal real `pickupResponseGram` inside complex arithmetic.
5. `star_sum`, `Finset.sum_mul_sum`, `Complex.mul_conj`, `Complex.normSq_eq_norm_sq` for the actual Hermitian norm-square.
No assumption about the original mu signs, GRH, harmonic cancellation, or arbitrary inner-product positivity.

With `b(n)=mu_L(n)` it gives the original `familyFullGram` equality. With the **same** coefficients masked only by d|n, it yields `familyDivisorRestrictedFullGram_eq_energy` for the complex norm square `familyDivisorRestrictedEnergy`. No duplicated or replacement physical kernel.

## 3. Second proof: complete exact L-family divisor sieve

For every D,n positive, the classical source (independent of L family) already supplies
  1_(gcd(m,n)<=D) = sum_(d|gcd(m,n))c_D(d),
  c_D(d) = sum_(k|d,k<=D)mu_classical(d/k).

Let N=floor(exp T). The exact FULL Hermitian source in the low-gcd sector is therefore
  LowFull_(L,D)(T)
   =sum_(d<=N)c_D(d)*FullDivisorGram_(L,d)(T).          (2)

The only permitted off-diagonal subtraction is
  Diag_(L,<=D)(T)
   =sum_(1<=n<=min(D,N))|mu_L(n)|^2*K_T(n,n).         (3)

Combining (1)-(3) yields the PREEXISTING source-specific target
  familyLowGcdCross(L,D,T) =
    sum_(d<=N)c_D(d)*familyDivisorRestrictedEnergy(L,d,T)
       -familyLowGcdSourceDiagonal(L,D,T), T>=0.       (4)

The new `MoebiusLFunctionHermitianSieveClosure.lean` contains:
- `hermitian_diagonal_re`, an exact norm-square source diagonal;
- `familyLowGcdFullGram_eq_cross_add_diagonal`, exact ordered source bookkeeping;
- `familyLowGcdFullGram_eq_divisorGram`, finite reindex using the EXISTING `gcd_le_indicator_eq_sieve_Icc`;
- `familyHermitianDivisorSieve_proof : FamilyHermitianDivisorSieveTarget`, consuming the new complex divisor Gram theorem.
These are authored proof CANDIDATES, not accepted Lean theorem receipts.

The first-collar nonpositive theorem from the preceding family source is compatible with (4), but it does not automatically control the higher-degree absolute magnitude. For general GL2/Artin/Dedekind sources, |mu_L(n)|<=1 is FALSE in general. The full higher-divisor signed return with its diagonal also remains to be formally verified.

## 4. Third proof: global Dirichlet Euler-source identification

The prime-local source defined earlier is
  P_p(X)=1-chi(p)*X,
  mu_Euler(n)=prod_(p|n) [X^(v_p(n))]P_p(X).

For ANY normalized prime Euler polynomial source, the candidate proof shows:
- `primeEuler_mobius_factorization`: the original global Euler-mu definition is literally the `Nat.factorization.prod` expression.
- `primeEuler_mobius_multiplicative`: if (m,n)=1, the prime factorization supports are disjoint, and the product splits via pinned `Nat.factorization_mul_of_coprime` and `Finsupp.prod_add_index_of_disjoint`.
- `synthesized_prime_power_compatibility`: at r=0 the constant term is 1; at r>=1 the only prime factor is p, with `Nat.factorization_pow_self`.
- `linearReciprocalPolynomial_coeff`: linear local polynomial coefficient is 1 at r=0, -chi(p) at r=1, 0 at r>=2.
- `characterTwistedMobius_prime_power`: pinned `ArithmeticFunction.moebius_apply_prime_pow` gives exactly these values for chi(p^r)*mu(p^r), including conductor-excluded primes.
- `characterTwistedMobius_multiplicative`: the pinned multiplicativity of ordinary mu and of actual mathlib DirichletCharacter χ supplies multiplicativity.
- Crucially, PINNED Mathlib `ArithmeticFunction.IsMultiplicative.eq_iff_eq_on_prime_powers` then identifies the two GLOBAL Möbius arithmetic functions, not only finitely many values.
- Finally, uniqueness of Dirichlet-convolution inverses identifies the global Dirichlet COEFFICIENTS. This authors the exact previously unproved `dirichletEulerSourceIdentification_proof : DirichletEulerSourceIdentificationTarget chi` for arbitrary Mathlib complex character and modulus.

This avoids a common circularity: it does not assume the global Euler-to-character coefficient equality to prove it. It also proves no analytic continuation, functional equation, signed low-gcd cancellation or GRH.

## 5. Independent tests executed in this continuation

Arithmetic test: χ mod 5 of order 4, χ(2)=i. The prime-factor product for the linear Euler reciprocal coefficients agreed *exactly*, in integer Gaussian arithmetic, with mu(n)chi(n) for all 1<=n<=256. Its Dirichlet convolution with chi(n) equals delta_1 exactly over that inventory. Zero mismatches. These checks are finite, not Lean acceptance.

Physical-time test: same actual complex χ, N=30, D=4, T=log(30). The original birth-gated causal Gram was evaluated by its exact closed-form window integral. Independently, its Hermitian square energy was integrated interval-by-interval on logarithmic birth cells [log j,log(j+1)]; complex inner sums were explicitly integrated via their coefficient prefixes. All calculations used 55 decimal digits. Observed residuals:
- |Re(complete Hermitian Gram) - full complex squared-wave energy| ~= 1.63e-55.
- |low-gcd ordered cross - sum_d c_D(d)E_d + truncated diagonal| ~= 2.24e-55.
- first divisor collar c_D(5),...,c_D(8) = -1.

This is independent physical-wave integration vs Gram expansion to floating precision. It does not certify any infinite T, an interval enclosure or a Lean proof.

## 6. Exact native verification target and unresolved arithmetic

New passive `MoebiusLFunctionPriorityAcceptance.lean` imports the three sources, requests declaration-type `#check` and transitive `#print axioms` for the main proof bodies. The file has NOT BEEN executed.

Verification command after approved managed environment/pin setup:
  `lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusLFunctionPriorityAcceptance.lean`

Do not interpret a proposed command or source-level `#print axioms` as a successful fresh kernel/axiom audit. All new source status remains SOURCE_PROOF_CANDIDATE; parsing, expected types, full import compilation, fresh kernel, transitive axiom audit NOT_RUN. No native owner, Noe automation dispatch, CI or root import in this turn. No version/pin or existing source modifications.

Mathematics still OPEN, without silent promotion:
- `FamilyPrefixResponseReconstructionTarget`: family prefix versus true finite physical wave.
- `FamilyHigherDivisorHermitianReturnTarget`: negative FULL high-gcd Hermitian signed return (diagonals included).
- `PrimitiveDirichletFamilyLowGcdEveryRate`: RH/GRH-strength family signed low-gcd cancellation for every primitive character (not proved by finite algebra).
- `PrimitiveDirichletCausalToPrefixBridgeTarget`: true physical-family energy-to-Mertens prefix, not an arbitrary scalar bound.
- Actual source-specific Mellin/explicit-formula return for primitive complex Dirichlet characters, using their conductor, gamma factors, principal pole removal and zero set, to the maintained `Surface.Core.DirichletGRH` predicate. The old original real-zeta RH endpoint return is not this theorem.
- Non-Dirichlet Euler local-to-actual elliptic/Artin/automorphic analytic identification and family-dependent weighted gcd costs.

Current repository issue #1566 and canonical RH issue #15 must remain OPEN.

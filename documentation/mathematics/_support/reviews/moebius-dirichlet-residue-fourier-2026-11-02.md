# Dirichlet residue-class Fourier and character-average causal Möbius energies — original source, pinned orthogonality

Research date: 2026-11-02, America/Los_Angeles.
Project: grwtsk/math on existing main, with safe additive publication.
Baseline current source inspection: main commit 4bb1633f3b8c0741fd97c4b796678b6b27ecc0a2, later main descendants may contain concurrent unrelated commits. Earlier exact family source commit: b43c7d444c29bbc358defbd01da2064e23a502b4.
Mathematical status: exact finite character orthogonality, residue-wave Fourier transform, pointwise Parseval, integral energy Parseval and large-modulus mean-source identities. NEW Lean proof CANDIDATES, not kernel certificates. RH, fixed-character GRH and original signed low-gcd arithmetic remain OPEN.
Pinned environment: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

## 1. Actual repository and pinned external source

Existing source families examined:
- `MoebiusLFunctionFamilyInverse.lean`, blob 2b9c2b556de587db611478b7724c9205db90fd3b: actual arithmetic convolution inverse and `mu_chi(n)=mu(n)*chi(n)`.
- `MoebiusLFunctionHermitianPickup.lean`, blob 0643134718a73f65f1ca01f2db0804b4883676b4: original complex family response `familyFiniteResponse`, Hermitian `familyFullGram`, `familyCross`, positive finite wave energy.
- `MoebiusLFunctionComplexGramClosure.lean`, blob ff96f81e0e164f00e99ad903171af01f33816ff7: authored generic finite causal Hermitian Gram-to-integral candidate.
- `MoebiusLFunctionSingleBirthIntegralClosure.lean`, blob a511f71720de44e74284349465bd2e1d0a6853b5: authored candidate reconstruction of the original birth-gated complex prefix and actual family cumulative energy.
- `MertensPrimitive.lean`, blob 45e06c371d67bcf8c939d20a95fcbc63570546fa: original genuine mu, `pickupResponse`, `pickupResponseGram`, `pickupCross`, `pickupDiagonal`.
- `MoebiusDirichletLowGcdEnergySandwich.lean`, blob 7dade226c40e3bcc7af312dd3edb76b623670098: genuine old Dirichlet low-gcd Hermitian source and diagonal accounting.
- Existing `PrimitiveFamilyPublicPrimitiveCharacterDataFamilyGRH.lean` and `AssemblyPublicPrimitiveCharacterHalfPlusEpsilonFamilyImpliesDirichletGRHOfMelli.lean` remain conditional analytic GRH interfaces, not supplied with signed cancellation by residue orthogonality.

Previously unconnected pinned Mathlib theorem, now used directly:
- `Mathlib/NumberTheory/DirichletCharacter/Orthogonality.lean`, pinned at the exact Mathlib revision, line 79:
  `DirichletCharacter.sum_char_inv_mul_char_eq`.
  For positive q and a unit b in ZMod q:
  sum_(chi mod q) chi(b^(-1))*chi(a)
     = phi(q)*1_(a=b).
- `Mathlib/NumberTheory/MulChar/Lemmas.lean`, pinned, lines 73-80:
  `MulChar.star_apply'` says `star(chi(b))=chi^(-1)(b)`, and
  `MulChar.inv_apply'` transports the inverse to `chi(b^(-1))`.
- `MulChar.map_nonunit` sends a nonunit residue to zero for ALL characters.
The exact complex orthogonality is therefore
  sum_(chi mod q) chi(a)*conj(chi(b))
    = phi(q) if (a=b AND b is a unit), else 0.
Crucially, the all-character sum includes principal AND imprimitive characters. A primitive-only orthogonality claim here would be FALSE without conductor corrections.

## 2. Original source becomes a finite character Fourier transform

For T real set N=floor(exp T) and use the unchanged real birth-gated source r_n(u) from MertensPrimitive.

For each literal residue a in ZMod q, define
  R_(q,a,T)(u)
   = sum_(1<=n<=N,(n mod q)=a) mu(n)*r_n(u)
as a complex sum (the coefficient mu(n) remains the ORIGINAL integer Mobius).

For each ACTUAL complex Dirichlet character χ mod q,
  W_(chi,T)(u)
   = sum_(1<=n<=N) mu(n)*chi(n)*r_n(u).

Finite reindexing gives EXACTLY
  W_(chi,T)(u)=sum_(a in ZMod q) chi(a)*R_(q,a,T)(u).
There is no new kernel or approximation. The current source familyFiniteResponse(DirichletCharacterCoefficients χ) is precisely W_chi, via the previously authored Dirichlet Möbius identity. The χ coefficient annihilates nonunit residue classes automatically, but their real Möbius inventory is not deleted from the definition of each class wave.

## 3. Finite Hermitian projection and Parseval

For ANY finite original endpoint-index weight H(m,n), character orthogonality implies
  sum_(chi mod q) sum_(m,n in S)
     chi(m)*conj(chi(n))*H(m,n)
   = phi(q)*sum_(m,n in S, unit(n), m=n mod q) H(m,n).

Specialize H(m,n)=mu(m)mu(n)*K_T(m,n), with
  K_T(m,n)=integral_0^T r_m(u)*r_n(u)du.
This retains BOTH original orientations and the diagonal. Specialize to H(m,n)=1_(m!=n)*mu(m)mu(n)*K_T(m,n) for the signed original OFFDIAGONAL source.

The finite Fourier Parseval identity is
  sum_(chi mod q)|sum_a chi(a)*f(a)|²
    =phi(q)*sum_(a in (ZMod q)^×)|f(a)|²
for ANY complex f. At f(a)=R_(q,a,T)(u), the ORIGINAL physical waveform has exact pointwise Parseval:
  sum_(chi mod q)|W_(chi,T)(u)|²
    =phi(q)*sum_(a unit)|R_(q,a,T)(u)|².

All finite physical responses are continuous (the maintained pickupResponse_continuous for positive source n) and their squared norms are interval integrable. Hence finite sum/integral interchange yields the exact ENERGY identity:
  sum_(chi mod q) familyFiniteResponseEnergy(chi,T)
    =phi(q)*sum_(a unit)
         integral_0^T |R_(q,a,T)(u)|²du.

The result is nonnegative for T>=0. For T<0 the oriented integrals remain an algebraic identity, but are not nonnegative energies.

## 4. A genuine exact cancellation when the modulus exceeds the endpoint

If q>N, any m,n in {1,...,N} with m≡n(mod q) are literally equal, because both lie below q. Thus the all-character summed OFFDIAGONAL source is exactly ZERO:
  sum_(chi mod q) X_chi(T)=0, q>N.
Here X_chi is the ORIGINAL complete signed character Hermitian offdiagonal cross.

The complete character-summed full Gram then equals the original diagonal restricted to unit residues:
  sum_chi E_chi(T)
   =phi(q)*sum_(1<=n<=N,(n,q)=1)mu(n)^2*K_T(n,n),
 q>N, T>=0.
The sum on the right is <= pickupDiagonal(T)<=2*T², from the previous original-source quadratic diagonal bound. Therefore the CHARACTER-AVERAGE original causal finite energy satisfies
  [sum_chi E_chi(T)]/phi(q) <=2*T²,  q>N, T>=0.

If q is PRIME and q>N, all n in 1..N are units and the equality becomes EXACTLY phi(q)*pickupDiagonal(T). The principal χ0 is identically 1 on all source indices n<=N and has the original real zeta Möbius cross. Thus:
  sum_(χ mod q, χ != χ0) X_chi(T)=-pickupCross(T),
  q prime>N.
All nonprincipal characters of prime modulus are primitive. This is an exact source-preserving primitive-family relation, but q MUST vary with T and the individual χ values are not bounded by the average. Dividing the nonprincipal sum by (phi(q)-1) cannot justify a fixed-character GRH conclusion.

The q>N family-average polynomial allowance does NOT prove RH. The principal-character energy may be as large as phi(q)*2*T² while the average remains O(T²); with q>N≈exp T, this still allows an exponential exceptional character.

## 5. Further noncircular finite occupancy bound (paper, not yet a Lean theorem)

For a fixed residue a mod q, at most floor(N/q)+1 integers in [1,N] have that residue: the quotient n/q is injective on that residue fiber, and ranges through 0,...,floor(N/q).

Applying finite Cauchy-Schwarz to each residue wave:
  |R_(q,a,T)(u)|² <= (#fiber a)
       * sum_(n in fiber a)mu(n)^2*r_n(u)^2.

Sum over unit residues and integrate using the exact character Parseval:
  [sum_chi E_chi(T)]/phi(q)
    <=(floor(N/q)+1)*pickupDiagonal(T)
    <=2*(floor(N/q)+1)*T², T>=0.
This holds for any positive q (not just q>N). For q growing with N so N/q=exp(o(T)), the mean family energy is subexponential at every positive rate. It is NOT a fixed-q or individual-character bound. Its general fiber-capacity/Young proof has not been authored as a Lean theorem in this publication; the q>N special case above does have an authored candidate proof.

The pinned `sq_sum_le_card_mul_sum_sq` from Mathlib/Algebra/Order/Chebyshev.lean and `Finset.card_le_card_of_injOn` show a direct future formalization route.

## 6. Exact finite diagnostics executed

Test A: exact Gaussian integer arithmetic for full finite character tables at q=5 (order-four characters) and q=8 (Klein-four unit group), with deterministic integer residue source amplitudes, across N=4,9,14,25. All 8 Parseval equalities held as exact integer equations, including cancellation of nonunit q=8 residues. These are algebra tests, not Lean source kernel checks.

Test B: original real Möbius and the exact physical causal response, with 70-digit mpmath pointwise waveform evaluations at u=T/4, 3T/4, T and q,N=(5,12),(17,12). Maximum Fourier reconstruction residual ~3.63e-71; maximum pointwise Parseval residual ~5.80e-70. The complete physical source birth gate is retained.

Test C: full physical integral energies at q,N=(5,12),(5,20),(17,12), using character Gram integrals and independently integrated piecewise logarithmic-birth-cell residue waves, with 58 decimal-digit precision:
  q=5,N=12: mean E=3.2545221978113061136, residue sum=3.2545221978113061136, residual <1e-58; mean signed cross=0.31100476579711027843, unit-source diagonal=2.9435174320141958352.
  q=5,N=20: mean E=5.6743317862548361914, residue sum same to residual ~7.97e-59; mean signed cross=0.87453149827943742815, unit-source diagonal=4.7998002879753987633.
  q=17,N=12: mean E=2.9763389826059629422, residue sum same to residual ~3.98e-59; mean signed cross=2.74e-59 (mathematically EXACT ZERO), and unit-source diagonal=2.9763389826059629422.
The q=17>N=12 case is the genuine large-modulus finite cancellation. No interval enclosures or pinned Lean replay were performed.

## 7. New source modules and verification boundary

New additive Lean candidates:
- MoebiusDirichletResidueOrthogonality.lean: exact character-pair kernel from pinned Mathlib, general finite complex Hermitian projector, exact original causal residue wave, finite character Fourier reconstruction, full/offdiagonal original-source average, and zero offdiagonal average for q>N.
- MoebiusDirichletResidueParseval.lean: complete complex and real finite Parseval, pointwise original character-source Parseval, continuity of source residue waves, exact integrated family energy Parseval.
- MoebiusDirichletLargeModulusEnergy.lean: genuine original character source to previous Hermitian full Gram, exact q>N diagonal identity, finite average E_chi=phi(q)*restricted original diagonal and <=2*phi(q)*T².

All source is additive; the original μ, causal response, complex Hermitian source, low-gcd masks and RH/GRH analytic targets are untouched. A passive acceptance module will require check/axiom reports for the exact new declarations, but does not itself run them.

Verification: SOURCE_PROOF_CANDIDATE, parsing NOT_RUN, expected_types NOT_RUN, full_import_compilation NOT_RUN, fresh_kernel NOT_RUN, transitive_axiom_audit NOT_RUN. No native Lean/Lake/Elan or Noe reviewed host was accessed, and no native dispatch. No new sorry, axiom, admit or unsafe declaration prefixes. Pinned Mathlib lines supply existing orthogonality APIs, not acceptance of any new GRWTSK term.

## 8. Remaining frontier

- Prove the genuine characterwise `PrimitiveDirichletFamilyLowGcdEveryRate` for a FIXED primitive χ and growing T; it is RH/GRH-strength and is NOT implied by all-character orthogonality.
- Prove the source-exact `PrimitiveDirichletCausalToPrefixBridgeTarget` and the true primitive Mellin/explicit-formula/conductor/pole/gamma/zero return; Dirichlet GRH is OPEN.
- Original `PlainLowGcdEveryRateDyadic` and RH OPEN.
- For higher degree L functions: no |mu_L|<=1 shortcut; require actual Euler-source identification, coefficient-dependent high-gcd positive bill and appropriate analytic normalization.
- Next finite algebra opportunity: formalize the general capacity <=floor(N/q)+1 and universal Cauchy-Schwarz mean energy bound, with explicit q-growing vs fixed-q semantics.
- Before any mathematical admission, reconcile source module imports and run pinned Lean compiler, expected type checker, fresh kernel and transitive axiom audit against the exact Git blobs with an authorized managed host.

No RH or any GRH theorem has been claimed or proven.

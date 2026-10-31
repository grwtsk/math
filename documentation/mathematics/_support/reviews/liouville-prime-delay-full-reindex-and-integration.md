# Actual Liouville one-prime delay and finite covariance interchange

**Attribution:** grwtsk contributors. **Date:** 2026-10-31.
**Disposition:** complete analytic derivation; additive Lean SOURCE_PROOF_CANDIDATE with scripts for the original one-prime identity and for the physical-time finite interchange; **COMPILATION / EXPECTED TYPES / FRESH KERNEL / TRANSITIVE AXIOMS: NOT_RUN**. Publication is not native acceptance. No arithmetic gain and no RH claim.

## Original source identity and finite reindexing

For any prime p, positive integer k and real u, the unchanged physical response is
`r_n(u)=2 max(n^(-1/2)-exp(-u/2),0)`, equivalent to literal `CCC.pickupResponse`.
Because `log(pk)=log p+log k`, the birth conditions match exactly:
`log(pk)<=u` iff `log k<=u-log p`. The two nonzero branches satisfy

    r_(pk)(u) = (1/sqrt p) r_k(u-log p).

Both responses vanish before the common shifted birth and at equality. For
actual Liouville `lambda(pk)=-lambda(k)`, including `k` divisible by p;
no squarefree restriction is present. The positive-multiple index map
`k -> p*k` is injective for p>0, surjective onto all positive multiples
of p, and preserves the finite cutoff because

    p*k <= floor(exp u) iff k <= floor(exp(u-log p)).

This follows by `Nat.le_floor_iff`, `Real.exp_sub`, `Real.exp_log`,
and division by p>0. Consequently

    primeDivisorWaveform p u =
      -(1/sqrt p) waveform(u-log p)                         (P)

for all real u and all prime p. The terminal birth remains in its original
closed cutoff with zero weight. Every higher prime power survives the map.

The new `LiouvillePrimeDelayMultipleReindex.lean` contains candidate scripts
`positive_multiple_cutoff_iff`, `pickupResponse_mul_shift`,
`positive_multiple_finset_sum`, and `primeDivisorWaveformIdentity`.
The prime sign uses PINNED Mathlib definitions: `liouville_apply` and
`cardFactors_apply_prime`, not a nonexistent `liouville_apply_prime`.

## Actual finite delayed-integral interchange

For T>=0, the prior `waveform_eq_fixed_of_le` identifies `waveform u`
with the unchanged fixed finite source `fixedWaveform T u` when u<=T.
Every selected prime p satisfies log p>=0, so also u-log p<=T.
The finite fixed waveform is continuous because its positive-index
literal `pickupResponse` summands are continuous (prior source
`pickupResponse_continuous`). Each product

    fixedWaveform T u * fixedWaveform T (u-log p)

is continuous and integrable on [0,T]. Hence `intervalIntegral.integral_finsetSum`
permits the exact finite sum interchange

    weightedDelayedCovariance P w T =
      integral_0^T waveform u *
        (sum_(p in P) (w p/sqrt p)*waveform(u-log p)) du.     (I)

Unlike the predecessor theorem, (I) requires no arbitrary `hInt`
hypothesis, only the explicit primality predicate and T>=0.

Combining (P), (I), the previously written `mixedPhysicalGram` and the
complete ordered finite mixed Gram split yields

    weightedDelayedCovariance P w T =
      -[originalMixedDiagonal(P,T)+originalMixedOffDiagonal(P,T)].

No diagonal, distinct-prime overlap, squareful term, negative coefficient,
unsifted integer, or positive/negative orientation is omitted. The result
does not identify the mixed covariance with the squared selected-prime
Type II norm. There is no growth or positivity claim.

The new `LiouvillePrimeDelayFiniteInterchange.lean` contains candidate
scripts `fixedWaveform_continuous`,
`original_delayed_product_eq_fixed`,
`fixed_delayed_product_intervalIntegrable`,
`weightedDelayedCovariance_eq_integral_finset`,
and `covariance_eq_negative_complete_mixed_of_primeIdentity`.
The last candidate explicitly assumes (P), which is discharged by the
first **candidate** source module, but the two source modules have not
been natively elaborated together. A further wrapper can instantiate
the first theorem in the second after successful elaboration.

## Source bindings and boundary checks

- Original response: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`.
- Original target: `LiouvilleCausalEnergyTarget.lean`, blob `a00aaa07c067b4c88203372870b5d5d151de0de4`.
- Original open predicate: `LiouvilleGrowingPrimeBandIdentity.PrimeDivisorWaveformIdentity`, blob `477ca1d19b634a09e8d5c1e38e8035798bb0ef37`.
- Analytic source prerequisite: `LiouvilleCausalPhysicalGramIntegrability.lean`, blob `e23f62fc60ce5867e4c183117162c59ff4989b6f`.
- Previous conditional consumer: `LiouvillePrimeDelayIntegratedReturn.lean`, blob `2cce170881e2b3840f366c47500f430cc87216fb`.
- Candidate multiple reindex: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeDelayMultipleReindex.lean`, blob `3a74a74a8523c3a8f6a4ee2ea8946b11b161b31c`.
- Candidate finite interchange: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeDelayFiniteInterchange.lean`, blob `ecb3367eecf48b9adeae38254dc9e53a17e08762`.

Independent finite diagnostic: 28 original Liouville waveform checks for
p in {2,3,5,7} at u in {-1,0,log p,log(p²),1.5,3,5}; maximum floating
discrepancy 3.33e-16. This is not a proof or kernel acceptance.
A hostile `a(n)=1` multiplicative model does not satisfy (P), because
`a(pk)=-a(k)` fails: the sign cannot be inferred from finite indexing alone.

No source-bound Lean compilation, full expected-type test, trust=0 replay or
transitive axiom audit has run. The pinned environment observed previously
is Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612;
the pinned Mathlib Liouville source was inspected directly.
No native verification was dispatched, no root import or dependency pin was changed.

**Single next bounded obligation:** compile and kernel-replay both exact source
candidates against pinned Mathlib, repair any API or proof-script errors
without weakening their conclusions, then combine the already-proposed
one-prime and finite-interchange theorems into an unconditional source theorem
for the original complete mixed covariance. No arithmetic RH bound follows.

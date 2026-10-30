# Complete prime-family budgets return to the far arithmetic source

Local mathematical attribution: grwtsk contributors.

## Source and status

Mathematical source commit:
`fe605c8c41340cc33d971a9458122f176027cee0`.

Source module:

```text
GRWTSK/NumberTheory/ElementaryNumberTheory/
ArithmeticFunctionsRelatedNumbersInversionFormulas/
PickupRoughFarPrimeFamilyBudget.lean
```

Source blob: `11eb2d80fda177ebc392e29b631161194d3b87cb`.
SHA-256: `c182e3dcfbccc459677ff39567abdee797cc743905c58fab671076d84a4a40de`.
Verification issue: `grwtsk/math#1504`.

Classification: **SOURCE_PROOF_CANDIDATE**. Compilation, trust-zero elaboration,
fresh kernel replay, transitive axiom auditing and expected-interface checking
are `NOT_RUN`. Publication is not acceptance.

## Problem and actual objects

The preceding mixed-channel source writes the transported divisor-mask defect as
three exact finite sums:

1. the mixed-Gram mismatch;
2. the moved-indicator mismatch;
3. the atomic inverse-omega contribution.

Those three terms are only one part of the complete far source. The existing
prime-transport identity also contains the transported main term and the cutoff
commutator. A bound for only one of the five sectors does not return to the
original arithmetic quantity.

For a stage list `P`, closed source horizon `N`, far-region parameters `L,Z,H`,
a fresh prime `p`, and height `T`, the source quantity is

```lean
farNegative P N L Z H (gram P T).
```

The exact existing identity is

```text
farNegative
  = 2 * (transportedMain + transportedCutoff + transportedDivisorMask).
```

The factor two and every sign are part of the source. They are not adjustable
normalizations.

## New complete one-prime supplier

The module defines one-sided suppliers for the two previously unbudgeted outer
sectors:

```lean
TransportedMainSupplier
TransportedCutoffSupplier
```

It combines these with the existing three-channel supplier in

```lean
CompleteFarPrimeSupplier.
```

Its total budget is the literal sum of five allowances:

```text
main + cutoff + mixed Gram + moved indicator + inverse omega.
```

The theorem

```lean
transportedComponents_le_of_completeFarPrimeSupplier
```

first bounds the complete transported sum. The theorem

```lean
farNegative_le_of_completeFarPrimeSupplier
```

then uses membership in `freshPrimes P N` to recover primality and freshness,
invokes the exact source identity, and proves

```text
farNegative P N L Z H (gram P T) <= 2 * totalBudget.
```

The hypothesis `Z < p` is retained because the mixed-channel reduction needs it.
No divisor threshold or freshness premise is weakened.

## Finite prime-family return

Let `Q` be a finite family such that every `p in Q` is a member of
`freshPrimes P N` and satisfies `Z < p`. Let `S p` be a complete five-sector
supplier for each natural `p`; only its values on `Q` are used.

The existing exact family identity repeats the same `farNegative` once for each
prime. The new theorem

```lean
farNegative_primeFamily_le_of_completeSuppliers
```

proves

```text
(Q.card : Real) * farNegative
  <= 2 * sum_{p in Q} (S p).totalBudget.
```

Define the actual average supplied allowance by

```text
primeFamilyAverageBudget Q S
  = primeFamilyBudget Q S / Q.card.
```

For a nonempty family, the positive real cardinal can be divided out. Therefore

```lean
farNegative_le_two_mul_primeFamilyAverageBudget
```

proves

```text
farNegative <= 2 * primeFamilyAverageBudget Q S.
```

This is the direct arithmetic use of a finite prime family. It does not claim
that averaging by itself produces cancellation. A useful theorem still needs the
average of the complete budgets to be small with the required uniformity.

## Primary mathematical argument

The proof is finite order algebra built on two previously source-exact identities.

First, the three mixed-channel inequalities are added without changing their
signs or domains. The result bounds `transportedDivisorMask`. The main and cutoff
bounds are then added, producing an upper bound for the complete transported
parenthesis.

Second, the exact single-prime source identity multiplies that parenthesis by two.
For the family theorem, the exact prime-family identity is rewritten first; then
`Finset.sum_le_sum` applies the complete per-prime inequality at every member of
`Q`. The normalized theorem uses only positivity of the cardinal of a nonempty
finite set.

There is no absolute-value replacement, loss of mixed terms, or interchange of
fixed-prime and growing-family quantifiers.

## Comparison and hostile boundary

The preceding mixed-channel atlas made the three divisor-mask mechanisms visible,
but it did not itself bound the full far source. This increment is the source
return that the atlas was missing. It extends the nearest existing consumer rather
than creating another representation.

The relevant hostile boundary is the empty family. The theorem

```lean
primeFamilyBudget_empty
```

states that its total supplied budget is zero. The exact family identity then has
zero multiplying `farNegative`; it gives no estimate after division. This is why
the normalized theorem explicitly requires `Q.Nonempty`.

The boundary prevents a depleted or empty prime family from being advertised as
arithmetic cancellation. It also distinguishes source repetition from an actual
average with a positive denominator.

## Literature and proof-role boundary

Shifted convolution, Chowla/Elliott, sieve parity, localization, Selberg
rearrangement, trace methods and entropic PFR remain possible methods for building
one or more component suppliers. None is imported or instantiated here. Their
methodological relationship is recorded in the existing mixed-channel literature
entry and typed atlas.

This increment is a local source-composition theorem. Novelty relative to the
external literature is not assessed. Its utility is interoperability: a future
quantitative estimate now has an exact route back to the original far arithmetic
source.

## Downstream consumer and remaining route

The immediate consumer is the complete far-negative sector. The wider RH
programme still needs to recombine this sector with every near, diagonal, main and
approximation contribution before returning to the endpoint sum.

The terminal endpoint obligation remains a one-sided bound at every positive
exponential rate on a fixed adequately covering set of scales. A fixed prime, a
single favorable scale, or one fixed decay exponent is not sufficient.

## Structural-guidance evaluation

The typed mixed-channel decomposition changed the next research decision: the
missing consumer was not another correlation label, but the exact addition of the
main and cutoff sectors followed by the existing prime-family identity. That led
directly to the new source theorem.

This is a task-specific observation, not a measured claim that repository
organization improves AI discovery generally. No retrieval ablation, time saving,
or independent worker comparison was performed.

## Single next mathematical obligation

Construct a nonempty family `Q` and actual complete suppliers `S p`, with all
freshness and `Z < p` hypotheses proved, such that

```text
primeFamilyAverageBudget Q S
```

has a useful uniform subpolynomial allowance at the stage scales consumed by the
endpoint programme. The construction must prove all five component inequalities;
it cannot populate the supplier records with an unproved aggregate estimate.

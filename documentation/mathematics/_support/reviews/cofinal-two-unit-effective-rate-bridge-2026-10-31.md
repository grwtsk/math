# Cofinal two-unit numerical witnesses: exact effective-rate boundary

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition:** the unconditional cofinal numerical witness is not constructed. The new source proves the sharp arithmetic bridge from a relative line-credit estimate to the required absolute two-unit gap, an equivalent one-unit residual formulation, and a hostile density-one count model. The source is a `SOURCE_PROOF_CANDIDATE`; Lean compilation, expected-type checking, fresh-kernel replay, and transitive axiom audit are `NOT_RUN`.

## 1. Exact source target

For a positive-height cutoff `H`, write

- `N_H = positiveHeightCount H` for the complete analytic-multiplicity count;
- `K_H` for a certified subset of the same canonical head;
- `C_H = mass K_H multiplicity`, with every member of `K_H` proved on `Re z = 1/2`.

The existing strict certificate is `N_H < C_H + 2`, after setting the lower credit to `C_H` and the upper count to `N_H`. The imported source proves that such certificates at a cofinal family of heights are equivalent to the canonical Riemann Hypothesis.

The new proposition `CofinalAbsoluteOneUnitResidual` records the same condition as

```text
forall B, exists H >= B and K_H,
  K_H subset positiveHeightHead H,
  every member of K_H lies on the critical line,
  N_H <= C_H + 1.
```

Natural-number discreteness proves this is exactly equivalent to the original strict inequality. It does not supply the finite inventory.

## 2. Scaled relative estimates and the missing absolute rate

Let `N,C,q,r` be natural numbers with `r <= q`. Assume

```text
(q-r) N <= q C.                         (1)
r N < 2 q.                              (2)
```

Then `N < C+2`.

Indeed, if `N >= C+2`, multiplication by `q` gives

```text
q C + 2 q <= q N.
```

From (1),

```text
q N - r N <= q C,
```

hence `q N <= q C + r N`. Therefore `2q <= rN`, contradicting (2).

The formal theorem is

```lean
strict_two_unit_of_scaled_deficit
```

and `CofinalScaledDeficitWitness` requires the two inequalities on the same exact positive-height inventory at cofinally many heights. Its source-level implication to RH is explicit. Under RH, the noncomputable complete head gives the converse with `q=1,r=0`; this is a logical witness, not a numerical enumerator.

## 3. Current optimized ratio

For the current pointwise optimized line-credit ratio

```text
269 N <= 400 C,
```

the scaled deficit is `q=400`, `r=131`. The absolute condition is therefore

```text
131 N < 800,
```

which is equivalent over the natural numbers to `N <= 6`. This recovers the existing finite threshold exactly. The ratio has no all-height consequence once the dyadic count exceeds six.

## 4. Sharp density-one obstruction

For any `q>=1` and `k>=q-1`, define the synthetic counts

```text
N_k = 2(k+1),
C_k = 2k.
```

Then

```text
(q-1) N_k <= q C_k,
N_k = C_k + 2,
N_k >= 2q.
```

Thus the credited proportion is at least `1-1/q`, arbitrarily close to one as `q` grows, while one reflected simple pair remains forever and the strict gap fails exactly at equality. This is a natural-number obstruction, not an asserted zeta-zero configuration.

Consequently, fixed proportions, asymptotic density one, and any rate with only `r_H/q_H -> 0` are insufficient. The required same-window statement is

```text
(r_H / q_H) * N_H < 2,
```

in integer form `r_H N_H < 2 q_H`.

## 5. Checked routes that do not supply the rate

1. The optimized two-thirds/Montgomery--Taylor inputs give fixed proportional losses and therefore stop at the six-unit threshold.
2. The formalized `Re s > 7/8` detector has its analytic boundary hard-coded into the continuation and signal exponents. Its conclusion does not create a new detector below `7/8`, and it gives no absolute zero-count residual.
3. A previously announced density-one compressed-Weil moment programme was retracted: its higher even moment claims had an essential analytic gap. Even a valid density-one statement would still fail the explicit two-label model above without an effective absolute rate.
4. Verified finite-height RH computations give genuine bounded certificates, but one finite cutoff is not cofinal.
5. The endpoint/weighted-prefix routes remain exact alternative RH-equivalent arithmetic targets; proving one of their all-positive-rate estimates would imply RH and then the ideal cofinal witness, but those estimates are not discharged here.

## 6. Verification request

Pinned branch source:

```text
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
  NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/
  CofinalTwoUnitEffectiveRateBridge.lean
```

Required checks on an independently authorized exact checkout:

```bash
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CofinalTwoUnitEffectiveRateBridge
lake env lean --trust=0 -DwarningAsError=true GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CofinalTwoUnitEffectiveRateBridge.lean
```

Also check every exported declaration type, print transitive axioms, and run the supported fresh-kernel checker over the actual imported closure. Reject `sorryAx`, new research axioms, weakened source predicates, and any claim that the noncomputable RH converse is a numerical algorithm.

## 7. Remaining first theorem

The first genuinely new arithmetic theorem must construct, cofinally in `H`, either

```text
N_H <= C_H+1,
```

or a scaled estimate with

```text
(q_H-r_H)N_H <= q_H C_H
and
r_H N_H < 2q_H.
```

No currently inspected proportion, zero-free strip, finite computation, or density statement supplies this absolute inequality. The cofinal numerical witness and RH therefore remain unproved.

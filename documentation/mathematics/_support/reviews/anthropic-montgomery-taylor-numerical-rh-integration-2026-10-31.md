# Source-exact numerical RH completion using Anthropic's multiplicity-aware zeta23 results

Local attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition:** A numerical-plus-density theorem is not a proof of RH without a separate unbounded-height exclusion. This increment extracts the sharp *six-zero* finite-window consequence of the optimized Montgomery–Taylor fractions using the actual canonical zeta zero divisor and exact reflection. It does not assert the eventual Anthropic inequalities at small heights, import incompatible external Lean, declare synthetic zeros, or close `WeightedPrefixSquareAllRate`.

## 1. The original mathematical inputs, not recreated

1. **Actual Anthropic source:** `anthropics/formal-math/zeta23` README blob `302fa9094863279d0ec83fca012d2b7bf59d5ccd`; its paper by Levent Alpöge and Ralph Furman, *More than two thirds of the zeta zeros are simple and on the critical line*, 2026, https://arxiv.org/abs/2608.13637. External source `Zeta23/Statement.lean` blob `b8a95eb20cbade61a33f165004c34d1ce1674947`, `Zeta23/FinalMult.lean` blob `c2034d2311be8eb2687b5f7c7cd2d7a1f9ada422`, and external `AUDIT.md` blob `a5baf29bd4cc8d9833feec7a4d4438338e400594`. Its own reported build/comparator/axiom checks are evidence only for the upstream pinned source and toolchain (Lean v4.33.0-rc2, Mathlib `51e6992efd06126df61a496bebf8f49482a4e129`), not GRWTSK.
2. **Original zeta zero divisor:** `CanonicalZeroDivisor.ZeroPoint`, `multiplicity = analyticOrderNatAt riemannZeta`, positive in source, plus `PositiveHeightCountDeficit.positiveHeightHead`; local `TwoThirdsCanonicalMultiplicityBridge.dyadicHead T` is exactly the positive-height open-left/closed-right `(T,2T]` window. Its true `dyadicCount`, `dyadicSimpleLineCount`, `dyadicDistinctCount`, `dyadicMultiplicityExcess` retain analytic multiplicity. Existing source blobs at inspection: `TwoThirdsCanonicalMultiplicityBridge.lean` `d566794663757fa4413d56a2d43765d53e0858f3`, `TwoThirdsPrismaticOrientationGate.lean` `6e3d8e8683a7dd5a89e457c0c402051785c56c91`, `ReflectionMultiplicityBudget.lean` (read on current main), `PositiveHeightCountDeficit.lean` `e439289a4605b5c05f94286075477efea0b95473`.
3. **Already written numerical criterion:** `PositiveHeightCountDeficit.rhThrough_of_positive_credit` and `riemannHypothesis_of_positive_count_credits` consume a certified true on-line submultiset of credit `C` and a true total zero count upper `U` with `U<C+2`. The factor two comes from a genuine pair `rho,1-conj rho` at the same positive ordinate, with both orders positive. Numeric sign changes, height enclosures or noncomputable exact finite heads without certified total counts do not establish `U<C+2`; see local #106, #134, #135. `BoundedHeightCriterion.RHThrough N` keeps finite-height conclusions finite.
4. **Stronger externally reviewed zero-free input:** `grwtsk/math/documentation/mathematics/_support/reviews/liouville-actual-spectral-zero-free-return.md`, blob `865b57cd3a852e9e32773ffcf6bc926ce36e57a3`, cites accepted `GTimG/QuasiRiemannTracker` PR #99 and source theorem `Candidate.bound` at tracker revision `fc2f46afbfda62351055d3c12fcacd4f6916cc63` (source blob `1ad503ea95be417a7e9f7fc8ab43be30170f3a0f`). It asserts zeta/Dirichlet nonvanishing for `Re s > theta_* = 0.8733819666133`, with the pole excluded. This is external checker evidence and a classical analytic-to-summatory transfer in the local review, **not** a locally imported fresh kernel proof. Functional-equation symmetry restricts candidate off-line zeros to `1-theta_* <= Re rho <= theta_*`.
5. **Actual weighted prefix:** `LiouvilleWeightedPrefixSquareCriterion.WeightedPrefixSquareAllRate` remains the RH-strength unproved target. The same reviewed zero-free source bounds original causal Liouville energy with fixed exponent `alpha_* = 2 theta_* - 1 = 0.7467639332266 + epsilon`, not all-positive-rate control. Neither source changes the exact original endpoint `P`.

## 2. Stronger Anthropic proportions and their proper quantifiers

For positive-height dyadic `(T,2T]` write `N(T)` for count **with** analytic multiplicity, `S(T)` for **simple, on-line** count, `D(T)` for distinct count, `R(T)=N-S` for the complete non-simple-or-off-line residual and `E(T)=N-D` for multiplicity excess. Existing Lean gives `N=S+R` and `N=D+E`, and off-line multiplicity mass ≤ `R`.

The independent optimized Montgomery–Taylor result has constants

    c_1* = sqrt(2)*tan(1/sqrt(2)) / (1 + tan(1/sqrt(2))/sqrt(2))
         = 0.753296067856070677...
    c_S  = 2 - 1/c_1* = 0.672500703679411645...
    c_D  = (3 - 1/c_1*)/2 = 0.836250351839705822...

Its epsilon-form is **for every** epsilon>0 **there exists** a threshold T0 such that **for every T≥T0**,

    S(T) >= (c_S-epsilon)*N(T),
    D(T) >= (c_D-epsilon)*N(T).

Crucially, there is no asserted effective T0 or universal finite-T version. Since

    c_S > 269/400 = 0.6725,
    c_D > 669/800 = 0.83625,

we may obtain, only for all sufficiently large T under exact transfer of the independent theorem to GRWTSK's count types, the rational pointwise budgets

    269*N <= 400*S,     669*N <= 800*D.

The tiny decimal margins are **mathematical comparator calculations**, not a new numerical proof of the two theorems. The new Lean consumer takes these budgets **as explicit hypotheses** at one particular T; it makes no external import and does not claim it has constructed the input.

Then exact natural-number algebra gives

    400*R <= 131*N,
    800*E <= 131*N.

Thus the optimized source bounds the residual share by approximately 0.3274993 and the excess share by 0.1637497, with the exact epsilon caveat. If the actual dyadic count is at most six, then `R<=1` (since 131*6<400*2) and `E=0` (since 131*6<800). An off-line zeta zero necessarily brings its distinct reflected partner in the **same** dyadic head, each with positive multiplicity, so it would require `R>=2`, contradiction. Consequently **every actual zero in any such window is simple and on the line**, provided the pointwise rational percentages are ALSO supplied for that window.

The threshold six is sharp for this counting argument. The abstract seven-label fixture `N=7,S=5,D=7,R=2,E=0` obeys both rational percentage inequalities and permits one reflected off-line pair. This is a **synthetic finite configuration**, not evidence for an off-line zeta zero. At `N=6`, the headline **2/3** simple bound alone would allow `S=4,R=2`, but the optimized `0.672500703...` forces `S>=5`; similarly 5/6 distinct alone permits one multiplicity excess at N=6, whereas the optimized distinct proportion excludes it.

**Vacuity warning:** the Anthropic theorem is only eventual at large heights, where Riemann–von Mangoldt implies `N(T,2T)` grows without bound. The small-count conclusion therefore does not give RH by invoking the eventual theorem. It is a precise finite-instance implication and an obstruction certificate, not a universal numerical completion.

## 3. The right numerical-plus-analytic completion contract

Let `H` be a **separately verified** finite-height bound `RHThrough H` (not just a list of approximate zeros), and assume the external source's right half-plane zero-free theorem has been translated as

    forall z : CanonicalZeroDivisor.ZeroPoint, z.re <= theta_*.

The exact source reflection then forces each potential off-line zero to obey

    |Im z| > H,
    1 - theta_* <= Re z <= theta_*,
    Re z != 1/2.

This is an exact source-typed **localization of the remaining problem**. No finite set of checked heights and no positive asymptotic on-line proportion excludes all such potential points.

The established numerical criterion really closes finite height N only if the actual count credit meets

    U(N) < C(N) + 2

for **that height**, with the count `U(N)` from an independent complete Turing/argument-principle theorem and `C(N)` from certified on-line zero families. To prove RH by this route, construct the uniform all-height supplier or a genuine analytic tail implication. Anthropic's asymptotic residual is O(0.3275*N(T,2T)), which diverges with N and supplies no `<2` gap. A single sparse reflected off-line pair above any finite H is consistent with these numerical inequalities; this is a logical countermodel, not a zeta counterexample.

A second allowed route is the existing `WeightedPrefixSquareAllRate` and the original Möbius endpoint proof, but `c_S` and `c_D` supply neither the all-positive-rate Liouville energy bound nor the principal and complete signed mixed-sector correlation cancellation. `2/3` zero counts cannot substitute for a frequency-energy estimate uniform in every Fourier height.

## 4. Lean source and evidence boundary

A new source-only candidate `AnthropicMontgomeryTaylorNumericalGate.lean` imports the **actual existing** `TwoThirdsPrismaticOrientationGate` and `ReflectionMultiplicityBudget` and proves theorem candidates:

- `residual_fourhundred_le_onehundredthirtyone` and `excess_eighthundred_le_onehundredthirtyone`;
- `residual_le_one_of_at_most_six`, `multiplicityExcess_eq_zero_of_at_most_six`;
- `reflected_mem_dyadicHead`, `reflected_offLine` using the **genuine** critical zeta reflection;
- `every_zero_on_line_of_at_most_six`, `every_zero_simple_of_at_most_six`, `every_zero_simple_on_line_of_at_most_six`;
- `seven_le_count_of_offLine`, `seven_label_hostile_ratio_fixture`;
- `remaining_offLine_above_checked_height`, `strip_of_right_halfplane_supplier`, `unchecked_offLine_localization` consuming the existing bounded-height and source zero-free interfaces.

These are **mathematical consequences of clearly named hypotheses**, not an admission of external statements or a proof of Riemann Hypothesis. The source reuses exact `ZeroPoint`/`multiplicity`, not an external simulated complex-root inventory. A small, independent exact integer diagnostic checks the natural-number implications for every `N<=6`, plus the N=7 sharp obstruction. This is finite arithmetic, not Lean compilation.

Compilation, theorem elaboration, expected-type check, fresh independent kernel replay and transitive axiom audit: `NOT_RUN`. A future separately authorized, exact-source executor must compile the unchanged complete imports; run `#check` and `#print axioms` for the new declarations, including generated/opaque/private dependencies; inspect source and external theorem translation; and record actual machine results before promotion. No `sorry`, new axiom, CI, native runner, controller, scheduler, root import or Mathlib version change is needed or claimed in this source publication. The prior Anthropic `AUDIT.md` is upstream evidence only, not a substitute for local acceptance.
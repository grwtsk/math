# All-height RH count-gap attempt: cofinal numerical certificates and the exact Anthropic-ranktrace obstruction

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition: RH NOT PROVED.** The user requested either an actual two-unit numerical count gap at every height or a zero-free proof throughout the residual strip. Neither follows from the existing certified finite-height input, the external Alpöge--Furman/Anthropic asymptotic 2/3 and optimized Montgomery--Taylor proportions, or the separately checked quasi-RH half-plane. This note proves a strict reduction of the COUNTING quantifier and a source-exact multiplicity-sensitive residual lower bound, and constructs a hostile combinatorial model showing the quantitative inputs do not imply a gap. It preserves the preexisting actual-zeta divisor and all unresolved mathematical and Lean checking obligations.

## 1. Exact current sources and trust boundary

Math main inspected at `c69e5579fc919e4360a393930fd1b0e78a66f89e`:

- `.../CanonicalZeroDivisor.lean` Git blob `68178fd4b3342993981858930aa4440f57bd4052`, with `ZeroPoint`, `multiplicity := analyticOrderNatAt riemannZeta`, complete `heightHead`, `heightCount`; this is a NONCOMPUTABLE logical finite set, not a certified enumerated zero file.
- `.../PositiveHeightCountDeficit.lean` blob `e439289a4605b5c05f94286075477efea0b95473`, with the literal `positiveHeightHead`, its complete count, `rhThrough_of_positive_credit`, and `riemannHypothesis_of_positive_count_credits`.
- `.../BoundedHeightCriterion.lean` blob `b7a806ab7a318fe9207e835741e8bd07a2c8c566`, with `RHThrough`, `RHThrough.mono`, `riemannHypothesis_iff_all_heights`.
- `.../TwoThirdsPrismaticOrientationGate.lean` blob `6e3d8e8683a7dd5a89e457c0c402051785c56c91`, with the actual canonical dyadic simple-line/residual/offline partitions and the exact epsilon-form orientations. An injective prismatic comparison into vanishing cohomology is NOT constructed here or there.
- `.../AnthropicMontgomeryTaylorNumericalGate.lean` blob `60773f1e8224a6f1b76cbeafdae1b05b375d0c84`, with the pointwise CONDITIONAL rational `269*N <= 400*S` and `669*N <= 800*D` and the at-most-six threshold. Its hypotheses are NOT proved for every dyadic window.
- `.../ReflectionMultiplicityBudget.lean` (the existing module), with canonical reflected points and the complete finite source `pair_le_mass` supplier from `GRWTSK/Combinatorics/WeightedPairBudget.lean` blob `e1494d27677a1e9abdc72bf52e782ebf563b27c6`.

Independent literature: Levent Alpöge and Ralph Furman, *More than two thirds of the zeta zeros are simple and on the critical line*, arXiv:2608.13637 (2026). Anthropic's `anthropics/formal-math/main` observed at `16a5ce41304fcdaea4e0be7c132e1c361dc26da5`, `zeta23/README.md` blob `302fa9094863279d0ec83fca012d2b7bf59d5ccd`, `zeta23/Zeta23/Statement.lean` blob `b8a95eb20cbade61a33f165004c34d1ce1674947` and `AUDIT.md` blob `a5baf29bd4cc8d9833feec7a4d4438338e400594`. The upstream artifact reports a full Lean library build and standard-axiom audit under Lean v4.33.0-rc2 / Mathlib `51e6992efd06126df61a496bebf8f49482a4e129`; no accepted build of GRWTSK's changed bridge is inherited.

The merged October 30 quasi-RH tracker source `GTimG/QuasiRiemannTracker@fc2f46afbfda62351055d3c12fcacd4f6916cc63`, `.../Candidate/Main.lean` blob `1ad503ea95be417a7e9f7fc8ab43be30170f3a0f` contains an all-Dirichlet nonvanishing theorem for `Re s>8733819666133/10000000000000`. Its external verifier receipt is discussed in pre-existing `liouville-actual-spectral-zero-free-return.md` blob `865b57cd3a852e9e32773ffcf6bc926ce36e57a3`. No local transfer/kernel check is represented here. The ordinary functional equation then gives the candidate strip `1-theta_* <= Re rho <= theta_*` for actual nontrivial zeros when the external theorem is accepted at that scope.

Platt and Trudgian, *The Riemann hypothesis is true up to 3·10^12*, Bulletin LMS 53 (2021), 792–797, DOI 10.1112/blms.12460, rigorously verifies every zero through positive imaginary height `3*10^12` on the line, and simple. This is an external mathematical input, NOT an imported or locally replayed `RHThrough` Lean proof.

## 2. New complete analytic proof: a cofinal strict gap suffices

For any positive integer H, let `P(H)` be the genuine complete positive-height `ZeroPoint` head up to H, each zero weighted by its real analytic order `m(z)>=1`. Let `K_H` be a certified subset of that SAME head whose points lie on `Re z=1/2`, and let `C_H <= sum_(z in K_H)m(z)` and `sum_(z in P(H))m(z) <= U_H` be proved integer bounds. A **strict two-unit certificate** is

    U_H < C_H + 2.

The existing `rhThrough_of_positive_credit` proves `RHThrough H` from this certificate. Its proof is source-exact: if z is off line at positive height, its functional-equation reflection `z* = 1-conj z` is distinct, remains at the SAME positive height, and both z and z* are outside the certified on-line set. Then

    U_H >= sum_(P(H))m >= C_H + m(z)+m(z*) >= C_H+2,

contrary to the strict gap. Negative ordinates are treated by conjugation and ordinate zero is already excluded by a separate existing source theorem. Nothing relies on assuming simple zeros or exact equality of the reflected multiplicities.

**Quantifier improvement (proved mathematically, new Lean candidate):** the strict gap need NOT hold at every natural height. Define `CofinalCertifiedTwoUnitGap` by

    forall B : Nat, exists H : Nat, B <= H and exists (K_H,C_H,U_H),
      K_H subset positiveHeightHead H,
      all z in K_H on critical line,
      C_H <= sum_(K_H) m(z),
      positiveHeightCount H <= U_H,
      U_H < C_H+2.

Then `CofinalCertifiedTwoUnitGap -> RiemannHypothesis`: for each fixed bound B choose an admitted H>=B, use `rhThrough_of_positive_credit H` and monotonic restriction `RHThrough.mono` to prove `RHThrough B`, and finish with `riemannHypothesis_iff_all_heights`. Conversely **assuming RH**, the ideal (NONCOMPUTABLE, not numerical) choice `H=B`, `K_H=P(H)`, and `C_H=U_H=positiveHeightCount H` establishes the cofinal proposition. Therefore

    CofinalCertifiedTwoUnitGap <-> RiemannHypothesis

is a genuine equivalence at the logical mathematical level, NOT a proof of the proposition and not a computational procedure. If a genuine off-line pair exists at height h, every height H>=h has at least two units outside every honest on-line inventory; hence no cofinal strict gap can be produced at high H. Computations through ANY finite limit cannot establish a cofinal family on their own.

## 3. Optimized Anthropic counts do not close the strict gap

For one actual canonical positive-height dyadic window `(T,2T]`, use the preexisting finite source quantities

    N = dyadicCount T,
    S = dyadicSimpleLineCount T,
    R = dyadicResidualMass T = N-S,
    D = dyadicDistinctCount T,
    E = dyadicMultiplicityExcess T = N-D.

The external Montgomery--Taylor theorem has optimized asymptotic thresholds approximately 0.67250 for S/N and 0.83625 for D/N. The **literal rational gates** previously published in `AnthropicMontgomeryTaylorNumericalGate.lean` are

    269*N <= 400*S,       669*N <= 800*D.

At any T satisfying these premises, arithmetic gives the existing exact inequalities

    400*R <= 131*N,
    800*E <= 131*N.

Suppose an ACTUAL off-line zero z is present in the window. Its reflected partner z* is a distinct point of the SAME head. Let m1=m(z), m2=m(z*). Both are in the residual inventory and the multiplicity-excess inventory accounts for `(m1-1)+(m2-1)`. The **new exact finite deductions** are

    400*(m1+m2) <= 131*N,
    800*((m1-1)+(m2-1)) <= 131*N.

No equality of m1 and m2 is needed. If an INDEPENDENT proof of m1=m2=m is supplied, the form becomes

    800*m <= 131*N,
    1600*(m-1) <= 131*N.

Thus any such pair needs at least N=7 units for m=1, N=13 for m=2, N=25 for m=3, N=37 for m=4, etc. These are **necessary** counting thresholds, not proofs that such zeta zeros exist. The bounds are sharp for the purely abstract all-simple-offline-pair model at m=1: for EVERY integer N>=7,

    S=N-2, D=N, R=2, E=0,
    269*N <= 400*(N-2), 669*N <= 800*N.

All identities are elementary integers (a source-candidate Lean `omega` proof and independent finite exact diagnostics). These are synthetic labels, NOT actual zeta zeros, and should never be passed to the canonical `ZeroPoint` type.

**Logical non-implication:** A formal abstract zero configuration may have every low-height zero on line and one reflected off-line simple pair at an arbitrarily high ordinate, with all other zeros simple and on line. The pair may lie at `Re=3/4` and `Re=1/4`, satisfying the verified right-strip bound if the external theta_* theorem is accepted. The two missing units are negligible compared with N(T,2T) as T grows, so ANY fixed proportion c<1 (including Anthropic's optimized bounds) is compatible with such a pair. A construction with sufficiently many on-line simple points per dyadic window can also satisfy a prescribed zero-count leading asymptotic. This is an abstract **independence/hostile fixture**, not a construction of a Riemann-zeta function or a counterexample to RH. It demonstrates that the NUMERICAL-COUNT and density PROPORTION statements alone cannot logically exclude individual off-line zeros.

Asymptotic epsilon-form lower bounds are NOT uniform pointwise gates for every T. A new local transfer and onset proof would be required even before applying the rational thresholds beyond the unknown eventual height. The accepted external Anthropic theorem itself cannot be used as if `R<=1`, since its actual allowance is roughly 0.3275*N, which grows with N.

## 4. Independent zero-exclusion route and the spectral obstruction

The external half-plane plus reflection alone narrows the possibility to

    H0 < |Im rho|,  1-theta_* <= Re rho <= theta_*,  Re rho !=1/2,

using the Platt--Trudgian H0=3*10^12 as an external verified fact and the separately accepted quasi-RH input. A point at 3/4 is not excluded by this strip, nor does any positive-density simple-line theorem preclude finitely many such points.

The actual Liouville Mellin transform is the earlier source-exact `zeta(2s)/zeta(s)`, and the full weighted-prefix moment is `J(T)=integral_1^(exp T) L(x)^2/x^2 dx`. The previous source derivation gives

    limsup_(T->infty) log(1+J(T))/T = 2*Theta - 1,

where Theta is the supremum of nontrivial zero real parts. Hence a hypothetical zero of real part beta>1/2 forces arbitrarily high J(T) spikes faster than `exp(delta*T)` for EVERY delta<2*beta-1. The external theta_* theorem gives only the FIXED global upper-growth exponent `2*theta_*-1=0.7467639332266`, entirely compatible with beta in `(1/2,theta_*]`. The optimized fraction of OTHER zeros on the line offers no cancellation bound for this one pole. The existing `CriticalDensityCriterion.density_growth_iff_riemannHypothesis` is correctly an EQUIVALENCE, not an unconditional source of the critical bound.

A genuine analytic closure would have to prove, independently of RH, either `J(T) <= C_eta exp(eta*T)` for every eta>0 (or equivalent full signed-source estimate), or an actual zero-by-zero exclusion mechanism throughout the closed remaining strip for ALL unbounded heights. Neither is supplied by the inspected sources. A proposed prismatic input in `TwoThirdsPrismaticComplexBridge.lean` is a conditional cochain comparison; it lacks a proved source-to-genuine-prismatic chain map, boundary reflection, target cohomology vanishing, and genuine target prism. A new theorem returning `RiemannHypothesis` from those hypotheses does not discharge them.

## 5. What a numerical proof would have to deliver

Existing #106/#133-#135 distinguish sample sign roots from exact TOTAL zero count and sound multiplicity-aware matching. At each of ARBITRARILY LARGE certified heights H, the positive-count route requires:

1. a finite, nonoverlapping source-verified critical-line zero family with exact multiplicity credit C_H;
2. an independently rigorously certified bound U_H on the ENTIRE actual zeta zero divisor, including all multiplicities, through H;
3. the strict integer comparison U_H<C_H+2;
4. a mathematical theorem constructing an unbounded/cofinal sequence of such certificates or an equivalent uniform tail-proof mechanism.

This is not achieved by computing finitely many heights, adding a numerical random-sign model, or importing an asymptotic density theorem. The direct route instead requires an independent every-height local zero exclusion with a correct comparison to the original zeta function and no hidden RH-equivalent premise.

## 6. Status and source-verification policy

New source candidate: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CofinalTwoUnitNumericalReflectionGap.lean`. Its new mathematical outputs are cofinal conditional transfer, the RH-equivalent logical characterization, the multiplicity-sensitive optimized residual bound and the arbitrarily large finite-hostile count fixture.

NO all-height or cofinal numerical witness has been constructed. NO new unconditional zero-free theorem improves theta_*. NO actual zeta off-line zero is claimed. There is NO new native Lean/Lake compilation, expected-type verification, fresh kernel replay or transitive axiom audit. Maintain `COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. Static candidate proof code is not an accepted formal proof until source-bound replay. No executor, new scheduler, automation or private proof service was dispatched.
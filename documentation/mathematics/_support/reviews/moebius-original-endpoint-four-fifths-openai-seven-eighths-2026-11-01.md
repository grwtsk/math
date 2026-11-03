# Original complete signed Möbius endpoint: fixed 4/5 energy rate from the published OpenAI 7/8 theorem, with uniform dyadic constants

Local attribution: grwtsk contributors. Research date: 2026-11-01. Mathematical source integration and formalization assistance by OpenAI ChatGPT.
Disposition: a mathematically proved, source-exact STRICT exponent 4/5 consequence of the EXTERNAL published 2026 fixed 7/8 zeta zero-free theorem, the classical Perron zero-free-to-Mertens power transfer, and elementary original-source causal integration. This is not an independent new zero-free theorem and is not a fresh Lean kernel acceptance of external or local sources. It proves ONE fixed exponential rate below one, not the every-positive-rate RH condition. The stronger external PR103 0.747 source is separately conditional on an unreplayed theorem/adapter and is not used as an accepted input here.

## 1. External mathematical theorem and exact assurance boundary

A public OpenAI 2026 mathematical release, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re s>7/8*, dated September 30, 2026, states for the actual Riemann zeta function:

    forall s in C, Re(s)>7/8 => zeta(s)!=0,            (1)

with the principal-character pole excluded in companion Dirichlet results. This is an established-in-the-published-formalization result, not an RH assumption: it only excludes zeros to the RIGHT of 7/8, not zeros with real parts in (1/2,7/8]. The exact public source is:
- repository `openai/math`, revision `adc7f1241b42e322a6451854ab7e4b4c146bf78a`;
- file `lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean`, Git blob `46c67f4000906b1391a471d6e6396ac0da3c16a5`;
- declaration `OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re` (also the Dirichlet analog).
- manuscript and statement scope at `https://github.com/openai/math/blob/adc7f1241b42e322a6451854ab7e4b4c146bf78a/lean/docs/003.md`; release paper `https://github.com/openai/math/blob/main/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026/paper.pdf`.

IMPORTANT: files in `lean/ComparatorChallenges/` are challenge STATEMENTS with `sorry`; they are not the actual proof modules. The real final theorem is in `lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean`. The declaration is a proof using `SevenEighths.ProbeFinalAssemblyUnconditional.zeta_nonzero`.

An independently published source-specific verification effort by `tomoto0/quasi-riemann-hypothesis-7-8-verification` at `https://github.com/tomoto0/quasi-riemann-hypothesis-7-8-verification` records, on the exact OpenAI commit above, successful Lean 4.34.1 compilation of `OAI.NumberTheory.DirichletL.Nonvanishing`, a checked exact comparator statement and `#print axioms` showing only `propext`, `Classical.choice`, `Quot.sound`; it also reports successful leanchecker replay of the two final modules. The report notes that its all-module fresh replay was stopped after about 60 minutes, and Mathlib official cached `.olean` files were used. This is INDEPENDENT REPORTED evidence, not a new GRWTSK execution receipt, and source/dependency revisions must be checked before reusing it for a different commit. Original OAI theorem blob `46c67...` is also unchanged at later `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, but unchanged top-level bytes alone do not certify an altered closure.

The precise third-party trust record is in `https://github.com/tomoto0/quasi-riemann-hypothesis-7-8-verification/blob/main/lean/lean_build_report.md`. The present GRWTSK increment does not import this external source into the local Lean build, re-run its proof, or claim independent audit of the external deep theorem.

## 2. The separately justified classical zero-free-to-Mertens bridge

For any `7/8<theta<1`, a standard analytic Perron/contour and reciprocal-zeta transfer from (1), with a STRICT positive margin to the zero-free boundary, yields a CONSTANT `C_theta>=0` independent of x such that

    |M(x)|<=C_theta*x^theta, x>=1,                      (2)

where `M(x)=sum_(1<=n<=floor x)mu(n)` is the actual original integer Möbius summatory function.

The strict margin pays the truncated Perron integral, bounds on `1/zeta` in vertical lines of a zero-free closed sub-half-plane, the smoothing/removal-of-smoothing and finite initial x. This step is established classical analytic number theory (cf. E. C. Titchmarsh, *The Theory of the Riemann Zeta-Function*, revised D. R. Heath-Brown), but its FULL analytic proof is NOT imported into current pinned Lean/Mathlib. Its source-faithful PROP interface is already explicitly published in `MoebiusStrongFixedPowerPR103.ZeroFreeToMertensPowerBridge`; this record does NOT disguise it as a new kernel theorem.

Choose theta=9/10, strictly above 7/8. Then (2) yields ONE fixed C>=0, for ALL real x>=1 and therefore all physical times u>=0:

    |M(exp u)|<=C exp((9/10)u).                         (3)

No fixed-exponent Mertens bound is assumed as an independent conjecture. It is obtained from (1) by the external CLASSICAL bridge, and the external zero-free result is the exact new arithmetic ingredient. The value of C is not numerically supplied; all subsequent constants are explicit functions of this ONE source constant.

## 3. Source-exact original two integrations: complete rate 4/5, not a model

The original GRWTSK source `MertensPrimitive.lean` (Git blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`) defines

    pickupVelocity(u)=exp(-u/2) M(exp u)
    wholePickup(t)=integral_0^t pickupVelocity(u)du
    pickupEnergy(T)=integral_0^T wholePickup(t)^2dt.

From the ACTUAL Mertens value (3), for every u>=0,

    |pickupVelocity(u)|<=C exp((2/5)u).               (4)

Integrating the true original signed primitive in original real physical time,

    |wholePickup(t)|
       <=C integral_0^t exp((2/5)u)du
        =(5C/2)(exp((2/5)t)-1)
       <=(5C/2)exp((2/5)t).                         (5)

No birth or squareful coefficient changes. Squaring only AFTER forming this true primitive, and integrating the original positive energy,

    pickupEnergy(T)
       <=(25C^2/4) integral_0^T exp((4/5)t)dt
        =(125C^2/16)(exp((4/5)T)-1).                 (6)

This is stronger than the simple upper with exp((4/5)T) and has the correct H(0)=0. It is a completely explicit global STRICT power envelope for the original signed source, not just selected strong/weak geometry.

The already maintained original full ordered Gram, including BOTH off-diagonal orientations and exact diagonal, satisfies

    pickupEnergy(T)=pickupDiagonal(T)+pickupCross(T),
    pickupDiagonal(T)>=0  (T>=0).

The ACTUAL five-moment signed endpoint source `PickupEndpointQuadrature.lean` (Git blob `2606536c56bdcb33d120aeddfbcbeef793e31ba1`) satisfies the previously paid curvature allowance

    |endpointSum(T)-pickupCross(T)|<=1/4.

Combining with (6), for EVERY T>=0,

    endpointSum(T)
       <=(125C^2/16)(exp((4/5)T)-1)+1/4
       <=(125C^2/16)exp((4/5)T)+1/4.               (7)

This is a true one-sided bound for the COMPLETE ORIGINAL signed balanced endpoint; no original prime-bank credit, diagonal, mixed pair, cutoff, birth, or signed curvature correction was removed or double-subtracted. Unlike a PNT rate-one logarithmic saving, the exponential rate is the strict fixed number `4/5<1`.

## 4. Uniform constants across the COMPLETE dyadic time decomposition

Fix once and for all `G={T_j=j log 2:j>=0}`. Its affine coverage is alpha=1,beta=log2,T0=0, independent of the target exponent, the external source and all dyadic indices.

Let `T_0=0`, and for j>=1 let the ORIGINAL nonnegative time-cell energy be

    H_j=integral_(T_(j-1))^(T_j) wholePickup(t)^2dt.

Using the *same* source C and the same pointwise bound (5), for EVERY j>=1,

    0<=H_j
       <=(125C^2/16)(
             exp((4/5)T_j)-exp((4/5)T_(j-1)))
        =(125C^2/16)(2^(4j/5)-2^(4(j-1)/5)).       (8)

Both the physical-time intervals and the error constants are independent of other blocks. The COMPLETE dyadic decomposition telescopes exactly:

    sum_(j=1..J)H_j=pickupEnergy(T_J)
       <=(125C^2/16)(2^(4J/5)-1).                 (9)

There is NO factor J, J^2, no dependence of C on j and no new arithmetic hypothesis per dyadic block. The endpoint then satisfies

    endpointSum(T_J)
       <=(125C^2/16)(2^(4J/5)-1)+1/4
       <=(125C^2/16+1/4)*2^(4J/5).               (10)

Thus `C_grid=125C^2/16+1/4` is a single constant for EVERY j, and G is a single adequately covering set. This is the requested complete uniform fixed-power dyadic saving, as a mathematical consequence of the fixed-zero-free external theorem and classical analytic transfer.

## 5. Compatibility with the new absolutely summable original newborn strips

The companion source `MoebiusDyadicFreshBirthStrip.lean`, Git blob `dcabfdd6d14ea724b0f3a04015fca04d1c92f40c`, and [full source calculus](moebius-dyadic-fresh-birth-uniform-summability-2026-11-01.md) independently prove, WITHOUT ANY external number theory, the uniform complete-dyadic original mask comparison

    |endpointSum(T_J)-R_cum(lambda,J)|<=1/4+lambda^3

for each FIXED 0<=lambda<=1, with a full absolute selected newborn packet total <=lambda^3 and a convergent J^-2 tail. The original time-index residual `R_cum` preserves all other original signed ordered pair interactions.

Because its exact source identity is `R_cum(lambda,J)=pickupCross(T_J)-sum_(j=3..J)C_j(lambda)`, and pickupCross<=pickupEnergy by its original nonnegative diagonal, the same power bound (6) gives

    R_cum(lambda,J)
       <=(125C^2/16)*2^(4J/5)+lambda^3.           (11)

At lambda=1/2, `R_cum(1/2,J)<= (125C^2/16)*2^(4J/5)+1/8`. Therefore the external strict power saving transports to the NEW exact complete dyadic signed residual with only a UNIFORM 1/8 additive cost; the endpoint comparison itself has UNIFORM 3/8 reconstruction loss. No cube/prime credit is re-used in this time-cell partition.

This source is thus a genuine complete-dyadic uniformly paid bridge, not an unproved blockwise uniformity assumption.

## 6. Stronger PR103 comparator, RH boundary and formal status

The repository already published `MoebiusStrongFixedPowerPR103.lean` (Git blob `10f2fba05c105c3e80b58ed9632901b5550444d9`) and its paper review `moebius-strong-fixed-power-pr103-2026-11-02.md`, commit `eb9775e109fcb97b0e8aebdc649ced1bede40738`. That DIFFERENT source reports a newer external `GTimG/QuasiRiemannTracker` PR103 zero-free threshold `theta0≈0.8733819666`, slightly stronger than 7/8=0.875, and a conditional cleaner original endpoint rate `747/1000=0.747`. Its external theorem, mod-one adapter, analytic contour bridge and original pickup real-calculus gate were explicitly NOT_RUN in the GRWTSK trust closure. No independent acceptance report of that entire PR103 dependency closure was inspected in this increment. Therefore the present 4/5 result chooses the independently reported 7/8 theorem and does not silently promote PR103's stronger 0.747.

One strict fixed rate is NOT the all-positive-rate condition: (7) does not give a bound at any delta below 4/5, let alone all delta>0. Even the sharper expected rate 3/4+epsilon from theta=7/8+epsilon/2 still does not reach delta tending to zero. The existing `riemannHypothesis_of_endpoint_good_scales` remains conditional on `SubexponentialOn endpointSum G` at every positive rate; no source here proves canonical RH.

The reverse Mertens-to-energy versus fifth-power energy-to-Mertens bootstrap in the previous PR103 review worsens strict rates rather than iterating to zero. The new newborn strip is a signed-source subpacket whose absolute magnitude is bounded independently of number theory, so it also does not bootstrap any rate.

The new `MoebiusSevenEighthsEndpointReturn.lean` source contains candidate finite proof bodies for `working_theta_margin`, `published_zeta_to_original_type`, `endpoint_four_fifths_of_published_zeta` and `endpoint_dyadic_four_fifths_of_published_zeta`. The actual external theorem is the clearly typed `PublishedOAISevenEighths` PROP argument, NOT an axiom or proof manufactured here. The classical analytic contour `ZeroFreeToMertensPowerBridge` and real calculus `PickupVelocityPowerEnergyTransfer` are named input propositions from the existing PR103 source. The explicit numerical source constant and full near-critical dyadic residual return are named UNPROVED Lean targets. No fresh Lean compilation, expected types, kernel replay, transitive axiom or unsafe audit has been performed on the new GRWTSK bytes. Its toolchain remains Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. It does not import the external OAI repository or alter GRWTSK root imports.

External source theorem status and the exact 2026 date are distinct from the local acceptance status: the published OAI mathematical theorem and independent reported kernel verification are primary mathematical inputs; GRWTSK source compatibility, the contour theorem and the full return are a separate unverified formalization obligation.

## 7. Exact completion statement

**Mathematical result at stated external theorem scope:** there EXISTS a global constant `C_grid>=0` such that for the ORIGINAL complete signed endpoint and every integer J>=0 on ONE G,

    endpointSum(J log2) <= C_grid*2^(4J/5).          (12)

The proof is (1) external published formal theorem -> (2) classical analytic Mertens power with true source M -> (3)-(6) original physical source integrals -> (7) true complete ordered Gram/quarter correction -> (8)-(10) exact full dyadic telescoping. No independently assumed strict Mertens power/zero-free strip is inserted; the external theorem is openly cited and the local Lean bridge visibly conditional.

**Remaining global target:** prove every-positive-rate `endpointSum(Jlog2)<=C_delta*2^(delta J)` with constants depending only on delta for all delta>0, or an equivalent source-preserving signed residual estimate, and certify its entire native formal proof under the pinned toolchain. This is not established by either the 4/5 external-source corollary or the summable newborn-strip source.

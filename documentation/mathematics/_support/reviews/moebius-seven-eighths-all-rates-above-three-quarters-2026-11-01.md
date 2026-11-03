# Complete original Möbius endpoint: every fixed rate strictly greater than 3/4 on one covering dyadic grid

Local mathematical attribution: grwtsk contributors. Date 2026-11-01.
Formalization assistance: OpenAI ChatGPT.
Scope: full original ordered signed Möbius endpoint at each rate r>3/4, deduced from the externally published OpenAI 2026 zeta zero-free theorem Re(s)>7/8, independently known classical zero-free-to-Mertens contour transfer, and the literal original causal integral. This strengthens the earlier one-rate 4/5 specialization but does NOT prove the boundary 3/4, the all-positive-rate RH-facing arithmetic premise, or RH. In this pinned GRWTSK Lean module the external theorem and two standard transfer gates remain explicit PROP arguments. Compilation/expected types/fresh kernel/transitive axiom audit NOT_RUN.

## Exact external and original-source pins

Actual published external mathematical theorem:
- OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8*, September 30, 2026, https://github.com/openai/math/tree/main/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026.
- `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean`, Git blob `46c67f4000906b1391a471d6e6396ac0da3c16a5`, `OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re`. The actual proof imports `SevenEighths.ProbeFinalAssemblyUnconditional`, NOT the intentionally `sorry`-bearing comparator challenge statement.
- Independent reported verification: `tomoto0/quasi-riemann-hypothesis-7-8-verification/lean/lean_build_report.md`, Git blob `350be16589ef5454f57a7555d6bc51730d98aec6`. The report describes a successful Lean 4.34.1 full importing-module build at that exact external revision, exact comparator type, standard three-axiom report [propext, Classical.choice, Quot.sound], and successful final 2-module leanchecker replay. All-source separate replay timed out and official cached Mathlib was used. Independent technical verification is not full human mathematical manuscript review, and this local new source was not freshly replayed against that external closure.

GRWTSK preserved original source:
- `MertensPrimitive.lean`, Git blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`, `mertensPrefix`, `pickupVelocity`, `wholePickup`, `pickupEnergy`, `pickupDiagonal`, `pickupCross`, true Möbius integer and original birth convention.
- `PickupEndpointQuadrature.lean`, Git blob `2606536c56bdcb33d120aeddfbcbeef793e31ba1`, exact original five-moment signed endpointSum and quarter-unit approximation error.
- `MoebiusStrongFixedPowerPR103.lean`, Git blob `10f2fba05c105c3e80b58ed9632901b5550444d9`, named visible `ZetaZeroFreeRightOf`, `ZeroFreeToMertensPowerBridge`, `PickupVelocityPowerEnergyTransfer`, `FixedRateUpper`, with an already authored source-dependent conditional integration wrapper. Its different GTimG PR103 external theorem and claimed sharper 0.747 rate were NOT independently accepted by this 7/8 proof.
- `MoebiusSevenEighthsEndpointReturn.lean`, Git blob `3429d9b714bccfbef0ab873bc23f928f19ad75ad`, the first separate honest fixed 4/5 adapter using the same external theorem.
- `MoebiusDyadicFreshBirthStrip.lean`, Git blob `dcabfdd6d14ea724b0f3a04015fca04d1c92f40c`, fixed G time-cell source and independent lambda³ newborn packet payment.

The new module `MoebiusSevenEighthsSupercriticalRates.lean` imports the previous 4/5 adapter and constructs an explicit continuum of rate-dependent Mertens exponents. Nothing in it claims to have newly proved the OpenAI theorem or the classical contour transfer.

## Unconditional mathematical consequence of the established published external theorem

Fix one REAL number r with 3/4<r<1. Put

    theta=(1+r)/2.

Then 7/8<theta<1 and theta>1/2. By the external published zero-free half-plane and independently established standard Perron/contour theorem (whose local Lean proof remains a named gap), there exists A_r>=0 such that for every real x>=1,

    |M(x)| <= A_r*x^theta.                              (1)

Here M(x)=sum_(1<=n<=floor x)mu(n) is the TRUE original sign prefix. The constant may depend on r and the published analytic data, but NOT on x, u, T, the dyadic block index, a choice of exceptional times, or the number of blocks.

Since the actual GRWTSK primitive source DEFINES

    V(u)=exp(-u/2)*M(exp u),
    F(t)=integral_0^t V(u)du,
    H(T)=integral_0^T F(t)^2dt,

we have for all u,t,T>=0:

    |V(u)|<=A_r*exp(r*u/2),
    |F(t)|<= (2*A_r/r)*(exp(r*t/2)-1)
            <=(2*A_r/r)*exp(r*t/2),
    H(T)<= (4*A_r^2/r^3)*(exp(r*T)-1).                  (2)

This uses only literal original causal physical-time integration. All signs are formed into F before squaring; the source is not replaced by an unsigned Gram or a finite fitted model. It preserves all original integer births and squareful zero coefficients.

Since H(T)=D(T)+X(T), D(T)>=0, and |endpointSum(T)-X(T)|<=1/4, the complete ORIGINAL signed endpoint satisfies

    endpointSum(T)
      <=(4*A_r^2/r^3)*(exp(r*T)-1)+1/4
      <=(4*A_r^2/r^3+1/4)*exp(r*T).                  (3)

The single fixed r=4/5 gives A_r=C and 4/r^3=125/16, recovering the previous explicit bound.

For any r>=1, the existing verified mathematical 4/5 source envelope dominates the requested larger exponent because exp(4T/5)<=exp(rT) at T>=0. Therefore for EVERY FIXED r>3/4 there exists a finite source constant K_r>=0 such that

    forall T>=0, endpointSum(T)<=K_r*exp(r*T).        (4)

This is a TRUE strict-sub-one family whenever r<1, but the constants K_r may deteriorate as r approaches 3/4 because the zero-free-to-Mertens contour margin shrinks. Do NOT infer a uniform K across all r or a bound at the unattained boundary r=3/4.

## The SAME adequately covering fixed dyadic scales and all-block control

The fixed G={T_j=j log2 : j in Nat} has alpha=1, beta=log2, T0=0, independent of r; every real T>=0 is followed by an element of G at distance <=log2.

At each r in (3/4,1), for j>=1 the TRUE ORIGINAL nonnegative physical time-cell energy obeys from (2):

    H_j=integral_(T_(j-1))^(T_j) F(t)^2dt
       <=(4*A_r²/r³)*(2^(r*j)-2^(r*(j-1))).        (5)

This holds for all j with ONE A_r, not an independently selected C_(r,j). The cells partition the entire original interval [0,T_J]; summing yields

    sum_(j=1..J)H_j=H(T_J)
       <=(4*A_r²/r³)*(2^(r*J)-1).                   (6)

No J, J², dyadic-block count, summation-loss, or new scale-set choice appears. The original endpoint has

    endpointSum(T_J)
       <=(4*A_r²/r³+1/4)*2^(r*J), for all J.        (7)

Thus for the complete dyadic decomposition and single G, the requested fixed-power estimate is established for EACH r>3/4. The original source's exact ordered cross signs and diagonal exclusion are paid by H=D+X; no sector credits are counted twice.

## Connection to full-time dyadic newborn payment

The independent new genuine source near-critical newborn layer for fixed lambda in [0,1] has complete ordered abs budget <=lambda³ over all j, with exact original retained residual R_cum(lambda,J) satisfying |endpointSum(T_J)-R_cum(lambda,J)|<=1/4+lambda³. Therefore (7) implies

    R_cum(lambda,J)
       <=K_r*2^(r*J)+1/4+lambda³,               (8)

uniformly over all J, for each chosen lambda and r>3/4. The causal near-birth selected packet saves absolutely even without new number theory; it does not extend the r>3/4 external arithmetic frontier or prove all rates.

## Novelty, hostile checks, remaining obligations

This is the standard analytic consequence of the newly released external quasi-RH result, applied to the fixed GRWTSK causal observable. It is a source-specific exponent transport and exact fixed-grid uniformity theorem, not a new worldwide prime or zeta zero-free theorem. The stronger external GTimG PR103 source may yield a clean 747/1000 bound conditionally, but its external dependency replay and local contour adapter were not accepted in this investigation; the present source does not depend on that external PR103 proposition itself.

Hostile boundaries:
- r=3/4 corresponds to theta=7/8 with NO strict contour margin. Equation (1) has not been proved there, so the new source does not assert the boundary.
- 0<r<=3/4 is still outside this theorem. In particular r→0 is NOT supplied and canonical RH is not proved.
- The constant A_r from (1) may depend on r, but the same one A_r controls EVERY original time-cell and endpoint j. No fixed r->varying j quantifier exchange.
- An upper bound on a selected signed packet would not imply (4); this is the COMPLETE original signed endpoint from the original source identity.
- External main proof `OAI.NumberTheory.DirichletL.Nonvanishing` must not be replaced with its intentionally sorry-bearing comparator challenge.
- The stronger 0.747 PR103 number is a separate conditional track with unresolved source acceptance; do not combine its proof status with the independent fixed 7/8 report.
- The local source scripts may require pinned Lean API repairs; no parsing, compilation, exact types, fresh kernel or transitive axiom audit has been run or claimed.

Mathematical status: (1) is a classical contour result conditional on the independently published 7/8 mathematical theorem, (2)-(7) are complete ordinary source-specific real calculus, (8) uses an independent original newborn source with its own complete written mathematical proof. The GRWTSK Lean source proof scripts `endpoint_all_rates_gt_three_quarters` and `endpoint_fixed_grid_all_rates_gt_three_quarters` retain **three explicit local unresolved Lean inputs** `PublishedOAISevenEighths`, `ZeroFreeToMertensPowerBridge`, and `PickupVelocityPowerEnergyTransfer`; no new research axiom or completion claim is authored. The source's actual theorem target at every positive r on one fixed G remains OPEN.

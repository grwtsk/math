# Fixed compensated Möbius core: lower-side cancellation, positive energy sandwich and a one-variable arithmetic test

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-02 (America/Los_Angeles).
Status: source-exact and conditional scalar Lean PROOF CANDIDATES; no Lean elaboration, fresh kernel, or transitive axiom audit. The required upper cancellation and the canonical RH conclusion remain OPEN.

## 1. Original object, no change of source

Original source pinned in `MoebiusFixedSublinearCompensatedEndpoint.lean`, Git blob `f2d9748589f5999ff667486538968d7eff5a753f`. For T>=0 set N=floor(exp T), H_*=floor(exp(sqrt T)), D_*=max(1,floor(exp(T-sqrt T))). The complete original ordered signed Gram X(T) is split EXACTLY into
  X(T)=G_gap(H_*,T)+W_weak(H_*,T)+C_*(T)+L_largeGcd(H_*,D_*,T),
  C_*(T)=originalSignedComparableStrong(H_*,0,T)
          +smallGcdIncomparableCross(H_*,0,D_*,T).

All original birth supports, ordered orientations, squareful zero symbols, negative odd-coprime credit, positive even comparable, source-specific far-angle/physical-energy selection, and diagonal subtractions are preserved.

Original (separate) exact pickup energy source (MertensPrimitive.lean blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`):
  F(u)=integral_0^u e^(-v/2)*M(e^v) dv;
  E(T)=integral_0^T F(u)^2 du >=0;
  E(T)=Diag(T)+X(T), 0<=Diag(T)<=2*T^2.

Consequently the exact new source comparison is
  E(T)=C_*(T)+P_*(T),
  P_*(T)=Diag(T)+G_gap(H_*,T)+W_weak(H_*,T)+L_largeGcd(H_*,D_*,T).   (1)

This statement is an algebraic identity about original source objects, not a new cancellation assumption.

## 2. Actual lower-side control without a new arithmetic hypothesis

For ALL T>=0, the original positive energy E(T)>=0 and the existing source-specific Young/Cauchy comparisons imply the honest, finite, unestimated-source bound

  C_*(T) >= -[
       Diag(T)
       +4*card(shortGapSet(H_*))*T^2
       +card(endpointIndex T)^2*sqrt(q_N(T)*Diag(T))
       +largeGcdIncomparableAbsoluteCost(H_*,0,D_*,T)].            (2)

There is no large-gcd root-tail, RH estimate, synthetic model or arithmetic averaging assumption in (1)-(2). The source-real absolute price is retained exactly. Likewise
  |C_*(T)-E(T)| <= the right-side positive bill in (2).              (3)
These are the new exact Lean proof candidates.

## 3. Conditional only on explicitly named elementary finite estimates

Using the prior `FixedGapCardTarget`, `FixedWeakPaymentTarget`, `FixedGcdRatioTarget` and `LargeGcdAbsoluteRootTailTarget`, all STILL UNPROVED in pinned Lean, one gets for T>=4
  B_*(T)=2*T^2+(4*T^2+32*T)*exp(sqrt T)+sqrt(2)*T,
  |C_*(T)-E(T)| <= B_*(T),                                          (4)
  C_*(T) >= -B_*(T).                                                (5)

B_* has every positive exponential rate: for delta>0 and T>=max(4,4/delta^2), using sqrt T <= delta*T/2 and exp-series
  B_*(T) <= [36/delta^2+(64+sqrt(2))/delta]*exp(delta*T).            (6)
The additional 4/delta^2 pays the separate 2*T^2 diagonal term; the 32/delta^2 portion pays the 4*T^2*exp(sqrt T) gap term.
This is a paper-calculus bound, not a kernel-accepted Lean theorem.

The genuinely missing half is therefore ONLY the UPPER positive excursions of the fixed signed core. No sign claim like C_*(T)<=0 is valid: the source comparable packet can be positive, and the remaining incomparable packet can have either sign.

## 4. New quasi-monotone consequence

The ORIGINAL positive cumulative energy is nondecreasing on T>=0. Hence for S>=T>=4, under only the named elementary source bounds,
  C_*(T) <= C_*(S)+B_*(T)+B_*(S).                                    (7)

Despite changing floor cutoffs H_*, D_* and original physical masks, C_* is not an arbitrary signed time series: its downward/positive comparison to later horizons is controlled by a SUBEXPONENTIAL defect. This does not prove C_* upper-small, but it makes sparse favorable-scale arguments source-exact. The Lean theorem `fixedCore_approx_monotone_of_elementary` contains a candidate proof invoking the preexisting monotone pickupEnergy and the new two-sided sandwich.

## 5. A genuinely one-variable RH-strength arithmetic alternative

The original MertensPrimitive source already defines
  pickupVelocity(u)=e^(-u/2)*M(e^u),  F(u)=integral_0^u pickupVelocity.

Ordinary Cauchy-Schwarz and Tonelli/Fubini on nonnegative physical time give for T>=0

  E(T)=integral_0^T F(t)^2 dt
      <= (1/2)*integral_0^T (T^2-u^2)e^(-u)*M(e^u)^2 du
      <= (T^2/2)*integral_1^(exp T) M(x)^2/x^2 dx.                 (8)

Define the ACTUAL one-variable original Möbius moment
  V(T)=integral_1^(exp T) M(x)^2/x^2 dx.

Combining (4) and (8) yields another source-specific conditional UPPER target
  C_*(T) <= (T^2/2)*V(T)+B_*(T),                                    (9)
so a one-sided every-positive-rate upper bound on the NONNEGATIVE V(T) would imply the missing fixed-core bound. This is a genuine original-Mertens arithmetic condition, not a hypothetical independent two-point tensor.

WARNING: the every-rate V(T) estimate has NOT been proved and is itself RH-strength through the established (but still awaiting source-closure verification) endpoint-to-RH return. Existing PNT-level M(x)=o(x) or Korobov–Vinogradov stretched-log savings do NOT supply it. Conversely under the classical RH implication |M(x)|<<_eta x^(1/2+eta), V(T)<<_eta e^(2eta*T), so within the documented return this is an alternative RH-equivalent arithmetic formulation, not independent progress toward a proof. No extra Lean theorem or arithmetic axiom for (8)-(9) is added in this source.

## 6. Another elementary sector that can be peeled from the comparable packet

For actual original selected comparable pairs (m,mk), k>=2, base m>D>=1, dropping only the strong source mask inside an ABSOLUTE value and keeping both ordered orientations,
  sum_(m>D, k>=2, mk<=N) 2*|mu(m)mu(mk)|*K_T(m,mk)
  <= 8*T*sum_(m>D) (1/m)*sum_(k<=N/m) k^(-1/2)
  <= 16*T*sqrt N*sum_(m>D) m^(-3/2)
  <= 32*T*sqrt(N/D).                                                (10)

At D=D_*(T), T>=4 and N/D_*(T)<=2*exp(sqrt T), the price is
  <= 32*sqrt(2)*T*exp(sqrt T/2), which has every positive exponential rate. This is a noncircular source-compatible absolute payment for LATE-BASE comparable terms; the residual EARLY-BASE comparable packet may still demand RH-strength arithmetic cancellation.

No Lean finite comparable quotient reindex is claimed for (10); it is a documented mathematical lemma for the next exact-source implementation. The older `SignedComparablePowerTransferTarget` with a fixed theta>1/2 does not prove every rate.

## 7. Source-specific numerical sanity checks (not proof)

An independent mpmath/sympy check at 45 decimal digits reconstructed each original causal response Gram from its exact birth-window integral, the actual integer cutoff, Möbius signs and both original orientations. The strong mask was interpreted using the source-documented equivalence to far additive distance and physical energy threshold. The energy was independently calculated by integrating the original piecewise Mertens-prefix pickup square.

  T=4, N=54, H_*=7, D_*=7:
    C_*~=+0.643055291643471335,
    E~=0.879886038180879199,
    Diag~=10.4529210391642934,
    G_gap~=-10.2232688003970007,
    L_gcd~=+0.00717850777011517131.

  T=5, N=148, H_*=9, D_*=15:
    C_*~=-1.90926170888095637,
    E~=1.77589312686612714,
    Diag~=18.3222805705987413,
    G_gap~=-14.6985461001702763,
    L_gcd~=+0.0614203653186184762.

  T=6, N=403, H_*=11, D_*=34:
    C_*~=-0.489993192440110363,
    E~=3.01108934756975756,
    Diag~=28.5941726434840352,
    G_gap~=-25.2128384580581301,
    L_gcd~=+0.119748354583962809.

The direct energy-minus-diagonal/cross ledger residual magnitudes were < 7e-44. Floating arithmetic was NOT interval certified, and these finite tests neither establish a full source formalization nor imply any asymptotic claim. The weak packets happened to be zero in these three test fixtures; they are retained in all theorems and budgets.

## 8. Acceptance boundary

New module: `MoebiusFixedCoreEnergyComparison.lean` with source-exact:
- `fixedSignedBills`
- `pickupEnergy_eq_fixedCore_add_signedBills`
- `pickupEnergy_nonneg_of_nonneg_time`
- `fixedSignedBills_abs_le_originalCost`
- `fixedCore_lower_of_originalCost`
- `fixedCore_sub_energy_abs_le_originalCost`

and conditional numeric:
- `fixedScalarBill`
- `fixedCore_sub_energy_abs_le_scalar_of_elementary`
- `fixedCore_lower_scalar_of_elementary`
- `fixedCore_approx_monotone_of_elementary`

Missing finite numerical Lean lemmas are inherited unchanged. There is NO alleged proof of `FixedCompensatedEveryRateDyadic`, RH, or a same-constant bound on all growing primitive gcd fibers. Parsing/elaboration, dependency compilation, exact declaration-type checks, fresh kernel replay and transitive axiom/unsafe dependency audit NOT_RUN. No native or remote verification dispatched. Do not promote to root GRWTSK imports until acceptance.

Pinned environment Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. See math issue #1566, source #1406, canonical RH #15. Fixed affine-form two-point Liouville correlation results (OpenAI 2026) have no automatically uniform growing-shift, original-Moebius, physically masked, every-positive-rate transfer into this source.

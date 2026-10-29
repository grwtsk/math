# Pickup moments, observation mass, and integer-weight certificates

Local mathematical attribution: grwtsk contributors.

Baseline: `c1d0c07f9a23ddf5c7de1edf0fd9057b143e21e0`.
This extends `PickupOptimizationGap`, `PickupWeightedQAOA`, `PickupScaleTransport`
and the unchanged `PickupDyadicEndpoint.DyadicBirthBound`. It does not replace
those sources or their signs, diagonal, complete ordered inventory or analytic
return. New Lean source status: SOURCE_PROOF_CANDIDATE / NOT_RUN /
NOT_KERNEL_AUDITED. No arithmetic growth witness is claimed.

## 1. Use the actual finite optimization gap

Write T_j=j log 2, N_j=2^j, and Gamma(T)=pickupCross(T)-optimum(T).
The preceding source constructs the actual finite optimum and proves
-D(T)<=optimum(T)<=0. Consequently the existing theorem
`PickupOptimizationGap.dyadicBirthBound_iff_optimalityGap` equates the original
dyadic arithmetic target with every-positive-rate upper bounds on Gamma.
No new construction of the energy or analytic return is needed.

The SK/QAOA depth p is NOT the moment exponent q, and neither is the ambient
Kakeya dimension d or the logarithmic arithmetic index j. These four parameters
must retain their separate quantifiers.

## 2. A quantitative moment observation, with its probability paid

`PickupMomentObservation.gapMoment` is the complete finite Born-weighted moment

    M_q(T,psi) = sum_s Born_psi(s) (trialCross(T,s)-optimum(T))^q.

For every positive natural q, `source_gap_of_moment` proves Gamma<=B from
m>0, B>=0, m<=Born_psi(source), and M_q<=m B^q. This extends the previous
second-moment theorem; it is not an assertion of either moment or mass estimate.
It works for any finite state, including the already normalized weighted QAOA
circuits, without replacing the distinguished Mobius source by a random sample.

The exponential form `source_gap_of_entropy_moment` proves

    Born_psi(source) >= exp(-q*kappa*T),
    M_q <= (C exp(r*T))^q
        ==> Gamma(T) <= C exp((r+kappa)*T).

This makes the observation cost explicit. For rho_j=exp(-a*T_j),
`source_gap_of_radius_moment` gives

    Born_psi(source) >= rho_j^b,
    M_q <= (C rho_j^(-eta))^q
        ==> Gamma(T_j) <= C rho_j^(-(eta+b/q)).

Thus an arbitrarily small Kakeya norm loss eta is not an arbitrarily small
point-observation loss unless b/q is also paid. Squaring a norm estimate and
converting it into the actual moment must also retain all normalization costs.
A measure-theoretic cap observation would require its own source-preserving
map; the finite theorem does not assert that such a map exists.

The complete carrier already used by the circuit has N+1 Boolean coordinates,
including the inactive index zero. `configuration_card`, `uniform_source_mass`
and `uniform_source_mass_dyadic` prove its exact uniform source probability

    2^(-(N+1)) = exp(-(N+1) log 2).

`uniform_mass_allowance_iff` turns a proposed entropy allowance into precisely

    (2^j+1) log 2 <= q*kappa*T_j.

It does not replace 2^j by j. For j>0 this is q*kappa*j>=2^j+1. Increasing
circuit depth alone does not establish this moment/observation condition.

`dyadicBirthBound_of_depth_entropy_moments` composes the finite observation
with the existing dyadic return. Its explicit suppliers require, for every
positive epsilon, a depth p with r(p)+kappa(p)<=epsilon; the moment and mass
bounds hold at every j, with a constant C chosen after p and eta but uniform
in j. The moment q(p,j) may grow, but its constants are not silently uniform:
the displayed moment premise must establish that uniformity. Choose epsilon=
delta/2 and eta=delta/(2a); the resulting rate is at most delta. This is a
conditional application theorem, not a constructed arithmetic witness.

## 3. Integer weights with unconditional uniform rounding allowance

`PickupIntegerWeights` constructs an integer weighted objective from the actual
finite source. Put S=sourcePairs(T), L=4(|S|+1), w_z=|signedAtom(T,z)| and

    k_z=floor(L*w_z),    decoded_w_z=k_z/L.

These are source-defined natural weights, not tunable model parameters.
Floor inequalities give 0<=w_z-decoded_w_z<=1/L. Therefore for EVERY Boolean
spin assignment s, the rounded quadratic and the actual trial satisfy

    |X_hat_s(T)-X_s(T)| <= |S|/L <= 1/4.

The exact integer expression is

    integerEnergy(T,s)=integerTotal(T)-2*integerCut(T,s),
    X_hat_s(T)=integerEnergy(T,s)/L.

Both ordered orientations are retained. The original zero atoms have zero
integer weight. No positive weight is allowed to change a Mobius sign, and
there is no survivor renormalization. The finite graph may contain zero-weight
edges; a later encoding must preserve their semantics.

`quantizedSource` uses the FIXED sourceSpin, not a minimizing assignment.
`quantizedSource_error` gives |quantizedSource-X|<=1/4, while its distance from
the original endpoint sum is <=1/2. Consequently
`dyadicBirthBound_iff_quantizedSource` is a source-level equivalence with the
same all-positive-rate obligation on the same dyadic scales.

If a finite solver certifies an optimizer of this rounded objective,
`integer_optimizer_gap` gives actual trial excess <=1/2. The following theorem
`source_gap_of_integer_optimizer` still retains the actual signed return:

    Gamma(T) <= returnDefect(T,s_optimizer)+1/2.

An excellent optimizer does not prove that the Mobius assignment is near it.
The weighted rounding construction is NONCOMPUTABLE Lean source. It does not
supply a bit algorithm deciding exact real floors, a bounded-width CNF encoding,
or a complexity estimate. Certified interval rounding with an explicit error
budget remains a possible computational implementation, not one executed here.

## 4. Inspected external arguments and precise application boundaries

All references here are pinned to openai/math
`7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`. Existing literature correspondence:
`docs/reference/literature/reading-background/spin-kakeya-sat-dyadic-correspondence.md`.
The central literature ledger is preserved unchanged; its previously pending
cross-reference to the supplement is not represented as completed here.

### Spin-glass optimum / p tending to infinity

OpenAI, *QAOA attains the SK ground-state energy in the thermodynamic-first
limit*, September 25, 2026. Inspected theorem `thm:main` and surrounding quantifiers:
https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/preprints/QAOA-attains-the-SK-ground-state-energy-in-the-thermodynamic-first-limit-September-25-2026/build/sections/01-introduction.tex
Blob `453caa0efc98c73518eb85f3c05bf03743b22e8b`.

The theorem uses iid standard Gaussian couplings, unordered-pair normalization
1/sqrt(n), expected PER-SPIN energy, and deterministic angles fixed before the
thermodynamic limit. The introduction explicitly supplies no quantitative
finite-size bound, depth bound or efficient angle-selection procedure.
Local additions use finite optimization and observation algebra only. They
neither import this ensemble theorem nor assert a Gaussian law for the pickup.

### Kakeya / local smoothing

*Local smoothing for the Euclidean wave equation*, openai/math, October 25,
2026 version. Individual manuscript byline not separately re-read here.
Actual solution theorem (not the admitted challenge statement):
https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/Analysis/Fourier/LocalSmoothing/Comparator.lean
Blob `6def181857b8148d9dbaed288876a225ca9ddbfb`;
`OAI.Analysis.Fourier.LocalSmoothing.Comparator.kakeya_maximal` invokes
`OAI.MeasureTheory.Kakeya.kakeya_maximal`.

The theorem fixes dimension d>=2, then eta>0, and bounds the L^d spherical
output by C*rho^(-eta) times the L^d input norm uniformly in 0<rho<=1.
It is not a pointwise bound or a bound uniform in increasing dimension.
The new `source_gap_of_radius_moment` specifies the additional observation
cost a source-exact application must pay; it does not create the arithmetic
packet-to-tube map or its norm estimate.

### Exact counting / ETH

OpenAI, *The Exponential Time Hypothesis is False*, revised October 25, 2026.
Actual implementation inspected:
https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/Algorithms/SubexponentialSAT/SqrtLogSpace/Final.lean
Blob `a69635a2492e06a26f2e33d4251edd1e21ba3332`;
`OAI.Algorithms.SubexponentialSAT.SqrtLogSpace.exact_count_and_sat`.

Its quantified theorem concerns fixed-width canonical CNF, exact counts,
formula bit length, actual variable count, machine time and all-prefix space.
The integer weighted-cut source constructed here is a possible certification
input AFTER those encoding and evaluation conditions are proved. No algorithm
or comparator is run or imported. Subexponential runtime in variable count is
not a subexponential bound on the objective in T_j. Full ordered source storage
already has N^2 entries; N=2^j is not j.

## 5. Classification and verification

Imported mathematics: unchanged GRWTSK finite spins, actual pickup, optimum,
Born law, floor arithmetic, dyadic coverage, endpoint allowance and analytic
return. New source proof candidates: the two modules named above, 32 lexical
identifiers. Kernel-verified bridges: none claimed. Conditional applications:
actual moment/mass/norm estimates and certified optimizer return. Finite
evidence: external exact fixtures and separately labelled 100-digit numerical
diagnostics. Analogy only: treating deterministic pickup couplings as SK
disorder. Unresolved: the arithmetic witness, actual Kakeya source map, uniform
depth/dimension costs, computational real-weight evaluation and SAT encoding.
No historical influence is inferred from an idea match.

The passive verification manifest is
`docs/verification/NumberTheory/Moebius/PickupMomentObservation/verification.toml`.
It binds the source commit and exact blobs, lists all declarations, preserves
pending issues 1405 through 1409, and requires the complete native dependency
closure. Compilation, fresh kernel replay, transitive axiom auditing and all
upstream comparator commands remain NOT_RUN. Toolchains and root imports are
unchanged. No remote runner or external execution is dispatched.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64b931d222de4b1684ab57d7e02240d9e5f5997bce628a9636373bc7b9893f52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

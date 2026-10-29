# Actual pickup optimum, weighted finite circuits, and the dyadic arithmetic gap

Local mathematical attribution: grwtsk contributors.

Base: grwtsk/math `4b569a57ed97eae64deaec7fea468331dbb5e39c`.
This extends the already published `PickupSpinCutComparison` and
`PickupScaleTransport`, rather than duplicating their signed source and rate
interfaces. The endpoint source, diagonal, good-scale cover and analytic
return are unchanged. All new Lean proofs are SOURCE_PROOF_CANDIDATE /
NOT_RUN / NOT_KERNEL_AUDITED.

## 1. Construct the optimizer of the actual source

For each nonnegative T retain N=floor(exp T), the original responses r_n,
original magnitudes |mu(n)|, and complete ordered Gram. For a Boolean
configuration sigma, put c_sigma(n)=|mu(n)| spin(sigma(n)). The existing
trialCross is now identified with

    X_sigma(T) = integral_0^T (sum_(n=1..N) c_sigma(n) r_n(u))^2 du - D(T).

Both orientations remain. The diagonal is unchanged because c_sigma(n)^2
=mu(n)^2. Consequently X_sigma >= -D(T) for every configuration.
The configuration carrier is `Fin (N+1) -> Bool`; index zero is inert and
never enters the original source-pair inventory. Zero Mobius labels remain
in the carrier and have zero coupling, with no survivor renormalization.

`FiniteSpinAveraging.sum_spin_mul_eq_zero` reuses the existing QAOA flip and
finite-sum reindexing. Off-diagonal spin monomials have exactly zero finite
sum. Thus sum_sigma X_sigma=0. The finite image of X_sigma is nonempty and
its minimum opt(T) is attained. These are constructions, not optimizer
fields. They prove

    -D(T) <= opt(T) <= 0,       -2 T^2 <= opt(T) <= 0.

Set Gamma(T)=X_mu(T)-opt(T). Then

    0 <= Gamma(T),       X_mu(T) <= Gamma(T) <= X_mu(T)+D(T).

Since the existing diagonal is subexponential at every positive rate,
`PickupOptimizationGap.dyadicBirthBound_iff_optimalityGap` proves the exact
source-level equivalence

    DyadicBirthBound <-> SubexponentialOn optimalityGap dyadicScales.

This is an ABSOLUTE subexponential optimality gap. It is not exact
optimality, a fixed relative approximation ratio, or a per-spin limiting
error. No witness of either side of this equivalence is constructed here.
The subsequent RH consumer applies the unchanged canonical return.

## 2. Use a source-specific finite weighted circuit

The existing `QAOAFiniteLocality` mixers, `QuantumMaxCut` Born carrier and
`QAOAGateFactorization.mixerLayer_normalized` are reused. Their unweighted
MaxCut cost is NOT silently relabeled as the pickup Hamiltonian.
`PickupWeightedQAOA.costLayer` instead acts by the actual phase

    psi(sigma) |-> exp(-i gamma X_sigma(T)) psi(sigma).

The initial amplitude is the inverse square root of the full configuration
count. Its normalization is proved. Every cost phase preserves individual
Born weights, and every finite cost/mixer word preserves total unit mass.
No free normalization or source-identity assumption is needed for this
constructed finite circuit.

For any normalized state define

    gap(sigma)=X_sigma-opt,
    return(sigma)=X_mu-X_sigma,
    expectedGap=sum_sigma Born(sigma) gap(sigma),
    expectedReturn=sum_sigma Born(sigma) return(sigma).

The existing signed return gives the exact identity

    Gamma = expectedGap + expectedReturn.

The return is signed and contains the complete difference of the actual
observations. It is not selected to manufacture a bound.

A useful strict separation is now explicit even at depth zero:

    expectedGap(uniform) = -opt <= D <= 2T^2,
    expectedReturn(uniform) = X_mu.

Thus polynomial average optimization excess is ALREADY supplied without
optimization. A subsequent circuit theorem contributes only through a
bound on the combined signed expression or a justified observation of the
fixed source. Improving average trial energy alone cannot erase its return.

## 3. Moment observations retain the source mass

For any finite nonnegative weights and natural q,

    w(mu) Gamma^q <= sum_sigma w(sigma) gap(sigma)^q.

`born_source_gap_power_le` specializes this to the actual Born law.
`source_gap_le_of_born_second_moment` explicitly proves Gamma<=B from
m>0, B>=0, m<=Born(mu), and sum Born*gap^2 <= m*B^2. The source probability
is not dropped. Normalization alone supplies no useful lower bound on it.

For the uniform full carrier, the probability of one specified assignment
is 2^(-(N+1)). Extracting that assignment from a normalized q-moment can
therefore cost 2^((N+1)/q). This counting calculation is explanatory, not an
extra Lean declaration. QAOA depth p, moment exponent q, ambient Kakeya
dimension d, and logarithmic arithmetic scale j must remain distinct.

## 4. Exact use and limits of the selected OpenAI machinery

The already maintained source correspondence is
`docs/reference/literature/reading-background/spin-kakeya-sat-dyadic-correspondence.md`.
The following reinspection is pinned to openai/math
`7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`; actual implementation modules,
not admitted challenge statements, were inspected. No OAI theorem is added
as an axiom or directly imported in these new Lean sources.

### Spin glass and p tending to infinity

The September 25, 2026 preprint *QAOA attains the SK ground-state energy in
the thermodynamic-first limit*, in that repository, states optimality for
the iid Gaussian SK ensemble, with 1/sqrt(n) unordered-pair Hamiltonian,
expected per-spin energy, deterministic angles, and the thermodynamic
limit taken before p tends to infinity. Its introduction explicitly does
not give a quantitative finite-size estimate, depth bound, or efficient
angle-selection procedure. The inspected file is
`preprints/QAOA-attains-the-SK-ground-state-energy-in-the-thermodynamic-first-limit-September-25-2026/build/sections/01-introduction.tex`,
blob `453caa0efc98c73518eb85f3c05bf03743b22e8b`.

The selected Lean theorem `OAI.SKValue.value_consequences` in
`lean/OAI/Probability/SKValue/Main.lean`, blob
`0fcd7ca01b0f99b90f579f69a7bed99074bcdd99`, retains minimizer and diffusion
hypotheses. It is not the entire finite-instance QAOA convergence theorem.
The new local work constructs the finite deterministic pickup optimization
problem and exact circuit return to which an applicable theorem would have
to be transported. It supplies no Gaussian disorder or uniformity premise.

At N=2^j, a per-spin error e must satisfy N*e <= C*N^delta. Thus a fixed
positive limiting accuracy does not pay every positive exponent. The
existing `PickupScaleTransport` already preserves the needed depth-before-
scale constants and the radius exponent conversion; it is not duplicated.

### Kakeya

`lean/OAI/Analysis/Fourier/LocalSmoothing/Comparator.lean`, blob
`6def181857b8148d9dbaed288876a225ca9ddbfb`, proves the comparator theorem
`kakeya_maximal` using `OAI.MeasureTheory.Kakeya.kakeya_maximal`. It is an
L^d sphere-output bound for fixed d>=2, every positive loss eta, radius
rho in (0,1], and f in L^d, with factor rho^(-eta). It is neither an
L-infinity observation theorem nor uniform in a changing dimension.

Choosing rho_j=exp(-a*T_j) converts this factor to exp(a*eta*T_j), exactly
as the existing scale module records. A source-exact packet realization
must still control its input norm, observation mass, dimension-dependent
constants, multiplicities and complete signed return. Squaring a norm
bound doubles its exponent loss. The new second-moment observation theorem
pays the distinguished source mass explicitly; it does not supply that
mass or an arithmetic-to-tube map.

### ETH and exact counting

`lean/OAI/Algorithms/SubexponentialSAT/SqrtLogSpace/Final.lean`, blob
`a69635a2492e06a26f2e33d4251edd1e21ba3332`, contains `exact_count_and_sat`
for its stated fixed width, canonical finite-variable CNF and bit-cost
model. The inherited `cutCNF` and `weightedCNFCut_eq` preserve the literal
XOR observations. Exact counting can support finite certificates; its time
bound is not an upper bound on their arithmetic objective values.

`PickupOptimizationGap.approximate_optimizer_gap` proves that an exact
minimizer of approximate objective values with uniform absolute error eps
has actual trial gap at most 2eps. This prices a finite numerical/Boolean
optimization comparison once an encoding and its absolute error have been
proved. No real-weight-to-bit encoding or SAT algorithm is assumed here.
The naive variable count is of order N=2^j, not j; its representation and
precision costs cannot be replaced by a logarithmic-scale bound.

## 5. Classification and verification

The new finite Gram, averaging, optimization and Born identities are local
source proof candidates derived from existing GRWTSK/Mathlib declarations.
They do not formalize a new external paper theorem. The original paper
bylines and existing literature entries remain unchanged; no historical
influence is inferred from a correspondence. The upstream applications
above remain comparison targets, not imported unconditional hypotheses.

Upstream's inspected `lean/lean-toolchain` is v4.34.1. Local v4.33.0 and
Mathlib db584cd6d46c92f209a44c0f1c829460d327499d stay unchanged. Compatibility
and upstream proof acceptance are not inferred from source inspection.
The exact local declaration/blob roster and commands are in
`docs/verification/NumberTheory/Moebius/PickupOptimizationGap/verification.toml`.
Compilation, fresh kernel replay, and transitive axiom auditing are NOT_RUN.
The unresolved arithmetic witness is precisely the all-positive-rate bound
for Gamma on the already constructed dyadic scales, equivalently the
original `DyadicBirthBound`. The native imported closure, including prior
issues 1405 through 1408 and reused QAOA modules, remains subject to audit.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d208aa3dd3a79406ea2ae9205ca4be7d6c12f964ecc9147eeca07a2295483df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

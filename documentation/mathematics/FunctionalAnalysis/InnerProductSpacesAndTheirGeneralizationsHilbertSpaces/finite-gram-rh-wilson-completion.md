# Finite Gram approximation: source-level completion of the joint increment

Local mathematical attribution: grwtsk contributors. Imported Mathlib and GRWTSK mathematics retain their upstream authorship and licenses.

## Status and scope

This continues `874a8c42f5987a6288b6cd2dffd95e3692a6439b`. Seventeen new Lean modules contain 191 theorem proof candidates (183 public and eight private). They cover the previously unwritten scalar tail, bounded-kernel transfer, actual invariant compression and finite matrix, variational spectral brackets, maximal logarithmic domain, concrete RH bin projection, both residual estimates, exact arithmetic readout, and connection to the maintained endpoint declarations.

**All new modules are SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay and transitive axiom auditing are NOT_RUN.** Neither Lean nor Lake was available in the working environment. Source inspection and finite tests do not establish elaboration or kernel acceptance; API or proof-script repairs may be required. The full formal completion gate remains open. No verification job or native execution was dispatched.

The source analysis uses Lean `leanprover/lean4:v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, with manifest blob `c8044c56be77c58e6f41cca024b25237c59e8c79`. These are the maintained repository pins, not the older toolchain in the historical RH completion statement. No toolchain, dependency, root import, or prior theorem is changed by this increment.

Canonical workflow provenance: `grwtsk/noeaaeue` main snapshot `d3791d7230a348b061b44eca5556c1ad87c136a0`; `workflows/research/orchestration/skills/noe-proof-automation/SKILL.md`, blob `f2ccfc6094d3ea985301120e4ae4a1939d196871`; `operations/skills/formalization/README.md`, blob `7aa45f42f0786a746d26054c5daddff0a0af2ab2`. Reading these sources supplies workflow provenance, not execution authority.

## 1. Scalar tail and actual kernel operator

`ExponentialTaylorRemainder.abs_remainder_le` gives, for every real z and natural m including zero,

    |exp(z) - sum_(n<m) z^n/n!| <= exp(|z|) |z|^m/m!.

The proof compares finite tails using m! k! <= (m+k)! and passes through the actual exponential-series limit. The allowance tends to zero at fixed radius. Negative Gram entries are not replaced by positive ones.

`ContinuousKernelL2Bound` constructs a continuous integral representative from each actual L2 class on a compact probability space, then constructs its bounded L2 operator. A uniform bound B on the literal kernel gives operator norm at most B. The difference theorem uses the norm of K-J, not a difference of norms, and identifies the actual difference of the constructed operators.

`RealKernelQuadratic` pays product integrability before Fubini, identifies the real/complex quadratic conventions, proves symmetry from kernel symmetry, identifies finite feature kernels with their actual Gram operators, and supplies real polarization. No positivity conclusion is inferred merely from pointwise positivity of a kernel.

## 2. Actual Wilson finite operator and factorial error

Write T for the maintained invariant Wilson operator, E_s for its spatial-link count, and beta>0. Retain all ordered coordinate words of lengths n<m, including the empty word and repetitions. The finite vectors are the actual orthogonal projections of the weighted word L2 classes, scaled by the square root of their original coefficients. Their Gram operator T_m has exactly the previously defined whole finite moment energy as its quadratic form.

The finite matrix is the Gram matrix of those same projected vectors. Analysis and synthesis maps give actual matrix/operator transport and equivalence of nonzero eigenvalues. Redundant coordinates and zero eigenvalues are not discarded. The range is contained in the span of the explicit finite feature inventory; compactness is proved from the rank-one sum.

The bare exponential-kernel compression is identified with T using the existing temporal-gauge quadratic identity, symmetry, actual invariant-continuous density and polarization. Its Taylor compression is identified with T_m. Thus no surrogate operator replaces the source.

The Wilson normalization improves the general tail: exp(-beta E_s) cancels the exp(beta E_s) majorant, and both spatial half weights are at most one. The resulting allowance is

    epsilon_m = (beta E_s)^m/m!,
    ||T-T_m|| <= epsilon_m,
    0 <= <h,(T-T_m)h> <= epsilon_m ||h||^2.

These are source proof candidates `WilsonSliceFiniteApproximation.norm_invariant_sub_finite_le` and `remainder_quadratic_bounds`. The finite operators converge in norm for each fixed regulator and beta. No regulator-uniform convergence rate or positive uniform coercive constant is asserted.

## 3. Spectral brackets and the genuine logarithmic domain

`VariationalSpectralBracket` defines first and second values from the actual operator: a supremum of quadratic values on the unit ball, and an infimum over actual hyperplanes. Including zero gives honest zero padding in finite rank and dimensions zero or one. The source proves the one-sided min-max perturbation inequalities from the quadratic order. For positive compact symmetric operators it constructs a principal eigenvector, identifies the second value with the top value on its orthogonal complement, and proves eigenvector attainment when the second value is positive.

For the Wilson operator and its finite approximation, these constructions give

    nu_0 <= lambda_0,
    lambda_1 <= nu_1 + epsilon_m.

The spectral coordinates are the actual eigenspaces supplied by compact self-adjoint spectral theory, retaining their multiplicities. For a>0 the logarithmic operator has weights

    w(mu) = log(lambda_0/mu)/a,
    Dom(H) = {h : sum_mu ||w(mu) h_mu||^2 < infinity}.

`DiagonalHilbertDomain` constructs this maximal domain and its operator. It proves density from finite-mode inputs, symmetry, closedness, and equality of the full adjoint graph with the literal operator graph, including domain membership. `CompactPositiveLogarithm` identifies its spectral exponential with the actual normalized transfer operator. The logarithm is not asserted to be bounded.

With the explicitly required finite separation

    0 < nu_1 + epsilon_m < nu_0,

`WilsonSliceSpectralApproximation.finite_separation_logarithmic_gap` gives, on the constructed domain with zero principal eigenspace component,

    <h,Hh> >= [log(nu_0/(nu_1+epsilon_m))/a] ||h||^2.

The source, compression, tail, min-max and logarithmic-domain bridges are no longer supplied as certificate premises. A concrete certified separation for the actual Wilson matrix is still not provided here. The finite numerical matrix examples below are not Wilson Haar integrals. No physical vacuum identification, regulator-uniform lower bound, continuum construction, or infinite-volume mass gap is claimed.

## 4. The unchanged RH source and actual orthogonal bin projection

The current endpoint owner is

    GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
    NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean

Its analysis-base blob is `2606536c56bdcb33d120aeddfbcbeef793e31ba1`. The new RH modules import this maintained path directly. They retain `wholePickup`, `pickupVelocity`, `pickupDiagonal`, `endpointSum`, the complete ordered cross term and the quarter-unit endpoint allowance.

For T>0 and m>=1, let h=T/m. `UniformBinHilbertProjection` constructs normalized indicators of the disjoint bins (jh,(j+1)h] in real L2(volume), proves their orthonormality, and constructs the actual finite orthogonal projector P. The original response is zero-extended outside (0,T]; this changes no integral or L2 norm on the recording interval. Source identities give

    ||F||^2 = (1/h) sum_(j<m) S_j^2 + ||F-PF||^2,
    S_j = integral_(jh)^((j+1)h) wholePickup(u) du.

Orthogonality is derived rather than assumed. No strict positivity of the response Gram matrix is used, including a response born at the terminal time.

The interval mean is proved to minimize squared error. Comparison with the midpoint gives the sharp affine Lipschitz constant 1/12. For an actual primitive with square-integrable velocity, two midpoint Cauchy-Schwarz estimates give the derivative-energy constant 1/8. This avoids an unnecessary triple-Fubini construction and permits the actual velocity jumps at births.

For N=floor(exp T), H_N=sum_(n<=N)1/n and Q_N=sum_(n<=N)mu(n)^2, the same actual residual satisfies

    ||F-PF||^2 <= min(Q_N T^3 H_N/(12m^2), T^2 V(T)/(8m^2)),
    V(T) = integral_0^T exp(-u) M_floor(exp u)^2 du <= exp(T)-1.

The first bound retains the coefficient-square mass; the second squares only after the signed prefix has been formed. `PickupHilbertProjection.actualResidual_bounds` connects both to the norm of the actual projector residual. Consequently,

    endpointSum(T) <= ||PF||^2 - pickupDiagonal(T) + 1/4
                      + min(Q_N T^3 H_N/(12m^2), T^2 V(T)/(8m^2)).

This is `endpoint_upper_actualProjection`, without an arithmetic-estimate supplier premise. Choosing enough bins can make the second allowance at most one; this controls approximation accuracy, not growth of the signed feature energy.

## 5. Exact arithmetic readout and existing RH return

`PickupBinReadout` evaluates every original response integral exactly. With s=max(a,log n), its value is zero for b<=s and otherwise

    2(b-s)/sqrt(n) + 4(exp(-b/2)-exp(-s/2)).

The source sums these values with the original Mobius signs over the fixed final inventory. This retains all newborn terms, zero coefficients and boundary conventions. It gives an exact finite arithmetic expression for every bin feature and the complete feature energy. It does not rely on numerical quadrature. The optional compression into three prefix arrays A/B/M remains the separately documented hand derivation from the preceding increment; this source implementation instead proves the equivalent literal finite-atom readout and does not claim that prefix-compression identity as a new Lean declaration.

`PickupBinProjection.riemannHypothesis_of_bin_upper_good_scales` composes the proved source comparison with the existing endpoint return. Its premises remain controlled coverage and an all-positive-rate bound on the explicit upper budget. **This theorem does not construct that missing arithmetic witness.** An uncontrolled sequence of good times, a fixed positive exponent, or a growing unaccounted family of methods is not substituted for the required quantifiers. The historical reflected compact-source route is unchanged.

## 6. Evidence and acceptance boundary

Executed external diagnostics passed 229 exact-rational assertions, 1,222 high-precision assertions at 80 decimal digits, 394 floating-matrix assertions, and four hostile controls. Tests include the interval constants, coefficient-mass and mixed-term controls, actual RH inventories through N=32 at births and between births, both residual bounds, exact arithmetic readouts, signed scalar Taylor tails, complete finite exponential Gram expansions, actual finite compression, variational brackets and logarithmic-gap examples.

Floating/high-precision diagnostics are not interval certificates, asymptotic evidence, or proof acceptance. Matrix examples are finite models, not computed Wilson Haar spectra. The lexical scan of the new files found no proof placeholders, axiom declarations, or native trust escapes and found an acyclic new-module import graph. That scan is not a Lean parser, full import-closure validation, or transitive axiom audit.

The external evidence package contains the executed scripts and outputs, exact source hashes, an unexecuted axiom-inspection driver for all 183 public theorem declarations, and build/audit commands. Operational evidence and runner material stay outside the mathematics tree. The passive target `documentation/mathematics/_verification/targets/finite-gram-rh-wilson-completion.json` binds the source commit, blobs, dependency pins and expected checks. It grants no execution authority and records no kernel acceptance.

Outstanding acceptance work is compilation, repair of any elaboration failures without weakening hypotheses, fresh replay of the final dependency closure, and a transitive hypothesis/axiom audit. Outstanding terminal research witnesses are the RH all-positive-rate arithmetic estimate and any actual finite Wilson separation followed by the further uniformity and physical-limit obligations. None is silently filled by a source candidate, a finite test, or a passive target.

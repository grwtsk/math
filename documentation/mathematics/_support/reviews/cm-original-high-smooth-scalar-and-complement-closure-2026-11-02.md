# Original Möbius high/low: scalar and finite-complement source closures

Date: 2026-11-02. Attribution: grwtsk contributors. Formalization assistance:
OpenAI. Status: SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## Source-bound comparison

The prior original unsmoothed reduction is at commit
feeb2efe4a1226f9286745b79019cfc3292e9468.
It defined the genuine original-index high shells as the original
highSmoothBlock B (2^s) (log (2*2^s)); this is the set of indices
possessing a large B-smooth DIVISOR, not all B-smooth integers.
The source coefficient is unchanged moebiusReal n times the genuine
pickupResponse n u, and n=1 remains LOW. OriginalHighWave is their
signed disjoint-shell sum; OriginalLowWave is originalFixedWave minus it.
The preexisting exact original signed square is
F^2 = H^2 + 2 H L + L^2, retaining all mixed terms.

The prior proof candidates isolated two mathematical gates:
  CanonicalShellScalarDecay : Prop
  OriginalLowComplementReturn B : Prop.
Both are strictly arithmetic-free. The new files submit source proof
candidates for exactly these original named propositions, not
new hypotheses or a new arithmetic model.

## Scalar closure

Let a=log 2>0, r=B.primes.card, T_s=(s+1)*a and
q=exp(-a/8) in (0,1). Define C_r=(1+8(r+1)/a)^r.
Pinned grwtsk/math MoebiusHighSmoothAllRateProof proves as source
candidates the two general scalar bounds
  2sqrt(T)<=2/epsilon+(epsilon/2)*T,
  (1+T/a)^r <= (1+2(r+1)/(epsilon*a))^r*exp((epsilon/2)*T).
Apply epsilon=1/2 to the first and epsilon=1/4 to the second:
  exp(2sqrt(T)) <= exp(4)*exp(T/4),
  (1+T/a)^r <= C_r*exp(T/8).
The original source amplitude has the exact normalization
  1/sqrt(2^s) = sqrt(2)*exp(-T_s/2),
proved from original dyadicTime and Real.sqrt_eq_rpow.
The existing source-defined highShellCost therefore satisfies
  highShellCost B s
    <= 2sqrt(2)*exp(4)*C_r*exp(-T_s/8)
    = canonicalShellFactor B * canonicalShellRatio^s.

The preceding pinned genuine Mathlib finite geometric-series theorem
then bounds every finiteHighEnvelope B j by
  K_B = [2sqrt(2)*exp(4)*C_r*q]/(1-q).
The fixed-bank bound is UNIFORM over all j,u, but not uniform in
the bank cardinality r. The new scalar closure leaves no arithmetic
hypothesis and invokes only earlier named scalar theorems and standard
sqrt/exp/dyadic identities.

## Finite complement closure

For every s, highShell B s lies in (2^s,2^(s+1)].
Thus all highShell B s, s<j, are pairwise disjoint original integer
sets, all contained in indices j=Icc 1 (2^j), and n=1 belongs to none.
Pinned Finset.sum_biUnion of pairwise disjoint sets identifies the
original high wave with the sum of ORIGINAL signed atoms over the
finite union of those sets. Finset.sum_filter and finite additivity
then identify the original LOW exactly as
  originalLowWave B j u =
    sum_(n in indices j, n not in any highShell B s, s<j)
       moebiusReal n * pickupResponse n u.
This is the previously named OriginalLowComplementReturn B,
with no source change, aliasing, duplicate counting or changed
endpoint.

## Stronger equivalence and honest arithmetic boundary

Original source and low source have the two-way analytic inequalities
  H_original(T_j) <= 2 H_low(T_j) + 2 K_B^2*T_j,
  H_low(T_j) <= 2 H_original(T_j) + 2 K_B^2*T_j,
with T_j=j log 2. The linear price is subexponential at every
strictly positive rate. Thus for EVERY FIXED prime bank B,
  OriginalLowAllRate B
    <-> AllGridUpper pickupEnergy (log 2)
    <-> PickupEnergySubexp.
The second equivalence reuses the existing genuine good-scale
criterion and monotonicity of the original nonnegative energy.
No smoothing or all-even-moment estimates are necessary for this
particular equivalence.

This DOES NOT make the original signed low source easier by itself:
the complement contains nearly all large integers for fixed B and
the necessary all-rate cancellation is still independently OPEN.
Consequently the published conditional consumer is not a proof of RH.

## Verification and negative controls

Source pins:
- CMOriginalHighSmoothDirectEnergy.lean a8156c9b950db4800224c7a5112f5bc9d3ec15c1
- CMOriginalHighSmoothGeometricSummation.lean dea40f4d802d9251cbc8a48b7bcc311624b17337
- CMOriginalHighSmoothPhysicalEnergy.lean cb1863e41ba9f830684b837d827f571e1df7f465
- CMAdaptiveHighSmoothAllShell.lean 62bed1cccf5ad61f3529f594e1ed85a1bd36dd89
- MoebiusHighSmoothAllRateProof.lean 152e6d7a840240bd2676e02fe36eacf36e0ed5f3
- MoebiusHighSmoothCofactorCountProof.lean 6899657e4ad54cf56fd7e907966d4d9bc2f7f3f8

Pinned Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
No native compiler is available in this conversation runtime.
All new proofs must undergo pinned parser/elaboration, expected types,
fresh kernel replay, complete import and transitive axiom/native helper
checks. A passive acceptance module includes #check / #print axioms
but it is NOT evidence of those commands actually running.

No source replacement, no dropped signs or squareful-zero values,
no modulus alias or fake Fourier-positive variance; no changed bank
in the rate quantifier; no fixed-height bound promoted to RH;
no root import/dependency/CI/runner/scheduler changes.

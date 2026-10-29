# Good-scale signed energy and a proposed arithmetic route to RH

grwtsk contributors

## Status and immutable source

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

Four elementary Lean modules were committed directly on main. The common source snapshot is `6c882304c08c9c1eb18e20317dfb0fdaf4163146`; reviewed starting main was `d1b3b49d2b7a2ef23e9fb1f0d7799920b4c16bab`.

| Module under GRWTSK/ | Introduction commit | Git blob |
|---|---|---|
| Analysis/AsymptoticAnalysis/GoodScaleSubexponential.lean | 7dc82541bf8b2892c33687b9d796cbccdc23206f | 75af52d649b267d72d4cf8b1d13c935b1de92daf |
| NumberTheory/Moebius/GoodScaleEnergyCriterion.lean | fff4e4e575d384d4db39fb4feba69f140200ee72 | a39d24a540a86918ab4f2a8130a86895424dc317 |
| Analysis/Inequalities/FiniteKernelCorrelation.lean | 98cb881f44a563000ff35ea507e327a97ee1c4b8 | b6bc8e512f13203d17c80e9fdfa9cff38937ed05 |
| NumberTheory/Primes/RadicalLogEntropy.lean | 6c882304c08c9c1eb18e20317dfb0fdaf4163146 | 47ce1ff27e556aa514d62de1d814c68cfd5065d9 |

The target toolchain is Lean `leanprover/lean4:v4.33.0`, with Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`; verify the lockfiles at the exact replay pin. New leaves remain outside GRWTSK.lean. Existing sources, dependencies, root imports and verification states are unchanged. No remote runner or workflow was dispatched.

## Exact good-scale theorem

Namespace `GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential` contains:

- `AffineFrequent G`: fixed a >= 1, b >= 0 and T0 >= 0 such that every T >= T0 has S in G with T <= S <= a*T+b.
- `SubexponentialOn f G`: for every epsilon > 0 there are C >= 0 and T1 >= 0 such that f(S) <= C*exp(epsilon*S) for all S in G above T1.
- `global_of_monotoneOn`: those hypotheses plus monotonicity of f on nonnegative times imply the existing `GRWTSK.RiemannHypothesis.CCC.SubexponentialUpper f`.
- `global_iff_on`, `on_of_global`, `add_global`, and two coverage fixtures, including `not_affineFrequent_singleton_zero`.

For a requested rate epsilon, the proof uses delta=epsilon/a, R=max(T0,T1), and the explicit constant

    max(0,f(R)) + C*exp(delta*b).

The finite initial segment is absorbed, not omitted. The good scales concern the SAME outer variable as f. An internal entropy block length is not automatically an outer pickup time. Cofinality alone is not the stated bounded-overshoot premise.

## Native signed pickup and canonical RH

Namespace `GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion` uses the existing source definitions without replacement:

    E(T) = integral_0^T wholePickup(u)^2 du,
    E(T) = pickupDiagonal(T) + pickupCross(T),
    0 <= pickupDiagonal(T) <= 2*T^2.

`pickupEnergy_monotoneOn_nonnegative` derives monotonicity from interval inclusion, after integrability follows from `wholePickup_continuous`. The signed cross sum is NOT assumed monotone. `energy_on_of_cross_on` first adds the globally controlled diagonal, then the new growth transfer is applied to E.

The principal fully qualified declaration is

    GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion.riemannHypothesis_of_cross_good_scales

Its exact open inputs are `AffineFrequent G` and `SubexponentialOn pickupCross G`. It returns `_root_.RiemannHypothesis` through the unchanged energy-abscissa consumer. The companion declarations are `pickupDiagonal_subexponential`, `pickupEnergySubexp_iff_good_scales`, `energyAbscissa_zero_of_cross_good_scales`, and `riemannHypothesis_of_energy_good_scales`.

Dependency path:

    covered good-scale signed cross bound
      -> good-scale actual energy bound
      -> global subexponential actual energy
      -> pickupEnergyAbscissa = 0
      -> canonical RiemannHypothesis.

No arithmetic witness, zero-rate integrability, or converse from RH is supplied. Parent source pins at the reviewed main: `EnergyAbscissa.lean` blob `9453ab6fc629611fa19362b56eb223fabd14bc0a`; `PolynomialSubexponential.lean` blob `c488224fc6f14dfc478d7b7bc3c5bd32f6d8f65c`. These are source identities, not acceptance receipts.

## Finite correlation interface

Namespace `GRWTSK.Analysis.Inequalities.FiniteKernelCorrelation` contains `jointL1`, `product_pairing`, `joint_pairing_sub_product`, `covariance_le_jointL1`, `correlation_le_marginals_add_jointL1`, `weighted_pairing`, and `constant_signal_pairing`.

For arbitrary real arrays and one-bounded observables the source proves the candidate inequality

    |sum P(i,j)u(i)v(j) - (sum p(i)u(i))*(sum q(j)v(j))|
      <= sum |P(i,j)-p(i)q(j)|.

When P is an actual joint probability law and p,q are its actual marginals, this is a covariance bound. The raw-correlation version RETAINS the product of marginal means. The same module proves

    sum_i u(i)*sum_h K(h)v(i,h)
      = sum_h K(h)*sum_i u(i)v(i,h).

This is intended to support comparison with issue #503's exact normalized Abel response without discarding triangular support or depth dependence. No identification with that source or with the complete pickupCross has yet been proved. A constant-signal fixture records that normalized positive weights alone do not imply cancellation.

Pinsker's inequality, relative entropy, probability normalization, actual arithmetic laws, and quantitative information decay are NOT imported. A future jointL1 <= sqrt(2 I) input must use the same actual law, product marginals and natural-log convention. The present theorem must not be described as a formalized entropy-decrement result.

## Radical identity and finite uniform entropy

Namespace `GRWTSK.NumberTheory.Primes.RadicalLogEntropy` defines

    uniformResidueEntropy(n) = -sum_(i : Fin n) (1/n)*log(1/n)

and contains `uniformResidueEntropy_eq_log`, `sum_log_primeFactors`, `uniform_radical_entropy`, and the zero-size control `uniformResidueEntropy_zero`. The conclusions are

    uniformResidueEntropy(n) = log(n), for n > 0;
    sum_(p in primeFactors(q)) log(p) = log(radical(q));
    uniformResidueEntropy(radical(q)) = sum_(p in primeFactors(q)) log(p).

The zero-size empty sum is not a probability distribution. Mathlib's totalized radical(0)=1 is retained. The actual radical definition is `UniqueFactorizationMonoid.radical`, not a newly defined arithmetic object.

Inspected upstream sources at the pinned Mathlib revision: `Mathlib/RingTheory/Radical/NatInt.lean`, blob `fa1204627a638b49490459d716d5d33763da30f1`, for `Nat.radical_eq_prod_primeFactors` and `Nat.radical_pos`; `Mathlib/Analysis/SpecialFunctions/Log/Basic.lean`, blob `2776daac653ac8de9603408765b37a02d63f3e55`, for `Real.log_prod` and `Real.log_inv`. The proof uses `Nat.cast_prod` to move the finite product into the reals. This resolves the previously missing source-level API choice, subject to elaboration.

This finite entropy budget is neither a CRT independence theorem nor independence of arithmetic signs from residues.

## Proposed research path and stopping boundary

1. Validate these exact leaves and the full existing RH dependency closure.
2. Locate the current implementation of issue #503's Abel response and derive a source-preserving comparison to the COMPLETE pickupCross, retaining cutoffs, centering, diagonal and tail terms. The finite weighted identity is available as a source candidate, not that missing comparison.
3. Attempt an estimate for that exact weighted signed quantity, using either averaged arithmetic correlations or a source-matched divisibility operator. A probabilistic route must construct actual laws and marginals, retain kernel mass including its zero case, and bound BOTH the marginal product and joint discrepancy.
4. Establish `SubexponentialOn pickupCross G` for every positive rate and prove `AffineFrequent G` separately in pickup time. Then the committed terminal consumer applies.

In X=exp(T), the required growth is X^epsilon for every epsilon>0. A fixed logarithmic saving against an X-sized expression does not suffice without further source normalization/cancellation. Merely producing more equivalent formulations is not step 3.

Franel-Landau full Farey discrepancy and Nyman-Beurling approximation remain alternative research comparisons, not criteria newly formalized here. No zeta-spectrum realization, Weil-form identification, mutual-information decay or threshold descent is asserted.

## Literature classification

Terence Tao, *The logarithmically averaged Chowla and Elliott conjectures for two-point correlations*, arXiv:1509.05422, first posted 2015, revised 2016: https://arxiv.org/abs/1509.05422. Relevant scope: fixed nondegenerate affine forms, logarithmic averages on (x/omega,x], omega -> infinity and omega <= x. Entropy decrement is a proposed method, not an imported theorem.

Harald Andres Helfgott and Maksym Radziwill, *Expansion, divisibility and parity*, arXiv:2103.06853, 2021: https://arxiv.org/abs/2103.06853. Relevant scope: a centered prime-divisibility operator restricted to a large good subset, explicit prime/interval ranges and norm scale sqrt(sum 1/p). Exact source matching, exceptional-set errors and the needed main-scale exponent remain open.

Both references are METHOD_COMPARISON / UNRESOLVED_SUPPLIER. None of their analytic theorems is used in the new elementary derivations, and no historical influence is inferred. Imported mathematics is the pinned Mathlib finite algebra, logarithms, radical identities and integration infrastructure. Kernel-verified new bridges: NONE CLAIMED. Source proof candidates and conditional RH interfaces are listed above. No paper theorem port is added to the canonical literature ledger by this increment.

## Verification

Lean/Lake execution: NOT_RUN. Fresh kernel replay: NOT_RUN. Transitive axiom/unsafe audit: NOT_RUN. Actual operational receipt: NONE. Lexical checks and finite rational diagnostics are not compiler acceptance. The static target and passive verification issue bind all four source blobs and the exact source snapshot. Execution, logs and receipts belong in grwtsk/noeaaeue. No remote execution or root promotion is authorized by this note.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=993a200fdfd547248df3da882da592298715e87c5ba7b6740c01df047044728b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

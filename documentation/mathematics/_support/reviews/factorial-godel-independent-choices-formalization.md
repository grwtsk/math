# Factorial prime-fiber Möbius mass and Gödel color-channel random choices

Local mathematical attribution: grwtsk contributors. Research date 2026-10-31.

## The exact open theorem and what the new sources attempt

Current `grwtsk/math` base inspected at `44a99c81d209d6afc24fa061953b4b983a056e34`; Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Original module `FactorialPrimeFiberUniformEnergy.lean`, Git blob `7be16212847b5ba1a96c044a6a0ad0880eee5eae`, defines `FactorialBlockArithmeticWeightBound`, the universal arithmetic mass inequality for the *actual* Möbius coefficients in all active factorial prime-length composite blocks. Its conditional consumer proves `blockEnergy T ≤ (9/25) T` for `T≥0`. The existing dense `DenseUniformEnergyBudget` and original `UniformSignedWaveformEnergyBudget` remain open.

Proposed new Lean source candidate: `FactorialPrimeFiberWeightDischarge.lean`. Its named theorem `factorialBlockArithmeticWeightBound` is an attempted unconditional proof of the **original exact proposition** with neither `sorry` nor a research axiom. It is an analytically supported, STATIC SOURCE PROOF CANDIDATE; there has been **NO Lean compilation, no expected-type check, no fresh kernel replay and no transitive axiom audit**. The module additionally uses this candidate to instantiate the earlier conditional `uniform_energy_factorialBlock` and `uniform_energy_factorialBlock_allRate`. It must not be described as a kernel-accepted discharge until a pinned independent Lean check actually succeeds.

### Primary arithmetic proof

For each prime `p`, let `I_p` be the length-`p` interval `(p+1)!+2 .. (p+1)!+p+1`. For any finite original cutoff `N`, the active block set lies in the finite union of `I_p` over primes `p≤N`. Nonnegative mass can be overcounted across this finite union without assuming unproved disjointness or cancellation. Each block's mass is the full sum `Σ_{a:Fin p} |μ(blockIndex p a)| × 2/√(blockIndex p a)`.

The source-specific exact small-block arithmetic is:

- `p=2`: `8,9`, both Möbius-zero.
- `p=3`: `26,27,28`, coefficients `(1,0,0)`; mass `2/√26 ≤ 2/5`.
- `p=5`: `722,723,724,725,726`, coefficients `(0,1,0,0,0)`; mass `2/√723 ≤ 1/13`.

For `p=7+m`, the elementary factorial bound `8!×9^m ≤ (8+m)!`, with `8! =40320 ≥40000`, gives `√((p+1)!)≥200×3^(p-7)`. Every remaining block is therefore bounded by the purely rational tail

`g(p) = p / (100 × 3^(p-7))` for `p≥7`.

The exact telescoping potential

`R(p)=(6p+3)/(400×3^(p-7))`

satisfies `g(p)=R(p)-R(p+1)` for `p≥7`. Hence every finite tail is at most `R(7)=9/80`. As a result,

`sourceWeightBudget(activeBlock N) ≤ 2/5 + 1/13 + 9/80 < 3/5`

for all natural cutoffs `N`. This is an unconditional analytical proof based only on integer factorial arithmetic, exact fixed Möbius values, and nonnegative sums, not a random-sign or RH input.

**Audit priority:** The proof scripts for finite-cover sums, concrete Möbius numerals, powers, `Real.sqrt`, and finite telescoping have not been elaborated. Do not assume the source has zero API/type errors. The mathematical proof and the Lean candidate are different evidence classes.

### Source contrast and hostile controls

The new bound prices **absolute** Möbius mass on the intentionally sparse factorial-block union. It does not provide a nontrivial bound on the **dense** complementary Möbius correlation. Its linear energy growth is genuine; the earlier analytical note proves `H_B(T)/T -> c_B²` with `c_B>1/4`. Thus a uniform `O(1)` energy bound would be false. Changing a coefficient word to `+1` on the dense complement, with the *same* bijective frames, yields energy of order `e^T`: geometry alone cannot prove the full source budget.

## Gödel simulation: exact numeric interface and probability distinction

An actual archived visualizer exists at
`documentation/mathematics/_support/simulations/sphere_torus_godel_observer-2026-10-31.html`, Git blob `79a5c38e7ae25a6da814c16ca152e366aed2c61e`. Its source and the existing `ResidueBandedFourierSoficPath.lean` and `GodelFourierSoficImplementationChain.lean` specify:

- 64 **temporal rotor samples**, not arithmetic Möbius samples;
- 33 nonnegative-frequency DFT bins;
- seven colored residues via `frequencyResidue k = k mod 7`;
- `residueBin` accumulates **complex coefficients before squaring**;
- a seven-channel banded quadratic and a separately tracked high-frequency cutoff residual.

The visualizer samples physical rotor state at variable browser substeps; an exact seconds-to-frequency interpretation is not independently proved by its Lean modules. There is no existing source-bound map from the infinite Möbius pickup to those 64 physical rotor samples. This is not supplied by the new sources.

Proposed companion `GodelRandomChoiceSignedCorrelation.lean` **imports** the actual existing 64/33/7 source types. It proves candidate finite identities:

1. full seven-color reconstruction of all retained complex bins;
2. squared harmonic energy invariant under **per-color sign flips**;
3. the exact *four-outcome* independent Rademacher mean of a cross term is zero;
4. the matching same-channel diagonal mean is unchanged;
5. frequencies 1 and 8 have the same color, so `+1` and `−1` can cancel in that bin even though their separate squared norms add to 2;
6. exact real-source Gram identity `(Σ μ(n)r_n(u))² = Σ(μ(n)r_n(u))² + Σ_{m≠n} μ(m)μ(n)r_m(u)r_n(u)`;
7. a **separate, arbitrary external** map from source integers to `Fin 33` is only a reindexing; it does not imply any spectral or probabilistic cancellation of the arithmetic source.

The mathematically correct separation is

`E_random[ε_m ε_n]=1[m=n]`

under independent uniform signs, whereas the actual arithmetic source supplies its fixed `μ(m)μ(n)` correlations and a complete mixed covariance. The ability to draw a random sample or average over independent signs does not license replacing the actual deterministic covariance by its expected random value. The seven colors further preserve a nonzero principal channel and same-color interference; color rotation does not prove `DenseUniformEnergyBudget`.

A hypothetical **new arithmetic theorem** would need to estimate the *complete actual* dense signed covariance on all dyadic horizons, with real causal responses and original source, to every positive exponential rate. The previous equivalence to Problem P and RH is unchanged. Do not promote the finite model's exact random expectation, the sim's finite spectral damping, or its seven-channel filter to that theorem.

## Verification boundary

Local finite reference `factorial_godel_color_reference.py` reports **1,825 exact** integer/rational/finite-Gaussian-integer checks covering the first factorial blocks, rational tail telescoping, seven-channel aggregation, sign-flip invariance and independent four-choice cross terms. These are independent *finite reference diagnostics*, not a proof of infinite bounds or a Lean/kernel check.

The current environment has no accessible `lean`, `lake` or `elan` executable. The sources are SOURCE_PROOF_CANDIDATES, not compilation evidence. Full pinned checking must import both new modules, check all generated terms and hypotheses, verify the exact original proposition and the absence of `sorryAx`, and audit the entire dependency closure. A failed first compilation requires repair at a NEW source commit, not the invented claim of passing.

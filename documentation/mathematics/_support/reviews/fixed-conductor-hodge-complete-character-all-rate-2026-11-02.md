# Fixed-conductor Hodge norm and every genuine Dirichlet character: exact all-rate equivalence

Local mathematical attribution: **grwtsk contributors**. Formalization assistance: OpenAI ChatGPT. Date: 2026-11-02.

**Disposition:** new finite-family mathematical argument and a source-level Lean theorem candidate. **LEAN_COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN**. No unconditional Möbius cancellation, RH or GRH theorem is claimed.

## Source and concrete research purpose

The current math source examined for this increment was `grwtsk/math@8855a8b1106d72ff62b9a0a3be365ea353d57131` (current main at inspection). The exact relevant dependencies were:

| Source | Git blob | Source-bound role |
| --- | --- | --- |
| `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFixedConductorHodgePort.lean` | `20fe8540519f05de08ab7b20796a85d4b383eb80` | Positive ORIGINAL unit-residue energy, source-verified Parseval, per-character bound, conditional `PositiveSectorComparison` with complete signed reconstruction defect |
| `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDirichletResidueParseval.lean` | `152ef7002c566bcca14ec8aac8c027c523693347` | Exact finite Parseval for original character-twisted causal wave and integrated energy, including all principal and imprimitive characters |
| `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMKaehlerZQCompleteLedger.lean` | `2d07e13012f1afb7e40f9c90c7302e62c68696f1` | Exact integral-to-rational Hodge-sector source ledger, preserved original integer identities and signed detector; the positive complex coordinate norm is not automatically the coherent original pickup energy |
| `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMOriginalHighSmoothAllRateEquivalence.lean` | `57c7b76de27442cd00ccb188ee3e15ece1cab1a3` | HIGH source shell bounded by original arithmetic counting; all-rate global source energy **equivalent** to the remaining signed LOW-sector all-rate bound |
| `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMScaleDependentPrimeAllShellDirichletSqueeze.lean` | `ae86a18d429ab16a5260580be8dc4bf92456012b` | Original one-prime-per-shell geometric Dirichlet squeeze; global half-plane holomorphy, zero-free theorem, and low-sector cancellation are still explicitly open |
| `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDirichletQuarticDiagonalFloor.lean` | `1cf5b19cd230c22d5a2a73fbabfb7359f853d288` | At `q >= floor(exp(T))²` gives a LOWER diagonal bound on all-character quartic real-cross energy, not the desired fixed-conductor upper bound |
| `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusLFunctionFamilyInverse.lean` | `2b9c2b556de587db611478b7724c9205db90fd3b` | Arithmetic function convolution inverse, character-specific Möbius coefficients and initial Dirichlet-series identities; does not supply the analytic half-plane completion |
| `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyPublicPrimitiveCharacterHalfPlusEpsilonFamilyImpliesDirichletGRHOfMelli.lean` | `ea306c06d65cca3f640c3b94120b16029cd1e802` | Primitive-character GRH implication with separately specified Mellin/explicit-formula premises; no inhabitant of the primitive family supplied |

None of these upstream source candidates was freshly compiled or kernel checked in this turn; a cited blob is a source identity, not a proof receipt. This is a bounded source neighborhood, not a claim to have completed a mathematical audit of every repository declaration.

## The actual theorem, proof, and why it matters

Fix `q>0` **before** all rates and times. Let `E_χ(T)` be the maintained original complex causal `familyFiniteResponseEnergy(dirichletCharacterCoefficients χ,T)`. Let `R_{q,a}(u)` be the maintained original Mobius causal residue wave and

```
P_q(T) = ∑ a : ZMod q, if IsUnit a then originalResidueEnergy(q,a,T) else 0.
```

The exact pre-existing finite Parseval theorem is

\[
\boxed{\sum_{\chi\bmod q}E_\chi(T)=\varphi(q)P_q(T).}
\tag{1}
\]

This is a coherent, signed-source-positive form: the original signed integers are summed INSIDE each complex waveform before squaring. Nonunit classes vanish under the actual character, without being falsely counted as arithmetic zero.

For the fixed dyadic time `T_j = j log(2)`, define `AllGridUpper f` exactly as maintained: **for every** `ε>0`, there is a `C_ε≥0` such that for **all** `j`, `f(T_j)≤C_ε exp(ε T_j)`.

The new `fullPositiveResidue_allGrid_iff_every_character` states

\[
\boxed{
\operatorname{AllGridUpper}(\varphi(q)P_q)
\iff
\forall\chi\bmod q,\ \operatorname{AllGridUpper}(E_\chi).
}
\tag{2}
\]

**Forward proof:** at nonnegative physical times every original character energy is nonnegative and is at most the complete Parseval sum. This uses the old source theorem `each_character_energy_le_positive_residue`. Hence the exact same bound constant controls every character, including the principal one.

**Reverse proof:** there are exactly `φ(q)` characters at the FIXED modulus. For a chosen `ε>0`, take the original witness `C_{χ,ε}` from each separate character hypothesis; the finite sum `C_ε = Σ_χ C_{χ,ε}` is nonnegative. Sum their **source-exact** inequalities and use (1). The finite constant may depend on q and ε, never on j. Thus no uniform-in-conductor hybrid bound or probabilistic independence is inserted.

The logical improvement over the old fixed-conductor file is a converse implication at all positive rates and the explicit equivalence (2), not another representation of the same finite Parseval identity. The source `PositiveSectorComparison.complete_allGrid` consumes its already-existing metric-energy and error budgets to derive the **whole** positive family statement by (2).

## Hostile countermodel: Hodge comparisons are free without independent error control

The new `zeroMetricAllError` is a valid witness of the old conditional `PositiveSectorComparison` record with

```
metricEnergy(T) = 0
signedReconstructionDefect(T) = P_q(T)
reconstructionAllowance(T) = P_q(T)
detectorCost = 0.
```

The original source equation `P_q=0*0+P_q` holds, and the signed defect is bounded by its allowance. The metric energy is identically zero, so **every** all-positive-rate metric upper bound holds trivially. But the reconstruction allowance is **exactly** the original difficult source `P_q`; its required all-positive-rate bound has not improved. The formal statements `zeroMetricAllError_metric_is_allGrid` and `zeroMetricAllError_defect_allGrid_iff_source` expose this obstruction. This is a direct mathematical counterexample to the inference "a smooth rational Hodge metric was constructed, therefore the source has an RH-strength energy bound."

A meaningful Hodge supplier must therefore construct a source-faithful detector from the specific integral/rational/real geometry, with an **independently controlled** coherent metric energy AND signed reconstruction defect at all rates. An arbitrary `PositiveSectorComparison` record does not meet the criterion by existence alone.

The principal-character issue is not cosmetic. The complete positive form in (1) includes the constant harmonic direction (the principal character); projecting only to the mean-zero pair-difference/Laplacian form loses it. For q=1, the nonprincipal form is identically zero even if the actual original Möbius energy is large. For q>1, all characters remain included under the fixed conductor.

## Separate additional methods checked

- `CMOriginalHighSmoothAllRateEquivalence` proves that high-mode subexponential control leaves the exact original **low signed energy** task. It does not prove that low energy has the all-positive-rate bound.
- The all-shell chosen-prime Dirichlet squeeze controls a positive one-prime-per-shell mass with a fixed radial boundary, but its independently stated holomorphy and original low-source comparison remain open.
- The newest original quartic no-alias positive collision result assumes q grows with the arithmetic cutoff, giving a **lower** bound; the fixed-q all-rate upper estimate in (2) cannot be deduced from it. At fixed q, distinct integer rational slopes can alias with opposite Möbius signs. The published q=7 counterexample in the source review uses original ordered pairs (2,3) and (1,5).
- The formal Dirichlet-convolution inverse alone applies in the initial absolute-convergence half-plane. Extending the reciprocal L-function and employing a primitive-character functional equation remains a separate analytic obligation before an accepted formal GRH implication.
- Finite torsion, coding, Rank32, M23 and other bounded type-representations may help find a source comparison, but their finite state capacity and smoothness cannot substitute for the all-positive-rate original arithmetic estimate. No unsupported finite-state equivalence to the infinite Möbius stream is inferred.

## Independent finite controls and verification

The standalone `tests/fixed_conductor_reference.py` re-sieved the **actual** original integer Möbius coefficients and computed all four Gaussian character sums mod 5 at N=100,1000,10000. The exact integers satisfy complete Parseval and principal/nonprincipal decomposition. At N=1000 the four squared character modes were `49,401,441,401`, totaling `1292 = 4*323`. It also checked original causal-wave Parseval at five finite physical times and a countermodel where zero metric + full source defect provides no growth estimate. **40 finite independent reference assertions passed**. The data and program are not Lean execution, a source-to-Python refinement proof, or an asymptotic arithmetic certificate.

New mathematical file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFixedConductorHodgeAllRateEquivalence.lean`, authored as a pure source proof candidate, containing no research axiom or `sorry`. Compilation, expected types, fresh kernel replay, transitive axiom audit: **NOT_RUN**. Bind any future native receipt to the exact final commit, this file's Git blob, all transitive imports and the selected Lean/Mathlib toolchain. No continuous native run or checker dispatch was performed by this document.

## Strongest precise next mathematical supplier

For each fixed q and each ε>0, construct **independently** a nonnegative `C_{q,ε}` such that

\[
\boxed{\varphi(q)\sum_{a\in(\mathbb Z/q\mathbb Z)^\times}\int_0^{j\log2}|R_{q,a}(u)|^2\,du
\le C_{q,\epsilon}\exp(\epsilon j\log2)\qquad\forall j\ge0.}
\]

This is EXACTLY the whole-character energy criterion (2), including principal, for the maintained original signed waveform. It is **not** established by Parseval, rationality, fixed-q cardinality, positivity or smoothness alone. For q=1 the corresponding arithmetic source is RH-strength; for primitive characters at all fixed q, use only the independently checked analytic inverse-L and functional-equation return to formulate GRH. The next independent proof should aim at the genuine spectral-gap/detector/reconstruction estimate for the original low signed sector, without putting the desired bound into an unconstrained `reconstructionAllowance`.

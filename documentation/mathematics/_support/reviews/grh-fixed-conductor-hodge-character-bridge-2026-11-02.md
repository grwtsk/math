# Fixed-conductor Hodge-Q sector bridge to the original character-twisted Möbius source

Local attribution: **grwtsk contributors**. 2026-11-02. Status: SOURCE_PROOF_CANDIDATE. No native Lean execution, kernel replay, axiom audit, Hodge-cycle-class acceptance, or GRH theorem established.

## Why this is the missing connection

The earlier RH proof path bounds the *original signed* Möbius pickup energy, or its exact signed endpoint equivalent, at every positive rate. Generalizing from the zeta case to Dirichlet GRH requires **every fixed positive modulus q and every primitive character χ mod q**, not just χ=1, not a moving-modulus average, and not an unsupported identification between a Hodge-positive quadratic form and the original signed source.

The user's Hodge-Q and smoothness sources are valuable because rational projectors and real/complex harmonic coordinates can organize finite character sectors. **Smoothness alone does not provide a uniform-in-time arithmetic bound**, and rational Hodge cycle algebraicity does not automatically identify a primitive χ-eigenspace or its analytic L-function. A complex character projector may require extending Q to a cyclotomic coefficient field and then to C. Rational Galois-orbit projectors and individual complex-character projectors must not be silently identified. The source map, harmonically reconstructed detector, and all mixed terms are independent proof obligations.

## Exact inspected source identities

At inspected math baseline `e79c8ca76ee44b69987872c603d8ab6f61c5005d`:

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDirichletResidueOrthogonality.lean` blob `82698de228e06569e2f9dfe5223eb2056d09bc8d` defines `originalResidueWave`, `originalCharacterWave`, and their exact finite Fourier identity on *genuine* `DirichletCharacter ℂ q` with nonunit χ-values zero.
- `.../MoebiusDirichletResidueParseval.lean` blob `152ef7002c566bcca14ec8aac8c027c523693347` defines the exact physical-time identity `all_character_energy_parseval` with every original signed Möbius coefficient and complete unit-residue squared wave. `originalResidueEnergy` is a real integral of a complex norm square.
- `.../MoebiusLFunctionHermitianPickup.lean` blob `0643134718a73f65f1ca01f2db0804b4883676b4` defines `familyFiniteResponseEnergy`, proves pointwise nonnegativity for T ≥ 0, and exposes the separate family-specific analytic/zero interface.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMKaehlerZQCompleteLedger.lean` blob `2d07e13012f1afb7e40f9c90c7302e62c68696f1` retains the actual original integer entries and its coherent detector before squaring. Its current scalar return concerns the original untwisted Möbius source, not every χ; no character-residue/Hodge comparison is known to follow automatically.
- `GRWTSK/Geometry/HodgeConjectureCMAbelianVarieties.lean` blob `ea319dec68c4e43781758ed40ef9bf4ce1402d9c` is an upstream import surface only; comparator, compilation, independent kernel and axiom status are NOT_RUN. This does not construct a cyclotomic idempotent for every primitive character.
- `GRWTSK/NumberTheory/MultiplicativeNumberTheory/RadicalLogEntropy.lean` blob `47ce1ff27e556aa514d62de1d814c68cfd5065d9` supplies `sum_log_primeFactors`, the solved identity from the user's separate radical-log note.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyPublicPrimitiveCharacterHalfPlusEpsilonFamilyImpliesDirichletGRHOfMelli.lean` blob `ea306c06d65cca3f640c3b94120b16029cd1e802` contains a source-level DirichletGRH assembly from an **independently supplied centered twisted von Mangoldt/ψ family**. That is not definitionally the same family as the present reciprocal-L Möbius pickup.

The earlier user-provided `Review RH Proof Paths.txt` is RH/source-specific and keeps the signed diagonal, coherent cross, quarter-unit endpoint error and all-positive-rate growth hypothesis separate. `Rewrite Mathematical Formalization Plan.txt` concerns the radical logarithm and does not supply twisted character cancellation. Historical notes are not native checking evidence.

## New mathematics, not an RH/GRH claim

For fixed q > 0, let

    U_q(T) = sum_{a in (Z/qZ)^×} int_0^T |R_{q,a,T}(u)|² du,
    E_χ(T) = int_0^T |F_{χ,T}(u)|² du,

where R is the **original χ-independent residue-fiber Möbius response** and F is the original complex Möbius response twisted by the actual χ. Existing Parseval gives

    sum_{χ mod q} E_χ(T) = φ(q) U_q(T).

For T ≥ 0 every E_χ(T) is nonnegative, hence

    0 ≤ E_χ(T) ≤ φ(q) U_q(T).

This is the first new consumer. **q is fixed first.** Thus φ(q) is a time-independent multiplicative constant; a bound U_q(j log 2) ≤ C_{q,ε} e^{ε j log 2} yields the same all-positive-rate bound for each χ. No uniformity in a growing modulus or conductor is inferred.

The second consumer is a conditional positive metric/Hodge port: it retains an ACTUAL signed equality

    U_q(T) = K_q H_q(T) + D_q(T),
    D_q(T) ≤ R_q(T), K_q ≥ 0,

where H_q is the declared positive metric energy and R_q is the independently proved upper allowance. If both H_q and R_q obey all-positive-rate dyadic bounds, each character's exact E_χ does as well. This **does not** construct such a Hodge realization; it exposes the precise comparison the Q-Hodge and smooth geometry portion must furnish. A bound on an arbitrary sector norm, with the signed detector residual left uncontrolled, does not qualify.

The additional radical-log lemma identifies the exact distinct-prime conductor overhead as log(radical q) and shows it is subexponential in **time for fixed q**. It cannot bound the missing original signed low-sector energy or make constants uniform in q.

## Remaining analytic route to Dirichlet GRH

Two distinct possibilities exist; neither is silently completed here:

(A) **Reciprocal-L/Möbius route.** Establish the exact causal prefix-to-finite-response identity for each χ; prove the source Laplace identity for 1/L(s,χ) on Re s > 1, and use the all-positive-rate character cumulative energy to continue the reciprocal holomorphically into Re s > 1/2. Then prove zero exclusion for the actual Dirichlet L, transfer via its functional equation, and handle principal/nonprincipal and imprimitive-to-primitive conductor factors explicitly. The existing `FamilyPrefixResponseReconstructionTarget`, source analytic/zero interface, and private-to-kernel dependency checks remain relevant. A finite-energy bound alone is NOT DirichletGRH until this bridge is established.

(B) **Centered von Mangoldt/ψ route.** Prove an actual source-bound conversion from the χ-twisted original Möbius family to `CenteredTwistedPsiHalfPlusEpsilon χ`, retaining prime powers, log derivative, gamma factors, conductors, principal terms, and all errors. Only then apply the existing `primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH`. The latter theorem does not transform the former Möbius bound by itself.

For primitive characters, q-local constants may depend on q or χ. This is Dirichlet GRH, not GRH for arbitrary automorphic/Artin/Hecke L-functions; those need additional true coefficient and analytic comparisons.

## Hostile cases

1. Positive sum-of-atom squares substituted for the squared coherent sum: cross terms lost; reject.
2. Per-character χ-bound inferred from a possibly negative averaged CROSS quantity: reject. The actual energy terms, not signed mean cross, are nonnegative.
3. A character projector over Q claimed to isolate any complex χ without field extension/Galois-orbit analysis: reject.
4. A factor φ(q) treated as bounded independent of q while q grows with e^T: reject. For fixed q it is constant in T.
5. Imprimitive/conductor correction or unit/nonunit source entries silently removed: reject. χ(n)=0 for nonunits is a genuine character identity, not erasure of μ(n).
6. A positive metric norm or smoothness claimed to bound original low-sector energy without a detector comparison and bounded signed defect: reject.
7. An imported Hodge conjecture module or `Surface.Core` GRH interface claimed compiled/accepted solely by its presence: reject.
8. Finite reference Fourier checks claimed to prove a Lehmann–Mellin identity, continuation, GRH, or asymptotics: reject.

## Status and exact next proof

Three new mathematical roles: (i) pointwise original-character energy ≤ φ(q) U_q(T), (ii) fixed-q all-rate transfer and signed Hodge-port error, (iii) radical conductor overhead. Native Lean syntax/types/kernel/axiom checks: NOT_RUN. The source proof is a candidate, not an analytic acceptance receipt. Independent finite tests are a toy Gaussian-integer Fourier check only.

**Next theorem:** instantiate `PositiveSectorComparison` from a *particular* rational CM/Hodge cochain sector with a source-exact map into the original q-unit residue-wave vector, including cyclotomic character idempotents and the signed determinant/gauge defect. Then prove the requisite all-rate metric/defect estimate from actual geometry or arithmetic, not as a field without a witness. Finally choose one of the two characterwise analytic returns above. No global GRH proof is currently established.

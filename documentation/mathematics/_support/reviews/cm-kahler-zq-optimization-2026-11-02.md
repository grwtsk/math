# Optimization of the existing Kähler ℤ→ℚ, full-integer gauge and residue-link mathematics

**Status:** SOURCE_PROOF_CANDIDATE. No Lean/Lake compilation, independent fresh kernel replay, expected-type checking or transitive axiom audit was performed. Mathematical direction: grwtsk contributors; formalization assistance: OpenAI. The additions do not change the original signed Möbius source, existing integral polarization or any CERN observations.

## Exact inspected source and scope

Inspected `grwtsk/math/main` at `1cdffe535e8fbd8d0cec79f2c56d6c8f87c38955`, and an updated main HEAD `e89888cac20ca3d795e34bcf61c8f10dc1bb91c5` during preparation. The source-affecting modules were obtained by immutable Git readback:

- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMKaehlerZQGaugedResidueAnchor.lean` blob `da022506198d00d8a49cbbd09661a04788fcb660`: `DifferentialZ`, `DifferentialQ`, their source map, chosen integer symplectic lattice, `FullIntegerPacket`, complete `SectorPacket`, `Gauge`, original coherent detector and signed energy return.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMKaehlerZQResidueLinks.lean` blob `a8a80c3ca5e6e9783c59066e00b7f964eab8f0cd`: existing norm-one ordered link transports, covariant differences, triangular holonomy and gauge transformations.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMKaehlerZQGaugeFullReturn.lean` blob `03b18190dba9e8f29c07ba26761178c9d6125df0`: exact source-relative detector and original real signed `pickupEnergy` with all four parity pairs.
- `GRWTSK/Geometry/KahlerSplitting.lean` blob `f0487ab375dbb97a4cdee54a1fa2606a93c25ba3` and `GRWTSK/Geometry/PinchedKahler.lean` blob `d2ded3a084a41926049fd5b9de05bb28210032ab` are **upstream comparator wrappers**, not a constructed CM ample-line-bundle polarization.
- Pinned Mathlib Kähler module `Mathlib/RingTheory/Kaehler/Basic.lean` at `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `8cef68402fb7b80b00ca0436233549a4e9ceee37`, explicitly supplies `KaehlerDifferential.map_D`, `map_surjective`, `Derivation.liftKaehlerDifferential_comp_D` and its universal uniqueness theorem. Pinned `Mathlib/Algebra/Module/LinearMap/Rat.lean` supplies `AddMonoidHom.toRatLinearMap`.
- Predecessor proposed local file `CMKaehlerZQRationalGaugeCompatibility.lean` was examined; it is not yet on the inspected `main` and retains its own unverified source status. It is not a prerequisite for the new optimized modules.

## Optimization 1: actual differential equivalence, not just surjectivity

For **every commutative ℚ-algebra** A, changing the base from ℤ to ℚ does not introduce a new universal first differential module:

```
Ω¹(A/ℤ)  ≃[A]  Ω¹(A/ℚ).
```

The current source states only that the natural map is *surjective*, and retains `(ω, image ω)` as a provenance graph. In the candidate `CMKaehlerZQOptimizedStructure.lean`, convert the original universal ℤ-derivation `D_Z` to a ℚ-derivation using the fact that additive maps between ℚ-modules are automatically ℚ-linear (`AddMonoidHom.toRatLinearMap`). The universal property of Kähler differentials constructs a **specific A-linear inverse** to the existing `differentialZtoQ A`. The two compositions fix the universal `D_Z a` and `D_Q a`, respectively, and `Derivation.liftKaehlerDifferential_unique` extends these pointwise identities to the entire modules. The candidate then constructs an explicit `LinearEquiv`. Thus the existing `differentialGraph` is an injective **provenance graph** of one differential module, rather than two independent degrees of freedom.

**Important mathematical distinction:** the isomorphism of universal differential modules does NOT allow the integral Betti lattice, its torsion, integral symplectic form, or Chern class of an ample line bundle to be recovered from a rational vector-space description. An integral structure on the original CM variety still requires an independent source-realized lattice and polarization. The proposed proof candidate does not assert that the chosen symplectic lattice in the source file *is* the CM variety's integral cohomology.

## Optimization 2: strict positivity of the selected integral/rational polarization

The source establishes `ω_Z(v,J_Z v)=Σ_i(x_i²+y_i²)≥0`. The new `CMKaehlerZQOptimizedStructure.lean` retains the chosen original integer lattice and proves the stronger source-level statements

```
q_Z(v)=0 ⇔ v=0,
q_Q(w)=0 ⇔ w=0,
q_Q(rationalize(v)) = ↑q_Z(v),
ω_Q(w,J_Q w)=q_Q(w)>0  for nonzero w,
```

plus the injectivity of the coordinate rationalization `Fin g → ℤ×ℤ` into `Fin g → ℚ×ℚ`. These are **coordinate-model statements**, not a canonical positive Kähler metric on the original complex CM variety. This separates an actually nondegenerate chosen coordinate form from a not-yet-proved geometric polarization.

## Optimization 3: gauge the COMPLETE original integer packet BEFORE quotienting

The current sector `Fin 2 × ZMod(d*d)` is an observation quotient; different integers can share one parity and additive residue. Its `gaugePacket` acts on the *aggregated* packet. The new `CMKaehlerZQOptimizedStructure.lean` defines the explicit source map

```
sector(n) = (n % 2, floor(n/2) mod d²)
G_g(x)_n = g_(sector(n)) x_n,
A_d(x)_s = Σ_{original n, sector(n)=s} x_n.
```

It adds the exact commuting-square target `A_d(G_g x)=g·A_d(x)`, full labelled norm preservation `‖G_g x‖²=‖x‖²`, and both direct full-label and sector-level compensated coherent readouts, including all signs and nonunit classes. The explicit ledger keeps the original *entire integer-labelled vector* beside its gauged aggregated observation, and is therefore injective even though `A_d` itself need not be. The proof never divides by a vanishing response or assumes residues are primitive.

**Concrete noninjectivity control:** at `d=1, j=2`, original integers `n=1` and `n=3` have the same parity/residue. A packet with coefficients `+1` at 1 and `-1` at 3 aggregates to zero, although its original positive `ℓ²` norm squared is 2. Gauge compensation recovers a coherent sum, **not the original labelled vector from an aliased observation**. Thus previous per-channel gauge invariance is compatible with the impossibility of residue-only lossless reconstruction.

## Optimization 4: properly normalized reversible residue links

The previous `Links d` demands `‖U(i,j)‖=1` but **does not** require `U(i,i)=1` or `U(i,j)U(j,i)=1`. Those are fundamental conditions for a normalized two-way link connection. The new `CMKaehlerZQOptimizedStructure.lean` makes the missing conditions an explicit predicate on the existing `Links` data, proves invariance under the repository's local U(1) gauge action, and proves that `flatLinks` meets them. The norm-one link field `U(i,j)=-1` is a concrete counterexample: it satisfies `‖U‖=1`, yet `U(i,i)=-1`. Its triangular holonomy is still gauge invariant; invariance alone is therefore insufficient to identify a physical parallel-transport law.

An actual CM line bundle, its Chern connection, and a source-derived curvature-to-residue-holonomy comparison remain **OPEN**. The new stronger link predicate does not invent any of those data.

## Evidence, exact finite controls and outstanding acceptance

`cm_kahler_zq_optimized_reference.py` passed **6,582 exact finite checks**: integral and rational pairings, strict positivity, polynomial-derivation rational linearity, full integer label gauge compatibility, aliasing counterexample, normalized reverse transports, and triangular holonomy. The tests use exact rational arithmetic and exact Gaussian unit phases; they are **not** a Lean proof and do not compute the actual CM polarization, an external physical coupling, CERN measurements, or RH.

The four optimization groups are consolidated into one additive Lean source candidate, `CMKaehlerZQOptimizedStructure.lean`, to keep the imported declarations and verification boundary together. Original modules are unchanged. No `lean`, `lake`, or `elan` binary was found locally; hence `COMPILATION_NOT_RUN`, `EXPECTED_TYPES_NOT_RUN`, `FRESH_KERNEL_NOT_RUN`, `TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. A real source-bound verifier must also check the upstream imports rather than treating a no-`sorry` scan as acceptance.

**Research priorities after checking:** (1) compile/repair the explicit ℤ→ℚ differential equivalence and full integer gauge commuting-square; (2) construct a nontrivial *actual* integral lattice and compatible Kähler class from a concrete CM variety and compare it to the chosen model; (3) derive a line-bundle connection and match actual loop holonomy, with calibrated physical conditions if interpreting it as a gauge field; (4) maintain an independently stated signed Möbius endpoint/energy inequality rather than inferring it from a positive norm or the coherent gauge readout. The periodic Schwartz-to-`Lᵖ` transfer and independent CERN measurement likelihood also remain open.

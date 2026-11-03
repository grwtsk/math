# General finite residue observables and source-preserving Wilson–Gödel transport

Local mathematical attribution: grwtsk contributors. 2026-11-01.

## Objective and actual source

Generalize the seven-class Wilson–Gödel comparison without replacing either the
actual SU(2) Wilson plaquette energy or the Gödel observer's spatial tensor.
The universal theorem separates finite partition arithmetic from the physical
supplier. Its application retains the real lattice source and exact gauge/chart
isometries. The generic result accepts a finite packet inside an arbitrary,
possibly infinite, ambient source type.

Starting source: grwtsk/math/main 09ce7c97ff22db4cafecf5106ee17b12230e9397.
Proposed source files (the final publication pin is tracked separately):

- GRWTSK/HarmonicAnalysisOnEuclideanSpaces/FiniteGradedObservableCover.lean:
  finite source packets, arbitrary finite grade, signed/complex additive observations,
  exact masked residuals, and class-dependent weighted bounds.
- GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonGodelResidueCover.lean:
  a concrete consumer on actual Plaquette L, Configuration L SU2,
  wilsonAction, plaquetteEnergy, blockEnergy, spatialMetric and chart isometries.
- Related but distinct: ResidueGradedConvolution.lean partitions signed
  output-dependent ordered Fourier-mode interactions with an additive-group
  homomorphism and retains its own off-band residual. That object is not the
  Wilson plaquette energy and is not silently identified with it.
- The previous Wilson–Gödel commit fc0eb66fe5ed46848709e9a252845087232dc904
  and grwtsk/math#1554 retain their original independent evidence status.

## Universal exact-cover theorem

Let X be any source type, S a finite subset of X, R any finite label type,
rho:X→R a total map and A an additive commutative monoid. Define

    S_r = {s∈S | rho(s)=r}
    F_r = Σ_{s∈S_r} f(s),  f:X→A.

Every s lies in exactly one fiber, so finite Fubini gives the identity

    Σ_{r∈R} F_r = Σ_{s∈S} f(s).                      (I)

This preserves source indices and multiplicities even for signed or complex f.
No injectivity or surjectivity of rho is needed. All classes are nonempty
if and only if rho restricted to S is onto R. R need not be cyclic, an abelian
group or even an algebraic group. For infinite X, the result applies to any
chosen finite packet S; it does not assert a convergent infinite limit.

For any mask m:R→Bool, the exact source splits as

    F_keep = Σ_{r:m(r)=true} F_r,
    F_omit = Σ_{r:m(r)=false} F_r,
    Σ_s f(s) = F_keep + F_omit.                     (II)

For complex f, triangle inequality gives

    ||Σ_s f(s)|| ≤ ||F_keep|| + ||F_omit||.          (III)

The omitted term is the literal signed source remainder, never an adjustable
tolerance. Its numerical bound requires separate analytic work.

If f:X→ℝ satisfies f(s)≥0, if a≤w(r)≤b for EVERY class, then

    a Σ_s f(s) ≤ Σ_r w(r) F_r ≤ b Σ_s f(s).        (IV)
    Σ_r w(r) F_r = Σ_s w(rho(s)) f(s).             (V)

No sign restriction on w is necessary for (IV), only its bounds and
pointwise positivity of f. The comparison generally fails for signed f;
signed observations must use (I)–(III) unless extra inequalities are proved.

## Actual Wilson lattice specialization

Let L≥1 be the finite physical Wilson regulator size, P_L the actual
four-dimensional oriented plaquette inventory, R any finite grade type and
rho:P_L→R ANY total grading. Define actual class energy

    E_r(U) = Σ_{q∈P_L:rho(q)=r}
               [1 - (1/2) Re Tr(Hol_q(U))].

SU(2) unitarity yields 0≤the original plaquette penalty≤2. Actual
holonomy conjugation under vertex gauge transformations preserves this
trace penalty. Therefore

    0 ≤ E_r(U) ≤ 2 |{q:rho(q)=r}|,
    Σ_r E_r(U) = S_Wilson(U),                       (VI)
    E_r(g·U) = E_r(U).

These are not generic assumption fields: the source-specific SU(2) bounds
and gauge laws are consumed. The previous rho(q)=q.base(0) specializes
this result, with all its cyclic classes genuinely occupied. An arbitrary
rho may have empty classes, without compromising total reconstruction.

For ANY real marking c(q), including genuine Möbius signs when supplied,
the exact signed-source return is separately

    Σ_r Σ_{q:rho(q)=r} c(q)e_q(U) = Σ_q c(q)e_q(U). (VII)

No positive bound for the signed total follows solely from this identity,
and no Riemann Hypothesis cancellation is claimed.

## Independent observer readings for different classes

Fix actual GodelObserverMetricVorticity.Parameters p with a>0 and |beta|<1.
For each r independently supply the genuine Gödel chart coordinate x_r,
four-tangent v_r and λ_r≥0. Define

    h_r = spatialMetric(p,x_r,v_r,v_r) ≥ 0,
    w_r = 1 + λ_r h_r,
    W_r(U) = w_r E_r(U).

This is more general than the previous constant observer gain. Its exact
source item-by-item pullback is

    Σ_r W_r(U) = Σ_{q∈P_L} w_{rho(q)} e_q(U).       (VIII)

Suppose, for constants Λ≥0 and B, EVERY class satisfies
0≤λ_r≤Λ and 0≤h_r≤B. Then 1≤w_r≤1+ΛB; (IV) gives

    S_Wilson(U) ≤ Σ_r W_r(U)
                 ≤ (1+ΛB) S_Wilson(U).             (IX)

This is a two-sided finite physical-action comparison. It becomes uniform
in L only if Λ and B are themselves genuinely bounded independently
of L. No uniform B, continuum construction, Hamiltonian comparison or
mass gap is inferred from finite covering alone.

For independent chart shifts s_r, the actual Gödel isometry sends
(x_r,v_r) to (x_r+s_r,shiftTangent(s_r,v_r)), leaving h_r intact.
An actual SU(2) vertex gauge transformation leaves E_r intact. Their
product preserves every weighted W_r. The separately sourced Gödel
vorticity two-form also obeys its own shift transport, but it is not
identified with SU(2) curvature, and no coupled field equation follows.

## Hostile tests and proof comparison

1. Empty fiber: a non-surjective rho has an empty class. Therefore a
   generic assertion that EVERY finite label is present is false.
   Exact full reconstruction still holds; the precise nonempty-fiber
   equivalence addresses the obstruction.
2. Same-grade signed cancellation: coefficients +1 and -1 can sum to
   zero, but their separate squared magnitudes total two. A sum of
   squared amplitudes is not the norm square of the summed class.
3. Incomplete mask: excluding a nonzero class leaves a genuine omitted
   source term. Arbitrary cyclic bands do not cover all nonlinear
   interactions without an exact retained/omitted identity.
4. Flat connection U=1: all Wilson penalties vanish even if EVERY
   class is occupied. Thus complete residue coverage is not a
   positive excitation gap.
5. Unbounded observer: a large spatial rest energy h_r makes w_r large.
   Without a separately supplied B, no global upper physical budget
   follows from observer-weighted completeness.
6. Gödel rest root: h_x(u,u)=0 along the actual observer-time direction
   while its horizontal vorticity has nonzero norm. Neither the
   spatial-energy zero nor vorticity alone is a Yang–Mills mass.

The elementary partition proof and source SU(2) holonomy-conjugation
proof play different mathematical roles. Finite experiments could check
representative cases, but neither numerical agreement nor repeated
Fubini scripts constitute an independent continuum proof. No dated
novelty claim is made about the underlying elementary identities.

## Declaration map

Generic module:

- fiber, all_fibers_nonempty_iff, classSum, classSum_cover.
- retainedClassSum, omittedClassSum, source_eq_retained_add_omitted,
  omitted_all_retained, complex_source_norm_le.
- classSum_nonneg, classSum_le_card, weightedClassSum,
  weighted_eq_source, weighted_bounds.

Wilson and Gödel consumer:

- gradedWilsonFiber, gradedWilsonFiber_nonempty_iff,
  gradedWilsonEnergy, gradedWilsonEnergy_cover,
  gradedWilsonEnergy_nonneg, gradedWilsonEnergy_le_two_card,
  gradedWilsonEnergy_gauge, gradedWilsonEnergy_latticeResidue.
- gradedMarkedWilsonEnergy, gradedMarkedWilsonEnergy_cover,
  gradedWilson_weighted_bounds.
- gradedObserverGain, gradedObserverGain_bounds,
  gradedObserverWilsonReadout, gradedObserverWilson_exact_source,
  gradedObserverWilson_two_sided, gradedObserverWilson_chart_gauge.

These are Lean source proof candidates until compiled and audited.
The primary analytical arguments above stand separately as finite
mathematical proofs with explicit hypotheses and no physical-field
identification beyond the source-specific finite regulator.

## Exact next frontier and verification

The grade rho:P_L→R is an explicit EXTERNAL map from real plaquettes.
It is not automatically the temporal spring DFT residue, a Hodge
cohomology class, a noncommutative torus K_0 label, or a Möbius arithmetic
residue. A true cross-source transport needs an actual map, signed mixed
terms, and residual estimates. To reach a physical continuum Yang–Mills
gap, additional genuine gauge-invariant excitation-domain construction,
full-sector spectral coercivity, cross-sector control, uniform regulator
bounds, vacuum compatibility and reconstruction remain outstanding.

No new upstream paper result is imported for finite Fubini. The actual
SU(2) Wilson and Gödel mathematics retain their original repository
sources, source pins and author attribution (including Jaffe–Witten and
Gödel 1949 in their established reference files).

Pre-publication verification status: source CANDIDATE; Lean parsing and
elaboration NOT_RUN; Lake compilation NOT_RUN; fresh kernel replay
NOT_RUN; transitive axiom audit NOT_RUN; expected types NOT_RUN;
native/remote execution NOT_DISPATCHED.

At an exact newly published commit, bind source and dependency blobs
and use the checked toolchain Lean v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612 unless the published
manifest legitimately differs. Requested commands:

    lake env lean GRWTSK/HarmonicAnalysisOnEuclideanSpaces/FiniteGradedObservableCover.lean
    lake build GRWTSK.HarmonicAnalysisOnEuclideanSpaces.FiniteGradedObservableCover
    lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonGodelResidueCover

Then check the expected source types, fresh kernel and all transitive
axioms for all named declarations, rejecting sorryAx, unauthorized
research axioms, assumed return identities or weakened hypotheses.
Operational receipts belong in grwtsk/noeaaeue, not in math. Record
the final source commit and Git blob identities in issue #1554.

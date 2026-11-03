# Root-exempt torsion, positive relative defects, and Gödel's chronology test: cross-family source atlas

Local attribution: grwtsk contributors.
Investigation: 2026-10-31.
Status: analytic/source comparison plus eleven SMALL GENERIC Lean theorem CANDIDATES,
not a proof of new geometric torsion, global causality, Dirichlet positivity, RH,
or any unproved family-specific nonvanishing statement.

## 0. Why this is an atlas, not another competing RH supplier

User direction: "Torsion is proportionally positive except for at the root.
Spread the idea across all families! Godels response to Einstein should cover
the idealogs."

Read "root" as an explicitly selected basepoint/identity/empty cut, not as
an unannounced zeta zero or a preferred spatial origin. These are DISTINCT
mathematical phenomena: (i) finite-order group torsion, (ii) antisymmetric
torsion of a connection, (iii) finite closed orbits, (iv) module/homological
torsion, (v) operator defect capacities, and (vi) signed arithmetic
correlations. Any transport between them requires a typed source-preserving
map. The intended Gödel reference is his 1949 paper on rotating universes
AND his philosophical essay on relativity and *idealistic philosophy*, not an
assertion that his incompleteness theorems solve general relativity or RH.

A generic, conservative algebraic core is added at
\`GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/RootRelativeDefectEnergy.lean\`.
No change to existing GRWTSK family sources or their mathematical statements.

## 1. The universally correct, ROOT-RELATIVE positive theorem

Let X be a family of states, o in X its marked root, a REAL observation f
and real weight w(x). Define the relative defect and its positive quadratic
readout as

    D_o f(x) = f(x)-f(o)
    E_o,w,f(x) = w(x)*(D_o f(x))^2.

Then the following are unconditional algebraic consequences of the
specified hypotheses:

    D_o f(o)=0,
    E_o,w,f(o)=0,
    w(x)>=0 for every x => E_o,w,f(x)>=0,
    w(x)>0 => [E_o,w,f(x)>0 iff f(x)!=f(o)].     (A1)

In particular x!=o ALONE does not imply strict positivity.
One MUST supply a separate family-specific distinguishing/nonvanishing
theorem. The comparison would be invalid for a zero weight, a constant
observation, or an indefinite Lorentz contraction presented as a
positive-definite norm.

For a finite-order index ord : X -> Nat with ord(o)=1, let
    excess_o(x)=ord(x)-ord(o).
If the selected point has finite positive order, ord(x)>=1, and
ord(x)=1 implies x=o, then
    x!=o => excess_o(x)>0.
If additionally w(x)>0, the proportional energy
    w(x)*excess_o(x)>0.                             (A2)

This is the precise "positive except root" theorem for exact-order
TORSION states. Finite-order positivity is *conditional* on ord(x)>=1 and
uniqueness of the order-one identity. In some algebraic libraries,
the number zero denotes infinite order; such elements cannot be
silently treated as nonidentity finite torsion.

For two signed or phase-bearing observations a and b the exact return is

    E_o,w,a+b(x)
      = E_o,w,a(x) + E_o,w,b(x)
        +2*w(x)*D_o a(x)*D_o b(x).                (A3)

The cross term can be NEGATIVE and cancel the positive diagonal energies
completely when b=-a. Root-relative positive pieces therefore do NOT
imply a small or positive complete signed consumer.

These statements are source-level Lean proof candidates, not kernel-accepted
results in this increment. They are purposefully generic, so individual
families may instantiate them without changing their native data.

## 2. Family-by-family source map and exact missing adapters

Every path below refers to \`grwtsk/math\` source at inspection revision
\`a775dbe7b67e8c5222808d122d826296b0aa04ff\`, unless otherwise noted.

### A. Prime-cut operator defect capacity — DIRECT ROOT/NONNEGATIVE ANALOGUE

\`GRWTSK/Combinatorics/PositiveCapacityPrimeCutDefectCapacity.lean\`
blob \`90c19ba5020612adeba72d27574e7146758423fc\`.

Existing \`PrimeCutDefectCapacity\` has self-adjoint, nonnegative,
identity-bounded and monotone operator defect fields. Its
\`reducedDefect_empty\` theorem gives ZERO at the empty-cut root,
and \`reducedDefect_nonnegative\` and \`increment_nonnegative\`
give a nonnegative operator increment away from that baseline.
This already implements the "zero root plus nonnegative offspring"
shape. To claim strict positivity for EVERY nonempty cut, one
must supply a strictly detecting representation/faithfulness
condition: positive semidefinite is not positive definite.
Don't replace the source operator order with scalar order without
a positive linear functional and a proven detection theorem.

### B. Elliptic/group torsion and exact-order scattering — FINITE ORDER

\`GRWTSK/ComputerScience/AlgorithmsInComputerScience/MobiusTorsionScattering.lean\`
blob \`8262d7ed220ba0aa1a2cab36b61e4fe244783f64\`.

Its \`TorsionStratification\` has \`identity_exact_order=1\`,
\`all_torsion_iff_exact_order_dvd\`, disjoint exact-order strata,
Möbius exact-order projectors and character scattering.
This preserves the root and every exact divisor stratum.
The generic excess theorem A2 applies to a REALIZED exact-order
model only if a point has positive finite order and order one
uniquely identifies the identity. The existing record does not
itself assert that uniqueness for arbitrary user-supplied
\`exactOrder\` functions. It cannot justify positivity for
infinite-order or incorrectly typed points.

\`GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/EllipticTorsionAction.lean\`
blob \`49a451012fcf8e777a0d2c288055e5b0793e8c5f\`
has a *group-action* root with \`act_zero\`, and
\`torsion_action_roundtrip\`, but not a metric-positive torsion law.
The identity action can fix nonroot states; action-period
positivity is not automatically a separating readout.

### C. Finite closed loops and Gödel-style carrier — PERIOD, NOT TENSOR TORSION

\`GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CurveTorsionGodelLoopCarrier.lean\`
blob \`0a436d58027668c55d9743c43c4c677564914d9a\`.

\`CurveTorsionWitness\` stores a POSITIVE order with mP=0.
\`ClosedFiniteOrbit\` stores a positive period and return to start.
The \`GodelStyleClosedLoopReading\` retains this finite closed-loop
pattern as an analogy ONLY; no Einstein spacetime model is imported.
The new generic \`closed_cycle_no_strict_real_time\` candidate
proves the elementary finite theorem: if time(n)=time(0)
and time(k)<time(k+1) for ALL k<n with n>0, contradiction.
A closed orbit cannot support a globally strictly increasing,
single-valued time potential along every edge. This demonstrates
that positive LOCAL increments cannot simply be integrated to an
exact GLOBAL potential around a loop. It is not an assertion that
finite-cycle torsion equals Gödel spacetime vorticity.

### D. Scaling/metric/zeta-cycle carrier — ASSUMED WITNESS, RH OPEN

\`GRWTSK/HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean\`
blob \`0ea9409bb694d1d8a69795fa8cdfe2ad1a18310c\`.

There are typed \`ScalingLaplacianQuadraticMetric\`,
\`ZetaCycleLengthWitness\`, \`CoveredZetaCycleStability\`,
and \`MetricQuadraticCurveTorsionBridge\` carriers.
Their asserted cycle equations are supplied as fields.
No theorem identifies their "zeroFrequency" with ACTUAL zeta
zeros, constructs a selfadjoint Hilbert-Pólya operator, or
proves RH. Positive quadratic metric information must be
checked in a chosen positive type, not assumed from a name.

### E. Prime-power torsion inverse limits — ROOT AT ZERO, NONTRIVIAL TOPOLOGY

\`GRWTSK/GeneralTopology/TorsionTower.lean\`
blob \`ad1e74c982b07e6ea5d9a222882b60c11e3a4f3f\`.

Finite levels are discrete groups killed by p^(n+1); compatible
inverse limits and compactness are separate theorems. Group
identity zero is the natural root. The property "killed by a
positive prime power" alone does not give a strictly positive
norm away from zero or an injection into a Hilbert space.
A continuous faithful scalar/norm realization and compatible
root transports would be required.

### F. Differential-geometric affine torsion — NO UNIVERSAL SIGN

\`GRWTSK/DifferentialGeometry/TorsionPublic.lean\`
blob \`a41b95c1980e08206bddbb78df63279869fcbcdb\`.

This is an upstream-sourced tangent-bundle covariant-derivative
torsion tensor, with \`torsion_self=0\`,
\`torsion_antisymm\`, and \`torsion_eq_zero_iff\`.
Torsion is a vector-valued alternating tensor, not an ordered
nonnegative scalar. Levi-Civita connections are torsion-free
EVERYWHERE, not merely at a root. A squared norm can be made
nonnegative with a positive-definite auxiliary metric, but it
is strictly positive only where the tensor is nonzero. Contracting
with a Lorentzian indefinite metric does not automatically give
a positive quantity. Gödel's rotating model has NONZERO VORTICITY
within torsion-free ordinary Einstein gravity: do NOT equate
Cartan torsion with Gödel vorticity or with curvature.

### G. Cochain curvature, holonomy and semilocal defects — FLAT MODE POSSIBLE

\`GRWTSK/Combinatorics/CochainCurvatureMeasuredDefectCochain.lean\`
blob \`af2605177cc4542caf09718b463b04cae2b46bfc\`.

\`MeasuredDefectCochain.curvature\` records the exact four-edge
signed difference. \`CochainCurvatureBudget\` assumes a
nonnegative *size* and an upper bound; it does NOT assert that
curvature is nonzero off the root. Flat cochains are honest
counterexamples to universal strict positivity.
Preserve ordered-edge signs; squaring is a separate observation.

### H. Torsion shells and trace/determinant — DECAY REQUIRED

\`GRWTSK/FunctionalAnalysis/TorsionShellTraceClassBoundary.lean\`
blob \`130eb860889e69015485de56c66ebafeebd47f1c\`.

Positive and negative routes are explicit, including a singular
phase and unpaired residue. Finite-rank shell structure and
positive local route flags do NOT imply trace-class summability
or an RH-relevant zeta determinant. The source explicitly
distinguishes completed and default blocked trace-class
boundaries. The actual norm-summation and determinant-exactness
bridges remain independent.

### I. Torsion-flow and homological count — NONINCREASING, NOT STRICT POSITIVE

\`GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionFlow.lean\`
blob \`f60b034a9c75958bfe36903f788704677e128496\`,
stores \`mass_nonincreasing\` and \`euler_preserved\`
per finite step. This is NOT a strictly positive increment.
\`GRWTSK/Combinatorics/TorsionCardinalityStabilization.lean\`
blob \`d7fa9d8b41b05a15608755271ed428bfb94a062c\`
establishes eventual stabilization from monotonicity and a
finite upper bound; monotonicity alone does not supply
strict offroot growth.

### J. Heat and finite-residue torsion — ZERO CAN OCCUR OFF ROOT

\`GRWTSK/GeneralTopology/TopologicalSpacesWithRicherStructures/K128TransportTorsionResidueHeatNonnegative.lean\`
blob \`077b51c1fb60beb074fe3926be081ba764205063\`,
provides a proposed nonnegative residual heat and an
exact-torsion-zero transport under given hypotheses.
The string \`k128_torsion_iff_zero_residue\` is specifically
a PROOF-PENDING marker, not a theorem.
\`GRWTSK/ComputerScience/AlgorithmsInComputerScience/EmlTorsionScatteringBoundary.lean\`
blob \`ea5202d6d52efac57654be6dc093068c66196939\`
has separate positive, negative, ZERO and nonadmissible
torsion-polarity classes. A blanket "every nonroot torsion
positive" is refuted at this classified-observation level;
the sign must be read and retained.

### K. Automorphic arithmetic fibers — ROOT PHASE AND NONUNIT RETURN

\`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AutomircronDirichletFrame.lean\`
blob \`b253db8bbbec58db78cbe2744484583f9348edfc\`,
already has reflection \`flic\`, Dirichlet winding,
\`unitPart\`/\`nonunitPart\`, odd-character cancellation, and
\`woundAbel_succ_sub\`. The principal/unwound and nonunit
pieces remain. Positive character energies do not bound
the coherent signed sum unless ALL mixed terms are included.
The companion \`AutomircronPrimeKernel.lean\`, blob
\`23477d9664830bed7e15989c2bbc4ece324ac828\`,
keeps exact signed Gram defects. A nontrivial source-index
preserving frame with injective source index is impossible;
genuine phase movement requires a nonzero paid defect or
lossless alternative indexing. Existing data suffice for the
connection: do not create yet another "new automircron" model.

### L. RH Liouville signed causal energy — POSITIVE FULL GRAM, SIGNED FRONTIER

\`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleCausalEnergyTarget.lean\`
blob \`a00aaa07c067b4c88203372870b5d5d151de0de4\`,
and \`LiouvilleInteriorLongGapRH.lean\`
blob \`e9b68f4106b3e2d648ba0803f75dc5e3b4dccbd9\`.

The complete original waveform has H(T)>=0 as an integrated
squared norm, but the true positive-gap offdiagonal A_j is
SIGNED. The original root time u=0 already has F(0)=0
because r_1(0)=0. Applying the abstract relative subtraction
\`f(n)-f(1)\` to the *arithmetic coefficients* would CHANGE
the Liouville source (lambda(1)=1), so it is FORBIDDEN as an
unverified RH adapter.

The existing full signed Gram and quantitative reduction are

    H_lambda(T_j) <=4*A_long(j)
       +(8+16j^2)*T_j*(1+T_j)+32/3.

The root-exempt positive-readout theorem A1 and signed
two-fiber identity A3 do NOT prove the missing one-sided
all-positive-rate \`InteriorLongGapAllRate\`. More arithmetic
information about the actual coherent principal/long-gap
modes is required. The already-open RH-E02 affine-Chowla
zero-frequency and variance-defect family is relevant,
but its separate Möbius normalization, moduli and centering
are not silently identified with this Liouville P.

## 3. Gödel, Einstein, the idealistic-philosophy question

Gödel's technical source:
Kurt Gödel, "An Example of a New Type of Cosmological Solutions of
Einstein's Field Equations of Gravitation", Reviews of Modern Physics
21 (1949), 447--450.
https://doi.org/10.1103/RevModPhys.21.447

His separate philosophical intervention:
"A Remark about the Relationship between Relativity Theory and
Idealistic Philosophy", in Paul Schilpp (ed.), Einstein:
Philosopher-Scientist (1949), pp. 555--562 (editions vary).
See:
https://plato.stanford.edu/entries/genrel-early/
https://seop.illc.uva.nl/entries/goedel/

The rotating homogeneous Gödel spacetime is an EXACT Einstein
field-equation solution with closed timelike curves. It challenges
the universal existence of a *global cosmological time function*
without contradicting local gravitational equations. The spatial
and temporal structure also challenges a naive global "now".
It does not establish that actual general-relativistic spacetime
has a privileged arithmetic root. The original GR connection is
Levi-Civita and torsion-free; vorticity is not Cartan torsion.

The finite mathematical analogue is the proven-in-source-candidate
\`closed_cycle_no_strict_real_time\`: a scalar \`time\` with
strictly positive increments along EVERY edge of a positive-period
closed orbit cannot return to its initial value. Hence a local
positive step budget need not yield a globally exact ordered
potential; one must check loops/holonomy, seam terms, and
the actual return.

This is an interpretation for comparing philosophical idealism,
relativity and arithmetic globality; no philosophical ideology
is encoded as a source theorem, and no view is purported
refuted by the existence of a different mathematical model.
Gödel's incompleteness theorems separately insist on
proof-system precision; they do not imply undecidability of RH.

## 4. Transfer contract that applies across family types

For a family \`X\` to claim ROOT-EXEMPT STRICT positive readout:

1. Supply its actual root \`o\` (identity/empty cut/initial state).
2. Supply a native, typed scalar readout \`f\`; do not replace a
   tensor or signed kernel with an unnamed, different object.
3. Supply a weight \`w\` that is STRICTLY positive at the
   points where positivity is claimed.
4. Supply an actual detection theorem
   \`x!=o -> f(x)!=f(o)\` on that family.
5. Use A1 to conclude strict positivity; if #4 is absent, only
   nonnegativity follows. Record counterexamples separately.
6. For any coherent/global consumer, use A3 to retain all mixed
   signed cross terms. A positive diagonal alone is insufficient.
7. For a proposed strictly increasing global time/potential,
   separately test cycles via the closed-orbit theorem. Do not
   infer global time from local connection equations.
8. To feed RH, prove a source-faithful quantitative all-rate
   estimate on the ACTUAL original signed A_j; a general
   root-relative energy identity cannot discharge it.

This contract can be instantiated by any future family that
provides the required data. It is not an assertion that all
45,000+ inspected GRWTSK tree entries have been reviewed or
that existing dissimilar torsion structures are isomorphic.

## 5. Scope, verification, and attribution

Generic source-level proof candidates:
  realRootDefect_at_root;
  weightedDefectEnergy_at_root;
  weightedDefectEnergy_nonneg;
  weightedDefectEnergy_pos_iff;
  weightedDefectEnergy_two_fibers;
  weightedDefectEnergy_opposite_phases;
  finiteOrderExcess_at_root;
  finiteOrderExcess_pos_of_faithful_root;
  proportionalFiniteOrderExcess_at_root;
  proportionalFiniteOrderExcess_pos;
  closed_cycle_no_strict_real_time.

No new theorem is claimed in any referenced family-specific
module; the above source is a generic ALGORITHMIC/ALGEBRAIC
source-proof candidate, not a proof of geometry or RH.
All existing source families retain their own original statuses;
many are legacy wrappers or source drafts with older unresolved
imports and cannot be promoted by citation alone.

The fresh generic module at this commit is
\`COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN\`.
The source comparisons above are NOT full import-closure audits.
No root toolchain/imports, original family source bytes,
external references, verification receipts or proof authority
are altered by this review. No local Git index lock, native
verifier, scheduler, background job or repository-wide rewrite
is used.

**Precise status:** Root-relative nonnegative quadratic energy:
mathematically exact under stated hypotheses. Strict offroot
positivity: conditional on weight/detection. Finite closed-cycle
no-global-strict-time: elementary conditional theorem.
Gödel's spacetime: external established GR model, not the
arithmetic torsion carrier. InteriorLongGapAllRate: OPEN.
Canonical Riemann Hypothesis: OPEN.

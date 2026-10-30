# Using the adapted mathematics in GRWTSK

Local attribution: grwtsk contributors.

The problem is to turn an imported theorem into a result that a local problem
can apply. Module availability alone does not show that representations match,
all joint hypotheses hold, the desired constants survive, or a proof is checked.
This first wave adds24 source theorem candidates in eight subject-organized
modules. They stay in native-version provider packages; no root dependency or
import is promoted. Exact types are in the linked sources and exact provenance
is in `adapters/consumer-integrations.json` and the canonical paper ledger.

| Consumer | Mathematical move and intended use | Boundary |
| --- | --- | --- |
| [pfr](../../../../adapters/pfr/GRWTSK/Combinatorics/SmallDoublingDifferenceCover.lean) | Existing local APIs use Finsets and difference sets. Proves subtraction transport and exact Finset/set cardinal and pointwise bridges rather than leaving them as assumed interfaces. Does not yet combine with local energy inequalities. | Native compilation/fresh kernel replay/transitive axiom audit/expected-type checking; Root4.34.1 local-library integration would need a separately reviewed version-compatible port; no root dependency change; Actual additive-energy application remains separate from this structured difference cover |
| [apap](../../../../adapters/apap/GRWTSK/Combinatorics/FiniteFieldProgressionWitness.lean) | Roth consumers supply failure of ThreeAPFree; APAP yields a quantitative rank threshold. The local consumer extracts actual witnesses and accepts externally established positive density bounds with a proved monotonicity bridge. | Native compilation/fresh kernel replay/transitive axiom audit/expected-type checking; No integer quantitative Roth consumer: APAP/Integer.lean theorem int is := sorry at this exact upstream pin; No root cross-version promotion or reinterpretation of exponent/prefix conditions |
| [equational-theories](../../../../adapters/equational-theories/GRWTSK/GeneralAlgebraicSystems/EquationalFinitePremiseConsumers.lean) | Concrete source-axiom extraction for the local joint-premise inference programme; strengthens imported compactness by retaining Delta subset Gamma, and proves safe chosen-proof support restriction. | Actual source-bound compilation and axiom audit on pinned Lean4.29.1/Mathlib environment; Checked reification of this equational-law calculus into root JointPremiseInference representation; No assertion of smallest/minimal support or finite-model completeness; No acceptance of upstream executable graph closure merely from graph reachability |
| [pnt-plus](../../../../adapters/pnt-plus/GRWTSK/NumberTheory/MultiplicativeNumberTheory/RelativePrimePairConsumers.lean) | Compose two eventual relative-prime windows using delta=min(epsilon/4,1), then construct a target N=p+q from two distinct primes. Supplies actual prime-pair/sum witnesses, not arbitrary prescribed Goldbach targets. | Does not represent every supplied even N, prove parity/window hypotheses of that full local margin theorem, provide effective thresholds or shrinking intervals, or import incompatible root GRWTSK modules. No RH consequence. |
| [carleson](../../../../adapters/carleson/GRWTSK/FourierAnalysis/FourierAnalysisInOneVariable/FiniteFourierReadoutConvergence.lean) | Countable family of continuous 2pi-periodic complex functions shares one full-measure convergence set; every fixed finite complex coefficient row has a convergent scalar Fourier readout and actual residual norm tending to zero on that set. | Exact cyclic-DFT/circle-Fourier representation comparison remains UNSUPPLIED. No common set for all functions, no uniform in weights/family estimate, no infinite-sum exchange or operator-norm rate. |
| [sphere-packing](../../../../adapters/sphere-packing/GRWTSK/ConvexAndDiscreteGeometry/GeneralConvexity/E8SeparationConsumers.lean) | Apply the Basic.E8 lower bound to v-w; transport the exact l2 norm to Euclidean distance; triangle inequality proves radius sqrt(2)/2 open balls at distinct E8 centres are disjoint. | No optimal density, dimension other than8, global sphere-packing upper bound or equivalence with local arithmetic mass-packing bookkeeping. |
| [openai-math](../../../../adapters/openai-math/GRWTSK/NumberTheory/MultiplicativeNumberTheory/LiouvilleNormalizedReadouts.lean) | Finite scalar/kernel observations of the existing two-point readout consumer; preserves source length and affine dependence. | No uniform B for growing families, Liouville-to-Moebius bridge, actual Mertens kernel residual supplier, or RH estimate is provided. |
| [anthropic-math](../../../../adapters/anthropic-math/fermat/GRWTSK/NumberTheory/DiophantineEquations/FermatSolutionFibers.lean) | Exact solution-fiber classification for the existing GRWTSK natural power-sum obstruction; elementary power injectivity supplies the missing c equality. | No integer/sign extension, exponent-two statement, independently re-proved modularity input or verified executable search implementation is claimed. |

The PFR proof subtracts two coset representations and uses closure of the SAME
submodule under subtraction. The center-set cardinality grows at most
quadratically; the exact exponent-nine upstream bound is not silently replaced
by the original paper's weaker exponent. The Finset-facing result proves the
coercion and cardinality comparison explicitly. APAP then illustrates a different
move: contradicting the quantitative rank bound extracts an actual three-term
progression, and logarithmic monotonicity lets an external positive density
budget feed that exact finite-field threshold.

The algebraic calculus makes joint premises concrete. Induction proves every
extracted source axiom belongs to the original context; completeness supplies
a derivation, so its finite support gives a finite SUBSET of that context with
the same consequence. Retaining all support is sufficient; smallest/minimal
support and a checked map to the root inference representation remain separate.
A countermodel blocks derivation, reflexivity uses no premise, and transitivity
retains both premise supports.

The analytic results retain the observation that matters. Two successive PNT
windows produce two actual primes and a sum target, not each requested even
number. Countable continuous periodic Fourier inputs share a full-measure set;
finite linear observations and their actual residual norms converge there.
This is not an identification with the cyclic DFT or a uniform operator rate.
E8 differences inherit the lattice lower bound in the Euclidean norm, which
proves disjointness for OPEN balls. Closed balls may meet at the boundary.

The Liouville consumer proves positivity of the normalization and gives a bound
for a fixed finite l1-unit-ball family of readouts. Constants remain dependent
on the affine family. The Fermat consumer closes every zero case: natural power
solutions at exponent≥3 are exactly the two axes in the fixed-output fiber,
which may coincide at zero. It supplies a complete search obstruction rather
than assuming the output is positive or extrapolating finite search.

Three audit findings changed the mathematical choices: the optimal sphere-packing
headline and APAP integer headline are literal `sorry` placeholders; metadata
records a transitive `sorryAx` in generic Carleson–Hunt. None is consumed by these
results. Narrower Basic.E8, finite-field APAP and continuous-periodic classical
Carleson endpoints are used. Upstream claims about their axioms still require
local exact-source checks; an apparent proof body alone does not settle that.

Compilation, fresh kernel replay, full transitive axiom audit and independent
expected-interface checks are NOT_RUN. The shared native activation lock was
held. Static source/API review and cross-review corrected a conjunction-order
mistake in the Fermat fiber proof; they are not compiler or kernel evidence.
This is mathematical source progress, not measured improvement in AI discovery.
The remaining-provider obligations explicitly cover statement fidelity, IEANTN
claim/certificate roles, versioned proof sources, intermediate FLT inputs, and
Lean3/Lean4 separation. Continue those obligations rather than counting more
imports as mathematical saturation.

## IEANTN consecutive-square continuation

The first 24-declaration wave remains historical. A subsequent three-declaration
IEANTN consumer applies the proved numerical theta-error criterion at x=n² and
h=2n+1. Its real interval is closed on the right. The square endpoint cannot be
prime, so the proof returns an actual prime in the open natural interval and a
positive cardinality for its prime filter. This supplies the witness observed by
the existing ConfigurationCounts.squareCount_pos_iff consumer without importing
incompatible root modules or defining a second count model.

The uniform Eθ bound, applicability threshold and strict error margin are joint
premises. None is manufactured from a numerical experiment. In particular a fixed
positive epsilon does not make the margin hold for every large n. No Legendre
result follows. The native4.34.0-rc2 package, exact source pins and all three
expected interfaces are recorded in adapters/ieantn/consumer-integrations.json
and the canonical ledger anchor ieantn-consecutive-square-consumer-20261029.
Compilation, fresh replay, complete axiom audit and interface checking are NOT_RUN.
The next obligation is an actual analytic-bound/range supplier and native checks;
a root4.34.1 version-compatible comparison remains separate.

## Carleson fixed-support varying-row continuation

The continuous-periodic readout now has a source candidate for a genuinely
row-uniform finite-support envelope. Its residual is bounded by the sum of the
coordinate residual norms; this finite sum tends to zero on the countable
family's common full-measure set. Consequently one epsilon cutoff works for every
l1-unit-ball row, and the row may change arbitrarily with the Fourier cutoff.

The same W(N) multiplies both the approximation and moving reference. Vanishing
residual does not imply convergence of either moving readout. Empty support is
included; growing support, uniformity in x, a rate and the cyclic-DFT comparison
remain absent. This fills the earlier fixed-family row-uniform source obligation
while native4.36.0-rc1 compilation, fresh replay, complete axiom and type checks
remain NOT_RUN. Exact source/types and public attribution are in the canonical
ledger anchor carleson-fixed-support-varying-rows-20261029. Historical first-wave
sources/targets remain meaningful at their original pins.

## PFR dense-slice continuation

A finite coset cover now yields a constructed largest slice and an injective
translation into the same small submodule. The exact slice identity connects B
to A; |H|<=|A|<2*K^9*|B| quantifies its size without supplying density as a field.
Repeated cosets cause no problem because only a finite-union upper bound is used.
Both B-B and B+B stay in H, so the existing Mathlib additive-energy inequality
gives |B|^4<=|H|*addEnergy(B,B). This adds a genuinely structured energy input.

It is an alternative to the earlier difference-cover route, whose separate
existential witness is not identified with this H. Neither a <3/2 threshold nor
an energy assertion for the original A is inferred. Exact types, source/paper
attribution and remaining root-version boundary are in the canonical ledger
anchor pfr-dense-submodule-slice-20261029. Native checks remain NOT_RUN.

## Local zero counts and finite E8 covers

The primitive-character zero-count source supplies an actual finite response
envelope: one absolute A precedes every common modulus, index type and finite
selected family. The raw complex count readout pays actual l1 mass and the
log(q*(abs(t)+3)) scale; positivity gives a normalized unit-ball bound with that
same A. Signed unit windows and analytic multiplicity remain intact, including
real zeros when a window meets 0. This supplies no cancellation or RH premise.

E8 separation now determines the exact external covering number for any finite
Euclidean sample below half the separation radius. Every closed-ball cover needs
one center per point, even with nonlattice centers. The strict threshold, empty
sample and radius 0 cases are retained. No geometric-to-arithmetic mass mapping,
optimal density or algorithmic performance is inferred.

Both are source candidates with full type targets and independent source/API
review. Native compilation, fresh replay, complete axiom and interface checks
remain NOT_RUN. Exact pins and missing version/representation bridges are in
the canonical ledger and central consumer map.

## An actual affine APAP support

APAP's quantitative witness now supplies the actual map i↦a+i.val•r from Fin3,
with nonzero r, injectivity, support inclusion and cardinality3. The proof uses
invertibility of2 for prime q≥3 to justify first/third distinctness, which the
ThreeAPFree nontriviality convention alone does not provide in characteristic2.
The original density/logarithmic rank threshold is unchanged. Exact source and
type targets are in the central consumer map, APAP references and canonical ledger;
source/API/profile reviews remain separate from NOT_RUN native acceptance.

Next separate provider obligations remain explicit: a supported source-bound
route to the existing core inference modules is needed before checked equational
proof reification in the native4.29.1 adapter; Formal Conjectures may support an
Ico-to-shifted-range Erdős–Moser normalization without consuming its admitted
conjecture, while root recursive-model transport stays unported across versions.

## Signed fibers for integer Diophantine searches

The actual FLT source plus pinned Mathlib Nat/Int transport now supports a signed
classification. Odd exponent zero-output searches must retain every `(a,-a)`;
natural two-axis pruning would be unsound. Even exponents have four signed axis
candidates, with duplicates at zero. Five exact declarations and literal types
are recorded under the integer-Fermat target; source/interface review remains
separate from NOT_RUN native/kernel/axiom acceptance. The stronger legacy
`a^4+b^4=c^2` theorem and root cross-version import remain separate.

Next analysis/geometry routes remain explicit: fixed finite Fourier coefficient
convergence could supply an actual limiting readout on the common a.e. set,
chosen BEFORE all row sequences; that convergence premise is not supplied by a
unit-ball bound alone. E8 small-radius covering could expose an actual injective
point-to-center assignment and, for equal finite cardinalities, a close matching;
this would assert radius closeness, not nearest-center optimality or density.

## Exact positive-base Erdős–Moser observations

The first Formal Conjectures consumer uses the exact powerSum definition and
positive-base finite observation. Shifting Ico1(n+1) to range n retains k0/n0,
and division-free Gauss gives the complete positive-input exponent1 classification.
The full positive statement is equivalent to an explicit higher-exponent exclusion,
which is STILL UNSUPPLIED. The root's separate recursive model and version port
remain unproved; importing the admitted module is not whole-module acceptance.
The exact-target profile must discover/audit the private Gauss helper and reject
reachable sorryAx. A prepublication bad import was corrected to the pinned Lean
core Omega module; native/interface/replay/axiom checks remain NOT_RUN.

<a id="e8-cover-matching-20261029"></a>
### E8 point-to-center matching

The finite E8 covering consumer now returns a radius-close injection into arbitrary covering centers and, for equal-cardinality finite covers, an equivalence. It retains STRICT `2*epsilon<sqrt2`, exact Euclidean `WithLp.toLp 2` distance, empty samples and zero radius. This supplies a witness for the existing covering-number family instead of only cardinal cost. Source `6336a394397cca8587c4b0ba713b36e0ba4b5bee` / blob `719bf5797ad0d64246a718661340278b5b15a49f`; native Lean4.35.0-rc4/Mathlib `1f414401f69059aa7eead47b53ee40bd38455eeb` remains isolated. All native facets NOT_RUN; independent checker UNSUPPLIED. No nearest-center optimization, arithmetic mass transport, density theorem or cross-version root integration is supplied.

[Target](../../_verification/targets/ConvexAndDiscreteGeometry/GeneralConvexity/e8-cover-matching-20261029.json); [canonical ledger](literature/reading-background/paper-to-formalization-references.md#e8-cover-matching-20261029).

<a id="plby-subset-collision-20261030"></a>
### Reciprocal subset-sum collision witnesses

A new lean-proofs/v4.29.1 consumer turns REAL reciprocal mass≥2 of arbitrary finite A into disjoint nonempty S,T⊆A.erase0 with equal POSITIVE NAT sums. It preserves exact reciprocal mass while removing zero and cancels shared support, strengthening the existing distinct-subset-sum consumer beyond a negative predicate/counting bound. Source `d38bc7c2e8b8cc45dad12180ff5bdbe5808deb66` / blob `fb19960a95c6405f8cff395cbff9791111f8a37c`; exact native Lean4.29.1/Mathlib `5e932f97dd25535344f80f9dd8da3aab83df0fe6` remains isolated. Both literal types and full authored census are required; all native facets NOT_RUN, independent checker UNSUPPLIED. Upstream bylines and scoped license notice remain; selected-leaf grant unresolved. Root transport, minimal/effective search and the stronger Erdős Problem1 bound are UNSUPPLIED.

[Target](../../_verification/targets/NumberTheory/AdditiveNumberTheory/plby-subset-collision-20261030.json); [canonical ledger](literature/reading-background/paper-to-formalization-references.md#plby-subset-collision-20261030).

<a id="imperial-frey-denominator-20261030"></a>
### Conditional Frey denominator factors

Imperial's proved p-adic source now feeds two source candidates for the actual reduced rational j denominator: exponent-divisible order and, with separate denominator-prime membership, a positive q^p factor witness/lower bound. All signed FreyPackage and selected-prime hypotheses stay explicit. Source `b13149227de39dc96dc9074796508957949128bd` / blob `2fa84acb0d2002740ca8bbd3da8565cf1a0edbd0`; native Lean4.35.0/Mathlib56a005855ea17e0b0958f73ec801ae140b0a1679 remains isolated. The root positive-triple curve/height consumer needs a still-UNSUPPLIED invariant/version comparison. All native facets NOT_RUN, independent checker UNSUPPLIED; no unconditional FLT, conductor, radical-height or ABC result is supplied.

[Target](../../_verification/targets/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/imperial-frey-denominator-20261030.json); [canonical ledger](literature/reading-background/paper-to-formalization-references.md#imperial-frey-denominator-20261030).

## Liouville source-supply continuation — 2026-10-30

The existing two Liouville consumer roots now have exact static PNT [input bindings](../../../../documentation/mathematics/_verification/targets/NumberTheory/MultiplicativeNumberTheory/openai-liouville-patched-source-inputs-20261030.json) and [closure obligations](../../../../documentation/mathematics/_verification/targets/NumberTheory/MultiplicativeNumberTheory/openai-liouville-source-supply-closure-20261030.json): all55 patch paths are bound, but three StrongPNT modules and six Mathlib source assets still need supported suppliers. This is source-input progress, with every native acceptance facet NOT_RUN and no new theorem count. The old preparation failure and the stronger literal-type profile remain distinct. Original weighted-model-growth four and Anthropic Fermat six obligations remain active. The canonical ledger's `openai-liouville-exact-source-supply-20261030` entry preserves source identities, hypotheses and missing suppliers.

## Carleson convergent-coefficient readouts — 2026-10-30

The new isolated [`ConvergentFourierReadouts`](../../../../adapters/carleson/GRWTSK/FourierAnalysis/FourierAnalysisInOneVariable/ConvergentFourierReadouts.lean) consumes the existing common coordinate-convergence event and yields an actual fixed limiting-weight readout when coefficients converge on a fixed finite support. One event for the fixed countable continuous2pi-periodic family precedes all finite s,W,w; empty support is allowed and no l1 bound is required. Selected-coordinate convergence is a real premise, and cutoffs may depend on the chosen support/rows. No growing support, uniform rate, all-function-family event or cyclic-DFT/version bridge is supplied. Source `4edb8f1f095048b162361a5e4da25f8fcea2cca8` / `60d962300a1ef348e196546bc527598abd0605c9`; [target](../../_verification/targets/FourierAnalysis/FourierAnalysisInOneVariable/carleson-convergent-readouts-20261030.json), [verification #1485](https://github.com/grwtsk/math/issues/1485). Native/interface/census/kernel/axiom facets remain NOT_RUN; independent checker UNSUPPLIED. The old six-root source and prior acceptance scopes remain intact.

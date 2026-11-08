# Source preservation and mathematical specialization

Local attribution: grwtsk contributors.

Preserve a source theorem until its proposed replacement supplies the same
conclusion under the original hypotheses. A common subject, shared identifiers,
or a general framework requiring the missing construction does not establish
replacement. The [static source target](../../_verification/targets/source-preservation-and-specialization.json)
identifies 107 source modules, their immutable bytes, import dependencies,
dependents, and a provider-first traversal. Source availability and matching
bytes do not establish compilation, fresh kernel checking, or axiom acceptance;
those facets remain `NOT_RUN` for this preservation target.

The target’s paths and dependency order are pinned source records. Resolve later
source relocations through the [MSC2020 layout](../../../taxonomy/msc2020/README.md),
including `followup_files`; a moved source does not inherit a historical check.

## How to traverse the sources

Begin with a consumer below, open its provider in the target's `sources` list,
and follow `project_imports` toward the hypotheses it needs. Follow
`selected_dependents` back toward applications. `provider_first_waves` orders
the selected modules by their imports; it is a source dependency order, not a
logical derivation or a list of independently proved premises. The target also
records imports from retained sources outside the selected family.

| Retained consumer | Provider whose interface must remain available |
| --- | --- |
| [CyclicWindowZeroMode](../../../../GRWTSK/ProbabilityTheoryAndStochasticProcesses/CyclicWindowZeroMode.lean) and [LiouvilleWeightedCyclicEnergy](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedCyclicEnergy.lean) | `SignedCyclicWalkPacket` |
| [SignedWaveformEnergyResidueBridge](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/SignedWaveformEnergyResidueBridge.lean) | `DyadicSignedResidueWaveform` |
| [ArithmeticWilsonPositivityComparison](../../../../GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/ArithmeticWilsonPositivityComparison.lean) | `DyadicMarkedSignGauge` |
| [FiniteSquareEllipsoidViews](../../../../GRWTSK/ConvexAndDiscreteGeometry/GeneralConvexity/FiniteSquareEllipsoidViews.lean) | `TypedEllipsoidAtlas` |
| [PickupRoughFarDivisorMaskReduction](../../../../GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PickupRoughFarDivisorMaskReduction.lean) | `PickupRoughFarDivisorMaskIncidence` |
| [PickupRoughFarRemainingGainBound](../../../../GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PickupRoughFarRemainingGainBound.lean) | `PickupRoughFarRightGainBound` |

## Mathematical routes and consolidation boundaries

### Prime fibers and ordered addresses

[PrimeFiberFiniteTestTransport](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimeFiberFiniteTestTransport.lean)
applies the retained finite-test tail and signed-comparison theorems to
`F.image testOf`. This is a concrete specialization with `epsilon > 0` and an
arbitrary finite family; injectivity of `testOf` is not required. Retain its
declaration names and statements as a compatibility interface. Its stagewise
cutoff is not a single cutoff uniform over every stage.

Continue to [OrderedPrimeGroupAddress](../../../../GRWTSK/NumberTheory/OrderedPrimeGroupAddress.lean)
and then [PrimeFiberOrderedAddress](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimeFiberOrderedAddress.lean).
The latter reuses the former's serialization and cardinality results directly.
The separate [list-based address construction](../../../../GRWTSK/NumberTheory/ElementaryNumberTheory/OrderedPrimeGroupAddress.lean)
has its own namespace. An equivalence between the two presentations must retain
order, repeated prime occurrences, and the intended additive structure. Equal
cardinality alone does not supply that equivalence.

### Additive transport and shared shadows

[ActiveAdditivePath](../../../../GRWTSK/Combinatorics/GraphTheory/ActiveAdditivePath.lean)
extends retained relation paths with local additive maps. Preserve every edge's
observation equation, local injectivity assumption, and coherence condition when
enlarging the relation.
[LocalAdditiveFusion](../../../../GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/LocalAdditiveFusion.lean)
forms a quotient along a common seam, whereas
[SharedShadowPullback](../../../../GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/SharedShadowPullback.lean)
retains compatible source pairs. Their consumers cannot exchange pushouts and
pullbacks without an actual comparison. Observation descent and lossless decoding
remain separate obligations.

### Diffusion estimates

[BufferedSieveSparseTypeObstruction](../../../../GRWTSK/Combinatorics/GraphTheory/BufferedSieveSparseTypeObstruction.lean)
uses the retained arithmetic diffusion kernel but supplies upper bounds for the
`q = 1` source: a row-mass lower bound yields transition and type-mass upper
bounds. Retained transition and type-mass lower bounds are complementary results.
A general mixing estimate requires an explicit identification and normalization
of this particular kernel before it can replace any source-specific estimate.

### Integer and dyadic coefficient structures

Start with [IntegralTwoDeltaFrobenius](../../../../GRWTSK/CommutativeAlgebra/IntegralTwoDeltaFrobenius.lean)
and shared-shadow pair lifts. Continue through delta cochains, completion,
power/residue towers, and signed two-term cohomology before marked gauge and
weighted waveform consumers. The static target gives the full branch structure.
The retained generic delta framework consumes a delta structure; it does not
construct the concrete integer or completed coefficient instance. A two-term
cohomology module is not a prismatic comparison theorem.

### Rough-divisor and signed-response estimates

Resolve divisor-mask incidence before reduction; then traverse the mixed-channel
identity, its connections, Gram envelope, and prime-family budget. Resolve the
right-gain estimate before the remaining-gain consumer. Preserve actual divisor
counts, transported source signs, masks, and every left, right, and mixed channel.
Changing orientation requires a proved exchange identity on the complete source.

### Liouville interfaces

The dependency route is prime-delay obstruction, reciprocal prime mass, growing
prime bands, norm equivalence, finite-prime sieve, and rough causal Buchstab.
The double-Abel family has its own kernel, analytic-gate, and moment route.
Several central declarations define propositions awaiting proof; their presence
does not prove the corresponding analytic assertion.

For the norm route, `R = F + A F` and `norm A <= 1 / sqrt 2` give squared comparison
constants `3/2 - sqrt 2` and `3/2 + sqrt 2`. The source-specific waveform identity
and finite-horizon contraction must still be established with the stated
nonnegative weights and positive total mass. No cancellation estimate follows
from recording the norm-equivalence proposition.

### Wilson reflection and translation

Traverse positive-time observables, time partition, Haar coordinates, gauge
integration, half observables, and split action. Boundary-kernel positivity and
gluing then feed reflection positivity, followed by radical, quotient, and
translation consumers. The full finite-periodic reflection statement retains
`T >= 2`, `beta >= 0`, and the actual positive-time algebra. Retained slice-kernel
positivity is reusable only through a proved comparison to that full measure.
Neither route supplies a continuum limit or mass gap.

### Geometry and symbolic dynamics

Typed ellipsoid and ordered-address constructions feed the rational atlas.
Coherent residuals feed the circle action; these branches meet at ellipsoid
orbits and then validated walks, dynamic models, and compression consumers.
Preserve complete source coordinates and exact language or decoder hypotheses.
A finite graph reading one trace does not establish equality of the complete
factor language.

### Fourier cancellation and finite-rank gaps

[NavierStokesMomentGap](../../../../GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/NavierStokesMomentGap.lean)
contains distinct finite-rank and Fourier-source sections.
[NavierStokesZeroOutputCancellation](../../../../GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/NavierStokesZeroOutputCancellation.lean)
needs the Fourier definitions, a divergence-free first input, and zero output
frequency. Finite-rank coercivity does not replace those definitions or the
cancellation result. Keep the automorphic interface's covariance assumptions
separate from coordinate invertibility and finite symbolic representations.

## Acceptance of a replacement

Preserve the source unchanged, preserve a compatibility interface proved by
specialization, or prove an explicit replacement bridge before removing a result.
For a bridge, record both source identities, fully qualified declarations, maps,
quantifiers, hypotheses, normalization, residual terms, and conclusion. Keep
unproved propositions, conditional theorems, finite evidence, and analogies
distinct. The source target lists the required verification facets; exact source
preservation is not a substitute for them.

Keep the existing subject paths, declaration namespaces, root imports, dependency
pins, and adapter boundaries. Source and document navigation are bound by the
MSC2020 layout registries. Operational attempts and receipts belong in Noe.

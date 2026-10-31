# Distinct sources, isomorphic lower shadows, and symplectic-fiber reification

Local mathematical attribution: grwtsk contributors.

Status: source-level Lean theorem candidates and independent finite evidence.
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
No completed prismatic cohomology, RH, Navier–Stokes or signed cancellation claim.

## Reviewed mathematical sources

Base source: grwtsk/math/main at 17e7f330f9c89edb746f49c09b087d8ffb034f66.

- LocalAdditiveFusion.lean (blob cc8094383d8e8d5d39997d393368ff7f216261d9):
  actual additive PUSHOUT along a common seam. It identifies some upper states.
- OrderedPrimeGroupAddress.lean (blob 72c08a3c1d7b0a8069d01c3d9bfa4d764ef82dc2):
  exact ordered prime axes, real group structure, and [2,2] versus ZMod 4
  nonisomorphism obstruction.
- ActiveAdditivePath.lean (blob f40b705915891f25d430f1128d87eecc3ca4dc03):
  source comparison on genuinely certified graph edges and their paths.
- ThreePhaseResidualCircleAction.lean (blob daaeb61b27a0850a7b6f8ddf395883fa124454d1):
  actual coherent/residual dynamics, positive Gram and polarized probes.
- DividedFrobeniusCochain.lean (blob 51a667b5a0aee5224299cb1603cf7748639e13e5):
  torsion-free δ/Frobenius lift and exact finite-coboundary obstruction;
  NOT a genuine prism or completed prismatic complex.
- TwoThirdsPrismaticComplexBridge.lean (blob c270e3a868418d317652c357f430c3b2c111d08c):
  finite degree-zero cochain/cohomology comparison and boundary-reflection gate;
  NOT a prismatic-cohomology construction or vanishing supplier.
- PrefixLengthVariableCommaFreeCodes/RoundTrip.lean
  (blob 5860bece0456f2e128f5d02ee48f1ec1efefe054):
  genuine Huffman encode/decode theorem for finite byte lists.

## Correction: a common LOWER shadow, not a pushout of upper objects

Let distinct upper additive groups be A and B. Their lower observations are
p_A:A ->+ L and p_B:B ->+ R, with a proved lower isomorphism φ:L ≃+ R.
Two ADDITIVE code equivalences e_L:L ≃+ C and e_R:R ≃+ C may construct
the lower isomorphism as φ=e_L.trans e_R.symm. The original groups A and B
are not assumed isomorphic or identified.

The exact matched group is the PULLBACK / equalizer subgroup

    P = {(a,b) in A × B : φ(p_A(a)) = p_B(b)}.

It retains both source projections P -> A and P -> B. When p_B is
surjective, the left source projection is surjective, and conversely
when p_A is surjective. A source projection is not automatically injective.

The common shadow q:P -> R has zero fiber

    ker(q) = {(a,b): p_A(a)=0 and p_B(b)=0}.

If the two original lower maps are surjective, the expected short
exact sequence is

    0 -> ker(p_A) × ker(p_B) -> P -> R -> 0.

This displayed short exact sequence is analytical mathematics in this
review, not an existing Lean exact-sequence declaration. An additive
split of it requires additional structure; surjectivity alone does
not furnish an ADDITIVE section.

## Full reification: preserve original sources and the shadow

The source-level reified record retains:

    lower : R
    leftOriginal : A
    rightOriginal : B
    leftShadow : φ(p_A(leftOriginal)) = lower
    rightShadow : p_B(rightOriginal) = lower.

Its exact encode/decode identity returns the complete original matched pair.
The lower shadow by itself is not claimed lossless. A formal collision/no-go
theorem proves that no decoder of the lower observation alone can recover
two distinct states with equal shadows.

The new lossless-Huffman adapter consumes the existing Huffman byte codec
and an EXPLICIT separately certified serializer for the ENTIRE reified record.
Only after its typed read/write identity is proved does the composed
Huffman decode/encode identity recover both original sources. No automatic
byte serializer, storage compression ratio or asymptotic benefit is claimed.

A cardinality obstruction must remain explicit: all finite byte strings
form a countable set, while an unrestricted real symplectic vector space
is uncountable. A finite-byte exact serializer cannot cover every such
real point. It must use a finite/countable symbolic domain, an exact
representation with appropriate scope, or an infinite representation.

## Concrete prime-group counterexample and vertical symplectic pairing

Take A=(Z/2)^2 (the actual atomic ordered [2,2] prime-word group),
B=Z/4 (the actual compressed prime-power group), L=R=Z/2,
p_A(a0,a1)=a0, p_B(b)=b mod 2, and φ=id. A and B have the same
cardinality but are NOT additively isomorphic, as the existing
repeatedTwo_not_addEquiv_compressed theorem establishes.

P contains precisely eight matched original pairs. Its common
shadow has two states, and the zero-shadow vertical fiber has
four states. The original pairs ((0,0),0) and ((0,1),0)
cast the same shadow but remain distinct. Therefore no decoder of
the common shadow alone can recover both; the full reified record can.

The two individual vertical kernels are one-dimensional over F2 and are
not individually nondegenerate alternating symplectic spaces.
But the COMBINED vertical fiber is a two-dimensional F2-space.
After choosing a perfect pairing between its two one-dimensional
kernel directions, it carries

    ω((v,w),(v',w')) = v w' - v' w  in F2.

This form is alternating and nondegenerate. The new generic
SharedShadowVerticalSymplectic module proves the construction
for a declared perfect pairing of modules over a shared ring.
The source does not assume that a prime-indexed additive group
automatically has a perfect pairing or a real-valued symplectic form.

Distinct upper dynamics T_A(a0,a1)=(a0,a0+a1) and
T_B(b)=3b mod 4 both preserve this common Z/2 lower shadow.
Thus a matched pair evolves to another matched pair without
requiring T_A and T_B to be conjugate or the upper groups isomorphic.

## Where a PRISMATIC cohomological comparison would enter

An actual prismatic network needs an appropriate δ-ring and prism ideal,
completion and coefficient hypotheses, valid source/target complexes,
differential-compatible comparison, induced cohomology map, and exact
injectivity/vanishing or quantified losses for the intended consumer.
A finite cochain representation or symplectic-looking diagram is not
a prismatic cohomology theorem.

There is an immediate hostile boundary: the concrete example has
F2=ZMod 2 as its coefficient field, for which multiplication by 2
is zero and NOT injective. It therefore cannot directly instantiate
the p=2 torsion-free hypothesis in the repository's
TorsionFreeDeltaStructure p A. One must choose and prove a
correct coefficient comparison, rather than renaming F2 as a
p-torsion-free δ-ring.

The source TwoThirdsPrismaticComplexBridge requires a
differential-compatible cochain map and INJECTIVITY (or its
boundary-reflection equivalent) to return zero target cohomology
to vanishing source classes. A shadow isomorphism does not supply
such a map. A symplectic structure on the vertical fiber additionally
requires a specific duality and its Frobenius/cochain compatibility.
All remain mathematical proof obligations, not assumptions
silently upgraded to theorems.

## Exact next consumer and proof boundary

The RH-facing original signed dyadic birth source remains
PickupDyadicEndpoint.DyadicBirthBound, with all positive-rate
quantifiers, complete ordered interaction coefficients, prime-power,
diagonal, endpoint and repeated-prime terms. PickupSignedRotation
reflects BIRTH INDICES: it is not automatically a prime-group
automorphism or a symplectic comparison.

The next useful theorem must construct one original signed arithmetic
observation from the actual paired source and prove its compatibility
with the reified shadow and both source fibers. An exact observation
return or source-derived one-sided residual bound must then reach
the existing signed dyadic endpoint consumer. The shadow alone,
its geometric symmetry, prismatic terminology and Huffman coding
cannot create the missing arithmetic cancellation.

## Evidence and status

Proposed source modules:
- GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/SharedShadowPullback.lean
- GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeSharedShadow.lean
- GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SharedShadowVerticalSymplectic.lean
- GRWTSK/InformationAndCommunicationTheoryCircuits/CommunicationInformation/SharedShadowHuffman.lean

Independent finite reference evidence (not kernel verification):
482 exact checks on the eight-state finite prime-group example,
including both projections, matched-state addition, exact reification,
a concrete shadow collision, two-sided compatible dynamics and
nondegenerate two-dimensional F2 vertical symplectic form.
Script SHA-256 8dc260be3854efa271dfa03e24c9f12546aaa1d0fb7c5d0aa680bcc423ea14bb.

Proof arguments: the pullback subgroup is closed under addition
because both lower projections are homomorphisms; a reified record
decodes by recovering the two source coordinates; unequal source
pairs with equal shadow prohibit a shadow-only inverse; a perfect
dual pairing produces an alternating nondegenerate form on
the combined vertical product. These are established standard
mathematical structures, not new prior-art claims.

COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No effectful verification worker
was launched. The finite reference program remains outside math.
Upstream authorship and licenses remain unaffected.

Local attribution: grwtsk contributors.

# Local additive fusion and certified cellular growth: mathematical review

Local attribution: grwtsk contributors.

**Mathematical disposition:** exact finite algebraic analysis and three published
Lean SOURCE_PROOF_CANDIDATE modules; compilation NOT_RUN, fresh kernel replay
NOT_RUN, transitive axiom audit NOT_RUN, and full expected-interface checks
NOT_RUN. No unconditional arithmetic cancellation, RH, Navier--Stokes PDE,
transfinite or prismatic theorem follows from this source increment.

## Why the prior formulation required correction

The previous global rotation proposal imposed an unnecessary demand: two
neighboring prime-typed groups need not be isomorphic to be compatible along a
common *additive interface*. However, two claims must not be conflated.

1. **Fusion** means building a new additive group from A and B while
   identifying a specified seam C. This is an amalgamated direct sum/pushout.
2. **Active path transport** means composing genuinely accepted local additive
   maps along a certified directed graph path. The fiber groups can differ,
   and the maps need not be isomorphisms.

An additive law alone does not create a certified path, injectivity, symmetry
or arithmetic cancellation. Conversely, a bijection of finite labels or a
source-index reflection need not be additive. The existing
OrderedPrimeGroupAddress.exactEquiv is a set-level equivalence to Fin n, not an
additive equivalence to ZMod n. For the original two occurrences of p=2, the
source already proves the additive-group obstruction
repeatedTwo_not_addEquiv_compressed.

## 1. Exact additive local fusion

Fix additive commutative groups C, A, B and homomorphisms

    alpha : C ->+ A,    beta : C ->+ B.

The seam relation map is the additive homomorphism

    d : C ->+ A x B,    d(c) = (alpha(c), -beta(c)).

The ACTUAL fused group is the quotient

    P := (A x B) / range(d).

Source maps iA(a)=[(a,0)] and iB(b)=[(0,b)] satisfy

    iA(alpha(c)) = iB(beta(c))  for all c in C.

For any additive target group D and homomorphisms f:A->+D, g:B->+D
whose local observations agree on C, f∘alpha=g∘beta, the map

    [(a,b)] |-> f(a)+g(b)

is well-defined because it kills the entire image of d. It is
additive, returns f and g on their original components, and is
unique because every quotient class is represented by [(a,0)]+[(0,b)].
This is the universal property of the pushout in abelian groups.
The source candidate defines the quotient, the two inclusions,
the seam identity, descent and uniqueness.

**Exact source preservation condition.** The kernel of the left map
iA is alpha(ker beta), and the kernel of the right map iB is
beta(ker alpha). In particular:

- beta injective implies iA injective;
- alpha injective implies iB injective;
- both seam maps injective imply that BOTH original groups survive;
- if beta(c)=0 but alpha(c)≠0, left source information is destroyed.

The module supplies source-level proofs for these sufficient
injectivity clauses and an explicit no-go for a collapsed left
source. It does not assert that arbitrary seam maps preserve every
source component.

### Local rotations

Suppose rC:C ≃+ C, rA:A ≃+ A, and rB:B ≃+ B. They act compatibly on
the seam only when

    rA(alpha(c)) = alpha(rC(c))
    rB(beta(c))  = beta(rC(c)).

These conditions preserve range(d) and therefore induce an
additive self-map of the fused group. The source candidate
constructs that map and its exact return on both source
inclusions. A separate formal proof of its inverse, and any
relation to real/complex ellipsoid isometries, remains distinct.
Without both equations no rotation of the quotient is licensed.

### Fully worked distinct-group example

C=Z/2Z; A=(Z/2Z)^2; B=Z/4Z.
Choose alpha(c)=(c,0) and beta(c)=2c. Both seam maps are injective.
The quotient is isomorphic to (Z/4Z) x (Z/2Z), with the explicit
well-defined coordinate map

    [((a0,a1),b)] |-> (b+2a0 mod 4, a1).

Its kernel is precisely the two-element image of d, so the quotient
has eight elements. Both original groups embed faithfully.

A rotation T(a0,a1)=(a1,a0+a1) on A has order three, but
T(alpha(1))=(0,1) does not belong to alpha(C).
It therefore cannot preserve this chosen seam, regardless of the
cardinality agreement. This is a genuine local interface obstruction,
not a failure of the additive fusion itself.

## 2. Active cellular path transport

The existing RelationSandwich.Path edge relation carries a path
composed of actual edges. Attach to every accepted edge x -> y an
additive homomorphism

    h_xy : Fiber(x) ->+ Fiber(y).

Then a certified path x0 -> x1 -> ... -> xn transports by the
composite h_(xn-1,xn) ∘ ... ∘ h_(x0,x1). This composite preserves
addition even if Fiber(xi) and Fiber(xj) are not isomorphic.
If every edge map is injective the composite is injective.

For an arbitrary source observation O_x: Fiber(x) -> S, not assumed
additive, assume exact local naturality on EVERY accepted edge:

    O_y(h_xy(a)) = O_x(a)  for all a.

The same equation holds for the full composed certified path by
induction. Thus the path result can carry genuine non-additive data,
provided every local comparison is proved rather than guessed.

For a lower/middle/upper graph sandwich, first transport the
certified *lower* path into the same *actual middle* relation using
the old RelationSandwich theorem. The new module then composes
the corresponding middle-edge additive homomorphisms and returns
the full source observation.

**Active growth criterion.** When certified relations grow
E_n ⊆ E_(n+1), every old path persists. But transport along the
same path remains identical only when the new edge-map assignment
restricts to the old one. An arbitrary new transition map can alter
the path transport even if the graph relation only expands.
Candidate-only paths do not certify source transport, and a growing
graph may still have no path between the requested endpoints.

Concrete finite witness: Z/2 -> Z/4 -> Z/8 by x |-> 2x at each
edge is injective and additive; its composite sends x to 4x.
The observations O_0(x)=x, O_1(y)=floor(y/2) mod 2,
O_2(z)=floor(z/4) mod 2 agree exactly along these two transitions.
These latter observations are not group homomorphisms on every
fiber, showing why path naturality is stronger than requiring
every observation to be additive.

## 3. Exact consumer in grwtsk/math

The generic fusion is
GRWTSK.Algebra.AdditiveLocalFusion.Seam in
`GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/LocalAdditiveFusion.lean`.

The active path transport is in the existing RelationSandwich
namespace under
`GRWTSK/Combinatorics/GraphTheory/ActiveAdditivePath.lean`.

The explicit *prime-group* consumer is
GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeCellularAdditiveFusion
in `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeCellularAdditiveFusion.lean`.

It specializes the additive fusion to exact
OrderedPrimeGroupAddress.AtomicAddress words, retains separate
prime occurrences and ordering, and returns both source groups
and any seam-compatible additive observation under the stated
hypotheses. No application-specific prime factorization or
canonical same-word identification is manufactured.

The old ordered-prime-address group convention, graph
candidate/certified split, automorphic Fourier shell source,
three-phase ellipsoid and RH-facing pickup modules are unchanged.

## 4. Exact failure-of-descent gate for non-additive observations

A further source-level theorem now states the obstruction instead of
leaving it as prose. Define `Seam.FactorsObservation` to mean that an
arbitrary function `O : A × B → D` can be recovered exactly from a
function on the fused quotient. The new theorem
`Seam.observation_eq_of_factors` says that any two original states
identified by the quotient MUST have equal observed values.
`Seam.no_observation_descent_of_collision` gives the contrapositive:
one glued pair with different values rules out exact recovery on
that fused state space.

`PrimeCellularAdditiveFusion.primeSeam_no_source_descent_of_collision`
specializes this no-go to the ACTUAL ordered prime-address additive
groups. It is especially relevant to signed Möbius observations:
a prime-factor, exponent, or sign collision cannot be repaired just
by renaming a fused group, adding graph edges or lifting into a
larger faithful representation. Instead, refine the seam, retain
a separate residual channel, or prove a quantitatively paid
comparison that preserves the original signed source.

These two new abstract no-go theorems do NOT claim that the actual
RH source collides on some particular prime-address seam. That
application requires specifying its genuine observation map and a
concrete colliding pair; neither is invented here.

## 5. What this does NOT prove

- There is no theorem that a mixed-radix numeric serialization is a
  homomorphism of additive groups. In fact the [2,2] vs ZMod 4
  obstruction forbids such an additive group equivalence.
- A signed Möbius or pickup observation is not automatically an
  additive homomorphism on either seam summand. A general
  non-additive observation on A x B descends as a SET FUNCTION
  only if it is invariant on every coset of range(d); otherwise
  the quotient loses its value. The additive universal property
  does not solve that missing premise.
- The actual PickupSignedRotation source reflects finite BIRTH
  INDICES, not additive prime-address group elements. That is an
  exact reindexing, not an additive automorphism or a new signed
  cancellation estimate.
- ThreePhaseEllipsoidOrbit has a source-specific positive Gram
  observation and heat/phase geometry. No construction here
  intertwines the pushout with that quadratic form, the Fourier
  Leray kernel or the true Navier--Stokes moment operator.
- Finite certified graph path growth does not prove asymptotic
  type completeness, mixing, prime density, global reachability
  or the all-positive-rate signed RH endpoint estimate.
- A faithful embedding into a larger/inverse-limit space cannot
  repair an equality that fails in the original source without
  a specified defect and return map.

## 6. Evidence and research disposition

**Primary mathematical arguments:** image-quotient universal
property, kernel-of-inclusion analysis, induction over actual
graph paths, composition of injective additive maps, and an
explicit seam obstruction for the order-three rotation.
These are classical algebraic constructions, not claimed
as new mathematical inventions.

**Finite independent checks:** a separate exact-integer model
enumerated the 16-element direct product, its 8-element quotient,
source inclusions, 6721 assertions including additive descent,
a seam collision, the incompatible rotation, and a two-step
growing certified graph. Script SHA-256:
11faebb64ee9fe556a395555e4e960bddbee30eaa3e1e331e2e7111bff19df6c.
Operational code is not committed to the pure math repository.
These checks are NOT Lean parsing, elaboration, fresh kernel
replay or the transitive axiom audit.

**Next source-exact mathematical supplier:** construct an
application-specific seam and local observation for the actual
Möbius signed dyadic birth inventory, proving either exact
coset invariance or a one-sided source-derived defect estimate.
The downstream consumer is the unchanged
PickupDyadicEndpoint.DyadicBirthBound; no nontrivial bound on
that arithmetic sum follows from group fusion itself.

Local attribution: grwtsk contributors. Upstream Mathlib
constructions and authorship are preserved. No historical
influence or prior-art novelty is inferred from an idea match.

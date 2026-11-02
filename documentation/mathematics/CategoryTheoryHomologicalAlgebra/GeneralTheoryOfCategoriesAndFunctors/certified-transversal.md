# Certified mathematical transversal: source-covering typed spans

Local attribution: grwtsk contributors.

## Mathematical problem

A shared encoding, analogy or pair of maps does not itself authorize theorem
transport. The source objects, admissibility conditions, actual relation and
property-return theorem must be explicit. An arbitrary candidate span can be
empty or unrelated to the source.

Source: [CertifiedTransversal.lean](../../../../GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean).

## The single schema

Given source A, target B, predicates HA and HB, and the fixed mathematical
relation R(a,b), a transversal is a typed span W → A and W → B equipped with a
validity predicate. Valid witnesses have admissible endpoints, every admissible
source has at least one valid witness, and every valid witness proves R.

The relation R must come from the intended mathematics rather than being
selected after candidate generation to manufacture a trivial certificate.
This type-level span is not yet a general category-valued pseudofunctor,
a projective inverse limit or a reconstruction theorem.

## Source-return and composition arguments

The theorem source_property_of_target consumes four ingredients: the
transversal, a property Q proved on admissible targets, the actual certified
relation R, and a separate theorem R(a,b) ∧ Q(b) → P(a). Source coverage
provides the intermediate witness, and its source equality returns P to
the original a. Neither the relation alone nor model truth alone implies P.

Composition is the subtype of pairs of valid witnesses whose first target
equals the second source. The second coverage property applies because the
first target has been proved admissible. An explicit relation-composition
hypothesis is required to certify the resulting endpoints. This preserves
logical conjunction and does not confuse alternative routes with joint
premises.

## Obstruction and limits

The map Unit → Bool constantly returning false gives a source-covering
transversal whose image omits true. The theorem
lossyBooleanObservation_not_target_covering formalizes that failure.
No target coverage, inverse, faithful reconstruction or general theorem
transport may be inferred from this schema without further hypotheses.

A consumer for the next increment is the existing
[ExactSoficLanguageCover.lean](../../../../GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean)
source, which distinguishes an admitted path from the full factor language.
Another relevant source is
[TheoreticalQualification.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/TheoreticalQualification.lean)
with its independent source/model comparison and signed residual theorems.

This increment does not prove the sofic-indexed pseudofunctor, general
reconstruction, the periodic-point matrix-trace identity or the dynamical
zeta determinant identity. Each remains its own mathematical obligation.

## Proof and verification disposition

Source candidate only. The primary argument is witness-based and retains
the actual source relation, a separate return condition, and the matching
intermediate value during composition. A hostile finite observation refutes
the unsupported target-surjectivity inference. Novelty and external
mathematical significance remain unreviewed.

Compilation: **NOT_RUN**.
Fresh kernel checking: **NOT_RUN**.
Transitive axiom audit: **NOT_RUN**.
Independent mathematical comparison review: **PENDING**.
No local Lean toolchain or authorized Noe native replay is claimed.
The source commit and blob identities belong in a source-bound
verification record after publication.

A file-tree enumeration is not a review of each mathematical declaration.

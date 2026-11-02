# Source-covered mathematical transversals: first formalization increment

grwtsk contributors

## 1. Mathematical problem

A candidate comparison between mathematical domains must carry an actual relation
between the original objects, not an analogy, source hyperlink, or similarity score.
A source-covered span provides a witness for every admissible source object. It
does not automatically cover every target object or reconstruct the source.

This increment supplies the precise typed schema requested for the proposed
sofic-indexed mathematical universe. It is a proof candidate, not an accepted
kernel-verified theory of sofic presentations.

## 2. Exact definitions and statements

For types `A`, `B`, scoped predicates `HA : A → Prop` and `HB : B → Prop`,
and a prescribed mathematical relation `R : A → B → Prop`, a `Transversal`
has a witness type `W`, legs `source : W → A` and `target : W → B`, a
validity predicate, proofs that valid witnesses remain in scope, source
coverage, and certification of `R (source w) (target w)`.

The module is:
`GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.Transversal`.

Its named construction and theorem candidates are:

- `Transversal.ofFunction`: a relation-preserving map supplies a transversal.
- `Transversal.exists_related`: every in-scope source has an in-scope related target.
- `Transversal.forall_target_of_target_coverage`: a universal target conclusion
  requires explicit target coverage and a predicate-preservation theorem.
- `Transversal.comp`: compatible spans compose through their witness fiber
  product only when a rule `R a b → S b c → U a c` is supplied.
- `transversalOfExactRepresentation`: the existing
  `TheoreticalQualification.ExactRepresentation` supplies an exact encoding
  relation between source and model.
- `transversalOfExactRepresentation_decodes`: reconstruction uses the existing
  `decode_encode` theorem, not an inferred inverse for an arbitrary span.
- `source_coverage_does_not_force_target_coverage`: a source-covering
  constant map `Unit → Bool` omits `false` and refutes automatic target coverage.

The structure's `certified` field is a mathematical hypothesis about actual
objects. Constructing a record requires evidence for that field; merely
creating a record does not independently establish the relation outside its
declared scope.

## 3. Proof strategy and genuine boundary

For an admissible source `a`, source coverage supplies a witness `w` with
`source w = a`. Validity supplies the target's scope and certification
supplies `R a (target w)`.

For universal transport, an additional target-covering witness is necessary.
Its source satisfies the source predicate and its relation establishes the
target predicate. Without that extra premise a target outside the image
need not satisfy the conclusion.

Composition uses pairs of valid witnesses whose intermediate objects are
literally equal. The first target is in the second source scope, so the
second source-coverage theorem supplies the required pairing. The new
relation is proved using the supplied relation-composition theorem.
This prevents replacing two logically joint requirements by alternatives.

The counterexample `Unit → Bool` maps the unique source to `true`.
It satisfies source coverage and the trivial relation, but cannot produce
a witness for target `false`. It is a concrete obstruction to a stronger
universal-transport rule; it is not an obstruction to every symbolic factor.

## 4. Composition and intended consumer

The direct consumer is the next sofic-projective prototype: finite directed
graphs, edge shifts, adjacency matrices, and periodic-point counts. That
application must define its actual source and target objects, construct the
graph-to-matrix map, and prove the periodic-point/trace relation. No such
dynamical theorem is supplied by this initial span abstraction.

Generic `Transversal.comp` requires an explicit bridge theorem for the
chosen source relations. It does not turn visual similarity or vocabulary
overlap into a mathematical implication.

## 5. Verification and trust boundary

Source classification: SOURCE_PROOF_CANDIDATE.

- Published source commit:
  `cc7d1d206937995c26a3b52b1c03ebbf01c929c0`.
- Published source blob: `2d3d815e7f22d222b492f1281b083974fd654959`.
- Published source path:
  `GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/Transversal.lean`.
- Import: the existing `TheoreticalQualification.lean` module.
- Toolchain context: Lean `v4.34.1`; Mathlib
  `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Source-path and blob readback: observed.
- Lean compilation: NOT_RUN.
- Fresh kernel replay: NOT_RUN.
- Transitive axiom audit: NOT_RUN.
- Independent source-fidelity and novelty review: UNASSESSED.

The targeted module-build command is
`lake build +GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.Transversal:olean`.
The command is a proposed verification target; it is not an execution receipt.

Source publication, absence of a source-level `sorry` token, a mathematical
proof sketch, and a complete kernel/audit result are separate kinds of evidence.

## 6. Sources and missing bridges

- [Transversal source at the published commit](https://github.com/grwtsk/math/blob/cc7d1d206937995c26a3b52b1c03ebbf01c929c0/GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/Transversal.lean).
- [Previous exact-representation comparison](https://github.com/grwtsk/math/blob/cc7d1d206937995c26a3b52b1c03ebbf01c929c0/GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/TheoreticalQualification.lean).
- [Repository proof-comparison disposition](../reference/proof-comparison-disposition.md).

Remaining work: native checking and axiom auditing of this precise source,
then an actual source-bound graph/shift/matrix transversal and the
associated preservation and information-loss proofs.

## 7. Revision and issuance

Revision 1. Mathematical publication is represented by the pinned Lean
source commit above. This explanatory review does not issue a separate
kernel-acceptance certificate or assert historical theorem novelty.

# Whole-language sofic transversal: source comparison note

grwtsk contributors

## 1. Mathematical problem

A finite labeled graph that accepts one trace is not necessarily an exact
presentation of that trace's full finite-factor language. The source
`ExactSoficLanguageCover` formalizes this distinction. The transversal
consumer here uses its exact `language word ↔ GraphLanguage G word`
witness rather than inferring correspondence from one accepted path.

This document is a source-bound research comparison note, not a separate
kernel-verification receipt or claim of universal sofic projectivity.

## 2. Statements and objects

Fix an alphabet `Alphabet`, source predicate
`language : List Alphabet → Prop`, and
`P : ExactLanguagePresentation Alphabet language`.

The target type `PathTarget P` records a triple of starting state,
finishing state and finite word. `AdmissiblePath P p` is the actual
inductive path relation `WordPath P.graph p.1 p.2.2 p.2.1`.

The canonical relation is

```
R word p := word = p.2.2
```

The `wholeLanguageTransversal P` bridge consists of paths `p` for
which both `language p.2.2` and `AdmissiblePath P p` hold. Its target
retains the actual graph endpoints, word and admissibility predicate.

The declared proof candidates are:

- `wholeLanguageTransversal`: every word of the full source language
  has a certified actual graph path.
- `wholeLanguageTransversal_target_coverage`: every admissible graph
  path has a matching whole-language witness.
- `word_property_of_all_paths`: a universally established graph-path
  property transports to every source word only through a stated return rule.
- `path_property_of_all_words`: a source-word property transports to
  all graph paths only with the explicit reverse coverage proof and
  predicate-preservation rule.

## 3. Primary mathematical argument

For a word `w` with `language w`, the forward direction of
`P.exactLanguage w` yields states `s,t` and a proof of
`WordPath P.graph s w t`. This constructs the span witness and proves
its declared relation by equality of the retained word.

For any graph path with label `w`, its actual `WordPath` proof
supplies `GraphLanguage P.graph w`. The reverse direction of the SAME
exact-language equivalence proves `language w`, yielding target
coverage. Thus both coverage directions refer to the entire specified
factor language, not an arbitrary graph run.

The two property-transport theorems reuse the one canonical category-theory
`Transversal` schema and its logically separate source/target return
criteria. They do not infer an unstated mathematical predicate comparison.

## 4. Composition and hostile boundary

The exact-language hypothesis is substantive. Without it, the
one-state full-shift graph admits every one-sided trace while accepting
finite words absent from the constant-false trace's factor language.
The earlier `fullShiftGraph_not_exact_for_constant_false` theorem
records this obstruction. A single admitted path does not supply
whole-language coverage.

This increment neither constructs a pseudofunctor
`SofPresᵒᵖ ⥤ Cat`, nor proves that every mathematical structure has a
finite faithful representation. It also does not establish the graph
periodic-point/trace or dynamical zeta/determinant identities.

## 5. Verification and evidence

Published source at commit
`9b227db313518e44c156a34e3e15e86c0bf13a2f`:

- Canonical schema:
  `GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean`,
  blob `df720cbb72c616938635c20477430f5f0ded4021`.
- Consumer:
  `GRWTSK/DynamicalSystemsAndErgodicTheory/SoficLanguageTransversal.lean`,
  blob `238da905b6595c944cac40f39ae2f54870032132`.
- Existing exact source:
  `GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean`,
  blob `f50489eaf6c7277993a08925a58b7765f9e10ec9`.

Source and diff readback: observed. Compilation: **NOT_RUN**.
Fresh kernel replay: **NOT_RUN**. Transitive axiom audit: **NOT_RUN**.
Analytic comparison: source-level proof inspection only.
Independent mathematical review: **PENDING**. Novelty: **UNASSESSED**.

Lean environment at the source revision: `v4.34.1`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The precise verification targets are tracked in
[math issue #1576](https://github.com/grwtsk/math/issues/1576).

## 6. Sources and remaining bridge

- [Canonical transversal](https://github.com/grwtsk/math/blob/9b227db313518e44c156a34e3e15e86c0bf13a2f/GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean)
- [Exact-language consumer](https://github.com/grwtsk/math/blob/9b227db313518e44c156a34e3e15e86c0bf13a2f/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficLanguageTransversal.lean)
- [Underlying full-language semantics](https://github.com/grwtsk/math/blob/9b227db313518e44c156a34e3e15e86c0bf13a2f/GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean)

Next: native verification of these source candidates, then construct
an actual graph-to-matrix/shift periodic-point transversal preserving
the complete source observation and exhibiting the noninjective
labeling boundary.

## 7. Revision

Revision 1. No claim of kernel acceptance or new general representation
theorem accompanies this review note.

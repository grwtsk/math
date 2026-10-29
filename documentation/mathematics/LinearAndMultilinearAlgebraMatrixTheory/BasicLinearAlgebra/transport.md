# Positive scales and coherent transport on real lines

A `Line` carries a real vector space and an explicit linear equivalence to `ℝ`. This coordinate chooses both an orientation and a unit. Its dimension is one. A `PositiveScaleEquiv L M` is an actual linear equivalence with positive real scale `s` satisfying `coordinate_M(f x) = s * coordinate_L(x)` for every `x`.

Composition multiplies scales in the order of application, inversion gives reciprocal scale, and the coordinate order is preserved. A dependent chain retains every object and map. If closing the chain gives the identity linear equivalence, the product of every edge scale and the closing scale equals one. A cycle with all edge scales one and closing scale `j²` cannot commute when the natural number `j` exceeds one.

A comparison cocycle contains an equality for every triple of indices. A common comparison object induces this cocycle. Explicit examples distinguish inverse relations on individual pairs from coherent descent over triples, and existence of one numerically compatible poly-isomorphism from compatibility of every member of the family. No reachability relation supplies the missing equalities.

`FiniteComparisonRepair` retains a common line, actual positive comparison maps, the points being compared, pointwise inequalities, every weight, and each error. Under nonnegative weights and observables, lower theta calibration, upper q calibration, coefficient-mass control and total-error control imply its finite weighted bound. Positive lower calibration then permits division. These mathematical assumptions are not supplied by a source citation. Region-valued and nonlinear comparison proposals require separate interfaces.

## Source and verification scope

[Coherence source](../../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coherence.lean), [line and chain definitions](../../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveScale.lean), and [conditional finite comparison](../../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteComparison.lean). The [arithmetic source-correspondence dossier](../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/abc-iut-objections.md) is a separate application boundary. The real-line results do not establish that any historical construction has these maps or commuting diagrams.

Direction: grwtsk contributors. Formalization assistance: OpenAI Codex. Original additions: MIT; imported Mathlib results: Apache-2.0 with upstream authorship retained. Selected replay is distinct from repository admission and independent review.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/LinearAlgebra/OrientedRealLine/Coherence.lean`](../../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coherence.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 13 |
| Theorem/lemma commands | 10 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../_support/reference/library-pages.md#count-definitions) · [Structured inventory](../../_support/reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65e9cfe4bfc0c3603b8ced9e40b4d08cf5ab1e10212f333d970c4005d1dd6c07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean","GRWTSK/Algebra/LinearAlgebra/OrientedRealLine/FiniteComparison.lean","GRWTSK/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean","GRWTSK/LinearAlgebra/OrientedRealLine/Coherence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.CountableBooleanPointwiseOperations.Variant9bd72d6ef183613a.UnaryMapAndNegation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95d80f3938a69130ae293372956bb40ee050baa0` · SHA-256 `807116d33e0216d3f766383b9b9eb1e19e8c468e90bea06b2539bf0426e6d7a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
UnaryMapAndNegation — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba
Organized SHA-256: f24d2a7e595d4acdc12b93e7760847088f752739a8f4e2b0da56f213fb97a8df
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete arbitrary Bool→Bool pointwise map with its exact evaluation equation, plus its Boolean-negation specialization. Historical carrier provider is retained; no involution or algebra law is inferred from the name not. -/

import BooleanMatrix.Matrix.Core

/-!
# Pointwise BooleanMatrix operations
-/

namespace BooleanMatrix
namespace Matrix

/-- Apply a Boolean function independently to every entry. -/
def map
    (function : Bool → Bool)
    (matrix : Matrix) :
    Matrix :=
  fun row column => function (matrix row column)

@[simp]
theorem map_apply
    (function : Bool → Bool)
    (matrix : Matrix)
    (row column : Nat) :
    map function matrix row column =
      function (matrix row column) :=
  rfl

/-- Pointwise Boolean negation. -/
def not (matrix : Matrix) : Matrix :=
  map (fun bit => !bit) matrix

end Matrix
end BooleanMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5918e9ebae857a684cb15c0ffcded019396b9768470b1ecde768c9b59ab86b88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/CountableBooleanPointwiseOperations/Variant9bd72d6ef183613a/UnaryMapAndNegation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

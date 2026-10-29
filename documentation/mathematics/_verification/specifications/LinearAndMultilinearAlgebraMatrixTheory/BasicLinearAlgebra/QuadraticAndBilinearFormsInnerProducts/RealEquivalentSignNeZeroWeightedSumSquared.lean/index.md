# Verification target: Real Equivalent Sign Ne Zero Weighted Sum Squared

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f330095c26968fb0c5636ed89c82945aa9e6a1ff",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Real/Variant9aaf4a3c2f877247527d9fcfb9dca6a78d20dbb115a72afce6adcbe6cc386c1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/RealEquivalentSignNeZeroWeightedSumSquared.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/RealEquivalentSignNeZeroWeightedSumSquared.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f330095c26968fb0c5636ed89c82945aa9e6a1ff`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Real/Variant9aaf4a3c2f877247527d9fcfb9dca6a78d20dbb115a72afce6adcbe6cc386c1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Real/Variant9aaf4a3c2f877247527d9fcfb9dca6a78d20dbb115a72afce6adcbe6cc386c1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sign` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Invertible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isometryEquivSignWeightedSumSquares](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/RealEquivalentSignNeZeroWeightedSumSquared.lean/declarations/isometryequivsignweightedsumsquares.md) | 34 | `declaration-track:c07c244c3f81e6ffad1fbaf16d9e31ab762aab771c03d347aa361d7367bebd50` |
| 2 | `theorem` | [equivalent_sign_ne_zero_weighted_sum_squared](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/RealEquivalentSignNeZeroWeightedSumSquared.lean/declarations/equivalent-sign-ne-zero-weighted-sum-squared.md) | 53 | `result-track:2db6c5f7685442b8b3a6a3beec08eca785ee9ad7739f9439792a22da53f41e97` |
| 3 | `theorem` | [equivalent_one_neg_one_weighted_sum_squared](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/RealEquivalentSignNeZeroWeightedSumSquared.lean/declarations/equivalent-one-neg-one-weighted-sum-squared.md) | 63 | `result-track:2a62e4b51a926198a1925f2acd3129c45da81244fb32deec9e059f6c357ec2ea` |
| 4 | `theorem` | [equivalent_signType_weighted_sum_squared](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/RealEquivalentSignNeZeroWeightedSumSquared.lean/declarations/equivalent-signtype-weighted-sum-squared.md) | 72 | `result-track:23650ece906b36c6dc4c25145ff565cc54e043db3388d5df805648197e66fcad` |
| 5 | `theorem` | [equivalent_one_zero_neg_one_weighted_sum_squared](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/RealEquivalentSignNeZeroWeightedSumSquared.lean/declarations/equivalent-one-zero-neg-one-weighted-sum-squared.md) | 81 | `result-track:f8795019224540cc6a79a590cc0ffc2c34a91c44190553eaaf6d952c1515ea6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f13b3c611ad639b346916281d817ebb963f85628c634da43c24c9d3e9c27843 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Real/Variant9aaf4a3c2f877247527d9fcfb9dca6a78d20dbb115a72afce6adcbe6cc386c1f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Real/Variant9aaf4a3c2f877247527d9fcfb9dca6a78d20dbb115a72afce6adcbe6cc386c1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Ordered Minors Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42ce1c4294bbc3ab9839fe92308a636559777cdf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OrderedMinors/Variant0ff21dcbfa5b5352fb05b7c88551678906be2f6f7c7c75b0c304c4818f53af67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42ce1c4294bbc3ab9839fe92308a636559777cdf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OrderedMinors/Variant0ff21dcbfa5b5352fb05b7c88551678906be2f6f7c7c75b0c304c4818f53af67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OrderedMinors/Variant0ff21dcbfa5b5352fb05b7c88551678906be2f6f7c7c75b0c304c4818f53af67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [columnSubmatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/columnsubmatrix.md) | 29 | `declaration-track:a9eccce3fd255cd613be651a01d6b03aaf1c08d676d882839bd002f4cfcee9a8` |
| 2 | `def` | [columnMinor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/columnminor.md) | 34 | `declaration-track:8d4b6bd0bc86915b10aea6c513b2a7af20eba423f194a1dda0bb7adc6a213887` |
| 3 | `def` | [orderedMinor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/orderedminor.md) | 38 | `declaration-track:d59be1ce5622d0aee43b079e13e39f50971afae9c6885b5c8c7d4f9bfd70a75e` |
| 4 | `def` | [AllOrderedMinorsNonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/allorderedminorsnonneg.md) | 42 | `declaration-track:17803f5df0386ea79d4dbb627ec28c8a048a85cebf8fb891c37b376901936966` |
| 5 | `def` | [AllOrderedMinorsPos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/allorderedminorspos.md) | 46 | `declaration-track:8c25120f56ddd0e55a4cc3aacb665f160ff2aab100da4c43fa5dcd01eaf733af` |
| 6 | `theorem` | [allOrderedMinorsNonneg_of_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/allorderedminorsnonneg-of-pos.md) | 50 | `result-track:a112c64d9f791b78a8641560db6a79afe2ce91ffeb44711cd47cf1185d137b21` |
| 7 | `theorem` | [columnSubmatrix_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/columnsubmatrix-mul-left.md) | 56 | `result-track:5489c65dad3c7c3c178122c03c0afb3a10c97b0c33d5cfa5bdd655894c1ad294` |
| 8 | `theorem` | [columnMinor_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/columnminor-mul-left.md) | 63 | `result-track:1bca9d23807724f11502832b4b81e2108d225dc6d3669d873fa619fc9fc79559` |
| 9 | `theorem` | [orderedMinor_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/orderedminor-mul-left.md) | 70 | `result-track:d4ea0db674422eaa86a157ee30a9c65cfbecb7f946b623f3ac80be0139f57f07` |
| 10 | `theorem` | [orderedMinor_mul_left_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/orderedminor-mul-left-eq-zero-iff.md) | 76 | `result-track:64474db25b8438dd580c83cb60e1ead02d546069aa6a4db540986160bce754fe` |
| 11 | `theorem` | [allOrderedMinorsPos_mul_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/allorderedminorspos-mul-left-iff.md) | 84 | `result-track:269da803b0596676dc6b9a7178a380c30ff763315a00bacdf8fc79bbc204c7ef` |
| 12 | `theorem` | [allOrderedMinorsNonneg_mul_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedMinorsNamespaced.lean/declarations/allorderedminorsnonneg-mul-left-iff.md) | 97 | `result-track:7096c9a3909662f7c6c4011b30acb6684cac9242631252ce1d45eb9e9b6f8222` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=920e07b24fbfe78f6a5a3c8f1a1f7f3e5e829a98d36132ebad378fad075c46bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OrderedMinors/Variant0ff21dcbfa5b5352fb05b7c88551678906be2f6f7c7c75b0c304c4818f53af67.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/OrderedMinors/Variant0ff21dcbfa5b5352fb05b7c88551678906be2f6f7c7c75b0c304c4818f53af67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

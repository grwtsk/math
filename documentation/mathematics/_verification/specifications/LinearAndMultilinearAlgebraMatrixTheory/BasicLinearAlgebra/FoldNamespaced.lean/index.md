# Verification target: Fold Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b789edfeff36b6c181bf7488162b72d90c6794f1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b789edfeff36b6c181bf7488162b72d90c6794f1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foldr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-source-edition-3.md) | 55 | `declaration-track:7e08fdfe5c67144ee8b78b7c7da343743a39db4fcbfb5946b09e452428cb4566` |
| 2 | `theorem` | [foldr_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-source-edition-4.md) | 60 | `result-track:ec3fd148b1fcb0ddb808644fe68cb5fc63ab7d0773cb9bfbc7c4e5c8ad334d3f` |
| 3 | `theorem` | [foldr_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-algebramap.md) | 64 | `result-track:4ac44eb11f50e27fb25e019c13e91a1ff9b601220ce286ed01885a1f68b8fcc9` |
| 4 | `theorem` | [foldr_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-one.md) | 69 | `result-track:bc41dd081850d4e31e1590547ab770b31efe2d4a39a0905652076e01446b9931` |
| 5 | `theorem` | [foldr_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-mul-source-edition-2.md) | 73 | `result-track:88daff5bdd72013a047f718191532d674214a510f9b54cafedcd69da4a227c4b` |
| 6 | `theorem` | [foldr_prod_map_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-prod-map.md) | 78 | `result-track:af512dc49ab1e6df980ca1edf5b58f5aaf3cde293ee39af411b9c45c9c10a12a` |
| 7 | `def` | [foldl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldl-source-edition-2.md) | 92 | `declaration-track:b17634d5f11b9ad13f3d99edbed445b72db8d3d2ebbb2be4b257c19518073c5b` |
| 8 | `theorem` | [foldl_reverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldl-reverse.md) | 97 | `result-track:0779f2fd6f676f1717d81d0b0e5b48ed57cca32aaee637024b230697e8688ffb` |
| 9 | `theorem` | [foldr_reverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-reverse.md) | 102 | `result-track:dd3d1417e37e1137625e0a2bd6571bba1ccdd5b8c6af4d682a7ca98e279fa0a5` |
| 10 | `theorem` | [foldl_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldl.md) | 107 | `result-track:5d1fc3f6f1f6f58852b9e972870b757bedfedd980ad2dc004b82a7bc111e1600` |
| 11 | `theorem` | [foldl_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldl-algebramap.md) | 111 | `result-track:abb469696c7b25cdef8710658d43fcbad499a025dadaa0f36646436e3c4a648d` |
| 12 | `theorem` | [foldl_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldl-one.md) | 116 | `result-track:01f9bc192bc4b1bcd0fddbff71550bfdc807d67bc1db91b2ace2791e618cc495` |
| 13 | `theorem` | [foldl_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldl-mul.md) | 120 | `result-track:ecbd55798708858f5ee3bfc1dab8e459ebeffb56a33740c60b685342bf692045` |
| 14 | `theorem` | [foldl_prod_map_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldl-prod-map.md) | 125 | `result-track:2ffe7c43882000b3d6d45378ff4dbcc90702c7b42ac96f8f9acb9cb542615657` |
| 15 | `theorem` | [right_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/right-induction.md) | 132 | `result-track:fd68cba2f98f6ba12ed1c8bfff7a523671d04989b483aaf3582eb6e75d7098be` |
| 16 | `theorem` | [left_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/left-induction.md) | 152 | `result-track:b75f7ee03e87be21c08047a916babc64cae7e41a3906869077bfe037badf1ac6` |
| 17 | `def` | [foldr'Aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-aux.md) | 165 | `declaration-track:ad1496260fe3bf27a2388486fdfc2021422e23238cf8d8126bc19a05cd58ab08` |
| 18 | `theorem` | [foldr'Aux_apply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-aux-apply-apply.md) | 179 | `result-track:febc9bb9cf5387471d12d3a4bcdee2763963b4915ce5f261cf075181a51ef3e9` |
| 19 | `theorem` | [foldr'Aux_foldr'Aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-aux-foldr-aux.md) | 183 | `result-track:24fda84e0269db9ceddb3c41f9c5c2492610aebd5ddb9eb0b17a3a912643b8f7` |
| 20 | `def` | [foldr'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr.md) | 194 | `declaration-track:67708887f4c6dca6ea5238bea6e1390bd866be33522a6112beb04c9c81be6772` |
| 21 | `theorem` | [foldr'_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-algebramap-source-edition-2.md) | 198 | `result-track:8aea67da981e0c30f446d10a8b687fa055fb112652b46d4f73d9d26ade64e1c5` |
| 22 | `theorem` | [foldr'_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-source-edition-2.md) | 203 | `result-track:796d8b7164f5a2ad63406d14969466c8d2e11a105af0582ecf45b61cca756a0d` |
| 23 | `theorem` | [foldr'_ι_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FoldNamespaced.lean/declarations/foldr-mul.md) | 208 | `result-track:00c5a938af16f06fe1340bf27703560fc740e3db47f07acf53855c2c6ac48711` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce4efdb013cc04c5bc69a6ab2d8b7f41d1705362af5ed5efb5f215108ea9b3bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Data Matrix Basis Namespaced Single

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07957742821bda64244649c77b9328c2578e56c3",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07957742821bda64244649c77b9328c2578e56c3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single.md) | 38 | `declaration-track:e95c0f0ee89eb93453fcb4bbe91ce3ed22f06457326b5de380a7998e5b4fca77` |
| 2 | `theorem` | [single_eq_of_single_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-eq-of-single-single.md) | 44 | `result-track:25a4997095127070aeafdbf28c0a97ae91ce04fd974e76041ba9f80310438f96` |
| 3 | `theorem` | [of_symm_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/of-symm-single.md) | 54 | `result-track:b87fcbe552c63520c00f4f16d7b0c69b0d436dae8e09ac1fb81b5a5c4ebc165b` |
| 4 | `theorem` | [smul_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/smul-single.md) | 61 | `result-track:bdc71e7038ec1c9428491df8b0a318e3590bb1ea9e14492202ea2f408f8f60f1` |
| 5 | `theorem` | [single_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-zero.md) | 70 | `result-track:ed3dd10c5240ef27e4626b05bf1feb36b7cd9216fc23af9e044639a6edae698d` |
| 6 | `lemma` | [transpose_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/transpose-single.md) | 78 | `result-track:4d67296f09b09975c37ae0ebaa144f66a5a26e086451de195e766253c803fbfe` |
| 7 | `lemma` | [map_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/map-single.md) | 85 | `result-track:65af715a6186298f051ed9c6d7cf71012f53bddd65776a773b73681736c86e02` |
| 8 | `theorem` | [single_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-add.md) | 94 | `result-track:be2568b4322a5b046a00d32b9e995ee5151078703bc203ad920d07162aa24b13` |
| 9 | `theorem` | [single_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-mulvec.md) | 102 | `result-track:bad41648838aec511c309b9b713b84651f8d05f3ce2dc3be79cac20d7fba9848` |
| 10 | `theorem` | [matrix_eq_sum_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/matrix-eq-sum-single.md) | 113 | `result-track:68c51a695d17896d5f2fc2421991f7ed63c3c384337d8f79ff0d0cb14acb6f11` |
| 11 | `theorem` | [single_eq_single_vecMulVec_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-eq-single-vecmulvec-single.md) | 121 | `result-track:6fa062d902181a68ab798987fb148708f3ff6ed494c90f7ae6ce364da4fe90eb` |
| 12 | `theorem` | [induction_on'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/induction-on-source-edition-2.md) | 131 | `result-track:937a43e2bb06c7619d42111c5bd984302b54225d4a976133452be209da7f649e` |
| 13 | `theorem` | [induction_on](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/induction-on.md) | 142 | `result-track:91239e2ffc3339eda015ddeb2c802f400392d2efe43f67ad17e0281df089f2eb` |
| 14 | `def` | [singleAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/singleaddmonoidhom.md) | 155 | `declaration-track:cb393a7b49d73f7cda6cbbd6ee74c8fc9343bdf51fd11f4d90af206754db795d` |
| 15 | `def` | [singleLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/singlelinearmap.md) | 165 | `declaration-track:22f2a1344530a57ce4c81dddc696e453ce61d3b3730459dddda006f959687e93` |
| 16 | `theorem` | [ext_addMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/ext-addmonoidhom.md) | 178 | `result-track:dfb2e353546a23cacb7a621d99baee1dfa0234fccf9e11858a2bfb98b22ac2f8` |
| 17 | `theorem` | [ext_linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/ext-linearmap.md) | 194 | `result-track:59a4300ace9a4a0df9a55d50912eaab71d438b3efa9b899ea67a399650e1f5e4` |
| 18 | `theorem` | [single_apply_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-apply-same.md) | 209 | `result-track:17a5fe7f9eea71603c027e66acecb3504fe15b6fe34bf9e74113e8536af752a5` |
| 19 | `theorem` | [single_apply_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-apply-of-ne.md) | 215 | `result-track:9804ff37249d33f111fd3e9e4060a39506b1759126c271c3d8375d9ef6a49538` |
| 20 | `theorem` | [single_apply_of_row_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-apply-of-row-ne.md) | 221 | `result-track:ea572da414248415a5ab1d65cd607f2e7080e26dc6453946a2f4e5e0e82b3bf5` |
| 21 | `theorem` | [single_apply_of_col_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-apply-of-col-ne.md) | 226 | `result-track:eceae1b9edf94c78590b46c96fb1ec496fd08751cc39387df19e2237acd62127` |
| 22 | `theorem` | [diag_single_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/diag-single-of-ne.md) | 237 | `result-track:440920c22ddbec076e18b54374322ff5de842ada9cd676911ac9298e81426f2e` |
| 23 | `theorem` | [diag_single_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/diag-single-same.md) | 243 | `result-track:da5d195573c5e063f5b5c0fb868d72edce2307ea00027b03826bee7703395653` |
| 24 | `theorem` | [single_mul_apply_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-mul-apply-same.md) | 256 | `result-track:64ca902021835af4b73e66d636de2f431d11a1980bbf83ba8200b912204182b5` |
| 25 | `theorem` | [mul_single_apply_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/mul-single-apply-same.md) | 264 | `result-track:7473fab803325cc18410f518c3e1c912c049db3b9cd9cf88c21a50c1312c3c58` |
| 26 | `theorem` | [single_mul_apply_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-mul-apply-of-ne.md) | 272 | `result-track:2afe37bf08a650fa01eb11749bbf1d69809f18b94492be93d170dfba4d57d5aa` |
| 27 | `theorem` | [mul_single_apply_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/mul-single-apply-of-ne.md) | 280 | `result-track:d97f25a6092fd4e83802cf01f68f0f45099e4dfab4490bcc8591d0eaaf06f6f1` |
| 28 | `theorem` | [single_mul_single_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-mul-single-same.md) | 287 | `result-track:8dee94f6ea76ea90c0daeaf77a6acf0305e553f59bff844de61c48c43bb01a2e` |
| 29 | `theorem` | [single_mul_mul_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-mul-mul-single.md) | 296 | `result-track:3ffd5f8e43721e979d879abb31a7c32628323079a5102b2bf249a2a3432d79c9` |
| 30 | `theorem` | [single_mul_single_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/single-mul-single-of-ne.md) | 307 | `result-track:551a46f224a3c6a047258f8eeb919f9b8620e22ef3be72ca05c2da5ea8451cfc` |
| 31 | `theorem` | [row_eq_zero_of_commute_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/row-eq-zero-of-commute-single.md) | 323 | `result-track:5a6c4887131546fc4a4e7aff4c5722d2221a67441462c16622ce4c6a87f9832a` |
| 32 | `theorem` | [col_eq_zero_of_commute_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/col-eq-zero-of-commute-single.md) | 331 | `result-track:0a8ddf17b4431e3d25a8413d7b2c19f688df80f12c877cbc53eec49a4cadbf9d` |
| 33 | `theorem` | [diag_eq_of_commute_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/diag-eq-of-commute-single.md) | 339 | `result-track:87ffaa24d7045efea439896e14ac5d8f3fec084e7fd2563e6a6b857a31c09806` |
| 34 | `theorem` | [mem_range_scalar_of_commute_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/mem-range-scalar-of-commute-single.md) | 348 | `result-track:e594284b64522eb7078b9848e4078328bd97db1e093e5a088ba2d59b4094d447` |
| 35 | `theorem` | [mem_range_scalar_iff_commute_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/mem-range-scalar-iff-commute-single-source-edition-2.md) | 369 | `result-track:b46823d3b7523a6a6af1849b74ac601742f0aeb891a9c1c67a8ab1d206219775` |
| 36 | `theorem` | [mem_range_scalar_iff_commute_single'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixBasisNamespacedSingle.lean/declarations/mem-range-scalar-iff-commute-single.md) | 379 | `result-track:57238d5b6b3559ce4b09c6880e74e7587123bf89c2f0d1da91860adf44903859` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=883badbd2b2a82d7d7ab3ee2fdd51a9b14a0951c0fbab3927b63ad237de2ae48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

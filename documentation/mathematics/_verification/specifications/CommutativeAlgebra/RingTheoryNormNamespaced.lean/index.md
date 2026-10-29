# Verification target: Ring Theory Norm Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08f80e2ac0915662f4461e2b1a6395ceda0c4778",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08f80e2ac0915662f4461e2b1a6395ceda0c4778`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.PrimitiveElement` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [norm](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm.md) | 79 | `declaration-track:6dad4a3d7b4461aa68936a5f58e609a13b33a6704eb63ca35277550deff406e2` |
| 2 | `theorem` | [norm_apply](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-apply.md) | 83 | `result-track:cad5059b5438ddb8ea4f4bd6d084c230127bcf60c0293c5348057872dc3f8015` |
| 3 | `theorem` | [norm_eq_one_of_not_exists_basis](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-one-of-not-exists-basis.md) | 86 | `result-track:3f4fbd40cfb7f6fb291cad014081e6de6bd3ff4b8d365fe0246da496296b87a8` |
| 4 | `theorem` | [norm_eq_one_of_not_module_finite](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-one-of-not-module-finite.md) | 92 | `result-track:d789bc75d2c56928b468d4dbc3a2242abd5850e84ab0667ca76803b2018bcb22` |
| 5 | `theorem` | [norm_eq_matrix_det](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-matrix-det.md) | 99 | `result-track:ed5eb4338a4c55bb82020e34695f15d9aa4da978cc669860f77793090812034d` |
| 6 | `theorem` | [norm_algebraMap_of_basis](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-algebramap-of-basis.md) | 105 | `result-track:e2cf648c1f47c44f335d1543b99ffe6be737d66e7b130ade4b90ab767f515c36` |
| 7 | `theorem` | [norm_algebraMap](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-algebramap.md) | 119 | `result-track:dc9e1336f1e67e1b10fa9ff27f8c76de490a03630d1d2fd3b273d20b22041b64` |
| 8 | `theorem` | [PowerBasis.norm_gen_eq_coeff_zero_minpoly](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/powerbasis-norm-gen-eq-coeff-zero-minpoly.md) | 132 | `result-track:7d4262202255374592a6d4d74a97826ab83db864a8541d6451e1de7ff3a25e6a` |
| 9 | `theorem` | [PowerBasis.norm_gen_eq_prod_roots](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/powerbasis-norm-gen-eq-prod-roots.md) | 140 | `result-track:3879430eb7cf41a2bec6b706ad27c2fba8ef45f34c642ebf34571d91a01e1899` |
| 10 | `theorem` | [norm_zero](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-zero.md) | 159 | `result-track:b56708a33acd246f9dedd35ca51b65135d43a893ea90e48802f170b49812dc37` |
| 11 | `theorem` | [norm_eq_zero_iff](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-zero-iff.md) | 165 | `result-track:da0969a994a2ec11c52f12adea74684842588abefa2fcc92022f38746ec8f581` |
| 12 | `theorem` | [norm_ne_zero_iff](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-ne-zero-iff.md) | 183 | `result-track:98c5909a596f9199e7d96248f6edd6d7ebadd695d07e94bbb7e2555bd34fa975` |
| 13 | `theorem` | [norm_eq_zero_iff'](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-zero-iff-source-edition-2.md) | 189 | `result-track:ec1ffbd8b2c8521123bcb352c302af937797f93cb7ab18b19b58a765efbcfa00` |
| 14 | `theorem` | [norm_eq_zero_iff_of_basis](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-zero-iff-of-basis.md) | 193 | `result-track:d1955b4f9ebe4d81a79d5558e3521e9d3a8090961bbc34013366899dfb147579` |
| 15 | `theorem` | [norm_ne_zero_iff_of_basis](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-ne-zero-iff-of-basis.md) | 200 | `result-track:db26641681b23a30ec20dcca541217579401bad22661d9ce32ce2c43a7c14a07` |
| 16 | `theorem` | [norm_eq_norm_adjoin](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-norm-adjoin.md) | 211 | `result-track:d105117c321de0dccdcfdf8e9c9ba29f98c4b6680018f54fcbb8ae6af1808e6f` |
| 17 | `theorem` | [Ring Theory Norm Namespaced](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-gen-eq-one.md) | 227 | `result-track:ee4dba4d5266ac2e45f76a10225f5e60b647e9aeb8998d44294354559b8ce03c` |
| 18 | `theorem` | [Ring Theory Norm Namespaced](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-gen-eq-prod-roots.md) | 237 | `result-track:36584f2e2d51a4cb2ffdd9df88f5570a9a1476cdddb2b920b77f789afe5288a0` |
| 19 | `theorem` | [norm_eq_prod_embeddings_gen](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-prod-embeddings-gen.md) | 261 | `result-track:3a35b58ab7d2fd4deaec854e54a901eb06427fbf5eed670117f0c37f00911ac7` |
| 20 | `theorem` | [norm_eq_prod_roots](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-prod-roots.md) | 276 | `result-track:8c5f171877dbc9ae50203dc39c5fc61334b1b9dec0b1a1ce3900541256976d8d` |
| 21 | `theorem` | [prod_embeddings_eq_finrank_pow](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/prod-embeddings-eq-finrank-pow.md) | 283 | `result-track:15562f287cf905ce2035ef3917c4ad9c10af8cda826baf929609707a414a4835` |
| 22 | `theorem` | [norm_eq_prod_embeddings](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-prod-embeddings.md) | 309 | `result-track:44af0585eb52bfd25ce3d980366720aebf1eac6959bff77fc07888797e5db18d` |
| 23 | `theorem` | [norm_eq_prod_automorphisms](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-eq-prod-automorphisms.md) | 319 | `result-track:081a80ebb4dfb8f972a1dde17750ff5b8d2da0aad71563def8b6153670194e81` |
| 24 | `theorem` | [isIntegral_norm](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/isintegral-norm.md) | 332 | `result-track:e252e4a6be8da68a6e0c9dce78b864022ec061cfec9c8688899462eee9e95880` |
| 25 | `theorem` | [norm_norm](../../../../CommutativeAlgebra/RingTheoryNormNamespaced.lean/declarations/norm-norm.md) | 347 | `result-track:ccfb80118c3cbd2f93e9ad2addf3ddef860a34d51094ad8e1f547afadea37847` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1733866da025a19ee4d49eca2f2c973eb687b796b1745a1d8aed2915d31486ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

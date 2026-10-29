# Verification target: Charpoly Coeff Mat Poly Equiv Symm Map Eval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77dbe2a2d1114175ca441a7dbbf8c154499e1237",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant7a68e2633e600ee24ed0819a3f67125465105311fd01420a2d230c9cd4b09382.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77dbe2a2d1114175ca441a7dbbf8c154499e1237`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant7a68e2633e600ee24ed0819a3f67125465105311fd01420a2d230c9cd4b09382.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variant7a68e2633e600ee24ed0819a3f67125465105311fd01420a2d230c9cd4b09382.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Expand` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Laurent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Nilpotent` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [charmatrix_apply_natDegree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/charmatrix-apply-natdegree.md) | 46 | `result-track:5dd43da190363cccac09c2e4539cf43baf405c963146b129e23d3b2a9a6cb6ff` |
| 2 | `theorem` | [charmatrix_apply_natDegree_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/charmatrix-apply-natdegree-le.md) | 50 | `result-track:fa1ea1792c04b15f74d892c03274a766ca4be09b185d70298ea5314568a1d0a5` |
| 3 | `theorem` | [charpoly_sub_diagonal_degree_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/charpoly-sub-diagonal-degree-lt.md) | 56 | `result-track:2c44880cab304c2c7e5ed3398315efd59954e3fb6da76b86451f92e077a7a55b` |
| 4 | `theorem` | [charpoly_coeff_eq_prod_coeff_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/charpoly-coeff-eq-prod-coeff-of-le.md) | 75 | `result-track:a167d2d1e4117e1966db08da449dce5dce107070b051786d76ffeb720f01f50e` |
| 5 | `theorem` | [det_of_card_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/det-of-card-zero.md) | 82 | `result-track:a48c896ec49b3baa2c81c9e7768de15d5daa54953b65432bb03d5876872bb245` |
| 6 | `theorem` | [charpoly_degree_eq_dim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/charpoly-degree-eq-dim.md) | 88 | `result-track:3d6f5302465ec1b7d52ce4369a10680d01c34e79025bbce1f080072eae235b4d` |
| 7 | `theorem` | [charpoly_natDegree_eq_dim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/charpoly-natdegree-eq-dim.md) | 113 | `result-track:bc9fea34d1ded003e7e934fbf9772edf41d7fa18d7852894e716b4666417c807` |
| 8 | `theorem` | [charpoly_monic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/charpoly-monic.md) | 117 | `result-track:74a885b318f8d505579ce0ce6dd48817011c5026cdc8a2f99e497f0b25a67ac2` |
| 9 | `theorem` | [trace_eq_neg_charpoly_coeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/trace-eq-neg-charpoly-coeff.md) | 138 | `result-track:d24258d923258749f5fce7b5cf4fef6a01bc38a21f921fa03dd02393248ce321` |
| 10 | `theorem` | [matPolyEquiv_symm_map_eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/matpolyequiv-symm-map-eval.md) | 144 | `result-track:496c4910cdc1e980dc076b447b51eb60f921388b8303d4c355d11212b3098ac9` |
| 11 | `theorem` | [matPolyEquiv_eval_eq_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/matpolyequiv-eval-eq-map.md) | 155 | `result-track:369d5fddb05767593fa4f3d55030b986963f1b3446b77a9bdd591be44a779e45` |
| 12 | `theorem` | [matPolyEquiv_eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/matpolyequiv-eval.md) | 160 | `result-track:949635626a86a6db6c6a55d490a82c7e3cfdd27daeade743a6aaafe5d8b5682c` |
| 13 | `theorem` | [eval_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/eval-det.md) | 164 | `result-track:7064825da25b958bd0cd68ca132f0e4595734a02988cca157d2ec83e9ae54dd3` |
| 14 | `theorem` | [det_eq_sign_charpoly_coeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/det-eq-sign-charpoly-coeff.md) | 172 | `result-track:4c97744ccebb9af11999dae200fd334ae2aac263a316ebdad619eb153196af03` |
| 15 | `lemma` | [eval_det_add_X_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/eval-det-add-x-smul.md) | 177 | `result-track:1fa3f2a3515951e516b8fb2916461865e2432817f2dde63abc6fc0c814a5db96` |
| 16 | `lemma` | [derivative_det_one_add_X_smul_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/derivative-det-one-add-x-smul-aux.md) | 183 | `result-track:69657fb387f4f9f759547b2763bf3744a218e5edfac07ecf01af257d1337c158` |
| 17 | `lemma` | [derivative_det_one_add_X_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/derivative-det-one-add-x-smul.md) | 210 | `result-track:91cbcfaf1ad7688b27d2570f03ef8e69848fccc7e9bcc219972480f5b1580719` |
| 18 | `lemma` | [coeff_det_one_add_X_smul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/coeff-det-one-add-x-smul-one.md) | 220 | `result-track:98b833013fc01ce0355ca633af6df685bbec3a72293240d760614af79eee90de` |
| 19 | `lemma` | [det_one_add_X_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/det-one-add-x-smul.md) | 225 | `result-track:c79dbb62f6dc7cd43b3596fb9a46c7fdae231986d7a5009e0a5d500490e5dfa6` |
| 20 | `lemma` | [det_one_add_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/det-one-add-smul.md) | 235 | `result-track:0dbc2a0fd8aad5477f4818ab78a99f48892d8207caaf74167499c57c14a6eb1c` |
| 21 | `theorem` | [matPolyEquiv_eq_X_pow_sub_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/matpolyequiv-eq-x-pow-sub-c.md) | 244 | `result-track:9a98bd6484ce5aaea56ada73030339ad0f2bae81cdceab990ae57376f51fa719` |
| 22 | `theorem` | [aeval_eq_aeval_mod_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/aeval-eq-aeval-mod-charpoly.md) | 260 | `result-track:e60a3f43857818b4ec38521502eddece6f30c70020112c90f0765e8f9b863446` |
| 23 | `theorem` | [pow_eq_aeval_mod_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/pow-eq-aeval-mod-charpoly.md) | 267 | `result-track:b0d627c9124298e80e5403edc6a5f394c6ebc3b0be0080f868ff941a17083d10` |
| 24 | `theorem` | [coeff_charpoly_mem_ideal_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/coeff-charpoly-mem-ideal-pow.md) | 272 | `result-track:8e72c20a5aec2b3b3e21c9830132b425e2506e70c864a01f4b82b2f484e0c4f2` |
| 25 | `def` | [charpolyRev](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/charpolyrev.md) | 300 | `declaration-track:31eb12286c6ad01800a277d8afc888492269eeec408cb32f056a92668e53ea9e` |
| 26 | `lemma` | [reverse_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/reverse-charpoly.md) | 302 | `result-track:3af0e8689b9c84f0a15715dea65ba14759600395b0b9d29a40a0f997d1d3a7df` |
| 27 | `lemma` | [eval_charpolyRev](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/eval-charpolyrev.md) | 324 | `result-track:4ea32402f14aed2c5b5347debb2d6f91cf7d40d95f74b0f6f53222d404919bcd` |
| 28 | `lemma` | [coeff_charpolyRev_eq_neg_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/coeff-charpolyrev-eq-neg-trace.md) | 331 | `result-track:7327c211d7d54d30427abe8f436e44716990c9e18f415487360cde6579fe49a7` |
| 29 | `lemma` | [isUnit_charpolyRev_of_isNilpotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/isunit-charpolyrev-of-isnilpotent.md) | 338 | `result-track:dc844a1fe7b26f4cecfb91d06704b0d7b79ff382e3a93174b1ff2b7a0f5c7844` |
| 30 | `lemma` | [isNilpotent_trace_of_isNilpotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/isnilpotent-trace-of-isnilpotent.md) | 348 | `result-track:ae7cde776c69df04de3c525a4e269bbe0ad5d25a53b577412b969a89126a5658` |
| 31 | `lemma` | [isNilpotent_charpoly_sub_pow_of_isNilpotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffMatPolyEquivSymmMapEval.lean/declarations/isnilpotent-charpoly-sub-pow-of-isnilpotent.md) | 356 | `result-track:052d2797683e1c82edb5d62658214ff34dc6e5cd9c8b9c2f4d5942d91789a85d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d7cf2d8a8cfd411dcee8308c4ec6f57cfbbd145a603158d6651e5ace38e56dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant7a68e2633e600ee24ed0819a3f67125465105311fd01420a2d230c9cd4b09382.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Coeff/Variant7a68e2633e600ee24ed0819a3f67125465105311fd01420a2d230c9cd4b09382.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

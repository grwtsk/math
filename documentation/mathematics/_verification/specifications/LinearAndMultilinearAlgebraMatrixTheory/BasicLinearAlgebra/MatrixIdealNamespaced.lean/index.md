# Verification target: Matrix Ideal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bcfac27d3db6afb924485e69be35aa6c20bdcd1",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bcfac27d3db6afb924485e69be35aa6c20bdcd1`.

Source path: `GRWTSK/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Ideal` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matricesOver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover.md) | 44 | `declaration-track:45deb092b23d4921d865849b090ca2bcb8788bb17af9c7282272700038a0f915` |
| 2 | `theorem` | [mem_matricesOver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/mem-matricesover-source-edition-2.md) | 56 | `result-track:ae8bf6c3a3040c741d9e1d7189b42a0a27d96f316ba73a40de382b994a06c240` |
| 3 | `theorem` | [matricesOver_monotone](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-monotone.md) | 59 | `result-track:811f05bb59045a133100079a44025458ff6ba7f85c46e567631c3409a673fb66` |
| 4 | `theorem` | [matricesOver_strictMono_of_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-strictmono-of-nonempty.md) | 62 | `result-track:da16177874f6e4cbea4c25205f538207467f9972d375bb63f3bc9d4e15c2d617` |
| 5 | `theorem` | [matricesOver_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-bot-source-edition-2.md) | 70 | `result-track:eb6c895781b1f6a0edea9a45d85e568bdd3349524726539110d39df646749825` |
| 6 | `theorem` | [matricesOver_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-top.md) | 78 | `result-track:9d48f0c5120a3ce0c2343e3701f2b56035f4ebb80c37d0001861c86a078464e1` |
| 7 | `theorem` | [single_mem_jacobson_matricesOver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/single-mem-jacobson-matricesover.md) | 92 | `result-track:21eb87a0a60830545f2163b077e62688c9ffbaca1e54544c97456a3850d53ee1` |
| 8 | `theorem` | [matricesOver_jacobson_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-jacobson-le.md) | 114 | `result-track:810c45f6ff6083950fbed07292dbf98c7fcd6a8857accbf7fb0af74d5f87c816` |
| 9 | `def` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matrix.md) | 136 | `declaration-track:abae847020dc012c195db2cd67033cfc0b2db032f2267dc00f0e4989619a7cf9` |
| 10 | `theorem` | [matrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matrix-apply.md) | 146 | `result-track:33bf1637f2ced04f628252667a2fcbc4b30891a65b79a2a669a79fd6cc341c07` |
| 11 | `theorem` | [matrix_apply_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matrix-apply-single.md) | 151 | `result-track:dc7f4cbde7014ba8ed148c2cc71a5866d43a3982a32b09d916e8025bda269fd4` |
| 12 | `theorem` | [matrix_monotone](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matrix-monotone.md) | 162 | `result-track:756afe1c282ba14d5529cf7a7b5e83a6ff7821e7139c09628a12d4f2b1c5ba26` |
| 13 | `theorem` | [matrix_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matrix-injective.md) | 165 | `result-track:3918a53bb41ecada9f112a1ab5ac06bc92d92789fe8970dce05acb38eb8f18f8` |
| 14 | `theorem` | [matrix_strictMono_of_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matrix-strictmono-of-nonempty.md) | 170 | `result-track:9af76a8699295ce19944b94eec3e8da73e18c86f1521f7d1a2a7bd0c2d425ef8` |
| 15 | `theorem` | [matrix_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matrix-bot.md) | 175 | `result-track:eb05d96b7c6aeef79b84a2d543a45b28a38a7fcd1291773ad5ee23cdf94b3096` |
| 16 | `theorem` | [matrix_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matrix-top.md) | 179 | `result-track:1afcaa043d3ad979d62372b4e62e0cf65d201db595fc9d3a199b7524146afeda` |
| 17 | `def` | [ofMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/ofmatrix.md) | 187 | `declaration-track:374e537782e7b33d0ea819205a38025854191d6f9b56540df7971299cdf22486` |
| 18 | `theorem` | [ofMatrix_rel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/ofmatrix-rel.md) | 196 | `result-track:06b7e77dd0b95c70db848e053b06f8e08a88d04627d8a221bb44aa00950f2212` |
| 19 | `theorem` | [ofMatrix_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/ofmatrix-matrix.md) | 200 | `result-track:9bfc3b588be714af216e68c85f9cd992453191fa0ce1379989a50402214cb418` |
| 20 | `theorem` | [matrix_ofMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matrix-ofmatrix.md) | 221 | `result-track:087487e46ff22ff59f5038371d901ad9f35e9f367f3a5124c6834cdff39f576b` |
| 21 | `theorem` | [ofMatrix_rel'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/ofmatrix-rel-source-edition-2.md) | 233 | `result-track:50c8a8ab2a6d8446a28caafac1c351cc12dba049922273606c9f18565e103f24` |
| 22 | `theorem` | [coe_ofMatrix_eq_relationMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/coe-ofmatrix-eq-relationmap.md) | 238 | `result-track:d1d047631e58750afa47e55f2e9de0a439a5562845b50c0b225244055bdaf21f` |
| 23 | `def` | [matricesOver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-source-edition-2.md) | 262 | `declaration-track:783901f88c2bb008ab1ee8ae55fc4385be924f12d453e3fdeb96cb611bdeeda9` |
| 24 | `lemma` | [mem_matricesOver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/mem-matricesover.md) | 266 | `result-track:756832c6ed9e555cc158d7cc5f2c82b4caeefcc18d1e31666d0db15bd2274c64` |
| 25 | `theorem` | [matricesOver_monotone](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-monotone-source-edition-2.md) | 269 | `result-track:b3107d723fa2bdc9d18064dc99757efcd1b2b8163e2607b58f09fee441ef1739` |
| 26 | `theorem` | [matricesOver_strictMono_of_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-strictmono-of-nonempty-source-edition-2.md) | 272 | `result-track:ffa36855cb194d67c76b9b5d38992e8493ccfba52db76e8af36b08924aa27ec5` |
| 27 | `theorem` | [matricesOver_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-bot.md) | 278 | `result-track:44e0c41933043cfa96248b562c4b5b7ce275064f2be70c342eac6b63546aa5b5` |
| 28 | `theorem` | [matricesOver_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-top-source-edition-2.md) | 282 | `result-track:bb16db04b009e5c5f2045ff823019f113b6d7ff8b655f716551b67c79e746d5d` |
| 29 | `def` | [equivMatricesOver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/equivmatricesover.md) | 298 | `declaration-track:b1396700395d93b563bacf3632595d338cb2e98b1e45ce1571e8006cb18c03a3` |
| 30 | `theorem` | [coe_equivMatricesOver_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/coe-equivmatricesover-symm-apply.md) | 305 | `result-track:29c5316663e553e0449d71d4f8e7e0748a2697229bca681f769aa0779ea6452d` |
| 31 | `def` | [orderIsoMatricesOver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/orderisomatricesover.md) | 321 | `declaration-track:1cf1db0dc3f239217ae1f8bf398e7580d1b068a2100f964021b16290439ca312` |
| 32 | `theorem` | [asIdeal_matricesOver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/asideal-matricesover.md) | 337 | `result-track:61c91ccc0bcc94286bfa5bc87d519ccc6ae823c8ce1b8afb161947f9dcfad990` |
| 33 | `lemma` | [jacobson_matricesOver_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/jacobson-matricesover-le.md) | 352 | `result-track:b5b32986ac84a32b49ca7cc12bb1ffc5ad46f884874e1e84a2538352770166c4` |
| 34 | `theorem` | [jacobson_matricesOver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/jacobson-matricesover.md) | 368 | `result-track:16849a7dd71fe6d5b82733fe05fd03e742fd4c7ec2cfdf2ded41e834487c86ba` |
| 35 | `theorem` | [matricesOver_jacobson_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIdealNamespaced.lean/declarations/matricesover-jacobson-bot.md) | 375 | `result-track:3bb6497cc3023f96e4271b13116eacd854f48c4140f73fd9fbae958eaa2bbf08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5849244d987123b8f9169c1a3c73511886e0dc64225ec06f1fc5d4f7215d9962 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean","GRWTSK/_verification/specifications/Algebra/Ideal/Variantf4d125e4102bd960216adb786c4de1de040bc7b54ca5b34405f6851eab71bdcb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

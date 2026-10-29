# Verification target: Braid Quotient Attempt07 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5812ac06c1579a94e76296ad687c3c9939b4d94d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5812ac06c1579a94e76296ad687c3c9939b4d94d`.

Source path: `GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/braidrelator.md) | 23 | `declaration-track:3da3e34e8c62bb52c5666127cac5798962e18886283f9facb9c08ff357f1f861` |
| 2 | `def` | [braidRelations](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/braidrelations.md) | 27 | `declaration-track:754d92e439054f3f7b38a3c45b1070d7831323396809b9578f97c579d35ca438` |
| 3 | `abbrev` | [B3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/b3.md) | 29 | `declaration-track:7e33e4227bdddbf975176716de0380fa48f19f745fa36decb6539bc052c1e018` |
| 4 | `def` | [sigma1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/sigma1.md) | 31 | `declaration-track:e23c72edb9ff9f96dc88a4dafe485b11cdb336aac410168ef1e87437fc47db4b` |
| 5 | `def` | [sigma2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/sigma2.md) | 33 | `declaration-track:39b5cacb42483945d870d66f68be92a185e0eed1b24a214af887d16bffcf7e2f` |
| 6 | `theorem` | [braid_relation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/braid-relation.md) | 35 | `result-track:3c5885cb8eb3c7204f7d9410723c56f5a5f01a6f8e7cc233c58a54ae98fcfc39` |
| 7 | `def` | [halfTwist](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/halftwist.md) | 44 | `declaration-track:2343cd2d1ef8a9e8d403d052141a767478b6e057982a0e24431ed17ee0e7acd0` |
| 8 | `def` | [fullTwist](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/fulltwist.md) | 47 | `declaration-track:d4f9f52b63815cdb45aa9b39b64d35048adeee2cea42300a533ecd3f86b8f0d0` |
| 9 | `theorem` | [halfTwist_swap_sigma1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/halftwist-swap-sigma1.md) | 49 | `result-track:545ddfdbb627cebe9dbb9ad40e11158523fd3c97cce131b417fbb9d3cf19b52c` |
| 10 | `theorem` | [halfTwist_swap_sigma2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/halftwist-swap-sigma2.md) | 56 | `result-track:3d7ad7425201c81d9f4d92997edc58bf2655270fa074b823575188a5862d5529` |
| 11 | `theorem` | [halfTwist_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/halftwist-sq.md) | 64 | `result-track:a84db3751f0c4a05599a358e3afd31cc187eebc7fbefa07e2144914e8568c56f` |
| 12 | `theorem` | [fullTwist_commute_sigma1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/fulltwist-commute-sigma1.md) | 73 | `result-track:86e44b3aaeaddb2ef9f94a197247b04ceddfbe04f1a2959dfc869b96ea84bbe9` |
| 13 | `theorem` | [fullTwist_commute_sigma2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/fulltwist-commute-sigma2.md) | 82 | `result-track:a5eb06ecfb34cfba3d5835523a779d0e053c93c3c11d506db37ae5fe71d7341c` |
| 14 | `theorem` | [fullTwist_central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/fulltwist-central.md) | 91 | `result-track:b61c625663650355daea24293f7653b506ca9ab332dd943a05906e2eb88c8557` |
| 15 | `def` | [upperGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/uppergenerator.md) | 100 | `declaration-track:a6e99a0e5ef8b36dad069fe1624c7ca7b9a08636e63286de17f92a4e932207a4` |
| 16 | `def` | [lowerGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/lowergenerator.md) | 103 | `declaration-track:4074389be33c5e04968e2fc342f2067e20be0ecdad870008aebfcf1ea75810c8` |
| 17 | `theorem` | [matrix_braid_relation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/matrix-braid-relation.md) | 106 | `result-track:9e57e1779eb8119b6c63739993ddc6a42a73d3355066133a45625f3ba60b230a` |
| 18 | `def` | [generatorMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/generatormatrix.md) | 116 | `declaration-track:363cd2c4c5897bc7d5a386ca9d0dd6bfe8c78f45a0a59eafac5afaed8dcfb951` |
| 19 | `theorem` | [matrix_relator_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/matrix-relator-identity.md) | 118 | `result-track:51bf91e609e61f2611d5365f654b4ed87ed52c7c28b6c6c007e33e88ac29bf81` |
| 20 | `def` | [matrixRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/matrixrepresentation.md) | 128 | `declaration-track:dae37bb799a7d5966cd12767081b18f2a708395e913cbfa50f50d993f249cbc3` |
| 21 | `theorem` | [matrixRepresentation_sigma1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/matrixrepresentation-sigma1.md) | 131 | `result-track:2e7e764f2b1a19fcedd55fa1184e365ef5ad618c987e7688abdf2c1b5e8d160e` |
| 22 | `theorem` | [matrixRepresentation_sigma2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/matrixrepresentation-sigma2.md) | 134 | `result-track:915fdbccde3a2a54c5ffe8d689d8e6c388d58b863db44e152cba5bbfcc0e267b` |
| 23 | `def` | [generatorExponent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/generatorexponent.md) | 138 | `declaration-track:19e1dd71418f07102226758afdffb60a6170d1317dbc375019bc99333af78f61` |
| 24 | `theorem` | [exponent_relator_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/exponent-relator-identity.md) | 140 | `result-track:11d7c0223186ed212167ad42f35212b49b4a2040ccd8e084c50484cc33a59974` |
| 25 | `def` | [exponentHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/exponenthom.md) | 148 | `declaration-track:aac70651e12c36d62fba2b635c5235f4dc95d1669e1fb2b2b63f670420e9a180` |
| 26 | `theorem` | [exponentHom_sigma1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/exponenthom-sigma1.md) | 151 | `result-track:be5d086ea929b39c8274ed1bfb432fb1e4c8f71dc321350cefa539b4b4b878df` |
| 27 | `theorem` | [exponentHom_sigma2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/exponenthom-sigma2.md) | 154 | `result-track:cda18b6ba8fa71436438ce5c3cd3243df7830df78a6d96299c5aa482ded16093` |
| 28 | `def` | [lostBraid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/lostbraid.md) | 158 | `declaration-track:a10c8fc5e573ff9a39da8126431fcd4537ac7a738e8d1c9da9433b350f3d60d7` |
| 29 | `theorem` | [lostBraid_eq_fullTwist_square](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/lostbraid-eq-fulltwist-square.md) | 160 | `result-track:692f727fc751f1c88108bfca517eb52582e528d99fc51e625f83906b4d6c2c87` |
| 30 | `theorem` | [lostBraid_central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/lostbraid-central.md) | 164 | `result-track:b9ef66725996d9c853aba2a724f8c0c2c8c5e24006622ac8adcc57bcf0c5c868` |
| 31 | `theorem` | [generator_product_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/generator-product-matrix.md) | 173 | `result-track:6de21a39623a090c2227cb71e7bfeeb5784499514cad32a7f686fb8e0abd8f77` |
| 32 | `theorem` | [generator_product_cube_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/generator-product-cube-matrix.md) | 182 | `result-track:d1ed0d8b88fc5cce3c6c4a9fb394f2315a92451fdb88ac5bd1339e91951e9111` |
| 33 | `theorem` | [fullTwist_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/fulltwist-matrix.md) | 190 | `result-track:4bbf719af35041d2e934a37fdf43560180691d84321fee791eda5dce9769fd8d` |
| 34 | `theorem` | [fullTwist_matrix_ne_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/fulltwist-matrix-ne-one.md) | 195 | `result-track:2e2dc1ad4aa91ad5253f72f622eef41700891be20902f1a92aa4a6c21688a2b9` |
| 35 | `theorem` | [generator_product_sixth](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/generator-product-sixth.md) | 202 | `result-track:2ab4fbe75c50390d25528479d376361bdec2c12801e7fe64d14525dd3d412ecb` |
| 36 | `theorem` | [lostBraid_matrix_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/lostbraid-matrix-identity.md) | 210 | `result-track:646d0ca11b659fb88a3b34f6ce6c0ecc19fa61e31c29250b5706f48c40da36be` |
| 37 | `theorem` | [lostBraid_exponent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/lostbraid-exponent.md) | 214 | `result-track:58ddf3424680058b78352b136f95c4389265afed1056a0583c97e091a82d5cc0` |
| 38 | `theorem` | [lostBraid_ne_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/lostbraid-ne-one.md) | 217 | `result-track:69c005817fc4edbdde551b9e3e27d77abe44e393a7fe7a7c9e7c813bc4111f96` |
| 39 | `theorem` | [matrixRepresentation_not_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/matrixrepresentation-not-injective.md) | 223 | `result-track:1aaa26df0a96bac0ecda1df0d728508ce178ed41552455944a5707143db0f1a0` |
| 40 | `theorem` | [beta_mul_lostBraid_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/beta-mul-lostbraid-ne.md) | 227 | `result-track:6c8777220210a9542b602fa2989f95ad047fd2d4ed0347c003d07d564f6f3876` |
| 41 | `def` | [FactorsThrough](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/factorsthrough.md) | 232 | `declaration-track:e300b20763c76299d25cc8d1bd114137d92f872ff227a59c22e2635bfe575518` |
| 42 | `theorem` | [factored_kernel_blindness](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/factored-kernel-blindness.md) | 235 | `result-track:ad7bcce0ef0ca8aa7474ea1b442d6bf46c4dc671b8057c2278151b42973ac9fa` |
| 43 | `theorem` | [factored_lostBraid_blindness](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/factored-lostbraid-blindness.md) | 241 | `result-track:685f65ed03a80a33f5281818f2974c5bf824f4bad53652076bf0915daf9f9725` |
| 44 | `theorem` | [factored_not_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BraidQuotientAttempt07Namespaced.lean/declarations/factored-not-injective.md) | 245 | `result-track:68982e918c3ebc325d011cbac12c65c75ce5a61081f62bf043c16ae6c8bb9f17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3fae96db2b01b584df6f8aff3800b144d9f435eed6aa89dead2113567cb21f8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

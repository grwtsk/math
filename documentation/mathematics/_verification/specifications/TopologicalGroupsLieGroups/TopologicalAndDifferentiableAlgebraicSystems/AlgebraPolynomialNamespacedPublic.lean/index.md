# Verification target: Algebra Polynomial Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d280d3877c59ce86b662c08b43fa555c96ed4922",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d280d3877c59ce86b662c08b43fa555c96ed4922`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_eval₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/continuous-eval.md) | 59 | `result-track:2034c22f94c5a350b3569625061801aaed73200f26c8635fa22757d274e3a488` |
| 2 | `theorem` | [continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/continuous.md) | 65 | `result-track:52711972af462d52c290c8a9254467f67fea0b1fcfda2af825005e565c37a230` |
| 3 | `theorem` | [continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/continuousat.md) | 69 | `result-track:ec30cdf9953b64dbc47388fdc5b10f16ec53399dbd10e17d1c022e80bee33fcf` |
| 4 | `theorem` | [continuousWithinAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/continuouswithinat.md) | 73 | `result-track:0135af652436b41f638dbcb390a69f897bfbd88fcad9b3b855ba4e99fbbaf059` |
| 5 | `theorem` | [continuousOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/continuouson.md) | 77 | `result-track:8b8d83ecb24898141a84a17958e49751d4af8c7b2a5e65c7f74697efc7b77a36` |
| 6 | `theorem` | [continuous_aeval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/continuous-aeval.md) | 88 | `result-track:30e1c6538ea8eda189761e5b2a7d97cc743f7749527c09a30d3ce7f1fec4d1d3` |
| 7 | `theorem` | [continuousAt_aeval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/continuousat-aeval.md) | 92 | `result-track:78b38c022ef1d62925dd3f88a4233420c09a9765a3d912a2e513a981449b914f` |
| 8 | `theorem` | [continuousWithinAt_aeval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/continuouswithinat-aeval.md) | 96 | `result-track:46b621d221e5f17395d9c0324eb498fa8e30edd058cd0aa18a0b721445459afe` |
| 9 | `theorem` | [continuousOn_aeval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/continuouson-aeval.md) | 101 | `result-track:a45fd7451e539cc0649819c4dded1369749bc6e26d31c636babc594d5400fb0a` |
| 10 | `theorem` | [tendsto_abv_eval₂_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/tendsto-abv-eval-attop.md) | 106 | `result-track:4e552d7cba48f117049421497d4791398a47a13a32b6e438ccc11e309c4b7a59` |
| 11 | `theorem` | [tendsto_abv_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/tendsto-abv-attop.md) | 124 | `result-track:359a95849a3a62f1871629674d4ab2d077d5e1ef2231c79329b4566450bf1f78` |
| 12 | `theorem` | [tendsto_abv_aeval_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/tendsto-abv-aeval-attop.md) | 131 | `result-track:63d1a2e79d7096dcf55789b215e65a89630634ce04f0697b2146fdf183d7b914` |
| 13 | `theorem` | [tendsto_norm_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/tendsto-norm-attop.md) | 140 | `result-track:36a1d89ad5c00fb3213a9653ecc9727b8ae1b2db0621dcc5043b1ec31006c62d` |
| 14 | `theorem` | [exists_forall_norm_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/exists-forall-norm-le.md) | 144 | `result-track:9dc15df3656bf997337d0d6c7453b8ed7b5de32ed3e10a615dac1ca873790f24` |
| 15 | `theorem` | [isProperMap_eval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/ispropermap-eval.md) | 150 | `result-track:2448780b20290997551ddc1f0ab6cd61f1c292b7b66a25078b543a45cfc48210` |
| 16 | `theorem` | [isClosedMap_eval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/isclosedmap-eval.md) | 155 | `result-track:546603c872dcc673e7cfb6db8dfe727feb2305357cd8acb47090313689f4e5d4` |
| 17 | `theorem` | [Algebra Polynomial Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/isclosedmap-pow.md) | 161 | `result-track:316a632a88c3bc8bfba0cd7ae5fe0536938243bc739feced5a5b44e92a0e7a4d` |
| 18 | `lemma` | [eventually_eval_ne_zero_codiscrete](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/eventually-eval-ne-zero-codiscrete.md) | 171 | `result-track:704e4059dd1a56894928ebcb15161cd6ba8961609217b7a72bfe79b7f58893cf` |
| 19 | `theorem` | [eq_one_of_roots_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/eq-one-of-roots-le.md) | 178 | `result-track:c5a545ff424817624902a1ee144d5bc9040c18fa7e3b94392b7c025f5de0ef7f` |
| 20 | `theorem` | [coeff_le_of_roots_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/coeff-le-of-roots-le.md) | 186 | `result-track:47767a3d899bb3f39ffa80986069df36304ae96d16cdc8341af95cd0f45e13a8` |
| 21 | `theorem` | [coeff_bdd_of_roots_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespacedPublic.lean/declarations/coeff-bdd-of-roots-le.md) | 215 | `result-track:e08465dc743910755b1dc0295da642dde72c66370ca45498e147e4f014c31629` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f5255dc8ceed5eb1c1705f710a30b5b1bd2e3bbb6296479e9b615754c75e765 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Polynomial/Variant1ab5ec4707841af0c5de16b8aabaf1d6a0347036f7c3ab99c8864f95cb9fb2a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

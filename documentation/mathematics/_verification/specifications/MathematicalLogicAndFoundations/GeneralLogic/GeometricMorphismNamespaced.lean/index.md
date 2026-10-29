# Verification target: Geometric Morphism Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38eff93aab6df7d073535f3f5e1fd31930145ea1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant79b7ea022bd5b761ff16379c7eb8859f8ef2e8b62e6745ed77fd492bff78a14f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38eff93aab6df7d073535f3f5e1fd31930145ea1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant79b7ea022bd5b761ff16379c7eb8859f8ef2e8b62e6745ed77fd492bff78a14f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant79b7ea022bd5b761ff16379c7eb8859f8ef2e8b62e6745ed77fd492bff78a14f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Logic.Mathlib.Knowledge` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeometricMorphism](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/geometricmorphism.md) | 16 | `declaration-track:a3e6dca9823b28e0852aaf1b8cd3c5181040662968695a2ce43728f7d0295bf7` |
| 2 | `theorem` | [geometric_morphism_has_left_exact_inverse_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/geometric-morphism-has-left-exact-inverse-image.md) | 27 | `result-track:01dd8318ed636fc17ef4172aab59f356c8f5d9e25f4801c084ca2880f91703a7` |
| 3 | `def` | [geometric_morphism_direct_image_is_right_adjoint](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/geometric-morphism-direct-image-is-right-adjoint.md) | 34 | `declaration-track:97f11c82ccf89dc348015bbcc8583b47b7d97c0d4154642981ea18b153cc5924` |
| 4 | `structure` | [UnitCounitBridge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/unitcounitbridge.md) | 42 | `declaration-track:12e585f8943db56e6762106ec68c5b44154ca5ccf6ead303328ad7b853c4ce6c` |
| 5 | `def` | [UnitCounitBridge.toAdjunction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/unitcounitbridge-toadjunction.md) | 58 | `declaration-track:f66db555370bb694bb73763105295d672ea2abd12325107363d064b1930f83b4` |
| 6 | `structure` | [KnowledgeSitesAdjunction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/knowledgesitesadjunction.md) | 72 | `declaration-track:4801d864aa7aa81561fe1f45b7244297e853c719b7679f85dede75861bf02801` |
| 7 | `def` | [KnowledgeSitesAdjunction.adjunction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/knowledgesitesadjunction-adjunction.md) | 86 | `declaration-track:17544e86e1af474ab86b93912805966b6655dc5d62b2e3922b41b379db9bad69` |
| 8 | `def` | [KnowledgeSitesAdjunction.direct_image_is_right_adjoint](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/knowledgesitesadjunction-direct-image-is-right-adjoint.md) | 94 | `declaration-track:d23271f847c38f863aa8dfb09e84e5e8657e36ce815d13abd5abfb43edd21183` |
| 9 | `theorem` | [KnowledgeSitesAdjunction.inverse_image_left_exact](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/knowledgesitesadjunction-inverse-image-left-exact.md) | 103 | `result-track:c7c4c6f6b8fafbeefc7454bbe0ea98347af602e730361adc59d83462f64426b9` |
| 10 | `structure` | [SheafTruth](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/sheaftruth.md) | 113 | `declaration-track:850f66eaf9a0a8ad0c95496796658c5426e6c93a11b72b85e2af308ed298e7bb` |
| 11 | `def` | [SheafTruth.pullback](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/sheaftruth-pullback.md) | 121 | `declaration-track:6c7e20eb8c97296bd7de8c824462fe291cce81307ccb9afde1062f6f30e7159e` |
| 12 | `theorem` | [KnowledgeSitesAdjunction.pullback_truth_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GeometricMorphismNamespaced.lean/declarations/knowledgesitesadjunction-pullback-truth-preserved.md) | 132 | `result-track:0e81d4ce560a8a45dc0ba9691957eb286bcba86abff1353edfb1abc1d05b7199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=214767e14fcb53f3187c773ccf7d04a5728b87846027f6dec8d240002e44c176 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant79b7ea022bd5b761ff16379c7eb8859f8ef2e8b62e6745ed77fd492bff78a14f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant79b7ea022bd5b761ff16379c7eb8859f8ef2e8b62e6745ed77fd492bff78a14f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Freyd Mitchell Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65be47ea31faff860fed55a01b3534a4e51c1acc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreydMitchell/Variantb2a26d7286698258af4d5200fd343c28ace1ab5eb102531376b4b1f2a666e4ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65be47ea31faff860fed55a01b3534a4e51c1acc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreydMitchell/Variantb2a26d7286698258af4d5200fd343c28ace1ab5eb102531376b4b1f2a666e4ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FreydMitchell/Variantb2a26d7286698258af4d5200fd343c28ace1ab5eb102531376b4b1f2a666e4ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.ModuleEmbedding.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Indization` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/instance-source-edition-3.md) | 94 | `declaration-track:12a52b845e0850560d69b8e332f5246c841d4abc0f7fc897d9066a58085ae3fa` |
| 2 | `def` | [EmbeddingRing](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/embeddingring.md) | 101 | `declaration-track:b3211d7bcb53ba28b41f532cf4c6afb4e65858e349519249fb5d9c26c300fc0c` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/instance-source-edition-6.md) | 105 | `declaration-track:793980aff1ecd3580288fe90077d96a13adbdbfaa8864d7aab66e074a53a952d` |
| 4 | `def` | [F](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/f.md) | 111 | `declaration-track:1f2d32ddd3bd942fa32552cbddfbfb9d9266cc651065efc2b148bb70744a8d83` |
| 5 | `def` | [G](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/g.md) | 115 | `declaration-track:2d51205e22e2a4ef75c18ac0bcae07d634fe4c5ea388df4df0a6899309f1241f` |
| 6 | `def` | [H](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/h.md) | 119 | `declaration-track:f2ca5173173822922ed1f6f3d0ab9aaada4bf0cba6c8a4293c08be7f8b51e7e8` |
| 7 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/functor.md) | 128 | `declaration-track:175ea5a67065cd1e76b3c5634baec53df1d976accc93aba08bdc2cf1081319da` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/instance-source-edition-4.md) | 131 | `declaration-track:1d3d3e29feafcf369f3957345f7a4cece7135f9485a8f7684aa5bced4c5e1e88` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/instance-source-edition-5.md) | 138 | `declaration-track:36f60e710b48b2567a9b744fef425cdfde23c59c9f9a35258ce4cfc0f7a3e02b` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/instance.md) | 145 | `declaration-track:00f4a9f63f82f49ba98d34b7d2696d90c97214fa6a2bce33d96b92ec98c72ec1` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/instance-source-edition-2.md) | 153 | `declaration-track:02fb6b83e32163c628a70488dd495ed06b053b9476d545c293934d320b2524c9` |
| 12 | `theorem` | [freyd_mitchell](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/FreydMitchellNamespaced.lean/declarations/freyd-mitchell.md) | 166 | `result-track:04f819ef0248c42fe63abca6eb3d26b20b6f7b16adcf694d1f8702b45125b227` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c329dd958386e77ca21d2ed1f8c83acdef41e2ee7e28693600c80d846590bf0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreydMitchell/Variantb2a26d7286698258af4d5200fd343c28ace1ab5eb102531376b4b1f2a666e4ab.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FreydMitchell/Variantb2a26d7286698258af4d5200fd343c28ace1ab5eb102531376b4b1f2a666e4ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

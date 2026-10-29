# Verification target: Monoidal Arrow Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bc065af18613697e27979ab4b353f8c5946ebb0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant926c636720e686545d236b3b538e3fe2d714d29132732963c37820c37bc5d641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bc065af18613697e27979ab4b353f8c5946ebb0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant926c636720e686545d236b3b538e3fe2d714d29132732963c37820c37bc5d641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant926c636720e686545d236b3b538e3fe2d714d29132732963c37820c37bc5d641.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/instance.md) | 50 | `declaration-track:1b2e18193b587e6ed12232abac2ad1fd5cc1d7bb5641f438faf6cf9539c5e668` |
| 2 | `lemma` | [tensorHom_comp_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/tensorhom-comp-tensorhom.md) | 65 | `result-track:02f5ce53288623e381a31459dd1dcf8a0c2e025bb1bbc936802b589a94357775` |
| 3 | `lemma` | [associator_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/associator-naturality.md) | 73 | `result-track:f8378b95341cb5395686f29174ff74a79a6465bd09113888833f32855e83aa9f` |
| 4 | `lemma` | [leftUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/leftunitor-naturality.md) | 94 | `result-track:ad39e14830fbd413bb4e7d13e0aa3a2b363a88d1b78f26b36e4602b9efb79188` |
| 5 | `lemma` | [rightUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/rightunitor-naturality.md) | 101 | `result-track:69f3b92527d6fdd43a7d6b275d02b6e3eb638c17ae66213fd4ef6163a0761c2d` |
| 6 | `lemma` | [pentagon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/pentagon.md) | 108 | `result-track:417c03bfabfc1e1d1f3c3757e8d782a8f3ec594b9b66b44d044283e539f6af4f` |
| 7 | `lemma` | [triangle](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/triangle.md) | 118 | `result-track:3e0e7df4b0274ce6446126ecc9c668fb85f4570e9a8296c749aa3418537f4c83` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 128 | `declaration-track:2c4df8901a6d7ed0ddb2694837b77e594197d37270591ea09776dc85464384ae` |
| 9 | `lemma` | [hexagon_forward](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/hexagon-forward.md) | 138 | `result-track:275b6655300641e79c49fe92cc11c8e6e6de664b4649d322689d882e1deeca94` |
| 10 | `lemma` | [hexagon_reverse](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/hexagon-reverse.md) | 146 | `result-track:688a493291d897997d8c67c9293d9b5331981b13316f0120814b8480e5371d08` |
| 11 | `instance` | [braidedCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/braidedcategory.md) | 156 | `declaration-track:676f97d8c3c264fa3884b713bc7a244452d50baaff7129c320b91db59f3c2ff0` |
| 12 | `instance` | [symmetricCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/symmetriccategory.md) | 165 | `declaration-track:3839897014919059bfbb1a38b57b26f7f50ebd2fdee6cdb4212d510a0cab455c` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalArrowNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 168 | `declaration-track:4f80b08a54ee374315cf80f1fe469a5745ed238ee3a5716ec30374171dcb24f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbb5d5b53438dc86c75c4fb5c56aff79c6e092d34307683068d3f7407ea5cc86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant926c636720e686545d236b3b538e3fe2d714d29132732963c37820c37bc5d641.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant926c636720e686545d236b3b538e3fe2d714d29132732963c37820c37bc5d641.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

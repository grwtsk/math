# Verification target: Concrete Category Forget Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b04becac2393c1831d27df0b0f7f6842d1449961",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b04becac2393c1831d27df0b0f7f6842d1449961`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean.json)

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
| 1 | `abbrev` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/forget.md) | 56 | `declaration-track:25742357a9502d7afec092a0dac5436b0c7063112eb4addc7036f13d5a1b4385` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/instance.md) | 60 | `declaration-track:98af5f13f8f6f56bfeddc30471b65e805c005766b7ad67196e852bbd0482c1a0` |
| 3 | `lemma` | [ConcreteCategory.forget_map_eq_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/concretecategory-forget-map-eq-ofhom.md) | 66 | `result-track:9ce883d1a96470f49d8f489d590d1e50d201de74508b5bba89624f865b88544b` |
| 4 | `theorem` | [forget_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/forget-obj.md) | 73 | `result-track:448fb390d3a2e1605680b958db3aff95cab037ac911e434d653353afcccd919b` |
| 5 | `theorem` | [congr_fun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/congr-fun.md) | 78 | `result-track:2f6b4334adfbdda2850a20e7c6922ab808769dc7bae2f1dd85f0712094dca367` |
| 6 | `theorem` | [congr_arg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/congr-arg.md) | 84 | `result-track:33f309290f2a558106078dc6a995441bbeb1a523b964dc6a5766f875ff2022b4` |
| 7 | `class` | [HasForget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/hasforget.md) | 96 | `declaration-track:dc3b94d269c8e034f7d8d9180715faae590e98739a01df7703680a426cf7e40b` |
| 8 | `abbrev` | [forget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/forget-source-edition-2.md) | 104 | `declaration-track:2721fd3e491e70e17bcd20b3b7f25fbce9388d59c3c200125be25d90d2a96896` |
| 9 | `lemma` | [forget₂_comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/forget-comp-apply.md) | 109 | `result-track:216a340f7ed92745360410c904f82bca67697f23e428be895c08f3398f3f3839` |
| 10 | `instance` | [forget₂_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/forget-faithful.md) | 114 | `declaration-track:1a52e1e1dbddaa3c0a5f73f3702772b3af519ef76a8b0354649055e0bd7d2ee5` |
| 11 | `instance` | [InducedCategory.hasForget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/inducedcategory-hasforget.md) | 117 | `declaration-track:68b8bf4c0ccec59054f690f384e6ee93e52bba92c019e099d9cf4dba20ed8673` |
| 12 | `instance` | [ObjectProperty.FullSubcategory.hasForget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/objectproperty-fullsubcategory-hasforget.md) | 121 | `declaration-track:0e592b95883ce716399af51e6e23ff1cbf592a39de057a81626a2819b6bd4143` |
| 13 | `def` | [HasForget₂.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/hasforget-mk.md) | 133 | `declaration-track:6bf157eef11aa1beb5841ce9be12ad7eb8c25b3934efcea79085bd7c3dec86d0` |
| 14 | `def` | [HasForget₂.trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/hasforget-trans.md) | 144 | `declaration-track:2bd076cc494827ffb33a8b6da2488b44069edf05b7590bd71e6549b1f82bcf15` |
| 15 | `lemma` | [ConcreteCategory.forget₂_comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/concretecategory-forget-comp-apply.md) | 153 | `result-track:cb8eb02af6a2d2ae393651cacb9c9f845b4cb5db0c86181d400358e82bf2d0f1` |
| 16 | `instance` | [hom_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConcreteCategoryForgetNamespacedPublic.lean/declarations/hom-isiso.md) | 159 | `declaration-track:944d30d2076668297a0113db3125bd864145df90f6bb64e1f29e7947c8e68eef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce4e1e0bf6cbe65d5dba8dcdfa253126a7925ee10d700694858b312da467f8dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

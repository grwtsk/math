# Verification target: Induced Bicategory Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b34561621948dd40d86e1f11c73747e6bece25a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantf9c4e124766375d342cce6577724583abb6804ec5f23b9e0f4ae08af01b6b6d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b34561621948dd40d86e1f11c73747e6bece25a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantf9c4e124766375d342cce6577724583abb6804ec5f23b9e0f4ae08af01b6b6d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantf9c4e124766375d342cce6577724583abb6804ec5f23b9e0f4ae08af01b6b6d7.lean.json)

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
| 1 | `def` | [InducedBicategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/inducedbicategory.md) | 39 | `declaration-track:c6d60b6302a009104deacf963494d75ebdb39200840e45cc0af99e03c90a0f6d` |
| 2 | `instance` | [hasCoeToSort](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/hascoetosort.md) | 46 | `declaration-track:ad5b034f4f746a23f11b6853955582f9c3628b2bcda518232a9559a704f6629b` |
| 3 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/hom-source-edition-2.md) | 53 | `declaration-track:f6c25b88c7a487d6a778f4d832b041b3f931a98d5d86cf3ab14dfc6dff8a2b68` |
| 4 | `instance` | [categoryStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/categorystruct.md) | 59 | `declaration-track:3c4680a481e340246ece73556bfe50405c1b868c55602c951922b8387298a5f6` |
| 5 | `abbrev` | [mkHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/mkhom-source-edition-2.md) | 65 | `declaration-track:9efe8e5a3d46dd12c03a281fba1e615acd1cf0f26a1c2114dc17e720873e1f0a` |
| 6 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/hom-ext-source-edition-2.md) | 69 | `result-track:0fdf71584873d877e2a8e965a97d2ad76496f06c0addfd2974cf731c3502450c` |
| 7 | `structure` | [Hom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/hom.md) | 77 | `declaration-track:df9760fe341b49e5618b0e90f365053fbbba35e133ed157cb191f23cb8cb1bd8` |
| 8 | `instance` | [Hom.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/hom-category.md) | 82 | `declaration-track:e1c4e724c91cca49665d93236c2889461a76f299e03a51a8d5c59e51d23fe071` |
| 9 | `lemma` | [hom₂_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/hom-ext.md) | 88 | `result-track:0563c0644a3e31398093d48617a74281808edc874dbca0b988d0b0a9b625f606` |
| 10 | `abbrev` | [mkHom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/mkhom.md) | 94 | `declaration-track:2c4dbaa8d345462ae74055026b35c7588b594a2d7348b22eb07bc408b8a586c0` |
| 11 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/isomk.md) | 99 | `declaration-track:3ef8fb4151294e44a1d9031e3f2331b6bf5de8dae958a2452f8d210fcbb23b81` |
| 12 | `instance` | [bicategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/bicategory.md) | 104 | `declaration-track:a882a71239b87553b7299819ce6dd740bdaeced956365c3e985d5d86d94085c7` |
| 13 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/forget.md) | 120 | `declaration-track:e8b45035dfe7a8786ff2ef227265e4e1ada874321a49f6b44033f42bf35331b7` |
| 14 | `lemma` | [eqToHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/eqtohom-hom.md) | 131 | `result-track:ff05c0bf20b2d06311ae132aad14407f6b975eb26418cce85f10980f8281a13e` |
| 15 | `lemma` | [mkHom_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/mkhom-eqtohom.md) | 136 | `result-track:bc23e257576db03fc477e0f2260010cf93a81e8f8fb8382b197ce529a30d7aad` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedBicategoryPublic.lean/declarations/instance.md) | 145 | `declaration-track:31b2ce68e28fddbdf38ea146ab761d0f44e510b8511ba07b549a94aa6ea36947` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ce256d9c1a3ea42594d21b313f1e2aa33673afd61e407745e085caddd9b8336 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantf9c4e124766375d342cce6577724583abb6804ec5f23b9e0f4ae08af01b6b6d7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedBicategory/Variantf9c4e124766375d342cce6577724583abb6804ec5f23b9e0f4ae08af01b6b6d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

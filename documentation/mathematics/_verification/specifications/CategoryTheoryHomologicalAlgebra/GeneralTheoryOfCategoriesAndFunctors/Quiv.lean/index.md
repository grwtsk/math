# Verification target: Quiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f9d41ac0926df235cd7d267af405558cf8e6c9c",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variant3f783eefd14eddc6462ba77b13cf91771750bf1cd7ee2ae23c60a6ca84215280.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f9d41ac0926df235cd7d267af405558cf8e6c9c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variant3f783eefd14eddc6462ba77b13cf91771750bf1cd7ee2ae23c60a6ca84215280.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variant3f783eefd14eddc6462ba77b13cf91771750bf1cd7ee2ae23c60a6ca84215280.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PathCategory.MorphismProperty` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Quiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/quiv.md) | 23 | `declaration-track:eeece6047d991240c333c7c56a0aa5ce5ed6c5f3cac3d5b8187ad1be68e289da` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/instance.md) | 28 | `declaration-track:558af99c3aa92d3ef24a34e850c19170eefdc7f063d1a538c06dc3ce737c9709` |
| 3 | `instance` | [str'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/str.md) | 30 | `declaration-track:66bdae4d7e218038cb11ae96828e43f51d19671dd57f7e7633dd07a6dea2aa2b` |
| 4 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/of.md) | 34 | `declaration-track:4bb28f1d4790779c9093fad1f137f01a9b029a2e805d6bad1b417f93734900dc` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/instance-source-edition-2.md) | 37 | `declaration-track:f5e1d4aede6bb1062fd49b378c26c7f0440ccdfb0b2e977efc44c9eee596af1f` |
| 6 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/category.md) | 41 | `declaration-track:2572fa6a080ac63de5bb68a3a1552eed8379ec4af1ca657511dfc79c650043f9` |
| 7 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/forget.md) | 48 | `declaration-track:5b1fbd9a5891a41d280adf66f5ed054d562015ded2c7ee0c9baa0fac1e22ddb5` |
| 8 | `theorem` | [id_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/id-eq-id.md) | 53 | `result-track:e2165eec5722da33c8a35821e8cbe885bbd161ca70a3ea1671689fe568319e04` |
| 9 | `theorem` | [comp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/comp-eq-comp.md) | 56 | `result-track:3a24df11febc85f04e7971076215817ba92f2d64b469f8c1a06b6d0387247726` |
| 10 | `def` | [toQuivHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/toquivhom.md) | 63 | `declaration-track:cfede8de62bec2e8d7f43edcbd80612bee3551005098301c6528b11caa5157fc` |
| 11 | `def` | [ofQuivHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/ofquivhom.md) | 67 | `declaration-track:5641289163970cb1243e206958f0232ec0af58ed1d8fd42b71e31c98c74568ad` |
| 12 | `theorem` | [to_ofQuivHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/to-ofquivhom.md) | 69 | `result-track:bb5dd810ec2483d0efb78ca54a00ca67403ae1f4734b69a49b6aca8ff7396628` |
| 13 | `theorem` | [of_toQuivHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/of-toquivhom.md) | 71 | `result-track:6c9c0b8e9b59f990586a92f57b74cb6ccc70420ec53db36152b2f89e688572d4` |
| 14 | `def` | [freeMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/freemap.md) | 79 | `declaration-track:e471ec9546ad23cbb1e8fb2354bb2effeac961fd912b26ab0a8d400fc43800ff` |
| 15 | `def` | [freeMapIdIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/freemapidiso.md) | 87 | `declaration-track:b615fd628779cf2d57ae1018d8c693340a06593fcff14c1137c849d9f8584017` |
| 16 | `theorem` | [freeMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/freemap-id.md) | 90 | `result-track:1300ed13c1ddefd7de082b7cedc054ed7060bbd6484a5c9f2cabdae35d8117c6` |
| 17 | `def` | [freeMapCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/freemapcompiso.md) | 97 | `declaration-track:fb7f0c00c405368be845a2deff1b88a68eb64e2598e66cfb0839ccb4d1d7b2b4` |
| 18 | `theorem` | [freeMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/freemap-comp.md) | 104 | `result-track:50a733a42a05481f9b40a89ae6d52f9a1c114cbdfbccfd37657aee720854280f` |
| 19 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/free.md) | 113 | `declaration-track:e6455a5800adbe9017621230bc54126b2a914b7dd335c2c803b895f79e73f95d` |
| 20 | `def` | [equivOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/equivofiso.md) | 128 | `declaration-track:b474f48976f51c6bde6b8eec478fdaa363ee329ae4ed8108bb40109249075396` |
| 21 | `lemma` | [inv_obj_hom_obj_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/inv-obj-hom-obj-of-iso.md) | 135 | `result-track:73c5e09d33c784423fb896e595f51ab9ded6e7f85fb00de2398988240e4d7e87` |
| 22 | `lemma` | [hom_obj_inv_obj_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/hom-obj-inv-obj-of-iso.md) | 138 | `result-track:eccd43ab4b6787e1a4724b8d0ae6a885701d431fe3866151be6603b4726f0c7b` |
| 23 | `lemma` | [hom_map_inv_map_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/hom-map-inv-map-of-iso.md) | 140 | `result-track:fc1f2c2e8a22cd70348fa490ca36c9b84d5d4a3bd624e6c3c8d3e051e0fe4463` |
| 24 | `lemma` | [inv_map_hom_map_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/inv-map-hom-map-of-iso.md) | 145 | `result-track:e94332b65bc226739986dfabf59bbb0218fba67f1fdaa9545198cfaab2c4e9e7` |
| 25 | `def` | [homEquivOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/homequivofiso.md) | 151 | `declaration-track:0ae869aff26c87d85c78c5a264c4e400bf8d5ab05948396b40fe837f952f1ec1` |
| 26 | `lemma` | [homOfEq_map_homOfEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/homofeq-map-homofeq.md) | 166 | `result-track:6d1269495bdeb5b53062b42ffecf0bbd14cac9def972d8d69425a09c97ba95f7` |
| 27 | `def` | [isoOfEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/isoofequiv.md) | 174 | `declaration-track:3d335eed2b2ab75b651369a176958034b9855eb9a3781aab43dc57497dc48657` |
| 28 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/lift.md) | 190 | `declaration-track:b58e23566257aaed30530cfe4d3b3c273c708fedcbd1279e2fe73bf7266333ea` |
| 29 | `def` | [pathCompositionNaturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/pathcompositionnaturality.md) | 196 | `declaration-track:824b6d38f8049148f2c1a2b748be03481608867bbcfedce186f4a880752b04ef` |
| 30 | `theorem` | [pathComposition_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/pathcomposition-naturality.md) | 203 | `result-track:c23e8413f129b59702bf61580c74f021f39d077665fa09dd3c38ce10741dc448` |
| 31 | `lemma` | [pathsOf_freeMap_toPrefunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/pathsof-freemap-toprefunctor.md) | 210 | `result-track:eb1b0f66685800a8c03e36001ae7d1ac55d0bbb413d4a2bacd90a0a663180933` |
| 32 | `def` | [freeMapPathsOfCompPathCompositionIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/freemappathsofcomppathcompositioniso.md) | 215 | `declaration-track:e92dfa52e9b672040e0d707ced3829909ae66ef031f835ebf2abcd973dea80f9` |
| 33 | `lemma` | [freeMap_pathsOf_pathComposition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/freemap-pathsof-pathcomposition.md) | 219 | `result-track:a05772daa1d1d935eb66ccb00599d54704f0de2bf0b495b81747c9ed9df99a4f` |
| 34 | `lemma` | [pathsOf_pathComposition_toPrefunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/pathsof-pathcomposition-toprefunctor.md) | 224 | `result-track:443a7121748e868a241da09d907d5bc4d7328767bb634f7354899e604217a1c3` |
| 35 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/adj.md) | 234 | `declaration-track:1e8db58d12964447a25e867abf6f23ea90ddb6c9d10ad012d2e448fe999b1315` |
| 36 | `def` | [pathsEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/pathsequiv.md) | 250 | `declaration-track:4c4cc7afba194a9e622e65ae644c6e253bca2c053b8696146b9a55c3528c07c3` |
| 37 | `lemma` | [adj_homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Quiv.lean/declarations/adj-homequiv.md) | 265 | `result-track:6656a0556c780fd81de6d9a50311565acbaec0c4415fc997da42cffddba42f5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9746df345d5c1660768322ec47d3df52ac4ee4f92069d2d3ffa10b67b18b7597 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variant3f783eefd14eddc6462ba77b13cf91771750bf1cd7ee2ae23c60a6ca84215280.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variant3f783eefd14eddc6462ba77b13cf91771750bf1cd7ee2ae23c60a6ca84215280.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

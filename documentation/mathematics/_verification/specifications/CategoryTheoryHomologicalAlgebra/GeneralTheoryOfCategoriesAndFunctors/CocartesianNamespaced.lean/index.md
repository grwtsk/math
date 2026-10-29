# Verification target: Cocartesian Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edcb0a9863c3679ce141202c592e756caf4b0f06",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edcb0a9863c3679ce141202c592e756caf4b0f06`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FiberedCategory.HomLift` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCocartesian](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/iscocartesian.md) | 59 | `declaration-track:dd6f1d1c1a19da59bf2ba0786f85d30fb955c6181fb2e80cba4e8d2ef0e8ab22` |
| 2 | `class` | [IsStronglyCocartesian](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/isstronglycocartesian.md) | 73 | `declaration-track:5e6692530d13c61dcfaf663b9837a8acafc3ee7d6d04b5140573ebb47cedd2fa` |
| 3 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/map.md) | 90 | `declaration-track:90cbe1f06be5c42bf7c2ab9d769e8c6903926d57d67593fe867048609d24ab66` |
| 4 | `instance` | [map_isHomLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/map-ishomlift.md) | 93 | `declaration-track:b3c3e32e3dc5d59de77e19ee09d4f3ff11c84f296c34f3ce0a24cf09c017cf73` |
| 5 | `lemma` | [fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/fac.md) | 97 | `result-track:91f957d28347dfeb9b30c68de6182470f5f40c2de84cd8865c8e6291c24c96f7` |
| 6 | `lemma` | [map_uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/map-uniq.md) | 103 | `result-track:5681544bdbf28d90a52b5f1824f0f84b0f357226dce0076c5bbb8b1f2476442c` |
| 7 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/ext.md) | 112 | `result-track:c40349031533b74726d9856c2b133c4a710ad5af1e219a8e0f07c635ef80ea22` |
| 8 | `lemma` | [map_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/map-self.md) | 117 | `result-track:cdc4ad1bcd24356ba8a9fd91c6491ef6d01343db2a8fc12e5925acf85fdaf459` |
| 9 | `def` | [codomainUniqueUpToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/codomainuniqueuptoiso.md) | 124 | `declaration-track:8370f518ab117b358b4978d929ceb98d3810a7cf1ffeed54d2e72289f1c8c032` |
| 10 | `instance` | [of_comp_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/of-comp-iso.md) | 138 | `declaration-track:f3d0434744fdf82f5f2efc544065783828f1b00b1bb1b4dbdae52cf95321d9a1` |
| 11 | `instance` | [of_iso_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/of-iso-comp.md) | 150 | `declaration-track:0bb4e67662e03d6c4b27e9c517aa22dd51409bceb0547da2f113a40f786e141b` |
| 12 | `lemma` | [universal_property](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/universal-property.md) | 172 | `result-track:d94247601d6164fa3ec95623251312af07f33df8bcc8741c1ae5f8ec56dc6cb4` |
| 13 | `instance` | [isCocartesian_of_isStronglyCocartesian](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/iscocartesian-of-isstronglycocartesian.md) | 178 | `declaration-track:b40079eb433daf574471243922b88bbe801a3238c520bdb149c2cca011c7423b` |
| 14 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/map-source-edition-2.md) | 196 | `declaration-track:96b60398814f724c8a47246bb2ca3244c11f3de3c80ec711add4a1af8cca326f` |
| 15 | `instance` | [map_isHomLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/map-ishomlift-source-edition-2.md) | 199 | `declaration-track:fd7d6eec2e219b3773e665669342b07ea4b6f11cc963d455a5f8b9923b3aebfe` |
| 16 | `lemma` | [fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/fac-source-edition-2.md) | 203 | `result-track:f1cc6d0c2d7db2b77d4d42e8b4c99a31fdd04a7e943ab9f7294aa40f0c5374a1` |
| 17 | `lemma` | [map_uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/map-uniq-source-edition-2.md) | 216 | `result-track:5e1ed89e16fba4f6a7b51429491329c2208bf76d34e7800805af2d4a6f6797a3` |
| 18 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/ext-source-edition-2.md) | 230 | `result-track:ef9e48931f94017ba00c781b552adeaec41dfd372860771312409a82780aba9e` |
| 19 | `lemma` | [map_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/map-self-source-edition-2.md) | 235 | `result-track:fa8be29b43d427e5edc232e1bad44deae26c84ddd1a381645b674aff335097a8` |
| 20 | `lemma` | [map_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/map-comp-map.md) | 267 | `result-track:c0bbeb73c316d178665761439cd12b5be3d9f83e9c55fd916454edc6a10abc30` |
| 21 | `instance` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/comp.md) | 289 | `declaration-track:b71c22c6b4d50e911cf9a92a9908a1f455a5fb8dbfe7299977ad807b74b807dd` |
| 22 | `lemma` | [of_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/of-comp.md) | 309 | `result-track:62b0919cc8251a5fa1029b32945ee20f2bcb6cc13fdebb1342cbb8be29754963` |
| 23 | `instance` | [of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/of-iso.md) | 332 | `declaration-track:06f1656ca2162d28efbe72b0f751552e3fb0030afa75ed9e17220659e978b676` |
| 24 | `instance` | [of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/of-isiso.md) | 339 | `declaration-track:1ff450de942e8387b080e20dcee61d0fa8a30bbd8000044a96a926f08cc2c5e1` |
| 25 | `lemma` | [isIso_of_base_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/isiso-of-base-isiso.md) | 343 | `result-track:6c56183ef4076150739283f27eeacc1f736ce879a61fb30c887de65f44402f42` |
| 26 | `def` | [codomainIsoOfBaseIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CocartesianNamespaced.lean/declarations/codomainisoofbaseiso.md) | 362 | `declaration-track:55aaff2ffb114898338553fd2e7293e7a48e2990987236a8983d0e9cc69fd8b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60b4a67c00a25db3d3535ec266bbda69d303c54e2156b094ecaa29f15256a5a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant79ba042a6b11dd137a4fa989a0199b44c1fa7640b63cab6401b4cb5bd62a3cfe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Category Theory Core Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1baced82b9be16a9d2fc8b503bca3d62dfc606f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1baced82b9be16a9d2fc8b503bca3d62dfc606f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean.json)

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
| 1 | `structure` | [Core](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/core-source-edition-4.md) | 39 | `declaration-track:ea6246d508f5255e940ab4de4a6ed05a86b2b16bc5d82bcb7d9eb2950a9c2bbb` |
| 2 | `structure` | [CoreHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/corehom.md) | 48 | `declaration-track:c003ee347e3e786eae7f825e23bfe7266a2b546d07397f3b52ca12253bd10381` |
| 3 | `instance` | [coreCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/corecategory.md) | 53 | `declaration-track:1cee509b975886e799b7997a1c4cfd924e019b24c397821961f716dbccf4a80e` |
| 4 | `lemma` | [coreCategory_comp_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/corecategory-comp-iso.md) | 60 | `result-track:a436e7122c36189d2a60a015e7aebca6c6afd18c7206563638ce531d98c9b629` |
| 5 | `def` | [inclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/inclusion.md) | 68 | `declaration-track:b0b7c8f31f9e36a924d050c54fc357237e81ac747a4a90f0549256253f632082` |
| 6 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/hom-ext.md) | 73 | `result-track:8f8c474c9d2a9aeec84fdd0041f1e2e01883811389bd461645ffe217ea7bd728` |
| 7 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/isomk.md) | 80 | `declaration-track:ecae54ef56acaef3777dfebf19dbd089e06b6cc51212de2a13fe6e18679b12a2` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/instance.md) | 85 | `declaration-track:8e872665e800f33ae518f2233acac9c05ff7469f524f78be15b0855e7233073a` |
| 9 | `def` | [functorToCore](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/functortocore.md) | 93 | `declaration-track:6e855f2409b131c6727004d588b8c207912b7a8a693f71c2d9a5b55550044c75` |
| 10 | `def` | [forgetFunctorToCore](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/forgetfunctortocore.md) | 101 | `declaration-track:9210e610e1424c7b33ea9589aac0470a4c85dacf5c8f5f1d9684a902a0e9634d` |
| 11 | `def` | [core](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/core-source-edition-3.md) | 114 | `declaration-track:b0025222afce05a4d3d2596dbaa04e56bfc89452a4919668d7d2a7a0808a1380` |
| 12 | `def` | [coreId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/coreid-source-edition-2.md) | 119 | `declaration-track:35ee562e81eb447d323d5097739d524da1adaea9d2b414039839ed1db6db8216` |
| 13 | `def` | [coreComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/corecomp-source-edition-2.md) | 123 | `declaration-track:33aa59ca79da23aaa0ce8717c4d630a11ff90acc42369f9473e01f5c73d13e2b` |
| 14 | `def` | [coreCompInclusionIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/corecompinclusioniso.md) | 139 | `declaration-track:d322c448c3284c5c70f1ac012b0df2ddbe723feeee6d98e56471821b9078a22c` |
| 15 | `lemma` | [core_comp_inclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/core-comp-inclusion.md) | 143 | `result-track:69285215d4c961f73359531ab4f6cb5511d60f100df68024a6d1262415d6f6f2` |
| 16 | `def` | [core](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/core-source-edition-2.md) | 156 | `declaration-track:7fae58d7ac19a91fbee6662f92ba8acaf93195dd119df53804182b34c216197b` |
| 17 | `lemma` | [coreComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/corecomp.md) | 161 | `result-track:1228bbcc68113d41b58b56100201b8c1ea475782596021f6a125eacbc4da07fa` |
| 18 | `lemma` | [coreId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/coreid.md) | 164 | `result-track:175d8fb08f3c2504ecc8981e38ecaa718dcfee9f753f65c3239308b636ca7c87` |
| 19 | `lemma` | [coreWhiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/corewhiskerleft.md) | 167 | `result-track:bc8ac5207c7745f489f97b765ef65c895e4fd6f1fa97f140775c6428c556a830` |
| 20 | `lemma` | [coreWhiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/corewhiskerright.md) | 173 | `result-track:2c897b00e4e743fa59ed06c0d628becc2cf823102dcb9ddba8df4ec218dcd8d3` |
| 21 | `lemma` | [coreLeftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/coreleftunitor.md) | 179 | `result-track:051fd06a380afac4294834750bb48414cdecc20d42be5f81df8dcbbfafa89a1e` |
| 22 | `lemma` | [coreRightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/corerightunitor.md) | 185 | `result-track:e367bad307a06de237350e05244347df6e32537955ac70f90fac973c780aba44` |
| 23 | `lemma` | [coreAssociator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/coreassociator.md) | 191 | `result-track:51b1d13dd78853a189a40cbd2c647df64e2011e699a2a1c69d104425d166f8ae` |
| 24 | `def` | [functorToCoreCompLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/functortocorecompleftiso.md) | 207 | `declaration-track:7ccb65b95598120d9fa500c1db90655b9cdc9097dc1ffe67e7f05464a1986b67` |
| 25 | `lemma` | [functorToCore_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/functortocore-comp-left.md) | 211 | `result-track:70436d26ea13d21859f27bf191e67336455c065dda610dde168bcf444d47caf1` |
| 26 | `def` | [functorToCoreCompRightIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/functortocorecomprightiso.md) | 216 | `declaration-track:24cb6f6b4e67d00909fb15ddb045791bc497672642181c1c2bc4273a2edc4afb` |
| 27 | `lemma` | [functorToCore_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/functortocore-comp-right.md) | 220 | `result-track:1242a13450d29f9034ed180bd4617f57a73ca0f8269fa46360b01bd18414b025` |
| 28 | `def` | [inclusionCompFunctorToCoreIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/inclusioncompfunctortocoreiso.md) | 226 | `declaration-track:8aa54c676a39063e680d0c6c40f2cc0a0b1a49787009d398fe0ff6f08cb05b6a` |
| 29 | `theorem` | [inclusion_comp_functorToCore](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/inclusion-comp-functortocore.md) | 229 | `result-track:84b7f3dcc2a1be8b19105dd63e7b91ed9b6ba8a2f5c3a411aeb2404950028af9` |
| 30 | `def` | [functorToCoreInclusionIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/functortocoreinclusioniso.md) | 233 | `declaration-track:8796cfd1e25f682915948c40e71eaa5a82e71df034c235f9e2322513d120ccef` |
| 31 | `theorem` | [functorToCore_inclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/functortocore-inclusion.md) | 236 | `result-track:d4f6441b3b65515688ab641119e96ad74552d3def8518dbe0832d455b5a82c5f` |
| 32 | `def` | [core](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/core.md) | 249 | `declaration-track:353b890960f4339266f0c788ee85dfcf4238ead010a2cb385175cd60395b62e9` |
| 33 | `def` | [coreFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/corefunctor.md) | 261 | `declaration-track:a425e7f4ef2fb30b65c00476f44e4024e9879c57cfeffa251ee9ce0de50fc9e8` |
| 34 | `def` | [ofEquivFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCorePublic.lean/declarations/ofequivfunctor.md) | 270 | `declaration-track:a1e763b3d390fb47f1153cbf09104e426e6e121835d1068e3e52ed33319ed181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fea852e153b5da2c7536fdf7e256e5d7081ac697609170c5d8ca67bd1aa2ea44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

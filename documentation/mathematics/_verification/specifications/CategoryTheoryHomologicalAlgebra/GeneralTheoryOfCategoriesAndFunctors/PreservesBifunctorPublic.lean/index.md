# Verification target: Preserves Bifunctor Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57ba882132a202a7541fc1e8d53df7366fb4de7f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57ba882132a202a7541fc1e8d53df7366fb4de7f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean.json)

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
| 1 | `def` | [Functor.mapCocone₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/functor-mapcocone.md) | 38 | `declaration-track:835d33e074b86684700a93f69095f5af9452bd34d85d7de2d7d509c709839fbb` |
| 2 | `def` | [Functor.mapCone₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/functor-mapcone.md) | 56 | `declaration-track:8b71ffe9c33676d28432a10fe95eb3e160428c081eaa122d13a1a94cd851a6c5` |
| 3 | `class` | [PreservesColimit₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/preservescolimit.md) | 76 | `declaration-track:7ba950eb2b5da06ac628e60b416bf8a2196cbcd13ff119e0c1c84efc36733ce7` |
| 4 | `class` | [PreservesLimit₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/preserveslimit.md) | 85 | `declaration-track:0f90d8733c00632ce332eeb8f9421a23dce7190f06a9bcd5c89eb0389d3ab9d4` |
| 5 | `def` | [isColimitOfPreserves₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/iscolimitofpreserves.md) | 94 | `declaration-track:3afe13258c98c44206a89fd71f68b393a9771d81692201aa878c41d5c987b1d9` |
| 6 | `def` | [isLimitOfPreserves₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/islimitofpreserves.md) | 102 | `declaration-track:255ae7f8472926b366b4fdb3fcef965ed24b623c6f855161f844354975b5f09f` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/instance.md) | 108 | `declaration-track:097e52f2541ec526f0f8dbf436c7135f8dfee32684be47344385d31ed38ffbee` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/instance-source-edition-2.md) | 117 | `declaration-track:6bd39c05c43c443ec89ec76382b23f67e34a85af8ecb9b01b54b639205f79900` |
| 9 | `def` | [isoObjCoconePointsOfIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/isoobjcoconepointsofiscolimit.md) | 133 | `declaration-track:2bbf5eb7f27a1c5e22ee3ca3063799d274a5e333893712d78f980e6086d1b32c` |
| 10 | `lemma` | [ι_comp_isoObjConePointsOfIsColimit_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/comp-isoobjconepointsofiscolimit-inv.md) | 152 | `result-track:bb6efc0d49568ecf7a1adb2cac0b720f5e064687517500aa715dbbd819b08142` |
| 11 | `lemma` | [map_ι_comp_isoObjConePointsOfIsColimit_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/map-comp-isoobjconepointsofiscolimit-hom.md) | 162 | `result-track:87530d9f0a25e9bb14584c6fbe410e9ad10153f09dceb7315abb7476b17115e0` |
| 12 | `def` | [isoColimitUncurryWhiskeringLeft₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/isocolimituncurrywhiskeringleft.md) | 179 | `declaration-track:354f21f555b41402b110cdcbee701dd72503e2edcdf7029c1e5e1f7ba53a7c58` |
| 13 | `lemma` | [ι_comp_isoColimitUncurryWhiskeringLeft₂_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/comp-isocolimituncurrywhiskeringleft-hom.md) | 191 | `result-track:4cf58270984735ce2b662e463eef995e4a0e201ade6260a9dc61719273e535f8` |
| 14 | `lemma` | [map_ι_comp_isoColimitUncurryWhiskeringLeft₂_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/map-comp-isocolimituncurrywhiskeringleft-inv.md) | 201 | `result-track:90dc04f71704c053b54648f176c86c567b2c1519dc53b00b298a2f04dcf7937f` |
| 15 | `instance` | [of_preservesColimits_in_each_variable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/of-preservescolimits-in-each-variable.md) | 214 | `declaration-track:932e5a86cc6635c56c87c7f4543921ec3c1fae1a0d597756f2e0a7e05a0b7a6d` |
| 16 | `theorem` | [of_preservesColimit₂_flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/of-preservescolimit-flip.md) | 244 | `result-track:d8037c29270ced84d348ca25e619f1b7620b08324884d944173931ae97234d9b` |
| 17 | `def` | [isoObjConePointsOfIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/isoobjconepointsofislimit.md) | 268 | `declaration-track:90c0992a9ddc0f0d7abc3c97c289b76f5b0df499171b51c5c37e9763fdb8cd6e` |
| 18 | `lemma` | [isoObjConePointsOfIsLimit_hom_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/isoobjconepointsofislimit-hom-comp.md) | 287 | `result-track:1eedd01a0e691a55e6afecd9da735ba9e02543f3a4ee4d4ecbfa98bd3427371b` |
| 19 | `lemma` | [isoObjConePointsOfIsColimit_inv_comp_map_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/isoobjconepointsofiscolimit-inv-comp-map.md) | 296 | `result-track:cd23a05f0580477c86a75ab04bff0ee49707a9567aafb62cdc1a249ec9345502` |
| 20 | `def` | [isoLimitUncurryWhiskeringLeft₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/isolimituncurrywhiskeringleft.md) | 313 | `declaration-track:28d15fae2bae8075d7d6b92ee37962abc98568f13ef678bde3b11c2c5b7c29a0` |
| 21 | `lemma` | [isoLimitUncurryWhiskeringLeft₂_inv_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/isolimituncurrywhiskeringleft-inv-comp.md) | 325 | `result-track:1522f3db8aa8ae8285e6015f9b8a459f2dd8c0bddae96bb1f7bfc3724bc96735` |
| 22 | `lemma` | [isoLimitUncurryWhiskeringLeft₂_hom_comp_map_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/isolimituncurrywhiskeringleft-hom-comp-map.md) | 335 | `result-track:3857ff13b6a40c3609437fe49f1c95781d56cd12b451a592bf410864616aab85` |
| 23 | `instance` | [of_preservesLimits_in_each_variable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/of-preserveslimits-in-each-variable.md) | 348 | `declaration-track:d273cdd977d2672b6cfd9c4fe53a2739bdd7dfb39bf9605b2b1788dc3652976f` |
| 24 | `theorem` | [of_preservesLimit₂_flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorPublic.lean/declarations/of-preserveslimit-flip.md) | 379 | `result-track:86b7d185e111d1e25cdbae8f5a71a52f46388878c6bea51013a09eea8866a27b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3de7c9c7411c9245aa1befb9b05686c2d48dd9b43bb0331db74307386797fdaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

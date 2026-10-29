# Verification target: Is Limit Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3256c2b7fac4393fd775fada6fa248192d322bc7",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant4a6ef7c998ce98465a1924edd09674fb640ff3abd8cb514c2f836fae3bc66f0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3256c2b7fac4393fd775fada6fa248192d322bc7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant4a6ef7c998ce98465a1924edd09674fb640ff3abd8cb514c2f836fae3bc66f0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant4a6ef7c998ce98465a1924edd09674fb640ff3abd8cb514c2f836fae3bc66f0a.lean.json)

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
| 1 | `structure` | [IsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/islimit.md) | 58 | `declaration-track:569757f52291b0a2f32ed250dc5207d968f2ee7c4dbfc3edc2f90fd9d7d99bfd` |
| 2 | `structure` | [IsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/iscolimit.md) | 70 | `declaration-track:2153b3c1fafdd58631509d98a5620cc4a74ec0b5ce7287c2dd313b141f87b22a` |
| 3 | `instance` | [subsingleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/subsingleton.md) | 87 | `declaration-track:0330248d0e9845d97da9d95cd95588d5ad7874c014c7a5b1ccf3c482e3249998` |
| 4 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/map-source-edition-2.md) | 95 | `declaration-track:fb08607ba5d7f1c10d812351abcbfaa226c5185e6b616b38359b7250210fcfb6` |
| 5 | `theorem` | [map_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/map.md) | 99 | `result-track:68f643686fd57f0ebc8d06837bb85efbfc3f3920145f5b8eb3d17e6cd0160d0f` |
| 6 | `theorem` | [lift_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/lift-self.md) | 104 | `result-track:16e41ad9c6b2dffa3512816dbc75242bd17b75121c705ce058ffa862d7a9258e` |
| 7 | `def` | [liftConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/liftconemorphism.md) | 111 | `declaration-track:435fdc9eb3db318d99918d79a1a42e7667cd21dea455fd4c889e24e658377747` |
| 8 | `theorem` | [uniq_cone_morphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/uniq-cone-morphism.md) | 114 | `result-track:bedd1ba1b9f836d6617871061ed61db8234f320b127053024f076a2ec97a52f1` |
| 9 | `theorem` | [existsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/existsunique.md) | 121 | `result-track:64aa07ad0dca3ac05dfae90c83c6c571b37da71e5e43711add9a5427688665f6` |
| 10 | `def` | [ofExistsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofexistsunique.md) | 127 | `declaration-track:12e46977a25d0303972d19d8189f50c11dc3e77fd6f4ab137055b80d10839850` |
| 11 | `def` | [mkConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/mkconemorphism.md) | 141 | `declaration-track:90881f786cae5912ea7eb06495cb215d99fe02a9258efe8f38911df60c8be0eb` |
| 12 | `def` | [uniqueUpToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/uniqueuptoiso.md) | 150 | `declaration-track:b5314be703da5cd98c29588e91edeed44bb55d982f42fbd540f226b6dd51f930` |
| 13 | `theorem` | [hom_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/hom-isiso.md) | 158 | `result-track:c278b1a50edf37e8b546fd41c1dd021d1c87833ec1bd0eb4ff35748dcab54ad6` |
| 14 | `def` | [conePointUniqueUpToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/conepointuniqueuptoiso.md) | 163 | `declaration-track:d888588d14ea8fa2ca379bb61687e4b83d825d37252719ec390dfcc9699103a2` |
| 15 | `theorem` | [conePointUniqueUpToIso_hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/conepointuniqueuptoiso-hom-comp.md) | 167 | `result-track:5ecd27fcaae88dc9223237a47ac4cf34cf67cc0d838d2e38e0d66b75e4e8c060` |
| 16 | `theorem` | [conePointUniqueUpToIso_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/conepointuniqueuptoiso-inv-comp.md) | 172 | `result-track:dae3ea40761d40a4f52194b076e8358945894d6141b616333e6904274ebe197b` |
| 17 | `theorem` | [lift_comp_conePointUniqueUpToIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/lift-comp-conepointuniqueuptoiso-hom.md) | 177 | `result-track:d0c32555bb31ba682ecfc47d9c12f132955927dce4906892cd245de4cb186d83` |
| 18 | `theorem` | [lift_comp_conePointUniqueUpToIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/lift-comp-conepointuniqueuptoiso-inv.md) | 182 | `result-track:a2da7906738f8ea6563078cb1cd97bd8cbbfa2f3ab244693e293e1f39ffc622f` |
| 19 | `def` | [ofIsoLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofisolimit.md) | 189 | `declaration-track:2a475f00987371e513d1817d15faf59bf2c97b6bb4ae6c539dcd1a5d2ee21ee6` |
| 20 | `theorem` | [ofIsoLimit_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofisolimit-lift.md) | 194 | `result-track:b0e78d605e42b77b895185c6e3739543f151133f1d8a654362f7e1e138fb7ab5` |
| 21 | `def` | [equivIsoLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/equivisolimit.md) | 200 | `declaration-track:e3513fafe48b717e233300525f1b365d29bbb09c508118a31ed9decd4355fd8a` |
| 22 | `theorem` | [equivIsoLimit_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/equivisolimit-apply.md) | 207 | `result-track:4dac96b5e3672ab52d6e297cb0812f4fc398d49e11ef6f0d3b0c42a9dee8688e` |
| 23 | `theorem` | [equivIsoLimit_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/equivisolimit-symm-apply.md) | 212 | `result-track:1b2a54e4c49ac0777bbae15175a939a9519fa34279a14ac9fb4882ec68ba0a6e` |
| 24 | `def` | [ofPointIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofpointiso.md) | 223 | `declaration-track:a92701497f8fd6eb37eac4dc622b3e91f836c8fc65681aa2d0b5ec2a62e06d67` |
| 25 | `theorem` | [hom_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/hom-lift.md) | 233 | `result-track:be764cfd7ef9a2af111698ca57679322b0bf5b63c7247d16f9edf636dcf2ead5` |
| 26 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/hom-ext.md) | 241 | `result-track:24f9b1d7c0921154826c66ce64ef08372a806824fdfb7f1b96fda5c507de8a3d` |
| 27 | `lemma` | [nonempty_isLimit_iff_isIso_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/nonempty-islimit-iff-isiso-lift.md) | 247 | `result-track:ac0b2d783dbb9664627e1512c5d4389a7a8cbb10933047b9c2a80018ec0a5f89` |
| 28 | `def` | [ofRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofrightadjoint.md) | 258 | `declaration-track:b01276497b9e5d433a82175bb94c257bf7a30832b9f75fe7cacaca48b9b29669` |
| 29 | `def` | [ofConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofconeequiv.md) | 267 | `declaration-track:738181ad4841b21c275b17ab069686ae7979daaacce2cb7727cd8c811e431212` |
| 30 | `def` | [Is Limit Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-islimit-varia.md) | 278 | `declaration-track:5f606f2764c5aab8f3ea9c2a74fb800848176b79bfdee6e81c8b750f6be78114` |
| 31 | `theorem` | [ofConeEquiv_apply_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofconeequiv-apply-lift.md) | 288 | `result-track:5298a7805c6f1f4f76e672ddce4b35512bf513beae26f600d3d8cdbe71ac269f` |
| 32 | `theorem` | [ofConeEquiv_symm_apply_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofconeequiv-symm-apply-lift.md) | 296 | `result-track:6f47a7e4df9aff537f93597c0b01fbca75400ee9f016c8bc583ccc2a6946a933` |
| 33 | `def` | [postcomposeHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/postcomposehomequiv.md) | 313 | `declaration-track:971d62fcdf00731c0a5d939a7e001621541d5ad932d64757d47d1bef1d225d6c` |
| 34 | `def` | [postcomposeInvEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/postcomposeinvequiv.md) | 324 | `declaration-track:cf04b1b114d59ce6a03a1e985de7e0a250018499860a2fdf1fc41448f5709c43` |
| 35 | `def` | [equivOfNatIsoOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/equivofnatisoofiso.md) | 335 | `declaration-track:83a6cdbfe1472e477bf494e05999b492c2c0f04cb1f4712f1412e5495869f90e` |
| 36 | `def` | [conePointsIsoOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/conepointsisoofnatiso.md) | 346 | `declaration-track:11d4b0fd861bff59ff18cd28f25a0551c8e9c1a3d0488830151571f4e52e0f0c` |
| 37 | `theorem` | [conePointsIsoOfNatIso_hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/conepointsisoofnatiso-hom-comp.md) | 354 | `result-track:328e47114fc0427a55b7813245b724040c8fa6f91bb3aaa1b05cef582966cecb` |
| 38 | `theorem` | [conePointsIsoOfNatIso_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/conepointsisoofnatiso-inv-comp.md) | 359 | `result-track:bae6ebd426ad00ea37029284a9b53b5746fbfc825412689aceb0394cdd532bc1` |
| 39 | `theorem` | [lift_comp_conePointsIsoOfNatIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/lift-comp-conepointsisoofnatiso-hom.md) | 364 | `result-track:83a8c1ea75895dd13ba999ae6e9ae27c03cba5b6cfb2d74f8bcaa864853162af` |
| 40 | `theorem` | [lift_comp_conePointsIsoOfNatIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/lift-comp-conepointsisoofnatiso-inv.md) | 370 | `result-track:b211736da23fa78c7e673d07afdf5b869b3be201b2e2bd490e7af61857efb283` |
| 41 | `def` | [whiskerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/whiskerequivalence.md) | 380 | `declaration-track:3ce04c271fd3472e4fbb70fcb73069ea54ff71928de82322bf0983e09d81d56b` |
| 42 | `def` | [Is Limit Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-islimit-varia-source-edition-2.md) | 385 | `declaration-track:850ece772a2c6723dd098f2fb6876aa4c3d13b2be3d2b090bf932ee0be57b624` |
| 43 | `def` | [ofWhiskerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofwhiskerequivalence.md) | 390 | `declaration-track:f059fc28e024528260061ba69c786e130eaea376c64e94ac004f7a76b7132db6` |
| 44 | `def` | [Is Limit Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-islimit-varia-source-edition-3.md) | 396 | `declaration-track:a0208bfeb7d1a10fb6f4423243febb036edcb0c0f4e432dd81e91438c8b9e771` |
| 45 | `def` | [whiskerEquivalenceEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/whiskerequivalenceequiv.md) | 404 | `declaration-track:2422cb5a9d9a590445a2dc09e4c48c96a6681079b7149b5f001c0223faa4fd95` |
| 46 | `def` | [extendIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/extendiso.md) | 409 | `declaration-track:8f1ca47ff84e1850be5b6946ab6b6a5918d3098cdcf3e63b9acbd4eac56e5ecf` |
| 47 | `def` | [ofExtendIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofextendiso.md) | 415 | `declaration-track:ab1653232cdd49f6dc9a39a1372b88e58e1fb08e0bb1bd399c3e0fa9b144d7bd` |
| 48 | `def` | [extendIsoEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/extendisoequiv.md) | 421 | `declaration-track:ca40bc85fbf885916a166781ade8a618a98a4417dda79674c7a6f118fabf5f8e` |
| 49 | `def` | [conePointsIsoOfEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/conepointsisoofequivalence.md) | 445 | `declaration-track:382472e750088fd31d550a5380a361e11f49182fb76359b74a0680f47500caf5` |
| 50 | `def` | [homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homequiv.md) | 468 | `declaration-track:9e60232311f14ac68d81baa13357483801a973e330ce5ae147924ed08294897f` |
| 51 | `lemma` | [homEquiv_symm_π_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homequiv-symm-app.md) | 475 | `result-track:ca423e256cca85f61cf7c9fc9729c46bb9f8af9faa2b0c01436d4a950c3022b6` |
| 52 | `lemma` | [homEquiv_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homequiv-symm-naturality.md) | 481 | `result-track:c75bd0ef61b25e6078718a4c934c5c2ef70c5bc4245b5b220a070b489fd25570` |
| 53 | `def` | [homIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homiso.md) | 491 | `declaration-track:2a06be7ad7889184df26d40276a1da4969fb91a2540a269cbfdca22496e4a219` |
| 54 | `theorem` | [homIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homiso-hom-source-edition-2.md) | 496 | `result-track:ea3f0c34b4b6e576b1c3101a0e1760a67ef721dad6280db9b60abc5899dfe4a3` |
| 55 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/natiso.md) | 503 | `declaration-track:95864c5d7c5bcc18b6b5de5deaba0f318432e181b5d7672bc33ef63481092e6d` |
| 56 | `def` | [homIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homiso-source-edition-2.md) | 508 | `declaration-track:4c67ae7bb860ddfd3bffc0a064144b0d482d1ae1934296c892b71615dd092156` |
| 57 | `def` | [ofFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/offaithful.md) | 524 | `declaration-track:ff2620fbd2e37f889929b85bd1c7e16f80e1fc4173ff222e6cb74ef9202470d8` |
| 58 | `def` | [mapConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/mapconeequiv.md) | 542 | `declaration-track:0e0e2cfd027fe68529eb7d20f2d13000cc495939b4e62ed4cf676f302adddd09` |
| 59 | `def` | [isoUniqueConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/isouniqueconemorphism.md) | 551 | `declaration-track:c47f54144943176f2b72840cbd5f6845d50bbb0d83a062611a7047c29a90222a` |
| 60 | `def` | [coneOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/coneofhom.md) | 567 | `declaration-track:b5225b7ca63ce19b46e0ccb9f76fa9c38ec7e9f6faf18d7a3f8121d39e07cdd8` |
| 61 | `def` | [homOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homofcone.md) | 572 | `declaration-track:6897b36ed98d321b8eae8a6db5876e8052b3e993de544179af2a7dfd1d6cbfb4` |
| 62 | `theorem` | [coneOfHom_homOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/coneofhom-homofcone.md) | 576 | `result-track:dbbf65f9869103bb5faa03aa80e0fe2b5672a3dc37db4ca012e38d4d002e02f7` |
| 63 | `theorem` | [homOfCone_coneOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homofcone-coneofhom.md) | 584 | `result-track:de359ca70ceb9ff285ab954be65333cb069db392c6862bb6645038c0c3fa3837` |
| 64 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/limitcone.md) | 590 | `declaration-track:8bcc86eddd630ace82557291edd7440fc60967a6a01a4810b52f0c8c84470831` |
| 65 | `theorem` | [coneOfHom_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/coneofhom-fac.md) | 595 | `result-track:a20afe349c5ca45a85d7c1c9cfc6f1c9f15da6156a9a95809f0e3e66f4bc4061` |
| 66 | `theorem` | [cone_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/cone-fac.md) | 603 | `result-track:103bc8fab315683256dc592a4a30bb19f1f061a4172da3c4b88263037f915709` |
| 67 | `def` | [ofRepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofrepresentableby.md) | 617 | `declaration-track:7905bcd1d8873fa8a579b489187e3eab773936e8ea27f5ec6bbc959753e779b1` |
| 68 | `def` | [representableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/representableby.md) | 634 | `declaration-track:11774c5d7b1ed86bc47803f1b3e30868e65d38078f128e73a7b69b708ce2265a` |
| 69 | `theorem` | [homIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homiso-hom.md) | 650 | `result-track:a96ba22e137161618eba5b5d3d27585b9192cd1b4d94a413eeac21aab27c2951` |
| 70 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/natiso-source-edition-2.md) | 657 | `declaration-track:9fb5e1c3c0bbbf18b9fd7125614f471255b2d7420994666e8e8934d02d1f0ac9` |
| 71 | `def` | [homIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homiso-source-edition-3.md) | 662 | `declaration-track:e5258dcebfa61cc9d6cb5fd2155d559fb56da8853e5c4c893871ffcdf8b89779` |
| 72 | `def` | [isoUniqueCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/isouniquecoconemorphism.md) | 676 | `declaration-track:27c768503318ac07be9e3f6783fc86a17c97dd84aee0fb3c38f76f6aa87487a6` |
| 73 | `def` | [coconeOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/coconeofhom.md) | 692 | `declaration-track:c688c4e41df75e5886fe1b15ad39841e95bd0897d09fca676e14706b12490ee7` |
| 74 | `def` | [homOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homofcocone.md) | 697 | `declaration-track:5a5bd1618bac18ad84eb17de7c1c2538c52d146fc919279a709fc45b5b8b8f8d` |
| 75 | `theorem` | [coconeOfHom_homOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/coconeofhom-homofcocone.md) | 701 | `result-track:4a79e03e5429bbf8b44ddb8a7dc57beaa702ab2fdef2d68c30fa77182b43d21b` |
| 76 | `theorem` | [homOfCocone_coconeOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/homofcocone-coconeofhom.md) | 709 | `result-track:fbe003fbd39a74a3001de9ce3be27733ad0925009bf411ded3e97c880cc1c5fb` |
| 77 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/colimitcocone.md) | 715 | `declaration-track:41eb449552f10239be227ed8e3cc65b04d64bc30fad55ac5cfa412a695c9fd4c` |
| 78 | `theorem` | [coconeOfHom_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/coconeofhom-fac.md) | 720 | `result-track:50094a6e56cdb51e395156c4c1cacf7ed36c13baae94cb12d45fc8123f26a350` |
| 79 | `theorem` | [cocone_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/cocone-fac.md) | 728 | `result-track:59d25e275ff767c482e1c18bc064de5230664a0f849415ffa0c2535385da4e14` |
| 80 | `def` | [ofCorepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/ofcorepresentableby.md) | 742 | `declaration-track:57620e9bed07e183ff4364b6a1130038dc2611fd6ac21c9fd26b6c573831c1d7` |
| 81 | `def` | [corepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitNamespacedPublic.lean/declarations/corepresentableby.md) | 760 | `declaration-track:66ab4248f364ca356b28094f86303929f35a25d3122b805ad15e349196878b97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08fa113ad3b846389f3ded272b8cf2290fe1d693b0fa9fa59aee6e6571545ec9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant4a6ef7c998ce98465a1924edd09674fb640ff3abd8cb514c2f836fae3bc66f0a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant4a6ef7c998ce98465a1924edd09674fb640ff3abd8cb514c2f836fae3bc66f0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

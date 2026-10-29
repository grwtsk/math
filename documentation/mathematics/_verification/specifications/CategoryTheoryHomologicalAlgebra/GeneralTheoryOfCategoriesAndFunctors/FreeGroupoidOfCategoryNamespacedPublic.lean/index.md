# Verification target: Free Groupoid Of Category Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd88840fa8bfd1a36d16b553ce4cc934613d46c4",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoidOfCategory/Variant513281e1e84e364912cced03d9c80422dc70ff52daef854c12dd3f6989ae5541.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd88840fa8bfd1a36d16b553ce4cc934613d46c4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoidOfCategory/Variant513281e1e84e364912cced03d9c80422dc70ff52daef854c12dd3f6989ae5541.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoidOfCategory/Variant513281e1e84e364912cced03d9c80422dc70ff52daef854c12dd3f6989ae5541.lean.json)

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
| 1 | `inductive` | [FreeGroupoid.homRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/freegroupoid-homrel.md) | 65 | `declaration-track:7a51b8b3102b418da8fd3bd32f32e7152eeca2262a7dd4df394c18b30fcf0af9` |
| 2 | `def` | [FreeGroupoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/freegroupoid.md) | 74 | `declaration-track:65dd75c0403d415e5f2af6e0c53a5238aad2ab7c0aa3de56dbabb06c1823954e` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:9993f6b2c35898ae65fa8dd00a4e22582e44a7be1d3501c130fc8f32ea599aed` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:7c3795fcd9f1cb60d0809dd88fa21d84e8e72a47e4faacd858cce13a2c301c86` |
| 5 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/of.md) | 85 | `declaration-track:03c3f410c301f6b7b2637b9d95ecd6ad5ec56fd9ca6086fe1547b3a2e658e256` |
| 6 | `abbrev` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/mk.md) | 93 | `declaration-track:f6d5d1943306af98889cfa42eb92f067601c550f1313c7c14c04134203d17913` |
| 7 | `abbrev` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/hommk.md) | 96 | `declaration-track:79dd14bc63e856f1eb81becc12ea58eb3e020306034369b4d8b9c0618a375d3d` |
| 8 | `lemma` | [eq_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/eq-mk.md) | 98 | `result-track:fab43839dff19292f3103919dd687040cf3f880d87cdf275dc0f5c5aa249c1f8` |
| 9 | `lemma` | [of_obj_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/of-obj-bijective.md) | 100 | `result-track:5b7115be420420b981f7b1d18c91a9fe7bcc49806244aa74c1071adea80b3a2f` |
| 10 | `lemma` | [hom_rec](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/hom-rec.md) | 109 | `result-track:1b1e31152fec4427975429e844d63e484280a9883d975cdd0f75d57fb6df69b6` |
| 11 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/lift.md) | 132 | `declaration-track:f904e7bf5a5c1775709cf25537a2e52fa5516dfe12481ab1e40b24e9e7711a51` |
| 12 | `theorem` | [lift_spec](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/lift-spec.md) | 140 | `result-track:9473b81207bf51c954d4e428d8d1b08c75dfd3430e3b7ddd1936127836267a47` |
| 13 | `lemma` | [lift_obj_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/lift-obj-mk.md) | 148 | `result-track:f335fb97b6b612e7adcb026a1e9b9bc5a7bde0ffaadc911b319cd993086ce334` |
| 14 | `lemma` | [lift_map_homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/lift-map-hommk.md) | 154 | `result-track:922650c2ce7271341f7deb44f67824a8cad86523a5fc02d43855b041e049b52f` |
| 15 | `theorem` | [lift_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/lift-unique-source-edition-2.md) | 158 | `result-track:bb14f42a5adb9a13671210fe192ca5ba7ac98be12c120a822a3f63cae9601b68` |
| 16 | `lemma` | [lift_unique'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/lift-unique.md) | 164 | `result-track:66e935184a066b0a55cf010cdff6a474893216e6aae681a1875c9af1d0ab306d` |
| 17 | `theorem` | [lift_id_comp_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/lift-id-comp-of.md) | 169 | `result-track:ea15a5b5585bebcf9d7bb68370f5adc4fae15924539c483b68a949c394eaefd0` |
| 18 | `theorem` | [lift_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/lift-comp.md) | 174 | `result-track:383b77cf4db1d085e3d1327354c736ff0710b7ea67119471fc730beddd2311b1` |
| 19 | `def` | [strictUniversalPropertyFixedTarget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/strictuniversalpropertyfixedtarget.md) | 181 | `declaration-track:5fde7857415a49741b77a8ffb699590841e2e9df45971cb661092b5fd9f3c7a2` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 190 | `declaration-track:c3e384615c60d439bb1dc67801b9c65d0b598b5daf3851f2d18a1b4a82dcc46d` |
| 21 | `def` | [liftNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/liftnatiso.md) | 195 | `declaration-track:cc25e03645e97692f27f448834470a1318fa37833e7aeb5750b4a52502a54e03` |
| 22 | `lemma` | [liftNatIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/liftnatiso-hom-app.md) | 199 | `result-track:b9215056e7f80d2a0a5cb8a188e64c1588ef71d3e034da6efc537058b6475751` |
| 23 | `lemma` | [liftNatIso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/liftnatiso-inv-app.md) | 204 | `result-track:b0a3b1f1d246e09ee9c9c0afe2e3c4b56d5db0c3ee35cf43a4a396ced02a5e29` |
| 24 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/map.md) | 215 | `declaration-track:8219dd5779e455278f858ea6e8526dbc66bfd0c9d9ffc613e8e75e5f5f1e7f26` |
| 25 | `lemma` | [of_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/of-comp-map.md) | 218 | `result-track:4c6d00236fde458a39a92a61ec3ef210f2ca585c066120086551b4e4277b11b0` |
| 26 | `def` | [ofCompMapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/ofcompmapiso.md) | 221 | `declaration-track:2c92b553c4fb66ef917858021b9ab0e110ee8fcda915a0a857bc3746b44eeb76` |
| 27 | `def` | [mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/mapid.md) | 225 | `declaration-track:f584ec6eb44ba21e6d07c69a530a26c46a48dbc21874dab89d132992583938c5` |
| 28 | `lemma` | [mapId_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/mapid-hom-app.md) | 229 | `result-track:28e9490eb3688e77fcf370f2229b498ed019ffc9a80903fccd3a45f1b0f2141d` |
| 29 | `lemma` | [mapId_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/mapid-inv-app.md) | 233 | `result-track:c6324bc1036ff97a4cd0285137e4f1d97a7e6a6a5af82c90d83a24a9f6ef411d` |
| 30 | `theorem` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/map-id.md) | 237 | `result-track:82d8a9b0d78b3416ab67eb474d3725c4cbc7f9163067edf18311da0c1f16259a` |
| 31 | `def` | [mapComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/mapcomp.md) | 241 | `declaration-track:054da3fe03ece7767a05114fc05945d59df2bc7990f754b169031bc41e4dd345` |
| 32 | `lemma` | [mapComp_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/mapcomp-hom-app.md) | 245 | `result-track:0ec3e784610e771ddaeeeb881c8c2c78b976852375c090f02db1b63233ea27fe` |
| 33 | `lemma` | [mapComp_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/mapcomp-inv-app.md) | 249 | `result-track:6c53328750fe7b95bcba255cf4b483f998c736f27a4b117ea9ed028c79847666` |
| 34 | `theorem` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/map-comp.md) | 252 | `result-track:1d609d3444b7c11d4470115170195cb16c7bcb222eee9b149d4bf4a5610ea391` |
| 35 | `lemma` | [map_obj_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/map-obj-mk.md) | 256 | `result-track:c22415567315c1343a6805cc36c4ea4212a578a7dc1abc634387d7d7259fe880` |
| 36 | `lemma` | [map_map_homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/map-map-hommk.md) | 259 | `result-track:2a6b5029e2ae330d44c66babbc84989a0e0beacab169c389d236cd5e9ea11dff` |
| 37 | `lemma` | [map_comp_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/map-comp-lift.md) | 264 | `result-track:0bc49ee4b5937db833e6199f199a4c64c0035fd03c077aebf7b401acf19146a9` |
| 38 | `def` | [mapCompLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/mapcomplift.md) | 269 | `declaration-track:dded8d1b5666398c94eba175c0106a97fa19060fc883cb1905c5f7aa6b0bafdc` |
| 39 | `lemma` | [mapCompLift_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/mapcomplift-hom-app.md) | 273 | `result-track:17d7a0e3c58e8ccb2a7a63abb1db2752d463f979f61c7687647723a6100dda70` |
| 40 | `lemma` | [mapCompLift_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/mapcomplift-inv-app.md) | 277 | `result-track:3a35fe122d1c25c6c2f67668ac3e36d49bc6352660663c9202517b317c57a9de` |
| 41 | `def` | [functorEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/functorequiv.md) | 284 | `declaration-track:ce768a0b98eaaac0282aa1f8178b4cfbc42cf36577d6b2d0f0e65c1cdd7af9bc` |
| 42 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/free.md) | 298 | `declaration-track:a1a118a3d2be384fcd4f90e0b8ccf9e81755a2a4e95891db9c059c03df8f7bcd` |
| 43 | `lemma` | [free_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/free-obj.md) | 305 | `result-track:65b47684f1e958516273f3c0134c9a874e11c8e55ab098c81175750477cf3cdd` |
| 44 | `lemma` | [free_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/free-map.md) | 309 | `result-track:5583e136abec1a46ee1302b762f4ed2d3e4a85bc9e1b3d8c759560ba8f1f7b0c` |
| 45 | `def` | [freeForgetAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/freeforgetadjunction.md) | 313 | `declaration-track:2abc6092a3a70c4515a72ab913b9bab85cdb624b2abc5789de06753d0b8c806a` |
| 46 | `lemma` | [freeForgetAdjunction_homEquiv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/freeforgetadjunction-homequiv-apply.md) | 322 | `result-track:155da0c5fe65dd896f5575f135c2448f98bbad352ee63206de03f2d0d38dc7d6` |
| 47 | `lemma` | [freeForgetAdjunction_homEquiv_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/freeforgetadjunction-homequiv-symm-apply.md) | 327 | `result-track:b4d48e9e650b1528f228bbf38a2c62c35d6ca770f1a4f53ae5617406d6e15c8b` |
| 48 | `lemma` | [freeForgetAdjunction_unit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/freeforgetadjunction-unit-app.md) | 332 | `result-track:e1698ab447da3a63d2cc6c0064c4eed9fdf82740054c23b76a9ea1bf5d0c41b7` |
| 49 | `lemma` | [freeForgetAdjunction_counit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/freeforgetadjunction-counit-app.md) | 337 | `result-track:8e56a6770ebdec514be78a6c3ecc976428594f246eacdfafd57d4dc490e90b88` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FreeGroupoidOfCategoryNamespacedPublic.lean/declarations/instance.md) | 341 | `declaration-track:568b734dfe95e692edbf1b4950a3576be0f24b400a8facb2daceb714c21b3f1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fad6222b62a4e4786d2ba8d623a4f6ed1c41c15e9aca635991b8cccb5554d8a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoidOfCategory/Variant513281e1e84e364912cced03d9c80422dc70ff52daef854c12dd3f6989ae5541.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoidOfCategory/Variant513281e1e84e364912cced03d9c80422dc70ff52daef854c12dd3f6989ae5541.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

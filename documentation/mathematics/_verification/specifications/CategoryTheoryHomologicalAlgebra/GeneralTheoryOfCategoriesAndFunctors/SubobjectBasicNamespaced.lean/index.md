# Verification target: Subobject Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de190f825e76cf7d4a33e92e1272b700d9ea882d",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de190f825e76cf7d4a33e92e1272b700d9ea882d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.MonoOver` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subobject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/subobject.md) | 106 | `declaration-track:ff129d781f019403f1803776038526357372a4636ac18dd9102d413caf1ec2fe` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 110 | `declaration-track:3d8b285562bbf070e8f110e08aa8df1170aefa90cede81b9e490147d56f541da` |
| 3 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mk.md) | 119 | `declaration-track:2c986603676792ad969b2a4352994922a5de92f6b14544b81baf067a712170f0` |
| 4 | `theorem` | [ind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ind-source-edition-2.md) | 127 | `result-track:cdca26e404fa870494f1a44f2994058c115bc1f0ef1f3ccafe05c409706d25d6` |
| 5 | `theorem` | [ind₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ind.md) | 134 | `result-track:ab6f0cbacb8d72d3ad8b64b9f6a509b89807035906d0d89f97de3354102eb7de` |
| 6 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/lift.md) | 147 | `declaration-track:be3b344b0f98a746e1db0bb1895b182720e849884166217ca3a080ccc4cdea93` |
| 7 | `theorem` | [lift_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/lift-mk.md) | 157 | `result-track:41544ad7a79442f55628c95fbb699a2c865ade58b3fbe8a41ddbc15a08017540` |
| 8 | `def` | [equivMonoOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/equivmonoover.md) | 165 | `declaration-track:d4dec650446543e4b24bd55b4435c45d31b30673a662f0169c75bb3548ecfd1a` |
| 9 | `def` | [representative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/representative.md) | 171 | `declaration-track:b86073efff9eac00d336019b5afcbb13a574e7db54682d336c731ecdbec05da2` |
| 10 | `def` | [representativeIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/representativeiso.md) | 179 | `declaration-track:b252ecb647cda876227de96781ac409a54dbecc6c16f673f5b7013cc1d1ecfd6` |
| 11 | `def` | [underlying](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/underlying.md) | 188 | `declaration-track:468d236e4b0c0768d40f9afb888f53698243ef346824346a6bded726a20214e1` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/instance.md) | 192 | `declaration-track:07ccab04e492f4545a2fa6c66af3310710ee379ddc084ba7fb597c418734e583` |
| 13 | `def` | [underlyingIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/underlyingiso.md) | 204 | `declaration-track:5f23b1ad9ae141fbcfb5dd8a03bf8b1de171364ea946e37f24bb050a02054880` |
| 14 | `def` | [arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/arrow.md) | 210 | `declaration-track:6d34d6315031c35c43aca49b64cb82386244ed34d66bcb0a29ac02b74b87b0aa` |
| 15 | `instance` | [arrow_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/arrow-mono.md) | 214 | `declaration-track:f7b0f59c6752ecefb33cdbb68e1a70e4f4d475d8ddd32aa4dae16a123702ffcd` |
| 16 | `theorem` | [arrow_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/arrow-congr.md) | 219 | `result-track:f457f0fdd3ef7bfc8d48933a34d273dbf5f79406d68274a52b4258d511f63e3b` |
| 17 | `theorem` | [representative_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/representative-coe.md) | 226 | `result-track:f285368271f3e65a2a0451c398444fe4cc7eac6f5f9fd0203178c41811f8f8d1` |
| 18 | `theorem` | [representative_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/representative-arrow.md) | 231 | `result-track:92083708d0a86be6a998db88dd0bd2f95f47dec24159191c4893107f564da5ef` |
| 19 | `theorem` | [underlying_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/underlying-arrow.md) | 236 | `result-track:d191432ef3f2acca08e8581fa3d96a9c94acd53da1d8387ceacc408e5c3c3edf` |
| 20 | `theorem` | [underlyingIso_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/underlyingiso-arrow.md) | 242 | `result-track:d3719f55eb0a695d21da1623d7ca2fd714bf231203aee827d1305fe5cb46578a` |
| 21 | `theorem` | [underlyingIso_hom_comp_eq_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/underlyingiso-hom-comp-eq-mk.md) | 248 | `result-track:86f4ec06a542a81ec271f987f1d238f0555fe6d7f19585a95f998bf1b8ceafcd` |
| 22 | `theorem` | [eq_of_comp_arrow_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/eq-of-comp-arrow-eq.md) | 256 | `result-track:0c3436730c8aceeb7f02e7ef0a83bd4a277407e9443f0e60ca8a2ce210459754` |
| 23 | `theorem` | [mk_le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mk-le-mk-of-comm.md) | 261 | `result-track:809d0175b7b730f0c170885067da385c4cf3e6c54564dc3df3806fccc806870d` |
| 24 | `theorem` | [mk_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mk-arrow.md) | 267 | `result-track:41cdad33fe0a313ebafbb2f63cdd9996c5b890a415b20beda830cb3ac3efc98e` |
| 25 | `theorem` | [le_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/le-of-comm.md) | 273 | `result-track:36058f77532d6bc66446c3837a62f5e590d8d1a5f6b1e2457c5f1b3fd65edd50` |
| 26 | `theorem` | [le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/le-mk-of-comm.md) | 278 | `result-track:e1961206182e3e1547c11b038b1ce535fbf0edbc41858615e6e98047e977b80b` |
| 27 | `theorem` | [mk_le_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mk-le-of-comm.md) | 283 | `result-track:161bbb17b66fe217cbac3c1fa030dd73eb94c19cbc81ba92a0aa726ff97f9bfa` |
| 28 | `theorem` | [eq_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/eq-of-comm.md) | 291 | `result-track:f3261ab25d6d029f1948c1a7dd22c6d2dfdec5425d84c726038afe20bad414d3` |
| 29 | `theorem` | [eq_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/eq-mk-of-comm.md) | 299 | `result-track:fb82cb247cdb4a5ad77dceff6dfd661d5db2c2946167dc39538e841096a0fd5b` |
| 30 | `theorem` | [mk_eq_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mk-eq-of-comm.md) | 307 | `result-track:d57ced77b1810160e5379dc77afda9143279f4d62bba815faadad63491cb9beb` |
| 31 | `theorem` | [mk_eq_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mk-eq-mk-of-comm.md) | 315 | `result-track:b617b568cbae579156d7c34a5c436c86a696060a25f8d5e755bac345a40f0586` |
| 32 | `def` | [ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofle.md) | 324 | `declaration-track:451bcc45b550955e62b9b103e5200ed018a817a79817bc41c7702c8d064d1d68` |
| 33 | `theorem` | [ofLE_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofle-arrow.md) | 329 | `result-track:dfe3cfba0f9dd59d231c0f68ab409cf67643a6d6a2a648a5c3c06e6638b570b8` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 333 | `declaration-track:c8c5b0e75f505b901f6afe3bac022287f137e8315d4d3f7d891264853ffc9fa9` |
| 35 | `theorem` | [ofLE_mk_le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofle-mk-le-mk-of-comm.md) | 340 | `result-track:09d1ef1af2962e29e738038c7ab84429b2b404e21a762ee08ccb59af94051e0a` |
| 36 | `def` | [ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/oflemk.md) | 348 | `declaration-track:b14762f6b8baa9ad365d0e348fd9d686b4bd4da6ec7001b6a100fe988eab6787` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 352 | `declaration-track:b34e82d2505dd8770f62565447e4f067e5af529a5004fbb8932a350c6de2a2b8` |
| 38 | `theorem` | [ofLEMk_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/oflemk-comp.md) | 358 | `result-track:ca538fdc3a992c35b8c37ac114ce6c6b5bd0cb997133f78f445dea7db65c33f4` |
| 39 | `def` | [ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofmkle.md) | 363 | `declaration-track:1442345f0a09da8b96db7284fb219d2626b88fec216493aa25684babf64293ff` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 367 | `declaration-track:0f0467a15cb8c7801d309a4ffac54dbb65c587f9ff07cf2b96653cd61b446caf` |
| 41 | `theorem` | [ofMkLE_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofmkle-arrow.md) | 373 | `result-track:28a8afef07ad4fe5c8883eb01ef2c3fd49b6fa290568f1813a2b0be6b9bd9796` |
| 42 | `def` | [ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofmklemk.md) | 378 | `declaration-track:3f5b74e726b743e068328900ff958965859c7bf626db58c17bcaf469a04547ff` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 383 | `declaration-track:43263270300df9123bd46fc27eeca27af5ff5964343a4faec7b4ac149b600634` |
| 44 | `theorem` | [ofMkLEMk_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofmklemk-comp.md) | 389 | `result-track:c93666c6e8df1b73b51a24032de21b0844cc9546c5bf63aa28da7a5673bb46c2` |
| 45 | `theorem` | [ofLE_comp_ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofle-comp-ofle.md) | 394 | `result-track:7a741b78c185c022566b57a72b39c7616445c5365b8ace7ae76d3a15fcd08f1b` |
| 46 | `theorem` | [ofLE_comp_ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofle-comp-oflemk.md) | 401 | `result-track:bbbcbffa8887cf24f685554e80d462520b901261ad4b85483bf316e657882b4b` |
| 47 | `theorem` | [ofLEMk_comp_ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/oflemk-comp-ofmkle.md) | 408 | `result-track:6be0acfe74ba409a869597ba3a0988c570214722b52dc6ad8cce7f9160f3846b` |
| 48 | `theorem` | [ofLEMk_comp_ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/oflemk-comp-ofmklemk.md) | 415 | `result-track:a71c4d0335ba7e2ed448cad73f8cfcbbd58dc0ffcb4c84b8163f3c61255e8a6b` |
| 49 | `theorem` | [ofMkLE_comp_ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofmkle-comp-ofle.md) | 424 | `result-track:7bf6d186b528b6de958325fb9ff72b10a8eb2b5e6a3c4dcc290eeeccc750e661` |
| 50 | `theorem` | [ofMkLE_comp_ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofmkle-comp-oflemk.md) | 432 | `result-track:9fc6d90770c764a9b5481f8f2e2204154b80edc6987880d7611de68a35b62858` |
| 51 | `theorem` | [ofMkLEMk_comp_ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofmklemk-comp-ofmkle.md) | 440 | `result-track:621dca77db869527acc3ab4348bb14497e7e4a3604b6f8ea7892bba3608e2852` |
| 52 | `theorem` | [ofMkLEMk_comp_ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofmklemk-comp-ofmklemk.md) | 449 | `result-track:458a1b6975386a673245d59589d01d722d150577e16f3c8176f4050e0ed5608d` |
| 53 | `theorem` | [ofLE_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofle-refl.md) | 458 | `result-track:8143ef0666530648d4f575f023508f351975b26518e989c590ec74794c0fdefd` |
| 54 | `theorem` | [ofMkLEMk_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/ofmklemk-refl.md) | 464 | `result-track:fe65f0e6e630df3f66b14c7b62cd12e02dcf1fa4a3efe424750b436a90b1785d` |
| 55 | `def` | [isoOfEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/isoofeq.md) | 473 | `declaration-track:79a119d56a73e78ee0a49946d46430f48bb1d317869c24386fe508c45c45ad7a` |
| 56 | `def` | [isoOfEqMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/isoofeqmk.md) | 480 | `declaration-track:a62193174cdd7b933f4064261c763949153ce38627ee4e8d52dd7bab8942715a` |
| 57 | `def` | [isoOfMkEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/isoofmkeq.md) | 487 | `declaration-track:08757998252510ad816bd64f4ab84bfde4adf53364a4b48c52c7273b526fcb61` |
| 58 | `def` | [isoOfMkEqMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/isoofmkeqmk.md) | 494 | `declaration-track:ef9a75c93b80451387869b108314296ff3688099f150083806cb26ebbe59f4bd` |
| 59 | `def` | [lower](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/lower-source-edition-2.md) | 508 | `declaration-track:960d5bb99dc865a812d3124654c38f6f331cc43d548ebe72ca503c1cc500fd37` |
| 60 | `theorem` | [lower_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/lower-iso.md) | 515 | `result-track:63ce82baa52c35879bfd82f2122cdf4d4d3d0b6f31a5a3fb7ae65c4e95c8ebc8` |
| 61 | `def` | [lower₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/lower.md) | 520 | `declaration-track:6c077d61190cdc980d79fd37b830fa798a4e8019b09054ee53c9deac9348d567` |
| 62 | `theorem` | [lower_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/lower-comm.md) | 525 | `result-track:e20fb913f6303d60fc264af4a746381dc4d129acf218ca8217e27bab3eed6d50` |
| 63 | `def` | [lowerAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/loweradjunction.md) | 532 | `declaration-track:35be6781ab0de35138a92b722a7c7c5a2bcd91e973f8c2f0d6e2d4d8b4c86da5` |
| 64 | `def` | [lowerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/lowerequivalence.md) | 540 | `declaration-track:0ad333ceeae70967b9a0d557bc4e2964e42911d46e6485744ce0d32526a29a30` |
| 65 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/pullback.md) | 561 | `declaration-track:79db15ab80dfff2d3fdc2356170a0938e529a427d67579fe122ab0c6643867eb` |
| 66 | `theorem` | [pullback_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/pullback-id.md) | 565 | `result-track:567a10ddd58bbdadc11afe2e58303a648ee6441e7763ca200fb425809df4a3a6` |
| 67 | `theorem` | [pullback_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/pullback-comp.md) | 570 | `result-track:7ad77e17b0c1971a8cbda28760363bf1438177aa9bb67db04b0d3d1a173668ec` |
| 68 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 576 | `declaration-track:102a21c522bd79f985516d209a863e024eeced92c0f14d92346a8060fb7dbf1f` |
| 69 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/map.md) | 585 | `declaration-track:fd272218e2955b0fbbbf494cdcef134d049faa84abfc3ffbaca292612a434507` |
| 70 | `theorem` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/map-id.md) | 589 | `result-track:b82eae404b2d7e5b1851bc6f3a980d028557049b3b4edcf5d77118a074eb4cf8` |
| 71 | `theorem` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/map-comp.md) | 594 | `result-track:9beb97db4cd3e5427a12de7954169e23fadbad4eee072eda50f01ac203d979d3` |
| 72 | `def` | [mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mapiso.md) | 601 | `declaration-track:0a20385881bd542bf160d76144acf7e4aca7dabc7e53f729c6e92840eef18ef6` |
| 73 | `def` | [mapIsoToOrderIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mapisotoorderiso.md) | 610 | `declaration-track:061ed819516bdc3ad2375944043feed82c448d072358e9c138f9c6a6f2794358` |
| 74 | `theorem` | [mapIsoToOrderIso_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mapisotoorderiso-apply.md) | 629 | `result-track:462d5b862bc86c502ad4b238c5de21e2284d428ad624ac956cc56047421e66b0` |
| 75 | `theorem` | [mapIsoToOrderIso_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mapisotoorderiso-symm-apply.md) | 635 | `result-track:3cd343d94f79265b8f3e0e1b74c9fb00e668a541ce263eaa059f6a19457f1806` |
| 76 | `def` | [mapPullbackAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/mappullbackadj.md) | 642 | `declaration-track:938fab2bee4db5c053964f7752e417969987758d79b0e95c044ef52e54981d92` |
| 77 | `theorem` | [pullback_map_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/pullback-map-self.md) | 647 | `result-track:7fc752a9ba1710130c7a02ebec1c329f03d09947bbf07fb319f58ccbf0bc3436` |
| 78 | `theorem` | [map_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/map-pullback.md) | 653 | `result-track:a4ced98de3efcc239204f6b2d65ac6b7565fc2de803be6a02da036f2a5bdfdc4` |
| 79 | `def` | [«exists»](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/exists.md) | 688 | `declaration-track:86100642ae64edd0f55426ef6c4684550852de0c6d963254d44fd3952ba1ce98` |
| 80 | `theorem` | [exists_iso_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/exists-iso-map.md) | 694 | `result-track:4c47556387fd0d24d00fecebd2deab756bd4f4379aa12f5a62bac2b8e6c093b8` |
| 81 | `def` | [existsPullbackAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicNamespaced.lean/declarations/existspullbackadj.md) | 701 | `declaration-track:dc086bb7f9acb862963a1ca3f42043c47e60e8d883c826d1ead94a75e6b3bd89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3fcd4b8585a64435f654669e441cd565bec374b876afcb5387c0a6951c9b0461 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

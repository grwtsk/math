# Verification target: Mon Cat Basic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "226ef3df782b8137f53acded5b429470c7b94948",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant42d0ae9c774b7f70cb32de82d27fbd3a674d912a9f88739cc106c285a32b9efe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `226ef3df782b8137f53acded5b429470c7b94948`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant42d0ae9c774b7f70cb32de82d27fbd3a674d912a9f88739cc106c285a32b9efe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant42d0ae9c774b7f70cb32de82d27fbd3a674d912a9f88739cc106c285a32b9efe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.PUnit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ULift` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/addmoncat.md) | 39 | `declaration-track:fa4be150caf1d8fa25d31554641a7b1ae638745476742f7d335316abbc761d9a` |
| 2 | `structure` | [MonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/moncat.md) | 46 | `declaration-track:9b756f40dd9b42386cba3b4d1ca544132ce0b7958fad615bb97f86f8cf369c7e` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-10.md) | 60 | `declaration-track:f145f347fac97e09e758fd37bfcb238f5d34ad69b0c317eaa7c85f4a74a7424e` |
| 4 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/of.md) | 67 | `declaration-track:66c05299ccdc42eca41262c8b1be815da6892a168449a951ced1e8eb089eb8b6` |
| 5 | `structure` | [AddMonCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/addmoncat-hom.md) | 73 | `declaration-track:8329e223e847a528c49e5b8c97b8bc2c3b54e737ac36f126bb12ddced119dd1e` |
| 6 | `structure` | [MonCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/moncat-hom.md) | 80 | `declaration-track:5b91b6093044c0b611e08ef896e441fd63c9a234d5de57cb8ea254c161d2c035` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-5.md) | 90 | `declaration-track:88bfe97b9e7ab78fc37c7fab52600fbbd8b09dee0f839cef69b8d402b7013c5b` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-7.md) | 96 | `declaration-track:bc9c695d30fe95e76c086d358c5810ee538d2a90ec1e1f3d1b7bb78fb5f5b59c` |
| 9 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-hom.md) | 102 | `declaration-track:59851728a64b95f093234734777069971f73007a900198ee9d1f9eef837cd531` |
| 10 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ofhom.md) | 107 | `declaration-track:704918a20bbbe499a134951e64593f858cfb02b3a994490fb96b6e25cfc61d25` |
| 11 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-simps-hom-source-edition-2.md) | 112 | `declaration-track:f5adcb93def55242f8b53d7f3af8a2cdc3944f050df26385a6904a4733482e92` |
| 12 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/coe-id.md) | 123 | `result-track:2ca505e9a979490518f3a4f7b1b08e7f8cdb76764a0269a05e48dac5c77eb92b` |
| 13 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/coe-comp-source-edition-2.md) | 126 | `result-track:ff1ab8b5fd9abc8a16033f00ed7034f66fee1e1675bd0fb8779fbce26ea8b1d7` |
| 14 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/forget-map.md) | 129 | `result-track:738e253d8846c5efacbd98c87c16f79350bfdd8b6493c6250a8e22591a6c7f4e` |
| 15 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ext-source-edition-2.md) | 133 | `result-track:956bc0659f5642fc5276ceb0930930f17f6c6724097602ad01cd95f6f2eb7ace` |
| 16 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/coe-of-source-edition-2.md) | 138 | `result-track:fb0be7390fbc81ed9f06d63ae9035a5646391d209f9e8cd2622569f799f90585` |
| 17 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-id-source-edition-2.md) | 141 | `result-track:a33ad4a9a4371756fd370bb72685b926b6d48eb4081f7cfb7a40317956e31c62` |
| 18 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/id-apply.md) | 145 | `result-track:62d025740a67bd233b2f26d449f8a7d21f521504b40154a758039d95e015bc2d` |
| 19 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-comp-source-edition-2.md) | 149 | `result-track:a778e44e0650b0b31724949036ee92378ec3f34cfec6adca4b20d231564d9f85` |
| 20 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/comp-apply.md) | 154 | `result-track:3a26d6d857b4fade2e180d483314a54e7413c6776017dc9b9bb3858f3d2f57a4` |
| 21 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-ext-source-edition-2.md) | 158 | `result-track:b15c50768f258ee591e16fb08ade2cdc8c4fa35e31d8e9541b802942e81571b5` |
| 22 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-ofhom-source-edition-2.md) | 162 | `result-track:2bc7836976299e27ca2df52138b9b8027b5e321f531d7ffe599b0fd5ce35f491` |
| 23 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ofhom-hom-source-edition-2.md) | 166 | `result-track:fe4ffe34e69267eb6aa3af30fb71c5a58404f81e06cfe6da481f816013aaeffd` |
| 24 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ofhom-id-source-edition-2.md) | 170 | `result-track:86ca52f61c39104e528966c553137d20ef8acb99e2c76dc16b1f1da3c6ff7891` |
| 25 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ofhom-comp.md) | 173 | `result-track:2024bfa03242225a4ac37ce5300415b2d30771d45b2328b49bcdb30a6bd0ea35` |
| 26 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ofhom-apply-source-edition-2.md) | 179 | `result-track:89bb61841534534fa27a7dbfb4d2ca2694f102b9e1d92ccb07bba02779601e88` |
| 27 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/inv-hom-apply-source-edition-2.md) | 183 | `result-track:c84513ca9ef302cac6fffbb6fba9bc5b7365615b37bdf155efa04c43017c458d` |
| 28 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-inv-apply-source-edition-2.md) | 187 | `result-track:b44a9f437731775db81cd914c646f294d2f2fa103e8c80005ff6e097c90643ec` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-8.md) | 191 | `declaration-track:c97d490129e5dbdbb484bcf1b76e3ea91f830cd6d1f6a6d8a57628f666cce962` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 197 | `declaration-track:66f927e12f52bee4c01ad1eedf09297480c4a1fdd88d9cfff64676d8417a128b` |
| 31 | `lemma` | [hom_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-one.md) | 200 | `result-track:22e3a98009a751e54e6c3bcfb764787d1f7e4ef9e9a98f65014fd4f08c4a3132` |
| 32 | `lemma` | [oneHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/onehom-apply.md) | 203 | `result-track:bdffb80bcdeb675a914d7901decd4161b34b08eeedb99c2843b13c5bf2cc1c9c` |
| 33 | `lemma` | [one_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/one-of.md) | 206 | `result-track:088805b3367e77930012fd7b84a35f88590262927ebeab9224b05f92233c924b` |
| 34 | `lemma` | [mul_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/mul-of.md) | 209 | `result-track:6f5d5043d9714df692dab0c288772e20795870fa8e7f83df4b2c4ef3e6389d02` |
| 35 | `def` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/uliftfunctor.md) | 215 | `declaration-track:c70cb41533dbaf8b47d865b0156704b81e2c215171bd2763b09e6b4d3e765ec6` |
| 36 | `structure` | [AddCommMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/addcommmoncat.md) | 225 | `declaration-track:9ecb10a9c81c686223c6f2e7fe845803a5041b9072089a26f2d177ddccb033f9` |
| 37 | `structure` | [CommMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/commmoncat.md) | 232 | `declaration-track:b01b3ac19e4410c9b79578854b872f61a47c44564471d30455884e674499eb45` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-9.md) | 246 | `declaration-track:ec22ace05a94752f54f5f2a8a45a94fbfeedb0cfb21eed9ecdc942bef345f5c8` |
| 39 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/of-source-edition-2.md) | 253 | `declaration-track:b82beb0abe7e044a099a201442028684c32a8622925e997c690cce21976374c9` |
| 40 | `structure` | [AddCommMonCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/addcommmoncat-hom.md) | 259 | `declaration-track:cc93ab6ab9c818eeb25bae0fef81b5a03de5da54aee81f17845f0cb1b79b945b` |
| 41 | `structure` | [CommMonCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/commmoncat-hom.md) | 266 | `declaration-track:697c8c611fff064cd27f9a059b7519dbb992df34935dea25b675cb4b48c18a53` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-6.md) | 276 | `declaration-track:b68c521250cab5a1e68fcabf26649166dd59df21d5f30727ea5371b81f58746f` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 282 | `declaration-track:5bcfcbc2ef802b5d17d6f9727f9f660379f1c658d2fb3ec3334953517e94ceca` |
| 44 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-hom-source-edition-2.md) | 288 | `declaration-track:97216fabedfc86578f013d2e527f9fc7a865989b0ecb88517c47d95fcfdf7bcf` |
| 45 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ofhom-source-edition-2.md) | 293 | `declaration-track:ef6403971abbea18d57c39230307f2331ebb914ff5f77f45737b57226418faad` |
| 46 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-simps-hom.md) | 298 | `declaration-track:6d7eeeb29a53cbf93489dfba3ff51534627ff5ed0051f43c7b56bbbca4163981` |
| 47 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/coe-id-source-edition-2.md) | 309 | `result-track:5c06b36f7423e9409d74025f8c918b99783f5294d77d7302e757f96a6bd67b3f` |
| 48 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/coe-comp.md) | 312 | `result-track:223222af98d4803c83797a4436162ec7b20fbcd5f401075285fe1f3b347a9a4c` |
| 49 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/forget-map-source-edition-2.md) | 315 | `result-track:e219cd45a3cfdba8d8356cb1258731d9fcd2380af3cdc1755b896155e315df40` |
| 50 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ext.md) | 320 | `result-track:0bee0951780fec240bb10e28b8fe63a1b6655c150625e6b12ea7e5fcf03f3686` |
| 51 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-id.md) | 324 | `result-track:41db328e5b8357dacd9d953861a879225bd98999526d51038ed01016d8070ba3` |
| 52 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/id-apply-source-edition-2.md) | 328 | `result-track:73fe06847657e7570c6578e5119eadbcd2ae7b85806bb7bb0b8361d6c9f497ad` |
| 53 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-comp.md) | 332 | `result-track:5a338de5a741b2e79bc8636c0b828b3bf92d72d1928fa65786193033021478ad` |
| 54 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/comp-apply-source-edition-2.md) | 337 | `result-track:f6f62ad61550de18751b9877d1f1ed2cdc4f2a2090cc73d8b7a5f8383639c0c2` |
| 55 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-ext.md) | 341 | `result-track:6055a50a8ee27df58d32a0edc337960cadfcd852f909716fc51ca946a680b123` |
| 56 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-ofhom.md) | 345 | `result-track:1381c64f64014c316ac14d7eacbeb16a84db7df57a407fad5098dbd162229951` |
| 57 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ofhom-hom.md) | 349 | `result-track:567b7a44f1b0ce249b88a2ee6661dbaaab2f95055d107db210c055419f313331` |
| 58 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ofhom-id.md) | 353 | `result-track:85956422a280dd315918288436b7c3df08a515f548dd2c2fb5d4883e526cf950` |
| 59 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ofhom-comp-source-edition-2.md) | 356 | `result-track:c533fb7205195e76b0ea702e1e489f33e6dc47a8cc8b237ff5548ecd991f0475` |
| 60 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/ofhom-apply.md) | 362 | `result-track:6e647169ff81a922c35a3befd216e078d95454ba845f66981d201cba07b3003d` |
| 61 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/inv-hom-apply.md) | 366 | `result-track:b47032ec1d92590531427f22ed8ed85171cd715d9109da59cbe760c110af94eb` |
| 62 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-inv-apply.md) | 370 | `result-track:3553d415b499b2262a79efb46d145b992d71010dd8d622edddbfeae545309032` |
| 63 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 374 | `declaration-track:3bef039bbfca0ed6d0a6e67b86f7d790991b8d8cc0fb478c13191564635afd09` |
| 64 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/coe-of.md) | 379 | `result-track:78ce56779c9521621573edf3070acf420bf48ce353316f66c93f94e508aacf9d` |
| 65 | `instance` | [hasForgetToMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hasforgettomoncat.md) | 383 | `declaration-track:6cac35648d7c926a79a957c22fbf46174b6eff281edd3d0946b9e142c49d1d75` |
| 66 | `lemma` | [coe_forget₂_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/coe-forget-obj.md) | 388 | `result-track:14550d68605e989a42748e6271386108f14f92e38cd99f09ba3160232f6b42d0` |
| 67 | `lemma` | [hom_forget₂_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/hom-forget-map.md) | 391 | `result-track:e58046ea794d36901852dbad345bf88efa453e2ae944d39dc0045f5a34f424f6` |
| 68 | `lemma` | [forget₂_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/forget-map-ofhom.md) | 395 | `result-track:4eb15ff063e09ff5881482f571e3604d92180e878a9bec56144eed621ab4b2b4` |
| 69 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/instance.md) | 400 | `declaration-track:3b7f31ceca341961099e7f2a0edb41464c388b84f2d5cb7684ba7615d7155892` |
| 70 | `def` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/uliftfunctor-source-edition-2.md) | 405 | `declaration-track:ef81931334e1eedcbe10a165a0b93ea25e16b023ce718f7862a0e9225039b431` |
| 71 | `def` | [MulEquiv.toMonCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/mulequiv-tomoncatiso.md) | 423 | `declaration-track:41c3247da6831fce3342354c989259bd97ebc0b87474cbad279ff35b20661c99` |
| 72 | `def` | [MulEquiv.toCommMonCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/mulequiv-tocommmoncatiso.md) | 435 | `declaration-track:6668fd34980ed9c7b18beae36b07cc87b7aa38084193b04e3809caee6eeaa22a` |
| 73 | `def` | [monCatIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/moncatisotomulequiv.md) | 450 | `declaration-track:d1033e18b918a8a86215a9a92edd464ee24ad092196445f590b860c1e391818f` |
| 74 | `def` | [commMonCatIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/commmoncatisotomulequiv.md) | 455 | `declaration-track:edaa3fa60eefbc737ad910e7d71a487aaf8f40e864231c15d06e7d4aa48f12ba` |
| 75 | `def` | [mulEquivIsoMonCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/mulequivisomoncatiso.md) | 463 | `declaration-track:b4288038d4039ebee47cc421c42a7902bb3a03ac0b3a167e52498f3b82fce9af` |
| 76 | `def` | [mulEquivIsoCommMonCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/mulequivisocommmoncatiso.md) | 475 | `declaration-track:ba7aa6070ad92372ec3911695b75e3e63ea7b43bbe321c673d6c915a8552f877` |
| 77 | `instance` | [MonCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/moncat-forget-reflects-isos.md) | 485 | `declaration-track:ba109e7d91a384bcb60edc4314c509a2f0a7cef1e0586907da8bac9cc2b1a2a7` |
| 78 | `instance` | [CommMonCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/commmoncat-forget-reflects-isos.md) | 492 | `declaration-track:57c6eb21af7bcfdf7c47b84d7beb5daa27fbbb70c2ad2050d28439cecc2c466b` |
| 79 | `instance` | [CommMonCat.forget₂_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/commmoncat-forget-full.md) | 502 | `declaration-track:35d3fc673d63d0ef1ef4eecebfe788cb9a9703efff0dd2021b037c7af83e0e2e` |
| 80 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/example.md) | 505 | `declaration-track:63f48297aaa2e17658b2e57fcb16b5fe16c26bbde44e49244acb98ed445bc3f4` |
| 81 | `theorem` | [MonoidHom.comp_id_monCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/monoidhom-comp-id-moncat.md) | 514 | `result-track:b7267abd9d42e661492b5feaff6157ca3dcd2cae0ed5166a536dad5bc7ffb20b` |
| 82 | `theorem` | [MonoidHom.id_monCat_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/monoidhom-id-moncat-comp.md) | 519 | `result-track:2a04a091819429fbb5980b6952c81568e4011c63f55fc981adb9e8e84e69c263` |
| 83 | `theorem` | [MonoidHom.comp_id_commMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/monoidhom-comp-id-commmoncat.md) | 525 | `result-track:a24a03c85840e3d140144e111b74fed624ab765b99fd476c553c21f9ed57f364` |
| 84 | `theorem` | [MonoidHom.id_commMonCat_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/monoidhom-id-commmoncat-comp.md) | 531 | `result-track:e26eb985c92e4a3edfb7be2c511118ee683ff4d82e6e98d3566c9cadd3dd8a98` |
| 85 | `def` | [AddMonCat.equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/addmoncat-equivalence.md) | 537 | `declaration-track:8f87be757f6735fb9ff9b981ac80b8919404bb854bb98879b355f70615bf5b40` |
| 86 | `def` | [AddCommMonCat.equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicNamespacedSourceEdition1.lean/declarations/addcommmoncat-equivalence.md) | 545 | `declaration-track:8b6a0f90797c29fb4f1aa7fcae40bf9602a190af70acd4de4e2d67459d669cf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9838d4ac1dbaf0178133d9b1ab6bf8d3d3d36f085f45a4d0d3d527ecd37d369 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant42d0ae9c774b7f70cb32de82d27fbd3a674d912a9f88739cc106c285a32b9efe.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant42d0ae9c774b7f70cb32de82d27fbd3a674d912a9f88739cc106c285a32b9efe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

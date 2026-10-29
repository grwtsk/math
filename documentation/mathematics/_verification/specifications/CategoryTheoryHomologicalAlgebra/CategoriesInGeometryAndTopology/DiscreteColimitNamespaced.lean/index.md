# Verification target: Discrete Colimit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b305bc999d85879dbfbfd081e09e181056e58ca",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant0b3523fa78de9a00090864c3ef10b88c1f9f65b3fe0f8fd329545233f9ee9a7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b305bc999d85879dbfbfd081e09e181056e58ca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant0b3523fa78de9a00090864c3ef10b88c1f9f65b3fe0f8fd329545233f9ee9a7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant0b3523fa78de9a00090864c3ef10b88c1f9f65b3fe0f8fd329545233f9ee9a7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.Discrete.LocallyConstant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Equivalence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.Extend` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [locallyConstantPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/locallyconstantpresheaf.md) | 40 | `declaration-track:12b66151c018d867c3ed1c95b7fdc1d0dc1df9891012390054930e825fe20d99` |
| 2 | `def` | [isColimitLocallyConstantPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/iscolimitlocallyconstantpresheaf.md) | 47 | `declaration-track:635f4789e57749f0493c2c23b12c7f22d90dae76117cfedd8c60550df3707401` |
| 3 | `lemma` | [isColimitLocallyConstantPresheaf_desc_apply](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/iscolimitlocallyconstantpresheaf-desc-apply.md) | 67 | `result-track:76b797d977d40f76980bf37192bd41c9e648e184ddb00751006a00ffb9504ec3` |
| 4 | `def` | [isColimitLocallyConstantPresheafDiagram](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/iscolimitlocallyconstantpresheafdiagram-source-edition-2.md) | 76 | `declaration-track:f683852f4a696754249f161991695429df134312752bfe9c9f20e4d4aab53e5c` |
| 5 | `lemma` | [isColimitLocallyConstantPresheafDiagram_desc_apply](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/iscolimitlocallyconstantpresheafdiagram-desc-apply.md) | 81 | `result-track:6d9dc70c2d8d423bfe051b3ad0d9de2cde61b144336a59ccd5e66f42a0da9e6b` |
| 6 | `abbrev` | [lanPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheaf.md) | 94 | `declaration-track:afa79f2cf181362199e9f86db6b59281d26444a2c6e860b4ede4ecfaf86fb685` |
| 7 | `def` | [lanPresheafExt](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafext-source-edition-2.md) | 101 | `declaration-track:ce21d28f48a86100fcdc2d238a2a4bcd2eb8d83afb9e6330ae5c306be98d2270` |
| 8 | `lemma` | [lanPresheafExt_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafext-hom.md) | 107 | `result-track:2665564226e9530c74d7e705b955ee45013470587ee94b913689cee96e62e292` |
| 9 | `lemma` | [lanPresheafExt_inv](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafext-inv.md) | 116 | `result-track:0f6cc5bc0755fe8680d5ccae6a63d419ea04fbac0dd97cb7510808a00b3b8230` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/instance-source-edition-4.md) | 126 | `declaration-track:82a1a5f087c8b8fafae9bf529694e0cd9dad4c456f2d6fb542dd2b6c13a0cda8` |
| 11 | `def` | [lanPresheafIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafiso-source-edition-2.md) | 133 | `declaration-track:fc2a406fdeca69aec1b956caaab05876cf2562a30be2d36e44af177f60fe91c7` |
| 12 | `lemma` | [lanPresheafIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafiso-hom.md) | 139 | `result-track:6dde8537ea6a542a036522ee3ae8af70e7a295ad034bdaacb847abbc93763c81` |
| 13 | `def` | [lanPresheafNatIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafnatiso.md) | 145 | `declaration-track:cc4b401eeb055e48e4d5cf74cbaa548151dca8be3a12ffbc82653cc0f918866f` |
| 14 | `lemma` | [lanPresheafNatIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafnatiso-hom-app-source-edition-2.md) | 151 | `result-track:d3454d3dee68d4eb8b9ab76f8ed53a1cb996541d8295a873c79639514d0ea216` |
| 15 | `def` | [lanSheafProfinite](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lansheafprofinite.md) | 159 | `declaration-track:58e4d77f0c523ba01aa63bec3789f455e18696f7b2dedbdf5e48c837fc16f4cc` |
| 16 | `def` | [lanCondensedSet](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lancondensedset.md) | 169 | `declaration-track:c3866e5608d3a9736b74ba7d06fb2389b5077a22d5b9374bcbd3886587811033` |
| 17 | `def` | [finYoneda](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/finyoneda.md) | 179 | `declaration-track:2b324e63a67bdf1ed5fa4cdea544e74d2f9469710446e7ec3fc8e805b748153a` |
| 18 | `def` | [locallyConstantIsoFinYoneda](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/locallyconstantisofinyoneda.md) | 185 | `declaration-track:2d5e0a9750de9b305a50a22231571e1c861f6d953dcf8a606767381a5770225f` |
| 19 | `def` | [fintypeCatAsCofan](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/fintypecatascofan-source-edition-2.md) | 193 | `declaration-track:51e28eea449f3c965fe98f2f5624d50ea81f5aa926683e8d9caa9845d6bf68d4` |
| 20 | `def` | [fintypeCatAsCofanIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/fintypecatascofaniscolimit-source-edition-2.md) | 198 | `declaration-track:7afa889e93fe4e15c454b9491d5fe7fac4e441e795d8b11bc46a40210bffe39b` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/instance.md) | 207 | `declaration-track:1cb5ac0651b47250103704e61ff3415b4ddef9f5a6d0cd2402063b6062fb5e27` |
| 22 | `def` | [isoFinYonedaComponents](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isofinyonedacomponents-source-edition-2.md) | 215 | `declaration-track:dea4ec76405f948e2c45dc6a2d8b8cc203654659f7977ccd51be6069f1710570` |
| 23 | `lemma` | [isoFinYonedaComponents_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isofinyonedacomponents-hom-apply.md) | 221 | `result-track:636b21f4989f0068401d5c44802db4d2dd480febe0b9462138a8c8befa7e664f` |
| 24 | `lemma` | [isoFinYonedaComponents_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isofinyonedacomponents-inv-comp.md) | 224 | `result-track:0223943ebec318bfd378642e63fce4875c214b48b69431015f2239e5c7179c6c` |
| 25 | `def` | [isoFinYoneda](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isofinyoneda-source-edition-2.md) | 239 | `declaration-track:c44413bdebf33f9a670dca8a45f637812fe98e76da1ef978990796a8496a3ce3` |
| 26 | `def` | [isoLocallyConstantOfIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isolocallyconstantofiscolimit.md) | 251 | `declaration-track:9f7588d56f32cd90de491d1f10970dda4cfc9f0561afc39bcb0cedd4528c4494` |
| 27 | `lemma` | [isoLocallyConstantOfIsColimit_inv](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isolocallyconstantofiscolimit-inv.md) | 258 | `result-track:328a6c270e7914692ffbbfa7268d174156697f5109d02e663c1addda3aa0314f` |
| 28 | `abbrev` | [locallyConstantPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/locallyconstantpresheaf-source-edition-2.md) | 306 | `declaration-track:b9b6a3c548e9738d71979b8ed72fbe263bcde19679e471204b2b0e5d7f981fc6` |
| 29 | `def` | [isColimitLocallyConstantPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/iscolimitlocallyconstantpresheaf-source-edition-2.md) | 313 | `declaration-track:a547f6321fa51c6579c437dcded6c046aa50c7dfdae940176ca8d302db244918` |
| 30 | `lemma` | [isColimitLocallyConstantPresheaf_desc_apply](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/iscolimitlocallyconstantpresheaf-desc-apply-source-edition-2.md) | 334 | `result-track:9516ce399a05d0f568634f89f3ca46bee79073bce2eb816dc96d5bf7940df2a5` |
| 31 | `def` | [isColimitLocallyConstantPresheafDiagram](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/iscolimitlocallyconstantpresheafdiagram.md) | 343 | `declaration-track:b86edf2c36cf28da4c2817dac70a42cdee9934334fcf5b7acb431e2ee4510630` |
| 32 | `lemma` | [isColimitLocallyConstantPresheafDiagram_desc_apply](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/iscolimitlocallyconstantpresheafdiagram-desc-apply-source-edition-2.md) | 349 | `result-track:c0ca5c61da0d94b1c7ec0a5a145935b8c825ffe0dd8035e14ed5fb905e8c61a6` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/instance-source-edition-3.md) | 360 | `declaration-track:34949d2678d962428225845cc570ac1437d6a6224bc90c76225e92d46f28d2ac` |
| 34 | `abbrev` | [lanPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheaf-source-edition-2.md) | 368 | `declaration-track:f088302e86cf1774cf4e6e4b4b4f0e21b9e1b7318903839e4b12c34e9a13e592` |
| 35 | `def` | [lanPresheafExt](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafext.md) | 375 | `declaration-track:a6016c8d6954db2ff16b6b99bfe4c9460bd8ef4a616a0bf3ef45fbc7f1bab605` |
| 36 | `lemma` | [lanPresheafExt_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafext-hom-source-edition-2.md) | 381 | `result-track:5d6ca448f3973b451258d29869e8ea43a59dd2c41ba8261105e655f07e5b0b11` |
| 37 | `lemma` | [lanPresheafExt_inv](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafext-inv-source-edition-2.md) | 390 | `result-track:89a8bded69a3ccddbc9bc0f00d1cbae3584d80f9e6db5bc5f6c8cde4bd348f5b` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/instance-source-edition-2.md) | 400 | `declaration-track:30ce578fb42a50e143cff16d8e602b2cf87f521a6b5f0c1692bbe1f91ecb2d29` |
| 39 | `def` | [lanPresheafIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafiso.md) | 407 | `declaration-track:48ec7e3893a5e9f7143ed24396a8c3321b1b2bb5691e334fa3f7acf96a6485e6` |
| 40 | `lemma` | [lanPresheafIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafiso-hom-source-edition-2.md) | 413 | `result-track:e0e0efe7836172a8d0c16f02aabe519300fd679bc49d4dd5178680367614fb13` |
| 41 | `def` | [lanPresheafNatIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafnatiso-source-edition-2.md) | 419 | `declaration-track:ed744b44c3328ef12fc9dc8c8d952e21f87415b1227f88ee8622937023015baa` |
| 42 | `lemma` | [lanPresheafNatIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanpresheafnatiso-hom-app.md) | 429 | `result-track:722b809b721bc78b6f76a9a0c8c10ac864fed32a4c1226f6edf5aeb1f5ccd082` |
| 43 | `def` | [lanLightCondSet](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/lanlightcondset.md) | 438 | `declaration-track:29388263dcb309921290f1df3a6e1395b9d027c90c69f1902a4d141ea9ed0f45` |
| 44 | `def` | [finYoneda](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/finyoneda-source-edition-2.md) | 453 | `declaration-track:659327ac7c49488eab17e02afd9c4b9a8a3e86d125acb3c917948a121a4bc28c` |
| 45 | `def` | [locallyConstantIsoFinYoneda](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/locallyconstantisofinyoneda-source-edition-2.md) | 458 | `declaration-track:e0ba2e7bafa2968297f4351f844fb8b8105e5a1eb230921908275a79b8e7c83f` |
| 46 | `def` | [fintypeCatAsCofan](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/fintypecatascofan.md) | 465 | `declaration-track:0b99383602b6b1e7be97534b0968fcfef0748ce728534fbf993cc2c3b1176d65` |
| 47 | `def` | [fintypeCatAsCofanIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/fintypecatascofaniscolimit.md) | 470 | `declaration-track:6c43f59070dc29f0dd82f14a2d659c466d4044a7c3db009b65718ac9b78c43dc` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/instance-source-edition-5.md) | 479 | `declaration-track:8f24b486a4e38cb657f8985fe45c483ed09efed66915683133d93271455c1c60` |
| 49 | `def` | [isoFinYonedaComponents](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isofinyonedacomponents.md) | 486 | `declaration-track:dd00e4ecfd8d195c7d1b4a65c3f00a440f39194a08badcec925f60b612d557f7` |
| 50 | `lemma` | [isoFinYonedaComponents_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isofinyonedacomponents-hom-apply-source-edition-2.md) | 492 | `result-track:6916d10f16b6768080d1773b46e051e7b37990d96efe87a9446aa0cd3451f318` |
| 51 | `lemma` | [isoFinYonedaComponents_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isofinyonedacomponents-inv-comp-source-edition-2.md) | 496 | `result-track:d0351fd0bfbd04cb19f45293278b543e0503cf87a55b9b039b015bac612f7c36` |
| 52 | `def` | [isoFinYoneda](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isofinyoneda.md) | 511 | `declaration-track:090dabee5dddb08dfed7d86406b87d2f438719f2c97586aa8e288a15f168e46a` |
| 53 | `def` | [isoLocallyConstantOfIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isolocallyconstantofiscolimit-source-edition-2.md) | 524 | `declaration-track:c86b91c97d606204f20627407e9434ef7ecea506b215f69795a903246a19bb12` |
| 54 | `lemma` | [isoLocallyConstantOfIsColimit_inv](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/DiscreteColimitNamespaced.lean/declarations/isolocallyconstantofiscolimit-inv-source-edition-2.md) | 532 | `result-track:34ba8a586d2eae9c481b98f9c7adb0db0c34ac16f41d967f3f605953b87b3e9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bafe2c00b8b92fd6882258143d60af3fd36aa1296ad3218d42a001693fe24b1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant0b3523fa78de9a00090864c3ef10b88c1f9f65b3fe0f8fd329545233f9ee9a7c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant0b3523fa78de9a00090864c3ef10b88c1f9f65b3fe0f8fd329545233f9ee9a7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

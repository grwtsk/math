# Verification target: Sigma Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "049f87ea8258b9dc1ca4bb19eb118da2a5ef3add",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant69d95e0c94487d6b64fdec11daaf47606464c655cc758a8bb15d219767bddfad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `049f87ea8258b9dc1ca4bb19eb118da2a5ef3add`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant69d95e0c94487d6b64fdec11daaf47606464c655cc758a8bb15d219767bddfad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant69d95e0c94487d6b64fdec11daaf47606464c655cc758a8bb15d219767bddfad.lean.json)

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
| 1 | `inductive` | [SigmaHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/sigmahom.md) | 41 | `declaration-track:c4081a3c560b76c38cc627a78fdd7c2edcba9f45c2f13005702b25aec70517ff` |
| 2 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/id.md) | 47 | `declaration-track:8f6a54751650dbe968faf010b3e9be1a714a3e52a4a4bd2ee957c21f6d3063eb` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/instance.md) | 50 | `declaration-track:073f394c7920b1d8b8255a3c81af69e901bff64a17c111553193a83e20c3c05b` |
| 4 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/comp.md) | 54 | `declaration-track:c64945297328c8a23bb6c903ed04e5dfd978ac47d7d9c768dc39ed4128ab663c` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:21e2933352b6aa824a9433baae3693823de1067d7c5b31a57b0fc733fa8abd7a` |
| 6 | `lemma` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/comp-def.md) | 63 | `result-track:f0492a8624ffd8abf1fbf486e1754cb5e4c2fd336b33ea6f2b0d8f148e0e6ce8` |
| 7 | `lemma` | [assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/assoc.md) | 66 | `result-track:eceac306d0060b653845a515cf52140e57576b6f0f9a190e184d8c4b2f1a0d59` |
| 8 | `lemma` | [id_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/id-comp.md) | 69 | `result-track:723c61a923118896b050d996ba21f267baee54687967dbbdfa23a0cf6315c89d` |
| 9 | `lemma` | [comp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/comp-id.md) | 72 | `result-track:73564827e27cb5cc1ba08f05c8087f3e47a83f8772d527e699e9664be01ee87a` |
| 10 | `instance` | [sigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/sigma.md) | 77 | `declaration-track:060ad0986276662ca09df66616b499ad08f55f2104d980a384862cd6a007e9e5` |
| 11 | `def` | [incl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/incl.md) | 84 | `declaration-track:53b34ed4357cacc16f2ea0179b905aec3348e7cccc513bce79de19806792d2c8` |
| 12 | `lemma` | [incl_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/incl-obj.md) | 89 | `result-track:79973c1c0dae12309f083b84c86dd76840fd3b75ebb2dd694bb04dd0a226884c` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 92 | `declaration-track:e324c4e705d531defe6e82b025ed8e6ee27599f827a75f2114e07c9901f85825` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 95 | `declaration-track:17ed94a0b8697d160b0ba99ec3791183d1303b234d77b3c68a1c95c210953cb2` |
| 15 | `def` | [natTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/nattrans.md) | 106 | `declaration-track:60346d03890ff7fa2e077a953c7a7e9f58a392c2d27a395a53672c66dd826580` |
| 16 | `lemma` | [natTrans_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/nattrans-app.md) | 113 | `result-track:ecc4027c780e461b0d0518aae76fff0c3c82519590f5df899a85268ef887782e` |
| 17 | `def` | [descMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/descmap.md) | 118 | `declaration-track:15601763cbbf1902556c56f78bc70dcbc57523f8ca916977985591667066b915` |
| 18 | `def` | [desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/desc.md) | 130 | `declaration-track:92e958a09ae70a78f2afbf5bc2d9e8ea313f9d0ef455a5de9d8a3432f6617239` |
| 19 | `lemma` | [desc_map_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/desc-map-mk.md) | 141 | `result-track:2b498b3c8c6e9a730a864cdaf4be08162d4e91fcd96fbf7f03a80b92e3fa1f62` |
| 20 | `def` | [inclDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/incldesc.md) | 149 | `declaration-track:e99a66d2bca658c98237fd1357ebf0fa8bc1c9e46083252dbef257c13d47d2bd` |
| 21 | `lemma` | [inclDesc_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/incldesc-hom-app.md) | 153 | `result-track:4984965260f8191a70e9424c1a011f00d52c5c87b7681dcbc676b2611e39f97e` |
| 22 | `lemma` | [inclDesc_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/incldesc-inv-app.md) | 157 | `result-track:dd7e8110b7cc7f38391e869c59d689d7ab6c873fc864f30a257035c468974905` |
| 23 | `def` | [descUniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/descuniq.md) | 163 | `declaration-track:3d2e873a63795bcd14653f213967a6b2a98705da10bee57bdd32d59568bf9e7c` |
| 24 | `lemma` | [descUniq_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/descuniq-hom-app.md) | 169 | `result-track:309093fc32168ae8ae1d025164fddf6eadebeb6cb388935f2b5665592473e65b` |
| 25 | `lemma` | [descUniq_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/descuniq-inv-app.md) | 174 | `result-track:55a396b54de2d803837bccef75a04b2bf5299b40ffa6c522a714b06a04f6de6c` |
| 26 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/natiso.md) | 183 | `declaration-track:a5da8ac0b9a704c68a234cc816b94e3ba41b1f1c34b18cb8beaac17ccce8833c` |
| 27 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/map.md) | 194 | `declaration-track:d0a59d5a4af25c4a5bea9fd5784564277d756478f45e0d0c99bc0f79f00b8b3c` |
| 28 | `lemma` | [map_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/map-obj.md) | 198 | `result-track:0759a2f94ee51b1ad2f6136f3117e6137d8398f9bc9a01f740674453bd7ed61b` |
| 29 | `lemma` | [map_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/map-map.md) | 202 | `result-track:eb06b6b625a77dc70a49e6d2009a46ad9fedbffacbdd35d719be0a1865c7c536` |
| 30 | `def` | [inclCompMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/inclcompmap.md) | 209 | `declaration-track:15768b234892a304ccef4fee2cb3324c3fa095681af5e05ef6b9c0b4cfa9642e` |
| 31 | `def` | [mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/mapid.md) | 216 | `declaration-track:45cbfb5116e3fc346fa9e7b491a2ae6d210ef8e94760d3f561e5c1bbc4b95ffb` |
| 32 | `def` | [mapComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/mapcomp.md) | 226 | `declaration-track:791529485b2df236e93e797799aeb8ef980038ccb6b2ccbbc01e9d263f3b194d` |
| 33 | `def` | [sigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/sigma-source-edition-2.md) | 239 | `declaration-track:07dec54bc3cc08609c4a47ebee8cf8cba62cb3b80ae8d8458befc124d8eea3b6` |
| 34 | `def` | [sigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicNamespacedPublic.lean/declarations/sigma-source-edition-3.md) | 251 | `declaration-track:fb68083e28e7bcb99f587ffb96a60caf7597d952a47aeb7037f146f83bda8f5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4600a4c23c76ded28fb79e739e8b82c050dae0df46ae0366c41b67bb969476ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant69d95e0c94487d6b64fdec11daaf47606464c655cc758a8bb15d219767bddfad.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant69d95e0c94487d6b64fdec11daaf47606464c655cc758a8bb15d219767bddfad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

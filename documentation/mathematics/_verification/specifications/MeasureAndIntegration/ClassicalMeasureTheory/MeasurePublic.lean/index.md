# Verification target: Measure Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b47bb8ce072504dfaf9080749c99b525d35c91b",
  "lexical_observation_count": 98,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b47bb8ce072504dfaf9080749c99b525d35c91b`.

Source path: `GRWTSK/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean.json)

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
| 1 | `theorem` | [map_mul_left_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/map-mul-left-eq-self.md) | 48 | `result-track:00ec5703ee6200ba0047ca047f3f2209babc538392639bada6cbc61a65f7d3b8` |
| 2 | `theorem` | [map_mul_right_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/map-mul-right-eq-self.md) | 53 | `result-track:39e8704ba2f328df5b7dad8191bc266956e30506d87e7046d4d7642170b10aac` |
| 3 | `instance` | [isMulLeftInvariant_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ismulleftinvariant-smul.md) | 57 | `declaration-track:ae4278a9915260d5413d03093bae044b202987303c22417e16045b6ff42cab06` |
| 4 | `instance` | [isMulRightInvariant_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ismulrightinvariant-smul.md) | 64 | `declaration-track:eff13e54547d8367945abe98693da05e997112db1434338baf13667e6d62270b` |
| 5 | `instance` | [isMulLeftInvariant_smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ismulleftinvariant-smul-nnreal.md) | 71 | `declaration-track:99e36dcdaa1218aa0af94b8943d8c24eba8c6442c3472ac953c513919cfc2494` |
| 6 | `instance` | [isMulRightInvariant_smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ismulrightinvariant-smul-nnreal.md) | 76 | `declaration-track:3c49c57db0086c79ed75d17c7ae8aeb76970b311de0cdb3a0f2c497bd9db4036` |
| 7 | `theorem` | [measurePreserving_mul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measurepreserving-mul-left-source-edition-2.md) | 86 | `result-track:c0159d9598dc79cdceab0dde89c3545b203f22d4a5e1a1561ba4cea33a6657d3` |
| 8 | `theorem` | [MeasurePreserving.mul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measurepreserving-mul-left.md) | 91 | `result-track:4fd80a3581028dcde3491c1ec2c4baa08050a6ac09d4711e66eca7008d27eba6` |
| 9 | `theorem` | [measurePreserving_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measurepreserving-mul-right.md) | 97 | `result-track:22bb5a08ef81c431eba9de5b659753a5e8cb7c75ae02e39437567b8615b244fe` |
| 10 | `theorem` | [MeasurePreserving.mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measurepreserving-mul-right-source-edition-2.md) | 102 | `result-track:eb807ffce04d578f1eab09abd0a05e5c1b16c9c0bee56f3ad0e51e728be94204` |
| 11 | `instance` | [Subgroup.smulInvariantMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/smulinvariantmeasure.md) | 108 | `declaration-track:6a578219a84a9151cd8ab3e803d9e1373bc816f1405fb7a936aa6cbcbd2e3bf8` |
| 12 | `theorem` | [forall_measure_preimage_mul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/forall-measure-preimage-mul-iff.md) | 114 | `result-track:401b77aaaee84d9ebffb1f7e6789b3faa2473767fd5aabd668d7025e56b83f62` |
| 13 | `theorem` | [forall_measure_preimage_mul_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/forall-measure-preimage-mul-right-iff.md) | 125 | `result-track:91b873f1ec6dddd493d1c9576307b0429b49e935591201bb3d8d74422f0c778c` |
| 14 | `instance` | [Measure.prod.instIsMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instismulleftinvariant-source-line-135-occurrence-2.md) | 135 | `declaration-track:06b9b4c6ca046bbbb16c547d47f099ff5f5250e81a19542010fb078ebe60f9ff` |
| 15 | `instance` | [Measure.prod.instIsMulRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instismulrightinvariant-source-line-145-occurrence-2.md) | 145 | `declaration-track:8dfe8467021769456a5f0b20a30c24cd2e9c84dc4337118b72c3d92e8c484df4` |
| 16 | `theorem` | [isMulLeftInvariant_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ismulleftinvariant-map.md) | 155 | `result-track:2ab85c3ad7a4c7146e935f1839d5acdff94be84055d092181bd8083ecac13c18` |
| 17 | `theorem` | [isMulLeftInvariant_map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ismulleftinvariant-map-smul.md) | 179 | `result-track:8ee7371a10ba69cf658b659e7e5516cf9c791e774a810536aa7e3acb9fb7ca97` |
| 18 | `theorem` | [isMulRightInvariant_map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ismulrightinvariant-map-smul.md) | 190 | `result-track:9482521d65b2beac83df2886072ec37b3fff1567dc5e54ef54e8796736d8f44f` |
| 19 | `instance` | [isMulLeftInvariant_map_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ismulleftinvariant-map-mul-right.md) | 200 | `declaration-track:b2df61107223c8c4e909e91cf93261aa9a9981d7d2d46228184c1c0065ba537d` |
| 20 | `instance` | [isMulRightInvariant_map_mul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ismulrightinvariant-map-mul-left.md) | 207 | `declaration-track:e47066055b88a8d7ef48737159539c55ca25eca32d0c65af0460dd8df1c66768` |
| 21 | `theorem` | [map_div_right_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/map-div-right-eq-self.md) | 218 | `result-track:718de99989a4786478cb88d62f80860055c71714d656b1b8e4cfc3bfe500a91d` |
| 22 | `theorem` | [measurePreserving_div_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measurepreserving-div-right.md) | 228 | `result-track:0c5f34d99dbcd7ae6306bb1ec04b14ec5ffbf140d4ffffd5e0e876fea98ca3e3` |
| 23 | `theorem` | [measure_preimage_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-preimage-mul.md) | 236 | `result-track:0053be52b3fd30e7bdea4dab23536ff4c94fa3cbd2196e0eade37d524cc6b2b7` |
| 24 | `theorem` | [measure_preimage_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-preimage-mul-right.md) | 244 | `result-track:4e2e75cff6550d0c6f51dfd65f5777f53442048cf4d486b33073e3f3ada314fd` |
| 25 | `theorem` | [map_mul_left_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/map-mul-left-ae.md) | 252 | `result-track:d9343e9d09a4b5e0c1f88b97692c54b8fc2b6c128213ba9a03ea23a232789b8c` |
| 26 | `theorem` | [map_mul_right_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/map-mul-right-ae.md) | 257 | `result-track:bea810460951374dca979b0df2e6b5d8fb1103aa8615b39d00a5ac45d1fdfa41` |
| 27 | `theorem` | [map_div_right_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/map-div-right-ae.md) | 262 | `result-track:c37651a0551bfd420cb7a512115e8a44f8bf0d85c8493b82e8fe0512dbdaa936` |
| 28 | `theorem` | [eventually_mul_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/eventually-mul-left-iff.md) | 267 | `result-track:4b7c0a0cb23256670dbd1cb83936ea7a1c53f06c97c7c45711714ef531cb5d1f` |
| 29 | `theorem` | [eventually_mul_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/eventually-mul-right-iff.md) | 273 | `result-track:d29905386be4dd930bf0e90c859009473cffd0fd7c5bb38d1d60751617626ec0` |
| 30 | `theorem` | [eventually_div_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/eventually-div-right-iff.md) | 279 | `result-track:9fd28d237926c7329e3eb9f5da43f1d927645e180824100a82dd7e7db70ab26e` |
| 31 | `lemma` | [Subgroup.index_mul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/subgroup-index-mul-measure.md) | 285 | `result-track:a0518e259a367016ac253fb1e219a07f55da940e6142b81b6d615116b54ac787` |
| 32 | `def` | [inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/inv.md) | 304 | `declaration-track:c27768750717b71601c160355f01b1b10fb5df845c3f5831459dfff6f48ce881` |
| 33 | `class` | [IsNegInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/isneginvariant.md) | 309 | `declaration-track:e8a1e617ec162a24ba1b7f2cec13e7a0b8286ab3f8e881e5e813e285e9a43475` |
| 34 | `class` | [IsInvInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/isinvinvariant.md) | 315 | `declaration-track:50c2bb9fd522cc6ddfbc97a222f31b4e04649bdd827778e933bb8c166d7529de` |
| 35 | `theorem` | [inv_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/inv-def.md) | 323 | `result-track:a365b18b8d59ab806e0ba764724390ea668c0e2b6115865734bcc473015f7822` |
| 36 | `theorem` | [inv_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/inv-eq-self.md) | 326 | `result-track:04c1c447f659826204550d369e7da7e304f45c06a244635e4d0d6bac96e76cb7` |
| 37 | `theorem` | [map_inv_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/map-inv-eq-self.md) | 330 | `result-track:0e147a086d07513477e0c64c9c7491a01af28b315b7890eefe84b1d32aeb6ffe` |
| 38 | `theorem` | [measurePreserving_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measurepreserving-inv.md) | 336 | `result-track:b93e22fcc2bd8d47b12777afc8d8848c62d89e426db057a5aed5950c26b378ba` |
| 39 | `instance` | [inv.instSFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/inv-instsfinite.md) | 340 | `declaration-track:36ec54b4af834dceab145daa08133613b6f516c929ebb5c0d489ae2461a4ee70` |
| 40 | `theorem` | [inv_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/inv-apply.md) | 350 | `result-track:f2822d370ebbf881e4dcf8a57106d80c75e0169552cf63acd646205e51535230` |
| 41 | `theorem` | [inv_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/inv-inv.md) | 354 | `result-track:1408589b7dd4c47b800b2ba3d017659afed437e159839b022145170c42086596` |
| 42 | `theorem` | [measure_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-inv.md) | 358 | `result-track:64e2561b65e5efb0ab96528c92bcfe55d289c8fcd6cd6a7400eac13c1c7b1bc6` |
| 43 | `theorem` | [measure_preimage_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-preimage-inv.md) | 362 | `result-track:0489c0165580872b8d924c59d6f4fb181ef70725cefb07e02ee73c031f209c03` |
| 44 | `instance` | [inv.instSigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/inv-instsigmafinite.md) | 367 | `declaration-track:5e1d43fc5e1cfb0970380dbee681684ab7d4188f8d237007f3c9e2532c662aa8` |
| 45 | `instance` | [inv.instIsMulRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instismulrightinvariant.md) | 377 | `declaration-track:1513b028cef797ae917d01c5df7603d1f061dba24d3a39af7128f8a61a6d4c72` |
| 46 | `instance` | [inv.instIsMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instismulleftinvariant.md) | 385 | `declaration-track:b341113069ae768a2620477e19938515e700f82c110d353c6c92eaf52d67d618` |
| 47 | `theorem` | [measurePreserving_div_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measurepreserving-div-left.md) | 393 | `result-track:7ee583dec19d1431f670d8913a1546c261b85fdc9333c8511c22579b52781cdc` |
| 48 | `theorem` | [map_div_left_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/map-div-left-eq-self.md) | 399 | `result-track:a46783df54383f0818d790b9638b5648a524b4f9770dddafe1d04b554ff434fe` |
| 49 | `theorem` | [measurePreserving_mul_right_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measurepreserving-mul-right-inv.md) | 404 | `result-track:68bfe2be3e60bf14d597ff29806a23d5403de8b0a935cbf91f7485d4c98cc2a7` |
| 50 | `theorem` | [map_mul_right_inv_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/map-mul-right-inv-eq-self.md) | 409 | `result-track:4dbce9dee4484a723f5cffe5b40b412724e39ef0f6084509ee4e8d14f65b1eb0` |
| 51 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instance-source-edition-6.md) | 424 | `declaration-track:acae08163ce2f17fdf6020be393a81a6fc328718c91c3fa20b564db84e413b65` |
| 52 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instance-source-edition-7.md) | 432 | `declaration-track:b8ee159df4ac0b0ff6be17e8474e108a49e08c8f6813e9c9b7f261e56a197cad` |
| 53 | `theorem` | [IsMulLeftInvariant.comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/comap.md) | 443 | `result-track:cb653b8549f5b0a18f17409843272d37f94ba2576106f81f26eca9195656aa8c` |
| 54 | `theorem` | [IsMulRightInvariant.comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/comap-source-line-461-occurrence-2.md) | 461 | `result-track:83f935fc79ff1b4cbd9d7ad9a53a49f122cee106cd14d4857aa5ff0cc37f165b` |
| 55 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instance-source-edition-3.md) | 483 | `declaration-track:59528b0e996bce17802028840677ca56b6b632e6b64241286e5c0eb34dd4682e` |
| 56 | `theorem` | [map_div_left_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/map-div-left-ae.md) | 489 | `result-track:93e21ade1553ebd2623aea4a977d9d675b85238b15d96f73a3054e9d56afd2f4` |
| 57 | `instance` | [Measure.IsFiniteMeasureOnCompacts.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-isfinitemeasureoncompacts-inv.md) | 502 | `declaration-track:dfc5dd900a9fec29a2a5a1c967ac3e74ba4e4d235012536a34a826081ad975ed` |
| 58 | `instance` | [Measure.IsOpenPosMeasure.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-isopenposmeasure-inv.md) | 507 | `declaration-track:81d98a1fe4353db163edb59442dc89585b489abda2e746f39b938cc0f950f50f` |
| 59 | `instance` | [Measure.Regular.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-regular-inv.md) | 512 | `declaration-track:85b753c38a2c7e48c501b6fa028a02136376e5ef174e50b48b387037b2b93688` |
| 60 | `instance` | [Measure.InnerRegular.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-innerregular-inv.md) | 516 | `declaration-track:345d47e3a30e5a5c123229fe3f26c833935beb943c9966dffb01fbdb09eab0c3` |
| 61 | `instance` | [innerRegular_map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/innerregular-map-smul.md) | 523 | `declaration-track:0c637a8926c91ba3f213d63a39642a41f42b3520ac140912006c1fd80f9d4767` |
| 62 | `instance` | [innerRegular_map_mul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/innerregular-map-mul-left.md) | 530 | `declaration-track:247a83bb39589789505d269c66fa3b3d462c5bd6b6dc578ce75a80c6b53b2403` |
| 63 | `instance` | [innerRegular_map_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/innerregular-map-mul-right.md) | 536 | `declaration-track:a93621f2d82bd825e61f0fc742820809b0f3e990f9723223ea456c32fa4d9215` |
| 64 | `theorem` | [regular_inv_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/regular-inv-iff.md) | 542 | `result-track:607ff7e80ecea79fc8c608b4b075da0eab922c42dabef45449969b2b8d912453` |
| 65 | `theorem` | [innerRegular_inv_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/innerregular-inv-iff.md) | 546 | `result-track:3d5904d4c6f79f0ebc70303d5c885bd8b3a3c2ff937039a4244ef7c8207940d7` |
| 66 | `lemma` | [eventually_nhds_one_measure_smul_sdiff_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/eventually-nhds-one-measure-smul-sdiff-lt.md) | 554 | `result-track:6aa17d4244b216bac8471cae9c860eb32b1088b2b08ac0655875bd219d017296` |
| 67 | `lemma` | [tendsto_measure_smul_sdiff_isCompact_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/tendsto-measure-smul-sdiff-iscompact-isclosed.md) | 577 | `result-track:4e6d81f450cf921b0bc4c69c38bbeaa478fa9ec1b0894ac1721efb58f8f0b01e` |
| 68 | `theorem` | [isOpenPosMeasure_of_mulLeftInvariant_of_compact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/isopenposmeasure-of-mulleftinvariant-of-compact.md) | 595 | `result-track:494e4ba479800ccc680629a816bbed1962336996bc47d6bb16f9315aa87c1cea` |
| 69 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instance.md) | 610 | `declaration-track:23e8c02ba111171b1e764e7fbe96a884644ee1a272e3c22116b852f32b3b6b18` |
| 70 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instance-source-edition-5.md) | 618 | `declaration-track:a4206d310a7d44f095c843b3dc3a229f8422aae8f559b22a37ca13eee888a64e` |
| 71 | `theorem` | [null_iff_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/null-iff-of-ismulleftinvariant.md) | 625 | `result-track:11f5ca5e3e1ee3517f83c68836b0959b2219f3f8454830e87fa31b9b661bf461` |
| 72 | `theorem` | [measure_ne_zero_iff_nonempty_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-ne-zero-iff-nonempty-of-ismulleftinvariant.md) | 632 | `result-track:7a4a98f6fdfa09958199bcd83b5ec3f6007e15f9d5b13fd6f1e5b253665ef84f` |
| 73 | `theorem` | [measure_pos_iff_nonempty_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-pos-iff-nonempty-of-ismulleftinvariant.md) | 637 | `result-track:5bc6ba4c935a077b9a52737620f4d4ee4be8a2d1b182e4ffe83c70bf43410aca` |
| 74 | `theorem` | [measure_lt_top_of_isCompact_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-lt-top-of-iscompact-of-ismulleftinvariant.md) | 646 | `result-track:ba8c2c164ed7cf0b025ca4a25d41c4f46849ba208cc0eedad797e537ce489e64` |
| 75 | `theorem` | [measure_lt_top_of_isCompact_of_isMulLeftInvariant'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-lt-top-of-iscompact-of-ismulleftinvariant-source-line-658-occurrence-2.md) | 658 | `result-track:c1f1507239a330ac5396a2ce19bea53def1e5efcfecccda582b9388f3c40044c` |
| 76 | `theorem` | [measure_univ_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-univ-of-ismulleftinvariant.md) | 668 | `result-track:3b3184432e4ec1c287d6f04e500a9033666ef6611a7c12825e6cf7abf23bd2cd` |
| 77 | `lemma` | [_root_.MeasurableSet.mul_closure_one_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/root-measurableset-mul-closure-one-eq.md) | 712 | `result-track:4fba3aa8103a78875475b106b6d4231b3e6fff17ff9d40020ffa1cf6766a8f9c` |
| 78 | `lemma` | [measure_mul_closure_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/measure-mul-closure-one.md) | 720 | `result-track:7ef445758de73d4b9ce8f7173d1d2a4a870606366d2bda0736f4bc0cc8308ee4` |
| 79 | `lemma` | [innerRegularWRT_isCompact_isClosed_measure_ne_top_of_group](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/innerregularwrt-iscompact-isclosed-measure-ne-top-of-group.md) | 733 | `result-track:17ddc9f8099c919567ca8f6092d9ad89d48e774e55554c5d1c36008de2a4fa49` |
| 80 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instance-source-edition-2.md) | 754 | `declaration-track:3dc0e4b4b9c5cb08110a7ad0e2e64689a5f0a07528ab4c280b83ca6982ffd5f8` |
| 81 | `class` | [IsAddHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/isaddhaarmeasure.md) | 772 | `declaration-track:0a16857d82d0e7a2eed3f89f6b2ab634f3d5788b6c12a04549869d9e4aeb78f4` |
| 82 | `class` | [IsHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ishaarmeasure.md) | 785 | `declaration-track:e9fe4611a654d9ec0201bb0826c5bd8a921eec488331039e6b1e417db7718634` |
| 83 | `theorem` | [haar_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/haar-singleton.md) | 792 | `result-track:8f1b4b43ed0257603149b06b9e12fbfc38e9314f3f0ea1aaa462f43691f33141` |
| 84 | `theorem` | [IsHaarMeasure.smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ishaarmeasure-smul.md) | 797 | `result-track:3d3fee29d549c2be9f68bab28cd3709393ba29755aaf78830aeb217eebe8b365` |
| 85 | `lemma` | [IsHaarMeasure.nnreal_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ishaarmeasure-nnreal-smul.md) | 803 | `result-track:8dbb69597eb3743cb5054ccaad81d0115a22a15256f049b81cfc64ee29ea6db6` |
| 86 | `theorem` | [isHaarMeasure_of_isCompact_nonempty_interior](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ishaarmeasure-of-iscompact-nonempty-interior.md) | 812 | `result-track:52ddb6b83ca8cf9aa325a87e495e0227e8bc92ad658312ec1ea3d9deabbe18a2` |
| 87 | `theorem` | [isHaarMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ishaarmeasure-map.md) | 825 | `result-track:b7438e55dd3c11ab8b7a476602ca4e3eaa4053c17cfe7a694705c09f15d29d58` |
| 88 | `theorem` | [IsHaarMeasure.comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ishaarmeasure-comap.md) | 838 | `result-track:fe0fe41596cdc07d65fcafb39cec6a8299db126b0aa2a2f546b4b8aca8aa82be` |
| 89 | `theorem` | [isHaarMeasure_map_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ishaarmeasure-map-of-isfinitemeasure.md) | 852 | `result-track:3a3b4ab66bf1bc4384a04f39e0d04106d5552437fcc179385601e678a369d0ec` |
| 90 | `instance` | [isHaarMeasure_map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ishaarmeasure-map-smul.md) | 863 | `declaration-track:3ade19bf4b2d5356e0a88cea963fd26fa9128e8eb6fe0ca7d53c001c6e697c7f` |
| 91 | `instance` | [isHaarMeasure_map_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/ishaarmeasure-map-mul-right.md) | 878 | `declaration-track:caf1c8f124a5b5cdc814a6627d99c099fe7cdba679124a4a041fb62e831caada` |
| 92 | `theorem` | [_root_.MulEquiv.isHaarMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/root-mulequiv-ishaarmeasure-map.md) | 884 | `result-track:b151492c963a37349044c5ca2d49a5d55b8e0428f7177d443e6a289dd335b80e` |
| 93 | `instance` | [_root_.ContinuousMulEquiv.isHaarMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/root-continuousmulequiv-ishaarmeasure-map.md) | 896 | `declaration-track:de33c475449ad8157544fb4072364eaf9de36459cea64b5d7962594990e03fcf` |
| 94 | `instance` | [_root_.ContinuousLinearEquiv.isAddHaarMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/root-continuouslinearequiv-isaddhaarmeasure-map.md) | 902 | `declaration-track:5cc99ed4eee1a8c233c813e8a31f3e17a7027d0b4e61cb6e94b23cb55695259d` |
| 95 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instance-source-edition-4.md) | 920 | `declaration-track:7a3cc358c09821733847484f485768dfb372a24619e2126de1f0be0a98a87aee` |
| 96 | `instance` | [prod.instIsHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/prod-instishaarmeasure.md) | 927 | `declaration-track:2b81d2e5fd383b8aa65b40c2ef7decec0a848f88574dfc157d9ea0e842bfc452` |
| 97 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/instance-source-edition-8.md) | 943 | `declaration-track:cc766b0d100125433aa78bbba403cc4670541fc5a9d3e1b1167aa173d6e7f40f` |
| 98 | `instance` | [IsAddHaarMeasure.domSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurePublic.lean/declarations/isaddhaarmeasure-domsmul.md) | 957 | `declaration-track:bb12e50003ca5c472b77b1d276ac26ec1a16499a9df79f367b6dcc9fa44bab4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc0e41f8251e091a9b11b764544dc97f56544dea3334112a83a14a87add70979 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

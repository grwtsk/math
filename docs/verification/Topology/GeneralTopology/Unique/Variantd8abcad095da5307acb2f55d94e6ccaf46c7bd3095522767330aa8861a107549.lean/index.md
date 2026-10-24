# Verification target: GRWTSK.Topology.GeneralTopology.Unique.Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d016c978765f37ae7e2d105f4336d6a5a50bcc6f",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d016c978765f37ae7e2d105f4336d6a5a50bcc6f`.

Source path: `GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/instance--8682bad62c64f2a306b98127.md) | 47 | `declaration-track:8682bad62c64f2a306b981270b2425955c68c9a1bc6a9fd04a06eb5daeb92a9d` |
| 2 | `instance` | [Real.instContinuousMapUniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/real-instcontinuousmapuniquehom--8d978de4235ee6b65ed80ad6.md) | 55 | `declaration-track:8d978de4235ee6b65ed80ad68895fff088a279c237adc9aef16d3705834634ce` |
| 3 | `instance` | [Complex.instContinuousMapUniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/complex-instcontinuousmapuniquehom--4856990ffb05c91dedb43b2f.md) | 60 | `declaration-track:4856990ffb05c91dedb43b2f16a9c584a896b322bc09eeb52c7ba0cf1f9ebdff` |
| 4 | `def` | [toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal--9347e2c896849970ab4367e8.md) | 75 | `declaration-track:9347e2c896849970ab4367e83a5400e3d7c4f7912e115a19fec328b343e66988` |
| 5 | `lemma` | [continuous_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/continuous-tonnreal--f127de7ca755541bd80c54c1.md) | 78 | `result-track:f127de7ca755541bd80c54c1974a3e1564fdabf247058e9afb37a62c2f333993` |
| 6 | `lemma` | [toNNReal_apply](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-apply--3fb0098d9c4d1e78f9a6ad30.md) | 81 | `result-track:3fb0098d9c4d1e78f9a6ad3017f736c38d0cb63a846ee640f0ce064b51919e11` |
| 7 | `lemma` | [toNNReal_add_add_neg_add_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-add-add-neg-add-neg-eq--f200a006ed20cbca73c5236f.md) | 83 | `result-track:f200a006ed20cbca73c5236f7a182ae66ce5c7f25d31a006e83ae03e2f4307d4` |
| 8 | `lemma` | [toNNReal_mul_add_neg_mul_add_mul_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-mul-add-neg-mul-add-mul-neg-eq--5807b0c6ab454ec70c24f0ab.md) | 90 | `result-track:5807b0c6ab454ec70c24f0ab8a3af71a65815de831a2487837ebb50fa829b49e` |
| 9 | `lemma` | [toNNReal_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-algebramap--2234308e011727f1a3cdf512.md) | 98 | `result-track:2234308e011727f1a3cdf512b86f4f7c8ffd0a4b680dd0d289ce6f748777cdcf` |
| 10 | `lemma` | [toNNReal_neg_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-neg-algebramap--4058dc5023741b15fe11f72b.md) | 103 | `result-track:4058dc5023741b15fe11f72b37444da504e1006af7b692226793004d69614037` |
| 11 | `lemma` | [toNNReal_one](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-one--ee7c3970e5bfe4b049daeccb.md) | 107 | `result-track:ee7c3970e5bfe4b049daeccb6c570c269de68daeada04dc3d5403f9877cffbc2` |
| 12 | `lemma` | [toNNReal_neg_one](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-neg-one--55239441448a011fba71349a.md) | 110 | `result-track:55239441448a011fba71349ae5a20d70a256b76a64cce870412eff0c9af273d6` |
| 13 | `def` | [realContinuousMapOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/realcontinuousmapofnnreal--e6f33a00ec39be48ceef79ef.md) | 125 | `declaration-track:e6f33a00ec39be48ceef79ef60fcacd1df3a44fbe45a90fa8d35d6f449fefaab` |
| 14 | `lemma` | [continuous_realContinuousMapOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/continuous-realcontinuousmapofnnreal--da980b6b1546e10dc379d83e.md) | 155 | `result-track:da980b6b1546e10dc379d83e35f50c8e9d938540ccbb82c38e93b44372ca8efc` |
| 15 | `lemma` | [realContinuousMapOfNNReal_apply_comp_toReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/realcontinuousmapofnnreal-apply-comp-toreal--38e197f8b906ba52c17dbeae.md) | 163 | `result-track:38e197f8b906ba52c17dbeae2c1d0ff76a9b6cdd530763754cb4d15c28cbbc4b` |
| 16 | `lemma` | [realContinuousMapOfNNReal_injective](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/realcontinuousmapofnnreal-injective--4f4c368da63752dbd0422c26.md) | 174 | `result-track:4f4c368da63752dbd0422c26762c8b9462bbdb09a8d4f4b1fe278898d0386fbe` |
| 17 | `instance` | [NNReal.instContinuousMap.UniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/nnreal-instcontinuousmap-uniquehom--f878044be2d88a14f0ca1e24.md) | 184 | `declaration-track:f878044be2d88a14f0ca1e24d93922cac403a8ecd27c832daa2c2518bee4e5d8` |
| 18 | `instance` | [RCLike.uniqueNonUnitalContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/rclike-uniquenonunitalcontinuousfunctionalcalculus--f8c4683434357d731b32903c.md) | 219 | `declaration-track:f8c4683434357d731b32903c5f99c9891774b9059202e58f0cf8def09ef4d6e7` |
| 19 | `def` | [toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal--75277a212ffe282f90bbdc5b.md) | 241 | `declaration-track:75277a212ffe282f90bbdc5ba9917359cce3ec95210b1e20a9c8d4020d1e4092` |
| 20 | `lemma` | [toNNReal_apply](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-apply--8c15980583bfb8259cf8bf18.md) | 244 | `result-track:8c15980583bfb8259cf8bf181f1a3f1a729d23ccc0bf45845f9d848997698ed2` |
| 21 | `lemma` | [continuous_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/continuous-tonnreal--a3f04a3c154a53ea2b74e279.md) | 247 | `result-track:a3f04a3c154a53ea2b74e27989b2c99ab3cf9ba925898b66d12f07d86997ebb2` |
| 22 | `lemma` | [toContinuousMapHom_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tocontinuousmaphom-tonnreal--362b9599d2778b946fed768b.md) | 252 | `result-track:362b9599d2778b946fed768b2dc928b7238df98f0188cf8dcf16b89165891b65` |
| 23 | `lemma` | [toNNReal_smul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-smul--be43a1410e0a7e7922aecd40.md) | 258 | `result-track:be43a1410e0a7e7922aecd4023a92c4050350baa1c4dbf8016ecb41d478281a9` |
| 24 | `lemma` | [toNNReal_neg_smul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-neg-smul--a4c8129404821a590229d88c.md) | 266 | `result-track:a4c8129404821a590229d88c616f995e93d77195e8a7941f9e2bd1f3343f0879` |
| 25 | `lemma` | [toNNReal_mul_add_neg_mul_add_mul_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-mul-add-neg-mul-add-mul-neg-eq--addd1598824e23d6de57fe86.md) | 269 | `result-track:addd1598824e23d6de57fe86852db4fba716c57155e9c4c891dc44ece528f9a2` |
| 26 | `lemma` | [toNNReal_add_add_neg_add_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/tonnreal-add-add-neg-add-neg-eq--a9c8b6b7c116b185826576ad.md) | 276 | `result-track:a9c8b6b7c116b185826576ad8f829a8bcb90ec1b1265be59192b346a4a0e2319` |
| 27 | `def` | [realContinuousMapZeroOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/realcontinuousmapzeroofnnreal--21c6b77da946bf34aa166ef9.md) | 299 | `declaration-track:21c6b77da946bf34aa166ef98fc659203eb217ffa7ab3c7cebef27e69013861e` |
| 28 | `lemma` | [continuous_realContinuousMapZeroOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/continuous-realcontinuousmapzeroofnnreal--c93d37a469c1eed155abaecd.md) | 331 | `result-track:c93d37a469c1eed155abaecddade7fcf334141beb822371ba3a3c364b193845c` |
| 29 | `lemma` | [realContinuousMapZeroOfNNReal_apply_comp_toReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/realcontinuousmapzeroofnnreal-apply-comp-toreal--8710443a8bec05a87bdc7efb.md) | 340 | `result-track:8710443a8bec05a87bdc7efb1d3c5460fa0403b1761a9b375aa8fef24932bd26` |
| 30 | `lemma` | [realContinuousMapZeroOfNNReal_injective](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/realcontinuousmapzeroofnnreal-injective--c13e435be6ecc26bd4fabcbf.md) | 352 | `result-track:c13e435be6ecc26bd4fabcbf08bd3a8c313736ca4ca6efc3b4d086201788dbee` |
| 31 | `instance` | [NNReal.instContinuousMapZero.UniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/nnreal-instcontinuousmapzero-uniquehom--40c7e2e784ea2a676b437e72.md) | 362 | `declaration-track:40c7e2e784ea2a676b437e7200ef02fc4f8d2a80a43320699dc3c6ad7b4442c9` |
| 32 | `lemma` | [NonUnitalStarAlgHomClass.map_cfcₙ](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/nonunitalstaralghomclass-map-cfc--0cadf7bcaae828f71700c2e1.md) | 420 | `result-track:0cadf7bcaae828f71700c2e14b0810bd731a0d157072e57e63e694a3e1d2b91f` |
| 33 | `lemma` | [NonUnitalStarAlgHom.map_cfcₙ](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/nonunitalstaralghom-map-cfc--576c9d50e314ce14c83d57fe.md) | 446 | `result-track:576c9d50e314ce14c83d57fe4c7ea4ce89c21bd87e2df99e0b8130cc95b07581` |
| 34 | `lemma` | [StarAlgHomClass.map_cfc](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/staralghomclass-map-cfc--718b55d8a7597e8963143ec0.md) | 470 | `result-track:718b55d8a7597e8963143ec0a3d56c6021d1ffa3e822fad25f9966a5d55da912` |
| 35 | `lemma` | [StarAlgHom.map_cfc](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/declarations/staralghom-map-cfc--9e4f5dfcf8b90a2d3e6b356a.md) | 495 | `result-track:9e4f5dfcf8b90a2d3e6b356add2b48db6e9d1263c1ebd5cb71c5e2b5e0ac1324` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

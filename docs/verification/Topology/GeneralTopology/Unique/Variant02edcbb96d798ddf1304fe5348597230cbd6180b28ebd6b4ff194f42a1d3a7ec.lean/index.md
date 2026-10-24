# Verification target: GRWTSK.Topology.GeneralTopology.Unique.Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b38f1476f3121f8b92478b4bb206ba7f2640c61",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b38f1476f3121f8b92478b4bb206ba7f2640c61`.

Source path: `GRWTSK/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.NonUnital` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/instance--88741882e88aa9cac2a20cd2.md) | 43 | `declaration-track:88741882e88aa9cac2a20cd2b9c774e0e0b1e1052cfd0e91c2d70211eacec663` |
| 2 | `instance` | [Real.instContinuousMapUniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/real-instcontinuousmapuniquehom--99c4ef5301b4ddfdddef7c71.md) | 51 | `declaration-track:99c4ef5301b4ddfdddef7c71e474b3e7e134a95dc714282dced64b92ff83270b` |
| 3 | `instance` | [Complex.instContinuousMapUniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/complex-instcontinuousmapuniquehom--9a99164b5269240a47375e23.md) | 56 | `declaration-track:9a99164b5269240a47375e23533b16b6d1e043011eeb4e9c1b9df1fa872c15bd` |
| 4 | `def` | [toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal--c3c1936410dd090ebbfa82a8.md) | 71 | `declaration-track:c3c1936410dd090ebbfa82a8debd073a406914abba4b5b4e452c5cf9b5355cf2` |
| 5 | `lemma` | [continuous_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/continuous-tonnreal--37e1307c25bb862577f8d659.md) | 74 | `result-track:37e1307c25bb862577f8d6599f25379be64c55d0062c369a6e8069a83ae4e31d` |
| 6 | `lemma` | [toNNReal_apply](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-apply--bcfeba76ca5f89353603cb45.md) | 77 | `result-track:bcfeba76ca5f89353603cb4504ad2a9e1fa37357092041818336ea045dd1a349` |
| 7 | `lemma` | [toNNReal_add_add_neg_add_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-add-add-neg-add-neg-eq--5c51eb4eb5817fc54c44ef5f.md) | 79 | `result-track:5c51eb4eb5817fc54c44ef5f9c3813815bf3883ade272e8d84d2da50a96865bf` |
| 8 | `lemma` | [toNNReal_mul_add_neg_mul_add_mul_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-mul-add-neg-mul-add-mul-neg-eq--4b2f64f011c954a29c3c0e66.md) | 86 | `result-track:4b2f64f011c954a29c3c0e66e779370573c8681f7101bfbcba36e19ab77b694b` |
| 9 | `lemma` | [toNNReal_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-algebramap--9c2cfedc008caf008623fe19.md) | 94 | `result-track:9c2cfedc008caf008623fe19fe1a79f642e401e54b2bd09136298304d8fde78a` |
| 10 | `lemma` | [toNNReal_neg_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-neg-algebramap--565c89c4575a3949f192b841.md) | 99 | `result-track:565c89c4575a3949f192b841327f1e7aa7e192bfc8ba2066a059b401f6cd8064` |
| 11 | `lemma` | [toNNReal_one](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-one--9532d428d7aec3bde32bbd59.md) | 103 | `result-track:9532d428d7aec3bde32bbd594cce7add2ee8f60ab13bc79cc5ad0c879d2ea34d` |
| 12 | `lemma` | [toNNReal_neg_one](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-neg-one--9380b4c5db7c39b9ad9404ce.md) | 106 | `result-track:9380b4c5db7c39b9ad9404ce76ac8d7431fc552f59f5fd156a25b97d8af40742` |
| 13 | `def` | [realContinuousMapOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/realcontinuousmapofnnreal--e72c59c9d07691869dbd4276.md) | 121 | `declaration-track:e72c59c9d07691869dbd42761e5e0790d63e2d661e8fb4a8b728906cd7d78a4e` |
| 14 | `lemma` | [continuous_realContinuousMapOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/continuous-realcontinuousmapofnnreal--ca9ad4986d11b124027ed8e5.md) | 151 | `result-track:ca9ad4986d11b124027ed8e5b50b9139353af5a14e3cecd77b4de970eba0be34` |
| 15 | `lemma` | [realContinuousMapOfNNReal_apply_comp_toReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/realcontinuousmapofnnreal-apply-comp-toreal--451d324a27813668fd33e750.md) | 159 | `result-track:451d324a27813668fd33e750332b60f1d6ef0a3f1359350e74ca39ced9ccf393` |
| 16 | `lemma` | [realContinuousMapOfNNReal_injective](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/realcontinuousmapofnnreal-injective--4b35bca923b21ddbcd0cfa65.md) | 170 | `result-track:4b35bca923b21ddbcd0cfa65cff42c0613ad22c2b779a702aa683669936741bc` |
| 17 | `instance` | [NNReal.instContinuousMap.UniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/nnreal-instcontinuousmap-uniquehom--e525ff1884cbf9b2fb6ecace.md) | 180 | `declaration-track:e525ff1884cbf9b2fb6ecace5876037f300e23479da2b10b30c9fc379a6b87d9` |
| 18 | `instance` | [RCLike.uniqueNonUnitalContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/rclike-uniquenonunitalcontinuousfunctionalcalculus--3951d467e896004f22ce9009.md) | 224 | `declaration-track:3951d467e896004f22ce9009445a6b9f288a8c4c825a43499f705ae7c3fc1224` |
| 19 | `def` | [toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal--7040b1ef34c7816e531ea317.md) | 246 | `declaration-track:7040b1ef34c7816e531ea31726b3359d24a3866d0defed982c450e33367001b2` |
| 20 | `lemma` | [toNNReal_apply](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-apply--2714e4f7cf04a8aa149327ed.md) | 249 | `result-track:2714e4f7cf04a8aa149327ed8c2e4388e5c8e1349ca4ff1a7652d12e5ebab371` |
| 21 | `lemma` | [continuous_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/continuous-tonnreal--d4f4b357934bacaaf0aac7fa.md) | 252 | `result-track:d4f4b357934bacaaf0aac7fa7eb5da49ca5287a7bc2eda5f643604ef329e88f2` |
| 22 | `lemma` | [toContinuousMapHom_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tocontinuousmaphom-tonnreal--1a4fb26c0c3d7694afddd5ba.md) | 257 | `result-track:1a4fb26c0c3d7694afddd5ba40459550235fc69523eb92704a8cfd83948f230a` |
| 23 | `lemma` | [toNNReal_smul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-smul--3e6af8dad3aaa43e04544634.md) | 263 | `result-track:3e6af8dad3aaa43e0454463494ad1fe9b023e0c51a7cc83589a3ec6e04274e11` |
| 24 | `lemma` | [toNNReal_neg_smul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-neg-smul--bb96ada27151c9daa1d32ef7.md) | 272 | `result-track:bb96ada27151c9daa1d32ef7bd0b1674320773063ff4393fbb73f2568d0d093d` |
| 25 | `lemma` | [toNNReal_mul_add_neg_mul_add_mul_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-mul-add-neg-mul-add-mul-neg-eq--3a560163e9fdb5758639da3c.md) | 275 | `result-track:3a560163e9fdb5758639da3c8079ca1049008c8320d302aaef16db86a8d08a5a` |
| 26 | `lemma` | [toNNReal_add_add_neg_add_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/tonnreal-add-add-neg-add-neg-eq--af1247fe298859b8ecaf1cb1.md) | 282 | `result-track:af1247fe298859b8ecaf1cb1382972a81a96d6478ee8f3e53ce7e127af7adcbf` |
| 27 | `def` | [realContinuousMapZeroOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/realcontinuousmapzeroofnnreal--03e1cd4d0644323d79983bf8.md) | 305 | `declaration-track:03e1cd4d0644323d79983bf8e574a497169842f6025a193f75ef088629c20554` |
| 28 | `lemma` | [continuous_realContinuousMapZeroOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/continuous-realcontinuousmapzeroofnnreal--2ba8fbf8f2c49151c61c7d7e.md) | 337 | `result-track:2ba8fbf8f2c49151c61c7d7ea3db9c1e396bc7a12d77f43500713edcb462e79e` |
| 29 | `lemma` | [realContinuousMapZeroOfNNReal_apply_comp_toReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/realcontinuousmapzeroofnnreal-apply-comp-toreal--650a87f4fba0f14c1addea0a.md) | 345 | `result-track:650a87f4fba0f14c1addea0a14e7a66a92476a3393fdad70d712100a3be015dd` |
| 30 | `lemma` | [realContinuousMapZeroOfNNReal_injective](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/realcontinuousmapzeroofnnreal-injective--63a8486ec534587c27f5795c.md) | 357 | `result-track:63a8486ec534587c27f5795c5e3ad46523342bb3948f95f826d66d0dcabb9a0a` |
| 31 | `instance` | [NNReal.instContinuousMapZero.UniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/nnreal-instcontinuousmapzero-uniquehom--ab622efa56b5e44392cd429c.md) | 367 | `declaration-track:ab622efa56b5e44392cd429cba12186e9fa98689633ffd8cd0fe75f4902eb3d1` |
| 32 | `lemma` | [NonUnitalStarAlgHomClass.map_cfcₙ](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/nonunitalstaralghomclass-map-cfc--6ebe097c06b30e8a42c0d26f.md) | 435 | `result-track:6ebe097c06b30e8a42c0d26fcedd47d444c8c27edf87a29e6490da60082387db` |
| 33 | `lemma` | [NonUnitalStarAlgHom.map_cfcₙ](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/nonunitalstaralghom-map-cfc--3be7ef2607b7002e4eac0738.md) | 462 | `result-track:3be7ef2607b7002e4eac0738b87105c7be5c62fce5dba729016c4baa449e1565` |
| 34 | `lemma` | [StarAlgHomClass.map_cfc](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/staralghomclass-map-cfc--d3d1cac50378bf271b23db09.md) | 485 | `result-track:d3d1cac50378bf271b23db09d71951a8f583495d11172f859eef8bd7a03d493f` |
| 35 | `lemma` | [StarAlgHom.map_cfc](../../../../../mathematics/Topology/GeneralTopology/Unique/Variant02edcbb96d798ddf1304fe5348597230cbd6180b28ebd6b4ff194f42a1d3a7ec.lean/declarations/staralghom-map-cfc--18e57b96b9315e49b087fb58.md) | 510 | `result-track:18e57b96b9315e49b087fb58218b7be68af86bf5a93f2c950b0c33ff0b627dc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

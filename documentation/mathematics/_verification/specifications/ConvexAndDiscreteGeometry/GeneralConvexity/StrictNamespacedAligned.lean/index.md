# Verification target: Strict Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2270a7d9fe86018979a5821d5805c84509fd675b",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant7e42b8200fbb5bd2b64e159d35915e578c31beb3b5fbe81de02bb8558a6125c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2270a7d9fe86018979a5821d5805c84509fd675b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant7e42b8200fbb5bd2b64e159d35915e578c31beb3b5fbe81de02bb8558a6125c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Strict/Variant7e42b8200fbb5bd2b64e159d35915e578c31beb3b5fbe81de02bb8558a6125c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StrictConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex.md) | 53 | `declaration-track:725981348209c7042367fd6ee9bae6cd06f246bce0eefb47729eb75642bbba47` |
| 2 | `theorem` | [strictConvex_iff_openSegment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-iff-opensegment-subset.md) | 60 | `result-track:2de64b1f61de555f21627edec1ab9c84068f922737ca88f8fff46350df16986c` |
| 3 | `theorem` | [StrictConvex.openSegment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-opensegment-subset.md) | 65 | `result-track:92663cf74efc456950504356783ca117fa6bdcf1f4c18fbb5b15d82477990e37` |
| 4 | `theorem` | [strictConvex_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-empty.md) | 70 | `result-track:405a2a084a986a0bec61e3312e0e0180c1e15e097e1de70c2a9555015bcff718` |
| 5 | `theorem` | [strictConvex_univ](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-univ.md) | 74 | `result-track:1259fa77971e9bf057d85b77ab1a1c19d821fa330a6cb255711348b932154caa` |
| 6 | `theorem` | [StrictConvex.eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-eq.md) | 80 | `result-track:4783e43f55132c0fc020e03a582d60ed51247cffc01cca5df109a75ba4f629a8` |
| 7 | `theorem` | [StrictConvex.inter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-inter.md) | 85 | `result-track:cce9784b76bb9d788d68eb4df29549a228df5d86767382dc24522129525b8f0c` |
| 8 | `theorem` | [Directed.strictConvex_iUnion](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/directed-strictconvex-iunion.md) | 92 | `result-track:b6f13ebf4910d2fa65755fd175489d6badcfb14fd339a040b998c5c364a07d74` |
| 9 | `theorem` | [DirectedOn.strictConvex_sUnion](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/directedon-strictconvex-sunion.md) | 102 | `result-track:ac083c6f35a7230db86f7f0dcf9cc5a1f2142d92e60127bb844422d1e091e7e0` |
| 10 | `theorem` | [StrictConvex.convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-convex.md) | 114 | `result-track:6b1f7df7bcafb8c5cd7ea525343af388f80829d3ba082e7989211badf0da5e21` |
| 11 | `theorem` | [Convex.strictConvex_of_open](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/convex-strictconvex-of-open.md) | 120 | `result-track:e8b3d9675161d92a86813064ecbf7af442331019a6b5ce2f3f03a125e27702c3` |
| 12 | `theorem` | [IsOpen.strictConvex_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/isopen-strictconvex-iff.md) | 124 | `result-track:5009e47704c84a289e2defd1c9136152be32ac84afc5620d1774421143061c97` |
| 13 | `theorem` | [strictConvex_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-singleton.md) | 128 | `result-track:bd99642059e9ba105770f7f65b5930938ae1cee328fe1eb2ab21155122552ec4` |
| 14 | `theorem` | [Set.Subsingleton.strictConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/set-subsingleton-strictconvex.md) | 132 | `result-track:9943c8fa2427f6f7a62d3c21e0ab51a23929d558af0377bbe54c64820818f779` |
| 15 | `theorem` | [StrictConvex.linear_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-linear-image.md) | 136 | `result-track:fae624959e6dfba3f93dd0c173cb733fa4165a2dc9a47e8a6088005a7730f7a1` |
| 16 | `theorem` | [StrictConvex.is_linear_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-is-linear-image.md) | 144 | `result-track:d8b00fa97157fa83e1e2225012bfbe63bd879ead6b4d9e59893745ae8e207a42` |
| 17 | `theorem` | [StrictConvex.linear_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-linear-preimage.md) | 149 | `result-track:4df976a1e0e77a3d73895477928ac93ad548184b18d50d788b8c4670c4ec1053` |
| 18 | `theorem` | [StrictConvex.is_linear_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-is-linear-preimage.md) | 157 | `result-track:a60cfa7e301056e3008972701201d2f6afc891ed44e15bb5feba6ccf905a9c62` |
| 19 | `theorem` | [Set.OrdConnected.strictConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/set-ordconnected-strictconvex.md) | 168 | `result-track:5c07b4e57bbb36734d40325ccb90d1e78c2c7bed5326cf51f0f94f3ac300a629` |
| 20 | `theorem` | [strictConvex_Iic](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-iic.md) | 177 | `result-track:bff52dfbaff3bef8852cbb0717014da9d3ae579c8a5d8588afe43a8a7821ba23` |
| 21 | `theorem` | [strictConvex_Ici](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-ici.md) | 181 | `result-track:00d0a9063b642d98e2d8f571d34d9b61ece449d6651da3f45b7a137eca6ca96b` |
| 22 | `theorem` | [strictConvex_Iio](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-iio.md) | 185 | `result-track:5a73fc865282c9ca3d8efa8272e9729afaa1814cfb9b2636b72cfbb5b72c1fba` |
| 23 | `theorem` | [strictConvex_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-ioi.md) | 189 | `result-track:d08952ac58912cbe9749f947ebd154dd437ac21a43237c7d583e9cf1ef9ec792` |
| 24 | `theorem` | [strictConvex_Icc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-icc.md) | 193 | `result-track:8acdab6bf388667cafc71c001df4cddc48b2e46910c93873f2ac615ccc4ccffd` |
| 25 | `theorem` | [strictConvex_Ioo](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-ioo.md) | 197 | `result-track:66aa5537b0db4cc05bcaa0d21c146accbff51ddee76f64761493dae0ddda7792` |
| 26 | `theorem` | [strictConvex_Ico](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-ico.md) | 201 | `result-track:f0579708f56c7017f6d425237045bb01579274a431efba115464aa0027acad11` |
| 27 | `theorem` | [strictConvex_Ioc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-ioc.md) | 205 | `result-track:2064825b7034eed7b7ef86c336ecf0b943425cf803c73ab32434191be669811b` |
| 28 | `theorem` | [strictConvex_uIcc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-uicc.md) | 209 | `result-track:993aed4660c0001eb179ce7156601991629ed1eeb765838874acb956933a5bb2` |
| 29 | `theorem` | [strictConvex_uIoc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-uioc.md) | 213 | `result-track:c049b7cef2957a7dd87e1728e5edb47fe58c5b73c2c5acfea07ca3d9bc6d6b0f` |
| 30 | `theorem` | [StrictConvex.preimage_add_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-preimage-add-right.md) | 228 | `result-track:212462ce9ac734449b66816684dcf8ead79ed2eb4b8611db3e1c75e7f127b523` |
| 31 | `theorem` | [StrictConvex.preimage_add_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-preimage-add-left.md) | 237 | `result-track:43af8acbe6e27ac05faa383408dc049c697268ca732e34380d8a720d04dc3e15` |
| 32 | `theorem` | [StrictConvex.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-add.md) | 252 | `result-track:b1ca5aa9e4932422d72171185eddf46f3d2bf1a5f5035b8e0bdba963b913e7e8` |
| 33 | `theorem` | [StrictConvex.add_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-add-left.md) | 267 | `result-track:7e4f51c4ff759f088f336b3cb7ae37c951f2507907b374375023b85e69caed44` |
| 34 | `theorem` | [StrictConvex.add_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-add-right.md) | 272 | `result-track:6243eacf72ac7b4e89face17cd7e89434706f40c0e5d51cfc952df8044796943` |
| 35 | `theorem` | [StrictConvex.vadd](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-vadd.md) | 277 | `result-track:9e0a4d03b7dc9cf6e9ef57957dbac699b2ef6833b6ab29023e1a823bbc3448f5` |
| 36 | `theorem` | [StrictConvex.smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-smul.md) | 288 | `result-track:fac6f208c60318efc676441674ef6efdb1c43c1ff1c85bcb4a7e0836e4bad06b` |
| 37 | `theorem` | [StrictConvex.affinity](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-affinity.md) | 294 | `result-track:ad38b5576b42434d57e24ecae44eb3f7c1032da9563707c9a45af27fb4c81581` |
| 38 | `theorem` | [StrictConvex.preimage_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-preimage-smul.md) | 314 | `result-track:95b4bd43329f39d2b9ecf53b8a89da96979859938639f0eeb3a1db77a2e2b79d` |
| 39 | `theorem` | [StrictConvex.eq_of_openSegment_subset_frontier](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-eq-of-opensegment-subset-frontier.md) | 339 | `result-track:ab7ab9e0dc13b6da468703835f78c1b80ca71828ddbfffed9b748b55dc4de1ea` |
| 40 | `theorem` | [StrictConvex.add_smul_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-add-smul-mem.md) | 350 | `result-track:3865886ec7ded21208a860f627431f16322b927d75054e071e6a590fb79dff95` |
| 41 | `theorem` | [StrictConvex.smul_mem_of_zero_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-smul-mem-of-zero-mem.md) | 359 | `result-track:acb3e8aaf14100ea5f5a21bf203af436bbda8a3f6e6a9cfcc5a99366b8bfcf8c` |
| 42 | `theorem` | [StrictConvex.add_smul_sub_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-add-smul-sub-mem.md) | 364 | `result-track:b923d7cd311ba5d376d05e7b53d44bda6e4d3591d309fe411b2b5284666c8060` |
| 43 | `theorem` | [StrictConvex.affine_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-affine-preimage.md) | 372 | `result-track:f89b3236b5b0cd1f05f4061bb64793b3bfce79d75daa66a204c0bb0ee3c53e69` |
| 44 | `theorem` | [StrictConvex.affine_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-affine-image.md) | 381 | `result-track:c9a39be0379fe68cec01f4436a4d4f387d34de2d953989f5ca2a0bbb46310eb6` |
| 45 | `theorem` | [StrictConvex.neg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-neg.md) | 391 | `result-track:b32f41a61ff4dd5dedd6bf5387f4496030f5f84e74f57b17cd048ee7da046c63` |
| 46 | `theorem` | [StrictConvex.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-sub.md) | 395 | `result-track:ade3f545e448c76016c85fe1b8ad86f0fc729978eb623869bd8d449598f4966a` |
| 47 | `theorem` | [strictConvex_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-iff-div.md) | 412 | `result-track:d0c59e5182025d0e7e7152441eb73bda6221e2627dcd93b971bde5560ab09949` |
| 48 | `theorem` | [StrictConvex.mem_smul_of_zero_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-mem-smul-of-zero-mem.md) | 423 | `result-track:fb2041753e64f3f7c4a299813e01ca8ec74518a1fc2255e5495f6546050f268e` |
| 49 | `theorem` | [strictConvex_iff_convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-iff-convex.md) | 446 | `result-track:2ccb9d2d5fad61d0f87cc119ab51d95f433dc44800cf1da69656654da0464c81` |
| 50 | `theorem` | [strictConvex_iff_ordConnected](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictNamespacedAligned.lean/declarations/strictconvex-iff-ordconnected.md) | 450 | `result-track:27cb0676d8adce5daf217c7ab960deba806c052b870bbb9984eced1d4464111a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=965a6e55dfb21eef7fa43fbc58cc5185ba615a127810c4fc9f927591bf7e453d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant7e42b8200fbb5bd2b64e159d35915e578c31beb3b5fbe81de02bb8558a6125c1.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Strict/Variant7e42b8200fbb5bd2b64e159d35915e578c31beb3b5fbe81de02bb8558a6125c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

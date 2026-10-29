# Verification target: Sets Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04fa9f2ce9f72c3f558e133770d31f73769fadbb",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variante57e844e9287442de4e396d0b74c9d60c272fddce2146ef471413980b07dcba8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04fa9f2ce9f72c3f558e133770d31f73769fadbb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variante57e844e9287442de4e396d0b74c9d60c272fddce2146ef471413980b07dcba8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sets/Variante57e844e9287442de4e396d0b74c9d60c272fddce2146ef471413980b07dcba8.lean.json)

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
| 1 | `def` | [toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset.md) | 51 | `declaration-track:b4e62efc335fceb819b0a343f9565bbe33ca61258b914fd21c0dd937f3debb60` |
| 2 | `theorem` | [toFinset_congr](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-congr.md) | 55 | `result-track:38c2c34de5f302e724ffb9230989cffd1458c57a14339ec90d0def8aeb0efcaf` |
| 3 | `theorem` | [mem_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/mem-tofinset.md) | 59 | `result-track:2d8a9f31438fda0e96914c4b6af3c30d76f746cfbc835545daf218e4d7698c92` |
| 4 | `theorem` | [toFinset_ofFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-offinset.md) | 64 | `result-track:8118bafa7e4e555e92059944260f7dcad5d3ab089c2edf2f8eeee94e5c497220` |
| 5 | `def` | [decidableMemOfFintype](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/decidablememoffintype.md) | 72 | `declaration-track:e299ced0b2e06acdb215419e61bcfb46b33122b283f1f604e63fd4877af5f440` |
| 6 | `theorem` | [coe_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/coe-tofinset.md) | 76 | `result-track:ddd21095dfa66a52286074485959e858df639ad4ca0d384cd65eace2f8f00d52` |
| 7 | `theorem` | [toFinset_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-nonempty.md) | 80 | `result-track:d8fc342e7ad9aafab082002336a0ec54d79bb0cd5d20795e2e8109ccc47cf42f` |
| 8 | `theorem` | [toFinset_inj](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-inj.md) | 87 | `result-track:e3e495714d6e9c51cde4d0c39b33d54e7ff392fb0dc568094bdf980d7d64a1a7` |
| 9 | `theorem` | [toFinset_subset_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-subset-tofinset.md) | 91 | `result-track:29c52fa7f2d98a7dacfd044d3ed2b0130cce36e1f64354a699fe370a73bed0b2` |
| 10 | `theorem` | [toFinset_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-ssubset.md) | 95 | `result-track:6088a83ba318a229db5ec713773f0eeab1bb0bc8a50137cd3e3c33d93bb565f5` |
| 11 | `theorem` | [subset_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/subset-tofinset.md) | 99 | `result-track:608df1720ab08d7879f15aec3d799c057dbcc80ec75214a0d90c79a3a56dc9b9` |
| 12 | `theorem` | [ssubset_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/ssubset-tofinset.md) | 103 | `result-track:3ea0d812fd2e8de86f74547adbab904f8bcf66900fe701f4562453e9a108e605` |
| 13 | `theorem` | [toFinset_ssubset_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-ssubset-tofinset.md) | 107 | `result-track:5e4442eb9bbb20c7ce488885ae32d42c1085925ab21ef4a53afe302ed4883d9b` |
| 14 | `theorem` | [toFinset_subset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-subset.md) | 111 | `result-track:d4105a4316411ac06452b60db8f073e698b681380f216fb281bf3322af39a094` |
| 15 | `theorem` | [disjoint_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/disjoint-tofinset.md) | 120 | `result-track:c8902e03fdad6f846067b1e42e4c7aea54202273e675fcdbebdeb25123afae1f` |
| 16 | `theorem` | [toFinset_nontrivial](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-nontrivial.md) | 124 | `result-track:1d9c50e3bd7429bf7744a004b9d8122f37f11adf579643316e5ecae4dafc4a1a` |
| 17 | `theorem` | [subsingleton_toFinset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/subsingleton-tofinset-iff.md) | 127 | `result-track:57b7f958c72bbfea7e2773bd1edb8913f4d65644142d35c4ab748bc0595f0198` |
| 18 | `theorem` | [toFinset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-inter.md) | 135 | `result-track:0c45dce598afc0f4ae586db578fbd0dffb967e05530baea0bd01da47bee352bf` |
| 19 | `theorem` | [toFinset_union](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-union.md) | 140 | `result-track:7eb1808ab8e495b9139327917018f2189e4fc23734038835e93f4238d8be47d7` |
| 20 | `theorem` | [toFinset_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-sdiff.md) | 145 | `result-track:05c58d306ec4249db68fda0201c47e14ff44ebf942d8468df83cd213a7df1d47` |
| 21 | `theorem` | [toFinset_symmDiff](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-symmdiff.md) | 153 | `result-track:a72a85399421d16f8c71d3062aa79bcc7dccfe2462e9d1cbbf40e35e41a8cbb0` |
| 22 | `theorem` | [toFinset_compl](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-compl.md) | 159 | `result-track:4bdf325cb0f5a1a10e752642e0da1750373ad4124d430569f23343f153494e06` |
| 23 | `theorem` | [toFinset_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-empty.md) | 166 | `result-track:1a01af706c7f9c06a039941b606faccf182bd9dd355f01450e8301950775822a` |
| 24 | `theorem` | [toFinset_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-univ.md) | 171 | `result-track:b9474028c2aa77e4b05c4747847508938f29bbc2b75eb661b1bad9a6a7043342` |
| 25 | `theorem` | [toFinset_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-eq-empty.md) | 177 | `result-track:1b9346b6cc67a354e11af0ca99ffb7f6ed266f11cc8482239b5a90e329a5f1d6` |
| 26 | `theorem` | [toFinset_eq_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-eq-univ.md) | 182 | `result-track:b491c54dcbb6bf536b3bc1db147e64ed57c0e449526ccc32d589c4012176b77e` |
| 27 | `theorem` | [toFinset_ofPred](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-ofpred.md) | 186 | `result-track:3ed9e06133e2dca770e44db075d3ec8c05c40e0dff0c467a470277efd7dd623a` |
| 28 | `theorem` | [toFinset_ssubset_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-ssubset-univ.md) | 193 | `result-track:d6cd4ab0315a04ebc78b53cb395a5739b5a10e69f99100c2e9903456d8a4dd62` |
| 29 | `theorem` | [toFinset_image](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-image.md) | 197 | `result-track:6991fa5f7621ba8d613db2e280702718a55767ce20ac59a59bd97e18cb1f6552` |
| 30 | `theorem` | [toFinset_range](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-range.md) | 202 | `result-track:9d7947723b5de40248f8ea2bfac4db0d8f45aea799e3849e4746aa8236c3b795` |
| 31 | `theorem` | [toFinset_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-singleton.md) | 208 | `result-track:662a041c2a1beead4dabb87a64f3bf90fa1bac443b5f73972fb4b3700fc63123` |
| 32 | `theorem` | [toFinset_insert](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/tofinset-insert.md) | 213 | `result-track:eed064f5800358f33df5f2b22b89672517a80050e23b458e50d6a664c432a857` |
| 33 | `theorem` | [filter_mem_univ_eq_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/filter-mem-univ-eq-tofinset.md) | 218 | `result-track:b0ac15b36e98e3b4aef463c8fc7c3948e0010cb2eebc4f34ee6ce573cf3e7cb6` |
| 34 | `theorem` | [Finset.toFinset_coe](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/finset-tofinset-coe.md) | 226 | `result-track:1ad55a0e0af662d79cdbc042982e698d8006669337cfb11063c2f42200ded6f6` |
| 35 | `instance` | [Finset.fintypeCoeSort](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/finset-fintypecoesort.md) | 234 | `declaration-track:23c2c20bee1ca7a5446424bd30f45eb7ff8d8f98a5a2075ad0a6d9b4054a374b` |
| 36 | `theorem` | [Finset.univ_eq_attach](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/finset-univ-eq-attach.md) | 238 | `result-track:eba5549b148b55b5b167060a573a78fb8964b0455bc309043db176d46a9f2ff4` |
| 37 | `theorem` | [Fintype.coe_image_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/fintype-coe-image-univ.md) | 243 | `result-track:2a7b4947187ff84f707658c94bf0d1ca7f71d347fb2fd89388170a8f997534ce` |
| 38 | `instance` | [List.Subtype.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/list-subtype-fintype.md) | 247 | `declaration-track:9e1b7b1150abe839b7c25726ab1e0329ea00f1d84fc605d974b209c1cd398bf7` |
| 39 | `instance` | [Multiset.Subtype.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/multiset-subtype-fintype.md) | 250 | `declaration-track:60ea2b87267c8bf0ed62b0c5b0a9e9f16c2cf7da913095aaa675bfcfb1baed9b` |
| 40 | `instance` | [Finset.Subtype.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/finset-subtype-fintype.md) | 253 | `declaration-track:be046ad05264bf420531632a32d2039d8bb6f5c95d84e09c492ab7a1d8fa59a2` |
| 41 | `instance` | [FinsetCoe.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/finsetcoe-fintype.md) | 256 | `declaration-track:12e98c9eedaebbb17c2c8ad7be4bdc51013a5b5083610dfd072e9773982b9db0` |
| 42 | `theorem` | [Finset.attach_eq_univ](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/finset-attach-eq-univ.md) | 259 | `result-track:062797a3e1e9aaefce3139b42c88c3ae091fc483e01bcc8a90b4412563013e41` |
| 43 | `instance` | [Prop.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/prop-fintype.md) | 262 | `declaration-track:782377a2d160804a0db8095449f595208d57ffbed43965e14d3a082f06b835e0` |
| 44 | `theorem` | [Fintype.univ_Prop](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/fintype-univ-prop.md) | 266 | `result-track:d34cc05094326f641410504ea978e1ec061ac0b237a1df4b1b8fb97fa5170bb5` |
| 45 | `instance` | [Subtype.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/subtype-fintype.md) | 269 | `declaration-track:2dde25c35786c565bb0f4ef1983738c5a22fd0536ad3d220ce505cc3303401c9` |
| 46 | `def` | [setFintype](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/setfintype.md) | 274 | `declaration-track:408f235fcabf3a6bb53e43657c18f4544719181543da79a2a071867cfec35590` |
| 47 | `def` | [finsetEquivSet](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/finsetequivset.md) | 282 | `declaration-track:893d8cc6ed06b2cfc5e359334956f44d98076080126defb3712d11d50fe65f5d` |
| 48 | `lemma` | [coe_finsetEquivSet](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/coe-finsetequivset.md) | 288 | `result-track:bd82d8caf6d9053782d10d1358a6f50bf12bb6d2a48028ed2358a305fb67a56d` |
| 49 | `lemma` | [finsetEquivSet_apply](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/finsetequivset-apply.md) | 290 | `result-track:b38b32121a91f9ed495eedca5f82094ddb2787181045e0fc810f197fe219a1f3` |
| 50 | `lemma` | [finsetEquivSet_symm_apply](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/finsetequivset-symm-apply.md) | 292 | `result-track:c4e9b447c94f695f1c4fde1390795129d5b1fe81a72abec2d6e1803a508ef78e` |
| 51 | `def` | [finsetOrderIsoSet](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/finsetorderisoset.md) | 298 | `declaration-track:c48d133df4e8f728cf899e8be0f0ceabaf18ad51f9aa95cd33e0515b7d3a4d83` |
| 52 | `lemma` | [coe_finsetOrderIsoSet](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/coe-finsetorderisoset.md) | 303 | `result-track:545ecb405742c368c56bbfb27023788c86045101846226296a7ee5d5b654b052` |
| 53 | `lemma` | [coe_finsetOrderIsoSet_symm](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/coe-finsetorderisoset-symm.md) | 305 | `result-track:7b11479d129a0ab25977ce9e1ddbde913846a62fec1f069bbc9ff12b44444b9b` |
| 54 | `theorem` | [mem_image_univ_iff_mem_range](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/mem-image-univ-iff-mem-range.md) | 310 | `result-track:d72b63ddfbb262fc2cc30e442c0c7decf14ae7b7427b40600fa5249b92fc32bd` |
| 55 | `elab` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/elab.md) | 323 | `declaration-track:c16997cd98c92db316695ae636f6412e81475e7b78f19e3bf7f07c6ad03b1af7` |
| 56 | `def` | [precheckFinsetStx](../../../../../Combinatorics/EnumerativeCombinatorics/SetsNamespacedPublic.lean/declarations/precheckfinsetstx.md) | 335 | `declaration-track:3364475506eb4f21d4a6e0749abd1ecf26c69b326d4756ba420b0a5e3d4e8c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acd39e632df2fcb122a8e1e3e16b9319aee1e8708e3be772c473b7a7d76a46af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variante57e844e9287442de4e396d0b74c9d60c272fddce2146ef471413980b07dcba8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sets/Variante57e844e9287442de4e396d0b74c9d60c272fddce2146ef471413980b07dcba8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

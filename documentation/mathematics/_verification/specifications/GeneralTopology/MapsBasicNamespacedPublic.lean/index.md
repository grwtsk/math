# Verification target: Maps Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c554f98ab922db600d84c6f4bfa03f2671c8bf17",
  "lexical_observation_count": 160,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c554f98ab922db600d84c6f4bfa03f2671c8bf17`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsInducing.induced](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isinducing-induced.md) | 70 | `result-track:5d0e9cfc07a016531ad35bec8f1b34e0baeb761304996f1d8e3feab120549080` |
| 2 | `lemma` | [IsInducing.id](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isinducing-id.md) | 76 | `result-track:488a758bf79b3e098ff82cf0e22e46d67d3fd7cd58a6cf677a76771d9b79d3d7` |
| 3 | `lemma` | [IsInducing.comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isinducing-comp.md) | 81 | `result-track:dd46369464dfef604ca2d45f7dea119c1c852a7c5e99061f4d271274657e7299` |
| 4 | `lemma` | [IsInducing.of_comp_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isinducing-of-comp-iff.md) | 85 | `result-track:372598444f684e01e361e2ae5d48802fd37121cadd35b4fac92ec4329e4237e5` |
| 5 | `lemma` | [IsInducing.of_comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isinducing-of-comp.md) | 89 | `result-track:25b89f7e6e6838f5e0eca04ac9ae279de1dbab6207e03d8805a41ffe61d6dc5a` |
| 6 | `lemma` | [isInducing_iff_nhds](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isinducing-iff-nhds.md) | 93 | `result-track:87925729bbfcc7e14b61a7dfcddb9fb798a883ea46ad54f4ef08b9f1da6f1615` |
| 7 | `lemma` | [nhds_eq_comap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/nhds-eq-comap.md) | 98 | `result-track:47430bcbde0c0c40b391737e7c54a404fb2af881ae67b1861ea5c980c92eeb02` |
| 8 | `lemma` | [basis_nhds](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/basis-nhds.md) | 101 | `result-track:9333889b345e451ef3f53a5731e09ff1079d0b3ce9364ae13b99c26e3fb93965` |
| 9 | `lemma` | [nhdsSet_eq_comap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/nhdsset-eq-comap.md) | 105 | `result-track:b2ccc1fb9d260c607ebe22d72039e67ddfe8ed713430beea607e06251941aa2d` |
| 10 | `lemma` | [map_nhds_eq](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/map-nhds-eq-source-edition-2.md) | 109 | `result-track:720c0015e10341d2c6cacb41fede8532cc0c25912420ffa8da1d015d8b52d1aa` |
| 11 | `lemma` | [map_nhds_of_mem](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/map-nhds-of-mem.md) | 112 | `result-track:07c740441be578db5a2d787cee5c419b6b70dddaae786b545fbf3c32df039606` |
| 12 | `lemma` | [mapClusterPt_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/mapclusterpt-iff.md) | 115 | `result-track:364d09b6a82a1ef94ac33b770ea2456b760e58552c96e66d2e19e4967017e2c4` |
| 13 | `lemma` | [image_mem_nhdsWithin](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/image-mem-nhdswithin.md) | 120 | `result-track:375b14414ee76a3075484cb829a1fc4b483ea85eb90405a2eec6cda36db6577a` |
| 14 | `lemma` | [tendsto_nhds_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/tendsto-nhds-iff-source-edition-3.md) | 124 | `result-track:fbb00db04a0d40e4671d8876e9acb13ad583270cdb2ace6dd465cccb2e61e41d` |
| 15 | `lemma` | [continuousAt_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/continuousat-iff-source-edition-2.md) | 128 | `result-track:836bf868f3c636e279c5ed6cec2fd7805bc321f679d706f831e224d875b13731` |
| 16 | `lemma` | [continuous_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/continuous-iff.md) | 132 | `result-track:56f6cc3eee17b4713e0db5ed3e3f4b71827172c1ecb88fcf4c08723d1324cf62` |
| 17 | `lemma` | [continuousAt_iff'](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/continuousat-iff.md) | 136 | `result-track:45dc40d9cfa3831fd087127ccd41afcb9d4c6afd0cae50a7b3168eab1cd2a871` |
| 18 | `lemma` | [continuous](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/continuous-source-edition-3.md) | 141 | `result-track:2e51b7a0d23b2c637f3598e618ae2ec19fd48c4684063f294c8b8b42038531be` |
| 19 | `lemma` | [closure_eq_preimage_closure_image](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/closure-eq-preimage-closure-image-source-edition-2.md) | 144 | `result-track:4841d699918c83c39895a5f534d33c317bab292f1ed9c6258b5f633dc8b12223` |
| 20 | `theorem` | [isClosed_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosed-iff-source-edition-2.md) | 149 | `result-track:f3fbf575a4339f355d58239f7793d763d45e48f316567b1f87d2b598d50de35c` |
| 21 | `theorem` | [image_eq_isClosed_inter_range](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/image-eq-isclosed-inter-range.md) | 152 | `result-track:cd6e095196cca56874e1dcb7e1068be499b48ee5d768179729130d9c4cf9cc5e` |
| 22 | `theorem` | [isClosed_iff'](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosed-iff.md) | 157 | `result-track:23da50611c06a19cb23b6a3a3182854042cf7f98c84f10e57a6c96fd833f4c31` |
| 23 | `theorem` | [isClosed_preimage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosed-preimage.md) | 160 | `result-track:298108d089d48d4339f77deb7d18fa50fda6c6d310e4727e2f3fcfddf60f6bf8` |
| 24 | `theorem` | [isOpen_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopen-iff.md) | 164 | `result-track:335cdc31de44b4cebeee911365bded28bef7255eccf67603347aceee25a67a40` |
| 25 | `theorem` | [image_eq_isOpen_inter_range](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/image-eq-isopen-inter-range.md) | 167 | `result-track:99c6fcc39599230eff7d6fb46a4cb94e67e3aeb76661ac02229a79b8c889e420` |
| 26 | `theorem` | [setOfPred_isOpen](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/setofpred-isopen.md) | 172 | `result-track:1bb079d4249bf258d39d519cba264937368bcf228cf5d0b1f71360aa1efeeb2f` |
| 27 | `theorem` | [dense_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/dense-iff.md) | 178 | `result-track:675b63cbb25fcf488da65feea1a46ccbdbfa082775cc9bdad01df84b18269e0d` |
| 28 | `theorem` | [of_subsingleton](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-subsingleton-source-edition-2.md) | 182 | `result-track:e8fa8b55adb5bf84371ddaf1c912eff844638a50326eaa7b898f6297bc7f4671` |
| 29 | `theorem` | [indiscreteTopology](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/indiscretetopology.md) | 185 | `result-track:8664ada113469894c1ee3b52cee7dbd9422c55ee4e0fce38a147e634f735a9a8` |
| 30 | `theorem` | [nontrivialTopology](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/nontrivialtopology.md) | 192 | `result-track:4ed3bc0a30635db6794fab4bdaedd8aa4b11982a2d1a9ea716550014d8b2cc9b` |
| 31 | `lemma` | [induced](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/induced.md) | 201 | `result-track:6f8e9aeeeb1571d0771a9882cdbeb7e52c53eeb27221e333651d73d768436530` |
| 32 | `lemma` | [isInducing](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isinducing-source-edition-2.md) | 210 | `result-track:be4c61c472d0419c1f44845f4f056d072e8d54e5bd17f2eb0fa5077ba715c41f` |
| 33 | `lemma` | [mk'](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/mk.md) | 212 | `result-track:e8e07ca7cff24cd7d7e32a46dea23bf22d41597bca6a00bba11753f61961abc2` |
| 34 | `lemma` | [id](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/id-source-edition-4.md) | 217 | `result-track:aed14fa61ed7bb389d2af086ae86f076dfa7736f5000b1c563c7c4a79e5f2202` |
| 35 | `lemma` | [comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/comp-source-edition-2.md) | 220 | `result-track:6d68344690e0724323a643c1a18d4df8e4233865db13357f3c5c304bef0aec8d` |
| 36 | `lemma` | [of_comp_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-iff-source-edition-2.md) | 223 | `result-track:98c29788087c438ff0befab3eb0e1f44adb7902d21062f6afc5c7798b56cdc4f` |
| 37 | `lemma` | [of_comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-source-edition-3.md) | 226 | `result-track:923656b8ab1d05e055bd17a0f935f3401966afb7e093086413f9ec03bafa3e54` |
| 38 | `lemma` | [of_leftInverse](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-leftinverse.md) | 231 | `result-track:c3d027f351b16ccd33f30f4472a70089efd40a92a02778838d1eb1fd742b93c7` |
| 39 | `lemma` | [of_leftInverse_of_isInducing](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-leftinverse-of-isinducing.md) | 236 | `result-track:2186b7fbc00f499adb3e60a7cfedb20fd0b53b2c39ba7890955d238bcb6ed10e` |
| 40 | `lemma` | [map_nhds_eq](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/map-nhds-eq-source-edition-3.md) | 243 | `result-track:7e0b9487064772be2374e4a5fd5f7cf113dabb20f04b0b66a0c54ad09b6f7ced` |
| 41 | `lemma` | [map_nhds_of_mem](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/map-nhds-of-mem-source-edition-2.md) | 246 | `result-track:40b4bf051e3641503ee61148cb08e28c27043397a3bb4e4a9bd3d2c3f3d8352f` |
| 42 | `lemma` | [tendsto_nhds_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/tendsto-nhds-iff.md) | 250 | `result-track:4fda2b594bfe0c596a7ab65ce2861a4f2e038de89d7e6fc75388ebd72e292a90` |
| 43 | `lemma` | [continuous_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/continuous-iff-source-edition-2.md) | 253 | `result-track:a592b047293d92c9019d491b5c31577b7ae687b2a4b36675a1a9baecfe81bcea` |
| 44 | `lemma` | [continuous](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/continuous-source-edition-2.md) | 257 | `result-track:1b01b9face08c8b778ba8e4bb7d3658c01ab24d089d17d39888c7ea04c5473b1` |
| 45 | `lemma` | [closure_eq_preimage_closure_image](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/closure-eq-preimage-closure-image.md) | 259 | `result-track:1ca53c1d463d0913be8b34a41b30f61939745cc1a3967fd944a73c6b54aa1ad8` |
| 46 | `lemma` | [discreteTopology](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/discretetopology.md) | 267 | `result-track:ef2c93f18ba6317987753e780152f5475cae4d9eb7ae30d6a07189d2e75960d9` |
| 47 | `lemma` | [of_subsingleton](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-subsingleton.md) | 270 | `result-track:97cda4e41d4555af6a5f827560ea4a658964232f3eabb347fc028cd3441ad38b` |
| 48 | `lemma` | [isCoinducing_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/iscoinducing-iff.md) | 279 | `result-track:1815490a7464484b1b526a18144a72afbbc6eec5de58f3288509772fa5c6ec23` |
| 49 | `lemma` | [isCoinducing_iff_isClosed](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/iscoinducing-iff-isclosed.md) | 282 | `result-track:dee8e300821a085ee7d513f9dbbbd2d729531081dfbcfd5c80a5b734456a52d9` |
| 50 | `lemma` | [isOpen_preimage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopen-preimage.md) | 288 | `result-track:c6914e334401196526d23db4a9c6a7c7f770b9a5d39af4c60b45524fa1ac6a33` |
| 51 | `lemma` | [isClosed_preimage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosed-preimage-source-edition-2.md) | 292 | `result-track:bae9f6b2aa5cf06ad997fe314a27b607a4dd926167504e6f8c5c87884f8298c6` |
| 52 | `lemma` | [continuous](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/continuous-source-edition-5.md) | 300 | `result-track:bbbf971f9e7f072d94628dfcfda45c69ea0d0267ac09de53ed6987a0338a3c0c` |
| 53 | `lemma` | [id](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/id-source-edition-5.md) | 305 | `result-track:b184ec4df890cdf9651012424c1c9af5625c055ec793f818d82d0c6370202ea2` |
| 54 | `lemma` | [comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/comp-source-edition-6.md) | 309 | `result-track:b0a131a8534d1d0068624b7d23a248b114f28957fc1f6b0144278e5d642492a7` |
| 55 | `lemma` | [of_comp_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-iff-source-edition-3.md) | 312 | `result-track:993affea91d75c8d3a87bd31cb1a6e6c35e9f5f8003f99b00086b7fe533343ad` |
| 56 | `lemma` | [of_comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-source-edition-4.md) | 317 | `result-track:aae4b094dbfe13c63b15e84b70bd99156c7e06423a3178473c1677a3f3724e96` |
| 57 | `lemma` | [isOpenMap_of_injective](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenmap-of-injective.md) | 321 | `result-track:f977bad029d624b48f475e7684bd9cc421b9d1fd70834303ca6b0f4d497b2f98` |
| 58 | `theorem` | [isQuotientMap_iff_isClosed](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isquotientmap-iff-isclosed.md) | 333 | `result-track:7f132e89f22802e58e3e6c024a2a5fcd24707d0f79527d5aaba5f69caaefd6c7` |
| 59 | `theorem` | [id](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/id-source-edition-3.md) | 340 | `result-track:8062afb9d00bc264f8f165afe9cc6675a2be3a5594b6ec3e081e9316601c8ea8` |
| 60 | `theorem` | [comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/comp-source-edition-3.md) | 344 | `result-track:7d0a57157f3d83dccd40b199c6d766a35f3787b3d3ceee8790e9099c60d56188` |
| 61 | `theorem` | [of_comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp.md) | 347 | `result-track:0f7e7485f99401aff6f3652c72eefde7d41700de82a6ac6676d2abd0691429c2` |
| 62 | `theorem` | [of_comp_of_isCoinducing](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-of-iscoinducing.md) | 351 | `result-track:20782894d9bc0bce5c9f235cf9988cf77873650665887eb2aade052379934ca1` |
| 63 | `theorem` | [of_comp_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-iff.md) | 358 | `result-track:47634e2cbc861afb70df953419dc662d12666f9810dad15527ed2e39ac710a65` |
| 64 | `theorem` | [of_comp_isQuotientMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-isquotientmap.md) | 362 | `result-track:f3ec625259f5b19eceee5f0bc8e0e663c77f4ac4779bb2e8d7ea5457e0a44409` |
| 65 | `theorem` | [of_inverse](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-inverse-source-edition-3.md) | 365 | `result-track:caea0d87d51187daa5c0ea7fb87accde7ab33d72e66fb6655a64ec848954eb93` |
| 66 | `theorem` | [continuous_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/continuous-iff-source-edition-3.md) | 368 | `result-track:ed584290a299b9fdcd4300cd954968f05cf2493a483874981837f4999de3edfd` |
| 67 | `theorem` | [continuous](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/continuous-source-edition-4.md) | 372 | `result-track:59e5992fd37d3e5c42be8e80cdf4b521e52fa9c270480a85cd95154e33a889ee` |
| 68 | `theorem` | [id](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/id-source-edition-7.md) | 384 | `result-track:d7cddfd648b8a870dbbc04b09f0ae98b2b440ee0aba9a8936a404b8835657d3e` |
| 69 | `theorem` | [comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/comp-source-edition-7.md) | 386 | `result-track:b57184acc482ae2f5183c62dbe1d0867b114f3d5faaf8752170d7ff3ceea7399` |
| 70 | `theorem` | [of_comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-source-edition-2.md) | 390 | `result-track:57f8cffbd53ee81f58dc6677fefa17abea5b26eecd0132c85ff83ad187daa2e5` |
| 71 | `theorem` | [isOpen_range](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopen-range.md) | 395 | `result-track:b674bd00fffd21df02a42ebe6b2b889c63b8854a04a8122b0d8da3265f46f0b0` |
| 72 | `theorem` | [image_mem_nhds](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/image-mem-nhds.md) | 399 | `result-track:03ef5aff7a73484372bf27586749a48d0f33606976ddde02ecc5dd484b408a33` |
| 73 | `theorem` | [range_mem_nhds](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/range-mem-nhds.md) | 403 | `result-track:3a6a8f6e82a58960479c4acc171359895a3252ca90b4c298c679c110b65a1bb3` |
| 74 | `theorem` | [mapsTo_interior](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/mapsto-interior.md) | 406 | `result-track:886fee094ba4be8abc991604ff5fe508285799bb13f597443654edb50a7ea8e2` |
| 75 | `theorem` | [image_interior_subset](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/image-interior-subset.md) | 411 | `result-track:9be0a962b9ba456052d25ec8c2420bfaa878e128c26f74b92e82a8fbc2cdb693` |
| 76 | `theorem` | [nhds_le](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/nhds-le.md) | 415 | `result-track:37a63370f0328e65c4fe174fa0ea00ba0f683c675b47e2e14789ff45f238be89` |
| 77 | `theorem` | [map_nhds_eq](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/map-nhds-eq.md) | 418 | `result-track:33cc323e76e0150ef5de07c8f436056feff4502a685ecc1ce0bcf38e7b4ac95b` |
| 78 | `theorem` | [map_nhdsSet_eq](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/map-nhdsset-eq.md) | 421 | `result-track:64bf3572163fb34b5724965a05180cb0c1d7e031c1a5af42ee08d609721ec1dc` |
| 79 | `theorem` | [of_nhds_le](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-nhds-le.md) | 427 | `result-track:027b291cc86a3ef34ce12c0c84e8d9b27289b1d96251a240ea80e4f16427e541` |
| 80 | `theorem` | [of_sections](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-sections.md) | 430 | `result-track:1fab65851e75c0b22ad5d378e5adf9072a86373efff5ed0d4262e5e31d7ce7e3` |
| 81 | `theorem` | [of_inverse](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-inverse.md) | 439 | `result-track:35de8dfe272a0eb76dfecdc3e36f5c10bfca12b76cf7d21cdacccf65c5c1a789` |
| 82 | `theorem` | [isQuotientMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isquotientmap-source-edition-2.md) | 444 | `result-track:0fdf4d14c3e4c0cd346e25d1db8044e3fcf1377c80168e615f5de859383cfe1d` |
| 83 | `theorem` | [interior_preimage_subset_preimage_interior](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/interior-preimage-subset-preimage-interior.md) | 450 | `result-track:cd7b0638257a5ab45511948a6647af4dd52e0f1b0890acd9060dc96173ffb09f` |
| 84 | `theorem` | [preimage_interior_eq_interior_preimage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/preimage-interior-eq-interior-preimage.md) | 454 | `result-track:f21b564358d91d8a573249efa8facd482a3d638f85eb56bf6baa173354de0a29` |
| 85 | `theorem` | [preimage_closure_subset_closure_preimage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/preimage-closure-subset-closure-preimage.md) | 459 | `result-track:ca63c21f83b3f9b60bd544d1738bdb4b3a536336c9f43e19cbf36b6563e259d8` |
| 86 | `theorem` | [preimage_closure_eq_closure_preimage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/preimage-closure-eq-closure-preimage.md) | 464 | `result-track:9dcbf5b0e654391bcca79ccc0e7c9dd354a8597cdb14be5cea84ff40dd1fa817` |
| 87 | `lemma` | [preimage_closure_image](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/preimage-closure-image.md) | 468 | `result-track:497227c2dd2673155cb0bf96436737b318e9ff3f3cd8039676a12f4b2b3a1f09` |
| 88 | `theorem` | [preimage_frontier_subset_frontier_preimage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/preimage-frontier-subset-frontier-preimage.md) | 472 | `result-track:aeac2b418ba22b3444cb5df2e21d1bb270636e02639d3ffb03af8e03fd5be6d3` |
| 89 | `theorem` | [preimage_frontier_eq_frontier_preimage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/preimage-frontier-eq-frontier-preimage.md) | 478 | `result-track:ccbedbb38869e959e1faf341357850ab9abaf6a696a0c0022633ada067f9119a` |
| 90 | `theorem` | [of_isEmpty](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-isempty-source-edition-2.md) | 483 | `result-track:baef5caf188ec6ca11f98fbcaf920fb619430104783d9fa3ff1168ecd382b3fa` |
| 91 | `theorem` | [clusterPt_comap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/clusterpt-comap.md) | 485 | `result-track:118a960055ab751c72704a584c3cc1dd43cb003656f198a46cc5157f87e273e4` |
| 92 | `theorem` | [accPt_comap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/accpt-comap.md) | 490 | `result-track:5565127c85882c43ac70d8de6d00f63b30614587bcd27a2a625739256b78f58a` |
| 93 | `theorem` | [clusterPt_comap_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/clusterpt-comap-iff.md) | 497 | `result-track:0a05fdcd3900b9eca99a452a80d5fb46ea99f4b6b9aaaa7790ea133d620af1ba` |
| 94 | `lemma` | [isOpenMap_iff_kernImage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenmap-iff-kernimage.md) | 508 | `result-track:64794abc756c17200340878bbcf61291c38508ffc7c05c2fe8c7b46434dfd995` |
| 95 | `theorem` | [isOpenMap_iff_nhds_le](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenmap-iff-nhds-le.md) | 513 | `result-track:fd358c9120ba29a3a6a87cd7348dd9dc34f9b723e2859a26007915292f873372` |
| 96 | `theorem` | [isOpenMap_iff_clusterPt_comap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenmap-iff-clusterpt-comap.md) | 516 | `result-track:f01dd6afc4cc7229c8d50996a7379c155b73e00f0a7cc07576e56c0d9599a284` |
| 97 | `theorem` | [isOpenMap_iff_image_interior](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenmap-iff-image-interior.md) | 525 | `result-track:c8535b73b9e1a09e2c36b652697a5d7ef7b448fc7762de9a4272943b05d7ddf5` |
| 98 | `lemma` | [isOpenMap_iff_closure_kernImage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenmap-iff-closure-kernimage.md) | 530 | `result-track:4c16d1bb4c4666bf7a4acd08061026440325c27abf77a111fbc10f8b39d9bf52` |
| 99 | `lemma` | [Topology.IsInducing.isOpenMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/topology-isinducing-isopenmap.md) | 536 | `result-track:29fc6935cc02685cf5749418ceef3f0de84880dc97016084cec4fbd657fab2a8` |
| 100 | `theorem` | [Dense.preimage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/dense-preimage.md) | 541 | `result-track:ba4372ce77d5e00e088ebf5b5e435cae3c2760f71ef45883e4ebc6d6569b6d82` |
| 101 | `theorem` | [id](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/id-source-edition-6.md) | 554 | `result-track:ba5718474b2a03617a831cfdbce0dc1f76bfa4d8951b7697e5088c68c8b75630` |
| 102 | `theorem` | [comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/comp.md) | 556 | `result-track:2f5d18ec719b08a3530388f2aa9516fc408bd52dea036e08906132a322c89a7e` |
| 103 | `theorem` | [of_comp_surjective](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-surjective.md) | 561 | `result-track:7069f6b594c0f56de3e75cb6dd8ed4f73c2d316b60a06467a8ca2c06e9ffd809` |
| 104 | `theorem` | [closure_image_subset](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/closure-image-subset.md) | 567 | `result-track:e0732f4a850016b5b4cc97fb7e7afa04e71c3ce2ac29e5e1883720ab23a09ddd` |
| 105 | `theorem` | [of_inverse](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-inverse-source-edition-2.md) | 571 | `result-track:800e32e6d28779e4caf1aa64d4f487f9fc836612eb925df8987deca1c0f89aef` |
| 106 | `theorem` | [of_nonempty](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-nonempty.md) | 576 | `result-track:9df33e4a83b21b87c7da12cccea7605e927db0a8f293274eaf20b24013acb5dd` |
| 107 | `theorem` | [isClosed_range](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosed-range.md) | 582 | `result-track:2bf82780464795638360c4876537528adc6c59eba7937f9c840be21f9c8411d0` |
| 108 | `theorem` | [isQuotientMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isquotientmap.md) | 586 | `result-track:04586bf2f0aca0fa75dd0f15755e279d11db656d9eca852fdced20d2f473cb8f` |
| 109 | `lemma` | [isClosedMap_iff_kernImage](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-iff-kernimage.md) | 598 | `result-track:45b810376bafa78ce0c0c076e94e43e158e26b60045a0c51e78b5cc37666339b` |
| 110 | `lemma` | [Topology.IsInducing.isClosedMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/topology-isinducing-isclosedmap.md) | 603 | `result-track:a262547cf62124cf5781278f0de5fa599f2e2cc780fd656f3ffec4f0215f2d44` |
| 111 | `theorem` | [isClosedMap_iff_closure_image](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-iff-closure-image.md) | 610 | `result-track:5c92abd456ea9ede91689aba554544e5c452a28e28a96e24afa63f39b2ee36fd` |
| 112 | `theorem` | [isClosedMap_iff_kernImage_interior](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-iff-kernimage-interior.md) | 618 | `result-track:04cea0bbcbae24dfd7de1887815ca441b4fa707d534722b077e78c3d49033205` |
| 113 | `theorem` | [isClosedMap_iff_clusterPt](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-iff-clusterpt.md) | 627 | `result-track:22ef164e4d5dcad543cdb281020de8bada579db414f2796ba8d180c2bdbb806e` |
| 114 | `theorem` | [isClosedMap_iff_comap_nhdsSet_le](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-iff-comap-nhdsset-le.md) | 632 | `result-track:4f8c5ceb4846bad2e9073cc8945fc4e126c2ab6e6aec978aeb7033bb0fdbd6ef` |
| 115 | `theorem` | [isClosedMap_iff_comap_nhds_le](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-iff-comap-nhds-le.md) | 640 | `result-track:569e94b822ff3dc26445ca7ddc5339d9b695574f36c0c723ff47f732fafd7669` |
| 116 | `theorem` | [IsClosedMap.comap_nhds_eq](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-comap-nhds-eq.md) | 652 | `result-track:1e8acc4c1caffe17fa68e97d056b18a3eb1ed961639dce8038f7aff5fe964a3a` |
| 117 | `theorem` | [IsClosedMap.comap_nhdsSet_eq](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-comap-nhdsset-eq.md) | 659 | `result-track:72a615d86dea5c62085dbfcee343467a59528bb053e449a0a5cfccf759cd325f` |
| 118 | `theorem` | [IsClosedMap.eventually_nhds_fiber](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-eventually-nhds-fiber.md) | 668 | `result-track:c433e839eb6f7448f0e14cc2369127e01fa14815c1b1401926fae6efb6a78f02` |
| 119 | `theorem` | [IsClosedMap.frequently_nhds_fiber](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-frequently-nhds-fiber.md) | 678 | `result-track:424707c6f73d68a20b618262053c407123d6b183ff13492d3a1e686874230297` |
| 120 | `theorem` | [IsClosedMap.closure_image_eq_of_continuous](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-closure-image-eq-of-continuous.md) | 690 | `result-track:1c8f0015d10c34a4876e96e90c7a43cc116a53ae7ec874d7c993f5a3f15f1cd6` |
| 121 | `theorem` | [IsClosedMap.lift'_closure_map_eq](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-lift-closure-map-eq.md) | 695 | `result-track:ae517cecd2a3b0d7972aa1dd087265448acbdcd2278639a0366e065aef015d89` |
| 122 | `theorem` | [IsClosedMap.mapClusterPt_iff_lift'_closure](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap-mapclusterpt-iff-lift-closure.md) | 703 | `result-track:89ec035cb530152ce7849e6c75ee04528873fa225477bebc4967f1ef7d853e6f` |
| 123 | `lemma` | [IsOpenEmbedding.isEmbedding](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-isembedding.md) | 717 | `result-track:b5bfce876569ef4694cd82091e32cd8260da910a669e2e7174bca88b5707e35c` |
| 124 | `lemma` | [IsOpenEmbedding.isInducing](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-isinducing.md) | 719 | `result-track:6fbdd34519f34affac71091ccea439a54483a44be12ac4c3dc8c01fdcb3ba121` |
| 125 | `lemma` | [IsOpenEmbedding.isOpenMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-isopenmap.md) | 722 | `result-track:2e9d244b7642bc03dcc69484cb87635a97a1b6391a89b7bdbf4e44e8cbb6f254` |
| 126 | `theorem` | [IsOpenEmbedding.map_nhds_eq](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-map-nhds-eq.md) | 725 | `result-track:adf941185cd3443ed595bcc09cab4f93fef30401313077cd58380a06e4b95e7c` |
| 127 | `lemma` | [IsOpenEmbedding.isOpen_iff_image_isOpen](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-isopen-iff-image-isopen.md) | 729 | `result-track:28ba1162cf43c3400d6c26a74a4ec8c478bde7f26aadc292d0fbbd7f982b91be` |
| 128 | `theorem` | [IsOpenEmbedding.tendsto_nhds_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-tendsto-nhds-iff.md) | 736 | `result-track:3c892667df926737db0dee986ad8a378190c879f6381ae812eecfecddd482a82` |
| 129 | `theorem` | [IsOpenEmbedding.tendsto_nhds_iff'](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-tendsto-nhds-iff-source-edition-2.md) | 740 | `result-track:aefb865dcf0a150b41fe93d3be374ca8497f1c53051eb80ba510832e8584de41` |
| 130 | `theorem` | [IsOpenEmbedding.continuousAt_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-continuousat-iff.md) | 744 | `result-track:8a85cb3d5b82af0b42d92f267299c78e7220ccac74b2a0531c759cabf19aea3b` |
| 131 | `theorem` | [IsOpenEmbedding.continuous](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-continuous.md) | 749 | `result-track:79853f66c00824041404b03f22f76539048bdf3c44865b70e7f79113c643ceea` |
| 132 | `lemma` | [IsOpenEmbedding.isOpen_iff_preimage_isOpen](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-isopen-iff-preimage-isopen.md) | 752 | `result-track:45ae1434224c33d7550c18b7490c68d48c4aeef2017ddac6f7eb4431700c097c` |
| 133 | `lemma` | [IsOpenEmbedding.of_isEmbedding_isOpenMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-of-isembedding-isopenmap.md) | 757 | `result-track:85e52a37440be4cb5ba0882d8c99c7946e9ae0b72dda1242aa3c066d7d56c666` |
| 134 | `lemma` | [IsEmbedding.isOpenEmbedding_of_surjective](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isembedding-isopenembedding-of-surjective.md) | 762 | `result-track:9f7da0280d9ec88acc0f673ca21b633ef36fc846e684e4fab5c3959f3f87e4e6` |
| 135 | `lemma` | [isOpenEmbedding_iff_isEmbedding_isOpenMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-iff-isembedding-isopenmap.md) | 768 | `result-track:82018473c668ba4230f4cdfe4b8f3d0669bcacf1c797999a107f6235810e72eb` |
| 136 | `theorem` | [IsOpenEmbedding.of_continuous_injective_isOpenMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-of-continuous-injective-isopenmap.md) | 771 | `result-track:24484812442c18d443a251ea12cb5cc6e26a96018134723cea7a184055662c83` |
| 137 | `lemma` | [isOpenEmbedding_iff_continuous_injective_isOpenMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenembedding-iff-continuous-injective-isopenmap.md) | 778 | `result-track:51f2b7f4efbee258e2f7912beffc35f5f2d7382f1e31b5cb0831d025d49afc2e` |
| 138 | `lemma` | [id](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/id.md) | 787 | `result-track:40162b4e97dc5f4085ab3550afb31c201cfdf170eabee5fcf32365d9d2374301` |
| 139 | `lemma` | [comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/comp-source-edition-5.md) | 790 | `result-track:ae19c4956235280ff80b5b0351b4641665875d898e8c3d16458b5e45ce733016` |
| 140 | `theorem` | [isOpenMap_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isopenmap-iff.md) | 794 | `result-track:b236a7503ec08191a619da139fc5a30250de46dd4c1b6ed84f7593b39dd209be` |
| 141 | `theorem` | [of_comp_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-iff-source-edition-5.md) | 798 | `result-track:f966d916d8650b9edfaf029fe5c62eadad78027093bbcc6e5d42fabdf12af862` |
| 142 | `lemma` | [of_comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-source-edition-5.md) | 803 | `result-track:d4583da9205de8c213616d46c57f9603a0caa03b1785841c7c69513c533940f3` |
| 143 | `theorem` | [of_isEmpty](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-isempty.md) | 806 | `result-track:139fbd3e494120359c66a8ac9212e3b78689ab5ff81dac8cc5f32d80ba52b0bb` |
| 144 | `theorem` | [image_mem_nhds](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/image-mem-nhds-source-edition-2.md) | 809 | `result-track:cb2f52f77842c3840eee5864a4204f7a158dcd54adf3bf00a0f1429bec1a9871` |
| 145 | `theorem` | [accPt_comap_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/accpt-comap-iff.md) | 813 | `result-track:30a0197e0747d530456ff69e1a716c81c77e0d3cbb603c425d291d6c67ba7f35` |
| 146 | `lemma` | [isEmbedding](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isembedding.md) | 831 | `result-track:0a350fd66741232b0cd808a3de719f4c833bd36a9dcbe5228b5548d670af6a3b` |
| 147 | `lemma` | [isInducing](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isinducing.md) | 833 | `result-track:8bc4d760ecf6f846808cf9fbaa64a24e369ec721ef1e6fe7a1fc16528a48c9c7` |
| 148 | `lemma` | [continuous](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/continuous.md) | 835 | `result-track:11ef9db98d45aa56ebfc59929ab214325f2db2cf7ac24798e78d2833a104b4e2` |
| 149 | `lemma` | [tendsto_nhds_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/tendsto-nhds-iff-source-edition-2.md) | 837 | `result-track:52f487de83d840094f57c9fc468ab1c90d1daddf940b2842893b5edf63174946` |
| 150 | `lemma` | [isClosedMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedmap.md) | 840 | `result-track:77d9aebd04e80d0477656b16d678f2093f7cbe6d67b4fedf339f3f35b1512acf` |
| 151 | `lemma` | [isClosed_iff_image_isClosed](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosed-iff-image-isclosed.md) | 843 | `result-track:dd2731755464884ed5bffff35abc621290be72a2f106371de0d16518928f9e15` |
| 152 | `lemma` | [isClosed_iff_preimage_isClosed](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosed-iff-preimage-isclosed.md) | 849 | `result-track:d8b9b9a35de82a653772db7ec50f132576e3d84c2d142163bafc74c73ae6bc05` |
| 153 | `lemma` | [of_isEmbedding_isClosedMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-isembedding-isclosedmap.md) | 853 | `result-track:b9b9b3dc5992e70cb69515be6b00f9b75780345350350f3775e9900f2fbbb927` |
| 154 | `lemma` | [of_continuous_injective_isClosedMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-continuous-injective-isclosedmap.md) | 857 | `result-track:515cedc1e92fd6441ef6b73b37d0ffcdd35835b0003867c674f652e8bc3536c2` |
| 155 | `lemma` | [isClosedEmbedding_iff_continuous_injective_isClosedMap](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/isclosedembedding-iff-continuous-injective-isclosedmap.md) | 864 | `result-track:9fc0376d74a9b70092ecf031c90726f33b33da96942e0df35b03bdc52e707d3e` |
| 156 | `theorem` | [id](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/id-source-edition-2.md) | 870 | `result-track:41c5a1540ec9374183f8c1e218f994d8d8fc9de5b64a03c67113bfebc8f8fc93` |
| 157 | `theorem` | [comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/comp-source-edition-4.md) | 873 | `result-track:974c34f640b7a63722738928f411c066d72192bfb441a52800e82b8355a10482` |
| 158 | `lemma` | [of_comp_iff](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-iff-source-edition-4.md) | 877 | `result-track:d92d3df1d4b61b7891df9eb110bdff863db786fc17af89f772395feed7b8bd82` |
| 159 | `lemma` | [of_comp](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/of-comp-source-edition-6.md) | 881 | `result-track:df2196a61c06be8ef59195aed6b68e455025903cbae472fabd3d259cc9b6683f` |
| 160 | `theorem` | [closure_image_eq](../../../../GeneralTopology/MapsBasicNamespacedPublic.lean/declarations/closure-image-eq.md) | 888 | `result-track:753d2061bc1258982a5587fdec62890586a11b1d9a869ce8fad53886bee005ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c098b5a843c12efb418c5115acd251397e80a2ac7b8e59505cfc05d5bec7c3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

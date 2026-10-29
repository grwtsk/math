# Verification target: Locally Finsupp Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80084dd2ce2e6875491a2bd80de9e453c951612b",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80084dd2ce2e6875491a2bd80de9e453c951612b`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean.json)

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
| 1 | `structure` | [Function.locallyFinsuppWithin](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/function-locallyfinsuppwithin.md) | 58 | `declaration-track:3f294d0a8e976ce177aaff070cb477095b9c6d9dc2603e689fb1328d6b791b37` |
| 2 | `abbrev` | [Function.locallyFinsupp](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/function-locallyfinsupp.md) | 71 | `declaration-track:f45e30e1e74a583e316aaf7515ba83db1d04d65ca246412a0136a9d33caa925b` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 76 | `declaration-track:55fa2bb9fea3057f98f1da646de33f32615f6f949d1809a057bbe2b8f3dd1a9f` |
| 4 | `theorem` | [supportDiscreteWithin_iff_locallyFiniteWithin](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/supportdiscretewithin-iff-locallyfinitewithin.md) | 88 | `result-track:991f051baad6a37b26ad104c28ebe71dd18290d8c2f2f397ad4d1eadb5cf9075` |
| 5 | `def` | [LocallyFiniteSupport](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/locallyfinitesupport.md) | 101 | `declaration-track:3f97f355a45b9692082de940ab7d50cd3ec0488f5a5281491bc0187d326375e8` |
| 6 | `lemma` | [LocallyFiniteSupport.iff_locallyFinite_support](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/locallyfinitesupport-iff-locallyfinite-support.md) | 104 | `result-track:4e5710d322b65832bcd8426571237fbbd9ce424112ae76698ac94560effe0d26` |
| 7 | `lemma` | [LocallyFiniteSupport.locallyFinite_support](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/locallyfinitesupport-locallyfinite-support.md) | 112 | `result-track:9e099b8ef73b62648a688b15daf0b0acdb4d7c876af1c94ba6926dcbe0302199` |
| 8 | `lemma` | [LocallyFiniteSupport.finite_inter_support_of_isCompact](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/locallyfinitesupport-finite-inter-support-of-iscompact.md) | 116 | `result-track:1ce3955df72959d6582ea70a19740813372b1ef7817fd17ed43895d76615d336` |
| 9 | `lemma` | [Function.locallyFinsupp.locallyFiniteSupport](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/function-locallyfinsupp-locallyfinitesupport.md) | 125 | `result-track:cadad0ef4dcb8b912f51f30ebdafff5545d214b1081f1e686288c74a57e8f077` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 136 | `declaration-track:9f9e4ea7f80db017d151cf22b9235df206ae12ed09189af498934f994e11d178` |
| 11 | `lemma` | [toFun_eq_coe](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 141 | `result-track:c32566e44d2cba89be3c746007e428a2df1988f77ea91cf780412e74a7cd7aa7` |
| 12 | `lemma` | [coe_mk](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-mk.md) | 144 | `result-track:cb9d3ebf1ac0105ad4a9ef10ec1194671d88fa8f642f8a1657c0928fa06dceb7` |
| 13 | `abbrev` | [support](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/support.md) | 149 | `declaration-track:ea2e376f36fd3bf67ad7e445cec86dbb833cc4255748b8770042677f02206fa4` |
| 14 | `lemma` | [supportWithinDomain](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/supportwithindomain.md) | 151 | `result-track:4819da2d407aa178fa818e8691b2cbb63aaba78c2f8d9e38cdc928e16e968933` |
| 15 | `lemma` | [supportLocallyFiniteWithinDomain](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/supportlocallyfinitewithindomain.md) | 154 | `result-track:83420c1d0da83fe392c5615523de6a647fffd33de6b1bbac47cf40a2e0eaf083` |
| 16 | `lemma` | [ext](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/ext.md) | 158 | `result-track:1da754a797086cab573b53fb4ef16802d9b7517e45b9df62808950fd7ca86de8` |
| 17 | `lemma` | [coe_injective](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-injective.md) | 161 | `result-track:92c19c3429129e9c8a7b786237d7f44ad82c906ee76552f19a30af4bf779fd9e` |
| 18 | `def` | [single](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/single.md) | 172 | `declaration-track:10780d4900ac535d8c77ba8b06aa3db54c0662e0f69e3a54c84dae4634f5e33e` |
| 19 | `lemma` | [single_apply](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/single-apply.md) | 181 | `result-track:66482687645a026f151e5aeaa3377a93f3b8859016d87605555c969c5549e34a` |
| 20 | `lemma` | [single_zero](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/single-zero.md) | 188 | `result-track:14f4d3f9009cd6c253d584ae9764ed198e3768e8d7490f28a74833e6839219c1` |
| 21 | `lemma` | [coe_single](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-single.md) | 194 | `result-track:fc9969eec1354245f1d25288f77ed84ce5a64e53d06f9665a1f23d5d199d35a5` |
| 22 | `lemma` | [apply_eq_zero_of_notMem](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/apply-eq-zero-of-notmem.md) | 207 | `result-track:bb2e11bf42e209a11abdcc2e1e3a4b4e642fe6b508d6cf77c99ab5e8d8fb3446` |
| 23 | `theorem` | [eq_zero_codiscreteWithin](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/eq-zero-codiscretewithin.md) | 215 | `result-track:82005ee5775e288e6f890ce8d0687a64432d9789bcff1df90463866f096a5da9` |
| 24 | `theorem` | [discreteSupport](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/discretesupport.md) | 228 | `result-track:cb49efa65d33c156048a35ca4690dd9ba9cee7cf10eddc03988d35b6ec74a189` |
| 25 | `theorem` | [closedSupport](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/closedsupport.md) | 247 | `result-track:b1eaed9d0516ccd963f12ed03e77802fd85217e70ff8af03e142df18c9c9815c` |
| 26 | `theorem` | [finiteSupport](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/finitesupport.md) | 264 | `result-track:dc093946f7f99b45491417b988fa79d6322e258cbbde1b5176888801ff70267a` |
| 27 | `def` | [addSubmonoid](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/addsubmonoid.md) | 282 | `declaration-track:a787a08762b6064cfdcb753799549ef7ffa32b1ba5dacb7e01cfba17ae51a6af` |
| 28 | `lemma` | [memAddSubmonoid](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/memaddsubmonoid.md) | 305 | `result-track:764d0457e26e53ffacb5339f1dc26236a8cc4fad42930c1295455b567a4c6ca6` |
| 29 | `def` | [addSubgroup](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/addsubgroup.md) | 313 | `declaration-track:c4752e7afda97d9f4231d0072a0ae5277538a96f8dda976b0fca0076e1410de8` |
| 30 | `lemma` | [memAddSubgroup](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/memaddsubgroup.md) | 318 | `result-track:b1ab3b7053345d834c79ca0921d2b1beede0889670c4b688682e3964430492b1` |
| 31 | `def` | [mk_of_mem_addSubmonoid](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/mk-of-mem-addsubmonoid.md) | 326 | `declaration-track:bf445babf93612ea53c916504037f241e16eeed0c95c8b5e9646b6aad07db38a` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 330 | `declaration-track:c89173cbd3f2dd4203f22c2e53d1d2ddc56166a561f94fbbc0d0192abd6662a9` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 333 | `declaration-track:29ce36e4c2ebb79ea717d5bb745c929d255177d62d27f3a7ac1555f8107fd41f` |
| 34 | `def` | [mk_of_mem_addSubgroup](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/mk-of-mem-addsubgroup.md) | 340 | `declaration-track:fb43eac82fe175e417cec74df9db17bf074b516a2215f0af8da85d3fcbd39ffd` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 345 | `declaration-track:e6597e001b97acd75ffdbfbffa38c8c1661caceecb88ee6223465ac8c0721334` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 348 | `declaration-track:99e81d8b22e39e08c691d31297041543db9169be8ece9862f8df613096eb670b` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 351 | `declaration-track:4249ec42735b4fd0284df9a5036802b65bc84f10b1f9a98dc7cdcb9fa3c22546` |
| 38 | `lemma` | [coe_zero](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-zero.md) | 354 | `result-track:b8e1f9315c855f6ccd973c16edb735cf0dd5cc1927bb2a62cc0a15f78e2d6e4b` |
| 39 | `lemma` | [coe_add](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-add.md) | 356 | `result-track:6b73e49d9f55943e27ce50a6f3bcde907fbbf59660592d12a913467fc8a74542` |
| 40 | `lemma` | [coe_neg](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-neg.md) | 358 | `result-track:e1e07238dcc1fa2b5bbea4a4b6941d6916520dd3d2d3b8290946eb9478bada64` |
| 41 | `lemma` | [coe_sub](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-sub.md) | 360 | `result-track:b77c1cb91e32e966c145e95cd8d39996bc7fd0f6aa2586b5c8cb349307991a07` |
| 42 | `lemma` | [coe_nsmul](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-nsmul.md) | 362 | `result-track:0b15104fa098de451263827fb47633302fe36b14e8dc0efd030b818b62fdcc96` |
| 43 | `lemma` | [coe_zsmul](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-zsmul.md) | 364 | `result-track:56cba7c7bfb5092be2b11eaef58eef2bf3289a42e19b4f2185622ed42205a489` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance.md) | 367 | `declaration-track:17e73b853c9dadf0ddc80e904a58d9c27bf61723ecac3e5bfeb861b97851c1d2` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 371 | `declaration-track:d891a159ee47b2a6021e89988ce59b06b0b4a5ded8c4c3a532b8485ed67b960d` |
| 46 | `lemma` | [coe_sum](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-sum.md) | 375 | `result-track:091e7f050f111b0c31fc321c6fca06f80831b4388f144feb39383da35c933f0f` |
| 47 | `lemma` | [coe_finsum](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/coe-finsum.md) | 383 | `result-track:8b770801f779c76dcf36d694a6961a7209efc055b948bfeca61e0ae11a47b243` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 393 | `declaration-track:2d56d941d513b72a68867490f8bddd9f4e6961d6878f4584c901f796ea5588a9` |
| 49 | `lemma` | [support_neg](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/support-neg.md) | 401 | `result-track:48e33a19824f13caf338e7846d979242c7f5c9a6c1c4920ec45d510a5409384b` |
| 50 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 404 | `declaration-track:1ab466bc74a194088ae0af595bec860d526bd3cc68bb1e6c100d85e6aef45706` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 408 | `declaration-track:5c16f5378d37139a14a617099ea5371f0bc6bf4d33ab84e04457617fdffe3a44` |
| 52 | `lemma` | [le_def](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/le-def.md) | 411 | `result-track:bacfe8a60bf1aca40965bd368608ae15172be2bc6268b960b68f9e782aad6b01` |
| 53 | `lemma` | [single_nonneg](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/single-nonneg.md) | 414 | `result-track:2aa0f6001e510bba8c60ce45f816dcd7f894f8d6de27a4d9e4b26f00c31c8421` |
| 54 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 419 | `declaration-track:d9dd43fab4a77bd0bae368f413c71c5c4faf8b1ecad6f9a84328c57acd542ba2` |
| 55 | `lemma` | [lt_def](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/lt-def.md) | 422 | `result-track:307f243db06c078eafa0fd0ebd4a8fbd1f397fbce83c787c5b99ba58a69f62d6` |
| 56 | `lemma` | [single_pos](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/single-pos.md) | 425 | `result-track:85ccf647f5a08ac874936938e82cdea64389a8fc5bd02339f58226c5b771dbd6` |
| 57 | `lemma` | [single_pos_nat_one](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/single-pos-nat-one.md) | 430 | `result-track:949136edd899830e4647f9226879b47bfe0fff5d3fb1247be17077caa474c6cc` |
| 58 | `lemma` | [single_pos_int_one](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/single-pos-int-one.md) | 433 | `result-track:0c05d88e83d9962baf50dc6b79cdbf040bfa3049455918b0a78ef71c5c0d1a2e` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 436 | `declaration-track:42b3bff887195ecbe85ea83406fdfcc193cf1156dc66e8faeb6160a2af0d5913` |
| 60 | `lemma` | [max_apply](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/max-apply.md) | 457 | `result-track:918056e51bb8bc21fcd66b47f79264b6b74d055e836f541f870bd3c5135c67cf` |
| 61 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 460 | `declaration-track:24bd2caeaa89307c327db3f058abd6c69827c01d1a008e0c9268dfecccc79ba3` |
| 62 | `lemma` | [min_apply](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/min-apply.md) | 481 | `result-track:9209cf9f00fb0a08984a21f4dc47e307edfeafe7643f432371ede74960180509` |
| 63 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 487 | `declaration-track:fe4c143aee0bee83c12d5dc79e7f765bdef150978eff226ab1f1d157a0d671d3` |
| 64 | `lemma` | [posPart_apply](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/pospart-apply.md) | 504 | `result-track:e7dd8435b05ff89e5dafc496780b2b31ef011e49bb1d0ac60868586ab4839728` |
| 65 | `lemma` | [negPart_apply](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/negpart-apply.md) | 505 | `result-track:f2316746d8f770c7307f7c11719686a304f1f0d009e992d0f6cb66aa384c10dd` |
| 66 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 515 | `declaration-track:74d9a8fa605139e799c067cb99dc1b18b250aaedc4890982fdd29c5cdaca3711` |
| 67 | `theorem` | [posPart_add](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/pospart-add.md) | 521 | `result-track:dd83e8af1ce1c6a2c48137439daa8a3ff9178971c9fdbd3e5bf4dfbc002ba2b1` |
| 68 | `theorem` | [negPart_add](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/negpart-add.md) | 534 | `result-track:3b230d0a1a080440b2387a899728c5039e065ab5a299a9309439b4127b09c7af` |
| 69 | `theorem` | [nsmul_posPart](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/nsmul-pospart.md) | 550 | `result-track:6c7af08a4fc31ce53dd3d073378e858d969f858d8959718a1a12ef9d8aa2157e` |
| 70 | `theorem` | [nsmul_negPart](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/nsmul-negpart.md) | 562 | `result-track:b682a42ae7d5d612195c5a56fccf890596a677489dc85e6d1d9ec3fe32685231` |
| 71 | `lemma` | [exists_single_le_pos](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/exists-single-le-pos.md) | 573 | `result-track:afb72535b9d5ba202d2e98f5ec1776436e1361014f5d03e042e8bab093630443` |
| 72 | `def` | [restrict](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrict.md) | 591 | `declaration-track:891361ddd571ef62a08969c07408fc5565993ddaa26f786c2dc8407423fe28bf` |
| 73 | `lemma` | [restrict_apply](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrict-apply.md) | 609 | `result-track:180c2fba73ba75533236757f81c3cdb43da7344d615b014106a3075626a69f0e` |
| 74 | `lemma` | [restrict_eqOn](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrict-eqon.md) | 612 | `result-track:ddf637903b67ec34f4a761f6fd6542f9197cfd8f92a9e13c29e33a4fd84441d6` |
| 75 | `lemma` | [restrict_eqOn_compl](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrict-eqon-compl.md) | 617 | `result-track:4484e0e8bdd01a4971bb20b66c17c8e65743be4d272d12f913f9fdbc31a1b10e` |
| 76 | `lemma` | [restrict_zero](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrict-zero.md) | 625 | `result-track:21cb4d65349e9b279ced58267e7ceeac7f13a70ceb085c40afc50b08160b8016` |
| 77 | `lemma` | [restrict_mono](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrict-mono.md) | 632 | `result-track:f3fba1db73a92d99885c138211be4d3e77e6e5870d4f42096841ba4f87ae55be` |
| 78 | `def` | [restrictMonoidHom](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrictmonoidhom.md) | 641 | `declaration-track:8e39f2721e22ee06f1ba08225658652d31f984bb85d2a6682144643abf245fd1` |
| 79 | `lemma` | [restrictMonoidHom_apply](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrictmonoidhom-apply.md) | 653 | `result-track:36085a2d78bc7573e7fa12ad8e46e98ce0a06e23229bfccf867f3b8b5d423a70` |
| 80 | `def` | [restrictOrderMonoidHom](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrictordermonoidhom.md) | 658 | `declaration-track:020b39ac04b735dda63027df0d0e6d8d0b002c570949ee9cf651b1dd4984d622` |
| 81 | `lemma` | [restrictOrderMonoidHom_apply](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrictordermonoidhom-apply.md) | 672 | `result-track:257430f4769dd977e9feaeb16993aa5c35505061c08dc7c962fd9f89affa9483` |
| 82 | `lemma` | [sum_apply_smul_single_eq_self](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/sum-apply-smul-single-eq-self.md) | 679 | `result-track:3cb06ba19131d723f2b0fcf3a16b3f6cfad797d76bb05ca2cd7365a8c76a09fe` |
| 83 | `lemma` | [sum_apply_smul_single_eq_self_on_univ](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/sum-apply-smul-single-eq-self-on-univ.md) | 699 | `result-track:ab08fb1641038911756b441a8b70efe976807076848910d77b51a9429769736b` |
| 84 | `def` | [restrictLatticeHom](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrictlatticehom.md) | 712 | `declaration-track:37b38df2818d8e737b51a7373f56213a70c6c625179c1dc2266ade738071a33f` |
| 85 | `lemma` | [restrictLatticeHom_apply](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrictlatticehom-apply.md) | 725 | `result-track:74128ad3ca655dcea4d0dfa688a35f4568d333e7b9f44e94bd1b69a9988888c5` |
| 86 | `lemma` | [restrict_posPart](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrict-pospart.md) | 731 | `result-track:fb0c2ab6b4eed2e5f2261853884c7dd81820f32dc618bb2f40224ed3870e579d` |
| 87 | `lemma` | [restrict_negPart](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/restrict-negpart.md) | 740 | `result-track:382b6f5714556fc7427e8ab9388a0051ed4f526644a79b70ca9371d736a94606` |
| 88 | `lemma` | [disjoint_nhdsWithin_cofinite_of_mem](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/disjoint-nhdswithin-cofinite-of-mem.md) | 746 | `result-track:ecc3bdc1c3aefa20a04a8ce159db08d83825425e2c6d0e1ad4ae3186f43f3663` |
| 89 | `lemma` | [Locally Finsupp Namespaced Public](../../../../GeneralTopology/LocallyFinsuppNamespacedPublic.lean/declarations/root-grwtsk-topology-generaltopology-functionlocallyfinsuppwithin-varian.md) | 755 | `result-track:9a9e8b0d2886d0b95aad8b6856473bbd6fd3bc2b5443d4662a1c38598a16c951` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73eb8f6e639549f63e9313890b6535bea9e318ef50e9ca9f235124c38b7a727c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

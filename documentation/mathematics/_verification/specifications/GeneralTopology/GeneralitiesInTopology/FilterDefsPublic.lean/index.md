# Verification target: Filter Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "760285d16af8795fa73313254a28aa651c9d0883",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `760285d16af8795fa73313254a28aa651c9d0883`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean.json)

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
| 1 | `structure` | [Filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/filter.md) | 75 | `declaration-track:a616038c86a5825a13f899337e14e8efb5a073d01e436c6f65ad8002923feecd` |
| 2 | `theorem` | [filter_eq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/filter-eq.md) | 89 | `result-track:4012c275893bd576cbfcbc3f7e700c8b9894396270a772a0edfbc88b1655ceb5` |
| 3 | `instance` | [instMembership](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instmembership.md) | 93 | `declaration-track:ae11f8744998417923b410448a8e5ef1cf6146caae212fa6b4412d2411465e33` |
| 4 | `theorem` | [ext](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/ext.md) | 96 | `result-track:8c3129c8878f32cb1e2b6b5fe6c5c43b03d22e3cd4f703e8860b3a8ee7c753af` |
| 5 | `theorem` | [mem_mk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-mk.md) | 99 | `result-track:e1f1536ad5d82194789fdb9b6c01284dfb8b30663ef1dd04615a57d18d30cbd1` |
| 6 | `theorem` | [mem_sets](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-sets.md) | 103 | `result-track:c8cbb1df3c929c7dc77147103b1d116a6fa8803184d69316e0d6cbf1b1b4f0d8` |
| 7 | `theorem` | [univ_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/univ-mem-source-edition-2.md) | 107 | `result-track:7c2b81db333daa0b8c61a678d9f6b33a5ac4e155657f1e00a0197fc805b54ec8` |
| 8 | `theorem` | [mem_of_superset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-of-superset.md) | 111 | `result-track:77e40681013e278d83ab3cc33315266cc3e57643dd670be9a879af7e5b751962` |
| 9 | `theorem` | [univ_mem'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/univ-mem.md) | 114 | `result-track:7473ddc736f60b7f605fab6ebbcc67b31560f05f3c291badd068fb2eaf4bc1db` |
| 10 | `theorem` | [inter_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/inter-mem.md) | 117 | `result-track:77399e4ff5755aa213c3599b342fbb9126c00d224d13275b7e1fd714247c07ff` |
| 11 | `theorem` | [mp_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mp-mem.md) | 120 | `result-track:2ec8f153ed93696a902899d476abef8605c4df3c3d1d4cc51db58d24b8e33ee8` |
| 12 | `def` | [copy](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/copy.md) | 124 | `declaration-track:c7753876333496b4db27d32d167110f5c2b43e4e72b86ddf20f2baa53d646907` |
| 13 | `theorem` | [mem_copy](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-copy.md) | 130 | `result-track:3f0ad3550dd91748ee3960a94a0a44f4073c69dc9abe670e6817165c562602db` |
| 14 | `def` | [comk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/comk.md) | 135 | `declaration-track:cafe5107728157141ccc5a233321dd28abb6a59870a3426a10b63c4c12e1b0e3` |
| 15 | `lemma` | [mem_comk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-comk.md) | 143 | `result-track:12039e32909cd60f22fa0131d08bff32374fdafe8130d284387d872718d2410f` |
| 16 | `def` | [principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/principal.md) | 148 | `declaration-track:41d9a21d8902d6cb341bd8104401d0a52a44cd8614ad7a2c375b0c5be28f45c4` |
| 17 | `theorem` | [mem_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-principal.md) | 157 | `result-track:2a03a07c21f65364365181086f3991622e0d36226231653c2654b3c1bb93fc0f` |
| 18 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instance.md) | 161 | `declaration-track:2a4113a6a726ee67b8f68683fb155713bf65680defaca4a7276eba53224c3496` |
| 19 | `theorem` | [mem_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-pure.md) | 165 | `result-track:5c9c311c939a91e8c60e080be0215737f69106e893cfc050b492dc10a767bc25` |
| 20 | `def` | [ker](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/ker.md) | 169 | `declaration-track:516997e3a30fcf1b44bf833b50531a1d842c7f61dfd86caf9745fe1cd23f8166` |
| 21 | `def` | [join](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/join.md) | 172 | `declaration-track:9cb077d3cc75b181ad4987cd99c2f74af3b1107e0302435b01934537c34544c2` |
| 22 | `theorem` | [mem_join](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-join.md) | 179 | `result-track:8b3891a26d1cbadf5a5981b4ec2b3c565d0a19fd3d024a5260e636e800d8ed36` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instance-source-edition-6.md) | 182 | `declaration-track:ded8ba21823a9956a6dfb359ecfb031233209350cf5861fde4f67343042a732b` |
| 24 | `theorem` | [le_def](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/le-def.md) | 188 | `result-track:d963d4bd4d17863dffd3d14b410a6ce23b2c836c0d0b69ec6e0c082e22c3acea` |
| 25 | `instance` | [instSupSet](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instsupset.md) | 191 | `declaration-track:d3eb7dc35a582411ddab948c905d8dbd1369e962f56db829de48e0328a730d1d` |
| 26 | `theorem` | [mem_sSup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-ssup.md) | 194 | `result-track:70c97e85e176d45bf84941fa090e2d19329ef9eb0b67ab60206509c9a8b1c548` |
| 27 | `def` | [sInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/sinf.md) | 200 | `declaration-track:f692e6822e26bc194ccabf510b5980b28fdcd41994beffaffba1e803bd332288` |
| 28 | `instance` | [instInfSet](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instinfset.md) | 202 | `declaration-track:eed443a5f4965c82426726ac7dbdf96130b2bb381c64b0486ecaee52128e82e1` |
| 29 | `theorem` | [sSup_lowerBounds](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/ssup-lowerbounds.md) | 205 | `result-track:1fcd8050bc87c7f9ba35363b4a05d726facf8733298ad2df9ec565895a1ac355` |
| 30 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instance-source-edition-3.md) | 208 | `declaration-track:4cbf8395b0b520a29ae69227f847e2a9f2de861faa83944f995823cb1912b327` |
| 31 | `theorem` | [mem_top_iff_forall](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-top-iff-forall.md) | 211 | `result-track:9259e9b27e02bec20617209379ae7613097c5f301b2daac2ad7ec953a7f80be4` |
| 32 | `theorem` | [mem_top](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-top.md) | 215 | `result-track:c60bf5ed70ccfea7ce44946e94151f4fea91adcf2b6efc00ba6c398810e6a207` |
| 33 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instance-source-edition-2.md) | 218 | `declaration-track:41f16115514a49ecffa278292ddaf75b2251ddd1700994c79d8a3d6f46228eb7` |
| 34 | `theorem` | [mem_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-bot.md) | 222 | `result-track:78fd579b44da73deec354b5ebb5c189b5e2771fa40e41e413dd09e37d093df6d` |
| 35 | `instance` | [instInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instinf.md) | 227 | `declaration-track:970378e1768b4f19344c12edcfd9933ffbf1bd8690ec5f8f4259faddcac28253` |
| 36 | `instance` | [instSup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instsup.md) | 242 | `declaration-track:2d7376cef0b289cf3b4043aba2d7a7818fd5c3886eb008d7ac87683b40b03a5a` |
| 37 | `instance` | [instSDiff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instsdiff.md) | 247 | `declaration-track:a535d59abf4575f713773e404fcf74b7269645f87ff6c713a6ef91c6b73d90f5` |
| 38 | `instance` | [instHNot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/insthnot.md) | 260 | `declaration-track:c3f443ff833de6bcdbbf87abbb5fbc2bafbc44c49773176d6a6d29344a663dec` |
| 39 | `theorem` | [mem_sdiff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/mem-sdiff.md) | 263 | `result-track:5329bc078c89c57d8ac08eebb078b0db27529b264d862e30d404964b64321dfa` |
| 40 | `theorem` | [hnot_def](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/hnot-def.md) | 265 | `result-track:ebaf24a4412176a5b457cc6f57430b29d43ad6692325081975b9ffbf73aefe11` |
| 41 | `class` | [NeBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/nebot.md) | 271 | `declaration-track:92fd871056f03b8fc030bdf67f5d5e3a53fcfb291ae9b65a23ff70310f676d02` |
| 42 | `theorem` | [neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/nebot-iff.md) | 276 | `result-track:d431a8b9ef48b4ea73311ed739710dbe01802d6884d0751d076e771d4e988b91` |
| 43 | `def` | [Eventually](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/eventually.md) | 281 | `declaration-track:c38f6687b9344051b8d1e78423f16240a533f6c6086129905fc291d7b68c3b57` |
| 44 | `def` | [Frequently](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/frequently.md) | 289 | `declaration-track:3d198105cc13f26bcbab207809d037c2e0d8e9af466b776dc853787652cd2850` |
| 45 | `def` | [EventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/eventuallyeq.md) | 297 | `declaration-track:c689239089d823d9ddf86a4294de5ff88919a40f3bc1f2708180e8607a7ec147` |
| 46 | `def` | [EventuallyLE](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/eventuallyle.md) | 302 | `declaration-track:93171ae57e6e13f2b87772ecc7b1d17ba6f60763d2ceee58749612f7f9ae2a03` |
| 47 | `def` | [EventuallyEqSet](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/eventuallyeqset.md) | 310 | `declaration-track:699b1655e7275ee3828d244de83cd1898c67385c71e20a7bf2c9f9befc2d43a6` |
| 48 | `def` | [EventuallySubset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/eventuallysubset.md) | 318 | `declaration-track:607617a3864c190989ec59c6577afcc306b7232d24727b9f532bcdca8f0d790e` |
| 49 | `def` | [elabEventuallyRelSides](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/elabeventuallyrelsides.md) | 339 | `declaration-track:a298ab143a8ccb13f43e498771900907e2a9b9d9ba8e6db2852a4464f85f139e` |
| 50 | `def` | [elabEventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/elabeventuallyeq.md) | 356 | `declaration-track:daf4e13ba9d4241f4111bc670a96f3dd98f7cd95c910ab8c07dc95d037eec20a` |
| 51 | `def` | [elabEventuallyLE](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/elabeventuallyle.md) | 368 | `declaration-track:75d3daab770fafb974a741e1a15bcf7466a5a8678d8f52a0a98638e7d3b60fb6` |
| 52 | `def` | [precheckEventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/precheckeventuallyeq.md) | 378 | `declaration-track:6e40d89660767d5ee4575afe8f57bfa85afe26d677bcedb514188e9bd4d131a8` |
| 53 | `def` | [precheckEventuallyLE](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/precheckeventuallyle.md) | 384 | `declaration-track:d5ddad790fef09eab83ce62540fe45939bfe1d21428118a1e6810ec7eef1d422` |
| 54 | `def` | [unexpandEventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/unexpandeventuallyeq.md) | 390 | `declaration-track:b88f7143e33e8a227cdcd81578a28edbc1a44fcf7e09da7d329ce83f33ff1a34` |
| 55 | `def` | [unexpandEventuallyEqSet](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/unexpandeventuallyeqset.md) | 396 | `declaration-track:dcb6a2eac8fd2fa4b74ae284659ed54832b6abcae49e93e28c35797494d856d8` |
| 56 | `def` | [unexpandEventuallyLE](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/unexpandeventuallyle.md) | 402 | `declaration-track:d95590a139ab9970c4c51027d583c92ba21a4c9b50765b02941d4a9a21ca4596` |
| 57 | `def` | [unexpandEventuallySubset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/unexpandeventuallysubset.md) | 408 | `declaration-track:d8584ae48f486a253bcc1d2fb5e0a53c3193a9920a28be99e05b417e8c679a44` |
| 58 | `def` | [map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/map.md) | 413 | `declaration-track:c57555487f456d0e36aa021352486e25e533973977658f2a6eb9ca89d4e4e2d7` |
| 59 | `def` | [Tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/tendsto.md) | 422 | `declaration-track:4b1ee5e512c4c2da2b4f15edb1980c43017ac1dd2c9baf0dca4b8b4a8d62170a` |
| 60 | `def` | [comap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/comap.md) | 433 | `declaration-track:45ed84a8247b0a1c2072e2db2810a40bece8d662f846f24e5c6baef379c4c775` |
| 61 | `def` | [coprod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/coprod.md) | 441 | `declaration-track:3641b60a5f7cd2666d5a1822d331ba3cba432a99da8788811b5aadd11cb02b59` |
| 62 | `instance` | [instSProd](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instsprod.md) | 446 | `declaration-track:1f69a3b1c3b4cfd2b053a8e625b89caab4aa2e0e12faef02a11c7dfb559433c8` |
| 63 | `theorem` | [prod_eq_inf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/prod-eq-inf.md) | 449 | `result-track:9559a5e38fc6e849b71717d624403c9f1e0e1ad180d2e0397eb61b8d9db03189` |
| 64 | `def` | [pi](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/pi.md) | 453 | `declaration-track:64d2e1aff18bc613411a3f64836721de7fcbd9ab31dc99732adee1206b6b567e` |
| 65 | `def` | [bind](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/bind.md) | 460 | `declaration-track:2eb8c25a24a2e2990c15946f50364e46fc614b21944c46ce6101a21e49b35346` |
| 66 | `def` | [seq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/seq.md) | 464 | `declaration-track:cbcfd179a71547bc672d04431a993c043150003ff42aae1ed5c5ad4b3da16890` |
| 67 | `def` | [curry](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/curry.md) | 477 | `declaration-track:06e0d280a7e25c0cfbc4a13c9535006758cd0b0404979f91be54b7b9ae83ac16` |
| 68 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instance-source-edition-4.md) | 480 | `declaration-track:74343650abca1023a9045636082084e180f1ce1948b9d494db493875fc45834f` |
| 69 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/instance-source-edition-5.md) | 483 | `declaration-track:cd06d9ceece1e83a2f47589e58d17b04cc7c4e6697a7ec83e3fa4515d7109c47` |
| 70 | `def` | [lift](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/lift.md) | 487 | `declaration-track:96395d99c1751167e1ed0dd78af6ded9fc6a62cb9913625324a979ba5f41cfef` |
| 71 | `def` | [lift'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/lift-source-edition-2.md) | 492 | `declaration-track:b81719578ee6c55f2b4ada2dc1faa24b3173e9cbbb54ef3a2c0226172338538b` |
| 72 | `def` | [IsBounded](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/isbounded.md) | 498 | `declaration-track:75c67530a704bea882389d5e05253b8f489df62931396175637693cde9ea6888` |
| 73 | `def` | [IsBoundedUnder](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/isboundedunder.md) | 503 | `declaration-track:b5d843db4a2cd1f3d0f91bc045927e8e4eb29ece1f3072ae457973755903c998` |
| 74 | `def` | [IsCobounded](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/iscobounded.md) | 516 | `declaration-track:520142e14ce930f2683cff64461b6782683202ede63dcde93ba89bf517477aaa` |
| 75 | `def` | [IsCoboundedUnder](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/iscoboundedunder.md) | 522 | `declaration-track:9598cbc3cf873962415100ea839e4b1eda3906851c67b8c4977550400e8f63c8` |
| 76 | `syntax` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/syntax.md) | 545 | `declaration-track:49032b3c03bc63da67479a8a944e95c0ac41a9426ab4d9fd9c11bf95f4b77266` |
| 77 | `elab_rules` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsPublic.lean/declarations/elab-rules.md) | 548 | `declaration-track:5cd4ed7e145fc28deb9c7f73371c330b92fe4e7b168c8ae64d16117bea1c85a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cecabc34895564987120797defa0c12889ba0bfbd6110e137e33cd67fb3e9c75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

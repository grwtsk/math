# Verification target: Upper Lower Complete Lattice Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "677249267e86d4c7a1aed8fa727e5332894da1a2",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant48db4fdb22083c83b3fd8403928f8ef8be8c0ba7e202ebb127fa6c963ed12b4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `677249267e86d4c7a1aed8fa727e5332894da1a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant48db4fdb22083c83b3fd8403928f8ef8be8c0ba7e202ebb127fa6c963ed12b4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant48db4fdb22083c83b3fd8403928f8ef8be8c0ba7e202ebb127fa6c963ed12b4e.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instance-source-edition-3.md) | 37 | `declaration-track:58e55850d62b7933f7dad714c1db3e56fe2c325d0dec060d58230bb0c95ab52d` |
| 2 | `def` | [Simps.coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/simps-coe.md) | 43 | `declaration-track:f1edea2284ba5975078b800ebb346d2e14b26064b1bd4c0a56f50cbbfc4bd75e` |
| 3 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/ext.md) | 49 | `result-track:ee4c5646f96132793da92c492b2fd5e516729f702692bc23b7ebacfa1a0a99ce` |
| 4 | `theorem` | [carrier_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/carrier-eq-coe.md) | 53 | `result-track:01460bb0a581de6c0423133c0fc9275d9fd7f528d21d85385095417a284d16b0` |
| 5 | `lemma` | [upper](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/upper.md) | 57 | `result-track:3ef704f84b7cf367e06da6a10d995b7ae81a9b67897e2df0472078057453d639` |
| 6 | `lemma` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-mk.md) | 60 | `result-track:4e14385f4d7f7743b8239f6fa1816cae68d3a950d212f25ae93b64bf438d891a` |
| 7 | `lemma` | [mem_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-mk.md) | 63 | `result-track:870c7198198047251aab946df94032d6eb69c85d1f728d40721fc8fa4568e151` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instance-source-edition-5.md) | 68 | `declaration-track:9dbc70fc5ad725ea763e317e246573a37d842f7bbe7a72b16cc9d55c1e793189` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instance-source-edition-7.md) | 72 | `declaration-track:cc462962d2025a75b1e9008a004ffbf4bd946652b5977c3c3a5344cc9c2f2186` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instance.md) | 76 | `declaration-track:2ea5d6185f00834e721be4f7ba12578898048424445bc0e5c6f71d717a8ebf30` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instance-source-edition-8.md) | 80 | `declaration-track:e6f9f01c0849e179db02e6ada6b12cf0224a57d3ee105292b3e1bb26bc332f67` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instance-source-edition-4.md) | 84 | `declaration-track:676a06d74e46fc545b78a14fa5174fa696f6f2baf6eb27ca777907f17c7ce578` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instance-source-edition-9.md) | 88 | `declaration-track:f15b50b0f4df4bbb611779d56394d65b07f2012f47402511a1eb7846fbcd844e` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instance-source-edition-2.md) | 91 | `declaration-track:52c4e3f91e38953d4d1121cf16fe84a0d2696cf7ef61647f7b75efc661219cae` |
| 15 | `instance` | [completeLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/completelattice.md) | 94 | `declaration-track:accb8b0cfb358b533e70dddc37407a5b1bdc493052df99b04e22a997ae39b4fb` |
| 16 | `instance` | [completelyDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/completelydistriblattice.md) | 98 | `declaration-track:5b4f26ab30c1b63351eeaaf7ace451bfa8b2f74935b1d51eb69bb57cb07994b3` |
| 17 | `instance` | [_root_.LowerSet.instPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/root-lowerset-instpartialorder.md) | 104 | `declaration-track:d746434d29af21cf19fb004872979ca246ec195fc6bf4ec3773f481cd6da4df8` |
| 18 | `instance` | [_root_.LowerSet.completeLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/root-lowerset-completelattice.md) | 108 | `declaration-track:8c14ffd7c2a91acfaf63844e01837e0407f3e533a09a26a88e0f34b22328df62` |
| 19 | `instance` | [_root_.LowerSet.completelyDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/root-lowerset-completelydistriblattice.md) | 113 | `declaration-track:de0787a11fd912627da0e767313e800ccfe89fc593c9d924581cf58e2289c0fc` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instance-source-edition-6.md) | 118 | `declaration-track:a578b6c93436d955e0364ddce2823cde3f621c6b51bbc60c9315d8bca20fd444` |
| 21 | `theorem` | [coe_subset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-subset-coe.md) | 122 | `result-track:3a667979f1183aa1e6dc9d082b246d08e21c322247c9c1561134f86ed183834a` |
| 22 | `lemma` | [coe_ssubset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-ssubset-coe.md) | 126 | `result-track:1fc29f3ef36d2ddc70b58df680c274d591af2fab83d17310d02c1109564d6598` |
| 23 | `lemma` | [mk_le_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mk-le-mk.md) | 129 | `result-track:9280899a5818d4f044d00b68f2a2204288ed8c56c2b40e83f7a4636330d0e630` |
| 24 | `lemma` | [mk_lt_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mk-lt-mk.md) | 132 | `result-track:9529e41914cd41d27bc4af26d9b6bc5b32f671f27fc75c8a7cccdfa7a31df18f` |
| 25 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-top.md) | 135 | `result-track:4209ac0c2d9debbd91dcc801ee9e3bc0167241c6883b9670ed6ad352d4cf9e84` |
| 26 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-bot.md) | 139 | `result-track:cc6d021e5a9c600af0a2da35baf004fe0991939b2739d63173ac72823a885a14` |
| 27 | `theorem` | [coe_eq_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-eq-univ.md) | 143 | `result-track:c4113a497bcc5e2b2b2ecf89f3c4bcfff4ac335405e500ff46fef4c498796bb2` |
| 28 | `theorem` | [coe_eq_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-eq-empty.md) | 146 | `result-track:d1de5d60d2f579b74b8e064260c122ec4639dde87642282dc6e08b5b51716c49` |
| 29 | `lemma` | [coe_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-nonempty.md) | 149 | `result-track:5700da22b445ef65643a9d96cd8b5a9b30c9559c2b190a69669a4171907a8566` |
| 30 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-sup.md) | 153 | `result-track:10fd15f6bcf9d956a54efcdaf81055ad9826e0bfab6f9e1e53d8cf5c758db360` |
| 31 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-inf.md) | 157 | `result-track:8722f9143b080148615583a915e478366f1839bc0d1e62c28cc16990bcdeebc8` |
| 32 | `theorem` | [coe_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-ssup.md) | 161 | `result-track:d709a7e5ab3a21d867f0806b01bb9e1ed93c2d7b68b175ef119c0fba24918c91` |
| 33 | `theorem` | [coe_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-sinf.md) | 165 | `result-track:bd8c3051e50f36de7b02fd9810c3017e7a21d81daf25aa5aca20450be90a2423` |
| 34 | `theorem` | [coe_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-isup.md) | 169 | `result-track:1b4db547ae8cf84df164713e2512d3b05ae5b8d84795f4f0f495fb76ff1c04f0` |
| 35 | `theorem` | [coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-iinf-source-edition-2.md) | 172 | `result-track:a118d01712e43d65157fc8d1c9377429b17ada4a90c593e348ebd1974c655bf7` |
| 36 | `theorem` | [coe_iSup₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-isup-source-edition-2.md) | 175 | `result-track:ca63dcf74448eb54638b3ed9f389833d15c1a2e2ffd0fe96d04463ee976d5bf4` |
| 37 | `theorem` | [coe_iInf₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-iinf.md) | 179 | `result-track:505c243f2c00c79f2865c71809969a2a09576d8b04133f139b8c908c6dc6eda0` |
| 38 | `theorem` | [notMem_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/notmem-top.md) | 183 | `result-track:2eecf612e0519dc0f755b469227af906225e379f897fafe0696f3d2fa55b559d` |
| 39 | `theorem` | [mem_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-bot.md) | 187 | `result-track:15a3c6fd59fe5d8b6873a3f399f40ace215bd05f7254a5a823991eb2d21d9f6d` |
| 40 | `theorem` | [mem_sup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-sup-iff.md) | 191 | `result-track:496ab8f09c4e6cbf3791f07ae477a910485c388e9787afdd0554379255ff8168` |
| 41 | `theorem` | [mem_inf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-inf-iff.md) | 195 | `result-track:6789ceb4e36a7a2b40f7ad11e0058034303617169ab21173d37ba7a3c0bdb90d` |
| 42 | `theorem` | [mem_sSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-ssup-iff.md) | 199 | `result-track:3544a74ab27321f6c0b3f7c868a02b8dd1d2a217fa630fbaef2619f31467ecd9` |
| 43 | `theorem` | [mem_sInf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-sinf-iff.md) | 203 | `result-track:fcfa35b680f18932fdf5137aa9882d598158b7c26724c54feaf658c0a30af83a` |
| 44 | `theorem` | [mem_iSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-isup-iff-source-edition-2.md) | 207 | `result-track:6278298c4582d4deded607dc2b45fa6cdb905c02d37912348abdb3c32920afbf` |
| 45 | `theorem` | [mem_iInf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-iinf-iff.md) | 212 | `result-track:49b73fdce5862dd2242a5f38c8a3d072fe5d6463704de4bea4059a123962cc4f` |
| 46 | `theorem` | [mem_iSup₂_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-isup-iff.md) | 217 | `result-track:3c2a9ee7dd19081dd178e07732f233ac6057c7cb12b91797a1ed5b8dffa2e78f` |
| 47 | `theorem` | [mem_iInf₂_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-iinf-iff-source-edition-2.md) | 221 | `result-track:67f1542179ba8a2e35d235856a9785ef49fb4a78a1537801717945dc32ec8407` |
| 48 | `theorem` | [codisjoint_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/codisjoint-coe.md) | 225 | `result-track:2e845ce3902024c25d619d22188fd28d3fb75bbed8a94799c3140c059dec4d37` |
| 49 | `def` | [compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl.md) | 232 | `declaration-track:7eaac8b3f92aff118894ddf9fb06d45697ea4da86ad00f4380d07e3096e94880` |
| 50 | `theorem` | [coe_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-compl.md) | 236 | `result-track:9014b7cc4703f7e3a40969ff4450639f1a5954e642fdaecf9a6ee2091b386b24` |
| 51 | `theorem` | [mem_compl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-compl-iff.md) | 240 | `result-track:5226989f214b7fb928bd47e93a350fa3643d37cea55d738a4cf109264465aff7` |
| 52 | `theorem` | [compl_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-compl.md) | 244 | `result-track:843acd707b1327256a75e7a6a8b4f4095b1bf345aacb7a20e2a847d52d70d0e9` |
| 53 | `theorem` | [compl_le_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-le-compl.md) | 248 | `result-track:0fdc59dfe314f305e4fd75649273292ee69ab18e1015225963e9b2906060b0ab` |
| 54 | `theorem` | [compl_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-sup.md) | 252 | `result-track:2adb46e3b22ed7c4c7e5a2b5dfa7fa74177202608e7c5f92214ae16b18d9fbc3` |
| 55 | `theorem` | [compl_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-inf.md) | 256 | `result-track:6e4c0c46de6d990f7236de29b15d41e996909b671244744492fcbc4b311174f6` |
| 56 | `theorem` | [compl_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-top.md) | 260 | `result-track:3a5608a101f2637c565d55e158163c1bf772c96dc37e9e2837e936f2461341f4` |
| 57 | `theorem` | [compl_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-bot.md) | 264 | `result-track:fc7c5346a9142122d34feb49c851aabbb015f7803c8f3e855323c8f925a11212` |
| 58 | `theorem` | [compl_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-ssup.md) | 268 | `result-track:128115e019929baa10fc897f7d38545ca8f3edd82af74cf77f96ba5d663c443e` |
| 59 | `theorem` | [compl_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-sinf.md) | 272 | `result-track:9157286c7a04e3fe167e6a77822a1b79ca3d1087157e3f69bc280c53f945f3e9` |
| 60 | `theorem` | [compl_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-isup-source-edition-2.md) | 276 | `result-track:f453b973d60f2e1e881f43540535c3fea9c43791a85b3ceb51e9a7c7b3e97ebe` |
| 61 | `theorem` | [compl_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-iinf.md) | 280 | `result-track:170e9be3956c455791d58683a88f2e89b7de40d136e9d547c24ed8a81dd21c41` |
| 62 | `theorem` | [compl_iSup₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-isup.md) | 284 | `result-track:d45c54d62615bc5e32d8c6550dc6e1fe9d8527e9d56582ca3506518be38d6420` |
| 63 | `theorem` | [compl_iInf₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-iinf-source-edition-2.md) | 288 | `result-track:7420200f86d671df6a117f1a4d9177f2f58ad4dc583a9462c82082c5d94aa1b6` |
| 64 | `def` | [_root_.upperSetIsoLowerSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/root-uppersetisolowerset.md) | 293 | `declaration-track:a72a76696d8dacd248ab4a5a757bd0e04479bcdcdb4de348e872052ef404a02a` |
| 65 | `instance` | [total_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/total-le.md) | 306 | `declaration-track:7f712cd631771f5fc67985e43b8f2565b9721c352658b90faf756c8a7c6abdf1` |
| 66 | `instance` | [instLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instlinearorder.md) | 308 | `declaration-track:a40812db293d58b71425b8e3e817680cdd52338531803505edb829e66e75a80e` |
| 67 | `instance` | [instCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/instcompletelinearorder.md) | 311 | `declaration-track:4776301d20b900bfc035d1c37284e2c07e52eb58459a05cd22d54688a82e64b6` |
| 68 | `instance` | [_root_.LowerSet.total_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/root-lowerset-total-le.md) | 315 | `declaration-track:1b6aebdd14baca69779c3aae1091729131c54edc7aeab0914e96542f659811ef` |
| 69 | `instance` | [_root_.LowerSet.instLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/root-lowerset-instlinearorder.md) | 319 | `declaration-track:f241dc29d768f903955afdedf8edf658ecf07330293e27134bed75e694d6fe10` |
| 70 | `instance` | [_root_.LowerSet.instCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/root-lowerset-instcompletelinearorder.md) | 323 | `declaration-track:7cdc4cf6fc355d1902427b4cfd26e8336fb2fa4a3608d0e300caaa911267a729` |
| 71 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/map.md) | 337 | `declaration-track:3619f8c82cf73a4cb3df154138e41d67a5801c592552e8868c76d77dbde81f91` |
| 72 | `theorem` | [coe_map_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-map-apply.md) | 346 | `result-track:6d3a78de3c4cda33882c3d61c88fe8daae77043d987b3ff845d92ac50fb6eb86` |
| 73 | `theorem` | [coe_map_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-map-symm-apply.md) | 348 | `result-track:e11152786c6d0a80330d2ed7a9c7092fce1c8462b63a449e96b88057c579eba7` |
| 74 | `theorem` | [symm_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/symm-map.md) | 352 | `result-track:c0029cf282994ea32113b68913ff5c4ea476724f71e6d6a31cddd7e447dd6f32` |
| 75 | `theorem` | [mem_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/mem-map.md) | 356 | `result-track:1ba5bdb23674e15575d44d4d0e82da7acf84869e2d9a20da5d37fb0a4ad92e94` |
| 76 | `theorem` | [map_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/map-refl.md) | 361 | `result-track:97854559d34d85cc77f63ee0052ae2857f97080e22010a8c88a1a8d93fb43793` |
| 77 | `theorem` | [map_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/map-map.md) | 366 | `result-track:ae179387ae9326277bd3eae4fa542a89d5c1555bdeb4b1e1552c3d74df52f556` |
| 78 | `theorem` | [coe_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/coe-map.md) | 373 | `result-track:a3e55f7e6654fa06dcab3d50f289589fcd4b0302adb2c692f371ad95d64200c8` |
| 79 | `theorem` | [compl_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerCompleteLatticePublic.lean/declarations/compl-map.md) | 377 | `result-track:c9f6b07754a1f01416c332a496c443f88b4c0cf2be82c606e3c85b5c68fbc2bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=999ee0440fbc20c10c0fec83674f2ee5102e5862f172523ef3a2fb2c558524a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant48db4fdb22083c83b3fd8403928f8ef8be8c0ba7e202ebb127fa6c963ed12b4e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant48db4fdb22083c83b3fd8403928f8ef8be8c0ba7e202ebb127fa6c963ed12b4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

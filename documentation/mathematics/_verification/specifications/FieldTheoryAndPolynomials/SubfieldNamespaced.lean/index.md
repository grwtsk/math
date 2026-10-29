# Verification target: Subfield Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7d75728e766554caedb16887bb921bed1a5705a",
  "lexical_observation_count": 134,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subfield/Variantaf7fb301f39bb3d592109f9ddbabb37364c4d3a527c3992289eca1a966020160.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7d75728e766554caedb16887bb921bed1a5705a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Subfield/Variantaf7fb301f39bb3d592109f9ddbabb37364c4d3a527c3992289eca1a966020160.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Subfield/Variantaf7fb301f39bb3d592109f9ddbabb37364c4d3a527c3992289eca1a966020160.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.InjSurj` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SubfieldClass](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/subfieldclass.md) | 79 | `declaration-track:bf047affd145df8433d69e32195dadb0ff597fabee19011e0119d72acf360bc9` |
| 2 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-10.md) | 93 | `declaration-track:a968a7b21a69ec4445e2106e23ad8513df202184b0e77c2e23b2d0eaf9ec97bb` |
| 3 | `theorem` | [coe_rat_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-rat-mem.md) | 99 | `result-track:557557fa6ed5d1c17641e5e3fcca374616659c002e9bf0a2383df49f0a6c7e83` |
| 4 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-5.md) | 103 | `declaration-track:68d71cc42ff8ecbdc57169a59c73125f63c7e998d252cc82d18475b19af9991b` |
| 5 | `theorem` | [coe_rat_cast](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-rat-cast.md) | 107 | `result-track:619e0a5155eb015035e6f9a20660ad49de0995cd8cfb6b9f2cdf6818052fecf3` |
| 6 | `theorem` | [rat_smul_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/rat-smul-mem.md) | 112 | `result-track:0a8ea2b4f0994c30fafd2558c1da57785e6378d0b1e6036547c5429fa3ccf583` |
| 7 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-7.md) | 116 | `declaration-track:79231f81c66bdce2f21ac4122f486562d143a556c00a91228073b6a39cf6e863` |
| 8 | `theorem` | [coe_rat_smul](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-rat-smul.md) | 120 | `result-track:a5db120d4e8d4c47992f1db44c1bba7d3b2dc90bc30ceae291934e705c1b4b00` |
| 9 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-3.md) | 128 | `declaration-track:387617ef031d65c8a96034d852657a4db6480bcf4a89c8834f2792068f728626` |
| 10 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-8.md) | 138 | `declaration-track:9548f3a4c6854c6748ff6bd09e54beb98a0083657e27f7bcaac9fd65fee2ab17` |
| 11 | `structure` | [Subfield](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/subfield.md) | 152 | `declaration-track:415ad337221a9dd47c8899403ef37416b975b7b169026c3d07e1eafbf3d9fdb6` |
| 12 | `def` | [toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/toaddsubgroup.md) | 163 | `declaration-track:bd806f99acba59b760c3b1ef623216094829bca60dfc5651956cd3ed4c663e89` |
| 13 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-14.md) | 173 | `declaration-track:f6bd1b8d129d75aca5a2e83abd7890d07dff334983b8403cab439e372312d2c0` |
| 14 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-16.md) | 177 | `declaration-track:fcf6e104b213c06b81759614b4900fea7a7bf17eaa6870c40da9ce8a79ebd104` |
| 15 | `theorem` | [mem_carrier](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-carrier.md) | 186 | `result-track:85a10ad6d73694e2ab87e0b21bf1802d2216703d865ab7144b2df9b922a7922a` |
| 16 | `theorem` | [mem_mk](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-mk.md) | 192 | `result-track:8092addc2064f938d253b021efc947b2650d60c0ea978a4666f4b4230b2d7041` |
| 17 | `theorem` | [coe_set_mk](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-set-mk.md) | 197 | `result-track:0e266d8dbed3e4f3e36acd2856d5c940a643e0a8a3e9151535b5f8df88828880` |
| 18 | `theorem` | [mk_le_mk](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mk-le-mk.md) | 202 | `result-track:7e659949e3a7fbb6314c65d52c584af70f04558e191059dfed3dee930509fadc` |
| 19 | `theorem` | [ext](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/ext.md) | 209 | `result-track:8fb8a593013232e041dc25d6d16aa1e9ad29f083ec8144f92666f1db1cc13e8b` |
| 20 | `def` | [copy](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/copy.md) | 215 | `declaration-track:8c9dbb23cb6f0fc0d9b26001b3a603cddd67547aaec73d4951aa7ea1ede3ee36` |
| 21 | `theorem` | [coe_copy](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-copy.md) | 222 | `result-track:21993599fd2f2836efbb30b1064d7e2838f7a52564b540ab306fde85a94721ab` |
| 22 | `theorem` | [copy_eq](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/copy-eq.md) | 226 | `result-track:093a57a8d8adb92e0174b9738dd4768efcb3e2036b620e50d85fd7656f4883df` |
| 23 | `theorem` | [coe_toSubring](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-tosubring.md) | 231 | `result-track:92840275ea4972212b580956a6fee0ac3c1e57953401f098c0d8f93038cb9c1a` |
| 24 | `theorem` | [mem_toSubring](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-tosubring.md) | 236 | `result-track:3fb41a74a16c7bb4a1ab901d8371601c40a5f54ee2798e16f36fec8b8e6cb9be` |
| 25 | `def` | [Subring.toSubfield](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/subring-tosubfield.md) | 243 | `declaration-track:d5f1e225cf53e10dfd67d15aa70c7f8f7383191deb28af10ecc2a380ab0cd1db` |
| 26 | `theorem` | [one_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/one-mem.md) | 254 | `result-track:f56fcbfdc9583398e16240b01d8495b8aa4428749f351e4ac25f6f4e0fcd48b2` |
| 27 | `theorem` | [zero_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/zero-mem.md) | 259 | `result-track:74fcea03e0ee4cd2aa66fec41eb360add9595a396935e9ad93910c87c8df24b3` |
| 28 | `theorem` | [mul_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mul-mem.md) | 264 | `result-track:61fc3e9d2dc1e3ae0fbeb054ff91837895e33d9de9fafea5c21c578b31d8c3e5` |
| 29 | `theorem` | [add_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/add-mem.md) | 269 | `result-track:00b4f6b22f3c68a29dc42c12001c009094a0ecdb12ee12291af3294788afd90a` |
| 30 | `theorem` | [neg_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/neg-mem.md) | 274 | `result-track:294c5e9f6888df6797e7937e5e34a2bde76099f23d17ae9219894040f03a6003` |
| 31 | `theorem` | [sub_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/sub-mem.md) | 279 | `result-track:c21824cf0b3359815ab628fda8abaacd332696b6d9f6845d85dded18a74d59e4` |
| 32 | `theorem` | [inv_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/inv-mem.md) | 284 | `result-track:635f9bfc71488af78f45964bc0e0f1f7910ea7484d1671b061614eab0d961694` |
| 33 | `theorem` | [div_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/div-mem.md) | 289 | `result-track:c76c803f742494738cbe10c5ce5bd2304097d2481588cb646bad1b71c1da0d47` |
| 34 | `theorem` | [list_prod_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/list-prod-mem.md) | 294 | `result-track:29d0d4910e83b4496632e08434ab24961be5a70f4852ab14f3d6a57a7ac7a363` |
| 35 | `theorem` | [list_sum_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/list-sum-mem.md) | 299 | `result-track:e6ad66d2213798e15fa2cc945c04bc10d0f71c33677d680ea3e065858d2112d9` |
| 36 | `theorem` | [multiset_prod_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/multiset-prod-mem.md) | 304 | `result-track:d3bed541222e54da7fbf672cf6bb2864c221f04d293e52adf09baedf0589bdd1` |
| 37 | `theorem` | [multiset_sum_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/multiset-sum-mem.md) | 309 | `result-track:8a9031a98c323ac3a7bb8d178bcd652d0d7ba8cf07d649f5e7a15231ee00c518` |
| 38 | `theorem` | [prod_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/prod-mem.md) | 314 | `result-track:1c81460c935f8b4e8ebbee77825faf03a5da4244fa4d70c12f9ba402f9350d34` |
| 39 | `theorem` | [sum_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/sum-mem.md) | 320 | `result-track:91bbfcf3f0e32786eb26b2f372b8e562b3d53616b5f9ec4f52c433fd5f8f607f` |
| 40 | `theorem` | [pow_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/pow-mem.md) | 325 | `result-track:b2104862bbddb13fbcfcb7a6986b97a7f7a97d4f54345f98c910f9e10c49d5cb` |
| 41 | `theorem` | [zsmul_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/zsmul-mem.md) | 329 | `result-track:f770e084511658759ddef485ef2be7bb1e2e90a330867b2f7ecd280ad71485cb` |
| 42 | `theorem` | [coe_int_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-int-mem.md) | 333 | `result-track:ae99e6161df1a7bb3346ab19cb458037729c762017f1be6adf711993dc8d6672` |
| 43 | `theorem` | [zpow_mem](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/zpow-mem.md) | 337 | `result-track:8d97ff6ac844c94a26b03eb936fa663e380cff8bbb61559d181934dbd1d3ff7f` |
| 44 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-6.md) | 343 | `declaration-track:76da6e1f9fccf9c49afd448db85a90324edcb26b1ada9cc78ea8c36860dfd144` |
| 45 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-11.md) | 346 | `declaration-track:cf91484b859e0c8d893bc981aa11b6bdd43bff28de0ea0f3d920d66c6c3bbcc6` |
| 46 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance.md) | 349 | `declaration-track:0d44ac77ba183de089b150c8941021635cffe8882652aff11f7e3569c918bc09` |
| 47 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-9.md) | 352 | `declaration-track:9c090b107cbb4fb52cc09140eaf340d371a6dd65e7e435f1547a0d58c1417607` |
| 48 | `instance` | [toField](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/tofield.md) | 356 | `declaration-track:702ef8101ae55ba476e9ee9c3eb0a9b024e52dd590eb2773249886d2ccf25d65` |
| 49 | `instance` | [toLinearOrderedField](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/tolinearorderedfield.md) | 363 | `declaration-track:0fb77b0e0a6604ad34250624310eefbff83fd7bc3623ea0a236e2af4ba29071d` |
| 50 | `theorem` | [coe_add](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-add.md) | 371 | `result-track:4456d760208a7ed0d03b3f1d25f7dfb31132ab0e4f4f28d47074d0cc84257202` |
| 51 | `theorem` | [coe_sub](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-sub.md) | 376 | `result-track:8756b97502ecf398f7a125b47e48f146499cf3205c5d4352de664e6d5d6b7ff9` |
| 52 | `theorem` | [coe_neg](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-neg.md) | 381 | `result-track:2de8dba7013f606d0368290de5d4a3c2275b2cbd7e0a9b6579b097582058eb52` |
| 53 | `theorem` | [coe_mul](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-mul.md) | 386 | `result-track:d21da68ca596cd7a1f0634294345b73d4a756803f11b7a85cab30ce428a6bf56` |
| 54 | `theorem` | [coe_div](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-div.md) | 391 | `result-track:f2c2e2d613e46a80899d422aef829c62dcb6036c22874ef70383f647a7debd4f` |
| 55 | `theorem` | [coe_inv](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-inv.md) | 396 | `result-track:1497190f588135a369cbecb3f3d42b12491ad067f15ef4e2e335ba7c169344c9` |
| 56 | `theorem` | [coe_zero](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-zero.md) | 401 | `result-track:7d6590bca276ee5e66e40d19e64c519b2d5e77e95efbb1d4768966b75cefbad4` |
| 57 | `theorem` | [coe_one](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-one.md) | 406 | `result-track:3f3bbf0c70efbf5572af1c38a5b6e79760352c8b8baca09734ae861181b5bf96` |
| 58 | `def` | [subtype](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/subtype.md) | 413 | `declaration-track:e277f19c609255612ca7e9a781ddc42bdfd75e7268b6c88afb38fc25b8e1dcfd` |
| 59 | `instance` | [toAlgebra](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/toalgebra.md) | 417 | `declaration-track:ecbea5bdcc544e398c7a54d48d7796e51182664a96ea863e99c4ad404f5bc1a5` |
| 60 | `theorem` | [coe_subtype](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-subtype.md) | 422 | `result-track:75c5863a4edc51f081705e96fc217411c64da2a826ba92c34392a45e723c1aa4` |
| 61 | `theorem` | [toSubring_subtype_eq_subtype](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/tosubring-subtype-eq-subtype.md) | 426 | `result-track:6a2ce19d93531bcb250080c5a7ae241951d2dba9148b21902198581a2b256742` |
| 62 | `theorem` | [mem_toSubmonoid](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-tosubmonoid.md) | 435 | `result-track:e7819be34cd6afe2ee6bd812edbccc7aec2edd2242e5de48ac10a106c6e6a4fe` |
| 63 | `theorem` | [coe_toSubmonoid](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-tosubmonoid.md) | 440 | `result-track:4afcee7d84d8a87878219e021a5567745ee32ed17706bc63da9ec590f24c740b` |
| 64 | `theorem` | [mem_toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-toaddsubgroup.md) | 445 | `result-track:6c2b85f0eacc1ab958da1757b60bf7e96b650cb3582985db335595239797a8d2` |
| 65 | `theorem` | [coe_toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-toaddsubgroup.md) | 450 | `result-track:7916c088f71544689fb734a387f4ae2d6544935924f7c209eb2a78769367e9b0` |
| 66 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-12.md) | 458 | `declaration-track:d08d62fe33681053977b9ae916f1de0e382b73efdfdfde4b1a97f9f183d13c9c` |
| 67 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-2.md) | 461 | `declaration-track:3200331f2bd21b06f5fff2c08cf6465eb5be2c1af1364a5772ad76fd6ca08c8e` |
| 68 | `theorem` | [mem_top](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-top.md) | 465 | `result-track:0a4c0061cce10e7358e4ec89f93af174127b7518c12e2c2e85d57639596fa364` |
| 69 | `theorem` | [coe_top](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-top.md) | 470 | `result-track:c9782e56829c65d333deda218f4675721ee577c897ea9c190a2ab4bca0f8d440` |
| 70 | `def` | [topEquiv](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/topequiv.md) | 476 | `declaration-track:8388e8f4820a5e389a381102fc6211bad07dcc55f868985198633b6bc7090e04` |
| 71 | `def` | [comap](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/comap.md) | 486 | `declaration-track:47eba95189c58053713e1f28c1a1f1a462d11f994d8de035f00c3451a2ef48f3` |
| 72 | `theorem` | [coe_comap](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-comap.md) | 495 | `result-track:c9a170fbdbcae8a5529cc50393e9d10d662999266b514655bb51c5a628d7d74d` |
| 73 | `theorem` | [mem_comap](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-comap.md) | 500 | `result-track:2f49cbb8d9bc8344b89dd4c23b7a747cf40f1034775c99f3eb3b0d897ae1f58a` |
| 74 | `theorem` | [comap_comap](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/comap-comap.md) | 504 | `result-track:aaded1b237ba00feb92a378071f55c4d945bb1c86c6963376fd82d769bb92d74` |
| 75 | `def` | [map](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/map.md) | 513 | `declaration-track:7ad6e918f0310802955563cf34cd781af0ab26d4316d64c0561d7bff9be78106` |
| 76 | `theorem` | [coe_map](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-map.md) | 521 | `result-track:f4f5628c30affeedaa0ea4cffc9b315b20e462ccfe968e236f37ec817d78af23` |
| 77 | `theorem` | [mem_map](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-map.md) | 526 | `result-track:50d6c5990d9bcbe2f9166dbc6037de19c327ddfdea270081c999954180d51e5c` |
| 78 | `theorem` | [map_map](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/map-map.md) | 531 | `result-track:7df146775a34db02c003c5fc109bb1239a04b785da86aa46248b93be0e547ed2` |
| 79 | `theorem` | [map_le_iff_le_comap](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/map-le-iff-le-comap.md) | 535 | `result-track:97ea0d17843712b8eb22a48e9f577250a5b6d0c572cdf0a2b8b964c42c073580` |
| 80 | `theorem` | [gc_map_comap](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/gc-map-comap.md) | 540 | `result-track:1acd2681b0a3a1e86fb640af5bfd66b99e4e8dc546523ab2b5c856b7f181a732` |
| 81 | `def` | [fieldRange](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/fieldrange.md) | 554 | `declaration-track:6485414e6f74debe6649e3f59b7d55150bd5aaa0fe1184b3cbbb816b5bc18c7d` |
| 82 | `theorem` | [coe_fieldRange](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-fieldrange.md) | 559 | `result-track:17716ba4513521338ed081b371b57ca6b81f9534ddc03f431b78cb4cfe853a87` |
| 83 | `theorem` | [mem_fieldRange](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-fieldrange.md) | 564 | `result-track:decddcb6588e98d84fa6b25473a3f0f1d6eaaa0ef5a58b643890d31c5f96591c` |
| 84 | `theorem` | [fieldRange_eq_map](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/fieldrange-eq-map.md) | 568 | `result-track:a5073526be579951559c093b5ded05d01d16653fde38425a5fb08b9b8e0d39ab` |
| 85 | `theorem` | [map_fieldRange](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/map-fieldrange.md) | 573 | `result-track:18d35dead4c67077140f5a81df05b5b2053e5ec360f81e459d44e3d9e42c0224` |
| 86 | `instance` | [fintypeFieldRange](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/fintypefieldrange.md) | 580 | `declaration-track:9d1308637f4cc4eb5693cf6ce6bd8d6d45ef54b127b63f31276f13619ca04de2` |
| 87 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-13.md) | 592 | `declaration-track:dba8bda3863f5c1a2464fe3653ade57a819295e0798260d0722c837d9a75404a` |
| 88 | `theorem` | [coe_inf](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-inf.md) | 600 | `result-track:efe2a57ee2abf7cf47f3ac60febc3adc7e33f6047f2de62b50076d289503fd9f` |
| 89 | `theorem` | [mem_inf](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-inf.md) | 605 | `result-track:5a26db98d8021c1588b71981a56d5a02e79829f280db64830b75ec484a5a8ea1` |
| 90 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-15.md) | 609 | `declaration-track:f78def68e45a1e9e7e8454214cc6b9b8fbde86d6f0b3615377f9e9fe4f454299` |
| 91 | `theorem` | [coe_sInf](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-sinf.md) | 619 | `result-track:389ce3e4252471e379d64f06bdaa20c0936fc345560ffdcc82ef7377688a72ec` |
| 92 | `theorem` | [mem_sInf](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-sinf.md) | 629 | `result-track:1f1d0d9db44835e2204d5887f72d252eeefa7cf6d5dd945722a6b2f07a0726e1` |
| 93 | `theorem` | [sInf_toSubring](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/sinf-tosubring.md) | 635 | `result-track:c74709948f27b957a6d43405300205484fc895ff890e2e4ea7b7c75a62dd6675` |
| 94 | `theorem` | [isGLB_sInf](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/isglb-sinf.md) | 649 | `result-track:28c31c2238b82ce3c7c3453caf075dce239979aa3800fbab9558d4b9836a829f` |
| 95 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/instance-source-edition-4.md) | 657 | `declaration-track:47c4cd0d2f705e3b878d107a23638ea808183d9c364793468d59db5d61a31fcb` |
| 96 | `def` | [closure](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure.md) | 669 | `declaration-track:6fe9b9539c28a5b26747c0aedb47b63d7fafc030022580d791e081a35b810dda` |
| 97 | `theorem` | [mem_closure_iff](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-closure-iff.md) | 694 | `result-track:d270eeabb07dbcb0cad85b9d0f6a10be2259a34a8b84cd53cc49c5e0ad261163` |
| 98 | `theorem` | [subring_closure_le](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/subring-closure-le.md) | 700 | `result-track:45854b605a05f3b767e386fd04f8531c71132ca265fa3318dab74581519e4e13` |
| 99 | `theorem` | [subset_closure](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/subset-closure.md) | 706 | `result-track:787463555230ecac6caad84f899cd7a849b07fc87eb46b254d23afbfa2cf2d52` |
| 100 | `theorem` | [not_mem_of_not_mem_closure](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/not-mem-of-not-mem-closure.md) | 710 | `result-track:9b734a359cee93b2585fa262e66de138cf46abc0bacadd4caf18ee5d01fb2467` |
| 101 | `theorem` | [mem_closure](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-closure.md) | 714 | `result-track:09b94219ecdf21623bf248c53fa8adc34342a23f63d3065c410621d974c4f5b0` |
| 102 | `theorem` | [closure_le](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-le.md) | 724 | `result-track:8aeac82f89bbecb187227a8a866ec0e2863fcf07107ffac4d6bc4c94c8220f11` |
| 103 | `theorem` | [closure_mono](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-mono.md) | 730 | `result-track:3b2b4e60f90c6969dbeab4af9fb9ac344df73641fe6488b4b8675a72f49e09af` |
| 104 | `theorem` | [closure_eq_of_le](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-eq-of-le.md) | 734 | `result-track:ba23e85a5844b2bc10e9b03d54ffd16778b37fa8b0c5f6a753788ff11c9a0a67` |
| 105 | `theorem` | [closure_induction](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-induction.md) | 743 | `result-track:21c316518323ef064d844fd901ab53abae6f7008f64a5328a808f611fd8cfaf7` |
| 106 | `def` | [gi](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/gi.md) | 756 | `declaration-track:634e899790394bd6f458a10d48145a84b79701fce8b1944ae060644a8ab6f2df` |
| 107 | `theorem` | [closure_eq](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-eq.md) | 766 | `result-track:f7a8e8143ef4332db7a458f20c31f6696df47e63cc55147ce61c2b7238170312` |
| 108 | `theorem` | [closure_empty](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-empty.md) | 771 | `result-track:2cf3bbc3e173b284a57ecbd37a98174a870493e0a6a045fc1805d53ae30bfbe0` |
| 109 | `theorem` | [closure_univ](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-univ.md) | 776 | `result-track:bffbc7ccdaa8528993f5782b01f86d1faf643ded314fd0f669993183425dfa39` |
| 110 | `theorem` | [closure_union](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-union.md) | 780 | `result-track:c7d8bee5597f00f97e37ac5adc8f80cb657bb30fe23e29413eef21b672f2da21` |
| 111 | `theorem` | [closure_iUnion](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-iunion.md) | 784 | `result-track:32d5657dc85373cc27eae7197eb025a77f8593b03f9d4327fae0ffec52b340fd` |
| 112 | `theorem` | [closure_sUnion](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-sunion.md) | 788 | `result-track:d0c1aeb601b507a71203fb4cfcd3a3873840659b2adcb0b6ef3291a6fd5b808f` |
| 113 | `theorem` | [map_sup](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/map-sup.md) | 792 | `result-track:243b4e73ebce710da8484b1f73400504d788d0db64dcf50933d482481bb0d401` |
| 114 | `theorem` | [map_iSup](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/map-isup.md) | 796 | `result-track:5023ac3f7b258e731dd23f74e975bcdb3b2a735848ff06a057c0e58c12328188` |
| 115 | `theorem` | [comap_inf](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/comap-inf.md) | 801 | `result-track:12938520631a11eed4e600546924f7a9bdd1a43d6e60c10a4a7e04d6ad74237c` |
| 116 | `theorem` | [comap_iInf](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/comap-iinf.md) | 805 | `result-track:f535bd54bef7ce1f3319ec3f1c4178e8727201d535ad01e9e1cbcd0446b542cb` |
| 117 | `theorem` | [map_bot](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/map-bot.md) | 811 | `result-track:7cb75b0186b9f9680d4d3fd2a9fdc164fe939b36222f7c4a5550829e5c890339` |
| 118 | `theorem` | [comap_top](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/comap-top.md) | 816 | `result-track:49dd3dc9c307365d210a02a8b042229c555e05b5bd7f450c2da07f9be98fc71b` |
| 119 | `theorem` | [mem_iSup_of_directed](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-isup-of-directed.md) | 823 | `result-track:edc440a7b01e6bf006c2cff4cd7997c1b1ccd9e75fa6940580dbe5d11b084263` |
| 120 | `theorem` | [coe_iSup_of_directed](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-isup-of-directed.md) | 842 | `result-track:f50234e2c801eb313e1c025bbac33a1e4aec9c1ce351145e939a4c57cc54637f` |
| 121 | `theorem` | [mem_sSup_of_directedOn](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/mem-ssup-of-directedon.md) | 847 | `result-track:88772fa7a78a4f7473bf399ed9b6e9a1ba82a5a9a0dd385a17f8c8eb0bd25a3e` |
| 122 | `theorem` | [coe_sSup_of_directedOn](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-ssup-of-directedon.md) | 853 | `result-track:0bd9022e307636ee3642c517f20ebdd0a51c9d6eea97520a3124db57c474fc44` |
| 123 | `def` | [rangeRestrictField](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/rangerestrictfield.md) | 867 | `declaration-track:ebf84a881a41569f08cca582e9483398c5732827ad02b401aa76a51111283130` |
| 124 | `theorem` | [coe_rangeRestrictField](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/coe-rangerestrictfield.md) | 872 | `result-track:8d4d694fb932893dda57dfc8c2cb148c11e307590ec55025a71741cae71d5664` |
| 125 | `def` | [eqLocusField](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/eqlocusfield.md) | 878 | `declaration-track:1648f51f240842f80847c18f3cac6e587c246c77d7a40de35be9137593adcd5c` |
| 126 | `theorem` | [eqOn_field_closure](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/eqon-field-closure.md) | 885 | `result-track:bc9e3d75ef0461e826f6cd2858fe8b88cb3be03fbaaf4bebcec065ddb1418586` |
| 127 | `theorem` | [eq_of_eqOn_subfield_top](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/eq-of-eqon-subfield-top.md) | 890 | `result-track:4c8604ddd1781394b9271c4271f8f2c76df6284cf96d6f4bfa32dae0805bb016` |
| 128 | `theorem` | [eq_of_eqOn_of_field_closure_eq_top](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/eq-of-eqon-of-field-closure-eq-top.md) | 894 | `result-track:e687ee91e09ec668618cc3b40d23b5b16907fc98c7e58f71b3b0b21281d6d1b6` |
| 129 | `theorem` | [field_closure_preimage_le](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/field-closure-preimage-le.md) | 899 | `result-track:98dbd21271e104fbb61aa7142888a9be1f965e41f45ea34bbdfd294d65ab198e` |
| 130 | `theorem` | [map_field_closure](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/map-field-closure.md) | 906 | `result-track:1345676bd2af8de6e18abdb9619fdc7090d4e477319b5a4901f1dbe5ce1653cb` |
| 131 | `def` | [inclusion](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/inclusion.md) | 920 | `declaration-track:48f3c89c659a8cfd8b8b2aee134d6e1dafab405d81a13218f303c106b4b7f8c9` |
| 132 | `theorem` | [fieldRange_subtype](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/fieldrange-subtype.md) | 925 | `result-track:6d7b41e26bacf52fe32503a678bf53272ed7b62dd4e873914c752a4935355b50` |
| 133 | `def` | [subfieldCongr](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/subfieldcongr.md) | 937 | `declaration-track:7061485f764a4fbce1896b8c96b91d6b83386ab6e228f7ae352c60ddf4294cd3` |
| 134 | `theorem` | [closure_preimage_le](../../../../FieldTheoryAndPolynomials/SubfieldNamespaced.lean/declarations/closure-preimage-le.md) | 949 | `result-track:b74e0a8c5b17222aac9c2652db8d04ebcc5bac1c31995254cc3b30d43d6dec39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ab7cc1d0d83d47a7feedd55ecb73ff4e1b3dc39f904615d40ab9403388d26a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Subfield/Variantaf7fb301f39bb3d592109f9ddbabb37364c4d3a527c3992289eca1a966020160.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Subfield/Variantaf7fb301f39bb3d592109f9ddbabb37364c4d3a527c3992289eca1a966020160.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

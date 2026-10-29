# Verification target: RCLike Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d6ac4cede463d1008a60dfc268c5a8309a312a7",
  "lexical_observation_count": 277,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d6ac4cede463d1008a60dfc268c5a8309a312a7`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean.json)

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
| 1 | `class` | [RCLike](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/rclike.md) | 60 | `declaration-track:41c6fb51f106ba67b78fbdf4da72d8b33deaff1cf20cd754576165d046318699` |
| 2 | `abbrev` | [ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal.md) | 97 | `declaration-track:f03d35bbd6f48b4165214b7267c3b522330409bbf0431be982b16aabdcfa91c2` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instance-source-edition-4.md) | 101 | `declaration-track:4a89b704d85c0d46d6023fee6747a0e87e4eec4446360aa14899e923d98db428` |
| 4 | `theorem` | [ofReal_alg](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-alg.md) | 104 | `result-track:aff2c1095ad2755ef589d048d313b62347a058440686947239f8ff005985951e` |
| 5 | `theorem` | [real_smul_eq_coe_mul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/real-smul-eq-coe-mul.md) | 107 | `result-track:270fbbff60ee2cf18bcd2d5ce37b1751cdf24e4e94e47bf5a061590fd60f5995` |
| 6 | `theorem` | [real_smul_eq_coe_smul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/real-smul-eq-coe-smul.md) | 110 | `result-track:482ba0fe9dbb056bef9ca9b58365b5a30e020bd9f85df93abe4c3dcce97e3fc6` |
| 7 | `theorem` | [algebraMap_eq_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/algebramap-eq-ofreal.md) | 113 | `result-track:a47350b7d4e3fb0efac94b32908f8d38c90aa05b7a294e4beb2f8c717a9d70d3` |
| 8 | `theorem` | [re_add_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-add-im.md) | 117 | `result-track:bd785f8fa4e7f40c03e0764d26c990f9fab3eabb5f4e5fc2b2b09ee74534edb4` |
| 9 | `theorem` | [ofReal_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-re.md) | 121 | `result-track:a93ac6ce3e687ef08872eb9d4dd72ab715af69719b88e201580464196542b1aa` |
| 10 | `theorem` | [ofReal_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-im.md) | 125 | `result-track:9e268b4d2b9de9b0dc750bfd651bd97a38c496cca1b65a7ad14a6c62ec2ffa24` |
| 11 | `theorem` | [mul_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/mul-re.md) | 129 | `result-track:6a173ea9ebaf53f9826b69a387f297ef94caf59a4bde2c69b5dd58b1e9e05aaa` |
| 12 | `theorem` | [mul_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/mul-im.md) | 133 | `result-track:74601a54850e028f6005fcc6e7f233d2c266e589854bddfa6782a801a60c689b` |
| 13 | `theorem` | [ext_iff](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ext-iff.md) | 136 | `result-track:6399056d4dc0f3799b2f8277d894dc564d8ace2ee5f66373fe13bae8a3e29afc` |
| 14 | `theorem` | [ext](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ext.md) | 139 | `result-track:abf9db4681ead600df270dc445d68a5c870df559bdbb90d87f073b54f1073c51` |
| 15 | `theorem` | [ofReal_zero](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-zero.md) | 143 | `result-track:f8db2155791b57410d1de7f5f8f81508df8e4438e3e8916bca577c39f4c06002` |
| 16 | `theorem` | [zero_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/zero-re.md) | 147 | `result-track:0c1a2ecc062e77b381449b7343310455b5feb42bdb52332a5c36488b0efab3de` |
| 17 | `theorem` | [zero_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/zero-im.md) | 151 | `result-track:5800f47ebc3ffd904f71df53a52fa16363c3b0e18d1c5b04074f5da50575718f` |
| 18 | `theorem` | [ofReal_one](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-one.md) | 155 | `result-track:4c373f3deaebf6bcd1e1b019bdae867ba49c9a80e9e665a8eb22b5fdf3cfab9d` |
| 19 | `theorem` | [one_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/one-re.md) | 159 | `result-track:0944536526f9ea49abc36ac075ec22c7e8dad8b85433e911e680c8e24086a57a` |
| 20 | `theorem` | [one_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/one-im.md) | 162 | `result-track:77ba0e149205a7cbbd3c4dc19d9fb3bbc38dd407c5a5004492774717693c9142` |
| 21 | `theorem` | [ofReal_injective](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-injective.md) | 164 | `result-track:820b75c56f4327392df76cfc09f8865a8a7b215d236af6d43de786e03d2d97f7` |
| 22 | `theorem` | [ofReal_inj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-inj.md) | 168 | `result-track:a7f1277405c75c8a6251f636290537927eaab17841e5d7d680306a88dc29e69c` |
| 23 | `theorem` | [ofReal_eq_zero](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-eq-zero.md) | 171 | `result-track:04ab48bac4839059d2aac1ba369790d8a997715a91139b2aa6166f6435b7fdd9` |
| 24 | `theorem` | [ofReal_ne_zero](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-ne-zero.md) | 174 | `result-track:38ca1d795d889973925443f8f9bf7cfe0f6d017f28b499a2cb108cbe1f6523d9` |
| 25 | `theorem` | [ofReal_add](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-add.md) | 178 | `result-track:d89ca31511d2941b111dd61af7d234bc75208ce7ec9b76e59e35f5bab619cca7` |
| 26 | `theorem` | [ofReal_neg](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-neg.md) | 182 | `result-track:c3830559415003c0192f845965da6309d1ecd1f5d074ce5e4b76a327d49ac05d` |
| 27 | `theorem` | [ofReal_sub](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-sub.md) | 186 | `result-track:336340c928e81fe095fa6ed09da3b5135f0c6a0b6bc3293da76504c935de2400` |
| 28 | `theorem` | [ofReal_sum](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-sum.md) | 190 | `result-track:896b458dcf98ef933d7ceb2f9bba36037a6248a15b65af0ccdd2043aecd10962` |
| 29 | `theorem` | [ofReal_finsupp_sum](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-finsupp-sum.md) | 195 | `result-track:010e13e9d8e9eb8adb6c9cd5f5949a5d864c45f0446eb0abb4aa83f6025fbad0` |
| 30 | `theorem` | [ofReal_mul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-mul.md) | 200 | `result-track:99863a56b82bf48b995e3264252dd42fe3c946646bada0eb9ad92dad6f061f9d` |
| 31 | `theorem` | [ofReal_pow](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-pow.md) | 204 | `result-track:534029ec1ca6780737905baf5ad76f129a8eb81993a3efba69e71f0509a70b96` |
| 32 | `theorem` | [ofReal_prod](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-prod.md) | 208 | `result-track:f9f1bcbaf6c03e42d518a931030223500f2f9586db2d0f9370bd0a8a85c7ee34` |
| 33 | `theorem` | [ofReal_finsuppProd](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-finsuppprod.md) | 213 | `result-track:e67467c238153d83f6f51f5a66fff3d90e4692de7bb53d8d0719703ad5e7d066` |
| 34 | `theorem` | [real_smul_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/real-smul-ofreal.md) | 218 | `result-track:afdd2e2d060f2e47e9d4e6993bb10aacef824f7e791e3347304968261e91660a` |
| 35 | `theorem` | [re_ofReal_mul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-ofreal-mul.md) | 222 | `result-track:d4734ce7bfe0b33b149dfc78866c613a3188256e55d91294c794247e75ecc628` |
| 36 | `theorem` | [re_mul_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-mul-ofreal.md) | 226 | `result-track:d71e2528c336cfbb019bd26aa0c1799a111c653a3ee71fa06102f65d035c4e1f` |
| 37 | `theorem` | [im_ofReal_mul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-ofreal-mul.md) | 230 | `result-track:e3e14dd18fdfe5fe50a8a3fabb3945e93d36b230a8b7760609a5eccfbee150b8` |
| 38 | `theorem` | [im_mul_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-mul-ofreal.md) | 234 | `result-track:4d08552a4101d706aaccdd8d74161ce350590617ec2a57b37a736217e16ac7b1` |
| 39 | `theorem` | [smul_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/smul-re.md) | 238 | `result-track:a8aefb7537e9a4f925dd7161a355aafc91ab645c767a316a446a6edc04f59c57` |
| 40 | `theorem` | [smul_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/smul-im.md) | 242 | `result-track:b891a378166fda09ec6ca2527d2abd919f44a4b1bb50444c77abda91872e16e7` |
| 41 | `theorem` | [norm_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-ofreal.md) | 246 | `result-track:eb923ec34c75a2e73bfdb0db4857cf2a601bc6d822cc04a6382ff876af3c3645` |
| 42 | `theorem` | [re_ofReal_pow](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-ofreal-pow.md) | 250 | `result-track:a5ff0c25f29594b0b9a367f71cc5ec4bc368c4647eae32b43f2ebb6152ac3aa3` |
| 43 | `theorem` | [im_ofReal_pow](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-ofreal-pow.md) | 254 | `result-track:b86282146633eaf1bfe80a880675c5c525b8cec36cde91cd55106e449c61741b` |
| 44 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instance-source-edition-8.md) | 261 | `declaration-track:d7ffbd1cf5ad9cd04139804433ee70fb354aa7529d6b06df786fa4ecadd6cd9b` |
| 45 | `lemma` | [ofReal_expect](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-expect.md) | 265 | `result-track:537b4117e9b9590cd457f5ec545830b1c493f7f9032327158ef14e35c9e779e2` |
| 46 | `lemma` | [ofReal_balance](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-balance.md) | 269 | `result-track:8b7c0064bc5428710a49a2fddd5d4d289f7df03ebd003389c1aecbe838998d10` |
| 47 | `lemma` | [ofReal_comp_balance](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-comp-balance.md) | 272 | `result-track:bea084ef1e6b13cb01bd732aaa9b70b86f694f0c3817094e215e9bf50554fa02` |
| 48 | `theorem` | [I_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/i-re.md) | 279 | `result-track:8a68e7310768a7763d57330382f6a6eb4b4004b94406800b8be842463724ce39` |
| 49 | `theorem` | [I_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/i-im-source-edition-2.md) | 283 | `result-track:7287ec4fc77dd4d7f7225275ae4f4d248014137f79afa81fd2727eb3e3ef8c8d` |
| 50 | `theorem` | [I_im'](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/i-im.md) | 287 | `result-track:4e0753019442e0f1d03fe1f1e0d96c05e6f8883a8a4e4c0a1911bfd6eb8c2daf` |
| 51 | `theorem` | [I_mul_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/i-mul-re.md) | 291 | `result-track:46a8b8eb299bea7e073911c7cb8dc9821fdc45fd58991046d00287201bedc010` |
| 52 | `theorem` | [I_mul_I](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/i-mul-i.md) | 294 | `result-track:3f1446ce07a771504e47e5df053cf757515e54d9306b11adee14c9b7437e0cc7` |
| 53 | `lemma` | [I_eq_zero_or_im_I_eq_one](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/i-eq-zero-or-im-i-eq-one.md) | 298 | `result-track:2dc7e7042a59b23e832df0780e22b660bca0851a47d6eeaab1d4d59fa174a85a` |
| 54 | `theorem` | [conj_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-re.md) | 302 | `result-track:08b4d0786888f73cca038c9bf31fa70394f346a84283aea9031254d598c566da` |
| 55 | `theorem` | [conj_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-im.md) | 306 | `result-track:3f9d8369db0d13e6043a550d97f4f984525e34ca6dc844d2ed57f62fa6f9b775` |
| 56 | `theorem` | [conj_I](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-i.md) | 310 | `result-track:d683231ec3f55418d7988b17cc1603bcdecf246fc45bbc73a4c9441414e929f9` |
| 57 | `theorem` | [conj_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-ofreal.md) | 314 | `result-track:f3a3496c1e94718603fd253ad594e7c2e83dcc4c9c73ab7980bb03a86795778a` |
| 58 | `theorem` | [conj_nat_cast](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-nat-cast.md) | 318 | `result-track:34f54591a066b7462beec1ff92b8c076cab2deae2e070cbf029c2594f143664a` |
| 59 | `theorem` | [conj_ofNat](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-ofnat.md) | 320 | `result-track:c0fa4abcd2acc7901c24d31f5d5af248c2367440981e741085140939e0f01124` |
| 60 | `theorem` | [conj_neg_I](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-neg-i.md) | 324 | `result-track:fcb900678bd8ed77895974dfab8fb63c4fa5642b6a2aa4083cfab52abc925f9d` |
| 61 | `theorem` | [conj_eq_re_sub_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-eq-re-sub-im.md) | 326 | `result-track:ea84dee00a1a058abd2c6dbef5861e55dec52d4e1eeb6f8cde21315a4e642058` |
| 62 | `theorem` | [sub_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/sub-conj.md) | 330 | `result-track:0653a8778aabb4ddfceb89c5f1e6232a9cde79980848ec0bfc56d4f8c7dd47c2` |
| 63 | `theorem` | [conj_smul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-smul.md) | 336 | `result-track:e921db5e7b9d0b1fe93e4f09608face3811d6131dfbf8e6f3c11f0c94cd0a44b` |
| 64 | `theorem` | [add_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/add-conj.md) | 340 | `result-track:535800c5f715b5ec7a89e41103910e4b83527b6bb9ff170c1a57bea4a3fa4d8e` |
| 65 | `theorem` | [re_eq_add_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-eq-add-conj.md) | 345 | `result-track:5424ac6c2c19c6bf21fbd9ab95a410a16b94f767ba12a7de637c96635bdec31c` |
| 66 | `theorem` | [im_eq_conj_sub](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-eq-conj-sub.md) | 348 | `result-track:a8720b6176e14e60a50dc3ed954d26a4d1a2720186ca3fa4e46b7af927330af1` |
| 67 | `theorem` | [is_real_TFAE](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/is-real-tfae.md) | 354 | `result-track:6bbd9a4268a12846230f02da9b527532b9f5329cd557fce129f8c52886f5213c` |
| 68 | `theorem` | [conj_eq_iff_real](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-eq-iff-real.md) | 370 | `result-track:8edd3dd6df2afc095338fae315953ebacbb39c3683129bf14edd70358abe399f` |
| 69 | `theorem` | [conj_eq_iff_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-eq-iff-re.md) | 375 | `result-track:15bc5f83e9b1c70b94aa84bc95f5e96e5178ac575b0383a0ab51f6ba4396f9cd` |
| 70 | `theorem` | [conj_eq_iff_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-eq-iff-im.md) | 378 | `result-track:9c23fab29615f5a491ea4f2c0459c0a47d5c1caa984b3c65784e3254b0dd838e` |
| 71 | `theorem` | [star_def](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/star-def.md) | 382 | `result-track:871b3e399e39ee13f042cd53110511572ad10b0c47607a6d77a5ebda1001d6d0` |
| 72 | `lemma` | [im_eq_zero_iff_isSelfAdjoint](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-eq-zero-iff-isselfadjoint.md) | 385 | `result-track:e9a15f24927c7d59d736954ec584f6fa58bbf33d0f649be4fe8ed6d72776a95e` |
| 73 | `lemma` | [re_eq_ofReal_of_isSelfAdjoint](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-eq-ofreal-of-isselfadjoint.md) | 388 | `result-track:65055a802bb1be8bc608e8a7239f0af2f13dde8abfffbbd48b67be9d7a0c4bc5` |
| 74 | `lemma` | [ofReal_eq_re_of_isSelfAdjoint](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-eq-re-of-isselfadjoint.md) | 392 | `result-track:e1240e60ba1b8be9010e313dcf2bffac7a9d95452431f38f7fa0eb506599d552` |
| 75 | `abbrev` | [conjToRingEquiv](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conjtoringequiv.md) | 400 | `declaration-track:1bf078599a42148362ee153252d7985274850e9149593e4b94decaed7d96c1ef` |
| 76 | `def` | [normSq](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq.md) | 406 | `declaration-track:38067c79d1d1112ca7819b3d5629e5aaa8e0b6835514fc15afcbd48d686391b6` |
| 77 | `theorem` | [normSq_apply](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-apply.md) | 414 | `result-track:c837ed645e5bcb0d60b1836af049fb45ae2b277adb20edc8cfae482ef31175a3` |
| 78 | `theorem` | [norm_sq_eq_def](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-sq-eq-def.md) | 417 | `result-track:8720a91468b08eae90647a22c97208d81271f68c7c3e94958c60e3e8a6f9b27c` |
| 79 | `theorem` | [normSq_eq_def'](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-eq-def.md) | 420 | `result-track:bbed9cbec0641fb441ead032801dd63960058fbc83572bd7b068b67039db137a` |
| 80 | `theorem` | [normSq_zero](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-zero.md) | 424 | `result-track:2d560f86584188aea4305e72f2db323e12a74c16a223560c3a10b528c098789d` |
| 81 | `theorem` | [normSq_one](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-one.md) | 428 | `result-track:e4e3e1ec87740a4152868acce81f28965f792c4acbeb2808b863427854cf3442` |
| 82 | `theorem` | [normSq_nonneg](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-nonneg.md) | 431 | `result-track:b2323c15cc380cb69c1cd147296073b71a6eb207f65c32fb3e874d23ab54b496` |
| 83 | `theorem` | [normSq_eq_zero](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-eq-zero.md) | 436 | `result-track:9154b9afc4b872285ea8acb42cc0995f72e5dcf30a7529d2311c0b2425ee4574` |
| 84 | `theorem` | [normSq_pos](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-pos.md) | 440 | `result-track:a6c45fb9b57c2f5b71e182348d1e4738c9bf3182bb1149bc8a02dc42b584fcde` |
| 85 | `theorem` | [normSq_neg](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-neg.md) | 444 | `result-track:7162924a9752612aa02909fc28b7575971600d42aa0fc8be539e42295b875cdc` |
| 86 | `theorem` | [normSq_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-conj.md) | 447 | `result-track:b42f4aa6d2f93c776e9799580cb0c645cb4931bf8bb73fe36564f2ac57914daa` |
| 87 | `theorem` | [normSq_mul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-mul.md) | 452 | `result-track:4016446dd8cbbd56e2c6e73ada6b533ab5af7c08dfd9fcd04193f8c8293dd16c` |
| 88 | `theorem` | [normSq_add](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-add.md) | 455 | `result-track:fa0d6344f67382aa38d81d8fe0326c72ddde3a7f2ed20d7bc43e5098e3332716` |
| 89 | `theorem` | [re_sq_le_normSq](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-sq-le-normsq.md) | 459 | `result-track:3d648800ba19b486b0090172888e62da2b92d4076b56b17fea4b52f4c068fa24` |
| 90 | `theorem` | [im_sq_le_normSq](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-sq-le-normsq.md) | 462 | `result-track:8c47ce0dc329bc609332e0706b75f173608d8137f145f346d524dd0bab048c20` |
| 91 | `theorem` | [mul_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/mul-conj.md) | 465 | `result-track:516fb0ff74c04390afee020a9e756844dcf08b7fe8281c33fc21a031b59709dc` |
| 92 | `theorem` | [conj_mul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-mul.md) | 468 | `result-track:30230ba5362dd9b43a350e54f3227fe011d0c374f54774cdb6aeeff41d969c29` |
| 93 | `lemma` | [inv_eq_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/inv-eq-conj.md) | 470 | `result-track:851bf8603e40f4a39630ce3adbfc205b3239f30114a103db6cc5bf4fb5e88ae8` |
| 94 | `theorem` | [normSq_sub](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-sub.md) | 473 | `result-track:3696c6597961f60f28716f58372afbc4b81af796f7c8b02e53adaff30489c30d` |
| 95 | `theorem` | [sqrt_normSq_eq_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/sqrt-normsq-eq-norm.md) | 476 | `result-track:8dd6542a5ddc30a498c52b88d31b6876a863b057ded8db834f09562930e8e06a` |
| 96 | `theorem` | [ofReal_inv](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-inv.md) | 482 | `result-track:e663d935d15d412d10e61cfe865fed0954287b5a3be9565501d4e1a265e1fb58` |
| 97 | `theorem` | [inv_def](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/inv-def.md) | 485 | `result-track:2544be82ddc9838fcf48d47ed8579f0b76ec36a6af6e0fb25ad81a187931ba54` |
| 98 | `theorem` | [inv_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/inv-re.md) | 493 | `result-track:278bce50feed83cf39eb0cc90e93d3c028a8bd9d0a91f61236d0a90a6895b38d` |
| 99 | `theorem` | [inv_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/inv-im.md) | 497 | `result-track:d01f72bfd7b3c9d61a3836ca2a6fad81fe8f7f1a822afcc05b4c1ac51ee8104d` |
| 100 | `theorem` | [div_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/div-re.md) | 500 | `result-track:7ac5f5e5bf9a2a21270464eaf540712c4c2e5ad657ff9f714adf93f70ccc3f71` |
| 101 | `theorem` | [div_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/div-im.md) | 504 | `result-track:13d3f7fde11ccb5b631733d5c74daa43ac2decf2a2961e2b1b063a5d93e9b388` |
| 102 | `theorem` | [conj_inv](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-inv.md) | 510 | `result-track:4d98eab6a5152de0ca16be5bdce33342125a0c99d617e0ec76d607e71ff88ee8` |
| 103 | `lemma` | [conj_div](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-div.md) | 513 | `result-track:755dd14d71b7ea5900e0fabbad08811f261d602f8a95014178325df837d6052b` |
| 104 | `lemma` | [exists_norm_eq_mul_self](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/exists-norm-eq-mul-self.md) | 516 | `result-track:f7b4c241ba07a09f2187172d8f5272d174dd82267e86d95cff27beb9fe60b16f` |
| 105 | `lemma` | [exists_norm_mul_eq_self](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/exists-norm-mul-eq-self.md) | 521 | `result-track:8378aed12d94a3a813be1dacec983865db74ea7434bdd44bdb6306c9465c2250` |
| 106 | `theorem` | [ofReal_div](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-div.md) | 527 | `result-track:13f73a2ffb88e2a8b41cbdb358a0a14f5884551341daa91d396e7f017e8ae361` |
| 107 | `theorem` | [div_re_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/div-re-ofreal.md) | 530 | `result-track:560a0d46c41680446939097f186c553dc0f2b03a0666fddb980e44d34d08dce4` |
| 108 | `theorem` | [ofReal_zpow](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-zpow.md) | 534 | `result-track:83da0c24ab2f8bb3255d117da22e0c72a4837afd4f2aa91365579b7e42d3b5b2` |
| 109 | `theorem` | [I_mul_I_of_nonzero](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/i-mul-i-of-nonzero.md) | 537 | `result-track:b7aee93cfe618129753a5b96077d30c3eac530f966472b6a8630600220cc4dae` |
| 110 | `theorem` | [inv_I](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/inv-i.md) | 541 | `result-track:306a15a06c3d990997a35cd18d790d60f7e5ddc9fc71bf8fdce2c70558705564` |
| 111 | `theorem` | [div_I](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/div-i.md) | 548 | `result-track:49d19fd912904409d6fc627a5970c08856a2a105d2dbb76fb1a1bf6acbefe1c0` |
| 112 | `theorem` | [normSq_inv](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-inv.md) | 552 | `result-track:013f562410eb8b9e76843b85db2ee8da9cf6ba8db2b99d68ad75c54abde71c2e` |
| 113 | `theorem` | [normSq_div](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-div.md) | 557 | `result-track:12012a25930ba92c61c9cb436893865100645d736ea505770406ca6ee65a814b` |
| 114 | `theorem` | [norm_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-conj.md) | 561 | `result-track:9f1d9baafecb74bd45656948b4ddd0bff474de64f0c448dc2216486de6832476` |
| 115 | `lemma` | [nnnorm_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nnnorm-conj.md) | 563 | `result-track:d8d922cb03533e6d95b5244781231bc8182563ea7386ae18aca0339dc31f69ab` |
| 116 | `lemma` | [enorm_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/enorm-conj.md) | 565 | `result-track:8fd79036656d479a8683b15185a88d1e8724459a4e552b188288cdd1799c61d0` |
| 117 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instance-source-edition-5.md) | 567 | `declaration-track:6514e541e894efd0db4e14a8f500856a91a6244c8c8f03bf059c3e4aa120af17` |
| 118 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instance-source-edition-3.md) | 570 | `declaration-track:222acdafaed878344ec689691cff1375d8033f344dea071684821eb92a1d21e9` |
| 119 | `theorem` | [ofReal_natCast](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-natcast.md) | 577 | `result-track:5f9e4fe97e64ec20a713828e36042d1fc0ac48a5123c676f714e6783cdf369d5` |
| 120 | `theorem` | [natCast_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/natcast-re.md) | 581 | `result-track:29e1a1d5bc86cc3c4fbd126ee153c2d5b3595b3a80437324ab007539cfc1fffa` |
| 121 | `theorem` | [natCast_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/natcast-im.md) | 584 | `result-track:333b4572eabca7a7874d3f7ec1a9c7e28a1abc94963b82b276a65079e9fa6e6b` |
| 122 | `theorem` | [ofNat_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofnat-re.md) | 586 | `result-track:2fbaaeef7844cfff75e295cb841117e291b52f8640b969c63113390acff35ae5` |
| 123 | `theorem` | [ofNat_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofnat-im.md) | 589 | `result-track:e27eedf1eb15b108bf4aa9604fd7af8454c30a4fef8bcf4ddb7919024fe20c54` |
| 124 | `theorem` | [ofReal_ofNat](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-ofnat.md) | 593 | `result-track:cf557eda286fe833d2d5519b6c694d22fa76581688d1a8456a8a011081010a3d` |
| 125 | `theorem` | [ofNat_mul_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofnat-mul-re.md) | 596 | `result-track:d1a1dc14fa607874aa445361463780d0354dad6ee8db12b402790f66a2fd1666` |
| 126 | `theorem` | [ofNat_mul_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofnat-mul-im.md) | 600 | `result-track:8e05a5e27edacd59d8c9510cc380d812a01d031bb07d14c863c5f1ca26c7adab` |
| 127 | `theorem` | [ofReal_intCast](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-intcast.md) | 605 | `result-track:ba32f0af8d2635d5cf81c1a689ee53e9399fa8b234429811c4d719b3b3e5736f` |
| 128 | `theorem` | [intCast_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/intcast-re.md) | 609 | `result-track:0f75137fc0058c328aa17f7c957ac4f40d5d90b1bc470a93eff4e924658f733b` |
| 129 | `theorem` | [intCast_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/intcast-im.md) | 612 | `result-track:61ab58d90652d86a951eea2980717684790fe87fa8aa649d1e998f09d90b7380` |
| 130 | `theorem` | [ofReal_nnratCast](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-nnratcast.md) | 615 | `result-track:367912ff4584939fd996a07ec0c58c6e594f9bf6461de2267fc9e1cd1ae96d26` |
| 131 | `theorem` | [nnratCast_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nnratcast-re.md) | 619 | `result-track:fab4aeb5e73e2f63009abb6e8364d5dfda773f07aca4348b023ee59a9b41fe56` |
| 132 | `theorem` | [nnratCast_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nnratcast-im.md) | 622 | `result-track:a961e7e268fa4fa985709c7114f7dd4c03436f218694197e291d5d1a5c896b5a` |
| 133 | `theorem` | [ofReal_ratCast](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-ratcast.md) | 625 | `result-track:9de8f0554a5936304ef3cb0ebb14e8ce09db996e2aaaca88c1b48106808473b8` |
| 134 | `theorem` | [ratCast_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ratcast-re.md) | 629 | `result-track:ddc54eeef3da52776d9b152a5df453f8aa82b6626221d4fe6f9776c4f2d69880` |
| 135 | `theorem` | [ratCast_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ratcast-im.md) | 632 | `result-track:30f67922a4845e997c639834c8caf4c153ed6afa448b174944001b7cf52cf6c5` |
| 136 | `theorem` | [ofReal_ofScientific](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-ofscientific.md) | 637 | `result-track:643e4a1355b3ee2eefc1b312ea1618dc38703748f11739cfd58c56c89e10dadb` |
| 137 | `theorem` | [ofScientific_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofscientific-re.md) | 641 | `result-track:515b75b157bd36700bd3a33b98c89e5f34a81e07420838cc25a0de4d5bddb5ea` |
| 138 | `theorem` | [ofScientific_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofscientific-im.md) | 645 | `result-track:a6dbea3d08c37f6ec5faa4972c3d75594b15492d7c06a9469ba8a97193223815` |
| 139 | `theorem` | [norm_of_nonneg](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-of-nonneg-source-edition-2.md) | 650 | `result-track:c3463004e57b3feb8fcf9c72a4d0cd2dfb0d16b73bffda38b671042b8aa92676` |
| 140 | `theorem` | [norm_natCast](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-natcast.md) | 654 | `result-track:c8f8ebfdbf1120d9833ffa28c6a605e0b190664c29c510c165b0e758161b509c` |
| 141 | `lemma` | [nnnorm_natCast](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nnnorm-natcast.md) | 658 | `result-track:59eebf9222923d773d46bc311ed7511e7137e170ead7e66575dcf3d3221346ea` |
| 142 | `theorem` | [norm_ofNat](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-ofnat.md) | 661 | `result-track:97dd3862aa817d6fa868d736a473d8b2d5e04f9e2ec24d1527a86ff6a85c8c80` |
| 143 | `lemma` | [nnnorm_ofNat](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nnnorm-ofnat.md) | 665 | `result-track:a1fe8edc6a9cd22cb2ce1379262933c9f1ad99f02ef5b0fe3ead8e0c52d623ff` |
| 144 | `lemma` | [norm_two](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-two.md) | 668 | `result-track:3ad43628b4e4a178d96f0bd5d10826a6b49a6c8c605e237a04e94c84066b1ae9` |
| 145 | `lemma` | [nnnorm_two](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nnnorm-two.md) | 669 | `result-track:3b2eed265fb04da47e9690d9d47062fb6499bb8c67cd02a486e69b80680075c4` |
| 146 | `lemma` | [norm_nnratCast](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-nnratcast.md) | 672 | `result-track:41e43dad68daae8bdd7dc626efbc4390e04f72306f6132caa1124de7153c45e1` |
| 147 | `lemma` | [nnnorm_nnratCast](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nnnorm-nnratcast.md) | 676 | `result-track:d6b3061b32b505f7e15f20be2a43418b2327259fef86ef0192a952de8fcd9160` |
| 148 | `lemma` | [norm_nsmul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-nsmul.md) | 679 | `result-track:45c30ed5123d8e2d8a2f337b8a83c290c3c63be82c515808008c6a4b886b54d8` |
| 149 | `lemma` | [nnnorm_nsmul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nnnorm-nsmul.md) | 683 | `result-track:47b06f016d49576a30b2688289ea2adf271a263449236d69309eb8cdca6aa99a` |
| 150 | `theorem` | [mul_self_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/mul-self-norm.md) | 686 | `result-track:a55163228462f7476ee79dfe4c412c6799984258b36b3d06e3f020cbd8f7a78c` |
| 151 | `theorem` | [abs_re_le_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/abs-re-le-norm.md) | 690 | `result-track:4bd50ab24724bce496af13af0db006512b318207667aa6e5a72741e5d068eb65` |
| 152 | `theorem` | [abs_im_le_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/abs-im-le-norm.md) | 694 | `result-track:3afd02ad17ebc0385324ae93125ad98b540ba8c38f01db3d1d4d623e57504f99` |
| 153 | `theorem` | [norm_re_le_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-re-le-norm.md) | 698 | `result-track:179bae8c192ec94a0c43cc4e44ddb98fcf409e79ed3e593ac9bff4405e6d036f` |
| 154 | `theorem` | [norm_im_le_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-im-le-norm.md) | 701 | `result-track:f986d2b75211f55b67e18c2c078485985b593ffa5581e68b8cdc3306a7d76427` |
| 155 | `theorem` | [re_le_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-le-norm.md) | 704 | `result-track:74fbdeca9e17c2567036e3e285a32656c08d3eda1684e43b54e07007aa928780` |
| 156 | `theorem` | [im_le_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-le-norm.md) | 707 | `result-track:13e0f5e4c35806f0a61bc1b7fcb3287ce20eaccfccc3759f41eec48e8472d32d` |
| 157 | `theorem` | [im_eq_zero_of_le](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-eq-zero-of-le.md) | 710 | `result-track:792f53f01498a01029cf85fa37a0d2b3c5aac0be28e593bb41c99e9fbb92ef6d` |
| 158 | `theorem` | [re_eq_self_of_le](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-eq-self-of-le.md) | 714 | `result-track:0bdc616e1786b0f6eca0fc282dedcf9e609e1bed885dfe118ae5feca55d57c93` |
| 159 | `theorem` | [abs_re_div_norm_le_one](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/abs-re-div-norm-le-one.md) | 717 | `result-track:b411602f829cf9d0a7f94e4618da14d79effd71b37ef65d19d6e63e26c7e3e49` |
| 160 | `theorem` | [abs_im_div_norm_le_one](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/abs-im-div-norm-le-one.md) | 721 | `result-track:8b94927bbf1bf001cf1cc0ee2d6e716a27b88dd2fb88d8908e2e669f7f67c213` |
| 161 | `theorem` | [norm_I_of_ne_zero](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-i-of-ne-zero.md) | 725 | `result-track:d3a353c3a13db2a32dc7d8274526d2b3a1537594f572c63d3dde3140a6a33e14` |
| 162 | `theorem` | [norm_I](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-i.md) | 729 | `result-track:325ebb251918051731709afbc66e433e9bfcfce1ce1e200c06f41524245fef82` |
| 163 | `theorem` | [re_eq_norm_of_mul_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-eq-norm-of-mul-conj.md) | 732 | `result-track:cd9f6d56858722ebf59cd169ddb4b5659dddb1c11407cbb51fe909e53daa2b72` |
| 164 | `theorem` | [norm_sq_re_add_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-sq-re-add-conj.md) | 735 | `result-track:7fffda816687010ef3815302325311a1e9900b40e5ef299d5ee38531d5aa5ebb` |
| 165 | `theorem` | [norm_sq_re_conj_add](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-sq-re-conj-add.md) | 738 | `result-track:4d63e646314e74e0a1b0cbe50d83a209b3c83fec61887bd1aa4ebc61451060bb` |
| 166 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instance-source-edition-6.md) | 741 | `declaration-track:87eecb423ae2738d75226ae3b2765e21e4b8498b89f15b43365767051507ce82` |
| 167 | `theorem` | [isCauSeq_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/iscauseq-re.md) | 747 | `result-track:04376eff73e7bcb8884892a1ad42456b814493be860f5199e436ea97560f7839` |
| 168 | `theorem` | [isCauSeq_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/iscauseq-im.md) | 751 | `result-track:4d0fba30741e9fb7505aabd990b218e926220ccef77ee4a87b881e0d411d68c6` |
| 169 | `def` | [cauSeqRe](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/causeqre.md) | 756 | `declaration-track:901bf06f0476fef51f09a953467fddadd5d85d3784fb36c86da05ba0c4c18bee` |
| 170 | `def` | [cauSeqIm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/causeqim.md) | 760 | `declaration-track:51210d3aeca226f20a5b606615671ecbe30e98a02a8ae56d496ac5a2eb35021e` |
| 171 | `theorem` | [isCauSeq_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/iscauseq-norm.md) | 763 | `result-track:1283f8d0f030149389ea533f308687b55ca238364bfa23a8804e520d5d658405` |
| 172 | `lemma` | [I_mem_skewAdjoint](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/i-mem-skewadjoint.md) | 767 | `result-track:e965bd3812bc7fa609d2956b593e17af60e642af594556011140e4bec088c865` |
| 173 | `lemma` | [IsSelfAdjoint.I_smul_mem_skewAdjoint](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/isselfadjoint-i-smul-mem-skewadjoint.md) | 776 | `result-track:2dae337fdcaa2aa8315bfae3f45cca8d28f432a874fa5e29ea52f766b144321d` |
| 174 | `lemma` | [IsSelfAdjoint.I_smul_of_mem_skewAdjoint](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/isselfadjoint-i-smul-of-mem-skewadjoint.md) | 779 | `result-track:3c0ab25aea813c0b4c3561a928caaf961d02729be7cf03454a4e3e25024dcb96` |
| 175 | `instance` | [Real.instRCLike](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/real-instrclike.md) | 786 | `declaration-track:a72e2e40671f973a9ef8c1e2de25761f9f1970a4af06f2dc4416e21e11242278` |
| 176 | `lemma` | [norm_nnqsmul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-nnqsmul.md) | 815 | `result-track:7ae9da3d7f9cd11b82cdbdae4d155c0daf74dca59b886ccec6e2a78bba29b14b` |
| 177 | `lemma` | [nnnorm_nnqsmul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nnnorm-nnqsmul.md) | 819 | `result-track:e687bc079a8981ed744b02c19c0e4358e642ce96a4a29fd9193f95164dad336b` |
| 178 | `lemma` | [norm_expect_le](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-expect-le.md) | 823 | `result-track:a516a75d0c016dbf7b95b9ff4f6b15fdcc7120bdd7ce575e9dab67c991652075` |
| 179 | `theorem` | [lt_iff_re_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/lt-iff-re-im.md) | 833 | `result-track:56f234aa48b8a2993a1a5d001427930e4ba892e59ab2ec3d500cab36bc94244b` |
| 180 | `theorem` | [nonneg_iff](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nonneg-iff.md) | 841 | `result-track:33636cf62aeecb38490e290f39ed96f7c2993c5fff3781904db20b5fdd1e1361` |
| 181 | `theorem` | [pos_iff](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/pos-iff.md) | 844 | `result-track:eca426047e5b51b292695a50fd14d275553ed5edc4770a3627910f7e8be38bb6` |
| 182 | `theorem` | [nonpos_iff](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nonpos-iff.md) | 847 | `result-track:0967559c64f67058e5eb09f306b8534952ba1751372975b3038aa7dc2493d4aa` |
| 183 | `theorem` | [neg_iff](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/neg-iff.md) | 850 | `result-track:23822eb8582717f475adf36606d2e0cae996f7eb4b17c270f01afee3fe2e0e64` |
| 184 | `lemma` | [nonneg_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nonneg-iff-exists-ofreal.md) | 853 | `result-track:b065e189025cfbbc30b9d3fab24498e0f774993d3c2d427832a36b30941b85cb` |
| 185 | `lemma` | [pos_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/pos-iff-exists-ofreal.md) | 856 | `result-track:34217783508e366f4d8a69a676469f6e76e6d24d4f5f4cce3a25496bf556adfb` |
| 186 | `lemma` | [nonpos_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/nonpos-iff-exists-ofreal.md) | 859 | `result-track:653ed311a709e5f2bef09a9484e19a9f09bd2988eb1cb7554a4133061564f9e5` |
| 187 | `lemma` | [neg_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/neg-iff-exists-ofreal.md) | 862 | `result-track:58581f7ecc9ccd4d195d687918e40d95dfba211df05f6fc3a919b77621b4eafb` |
| 188 | `lemma` | [ofReal_le_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-le-ofreal.md) | 866 | `result-track:bfa7a9783faf6a5bfe6ac2aad91d1613456137f1a14710c5b16d841db9f7f1d4` |
| 189 | `lemma` | [ofReal_lt_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-lt-ofreal.md) | 871 | `result-track:3bf3d35521df1b96a1e5edf0699eeeb6ffaa0b3052ed3eb061639189321f990e` |
| 190 | `lemma` | [ofReal_nonneg](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-nonneg.md) | 876 | `result-track:fc35322b6a92f85065cac94fb70fa53a4651750f1d46c2ed709604630b4ca66c` |
| 191 | `lemma` | [ofReal_nonpos](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-nonpos.md) | 880 | `result-track:2c3be8c9a5f5f24901302fbeccc02e6b399cd1249f814add4f9e8af9978e518b` |
| 192 | `lemma` | [ofReal_pos](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-pos.md) | 884 | `result-track:5d018000d7221f4ac53ae570a9dafb9f8858a2283caf3f37c59ec1dd521b9b1f` |
| 193 | `lemma` | [ofReal_lt_zero](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-lt-zero.md) | 888 | `result-track:0889bbb57f0893fcaad9f8bde954c6319c7f6ff6417624db737044ee67577de4` |
| 194 | `lemma` | [norm_le_re_iff_eq_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-le-re-iff-eq-norm.md) | 891 | `result-track:6d42df7a0867a7db8a64bf5bf7f6be6271172d5eaf521dfc3e81f656d66be43c` |
| 195 | `lemma` | [re_le_neg_norm_iff_eq_neg_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-le-neg-norm-iff-eq-neg-norm.md) | 899 | `result-track:9f68c9a225309bdd52fe62b31caf8d2884d8371163629fce172d88d450c306a7` |
| 196 | `lemma` | [norm_of_nonneg'](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-of-nonneg.md) | 903 | `result-track:6e00240e844f469731501b79251426c1feddfd71f8c3ffca35c1c6f80e5c5e2a` |
| 197 | `lemma` | [re_nonneg_of_nonneg](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-nonneg-of-nonneg.md) | 907 | `result-track:d86836f27a61afbbe050190d1a722e74e95a819906cd673dcc807b9093d5fc0b` |
| 198 | `lemma` | [re_le_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-le-re.md) | 911 | `result-track:3d3240ee5930647c02f34f6abc5570c9cba29dca0e1d90fb901bf0e75beabc92` |
| 199 | `lemma` | [re_monotone](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-monotone.md) | 915 | `result-track:b7d8245beba4d01284bac7264f3e3b7850d24aaabda98c508d5dfe8257669006` |
| 200 | `lemma` | [inv_pos_of_pos](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/inv-pos-of-pos.md) | 918 | `result-track:b48129e6dd17d238d803d05810f1c1bc5eff70d90109d23a89065613e73d3856` |
| 201 | `lemma` | [inv_pos](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/inv-pos.md) | 924 | `result-track:45879490914a5dd889130f8f17dabc394251fee9acaec1d57eaf135451add0bb` |
| 202 | `lemma` | [toStarOrderedRing](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/tostarorderedring.md) | 933 | `result-track:9aece2aa92364abdc047cb7c710532d81c0e14012fddc507c5555bb038612b29` |
| 203 | `lemma` | [toZeroLEOneClass](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/tozeroleoneclass.md) | 946 | `result-track:64cca81be18c47c7af4f552d9361945847ecf2d1b760d374bab45722202a6e8e` |
| 204 | `lemma` | [toIsOrderedAddMonoid](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/toisorderedaddmonoid.md) | 951 | `result-track:d004a9c8e1f06fc3155fc0257513524d1df6672c179d673e675c07eab5d850d3` |
| 205 | `lemma` | [toIsStrictOrderedRing](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/toisstrictorderedring.md) | 959 | `result-track:2c563be11b8b7c3fe022534b28c1b788f4cd9a35160555a5d33c693ef4682a68` |
| 206 | `lemma` | [toPosMulReflectLT](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/toposmulreflectlt.md) | 966 | `result-track:7658722e7c5acd4bf5672705fc7ef6f52adfbd17e1f4d34692a2ce1486f695c4` |
| 207 | `theorem` | [toIsStrictOrderedModule](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/toisstrictorderedmodule.md) | 980 | `result-track:68ec90b501f010625d5d091542cb4b3df2354419f1785294fecf8fed1ec2e1d3` |
| 208 | `theorem` | [ofReal_mul_pos_iff](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-mul-pos-iff.md) | 989 | `result-track:1fbb71f8e0b2f23d3dbee7ce03e78f1649574b60309e6efd6205834e60d0c270` |
| 209 | `theorem` | [ofReal_mul_neg_iff](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-mul-neg-iff.md) | 999 | `result-track:79c37d4210d77fe0c9ee8072bc0793ed3c41f9061bde22d6ad5eeaf068fece54` |
| 210 | `lemma` | [instPosMulReflectLE](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instposmulreflectle.md) | 1003 | `result-track:725a6def4f2d6cf061ed58a7dd1206cc1f7359c5cd25e7f4e2e96802fba07003` |
| 211 | `lemma` | [instMulPosReflectLE](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instmulposreflectle.md) | 1017 | `result-track:e78658d582e277bced3d10447ab54d46e8f1a8637ce2ee0ae64d7453278eea94` |
| 212 | `theorem` | [re_to_real](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/re-to-real.md) | 1031 | `result-track:65a181822a1b180cd3915b695bd37f9d98d27f07392d914ae7f47d7b3656ed63` |
| 213 | `theorem` | [im_to_real](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-to-real.md) | 1035 | `result-track:15ecfd7db8b3fc5a9b7de370654cd90df8417d0e5663010c8e1d850528dffd35` |
| 214 | `theorem` | [conj_to_real](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conj-to-real.md) | 1039 | `result-track:281e17bd45d8877a940d02ce4590791bc887c71d8e2a3baa6175ce8a9ef58f39` |
| 215 | `theorem` | [I_to_real](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/i-to-real.md) | 1043 | `result-track:5562051dcfda1c787b86dfa9a7ab71e12d2cf404af92d5c152e0c2d2400fd61d` |
| 216 | `theorem` | [normSq_to_real](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/normsq-to-real.md) | 1047 | `result-track:4fb7497434630e7e08b8b475e704465d56646bfaa7994c2ecb1d187dcec87529` |
| 217 | `theorem` | [ofReal_real_eq_id](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofreal-real-eq-id.md) | 1050 | `result-track:75be52c47a0c3a9b615297a6603cee3ff2e124db272a892c44e3e7051024308c` |
| 218 | `def` | [reLm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/relm.md) | 1058 | `declaration-track:1854f25ad1d88c74af9d69ebd0b78510b146f24a05550b931a93aa724f42dd14` |
| 219 | `theorem` | [reLm_coe](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/relm-coe.md) | 1062 | `result-track:29cd1f83810aecbc18ba4f8849966030870d55eb2cbec84ff280de5a2e65f031` |
| 220 | `def` | [reCLM](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/reclm.md) | 1066 | `declaration-track:aa09f17c195a826c91895e86b353b6d2ae3deb2c1fd44e7a0331d7fd387a9d0c` |
| 221 | `theorem` | [reCLM_coe](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/reclm-coe.md) | 1072 | `result-track:837bcffd67e1c031c02a14705c915e9a40f367a85ac6fadac7d71d68e0a00d61` |
| 222 | `theorem` | [reCLM_apply](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/reclm-apply.md) | 1076 | `result-track:54ed7882664d3d08522571332c9eeeb5eb31e6643aca056a09d55bc5051a951e` |
| 223 | `theorem` | [continuous_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/continuous-re.md) | 1080 | `result-track:4159e33a52545d4e9c08e34bcd3012a4c9a26601708b7c53fce04dc0455c9ff4` |
| 224 | `def` | [imLm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/imlm.md) | 1084 | `declaration-track:bbc32c2940616281e9a68659c0b24957d9d837226c2a3c093c4b45389869c6d3` |
| 225 | `theorem` | [imLm_coe](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/imlm-coe.md) | 1088 | `result-track:d5ff32fa8ecfd51f2304b15613f95c240042a65d89ce6308bf45e19308fc2440` |
| 226 | `def` | [imCLM](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/imclm.md) | 1092 | `declaration-track:0593d9a0c1efcd02f3e1de043e4d2bf8fb1a7b3c29956e98174a5dc5311de49a` |
| 227 | `theorem` | [imCLM_coe](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/imclm-coe.md) | 1098 | `result-track:5c49c9f43d42238c8a7582fa4b69ed577c59f4fd3ee4866407fcffd8cda8e52c` |
| 228 | `theorem` | [imCLM_apply](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/imclm-apply.md) | 1102 | `result-track:31d6639d5aae545939ca1b2f29533b57fecb66790dc48fde33bc91e5ed8fe90f` |
| 229 | `theorem` | [continuous_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/continuous-im.md) | 1106 | `result-track:14d830a429159cbf879c81c3ea8ac4b5d86d78b5f86d4d52b81f79cdc35e39b4` |
| 230 | `def` | [conjAe](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conjae.md) | 1110 | `declaration-track:d5af1b80cdc4978b2022b37ca1b684ec828ea1fff9b6bda431d1865950dd509b` |
| 231 | `theorem` | [conjAe_coe](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conjae-coe.md) | 1118 | `result-track:c67d713854118fe188a479ebeea06846a6c7576526cc72f121cdfe119d62cbb7` |
| 232 | `def` | [conjLIE](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conjlie.md) | 1122 | `declaration-track:699854653ed8bdce03623a40ed80c21390aee1539b8787db23a37ff8c6f0606a` |
| 233 | `theorem` | [conjLIE_apply](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conjlie-apply.md) | 1126 | `result-track:af48344f6e452fecb7e3cb6cbeafd6a97f5b30fe8b27ca5a764645e698c28b30` |
| 234 | `def` | [conjCLE](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conjcle.md) | 1130 | `declaration-track:bb60afce1976546b9baf3159f3b81cf39b5bb8c9097f3b3196a540c1a573dc69` |
| 235 | `theorem` | [conjCLE_coe](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conjcle-coe.md) | 1134 | `result-track:651ecb0bc510c2470c0bbc86e8c221841fff4316f58308fefddcfdc5f416a7be` |
| 236 | `theorem` | [conjCLE_apply](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/conjcle-apply.md) | 1138 | `result-track:06bdda9fa54dd4dd37985baa963f6e88b20ee7c7c37b3d188931b33195bd62c8` |
| 237 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instance.md) | 1141 | `declaration-track:0838e24577ce5f0b7fa31f2b1ca4173c1b24efe6ee86ebda9935ce3e7461e558` |
| 238 | `theorem` | [continuous_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/continuous-conj.md) | 1145 | `result-track:2f48ce37dd83ade058cbeaba42ffea740e19129df006734b8d98e1d728ad4139` |
| 239 | `def` | [ofRealAm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofrealam.md) | 1149 | `declaration-track:e4fedb2e5fb1d4d047a85682cabbf5d3240171463d9502c4d0fa97bd40350314` |
| 240 | `theorem` | [ofRealAm_coe](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofrealam-coe.md) | 1153 | `result-track:f03d756151f859ed8fbf6a1744b543adb453a73497244a8e7d08aa567772fdbc` |
| 241 | `def` | [ofRealStarAlgHom](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofrealstaralghom.md) | 1158 | `declaration-track:03fbdfae3c77e03d0de21d243c1f2a016335cc799bbcc4ee2acfd072d8051dec` |
| 242 | `theorem` | [coe_ofRealStarAlgHom](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/coe-ofrealstaralghom.md) | 1160 | `result-track:99d195ab66cc234274030ce99806d3157482db8522178b16add3401fe6fec17a` |
| 243 | `lemma` | [toAlgHom_ofRealStarAlgHom](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/toalghom-ofrealstaralghom.md) | 1161 | `result-track:396fee87a7498893be05366f44bb31b8708e5b0c0ca78704028b9291d07758da` |
| 244 | `def` | [ofRealLI](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofrealli.md) | 1164 | `declaration-track:9ebd2aca335372e22e731d8f1e39eaacbec0377785ad668cae5e72671b02171b` |
| 245 | `theorem` | [ofRealLI_apply](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofrealli-apply.md) | 1169 | `result-track:50e556016af4732beef47de5573512c6bfb44406836ac05529a966bbfe5a0c1b` |
| 246 | `def` | [ofRealCLM](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofrealclm.md) | 1173 | `declaration-track:9d27e067e93694b190a863e9d011daf9344f1d2de2138e0eacdae89533387052` |
| 247 | `theorem` | [ofRealCLM_coe](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofrealclm-coe.md) | 1177 | `result-track:a6984490a54775e5dd4237e8f0cfb13dda5457306b94efc23ba9974bad1a9198` |
| 248 | `theorem` | [ofRealCLM_apply](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/ofrealclm-apply.md) | 1181 | `result-track:aeba4548702a9c1799177c5f511874088360ed58142eaf961a05ccea0c0ccbb6` |
| 249 | `theorem` | [continuous_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/continuous-ofreal.md) | 1185 | `result-track:82eb622319fc4486d2c3b0290925a106ca7efb2514cf18734425a1972480f8fa` |
| 250 | `theorem` | [continuous_normSq](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/continuous-normsq.md) | 1189 | `result-track:cef9e6e72363df19e5b4a568b9ccf4ffb817f30d6c3c3db573d2f23452a7fa11` |
| 251 | `theorem` | [lipschitzWith_ofReal](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/lipschitzwith-ofreal.md) | 1192 | `result-track:9fc8023e4724a534cea440b910768f9a164f3dd12f80a077a19004b1b5bd575c` |
| 252 | `lemma` | [lipschitzWith_re](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/lipschitzwith-re.md) | 1195 | `result-track:4e7666149873cb2a292020e77d355e7954d2c60f5e481f571ef9464bdcf73e58` |
| 253 | `lemma` | [lipschitzWith_im](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/lipschitzwith-im.md) | 1202 | `result-track:d335c5c027eceb6308a804369fe1bd98a137c257c4dadb802890b500796a70f5` |
| 254 | `def` | [map](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/map.md) | 1210 | `declaration-track:e562f5d9bb979cbcb33ea2d0f326f1c7674abf56a259b22f6df6f139730f9134` |
| 255 | `theorem` | [map_same_eq_id](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/map-same-eq-id.md) | 1215 | `result-track:c75ccf32ee585e83e7751d9e1185b1d4bdf20ce0e87d6d5d6575a0810390e72e` |
| 256 | `theorem` | [map_to_real](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/map-to-real.md) | 1217 | `result-track:347487c22bf1f154ecea492e14063a637a4ad0e14a4ec96fec1a014bbd2cf3d0` |
| 257 | `theorem` | [map_from_real](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/map-from-real.md) | 1220 | `result-track:b7a24ae0045dc35283174769cfb2e78013f9ed6c99d8064f14a0c633d35c0f3e` |
| 258 | `lemma` | [instOrderClosedTopology](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instorderclosedtopology.md) | 1223 | `result-track:39c46b4ffd38e84171a6f15bb1680856fa2523db6bf4ec681a4266b4c4b938a0` |
| 259 | `lemma` | [im_eq_zero](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-eq-zero.md) | 1240 | `result-track:e399dd4ed32652abb1872fb31b783a38f39573dc8616f875fb15e0961f4c5b11` |
| 260 | `def` | [realRingEquiv](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/realringequiv.md) | 1246 | `declaration-track:f7eb7baa349c054ded375d35b52c851ce29554f8c68af49a85d4e36036df8438` |
| 261 | `def` | [realLinearIsometryEquiv](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/reallinearisometryequiv.md) | 1257 | `declaration-track:b29c1b35b7018327a2e8461923ea648caa11fc751e91ad4761a22d69fdd0b2da` |
| 262 | `lemma` | [norm_le_im_iff_eq_I_mul_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/norm-le-im-iff-eq-i-mul-norm.md) | 1264 | `result-track:4475ac0afc64b6a36921b685ae1c5a1c3fe0e4373e94f3567a83298d33d78b86` |
| 263 | `lemma` | [im_le_neg_norm_iff_eq_neg_I_mul_norm](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/im-le-neg-norm-iff-eq-neg-i-mul-norm.md) | 1273 | `result-track:60d069cc8bfbadad788d9416a2a7569ea6131443912693783235c85d2b5fb7df` |
| 264 | `lemma` | [inv_apply_eq_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/inv-apply-eq-conj.md) | 1282 | `result-track:b2d9232f7fcf3f94099daf853fcb16eb047e67d2551eeccb2b3ea30c98fe05e5` |
| 265 | `lemma` | [map_neg_eq_conj](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/map-neg-eq-conj.md) | 1285 | `result-track:f37fd70c997abf5b094fa3fdd459194ef36262071cec4a145b32f2836ee8e5dd` |
| 266 | `class` | [IsRCLikeNormedField](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/isrclikenormedfield.md) | 1295 | `declaration-track:c666736c97ba869562bbf3dbaaac0515a08ba63517a99c5c92144f7d29ee53fe` |
| 267 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instance-source-edition-7.md) | 1298 | `declaration-track:8d1e45f67e015f778918baac7c3684f965d49145b4702ad1d18d54b6605450f5` |
| 268 | `def` | [RCLike.copy_of_normedField](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/rclike-copy-of-normedfield.md) | 1303 | `declaration-track:eff54dcbd6a1c24732690d8f434e394380bc82a3b7752cf8cd4477960a8ec879` |
| 269 | `def` | [IsRCLikeNormedField.rclike](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/isrclikenormedfield-rclike.md) | 1347 | `declaration-track:a00e064ae873fc990181c294f39dc5a3cd5711b64ede2f07b8256ab760eecc19` |
| 270 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/instance-source-edition-2.md) | 1360 | `declaration-track:0d27f8b95c5d55c5ba009951468d8171f884b2de2db29f74920b4b086d6719c3` |
| 271 | `theorem` | [smul_apply](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/smul-apply.md) | 1364 | `result-track:106fd668add7781efd355a23248058835d96b148bfd728257a72dd9040ce9115` |
| 272 | `theorem` | [symm_smul_apply](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/symm-smul-apply.md) | 1367 | `result-track:b988e6f70a7f74fbc0eee3cd6a9fcd7996ba0c8a14b0eaf64287c2bc13cf75ba` |
| 273 | `theorem` | [symm_units_smul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/symm-units-smul.md) | 1370 | `result-track:cc3deb88358a0224ad96c175dba781de3a28afd03f9515fef3123187dc655822` |
| 274 | `theorem` | [toLinearEquiv_smul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/tolinearequiv-smul.md) | 1373 | `result-track:1d68cba8c42a26248fda2d8d90c4f43878ef29b949d7ed3e08abb5de7816bff4` |
| 275 | `theorem` | [toContinuousLinearEquiv_smul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/tocontinuouslinearequiv-smul.md) | 1376 | `result-track:44cc78e3cfdcea1752aeb96833c23222ed68c5680bce0d19371a5983c30144d8` |
| 276 | `theorem` | [smul_trans](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/smul-trans.md) | 1379 | `result-track:c3bd09529bc170c7e7781a423f9d8b7dedc8655d4fada83dc9ba4378693474fb` |
| 277 | `theorem` | [trans_smul](../../../../FunctionalAnalysis/RCLikeBasicPublic.lean/declarations/trans-smul.md) | 1382 | `result-track:4c22e206cf83aa75bf03f76eeff81a6d92dee1d3c5fbd7eef1329ef96a2a56ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3972a005130147d1a279e2f7311cc52732ecd55447001ee435e9d0a3840d9c65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

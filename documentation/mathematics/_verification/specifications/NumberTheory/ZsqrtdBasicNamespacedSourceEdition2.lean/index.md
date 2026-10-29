# Verification target: Zsqrtd Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0a5bdb580d82bb290f3cfc0d4850611845c94cc",
  "lexical_observation_count": 154,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0a5bdb580d82bb290f3cfc0d4850611845c94cc`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Unitary` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Zsqrtd](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/zsqrtd.md) | 37 | `declaration-track:3017270c4755c6eb24fe4bcb40e98c855ea0c119d08a55531223868fd6cd2d75` |
| 2 | `theorem` | [ext](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/ext.md) | 51 | `result-track:f9303e31eaa2d79879322e7706c9412d7846c7e30fd330814d11fb9eb453cfae` |
| 3 | `def` | [ofInt](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/ofint.md) | 58 | `declaration-track:199155b11ab4322a8e0baf8c0209e02af67b048d7918e52658d1baf498e6b2c7` |
| 4 | `theorem` | [ofInt_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/ofint-re.md) | 62 | `result-track:d80e23d9671efb8f414e712d5ce594a287e9baac01c58a6e9584352f3dbd1d5f` |
| 5 | `theorem` | [ofInt_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/ofint-im.md) | 66 | `result-track:dbca70326fc741ccd5e901614a37aa799d779dbe9bfd13aa3f0accb931153bf7` |
| 6 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-11.md) | 71 | `declaration-track:4d1b45a5fd1056e11d5c7a0e3c66a49440bae5440e4a781caf080b3e6ddc4d28` |
| 7 | `theorem` | [zero_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/zero-re.md) | 75 | `result-track:17636c71aa3dc89a6cf147f6f9005b524ee5bbc3dc3d58c13c02bb2e1c363d74` |
| 8 | `theorem` | [zero_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/zero-im.md) | 80 | `result-track:073d06cf1ebb82ad6a0be37ace37c892403fb8eaf7bd9a961815a9025f9314a9` |
| 9 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-25.md) | 84 | `declaration-track:f59459556f141c823905bf36206ce4a99717c44588c62ceb2ab0d6342b3a9bae` |
| 10 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-24.md) | 88 | `declaration-track:e4016c24008ce98fcf4317d725023cb4ad3c26629821b4691e4c8e4b8bed3cae` |
| 11 | `theorem` | [one_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/one-re.md) | 92 | `result-track:e7b3d08dda903cf9966c5ff771dfb2fb5d3638c20c69a749d2bf7fac8f3d19a4` |
| 12 | `theorem` | [one_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/one-im.md) | 97 | `result-track:be09cbd40479a54953c64d883abe76bf94bc194283b2b3751795d825d3d69a2f` |
| 13 | `def` | [sqrtd](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/sqrtd.md) | 102 | `declaration-track:416b2e2a2f284d68a021f2c335a6bfd1644c2c27be08424b7a4325a9112daab2` |
| 14 | `theorem` | [sqrtd_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/sqrtd-re.md) | 107 | `result-track:66a939505c6c358b5b2c358ae9924813ad0f2a700c47c02648eb9a698dc088b2` |
| 15 | `theorem` | [sqrtd_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/sqrtd-im.md) | 112 | `result-track:715394beffd45a43c12fc31360882af8c3f6d4492f8d1760d76138a2bc7229ea` |
| 16 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance.md) | 117 | `declaration-track:14ee7d59cf25ee9e4693ac7fc234b392843021847dab3f6ab824a310f7be9074` |
| 17 | `theorem` | [add_def](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/add-def.md) | 121 | `result-track:b614bbef48ed33b5d2d49f646930c71c903e6471924bb36d83d928e6001ce552` |
| 18 | `theorem` | [add_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/add-re.md) | 126 | `result-track:b77da9e8165befd793282f7d661dba5d0e935acf94b41603e05041f196b64316` |
| 19 | `theorem` | [add_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/add-im.md) | 131 | `result-track:89d8cf9b72162674fd227294426a671d88e94c2d25424e130f1135861c83568b` |
| 20 | `theorem` | [bit0_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/bit0-re.md) | 139 | `result-track:059c7d86be88836edc553d04e48b888aeb7ccdc189abfb50e3eabd8518125aac` |
| 21 | `theorem` | [bit0_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/bit0-im.md) | 144 | `result-track:67189c99e6d2ea53bc84f325cfd08596b1dd861742767f7bc6266f37b2e88d5e` |
| 22 | `theorem` | [bit1_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/bit1-re.md) | 149 | `result-track:638f598680de2ae9c2de34815fcdbb615f4bbe53371b184dc9d43f6433fde1ce` |
| 23 | `theorem` | [bit1_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/bit1-im.md) | 154 | `result-track:7031b8efe26a1f268f83082999d87f01886e68f95bf5ab28c9482a30d645c98f` |
| 24 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-18.md) | 160 | `declaration-track:8ae0ca3c16025d6f73ad2b3ca10bdf696068f49ea53b34b08560c2a9ae6f3a6c` |
| 25 | `theorem` | [neg_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/neg-re.md) | 164 | `result-track:b492d99d3a121e2ff8461c6969384f0cbe1505a31056f0852c1e842fd4c85090` |
| 26 | `theorem` | [neg_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/neg-im.md) | 169 | `result-track:b7ab67877f5b1f1203c7370e91b6cb92c17c4cb8fdc4e03580bb62bbd7aa9cb3` |
| 27 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-19.md) | 174 | `declaration-track:9a7792af30a0e01ea2717cbf5de7a17438bfa9b4f37af94de9ce90fa2bdddb35` |
| 28 | `theorem` | [mul_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/mul-re.md) | 178 | `result-track:b5084d1e7b8916d85195015b81b0b150b071cd56c5affd35c3f63c2da42da09c` |
| 29 | `theorem` | [mul_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/mul-im.md) | 183 | `result-track:d5143967564ebd2bb2e1c73a8e094f3b9a5a632e882a1cf90972ad61df567f8e` |
| 30 | `instance` | [addCommGroup](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/addcommgroup.md) | 187 | `declaration-track:25b32d27e8d69c4328e53a1488d17ce73226bef940adf6f5e76ce75b15d4ff47` |
| 31 | `instance` | [addGroupWithOne](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/addgroupwithone.md) | 203 | `declaration-track:b62f5ab3cf18c1f61751be45e4fed4865d4baad0aab54afa1c5a724f82623b0c` |
| 32 | `instance` | [commRing](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/commring.md) | 209 | `declaration-track:856ccc2507890917912baa39a941873a92b4fff1bab20c2c577465fd1d5ed5a4` |
| 33 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 231 | `declaration-track:2f09a103e9b467f71971f003e2d169e4008344dea6c9a4c0b928b8f49f976367` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-16.md) | 233 | `declaration-track:7bc5eaec592a2fcc4e21f582f1729f163067ae363dbe643d24a266d716c8a270` |
| 35 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-10.md) | 235 | `declaration-track:4d1214a834430e7c1077c35248d05303eefa72fbc4afa651343812e8cf7a0fb9` |
| 36 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-20.md) | 237 | `declaration-track:a240223370c4fb6b7ed9e579adb3787d463be59d6f25b8eaccde5adeaef570be` |
| 37 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 239 | `declaration-track:39efb0d9d25995540840840c203242cf56004aafdbb93ebe5b99a39e16242c00` |
| 38 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-15.md) | 241 | `declaration-track:77dff4d2fc29178e40d2b660954d8b3611800022a31beff9313897bb0e12c4e9` |
| 39 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-9.md) | 243 | `declaration-track:4799b564181eb08eff63a08a4831c9147c1126ac16de7d7aa9e76a114aca78b9` |
| 40 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-7.md) | 245 | `declaration-track:403307d3fd8b232d7233c0e7856a35d71b57133ec9f887ccc1b37d7205b5687f` |
| 41 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-23.md) | 247 | `declaration-track:c7a3c79860db4f44cf3d701313232affb8915da79adc2e7acbbe2b97b3563c43` |
| 42 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-6.md) | 249 | `declaration-track:3b7b3cf665d8fb10636079f2bcbfbeb2df06e5474ec55c1eac18d7bcb4b58d2c` |
| 43 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-13.md) | 251 | `declaration-track:62121f02bf5006183ef1537991d58a40e84eeb776e5d35333ecb67ff2ab81a3c` |
| 44 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-27.md) | 254 | `declaration-track:ff3747fa38d23913efd052fec410782c1bfe8de4f664db606b44747a47a9226b` |
| 45 | `theorem` | [star_mk](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/star-mk.md) | 258 | `result-track:14b86255444184261d132852a1e571cc6ca08c55ffc54cbd555f03e5fae573c8` |
| 46 | `theorem` | [star_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/star-re.md) | 263 | `result-track:fbf881882328cdd2daffa8fc1afe220b5d05bb8ae4d4c5d8a6c53380361fe420` |
| 47 | `theorem` | [star_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/star-im.md) | 268 | `result-track:170cc254b27250551b0494540fe66384cd968c7089d1c068498c470c8ddf98b3` |
| 48 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-21.md) | 272 | `declaration-track:a358c22476f9f2728dcaef321e23d6d6c6bf04e1ace0b19aa1b08b92fba2238a` |
| 49 | `instance` | [nontrivial](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nontrivial.md) | 278 | `declaration-track:ec6949ac355a10845e2734f8434371b367dd2f386dcf55d367c1d25cc74ca3ba` |
| 50 | `theorem` | [coe_nat_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-nat-re.md) | 282 | `result-track:8f8db728c1f2806621dd4f5406cb7fda7e53464f9a62ca076cc800ddb60ef6e0` |
| 51 | `theorem` | [ofNat_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/ofnat-re.md) | 287 | `result-track:85b7af8cae36532725181d707727afd84cea37cca3018a00e4f191625cf376ad` |
| 52 | `theorem` | [coe_nat_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-nat-im.md) | 291 | `result-track:462f42d75856e913607e0a56142a193dd8baa208b8d2dd913b699ec4482b3882` |
| 53 | `theorem` | [ofNat_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/ofnat-im.md) | 296 | `result-track:f6dcd93aa4bcb4b1c303324b69cf3e17a71de609b9c9fd4b31ce6c699c68790f` |
| 54 | `theorem` | [coe_nat_val](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-nat-val.md) | 299 | `result-track:85565caa7f3ab08b852f7fdc549d65d6266b8053542e05ab25295a421b9a0963` |
| 55 | `theorem` | [coe_int_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-int-re.md) | 304 | `result-track:08577c89db8d13b6fa90373438e30175611da2fe869aaed82fd75a410b12a6b2` |
| 56 | `theorem` | [coe_int_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-int-im.md) | 308 | `result-track:9d45cc916652367ee2ab47e229d89db8e0e1674d0b17faad071020bc2db7d157` |
| 57 | `theorem` | [coe_int_val](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-int-val.md) | 311 | `result-track:56f35bf97dd02de22cc9022368ae2057c2a49493ddcb9c49170978a08169e6c8` |
| 58 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 314 | `declaration-track:2c2ccab4b6b73d8c384767a2c514c606c511db8b601e97d852accb9060fbf804` |
| 59 | `theorem` | [ofInt_eq_coe](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/ofint-eq-coe.md) | 317 | `result-track:2d2433e1dff58dd4c7558e03be4356f9e02fa7cbaf9330e76f0e0cdb7f68c257` |
| 60 | `theorem` | [smul_val](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/smul-val.md) | 321 | `result-track:073fdd82428b6b8710eed6925de8656b010c83ab13ab2259e5c1d501b344cb29` |
| 61 | `theorem` | [smul_re](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/smul-re.md) | 324 | `result-track:4c1c98a239fb01fb22b42fee4738fdf83d9b7226a180ede52b0a97853462f818` |
| 62 | `theorem` | [smul_im](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/smul-im.md) | 327 | `result-track:b6b72a55c4197138abb4bb9e9dc50c96b3aa6aefb28f574e45bc57c88647795d` |
| 63 | `theorem` | [muld_val](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/muld-val.md) | 331 | `result-track:1151e76dbdfbf4c581515548ed8cb0637f6158e9fe9bc729dbf6429bdada4496` |
| 64 | `theorem` | [dmuld](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/dmuld.md) | 335 | `result-track:ead3015ef7d9926a3c143f5e24a88ce630c184c8be07b48b377c7e2e6535161d` |
| 65 | `theorem` | [smuld_val](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/smuld-val.md) | 339 | `result-track:9e91b85fa2874dea687db04d4446cb13b527b3543d1d0836233949367274dff0` |
| 66 | `theorem` | [decompose](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/decompose.md) | 342 | `result-track:bfebc1e77af66f4c8e72a6ba17f4353a42d0adbcd590758914807e4a249f2b5c` |
| 67 | `theorem` | [mul_star](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/mul-star.md) | 345 | `result-track:66582180a0364a1b2f797414e0e5d92020585646c7dde8ec2d0bd6171a408504` |
| 68 | `theorem` | [coe_int_add](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-int-add.md) | 349 | `result-track:6a59dd177b600a655bb5995047643d5d609e5242e71ef4334e6e7784b8a7b214` |
| 69 | `theorem` | [coe_int_sub](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-int-sub.md) | 353 | `result-track:eda31be3280e8d5e7bd8e1c149c94c6bceb1477a5e091ea670c4746976ce42ea` |
| 70 | `theorem` | [coe_int_mul](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-int-mul.md) | 357 | `result-track:2eb5a178e346d23fc2aecdddbd85bb56bb07fc5f87ca871f433c20f74c887b07` |
| 71 | `theorem` | [coe_int_inj](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-int-inj.md) | 361 | `result-track:620a7c25e2df00227e60e92ecc09119db62d39f7d47e65f3e484d4e7e6bfc985` |
| 72 | `theorem` | [coe_int_dvd_iff](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-int-dvd-iff.md) | 365 | `result-track:a7d0176da8dd362207279d4ded3ff7d2b5df788065def0402301e44ffefc013c` |
| 73 | `theorem` | [coe_int_dvd_coe_int](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coe-int-dvd-coe-int.md) | 377 | `result-track:ed5153e446ce8f1b99b2864999be6434bb9a6a4b8b8ced7391601c23eca35277` |
| 74 | `theorem` | [eq_of_smul_eq_smul_left](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/eq-of-smul-eq-smul-left.md) | 386 | `result-track:629b638ab8365d42db0cb77313aed2e003391c311ac407315b503c6a79f2061f` |
| 75 | `theorem` | [gcd_eq_zero_iff](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/gcd-eq-zero-iff.md) | 394 | `result-track:136304a090b4a25354f88a384ae9608c28bcd71b22823447d054e2a1bf29eee8` |
| 76 | `theorem` | [gcd_pos_iff](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/gcd-pos-iff.md) | 398 | `result-track:b9d96bb31375009ec78ff85e72c8d901b79b8b479efcdb81f4385fdb1336cc92` |
| 77 | `theorem` | [coprime_of_dvd_coprime](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/coprime-of-dvd-coprime.md) | 402 | `result-track:a59b9eb50dd9fb8407b8998dbd25d41e06db0dd1af68de6acf493fa1919c0d45` |
| 78 | `theorem` | [exists_coprime_of_gcd_pos](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/exists-coprime-of-gcd-pos.md) | 420 | `result-track:0de88c17cca8b355e859f517fdd0eb30910c765f113aeb50573e1ebd2bbfba9f` |
| 79 | `def` | [SqLe](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/sqle.md) | 433 | `declaration-track:78eafba017ef6220b18f3dc55ebbb7fada0e33f62826102e6cb1f9cec2cce374` |
| 80 | `theorem` | [sqLe_of_le](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/sqle-of-le.md) | 437 | `result-track:5315bae0d3de0072348eed944b66beb8d45e1143dbf23a7fcdb6182e0d126cb0` |
| 81 | `theorem` | [sqLe_add_mixed](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/sqle-add-mixed.md) | 442 | `result-track:2a8c791167f584e9ec65f0bb01cf6659da7b0ad3049585e5433a686c07a05b99` |
| 82 | `theorem` | [sqLe_add](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/sqle-add.md) | 448 | `result-track:7d06433e0d50f26e30748bfb2830a843739501028abcbe1275fbe2fa6936f1f0` |
| 83 | `theorem` | [sqLe_cancel](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/sqle-cancel.md) | 455 | `result-track:aa9f5048fb3fc14cf92c1749cf408f9869b175c268dac4a1e84139184dc45a5a` |
| 84 | `theorem` | [sqLe_smul](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/sqle-smul.md) | 468 | `result-track:5dd5f07aec20d7b34e96ca22ac169f4ee44464dce0a57d1a2c03ce407f3060b1` |
| 85 | `theorem` | [sqLe_mul](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/sqle-mul.md) | 472 | `result-track:a29b2b91cb04036bf20d2c9285018ff7d822c062aefe40ec4d75fe4de0e79c29` |
| 86 | `def` | [Nonnegg](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonnegg.md) | 491 | `declaration-track:971a84888f2db26ae4b103f9bb908645158edc451bfb1512222dc8e7826d6b06` |
| 87 | `theorem` | [nonnegg_comm](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonnegg-comm.md) | 498 | `result-track:87b76559545bf3951c8381af5ffd60a7f350080fb6b628ba57d72653dbcdd1ac` |
| 88 | `theorem` | [nonnegg_neg_pos](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonnegg-neg-pos.md) | 502 | `result-track:b93df784a005ec7e04e533cf013640e2bbbaff5f0c950c9cc0c9f76aa9f1255b` |
| 89 | `theorem` | [nonnegg_pos_neg](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonnegg-pos-neg.md) | 507 | `result-track:98c23314151a771eb76ea6f5f14b803ef73a5d3abf0d9cd41dbac76f29fd1351` |
| 90 | `theorem` | [nonnegg_cases_right](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonnegg-cases-right.md) | 512 | `result-track:537fa9e23bda1301b4e398c15dae4a926066774add6dba92a1498c72523b68b8` |
| 91 | `theorem` | [nonnegg_cases_left](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonnegg-cases-left.md) | 518 | `result-track:70136170863a722d05c883f10d99e4b1f433d0fe6c32f570e739daa29533a85c` |
| 92 | `def` | [norm](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm.md) | 526 | `declaration-track:2a2c76d89d4ce707c1bf52000ecf7e8508471785e0700761413fe4483f4ff7a1` |
| 93 | `theorem` | [norm_def](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-def.md) | 530 | `result-track:cf7ab3d958ec6e9ba1e773b440eacd786ee8f14d9a199e16fe969ced7787bca6` |
| 94 | `theorem` | [norm_zero](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-zero.md) | 535 | `result-track:575bad77f6442fc1b4e810b03fbf18aea9b3b0171c7548d78763528d9923f191` |
| 95 | `theorem` | [norm_one](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-one.md) | 539 | `result-track:4c6d64a9b6a0b41f9d567c81258a48f5770dfe2a57c4a9fac74e920adcf85703` |
| 96 | `theorem` | [norm_int_cast](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-int-cast.md) | 543 | `result-track:201fd3f7580726574e1b228e1a1ab63af5d223ef603e2d4cdebcefe228aea65d` |
| 97 | `theorem` | [norm_nat_cast](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-nat-cast.md) | 547 | `result-track:9ef7fd120f84b0439c12351e1364427b5e7766d73c67fb895ee8ddf08e7ad523` |
| 98 | `theorem` | [norm_mul](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-mul.md) | 552 | `result-track:6e52468c0ba5406cd22b5314b71358eb98d8ae7d424086055ab449807911da9a` |
| 99 | `def` | [normMonoidHom](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/normmonoidhom.md) | 558 | `declaration-track:fd2501f5e1368f576c364ae309d0738f4737e005c03f5b628c705b496042de60` |
| 100 | `theorem` | [norm_eq_mul_conj](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-eq-mul-conj.md) | 564 | `result-track:724a54b6fbe2c87bec28b9e0c11433778e2e010e078a96a9d84222ffba71b35b` |
| 101 | `theorem` | [norm_neg](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-neg.md) | 570 | `result-track:59bc61c94c3aa98f830ab1243ecb530f375b6aa132f87e2ac7db41d0d349cc4c` |
| 102 | `theorem` | [norm_conj](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-conj.md) | 577 | `result-track:273bc926d1e3d39d091c71114b960275e1c04338b1cfee43f8e99a39541c2182` |
| 103 | `theorem` | [norm_nonneg](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-nonneg.md) | 583 | `result-track:9adb25488aa15e7c3e0e912447f21888b7ad94374ad51f5af67024b14cd07e8e` |
| 104 | `theorem` | [norm_eq_one_iff](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-eq-one-iff-source-edition-2.md) | 590 | `result-track:ba1fb82b46978bb7ec2ff85f78d52a5bfe1878115831e395f0e60d66849884e1` |
| 105 | `theorem` | [isUnit_iff_norm_isUnit](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/isunit-iff-norm-isunit.md) | 610 | `result-track:1f3f7a5d3f2b6b7431448b3d59c21e6b02215dbcb13a08a39eaa6d2d2dda4967` |
| 106 | `theorem` | [norm_eq_one_iff'](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-eq-one-iff.md) | 614 | `result-track:1bcfcb8254e14f06f33d62c0a0607d27bd8d6bb47c26f33c50e720e6a7da3917` |
| 107 | `theorem` | [norm_eq_zero_iff](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-eq-zero-iff.md) | 618 | `result-track:78e79a51b33d2157114f79d21a89950b9057ca9cc690fe4bbcf0325829fb8c86` |
| 108 | `theorem` | [norm_eq_of_associated](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-eq-of-associated.md) | 634 | `result-track:c5cefb34612b808f1283d7b89064f754be0d43a3c6de969a3baa3d40db3b3aad` |
| 109 | `def` | [Nonneg](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg.md) | 649 | `declaration-track:b0bd09790fca5663081eb589f31a7bf27aceb52fa9118f9880d3b40f700d775a` |
| 110 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-26.md) | 653 | `declaration-track:f68b3bf0041e9c336ad72a429f69902596172d2482d5f3ccb5d7f9af12d6e237` |
| 111 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 656 | `declaration-track:1a8d8d2444ddd70e0c045598f178eb232ea987129ca0c6164f24a9a53f1283e0` |
| 112 | `instance` | [decidableNonnegg](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/decidablenonnegg.md) | 659 | `declaration-track:4de1b255de9e30dc05aef94cc4026cc85e5cd62abf5d4a8cc5a5a3e10dcbdee6` |
| 113 | `instance` | [decidableNonneg](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/decidablenonneg.md) | 663 | `declaration-track:9669148a585dca7f4a10397a1450f4e8082a6b2c13998ef67e1d853edce2389e` |
| 114 | `instance` | [decidableLE](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/decidablele.md) | 667 | `declaration-track:beac462b69f7cca33d2b8389f34e06b47af62bb69c930faf30ee8bb917bee507` |
| 115 | `theorem` | [nonneg_cases](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg-cases.md) | 671 | `result-track:b9c6f0b004a3f32b4325a29d03bb3b347c7a83a65fdcef2e91b8c9d1afd45cb3` |
| 116 | `theorem` | [nonneg_add_lem](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg-add-lem.md) | 679 | `result-track:c36d0c469244dd91a87d054804782fba10ebb4b017063170ac183f25f7413669` |
| 117 | `theorem` | [Nonneg.add](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg-add.md) | 701 | `result-track:9a6ab9f1fe0d104d23795697e96903978f7d5b430cffb9bc6d52e2dd3b31fa3d` |
| 118 | `theorem` | [nonneg_iff_zero_le](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg-iff-zero-le.md) | 741 | `result-track:d886c79c97004962efaed41bfdcb9e0509b13b4590b378325cba576cfeec5045` |
| 119 | `theorem` | [le_of_le_le](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/le-of-le-le.md) | 745 | `result-track:3b1083891392c82b5f65598bb6b3a76fe78e985f10ff0a0f9343fc91aeca9fb2` |
| 120 | `theorem` | [nonneg_total](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg-total.md) | 752 | `result-track:5c69fb706490b4b433cea2050920a212f7f29cfd02f50b1fc2003891f5bcfc85` |
| 121 | `theorem` | [le_total](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/le-total.md) | 761 | `result-track:822a79a1e9cd9cf77b2e1395e56b4c02aa6f68fcd0b25b09c8c9d99cfa8660ac` |
| 122 | `instance` | [preorder](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/preorder.md) | 766 | `declaration-track:2cc74c6824d3907257acbe597359be144d578b3fae46ceaea0117be8ab0539f2` |
| 123 | `theorem` | [le_arch](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/le-arch.md) | 774 | `result-track:a1e0938ff82781693e78c1ee5a3c5ffa9187cea924dda44b0d43e321943e087c` |
| 124 | `theorem` | [add_le_add_left](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/add-le-add-left.md) | 792 | `result-track:e2713ff5c3b88ff4a6e2e0f3fb12b794fb4179977a054c3a0bc3f6c43d647506` |
| 125 | `theorem` | [le_of_add_le_add_left](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/le-of-add-le-add-left.md) | 796 | `result-track:a24757545e3e9f7398e00e48194a0c7c2fc3141ec981de9265ac9bf82b340107` |
| 126 | `theorem` | [add_lt_add_left](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/add-lt-add-left.md) | 800 | `result-track:5ce997ad06a5dd5d5cc4571da572ea58f4ec84eb57b4d14bc72f76d4594dbc66` |
| 127 | `theorem` | [nonneg_smul](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg-smul.md) | 804 | `result-track:48906592afebd93b7cc2521eb9479d922dfed00a3c5a2399c1ae2faf6791c014` |
| 128 | `theorem` | [nonneg_muld](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg-muld.md) | 815 | `result-track:ea4cd6cfac3fa5a11920e9ccd96312057c01310a65faa5505a7ff69f10201e74` |
| 129 | `theorem` | [nonneg_mul_lem](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg-mul-lem.md) | 828 | `result-track:68c1335eb91f772ddb77645a11539944bbb863a370ca97e50f35b3b8f373ea3d` |
| 130 | `theorem` | [nonneg_mul](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg-mul.md) | 835 | `result-track:6ea71578022ff76302d4c8c00d7d050b89f99e12a782e478392574896cedb9c3` |
| 131 | `theorem` | [mul_nonneg](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/mul-nonneg.md) | 873 | `result-track:dbc01d19ee5f2e7052275874ffb6b06fe6aed6ce45ef1b8c80265108a7c3ad62` |
| 132 | `theorem` | [not_sqLe_succ](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/not-sqle-succ.md) | 878 | `result-track:993a3b9acf9cd27ff980498365206bd683aa0077cf253d636804d3355044421d` |
| 133 | `class` | [Nonsquare](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonsquare.md) | 886 | `declaration-track:b60d3cffa46ac4a11d360f0ac152be9b3f56fa91a431d9dff1a0a2872aa6d1b0` |
| 134 | `theorem` | [Nonsquare.ns](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonsquare-ns.md) | 890 | `result-track:250b1a06872978d060278d8e3f4cb0b7bed99f11bff04a8f2d68187ee0c5ae4b` |
| 135 | `theorem` | [d_pos](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/d-pos.md) | 894 | `result-track:f4537b9fad629d7a52a8e3875b2195fb9313dcd670cc020a591d4c9c682c596f` |
| 136 | `theorem` | [divides_sq_eq_zero](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/divides-sq-eq-zero.md) | 898 | `result-track:847273da0da7abd93e128ed31c4a7cceaf83e914b7ebaf3d0a65cedacb829780` |
| 137 | `theorem` | [divides_sq_eq_zero_z](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/divides-sq-eq-zero-z.md) | 922 | `result-track:191a314c80c3826ee663184cf5a017c01528ddc30498741743ccac083eaff23a` |
| 138 | `theorem` | [not_divides_sq](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/not-divides-sq.md) | 929 | `result-track:a1ca761c87e3ab115746181288a78651b0cee68daf3b8d0a23bab6a5df9fae79` |
| 139 | `theorem` | [nonneg_antisymm](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/nonneg-antisymm.md) | 935 | `result-track:ee6fde5ddfba2f6b0e6a4dd1209a0a121cfc911cb4083a9d3fccf8759739745e` |
| 140 | `theorem` | [le_antisymm](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/le-antisymm.md) | 953 | `result-track:67ee34d8fabbf1f2f75056321e9aee9fe0eae05c75e40efff3bb7516869a0424` |
| 141 | `instance` | [linearOrder](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/linearorder.md) | 957 | `declaration-track:d49a839e0abc4a63efa1ece585a063dd4cf732a374d0dfec936774f9b4c51443` |
| 142 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero.md) | 963 | `result-track:5f3c941e08b38b2449ab381ccc9ab4c2d766bf34ea0c078dce0d896e32033542` |
| 143 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-8.md) | 993 | `declaration-track:45594aa318fc84355d4e73f1f3e2f43a7df9aeae5215176b409a24d77bd21c27` |
| 144 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-17.md) | 996 | `declaration-track:7e6027ee2a8d3e6693f073444322303beca27342f6380182b132994cbdebc18b` |
| 145 | `theorem` | [mul_pos](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/mul-pos.md) | 999 | `result-track:9f6c8ae9c0317f1630f03f0b3123eb3fadbba247217d15599dc5825ac99f89b3` |
| 146 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-14.md) | 1006 | `declaration-track:696900eb8132254f8b23df4bd1198088741090eccc88d418d71c098b566aab41` |
| 147 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-12.md) | 1012 | `declaration-track:51b4c0a5e8da605b2baf9abbaaaf31cfc0bc3167c255602937e65d6c68fa7b15` |
| 148 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-22.md) | 1014 | `declaration-track:c3ff046d1c22a7d4b7bcdae12393a03decd0285f5d99702b579caadff2969fee` |
| 149 | `theorem` | [norm_eq_zero](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-eq-zero.md) | 1018 | `result-track:cb263d7dfacff8e52eec7293232cc98126cabd6895280c14cf45d00085cc7029` |
| 150 | `theorem` | [hom_ext](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/hom-ext.md) | 1039 | `result-track:52c5e2ddd50927f36147fd63df327e06ea84d8291e550cf1855b1051336a7ec3` |
| 151 | `def` | [lift](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/lift.md) | 1049 | `declaration-track:18e88c5c009c54bd4d810590406e5986dc4b8d2b3836fe9f1fb8cab92435fa19` |
| 152 | `theorem` | [lift_injective](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/lift-injective.md) | 1076 | `result-track:ca265ae5f41feb562db9db0eac9dacc7f34071e6e70ee14a6e201f70da8e1053` |
| 153 | `theorem` | [norm_eq_one_iff_mem_unitary](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/norm-eq-one-iff-mem-unitary.md) | 1089 | `result-track:a22d92ec588496a7edf3797dce4dcb306c3019508fef715bb8981148d70210ad` |
| 154 | `theorem` | [mker_norm_eq_unitary](../../../../NumberTheory/ZsqrtdBasicNamespacedSourceEdition2.lean/declarations/mker-norm-eq-unitary.md) | 1095 | `result-track:d8aa3e2ee5a23362ef5d2caef9bad7fe9822220c1fc617e697907ecd2411a695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bece43508edfa578fe5a90e24aff4cd6d0cc8680db19129e463ca8f5c989c030 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

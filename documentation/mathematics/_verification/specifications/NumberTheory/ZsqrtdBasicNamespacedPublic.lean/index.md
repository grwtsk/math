# Verification target: Zsqrtd Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40b0d697ad536217bb26713595e598d5a79ed840",
  "lexical_observation_count": 143,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40b0d697ad536217bb26713595e598d5a79ed840`.

Source path: `GRWTSK/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean.json)

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
| 1 | `structure` | [Zsqrtd](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/zsqrtd.md) | 41 | `declaration-track:be01108df7a7e2b328d16aa995013496dcdf8a7f91bcdd5b52f5e18cd468184d` |
| 2 | `def` | [ofInt](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/ofint.md) | 57 | `declaration-track:94a36c8341b790a0840613845c96c0258855cb3a5e79d8f0e1606d691fe3fda6` |
| 3 | `theorem` | [re_ofInt](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-ofint.md) | 60 | `result-track:0e121faaf848d36b50489590d52a4cda44065e1fbc11ebd4476583aac41aa82c` |
| 4 | `theorem` | [im_ofInt](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-ofint.md) | 63 | `result-track:c538f318946ac5f214c4f0eab6df70676d0990ebc07121e964f47b64e923c7b6` |
| 5 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-25.md) | 67 | `declaration-track:f305516f77bedcfc7d45972bcc83745ee281fb6235b585038b1234c9c35ad146` |
| 6 | `theorem` | [re_zero](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-zero.md) | 71 | `result-track:1030dda75787ebe951be35ebbc298436d461f8db7a77a36732c59455ffb74def` |
| 7 | `theorem` | [im_zero](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-zero.md) | 75 | `result-track:3695162659a4f0c9a79f89d9fa7eaec27a7c3d35e3bd65779f8f1a3d4546b3fe` |
| 8 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 78 | `declaration-track:27764737fd18992315285548d8f32ffb7f7566cd2714af48149f2f016130e19b` |
| 9 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-23.md) | 82 | `declaration-track:e04bd53b482200726128b68f24c3c652f96edba1ad4519abaf67ae4324831853` |
| 10 | `theorem` | [re_one](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-one.md) | 86 | `result-track:26f025b90adb7035ed08df73cc44070d4a38a4b3cd894f99ed747f307b7a8cbb` |
| 11 | `theorem` | [im_one](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-one.md) | 90 | `result-track:2b99fbd9cf19e722a568753cac26ae86c7acfafb57f1c83dce4214f4d7040895` |
| 12 | `def` | [sqrtd](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/sqrtd.md) | 94 | `declaration-track:bceaf9ca034ce24bba6306df7cc61b20d369aa1fec1f063937d2ec055fa04338` |
| 13 | `theorem` | [re_sqrtd](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-sqrtd.md) | 98 | `result-track:2a929a4c05d4ec03596994fd40447783f3a6571a39216198db27a8f61c78fc87` |
| 14 | `theorem` | [im_sqrtd](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-sqrtd.md) | 102 | `result-track:3c8dceb1abf7c9f558d2a23e3f70c8412969603cfda79f42b87cb361cdec794c` |
| 15 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 106 | `declaration-track:c88b0c6a56eea17c4439110b72abe54140b8234c1345640ba9cd4e3be00231cc` |
| 16 | `theorem` | [add_def](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/add-def.md) | 110 | `result-track:e2768d5b6b7527a6fd07bc617d3021cb63220af72e208cc90ba0f132ea2545ba` |
| 17 | `theorem` | [re_add](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-add.md) | 114 | `result-track:0faf9f312b456d8fa9a39dc2a2c88b0675c8cfa5ae04b2c6267d312e620f57b2` |
| 18 | `theorem` | [im_add](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-add.md) | 118 | `result-track:c5db46658cd1bbe2c2c54e035eaf0280804d4301049533ea4056b867c658ba07` |
| 19 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 122 | `declaration-track:5347a9916bc63cea9c0500c90600ec37f377f7708bf596b85bd23ea6e3e9d5a7` |
| 20 | `theorem` | [re_neg](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-neg.md) | 126 | `result-track:148d3fa4c8621670197760c59fc4df50849a3fbd35cf2e9883c83b08af51d34f` |
| 21 | `theorem` | [im_neg](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-neg.md) | 130 | `result-track:a86cb66649aba3a2f35c0b1331dd543795e32fb08c57663d07518a3bbb221b99` |
| 22 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 134 | `declaration-track:b7ca7244a25b40843ecb6ba866ee44689de8df6b465977a60d644cdfc53b8108` |
| 23 | `theorem` | [re_mul](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-mul.md) | 138 | `result-track:0e28d984158500d3848e4b3b34b4fcd807c3c4666c39621ff952ce0a346b381c` |
| 24 | `theorem` | [im_mul](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-mul.md) | 142 | `result-track:cfe7434f0dc4295cfc0416067e40425c93fc2bcb642f948de445018a35db49fe` |
| 25 | `instance` | [addCommGroup](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/addcommgroup.md) | 145 | `declaration-track:f1c3e06ffe8422225d68a89e38195b47320321047dcf04d4b5f2415f376d39c8` |
| 26 | `theorem` | [re_sub](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-sub.md) | 160 | `result-track:8da8f8f96f4b9d877fea757ac05b5e5d94e13369570146b2568a20617772d311` |
| 27 | `theorem` | [im_sub](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-sub.md) | 164 | `result-track:cf49d597b85820480ec8bbea6ce86c1d01a86f7d6c1d3663b0723cf6d5959d84` |
| 28 | `instance` | [addGroupWithOne](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/addgroupwithone.md) | 167 | `declaration-track:4168ff5c4ef37becf96f26032303efadd92ae1c10afea537d2f4f764459656b9` |
| 29 | `instance` | [commRing](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/commring.md) | 172 | `declaration-track:c0e55e449623c2b5d2d3560ffc0f0ff91a4e269b35608d7e6809fbe1f7f6524b` |
| 30 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-21.md) | 190 | `declaration-track:d437ad00e017a22551e05216070611b3a00cfc45d3dc1bb34c5269eca6114cf2` |
| 31 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 192 | `declaration-track:79593adf7caa5f6079fbe63c56018cd89b5f5a361c923cf2c76c299090ace6e8` |
| 32 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 194 | `declaration-track:6c17f49ce8745ea033637c1128561af2ae038f3558e1d82704c708af4bfbde6a` |
| 33 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 196 | `declaration-track:9a605ea421adbfb152d0082c27a5e9f8e570fc26a30f9b158ef40608b1680553` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-22.md) | 198 | `declaration-track:dc81ee6ba444deefbd0e27d78fe97a0dbd1d55c804a3e68cfd365d8f73eb8272` |
| 35 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 200 | `declaration-track:af667d1abff9eb41aa0676dc77468dcf242788d35ce6f4ff926c6bc451e01d78` |
| 36 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-24.md) | 202 | `declaration-track:f147966b177568ec4deb94c2d827066069050fc3235521b8c2df1ebf8ee4fc19` |
| 37 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-20.md) | 204 | `declaration-track:ccf04b2a9d9ceda045b474ca857b413daf4945b1c087c63e0bcc0727ab5de593` |
| 38 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 206 | `declaration-track:40e89677c893cf5df0043925d6606d2b1968c6d8ca5ba97470898ca51d6b7b49` |
| 39 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 208 | `declaration-track:562da100f15bfdf51c8c1a3bad58c5c99b60beaecf5d9b07789eb73b657eaef5` |
| 40 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 210 | `declaration-track:6039d4f53c193c0b6fc3d9f3f488af5c87cbaf6b10c1462956712dacc66b547e` |
| 41 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 213 | `declaration-track:3289647a7141d76345bce95ab4390d1855079b0923874d740240ac065c2781a5` |
| 42 | `theorem` | [star_mk](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/star-mk.md) | 217 | `result-track:ebfdccb69ce602f9ffbf67a8a4288a79fd36f036c6cde55ea378b59d9f63b498` |
| 43 | `theorem` | [re_star](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-star.md) | 221 | `result-track:6033122df59e0ebd871975c27f82ad4135c84402558ad221e33709c268102c0a` |
| 44 | `theorem` | [im_star](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-star.md) | 225 | `result-track:d83140ff0f045d13c6fc3b4f96fc1ef45612e07544b3283b027977d2e8fe8e81` |
| 45 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-27.md) | 228 | `declaration-track:fa07407e31016938f33786d2e8a8e25f56068b51ad3d2954ce7748ac7f40cf80` |
| 46 | `instance` | [nontrivial](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nontrivial.md) | 234 | `declaration-track:ff16314fcd5c82275ebf3e89f7cb23b247602bc337f2fad4e256032ce2ba48ef` |
| 47 | `theorem` | [re_natCast](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-natcast.md) | 238 | `result-track:e76294638e2d217e334bbec3922002429c9e5592dede683161bdf3f2e6eb7416` |
| 48 | `theorem` | [re_ofNat](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-ofnat.md) | 242 | `result-track:de333f1beb2918a17be1d31f2c3f501dfc247dc9ebf1a48e679a6f96d05c492c` |
| 49 | `theorem` | [im_natCast](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-natcast.md) | 246 | `result-track:f84337c54fa7eac57bf13640ddbcc4278ee10af6a35d1e2de1ac9db9e74fca8f` |
| 50 | `theorem` | [im_ofNat](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-ofnat.md) | 250 | `result-track:239960116a4bdc38aac8c0018c18a39c64dd5843f66d2a9337e057566e93591b` |
| 51 | `theorem` | [natCast_val](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/natcast-val.md) | 253 | `result-track:3086e3c6638a3dc531f7f72cb978b896102675ac93b32a13ae34c2b5ccbb1014` |
| 52 | `theorem` | [re_intCast](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-intcast.md) | 257 | `result-track:d0834c6e9c2cf49426a7625e649573b049f9b3436f28f0bdcd95cbc8bef23f72` |
| 53 | `theorem` | [im_intCast](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-intcast.md) | 260 | `result-track:7cfaddf70a013ef45c6225246d3932d256537767f3a108a259f703275e3dfcad` |
| 54 | `theorem` | [intCast_val](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/intcast-val.md) | 262 | `result-track:192caf8cd77e32ee19118234ba5f7f75b03dc9ffac5337f462c414cd3774452a` |
| 55 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-26.md) | 264 | `declaration-track:f80e94360dd14c1ae2008dedbff4e17708d85db6e99b956d111abd09ca089490` |
| 56 | `theorem` | [ofInt_eq_intCast](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/ofint-eq-intcast.md) | 267 | `result-track:2dfee1d739ffb97667cfc58c02a8804cb26ac885e7fa4b4a14509d78660c5f83` |
| 57 | `theorem` | [nsmul_val](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nsmul-val.md) | 270 | `result-track:6515161415ddeab072fea5a90de572068ec0626acff44e3a6ced7a340dc812a9` |
| 58 | `theorem` | [smul_val](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/smul-val.md) | 273 | `result-track:205af331c0abf1f198159fbb132148e3286d296c408780441d6a9405e0891cb5` |
| 59 | `theorem` | [re_smul](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/re-smul.md) | 275 | `result-track:c720fa9024d0f3d4bdfc2b568d58b9365e5b856c9205f1b087a5aebf0fdc2d47` |
| 60 | `theorem` | [im_smul](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/im-smul.md) | 277 | `result-track:f3754eb6d2005caf8f10b5eda08e9ba423c6e0bcf3332f260f2146fe0a2bfe2a` |
| 61 | `theorem` | [muld_val](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/muld-val.md) | 280 | `result-track:19236a5df4fce24d371433d7155ab9b2c47b66ac40cdfdb347b6c02b2234a56b` |
| 62 | `theorem` | [dmuld](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/dmuld.md) | 283 | `result-track:4b6f620bafd474a7e0596061ff36a38de90662593cf26b80d4794768fb85ee0f` |
| 63 | `theorem` | [smuld_val](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/smuld-val.md) | 286 | `result-track:cf0af34ab5265cb2cd2e66dd3df1f8437426a8c45ddd94d9817d70a306084cd1` |
| 64 | `theorem` | [decompose](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/decompose.md) | 288 | `result-track:fad43298c59798e839d11b3cd79d255d25d8ad54f8155a66536daac478594245` |
| 65 | `theorem` | [mul_star](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/mul-star.md) | 290 | `result-track:541af29a01d068989be37e8972149e7426c8979411ceb2854f172fbd3a560060` |
| 66 | `theorem` | [intCast_dvd](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/intcast-dvd.md) | 293 | `result-track:9cebe217e3a2698ee4550b94534a055f68596d3647b51c210dfe99ee6af375cf` |
| 67 | `theorem` | [intCast_dvd_intCast](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/intcast-dvd-intcast.md) | 303 | `result-track:806346fd5c818d45c67381ec814c810525ac27804542ef563a35661c627fcd53` |
| 68 | `theorem` | [eq_of_smul_eq_smul_left](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/eq-of-smul-eq-smul-left.md) | 307 | `result-track:f6c1b498180ae533d464582ee38387fabfa7c11c91c2d6818743a745337d850c` |
| 69 | `theorem` | [gcd_eq_zero_iff](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/gcd-eq-zero-iff.md) | 314 | `result-track:01cb12af0365ae41ae2374fe2c758f013905b43f4c68bc0543e1741ede205d91` |
| 70 | `theorem` | [gcd_pos_iff](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/gcd-pos-iff.md) | 317 | `result-track:0060cecadc6e5ea1af00ea5945e556e43aa7cab27419e199c7b85b6874949eaa` |
| 71 | `theorem` | [isCoprime_of_dvd_isCoprime](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/iscoprime-of-dvd-iscoprime.md) | 320 | `result-track:a553da079e955324f234ebfd55bba775d76b3189c73267f517d1ab50e475bc7e` |
| 72 | `theorem` | [exists_coprime_of_gcd_pos](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/exists-coprime-of-gcd-pos.md) | 336 | `result-track:29e193ec778c81a3ccb008ce1d35aff779a49016fc2228e62704b11fc60fc195` |
| 73 | `def` | [SqLe](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/sqle.md) | 347 | `declaration-track:12fce7959e559ac08abf102ec8e31f6533190d6b0cc7f070f8a87d337fb6de09` |
| 74 | `theorem` | [sqLe_of_le](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/sqle-of-le.md) | 350 | `result-track:e1481e40745d2c8e3de462c92be4128fb898238bdf3921e5f9409839b213eed8` |
| 75 | `theorem` | [sqLe_add_mixed](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/sqle-add-mixed.md) | 356 | `result-track:d0b251468b08064efb3aa1d2957b3235facf08224b51bbdc91260a96b8bf5e6b` |
| 76 | `theorem` | [sqLe_add](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/sqle-add.md) | 361 | `result-track:1ba9b0bd6b7c12e131fb657087f208481672f77bfdd002d3f5771629364130fd` |
| 77 | `theorem` | [sqLe_cancel](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/sqle-cancel.md) | 367 | `result-track:6b017de886d0e76b80de22345a1c8f7fe21875b2fd0adf0709e39afd13dfa1a9` |
| 78 | `theorem` | [sqLe_smul](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/sqle-smul.md) | 378 | `result-track:046bba631393173c32fc4dfd327450957b7ad1041239190857e2bbaace02ae7a` |
| 79 | `theorem` | [sqLe_mul](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/sqle-mul.md) | 381 | `result-track:c39e81a848087d8dc18f8d26a60a54f6793f97ad708b4b4dbd0b488c6818f240` |
| 80 | `def` | [Nonnegg](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonnegg.md) | 399 | `declaration-track:6d78afab5cc55df6c90c81d74b89e07cc8c0fc085d878c4c47f235f3b7366b54` |
| 81 | `theorem` | [nonnegg_comm](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonnegg-comm.md) | 405 | `result-track:2fd925cb8899629880fc5d1d86264df8c1ec27d8066eae0853727abbd934423a` |
| 82 | `theorem` | [nonnegg_neg_pos](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonnegg-neg-pos.md) | 408 | `result-track:292bd2a2861319e673007fb37fcd69f2c34764a7722fa4a7e14da7e038afdfcf` |
| 83 | `theorem` | [nonnegg_pos_neg](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonnegg-pos-neg.md) | 412 | `result-track:f4bb1b172f36e68649d1dcdedad3c3538ef02511855afaee5b574dae844f4b38` |
| 84 | `theorem` | [nonnegg_cases_right](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonnegg-cases-right.md) | 416 | `result-track:61fe4deaafb0933dbde100a8c776659abf39e4a8e7ca0fb399e64c27ab05bd21` |
| 85 | `theorem` | [nonnegg_cases_left](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonnegg-cases-left.md) | 421 | `result-track:0b9426d46d6adc67674ccaa34b772ee14a08dfaef088dfc8799a1e9dee92d694` |
| 86 | `def` | [norm](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm.md) | 428 | `declaration-track:9d7c893334017bb23c7117cca470378c23350fbff41c530197b971fda981f5ca` |
| 87 | `theorem` | [norm_def](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-def.md) | 431 | `result-track:4cd656210494a0892c61e03715abff580da77012374499e805507dacede215b4` |
| 88 | `theorem` | [norm_zero](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-zero.md) | 435 | `result-track:7b0a9f7033585986d17e8a1b4c7ab1d6f8aa9dad080a6ad3e422995db313542e` |
| 89 | `theorem` | [norm_one](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-one.md) | 438 | `result-track:05dbe616ae63e7fc5ed45071672d71cbcb42c8e3e325b09d7c759aceb892983f` |
| 90 | `theorem` | [norm_intCast](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-intcast.md) | 441 | `result-track:fbf8fd1c5f28f585c04fc9372fffc147b908b9d6ea69432ab8168f86184dc8e3` |
| 91 | `theorem` | [norm_natCast](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-natcast.md) | 444 | `result-track:69dce3d41191cb6ad89514e24f4f43b895c3044dd67c0d46ab8489c89d6bf40c` |
| 92 | `theorem` | [norm_mul](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-mul.md) | 448 | `result-track:7c260fe80c365f6bf865b8ed2f2567754da212873a6e830c29bd23d984fc0b7c` |
| 93 | `def` | [normMonoidHom](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/normmonoidhom.md) | 453 | `declaration-track:7c76cdb6996bed54c1a8666c8a424deeeaa1695b639efde1cd2cf7fbf1f2bc0a` |
| 94 | `theorem` | [norm_eq_mul_conj](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-eq-mul-conj.md) | 458 | `result-track:1ee25a542a2bdc32e96a056307b16ef49f668346a9f1a7e4fae55a52e60e41dd` |
| 95 | `theorem` | [norm_neg](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-neg.md) | 462 | `result-track:5c4c6a4092bd2ddd6ef2f264898588b31933cd5f5ba0b530cd9a30a14403b99b` |
| 96 | `theorem` | [norm_conj](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-conj.md) | 466 | `result-track:0cec5995c51e7756e4b8732037ff2993f0e3c0a58a1dd2229d8b3c0adebdbeeb` |
| 97 | `theorem` | [norm_nonneg](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-nonneg.md) | 469 | `result-track:7391d58684f87ee2a533792428dcdef370616eb76369b2f37c372231d91687ca` |
| 98 | `theorem` | [abs_norm](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/abs-norm.md) | 476 | `result-track:168e30877d3831f10d35fd59d97bdfe0c4544e3dd128d206f4f53ead74657634` |
| 99 | `theorem` | [norm_eq_one_iff](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-eq-one-iff-source-edition-2.md) | 479 | `result-track:acc7fbf3b50ae0dd2b40d5b557586a747707e9283132a58771ea2656056c7a02` |
| 100 | `theorem` | [isUnit_iff_norm_isUnit](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/isunit-iff-norm-isunit.md) | 498 | `result-track:fe76af031d37582f8248edb5ba78b71cd35e28eecd19347d264ea2f7ddbe570e` |
| 101 | `theorem` | [norm_eq_one_iff'](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-eq-one-iff.md) | 501 | `result-track:037eedb442a613a50c57746de0c1e5cf2ee6f49c63d870530359e1d557455c35` |
| 102 | `theorem` | [norm_eq_zero_iff](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-eq-zero-iff.md) | 504 | `result-track:ffdde0863670a060de038ac85dfbb13f2ef52c523df277afedf864829d153226` |
| 103 | `theorem` | [norm_eq_of_associated](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-eq-of-associated.md) | 518 | `result-track:68c8e26cae2d63c473afeff9e03cf20f49b3c6a9f284a9af0c2161625a9c52e6` |
| 104 | `def` | [Nonneg](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg.md) | 532 | `declaration-track:4c01cc9297a1ebf9d40c8887604ae120b46a1559f9b5f2d99341ffb0297505cb` |
| 105 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 535 | `declaration-track:2048faaaa1e6488fba3f70146aa77d1cd1b9bf291f1da6b3161b90e775211cf3` |
| 106 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance.md) | 538 | `declaration-track:0110db9d9b88a5cfd97e3dfb365cbf086e3a3dbad9f3bf13c63156281358913d` |
| 107 | `instance` | [decidableNonnegg](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/decidablenonnegg.md) | 541 | `declaration-track:201f97902a37d00194cfa71543c7b4c0588c6cdb5cb9e753be46de9934ab58cb` |
| 108 | `instance` | [decidableNonneg](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/decidablenonneg.md) | 547 | `declaration-track:149d300bde3df56190e00a255c5344416a112cf5244b610018eaf206846b7e2f` |
| 109 | `instance` | [decidableLE](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/decidablele.md) | 550 | `declaration-track:4fa87834ab9595e26a8c8618183d5e9d5f0f3b42bfa235a7ce2b32ed7b99883e` |
| 110 | `theorem` | [nonneg_cases](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg-cases.md) | 553 | `result-track:c5e7dcf041241379472320a8863d8d9ea21848d25db2a323c7f847b4ce1752be` |
| 111 | `theorem` | [nonneg_add_lem](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg-add-lem.md) | 560 | `result-track:8e5dcfdc69423a295b7b7bb457e1f8127856818c36a34314c3edddcf0f4d6936` |
| 112 | `theorem` | [Nonneg.add](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg-add.md) | 581 | `result-track:c4d73ca813d7745ad51a41c8b89034724db28b623b617d68db38474c6d1e02ff` |
| 113 | `theorem` | [nonneg_iff_zero_le](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg-iff-zero-le.md) | 614 | `result-track:89b87f5f6e22f02db2945b8b0c2dde572acbb419dcbb5f6932e67b6519ff94f9` |
| 114 | `theorem` | [le_of_le_le](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/le-of-le-le.md) | 617 | `result-track:340e3b2657afb6c516d7c80f741a80ca1fcd4ef2b016ead9dcef594cfb2dbb39` |
| 115 | `theorem` | [nonneg_total](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg-total.md) | 623 | `result-track:c1d0b7e3ea8fe42dd37e9597e8d3daea47ff1622606bfaa969e2cfe125fcea9d` |
| 116 | `instance` | [preorder](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/preorder.md) | 631 | `declaration-track:109392f3e529049b9a2c625f16f57bb4491c3f27cbc511bbd1879357cda026db` |
| 117 | `theorem` | [le_arch](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/le-arch.md) | 642 | `result-track:8a5424c8e22e63683c9f8b52ac9775834fe354b87c977b64d72c0a9eb842f4d1` |
| 118 | `theorem` | [nonneg_smul](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg-smul.md) | 659 | `result-track:4d1224150d2fb9d2dbc27c1b7e9964a4e7919e8ce16a76dd9cd47bcbf0e8c318` |
| 119 | `theorem` | [nonneg_muld](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg-muld.md) | 669 | `result-track:afbf2f1df434af55c66da86353f37a53d6ace1584563f0127d335d01467a142b` |
| 120 | `theorem` | [nonneg_mul_lem](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg-mul-lem.md) | 681 | `result-track:236cf9b626aaa8116e3654601f17414aa6d7e7f6e45ef9741c583cdb19f464e1` |
| 121 | `theorem` | [nonneg_mul](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg-mul.md) | 687 | `result-track:0a9c92f7df8047313ffc42fcc649f88dd5cab703b537f66a0a5db5d174124d32` |
| 122 | `theorem` | [mul_nonneg](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/mul-nonneg.md) | 720 | `result-track:124167e54319bb3dbb7d58ff335703f5132cf3ddb21e5e7eafde18a151270a87` |
| 123 | `theorem` | [not_sqLe_succ](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/not-sqle-succ.md) | 724 | `result-track:191dabaf1b5a28690e2f60bcfb552c299f086d6bfc051dbd85499748859f80ef` |
| 124 | `class` | [Nonsquare](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonsquare.md) | 730 | `declaration-track:f66a30e4847c9fe2dc2cd785e896a939f11ee76ebdf55c1542d0f5b869eaf1fa` |
| 125 | `theorem` | [d_pos](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/d-pos.md) | 735 | `result-track:870411cddcc095642ebc09c03c84b05e3923b72a4d82952c650dca5b06d07c19` |
| 126 | `theorem` | [divides_sq_eq_zero](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/divides-sq-eq-zero.md) | 738 | `result-track:1572418e8e5342f703757db4097bb9134c357cf8a1fd5602eae201e40275b343` |
| 127 | `theorem` | [divides_sq_eq_zero_z](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/divides-sq-eq-zero-z.md) | 756 | `result-track:c33561d6d89129ea8ba61b6cbe4ebf9360713b414e4fc09ea09129a783049dcb` |
| 128 | `theorem` | [not_divides_sq](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/not-divides-sq.md) | 762 | `result-track:740cb3140984a230f768fd082f09354cae0d29ad5b68669401ae0e5bf22cd069` |
| 129 | `theorem` | [nonneg_antisymm](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/nonneg-antisymm.md) | 767 | `result-track:99285fd32f1f432692da55d78d2ded33f01582159ca6170db4fed1c9a91cb0c1` |
| 130 | `instance` | [linearOrder](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/linearorder.md) | 784 | `declaration-track:d46df9b6761e61170e41295c6e267a19fec0bccac726dcfe95909119762b4cd9` |
| 131 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero.md) | 793 | `result-track:c2dd4034ae4a19e0015e01026da34a1ba93e0ca126ae2300e90923849bcf8f02` |
| 132 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 822 | `declaration-track:b33908a5d394e5afe4639efcf64325efb772f4cad474186fc5b9394f2e83c875` |
| 133 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 825 | `declaration-track:5bcf257f81d537b274ca02ffa98adeeda807272a26b1e4a33242678d0292748c` |
| 134 | `theorem` | [mul_pos](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/mul-pos.md) | 828 | `result-track:9b0f7383995ec0f1de5b75710bebd73dc2bb89aef83efbfe4c1f6090ea1784f0` |
| 135 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 834 | `declaration-track:0ca0520495776a1d6125b16e257092d47fdd7b3c8e26ff14dd7d6042e22ccee3` |
| 136 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 837 | `declaration-track:0663121a5b07c7133a7eafc78764f7df6c0243b7cc8c127837716c355a2a9a45` |
| 137 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 840 | `declaration-track:1aa1bbdd2b9e56a64dd048cfcaa9cbdb3f1a5ce0d4503d443ec27bb0c2d22951` |
| 138 | `theorem` | [norm_eq_zero](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-eq-zero.md) | 845 | `result-track:f455018081e601c5f9829671cfe7058432ea5fb2de0f1fc012ad225194d0c822` |
| 139 | `theorem` | [hom_ext](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/hom-ext.md) | 864 | `result-track:ab86b702ecaac7e1bfbe00fd80180e176bfe997dc40805ec4cc37daa990b768b` |
| 140 | `def` | [lift](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/lift.md) | 873 | `declaration-track:fbc105015e50db07a9d0f6d6e9e26487b0f4532dbefd9edabb737eb86e412bd8` |
| 141 | `theorem` | [lift_injective](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/lift-injective.md) | 896 | `result-track:2f8ebb96856867886d491011ba066b05a4fad0571a3282da76685711a201237f` |
| 142 | `theorem` | [norm_eq_one_iff_mem_unitary](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/norm-eq-one-iff-mem-unitary.md) | 908 | `result-track:fb12e67e0c3bf5c96cfd0cdb9e9861dce5d54dccf4b6278ea827aeb59a48737d` |
| 143 | `theorem` | [mker_norm_eq_unitary](../../../../NumberTheory/ZsqrtdBasicNamespacedPublic.lean/declarations/mker-norm-eq-unitary.md) | 913 | `result-track:94d3cbc2835325a5d7239695554a2f17aa3cd45d77d7330aa031499597d7fb9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bde5fcdae2493e5de01c53a7c1435afc4e781c3812f4ea45362afcac025bc9ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: ENNReal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fbb2d6d6d9bff445d082976a66e3c5723503487",
  "lexical_observation_count": 498,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ENNReal.lean/index.md) · [Full source](../../../../RealFunctions/ENNReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fbb2d6d6d9bff445d082976a66e3c5723503487`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.NNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.WithTop` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.WithBotTop` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.Core` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ENNReal](../../../../RealFunctions/ENNReal.lean/declarations/ennreal.md) | 83 | `declaration-track:a3a48684a6170d6dffc50cc1313ef8f9f84ae47ad2ae9f2f722a1ba14f45b680` |
| 2 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-22.md) | 95 | `declaration-track:f98d29d5a239f62b3efad6120b39f20d6f608010953fee5db8dd540a1106767c` |
| 3 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-18.md) | 96 | `declaration-track:de59388182f5d3638f782bf5ee518be013346046ab325d064007a678b57bd732` |
| 4 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:152e46b7c1585bad66cf2c503ef6da9c803b27de6b4e770232ff4da0f2de4675` |
| 5 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-14.md) | 99 | `declaration-track:b0ae1f5fb18c1a6d73ee7479e5b566d3440814725f95bd6375511031af30bc8c` |
| 6 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-3.md) | 102 | `declaration-track:24f9362f3e5858c5087a9b52e7a1a70dbb1aef3502e27a829191133ce113794b` |
| 7 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-11.md) | 105 | `declaration-track:801bfa0a10ae4f705623b3b14af7b4ed8a6ba7ab175d18f192bac6021eeba65d` |
| 8 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-13.md) | 107 | `declaration-track:9db36d4f78cc24917fc212486989279e1a475fbc47a94fc7ffe9acb591000b28` |
| 9 | `instance` | [instSub](../../../../RealFunctions/ENNReal.lean/declarations/instsub.md) | 110 | `declaration-track:482010625308b382535bb84f18603a7a6cd8aefdee6c83b806b92fc87bdc9800` |
| 10 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-10.md) | 111 | `declaration-track:75069f4754327dc77fe7b2cc04407c013da010393e74f2dcb60c8f3d39a9bf62` |
| 11 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-21.md) | 113 | `declaration-track:f84d6cb1cbb2b3ac78fec44b5582a033f597c48b6fdde67044978d80d61e6cc7` |
| 12 | `instance` | [covariantClass_mul_le](../../../../RealFunctions/ENNReal.lean/declarations/covariantclass-mul-le.md) | 119 | `declaration-track:3582b040273bbd943a9b0775ad89db6756fa6c78603d4a599d872cf84d81483b` |
| 13 | `instance` | [covariantClass_add_le](../../../../RealFunctions/ENNReal.lean/declarations/covariantclass-add-le.md) | 122 | `declaration-track:6983b3bfd6cf847b272a9c7a4deb3f9351e5428e64692a2e1f95e3edfc8efd77` |
| 14 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-16.md) | 126 | `declaration-track:bb60c2f61752730e505299211c62fe124995bd04b43ea49d7f186c549f014054` |
| 15 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-4.md) | 132 | `declaration-track:2f3dda882b6828199fb229b6321561fc03ee5f451643dfe48ad9d55ca8299efb` |
| 16 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-17.md) | 136 | `declaration-track:cbf1d82e1676955fef121f6121f0f2c14e5f6f72586ed830ec29b3c0b95e1902` |
| 17 | `def` | [some](../../../../RealFunctions/ENNReal.lean/declarations/some.md) | 139 | `declaration-track:e6bf061a1f5cfc539a7fc90e22ef11aca997ee6fb0ec57b8b3cddf1bc4235215` |
| 18 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-6.md) | 141 | `declaration-track:41eddd6e8b5bc873fa0d4b41bd172f3a653746fb1430874f8d6b1606e21c52eb` |
| 19 | `def` | [recTopCoe](../../../../RealFunctions/ENNReal.lean/declarations/rectopcoe.md) | 144 | `declaration-track:b61352e2fd7df5bd4b4c3640d1b5849c52b5b3d99512caf0304bcc665da0395f` |
| 20 | `instance` | [canLift](../../../../RealFunctions/ENNReal.lean/declarations/canlift.md) | 147 | `declaration-track:f4d6603caeae9c5f43ee71f32ba91be7184f645e42395adb4687cb75ca1dd1c3` |
| 21 | `theorem` | [none_eq_top](../../../../RealFunctions/ENNReal.lean/declarations/none-eq-top.md) | 150 | `result-track:e2a31c141f01dbed8a778ccb567a47d1856ef0b423501f97bb048b11b73da2e3` |
| 22 | `theorem` | [some_eq_coe](../../../../RealFunctions/ENNReal.lean/declarations/some-eq-coe-source-edition-2.md) | 153 | `result-track:b299cb82bdd716c1043af3f05d27bbc63a962b4bda60d42df628362ee42eef84` |
| 23 | `theorem` | [some_eq_coe'](../../../../RealFunctions/ENNReal.lean/declarations/some-eq-coe.md) | 156 | `result-track:17c3b67dfaf539a38e39f91c6c25d8ac424b2c589c8ad61ee19f51bc39ccb25c` |
| 24 | `theorem` | [range_coe'](../../../../RealFunctions/ENNReal.lean/declarations/range-coe-source-edition-2.md) | 158 | `result-track:3f2210027068a76da0c312d353ef5e4590eac5bf11fbe28cce40d70d04eb273c` |
| 25 | `theorem` | [range_coe](../../../../RealFunctions/ENNReal.lean/declarations/range-coe.md) | 159 | `result-track:233c7f79b64f1f4f8a4f857d3900168ffa36af6d2f77f2a64a777943bc174dd2` |
| 26 | `def` | [toNNReal](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal.md) | 162 | `declaration-track:eb15e15ee129ec2eb8264b20bc1733751b2ba66b138b976c2e219069b58d1ee6` |
| 27 | `def` | [toReal](../../../../RealFunctions/ENNReal.lean/declarations/toreal.md) | 166 | `declaration-track:86292e2e79f1ab3622e59810d905858c8f534f5a509b045f51c0f8d3012b3917` |
| 28 | `def` | [ofReal](../../../../RealFunctions/ENNReal.lean/declarations/ofreal.md) | 170 | `declaration-track:9cbc9ad1b3c7b6eca319848cda138cea94549c94c7c59a27aaeef24cea8aa1d4` |
| 29 | `theorem` | [toNNReal_coe](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-coe.md) | 174 | `result-track:ae2f71d6aafe4df57afcea1bbff824c455da3cf15b6e1c519d59c249235f8380` |
| 30 | `theorem` | [coe_toNNReal](../../../../RealFunctions/ENNReal.lean/declarations/coe-tonnreal.md) | 178 | `result-track:5010f6e7488ed8a2b0fc3c749b296a721891017085288a04593eb2e426833373` |
| 31 | `theorem` | [ofReal_toReal](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-toreal.md) | 184 | `result-track:2a91a4307f29c13bea0e44c66fd43343417c4cf774c9570bfd7416925c5b4e2e` |
| 32 | `theorem` | [toReal_ofReal](../../../../RealFunctions/ENNReal.lean/declarations/toreal-ofreal.md) | 189 | `result-track:295b142522f097eb1f12e786bd192bbce41a3e48fbe4bea7b991c96e5410956b` |
| 33 | `theorem` | [toReal_ofReal'](../../../../RealFunctions/ENNReal.lean/declarations/toreal-ofreal-source-edition-2.md) | 193 | `result-track:785469ec42290fe193234be9bb3acb4a90a5b835bc070d84d6ca959c68412b28` |
| 34 | `theorem` | [coe_toNNReal_le_self](../../../../RealFunctions/ENNReal.lean/declarations/coe-tonnreal-le-self.md) | 196 | `result-track:9039be9992d857a0ef8e9cf802a7337c96cacb26bcce851ff1cda4d720d5233c` |
| 35 | `theorem` | [coe_nnreal_eq](../../../../RealFunctions/ENNReal.lean/declarations/coe-nnreal-eq.md) | 201 | `result-track:1927843b5b99e621722a52952d4d8c57e760b5b143bded52170a4674e571631b` |
| 36 | `theorem` | [ofReal_eq_coe_nnreal](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-eq-coe-nnreal.md) | 205 | `result-track:b2966dec096ce533ed47c155ca5972b27a44ff2db61db44eab4a15b7542c76b9` |
| 37 | `theorem` | [ofReal_coe_nnreal](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-coe-nnreal.md) | 210 | `result-track:90500686619ab7c980c0646ac5c3351b67ce4059e3bbaed7ecf8e9501cf4480f` |
| 38 | `theorem` | [coe_zero](../../../../RealFunctions/ENNReal.lean/declarations/coe-zero.md) | 213 | `result-track:f9cfd137c1dcfc10717b7828166bb5e2954d25643ae0508260e4ed83cadb7dfc` |
| 39 | `theorem` | [coe_one](../../../../RealFunctions/ENNReal.lean/declarations/coe-one.md) | 216 | `result-track:d29638def20feb52c143c9252dfd52d16985eece15762359fa206732bc2454ff` |
| 40 | `theorem` | [toReal_nonneg](../../../../RealFunctions/ENNReal.lean/declarations/toreal-nonneg.md) | 219 | `result-track:3faafbe730489e23afc10f2039f7b08daadd118a6b13b78fed17d3c5aabe6cbe` |
| 41 | `theorem` | [top_toNNReal](../../../../RealFunctions/ENNReal.lean/declarations/top-tonnreal.md) | 222 | `result-track:e1384220fb1ea70785f81233dde6598c141b9845267f7ae15e0b9c17ce44d676` |
| 42 | `theorem` | [top_toReal](../../../../RealFunctions/ENNReal.lean/declarations/top-toreal.md) | 225 | `result-track:4d3e9dce99daada991a369eefd37833f467757b9a2968a32e195f6811bf1db3f` |
| 43 | `theorem` | [one_toReal](../../../../RealFunctions/ENNReal.lean/declarations/one-toreal.md) | 228 | `result-track:cc35811e106b8c3532cc6e27662ba362dc049a59ad9d3fcebe4c38aad7e1d428` |
| 44 | `theorem` | [one_toNNReal](../../../../RealFunctions/ENNReal.lean/declarations/one-tonnreal.md) | 231 | `result-track:bb8ca64b9d56265dd9872435e67a641ea028a28b0e019e2dc2494c9d8e6cfacc` |
| 45 | `theorem` | [coe_toReal](../../../../RealFunctions/ENNReal.lean/declarations/coe-toreal.md) | 234 | `result-track:f14c4044641df2f7dabc3debf295b4e505d205a8386587890bd93d37c1652d01` |
| 46 | `theorem` | [zero_toNNReal](../../../../RealFunctions/ENNReal.lean/declarations/zero-tonnreal.md) | 237 | `result-track:d1cb7f0dc8cdbf14abb9c54b95f6a9490a8570269eb47b40e924bcc37565bde1` |
| 47 | `theorem` | [zero_toReal](../../../../RealFunctions/ENNReal.lean/declarations/zero-toreal.md) | 240 | `result-track:1e0c77f8e82da793b303f20a15cc0aa4d8e073e5cf6d818ceffb837443c0709d` |
| 48 | `theorem` | [ofReal_zero](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-zero.md) | 243 | `result-track:dec9153fd4c1016771a39b07e0497e78aab1aedc75e5bc2c332dac6f6510446d` |
| 49 | `theorem` | [ofReal_one](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-one.md) | 246 | `result-track:9a898f75ba9b6279f90158d981b82b4cec96082857552d3a217483146b62fc33` |
| 50 | `theorem` | [ofReal_toReal_le](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-toreal-le.md) | 249 | `result-track:0ec836095e364967f2b32178eccfc0593f4cfd58a168d4a055c3df4e2b272cbb` |
| 51 | `theorem` | [forall_ennreal](../../../../RealFunctions/ENNReal.lean/declarations/forall-ennreal.md) | 253 | `result-track:036a9a1fccd53648a8fa7b081b69a9bf5efb45d872fe7a861e27505917461974` |
| 52 | `theorem` | [forall_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/forall-ne-top.md) | 257 | `result-track:927942f1ff0d237f905fdff228722157ae0325aec1a0df2f705d3a4b4d02f6f2` |
| 53 | `theorem` | [exists_ne_top'](../../../../RealFunctions/ENNReal.lean/declarations/exists-ne-top-source-edition-2.md) | 261 | `result-track:a5690aaf2b46b8836e5fabe8df9ed7c1b8413535e30720f27195902959793553` |
| 54 | `theorem` | [exists_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/exists-ne-top.md) | 265 | `result-track:37e90bbc357a7b7e43ede15e900e204f5cc5d9018abc85218f2c9fb9ab0abdae` |
| 55 | `theorem` | [toNNReal_eq_zero_iff](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-eq-zero-iff.md) | 268 | `result-track:907b32c9fbd3aa35cee7378662e11be1a49c85b1ffa99bac4a79aa781814e0ea` |
| 56 | `theorem` | [toReal_eq_zero_iff](../../../../RealFunctions/ENNReal.lean/declarations/toreal-eq-zero-iff.md) | 272 | `result-track:86ccc7b70976e08ee71a18dcfa06aea83086a9da41c59f0a06e144f5ea599b06` |
| 57 | `theorem` | [toNNReal_ne_zero](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-ne-zero.md) | 276 | `result-track:c72e757b0b5830ab645b8242b5006bbf57db762b9c32d82b686e723b1b38f112` |
| 58 | `theorem` | [toReal_ne_zero](../../../../RealFunctions/ENNReal.lean/declarations/toreal-ne-zero.md) | 280 | `result-track:3e348f26022471aa41f0b276fea7934863e160e24668d262c57caabdfbac99cc` |
| 59 | `theorem` | [toNNReal_eq_one_iff](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-eq-one-iff.md) | 284 | `result-track:50f078c98d2a7ca9ba45beb4d14bea63f63ab3e1c25a0e7d649f93efbf482806` |
| 60 | `theorem` | [toReal_eq_one_iff](../../../../RealFunctions/ENNReal.lean/declarations/toreal-eq-one-iff.md) | 288 | `result-track:359490ec57b0d786120d35eaf09e3329c0f31ceb64cf0c3c793ed03865f01d1e` |
| 61 | `theorem` | [toNNReal_ne_one](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-ne-one.md) | 292 | `result-track:8e5fc1a2865b5b1c9aecd33804c96a1af81df1319fe35ae6f60e03bb95bfe6f8` |
| 62 | `theorem` | [toReal_ne_one](../../../../RealFunctions/ENNReal.lean/declarations/toreal-ne-one.md) | 296 | `result-track:f75dc0be640118adc0b370525bf49acb87aad429c893667641d3bea5436fb295` |
| 63 | `theorem` | [coe_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/coe-ne-top.md) | 300 | `result-track:82512e1ad8073c67e874e3c4fe495958b7986c879b5e2cde5a38c86a6ed2aad8` |
| 64 | `theorem` | [top_ne_coe](../../../../RealFunctions/ENNReal.lean/declarations/top-ne-coe.md) | 303 | `result-track:9360e89180a34dd053b77a4a3f857cb53328ebc1c22f26e2b7c8fbb418da1401` |
| 65 | `theorem` | [coe_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/coe-lt-top.md) | 306 | `result-track:fc8778efc6e2fdca8c36f392e37df0864aa1c04d6764adf2185ed7cd727a04e1` |
| 66 | `theorem` | [ofReal_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-ne-top.md) | 309 | `result-track:d5fcd27c8c8c6c0cd9bf6aa5d51d52aff8b15ad121249de04a5ec5fb2950f806` |
| 67 | `theorem` | [ofReal_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-lt-top.md) | 312 | `result-track:3266001501597789c2224ee456809df7a79bfed14bc745a4fb483f819596ea21` |
| 68 | `theorem` | [top_ne_ofReal](../../../../RealFunctions/ENNReal.lean/declarations/top-ne-ofreal.md) | 315 | `result-track:a2212709cc0c28a71caa796413e250ce403d6ff5e02745e443790c69a1f731db` |
| 69 | `theorem` | [ofReal_toReal_eq_iff](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-toreal-eq-iff.md) | 319 | `result-track:f7cf5247ffad29304ff80dd0cdd0aa3b832755287641c73819dc9c06dd5695b9` |
| 70 | `theorem` | [toReal_ofReal_eq_iff](../../../../RealFunctions/ENNReal.lean/declarations/toreal-ofreal-eq-iff.md) | 326 | `result-track:81ddeaca1f4b93504aca6d3d439aad87ff870be8886e8e888e2868cde0e4d16f` |
| 71 | `theorem` | [zero_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/zero-ne-top.md) | 332 | `result-track:9d024fa4143858b857e03f931a53341dac32fc546c6a1f22d8fe12c4a789db29` |
| 72 | `theorem` | [top_ne_zero](../../../../RealFunctions/ENNReal.lean/declarations/top-ne-zero.md) | 335 | `result-track:88001248cd831e73c71d9f7bd73b75ade7190b23c233dda3688a42b0ae43d69a` |
| 73 | `theorem` | [one_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/one-ne-top.md) | 338 | `result-track:7735434fd154c054a0e71c1d498d0f64a7278d5e22fdad5d8a59e3e7bcc7f901` |
| 74 | `theorem` | [top_ne_one](../../../../RealFunctions/ENNReal.lean/declarations/top-ne-one.md) | 341 | `result-track:836ed0b98088224e57578db9ac50aee46cfb0da534145cd5de8888373e083dbe` |
| 75 | `theorem` | [coe_eq_coe](../../../../RealFunctions/ENNReal.lean/declarations/coe-eq-coe.md) | 344 | `result-track:9f67f955fe35e4a7e1babdf4c19b41d3cd30f2780a8f4bda5ce0a220f8d0dfd1` |
| 76 | `theorem` | [coe_le_coe](../../../../RealFunctions/ENNReal.lean/declarations/coe-le-coe.md) | 347 | `result-track:465712c960004e29c9ed1c71ca73034c6d1a8ca9416e00fcf3efd33e96b77710` |
| 77 | `theorem` | [coe_lt_coe](../../../../RealFunctions/ENNReal.lean/declarations/coe-lt-coe.md) | 350 | `result-track:98c75eaa23b3d2862d854499dde50b0c92c3fbcc4fb82dd62706ec33a817b16e` |
| 78 | `theorem` | [coe_mono](../../../../RealFunctions/ENNReal.lean/declarations/coe-mono.md) | 353 | `result-track:5777d5e70a83a73464655538aebc1519d8388b5544acfdf1014340a497a5beee` |
| 79 | `theorem` | [coe_strictMono](../../../../RealFunctions/ENNReal.lean/declarations/coe-strictmono.md) | 356 | `result-track:d08575e9fce3150c355f163009c4d199236def8a4ddf0203440302bd078dd77a` |
| 80 | `theorem` | [coe_eq_zero](../../../../RealFunctions/ENNReal.lean/declarations/coe-eq-zero.md) | 358 | `result-track:4a442ae4a9a7c60016a857590f8568a42dfbb13334446c95d59fb39e1ef2a224` |
| 81 | `theorem` | [zero_eq_coe](../../../../RealFunctions/ENNReal.lean/declarations/zero-eq-coe.md) | 361 | `result-track:0c03a0bd22216fabe16504114e5ee23decc7b92dae9fa5faaed16b17f6690678` |
| 82 | `theorem` | [coe_eq_one](../../../../RealFunctions/ENNReal.lean/declarations/coe-eq-one.md) | 364 | `result-track:4f425802187b651d950b80537b8a3a14c3989cdf25654d4e957254d24067ab6d` |
| 83 | `theorem` | [one_eq_coe](../../../../RealFunctions/ENNReal.lean/declarations/one-eq-coe.md) | 367 | `result-track:ae0eb5944d5e15ae11aa4d47f429e8a34666a4465a9142d9f71f899539c0d3e7` |
| 84 | `theorem` | [coe_pos](../../../../RealFunctions/ENNReal.lean/declarations/coe-pos.md) | 370 | `result-track:05fc5099bfc30717c507a0f24d62b30864dbd0dd20c37e91a9f3c25df2a5e92c` |
| 85 | `theorem` | [coe_ne_zero](../../../../RealFunctions/ENNReal.lean/declarations/coe-ne-zero.md) | 373 | `result-track:bc24284e69e4cc5bcd6e196b0200986d137b13cfacab0a9c10c51b463dcf7f05` |
| 86 | `theorem` | [coe_add](../../../../RealFunctions/ENNReal.lean/declarations/coe-add.md) | 376 | `result-track:c174ac2f4163dcbc8572ee7e398dfb0db23bd191dd73b60617f04e787d01df7c` |
| 87 | `theorem` | [coe_mul](../../../../RealFunctions/ENNReal.lean/declarations/coe-mul.md) | 380 | `result-track:bbfa7ed109d59d0898d2bbef4cffa6dfbcc23967c896e547beeaec87ba992502` |
| 88 | `theorem` | [coe_ofNat](../../../../RealFunctions/ENNReal.lean/declarations/coe-ofnat.md) | 388 | `result-track:fb9280bf64bd1c46dc3afb5514482c392413213d900b7c7b83c28a91e3f20731` |
| 89 | `theorem` | [coe_two](../../../../RealFunctions/ENNReal.lean/declarations/coe-two.md) | 393 | `result-track:d6779915e496e1bd5af058b779da3c855685e0a57b9375bfd9d3481c01f6ee53` |
| 90 | `theorem` | [toNNReal_eq_toNNReal_iff](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-eq-tonnreal-iff.md) | 396 | `result-track:0862b052f97619a2aeb1fe7ad012e0d9b66bbfcc663ee966f0cc3ff9376afe54` |
| 91 | `theorem` | [toReal_eq_toReal_iff](../../../../RealFunctions/ENNReal.lean/declarations/toreal-eq-toreal-iff-source-edition-2.md) | 401 | `result-track:9a51f7c7218eb0f959354e91e7d2b63aa0b341dda937d95aeb696a6b94a54cce` |
| 92 | `theorem` | [toNNReal_eq_toNNReal_iff'](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-eq-tonnreal-iff-source-edition-2.md) | 406 | `result-track:10cc6c20f81ed4beb27a013eb4665130129128ea18d829a2f2cbca747e3cabb6` |
| 93 | `theorem` | [toReal_eq_toReal_iff'](../../../../RealFunctions/ENNReal.lean/declarations/toreal-eq-toreal-iff.md) | 411 | `result-track:2915e154e06bfa1bbe1aeb96011142a370d2617890349054c28910288c29ce6a` |
| 94 | `theorem` | [one_lt_two](../../../../RealFunctions/ENNReal.lean/declarations/one-lt-two.md) | 417 | `result-track:1b81010264f6de39f468185f2654160fccc26f965ba3a13fe7c08f03ec98ba4e` |
| 95 | `theorem` | [two_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/two-ne-top.md) | 421 | `result-track:07ea7c5104190bd189fe4b27c09e8b61f86d6995cc58b372d19f4f0f8264df65` |
| 96 | `instance` | [_root_.fact_one_le_one_ennreal](../../../../RealFunctions/ENNReal.lean/declarations/root-fact-one-le-one-ennreal.md) | 425 | `declaration-track:7e97130b809579dcdb72ad0d08c40902ccd65fffcfd30182d53dea9d6715f0f4` |
| 97 | `instance` | [_root_.fact_one_le_two_ennreal](../../../../RealFunctions/ENNReal.lean/declarations/root-fact-one-le-two-ennreal.md) | 430 | `declaration-track:734645ee7fb5a4bbf619b958ae2244a823d4df3a463944cae679ddcc14920abc` |
| 98 | `instance` | [_root_.fact_one_le_top_ennreal](../../../../RealFunctions/ENNReal.lean/declarations/root-fact-one-le-top-ennreal.md) | 435 | `declaration-track:4021ca8538bea5275f047b2f60a46a69e887e98b81a8577acb791d3173b82665` |
| 99 | `def` | [neTopEquivNNReal](../../../../RealFunctions/ENNReal.lean/declarations/netopequivnnreal.md) | 440 | `declaration-track:c798abe0b87d078560dcec5fd1d21aa2906449862fc5ceb4a15963b4816f2d1b` |
| 100 | `theorem` | [cinfi_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/cinfi-ne-top.md) | 447 | `result-track:cd358272721428a33e9c26c99c9eca659c4049cf9700216f6f4451f65b823eb2` |
| 101 | `theorem` | [iInf_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/iinf-ne-top.md) | 451 | `result-track:c335bc5396f7462f84128e2074a878ab65f22b7152cdead66e7fbef915446f9d` |
| 102 | `theorem` | [csupr_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/csupr-ne-top.md) | 455 | `result-track:5a410a417d4eaf8e4f13670dca3da0ce155d1970d166310c6d1e877a29b75bf8` |
| 103 | `theorem` | [iSup_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/isup-ne-top.md) | 459 | `result-track:642a4cdf1914e463c8290950bc1dd852a043feea7e6c3c1f3e69e0f84bc441d0` |
| 104 | `theorem` | [iInf_ennreal](../../../../RealFunctions/ENNReal.lean/declarations/iinf-ennreal.md) | 464 | `result-track:3e02c2bc2c2a0fbde8e173924493ce41aad67250e2dcd745dbc81dd2a5df66ac` |
| 105 | `theorem` | [iSup_ennreal](../../../../RealFunctions/ENNReal.lean/declarations/isup-ennreal.md) | 469 | `result-track:c0f0ee42d665ac571d9d27095b34e2b4239dff0d629b5607ee125095d99891ec` |
| 106 | `def` | [ofNNRealHom](../../../../RealFunctions/ENNReal.lean/declarations/ofnnrealhom.md) | 475 | `declaration-track:19fa1d991154fcaa850a9e91a45dbcca0a3d955d3e5fa44e7d8ab95cdfc96729` |
| 107 | `theorem` | [coe_ofNNRealHom](../../../../RealFunctions/ENNReal.lean/declarations/coe-ofnnrealhom.md) | 483 | `result-track:7ebfb375bc0ffab0f19dd4651ba547b4fca38bd42ba3a11133f8cc5de415b110` |
| 108 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-7.md) | 490 | `declaration-track:43ac58bc5c788855c4769a7cb3cb88b46595d16290eb82c2283507a3b2e446ff` |
| 109 | `theorem` | [smul_def](../../../../RealFunctions/ENNReal.lean/declarations/smul-def.md) | 493 | `result-track:796bc8c74b137a8ae796f9c176a7116c72268f85ccf9d76189fd54466d2bb90c` |
| 110 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-9.md) | 497 | `declaration-track:6c28697421874dfcf99756e828eb10e7b3fa52e62a806a7e3811ed772652a0c4` |
| 111 | `instance` | [smulCommClass_left](../../../../RealFunctions/ENNReal.lean/declarations/smulcommclass-left.md) | 500 | `declaration-track:0a0bde2c1a7196194c7783b0b5c3a385b8ec7388012ed6c9a0da96deed508da5` |
| 112 | `instance` | [smulCommClass_right](../../../../RealFunctions/ENNReal.lean/declarations/smulcommclass-right.md) | 504 | `declaration-track:f0fd604d3ee9f492c4f28f9ac9edc85361137b25ab78c4fbc125c2fbe0c9039d` |
| 113 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-5.md) | 509 | `declaration-track:39880749113eb23f49018a527ff5f8ebc35508e5d57fe7e993ea8c193adaaaca` |
| 114 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-12.md) | 514 | `declaration-track:90e723facb4bb2adcc99057d6a301de74097f8d840a7daae2bea115be8574b80` |
| 115 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-19.md) | 518 | `declaration-track:e623f45fd937c87de4b9e2721930b67bfa35ba0435843c43090d7b4473ac99a7` |
| 116 | `example` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/example.md) | 525 | `declaration-track:c13af089dd361b8954b0252eac7eabc8d8f4adc459a1dcf46623c28240039b6e` |
| 117 | `example` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/example-source-edition-2.md) | 527 | `declaration-track:ed71bb64ffc0e89264e7138552ed7f330095e6123557ef39fb473c35d947cc90` |
| 118 | `theorem` | [coe_smul](../../../../RealFunctions/ENNReal.lean/declarations/coe-smul.md) | 529 | `result-track:835623abcbb86f465087cb447c46cb58787e868b1c56dd96c56aebeeb14d9fe8` |
| 119 | `theorem` | [coe_indicator](../../../../RealFunctions/ENNReal.lean/declarations/coe-indicator.md) | 538 | `result-track:b9934e3899e4f2a96b31afe1ac67096660a41e7d687307b12d162421125a58fa` |
| 120 | `theorem` | [coe_pow](../../../../RealFunctions/ENNReal.lean/declarations/coe-pow.md) | 544 | `result-track:84413eb033bb94ba48c16ae040fffd2085bd6f710968004fd9bb7bdc72389d4e` |
| 121 | `theorem` | [add_eq_top](../../../../RealFunctions/ENNReal.lean/declarations/add-eq-top.md) | 548 | `result-track:e718464c7109e80628263f5064ea6386f6dc84309610a4c60e0bbc564e29f86e` |
| 122 | `theorem` | [add_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/add-lt-top.md) | 551 | `result-track:43088f966bb21ee9a4955c2a32f90b15ef2da092c314c64420318332478e2d11` |
| 123 | `theorem` | [toNNReal_add](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-add.md) | 554 | `result-track:b3e3ea77a6edd0c024c073271f2e36fa386bc584f91235899b4166b65a78a53a` |
| 124 | `theorem` | [not_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/not-lt-top.md) | 561 | `result-track:5cdb3ababff69e7db006e056db63e58aad09d00c025c43ce52d81a695fab9f1b` |
| 125 | `theorem` | [add_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/add-ne-top.md) | 564 | `result-track:f66990796d8ac98c2dfd012b49c08f59e204bcbdc0af2d451bebafe9558d2350` |
| 126 | `theorem` | [mul_top'](../../../../RealFunctions/ENNReal.lean/declarations/mul-top.md) | 567 | `result-track:1f81cee16a7008b80705296e425cca4ea440bf5169c9e27cb5e28ddf0b19d304` |
| 127 | `theorem` | [mul_top](../../../../RealFunctions/ENNReal.lean/declarations/mul-top-source-edition-2.md) | 571 | `result-track:504a9eab61ddcd0bc623272584a20f98d59650ae226391fcbf73c52aaa1d9d8a` |
| 128 | `theorem` | [top_mul'](../../../../RealFunctions/ENNReal.lean/declarations/top-mul.md) | 573 | `result-track:233fea63f9a4e5c817d00123eaf20197677c70b93f4cd75c3854487f9a69ced9` |
| 129 | `theorem` | [top_mul](../../../../RealFunctions/ENNReal.lean/declarations/top-mul-source-edition-2.md) | 577 | `result-track:61fed3b0b3be2c807a99de387d6f66a30bc8f241fc54c58f358ed028fd856fc4` |
| 130 | `theorem` | [top_mul_top](../../../../RealFunctions/ENNReal.lean/declarations/top-mul-top.md) | 579 | `result-track:6dbae9f10e89b3f602bc6f189a3182e732342747d29c2b1cc0661e19bc31e6b2` |
| 131 | `theorem` | [smul_top](../../../../RealFunctions/ENNReal.lean/declarations/smul-top.md) | 583 | `result-track:77f4b98a903bea62d5b5c841b18f209e0ac063cbb412bfe215d84fd968f1e0fa` |
| 132 | `theorem` | [top_pow](../../../../RealFunctions/ENNReal.lean/declarations/top-pow.md) | 593 | `result-track:3981bfb14facb17581aeb95ffd802a966c3981b3edcd2bd19e52b202cb67d0ac` |
| 133 | `theorem` | [mul_eq_top](../../../../RealFunctions/ENNReal.lean/declarations/mul-eq-top.md) | 598 | `result-track:d55f0de2301aff73e2ded05b6a5bdc9e9719f8d4c80498072d895e78064d40e0` |
| 134 | `theorem` | [mul_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/mul-lt-top.md) | 602 | `result-track:2094fe6b496ff0b5bb8b6bf26cb734f082290347edce1d1ad49cba5ffdbec2d0` |
| 135 | `theorem` | [mul_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/mul-ne-top.md) | 605 | `result-track:50f04d8a1b93056241778c47746936b433bc48fec6f727506d1f916164aa77a3` |
| 136 | `theorem` | [lt_top_of_mul_ne_top_left](../../../../RealFunctions/ENNReal.lean/declarations/lt-top-of-mul-ne-top-left.md) | 608 | `result-track:21d0d649d8eaefad5e79bcecbfc733e7ca2cc8af12e44012a8dfb92be6b623e2` |
| 137 | `theorem` | [lt_top_of_mul_ne_top_right](../../../../RealFunctions/ENNReal.lean/declarations/lt-top-of-mul-ne-top-right.md) | 612 | `result-track:76e3ce50de2afd779493556c1d3ce4f723a8d17d1c2330497c15ff8f3a539c94` |
| 138 | `theorem` | [mul_lt_top_iff](../../../../RealFunctions/ENNReal.lean/declarations/mul-lt-top-iff.md) | 616 | `result-track:0cb26d9b266fbfe201c6651468f8eaec511218b3227f1c267b1f6f64b7a07073` |
| 139 | `theorem` | [mul_self_lt_top_iff](../../../../RealFunctions/ENNReal.lean/declarations/mul-self-lt-top-iff.md) | 625 | `result-track:836a2d9af068c224bb843a05dcf3b012bedc5b248646615ea0fd5b71272fdaff` |
| 140 | `theorem` | [mul_pos_iff](../../../../RealFunctions/ENNReal.lean/declarations/mul-pos-iff.md) | 631 | `result-track:1103cde0c6e9c41ceca0a973dd03b0c9fa29f332c2d69ee08f1912447df80d55` |
| 141 | `theorem` | [mul_pos](../../../../RealFunctions/ENNReal.lean/declarations/mul-pos.md) | 635 | `result-track:2f7d6b7f3f46658e0d16929c3c31205a7dcdc10995a40b4c0ad859c7aa203b6d` |
| 142 | `theorem` | [pow_eq_top_iff](../../../../RealFunctions/ENNReal.lean/declarations/pow-eq-top-iff.md) | 640 | `result-track:5aba7bfaf11a7b8aae8b2b2fe71915e118d3669e3c4d48f4f45659da888dc4c2` |
| 143 | `theorem` | [pow_eq_top](../../../../RealFunctions/ENNReal.lean/declarations/pow-eq-top.md) | 648 | `result-track:e58b665f83a92365ff6cf769e6b2607f01f36277b53d2a77261d006bdc88ede2` |
| 144 | `theorem` | [pow_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/pow-ne-top.md) | 652 | `result-track:dbc2cde3f8ae059da615ca3232bef68baac40e896aadf1e5269bd290965a4595` |
| 145 | `theorem` | [pow_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/pow-lt-top.md) | 656 | `result-track:c915fac0351f4b6dd01388faff1cc8d5537d3d762e27f8e6de8c498e35a965af` |
| 146 | `theorem` | [coe_finset_sum](../../../../RealFunctions/ENNReal.lean/declarations/coe-finset-sum.md) | 661 | `result-track:0dd0ac3cdda3f33f705149436f0ba06726bb9c098f295ca1ca5a38df304955f8` |
| 147 | `theorem` | [coe_finset_prod](../../../../RealFunctions/ENNReal.lean/declarations/coe-finset-prod.md) | 666 | `result-track:c7624bb9dec07edb7ae634a3202f4eee05ecc492466579b964f8449ca415c39e` |
| 148 | `theorem` | [bot_eq_zero](../../../../RealFunctions/ENNReal.lean/declarations/bot-eq-zero.md) | 672 | `result-track:1f3677420daf8abfd6c96ce5945eefa654148ba57f458dfd0b2985e4a67cacf0` |
| 149 | `theorem` | [not_top_le_coe](../../../../RealFunctions/ENNReal.lean/declarations/not-top-le-coe.md) | 677 | `result-track:5fc1a36516d72cead6a460915869a52d7137ff866dd1dfc4306aae126a859174` |
| 150 | `theorem` | [one_le_coe_iff](../../../../RealFunctions/ENNReal.lean/declarations/one-le-coe-iff.md) | 681 | `result-track:0ce5c93bacc2db0c7fafce4c74bdde687b5f81858e4f40fa3ee10219dbeb89aa` |
| 151 | `theorem` | [coe_le_one_iff](../../../../RealFunctions/ENNReal.lean/declarations/coe-le-one-iff.md) | 685 | `result-track:9dfa30e82bb77ab607c334474db82b1be9d8e14067f617bd5106ccfdefab3e0d` |
| 152 | `theorem` | [coe_lt_one_iff](../../../../RealFunctions/ENNReal.lean/declarations/coe-lt-one-iff.md) | 689 | `result-track:c39629dc91553ff48a474ff4c531ec057a4f8133f3397de4a615eaefc8cae99b` |
| 153 | `theorem` | [one_lt_coe_iff](../../../../RealFunctions/ENNReal.lean/declarations/one-lt-coe-iff.md) | 693 | `result-track:181c7443a1083c322b7d0466794932fd423e5375783357545882d97f5160628d` |
| 154 | `theorem` | [coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/coe-nat.md) | 697 | `result-track:d6d38d714a9b3958ed352897a770cec140ec134d366050ef6c72e7c857e0e61f` |
| 155 | `theorem` | [ofReal_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-coe-nat.md) | 700 | `result-track:ba1c63a4f576ac62fe89dd6037a19e64d4393f6fc3d661ea6e513813a0f8ef80` |
| 156 | `theorem` | [ofReal_ofNat](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-ofnat.md) | 703 | `result-track:140af959b690015a163729b7b143e5ee1f413441a98afd246105f411510f9934` |
| 157 | `theorem` | [nat_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/nat-ne-top.md) | 707 | `result-track:a9bdd3fc95117a32699b9c34e0643c7da2136770ca01202f52131ae2c7b81142` |
| 158 | `theorem` | [top_ne_nat](../../../../RealFunctions/ENNReal.lean/declarations/top-ne-nat.md) | 710 | `result-track:2ff17fb328d608ea9d5b9d88567e5138c40c5e9519f1581248fa6e6061b91eb4` |
| 159 | `theorem` | [one_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/one-lt-top.md) | 713 | `result-track:a2b92951cc29f207a1b1c72f42f65f3a0834a652dbe8072c310b8e9f53aeb52f` |
| 160 | `theorem` | [toNNReal_nat](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-nat.md) | 717 | `result-track:665c7f8e65885189dedd3c1f0cb479537cc794fd967eca0faa11fb7c4ef54538` |
| 161 | `theorem` | [toReal_nat](../../../../RealFunctions/ENNReal.lean/declarations/toreal-nat.md) | 722 | `result-track:0b89880a7081608c3e97d670ca627e93f8edbcc01a59446ea2ddba451737d201` |
| 162 | `theorem` | [toReal_ofNat](../../../../RealFunctions/ENNReal.lean/declarations/toreal-ofnat.md) | 726 | `result-track:610dc50c18a8905ec0f8d7406d31658fe676b8772da5144a527b31b9239f7d5f` |
| 163 | `theorem` | [le_coe_iff](../../../../RealFunctions/ENNReal.lean/declarations/le-coe-iff.md) | 730 | `result-track:fe0e529d54472e200c95d492a22789b9d54ece2308ce97e2403025e95a91b40e` |
| 164 | `theorem` | [coe_le_iff](../../../../RealFunctions/ENNReal.lean/declarations/coe-le-iff.md) | 733 | `result-track:0435113039afeda3da1e925725bbbec3711297cb1c6dd05ad3eed7e4e376dbfe` |
| 165 | `theorem` | [lt_iff_exists_coe](../../../../RealFunctions/ENNReal.lean/declarations/lt-iff-exists-coe.md) | 736 | `result-track:e787c35ce0799c0961b1a3cd5a18f5ac3589c883fef13c5d3bbbdbac1dc9b019` |
| 166 | `theorem` | [toReal_le_coe_of_le_coe](../../../../RealFunctions/ENNReal.lean/declarations/toreal-le-coe-of-le-coe.md) | 740 | `result-track:e072cae97497c20fc259430f3ad3b4dd7880c5893b3bd273290bb0121e96ea06` |
| 167 | `theorem` | [coe_finset_sup](../../../../RealFunctions/ENNReal.lean/declarations/coe-finset-sup.md) | 746 | `result-track:fcfa318826cedcc042091e055fed60111ed88b3c90dcee544390f5c72782c03a` |
| 168 | `theorem` | [max_eq_zero_iff](../../../../RealFunctions/ENNReal.lean/declarations/max-eq-zero-iff.md) | 750 | `result-track:362b0609839676731012b1b5526b7acae92150160544e84650c22fafbc2cade2` |
| 169 | `theorem` | [max_zero_left](../../../../RealFunctions/ENNReal.lean/declarations/max-zero-left.md) | 753 | `result-track:1f24f3d9dc3e5fc925b36797fcf8c5be8e7175df44689c2f29b37095fe897630` |
| 170 | `theorem` | [max_zero_right](../../../../RealFunctions/ENNReal.lean/declarations/max-zero-right.md) | 757 | `result-track:028a9f00e40f21502b838b2e1af95b0e727a88c1bd6f68ae3c9a94b76bff4d5c` |
| 171 | `theorem` | [sup_eq_max](../../../../RealFunctions/ENNReal.lean/declarations/sup-eq-max.md) | 761 | `result-track:2943142dcdc1afb411f7d15ae23b24443f3c8412ba5006caf9fd3043ab0aea7e` |
| 172 | `theorem` | [pow_pos](../../../../RealFunctions/ENNReal.lean/declarations/pow-pos.md) | 764 | `result-track:1e14c2247263fd82f1d7e8f6dc4cbd14cd96b3a69636fc9ee7733d09e29ee126` |
| 173 | `theorem` | [pow_ne_zero](../../../../RealFunctions/ENNReal.lean/declarations/pow-ne-zero.md) | 768 | `result-track:9b24174eccad69c2f0ad27a600b578c8e7b9a20ff755d00ef68d7b4d5ef38a71` |
| 174 | `theorem` | [not_lt_zero](../../../../RealFunctions/ENNReal.lean/declarations/not-lt-zero.md) | 772 | `result-track:5e0c9a89185de9c1347b3960ee7d84e6c8738193f280f0b9c9b296ec60baff09` |
| 175 | `theorem` | [le_of_add_le_add_left](../../../../RealFunctions/ENNReal.lean/declarations/le-of-add-le-add-left.md) | 775 | `result-track:4305b1bf6c579a0860ffb826049170d895c12ed3a70813075458e5440f49fddf` |
| 176 | `theorem` | [le_of_add_le_add_right](../../../../RealFunctions/ENNReal.lean/declarations/le-of-add-le-add-right.md) | 779 | `result-track:1aaeecfbf826c82f4c390c6216ad5d2bf431b5459d37dd50b968af6ca3e02afa` |
| 177 | `theorem` | [add_lt_add_left](../../../../RealFunctions/ENNReal.lean/declarations/add-lt-add-left.md) | 783 | `result-track:6163f25a78bc566f23bef0c696d10f30c9dc9debaf79770a84e88537bc6c035f` |
| 178 | `theorem` | [add_lt_add_right](../../../../RealFunctions/ENNReal.lean/declarations/add-lt-add-right.md) | 787 | `result-track:42c62c01e071adf7c9c0e974daced65dfe96131b58b84ee1121bebbe1224210a` |
| 179 | `theorem` | [add_le_add_iff_left](../../../../RealFunctions/ENNReal.lean/declarations/add-le-add-iff-left.md) | 791 | `result-track:9b8766a02a1e40d9a7aa84f155b443e13221530a90b54a77000bdec3e0a50b0b` |
| 180 | `theorem` | [add_le_add_iff_right](../../../../RealFunctions/ENNReal.lean/declarations/add-le-add-iff-right.md) | 795 | `result-track:ec46cfdc72d6427b298876fea5d6f55ba03a905771a7c291395745fcd2c4c218` |
| 181 | `theorem` | [add_lt_add_iff_left](../../../../RealFunctions/ENNReal.lean/declarations/add-lt-add-iff-left.md) | 799 | `result-track:b7426df18dd6b86e95b60e6788f51881e4f0afdddea24a1fc00207a52fecc64c` |
| 182 | `theorem` | [add_lt_add_iff_right](../../../../RealFunctions/ENNReal.lean/declarations/add-lt-add-iff-right.md) | 803 | `result-track:d0418c5fb21d487673c17e08b6566f00e2032110a2c5e0442db1db902aa55e2b` |
| 183 | `theorem` | [add_lt_add_of_le_of_lt](../../../../RealFunctions/ENNReal.lean/declarations/add-lt-add-of-le-of-lt.md) | 807 | `result-track:550d9dfee06b3ca2d12cda31fa44597b0fe5fdb7177caad4d626e7e15ee47619` |
| 184 | `theorem` | [add_lt_add_of_lt_of_le](../../../../RealFunctions/ENNReal.lean/declarations/add-lt-add-of-lt-of-le.md) | 811 | `result-track:0eb5f2d1cb52e4960c4d8ddce4a565a51636c929bd1911adf5cffbf606e14825` |
| 185 | `instance` | [contravariantClass_add_lt](../../../../RealFunctions/ENNReal.lean/declarations/contravariantclass-add-lt.md) | 815 | `declaration-track:aec6328e7529b2d1289b8a05c653445046aa5b3a04a24fe6ef92f6fe8711d9f5` |
| 186 | `theorem` | [lt_add_right](../../../../RealFunctions/ENNReal.lean/declarations/lt-add-right.md) | 819 | `result-track:d5d3ed60b2ed90e88a5fe0279f501669debd9188066f8a9cb212e5e5a4ad223b` |
| 187 | `theorem` | [lt_iff_exists_rat_btwn](../../../../RealFunctions/ENNReal.lean/declarations/lt-iff-exists-rat-btwn.md) | 825 | `result-track:b47aae41b2dba81e56d512b3cb23e4e0715f6b12927c3e173cdb1b568bdd7703` |
| 188 | `theorem` | [lt_iff_exists_real_btwn](../../../../RealFunctions/ENNReal.lean/declarations/lt-iff-exists-real-btwn.md) | 836 | `result-track:1f2baa432cd3b9fa148e69de6c9b3bfe857483c3fc387d64a5d0c99117501f93` |
| 189 | `theorem` | [lt_iff_exists_nnreal_btwn](../../../../RealFunctions/ENNReal.lean/declarations/lt-iff-exists-nnreal-btwn.md) | 844 | `result-track:bbe98b50889be0b784359e9f704951c802fa8d2f83ffe0fbb1293f450207b093` |
| 190 | `theorem` | [lt_iff_exists_add_pos_lt](../../../../RealFunctions/ENNReal.lean/declarations/lt-iff-exists-add-pos-lt.md) | 848 | `result-track:7ba014a48162daab03cd291077655d2ff6fd30de683a19f16ae8d27afcb29e97` |
| 191 | `theorem` | [le_of_forall_pos_le_add](../../../../RealFunctions/ENNReal.lean/declarations/le-of-forall-pos-le-add.md) | 857 | `result-track:ab2bea7f039caa51b34be7194d8ac635dc7fb64d60aaa4e8ee3373a5df9bf915` |
| 192 | `theorem` | [coe_nat_lt_coe](../../../../RealFunctions/ENNReal.lean/declarations/coe-nat-lt-coe.md) | 863 | `result-track:455c7993c565783e1334d1d7fd014abca3c311d4b8790898eb4e6fc819ffcf96` |
| 193 | `theorem` | [coe_lt_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/coe-lt-coe-nat.md) | 867 | `result-track:980e6664b4fa58c4f0746f312f1787857fbf5e304b6ca7eb473535407a8a1b4b` |
| 194 | `theorem` | [exists_nat_gt](../../../../RealFunctions/ENNReal.lean/declarations/exists-nat-gt.md) | 871 | `result-track:32db910ec057b78a1d6208bbe1d0ede7332b47d1a30fbe239f73d1e4b0f5c632` |
| 195 | `theorem` | [iUnion_Iio_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/iunion-iio-coe-nat.md) | 878 | `result-track:91a99aaf06152c42a01764491b422de5cabb67c8bee40ee0f52f49d01d652606` |
| 196 | `theorem` | [iUnion_Iic_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/iunion-iic-coe-nat.md) | 885 | `result-track:7af985432d3c7c0c9d8e5dab15b81f60d9ae02ac7306ab9f13d1aa8a2afef31b` |
| 197 | `theorem` | [iUnion_Ioc_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/iunion-ioc-coe-nat.md) | 891 | `result-track:dc9fecef290736ec5fd1d96b5bc303c7163afdd3a0535f3fe1775f5e98202f75` |
| 198 | `theorem` | [iUnion_Ioo_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/iunion-ioo-coe-nat.md) | 896 | `result-track:d65e249120cdadf6a015034063ec6de5cd9bc0227ecf1d21e61e0b85b53ddf00` |
| 199 | `theorem` | [iUnion_Icc_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/iunion-icc-coe-nat.md) | 901 | `result-track:905abcf49f473ffca076e43e9d3b48875952207ee95c5c1091ef0c3533f57a42` |
| 200 | `theorem` | [iUnion_Ico_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/iunion-ico-coe-nat.md) | 906 | `result-track:f6262bc59e92a53bf81791e71f205ed78d665b936c36cdb98646e9d503dac2ec` |
| 201 | `theorem` | [iInter_Ici_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/iinter-ici-coe-nat.md) | 911 | `result-track:7d62fa151e6da3d4e694b2e687f93195b09fe343174ca073e79404450448b403` |
| 202 | `theorem` | [iInter_Ioi_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/iinter-ioi-coe-nat.md) | 916 | `result-track:fc51a91f23822274aa5eb9b50ee96e155d80107a79d1fd51b2a44bd5b8da6739` |
| 203 | `theorem` | [add_lt_add](../../../../RealFunctions/ENNReal.lean/declarations/add-lt-add.md) | 921 | `result-track:502f0f8a26c7fa3d734fc5cebf3d4afa0b52ea2fc07a1dd80e90ae975b93488b` |
| 204 | `theorem` | [coe_min](../../../../RealFunctions/ENNReal.lean/declarations/coe-min.md) | 931 | `result-track:773b60e8e3c587bda69602f974c58b854a4da7e61bd527c7f68d1569ccd6efd8` |
| 205 | `theorem` | [coe_max](../../../../RealFunctions/ENNReal.lean/declarations/coe-max.md) | 935 | `result-track:4225ecb2d1308e2da3dcfc747e14e436ce6682b61a9d7e97df7eb6d235c890b3` |
| 206 | `theorem` | [le_of_top_imp_top_of_toNNReal_le](../../../../RealFunctions/ENNReal.lean/declarations/le-of-top-imp-top-of-tonnreal-le.md) | 938 | `result-track:60484cc66acaad7906e8123e38437cb1d364a0b9ef9e34f636bbcbf55f172e40` |
| 207 | `theorem` | [abs_toReal](../../../../RealFunctions/ENNReal.lean/declarations/abs-toreal.md) | 948 | `result-track:e46d281ff9f52903684d8a2e5480eb2410c083beeb1812ec45b5482d4db2e4e3` |
| 208 | `theorem` | [coe_sSup](../../../../RealFunctions/ENNReal.lean/declarations/coe-ssup.md) | 954 | `result-track:34451160a9d39a0a0222d28adac33771874a90bf5dcba12b9e128c4cc78e0574` |
| 209 | `theorem` | [coe_sInf](../../../../RealFunctions/ENNReal.lean/declarations/coe-sinf.md) | 958 | `result-track:f7820b26c030199d3f359166eee760ee88bc7b23c5b4b3c7b08732ab1dbe24fb` |
| 210 | `theorem` | [coe_iSup](../../../../RealFunctions/ENNReal.lean/declarations/coe-isup.md) | 962 | `result-track:b484a7731937089dace32747de696b8d44ef06b9316992f34570aae05eda0f98` |
| 211 | `theorem` | [coe_iInf](../../../../RealFunctions/ENNReal.lean/declarations/coe-iinf.md) | 968 | `result-track:24bb0eea76e0db5f3f562de82b487eb8c59b807f8cd66c83f0b20d81384a3290` |
| 212 | `theorem` | [coe_mem_upperBounds](../../../../RealFunctions/ENNReal.lean/declarations/coe-mem-upperbounds.md) | 972 | `result-track:e247c81557c5c877964733abbeb25839aedf27f7e5dd5db77a197262d279704f` |
| 213 | `theorem` | [iSup_coe_eq_top](../../../../RealFunctions/ENNReal.lean/declarations/isup-coe-eq-top.md) | 977 | `result-track:eb0e32510b8aaa274d50935741a659d8e29807a2eec9adb77da987ac4fbdc3ff` |
| 214 | `theorem` | [iSup_coe_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/isup-coe-lt-top.md) | 981 | `result-track:8973c514d6fa2124c1f44a92b2106af5ffad671a7d1e1fb1ecbad3296ade05ac` |
| 215 | `theorem` | [mul_lt_mul](../../../../RealFunctions/ENNReal.lean/declarations/mul-lt-mul.md) | 991 | `result-track:7e9544ef7749629a98c0fa5dfd81f850c814fd7275303215d6c31f5e272752e1` |
| 216 | `theorem` | [mul_left_mono](../../../../RealFunctions/ENNReal.lean/declarations/mul-left-mono.md) | 1004 | `result-track:b1ebd34bc6ca683cbc27595b7e35000e2ca8c592140643e6384a3985f7cca420` |
| 217 | `theorem` | [mul_right_mono](../../../../RealFunctions/ENNReal.lean/declarations/mul-right-mono.md) | 1008 | `result-track:a9fff7bcc834afd520804d108133a44f6e483f096cd1fc85791fec0a1ccf36d3` |
| 218 | `theorem` | [pow_strictMono](../../../../RealFunctions/ENNReal.lean/declarations/pow-strictmono.md) | 1012 | `result-track:111d19631487687dae4b58c49931afb4c556a15e68a598475f3816edd8b19779` |
| 219 | `theorem` | [pow_lt_pow_of_lt_left](../../../../RealFunctions/ENNReal.lean/declarations/pow-lt-pow-of-lt-left.md) | 1018 | `result-track:8d5825aef47b2f36410e94bb6d6d8ee909cf6d7fffb9d9fc0a86936427f964b4` |
| 220 | `theorem` | [max_mul](../../../../RealFunctions/ENNReal.lean/declarations/max-mul.md) | 1022 | `result-track:5781edc2fd5255141d8de9a61ad0472c57f1bdd825f22279e3ee16ee6482f386` |
| 221 | `theorem` | [mul_max](../../../../RealFunctions/ENNReal.lean/declarations/mul-max.md) | 1025 | `result-track:bbd8349dfd36c82fb7bd7ddd86cd67446636c5008e1b213f7f3c645c546d0d34` |
| 222 | `theorem` | [mul_left_strictMono](../../../../RealFunctions/ENNReal.lean/declarations/mul-left-strictmono.md) | 1029 | `result-track:76f8eb75977a93dac9e27fcba16b03d066b631e318bbc98286cb69ce0361641c` |
| 223 | `theorem` | [mul_lt_mul_left'](../../../../RealFunctions/ENNReal.lean/declarations/mul-lt-mul-left.md) | 1038 | `result-track:b5816443d849fd6b7d6c3fd01a5ff274afdab9925661741aabbaa5088ccf5eab` |
| 224 | `theorem` | [mul_lt_mul_right'](../../../../RealFunctions/ENNReal.lean/declarations/mul-lt-mul-right.md) | 1042 | `result-track:79251374ce8689f8fb647bcdf67bb429f8e83f9976bf8a35a89100f01b57f292` |
| 225 | `theorem` | [mul_eq_mul_left](../../../../RealFunctions/ENNReal.lean/declarations/mul-eq-mul-left.md) | 1047 | `result-track:69d7a328634ecf0aad0b60e4753d8aaa98ff2092ec9f723de2465de795fe7cfd` |
| 226 | `theorem` | [mul_eq_mul_right](../../../../RealFunctions/ENNReal.lean/declarations/mul-eq-mul-right.md) | 1052 | `result-track:669574d79f7ae2c5f6e58d6ea4c58209af1c249f6d807f95500d123766cec11a` |
| 227 | `theorem` | [mul_le_mul_left](../../../../RealFunctions/ENNReal.lean/declarations/mul-le-mul-left.md) | 1057 | `result-track:25c70b5b8775910fd54bbdd763a9321c7f97ede5804c4380ff8584358a105c61` |
| 228 | `theorem` | [mul_le_mul_right](../../../../RealFunctions/ENNReal.lean/declarations/mul-le-mul-right.md) | 1062 | `result-track:4c5a9aea4dba40c87fabba49f7b864fa93c366353066b1e723c9aecb74600219` |
| 229 | `theorem` | [mul_lt_mul_left](../../../../RealFunctions/ENNReal.lean/declarations/mul-lt-mul-left-source-edition-2.md) | 1067 | `result-track:cfc127c17a28bc66ec7d84f3cc6ac7b3b76a9a792963e0851e7db55655abb397` |
| 230 | `theorem` | [mul_lt_mul_right](../../../../RealFunctions/ENNReal.lean/declarations/mul-lt-mul-right-source-edition-2.md) | 1072 | `result-track:88e357d84bf49a72d67b5851db8628bd2ea21d8474ccd0a2652885117ce8cc81` |
| 231 | `theorem` | [addLECancellable_iff_ne](../../../../RealFunctions/ENNReal.lean/declarations/addlecancellable-iff-ne.md) | 1083 | `result-track:1c2276f40f5b5d77b84f3542bdde53254bfe3fb54c0b9f208c525698d2ba938e` |
| 232 | `theorem` | [cancel_of_ne](../../../../RealFunctions/ENNReal.lean/declarations/cancel-of-ne.md) | 1093 | `result-track:9fcf882bbd344967f29aa2b50ad2331858eeb4f984bbbc870ce358f8052f7d99` |
| 233 | `theorem` | [cancel_of_lt](../../../../RealFunctions/ENNReal.lean/declarations/cancel-of-lt.md) | 1098 | `result-track:03a2514b4793cd14edb1f57acd6490560c4356c682da3afc7fa8fea12a4c7edc` |
| 234 | `theorem` | [cancel_of_lt'](../../../../RealFunctions/ENNReal.lean/declarations/cancel-of-lt-source-edition-2.md) | 1103 | `result-track:ac5a38a08cdbcda217dcc02cd459767165f25efd06b821fdb67eacc8232749c6` |
| 235 | `theorem` | [cancel_coe](../../../../RealFunctions/ENNReal.lean/declarations/cancel-coe.md) | 1108 | `result-track:d54a0ff322a270ff400d5c94e46a972abcaa4334b06b41c827673dcf54428040` |
| 236 | `theorem` | [add_right_inj](../../../../RealFunctions/ENNReal.lean/declarations/add-right-inj.md) | 1112 | `result-track:898343e39a0d2334891c81d647ae8e01ebb58b0af62a6ed23cdaa39f4c22f058` |
| 237 | `theorem` | [add_left_inj](../../../../RealFunctions/ENNReal.lean/declarations/add-left-inj.md) | 1116 | `result-track:f23a3953e9a5f1fdaaa13dfaca903cc58321610eb35b9391f1573d3db616ec28` |
| 238 | `theorem` | [sub_eq_sInf](../../../../RealFunctions/ENNReal.lean/declarations/sub-eq-sinf.md) | 1124 | `result-track:0ae57d97c3885e029d28cfffabc4a4bfa629b25d6872bcaaf985126b1864a5f2` |
| 239 | `theorem` | [coe_sub](../../../../RealFunctions/ENNReal.lean/declarations/coe-sub.md) | 1129 | `result-track:18e62ccdd1bbde8bebbd2e8f2224a7afa5f87891a1e1232074e5db27274a6107` |
| 240 | `theorem` | [top_sub_coe](../../../../RealFunctions/ENNReal.lean/declarations/top-sub-coe.md) | 1133 | `result-track:f39763ede5992d24b7306dfb25392c6b2adc7c3d2b20904ca875f63e2090d7b7` |
| 241 | `theorem` | [sub_top](../../../../RealFunctions/ENNReal.lean/declarations/sub-top.md) | 1137 | `result-track:00a5406083ab57e32fc53f68c83a9fe615e9fac806a44fb3dba2d6d98a37dd03` |
| 242 | `theorem` | [sub_eq_top_iff](../../../../RealFunctions/ENNReal.lean/declarations/sub-eq-top-iff.md) | 1141 | `result-track:8ef49f237e8d602f3162e233ec69e567d1193406aba219b3dd5be954d0f7db2f` |
| 243 | `theorem` | [sub_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/sub-ne-top.md) | 1144 | `result-track:1b07218713719b009cc81cd887e6bfb6ff14118311864ae0e32395a38c7b9335` |
| 244 | `theorem` | [nat_cast_sub](../../../../RealFunctions/ENNReal.lean/declarations/nat-cast-sub.md) | 1148 | `result-track:e4b1c2af2dfb30dd3e9c5bdca122d1b7ccbda23a521fcbfaa6849186de522a20` |
| 245 | `theorem` | [sub_eq_of_eq_add](../../../../RealFunctions/ENNReal.lean/declarations/sub-eq-of-eq-add.md) | 1152 | `result-track:bfbdddbfc8d98ab02856de51c01c819fe19d67998f6c9543f73fc9b1d314184f` |
| 246 | `theorem` | [eq_sub_of_add_eq](../../../../RealFunctions/ENNReal.lean/declarations/eq-sub-of-add-eq.md) | 1156 | `result-track:be232943502069d1a32ef6d7881c41b918cc0d946596b0b045f810da0b9b4059` |
| 247 | `theorem` | [sub_eq_of_eq_add_rev](../../../../RealFunctions/ENNReal.lean/declarations/sub-eq-of-eq-add-rev.md) | 1160 | `result-track:68fdc399157c3d9b524b29f4f659aa0241aa48a5a2aec64057b98eda18d3cfc5` |
| 248 | `theorem` | [sub_eq_of_add_eq](../../../../RealFunctions/ENNReal.lean/declarations/sub-eq-of-add-eq.md) | 1164 | `result-track:d1abbd0810b540b85b62307dc16db9d5476c8ae65f6082c7fa424d51c2a871c6` |
| 249 | `theorem` | [add_sub_cancel_left](../../../../RealFunctions/ENNReal.lean/declarations/add-sub-cancel-left.md) | 1169 | `result-track:432856934da52ce1400afd62664ff40ca883d5560a58156d79360332efea75db` |
| 250 | `theorem` | [add_sub_cancel_right](../../../../RealFunctions/ENNReal.lean/declarations/add-sub-cancel-right.md) | 1174 | `result-track:597a547c6ddeead08301976468fc5422c8ea9664faf3a10a008334375baf5d4e` |
| 251 | `theorem` | [lt_add_of_sub_lt_left](../../../../RealFunctions/ENNReal.lean/declarations/lt-add-of-sub-lt-left.md) | 1178 | `result-track:09646e34ef91c3a5e2f41fb75d52d60c69c47a5270327443f2554ec0147cf149` |
| 252 | `theorem` | [lt_add_of_sub_lt_right](../../../../RealFunctions/ENNReal.lean/declarations/lt-add-of-sub-lt-right.md) | 1185 | `result-track:c09fa5c2437382a241eb38be9675102acd76eb6a1077d18994065188b0cfae4b` |
| 253 | `theorem` | [le_sub_of_add_le_left](../../../../RealFunctions/ENNReal.lean/declarations/le-sub-of-add-le-left.md) | 1189 | `result-track:7d2f834f74d560bd6bc0399a0bc11f6ccad1f2b3c27f26363f7bf5ddb9c684b4` |
| 254 | `theorem` | [le_sub_of_add_le_right](../../../../RealFunctions/ENNReal.lean/declarations/le-sub-of-add-le-right.md) | 1193 | `result-track:719a89ec2824d8c63a5958f7eca7b122cbe2859a6f2260b5e99e20ec1dc16361` |
| 255 | `theorem` | [sub_lt_of_lt_add](../../../../RealFunctions/ENNReal.lean/declarations/sub-lt-of-lt-add.md) | 1197 | `result-track:b71ee1de4d0ab6e5df25dcb49c9321d4c723cb361c3d9f343a1d418dbbc59b1c` |
| 256 | `theorem` | [sub_lt_iff_lt_right](../../../../RealFunctions/ENNReal.lean/declarations/sub-lt-iff-lt-right.md) | 1201 | `result-track:56e63201d954c6adc09496ee180f55f33d51a3216cd3d76a690020bc97c78ee2` |
| 257 | `theorem` | [sub_lt_self](../../../../RealFunctions/ENNReal.lean/declarations/sub-lt-self.md) | 1205 | `result-track:c60e244b8aec30d8b3c1300d042aae5d231d941c8b0267e267c5039765e3c71c` |
| 258 | `theorem` | [sub_lt_self_iff](../../../../RealFunctions/ENNReal.lean/declarations/sub-lt-self-iff.md) | 1209 | `result-track:dab6387c49454c4951ae9ba0282262af7174b2f09349f3889e4144ed36edf359` |
| 259 | `theorem` | [sub_lt_of_sub_lt](../../../../RealFunctions/ENNReal.lean/declarations/sub-lt-of-sub-lt.md) | 1213 | `result-track:7e52179b1ea0015d276cc7fc1f5cab1aa32754ed3db9ba81703fc281bd69aa0e` |
| 260 | `theorem` | [sub_sub_cancel](../../../../RealFunctions/ENNReal.lean/declarations/sub-sub-cancel.md) | 1217 | `result-track:d89abf446e28ab40b8bcf652fd21c37d2160a7e8f75551a0de41a26830deccaf` |
| 261 | `theorem` | [sub_right_inj](../../../../RealFunctions/ENNReal.lean/declarations/sub-right-inj.md) | 1221 | `result-track:0f5a03c11ebb249fa08bc283d642c1aedc09a0fd4d7c1e2daab8fd02ebac0648` |
| 262 | `theorem` | [sub_mul](../../../../RealFunctions/ENNReal.lean/declarations/sub-mul.md) | 1227 | `result-track:a10a510d8bdf5ea4a9e58ac5c86dec3da7fef4a90c51ca6139907297b8819fe4` |
| 263 | `theorem` | [mul_sub](../../../../RealFunctions/ENNReal.lean/declarations/mul-sub.md) | 1233 | `result-track:33e89220c34a43e1adf4d8662cdf1d655476348e15e922c623ffe5a8c9b28c78` |
| 264 | `theorem` | [prod_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/prod-lt-top.md) | 1245 | `result-track:c295cca73bdb6e82fced419b748920a345feac05f08ab4909b10c1404ab740a6` |
| 265 | `theorem` | [sum_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/sum-lt-top.md) | 1250 | `result-track:82c1be562f1186de50603d6a4260b177404d7c86b2b8bd42d117916c336c5fa8` |
| 266 | `theorem` | [sum_lt_top_iff](../../../../RealFunctions/ENNReal.lean/declarations/sum-lt-top-iff.md) | 1255 | `result-track:853eb977e3f4bf0bc10f2f75a8d72edc6e9742a8355e87b56c3d84aa0846ea42` |
| 267 | `theorem` | [sum_eq_top_iff](../../../../RealFunctions/ENNReal.lean/declarations/sum-eq-top-iff.md) | 1260 | `result-track:54cabb8d6aa3ce471c28d2775f1c3d55cb1e304c9f095fd1b77e552bbf895f44` |
| 268 | `theorem` | [lt_top_of_sum_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/lt-top-of-sum-ne-top.md) | 1264 | `result-track:c8bc45bc8960fe69066f61f8238e512f77a29b0357354822f205d1ca6baec1ac` |
| 269 | `theorem` | [toNNReal_sum](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-sum.md) | 1271 | `result-track:59d839812b04dcba6770ecfa2ac9295ab0866e02646e82115d416fa48fa4b3df` |
| 270 | `theorem` | [toReal_sum](../../../../RealFunctions/ENNReal.lean/declarations/toreal-sum.md) | 1280 | `result-track:bc442613895d44cefa0fb4cbc61c1cecee0a9d0ff87eb0b7894cdc70a0243c00` |
| 271 | `theorem` | [ofReal_sum_of_nonneg](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-sum-of-nonneg.md) | 1286 | `result-track:95664dbd51ec52e3e7b05c77fa87a4ac615f04559f9ba42b03d186e6bab73927` |
| 272 | `theorem` | [sum_lt_sum_of_nonempty](../../../../RealFunctions/ENNReal.lean/declarations/sum-lt-sum-of-nonempty.md) | 1292 | `result-track:39b68201de5e6cbe372321463a395e3cf43513e9edf80476607a428cbe7e2a3a` |
| 273 | `theorem` | [exists_le_of_sum_le](../../../../RealFunctions/ENNReal.lean/declarations/exists-le-of-sum-le.md) | 1302 | `result-track:eb819646e9dbd2a4e0ed46a27b822e2e6c04fbf7caa1a933a9f1400ea3cab7ef` |
| 274 | `theorem` | [Ico_eq_Iio](../../../../RealFunctions/ENNReal.lean/declarations/ico-eq-iio.md) | 1314 | `result-track:6fe97556676ab16d4cdf86ded68068854e4d86909924ebd55fe90b340d92f538` |
| 275 | `theorem` | [mem_Iio_self_add](../../../../RealFunctions/ENNReal.lean/declarations/mem-iio-self-add.md) | 1318 | `result-track:c1525e5cce4707fb4648e771a97454c7247b9d27afc742e7ed710973b78fcd00` |
| 276 | `theorem` | [mem_Ioo_self_sub_add](../../../../RealFunctions/ENNReal.lean/declarations/mem-ioo-self-sub-add.md) | 1321 | `result-track:09c86286b25835f344a153f803208929243b467cf8258af6d610593d32be630b` |
| 277 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance.md) | 1355 | `declaration-track:04a0b9b5484c27cf4a776a2e51724fdd35073f101208668a130d1a01ec54686c` |
| 278 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-8.md) | 1357 | `declaration-track:56423ea28b8d646a44e82d5f38b6d76548e720ab1726af12b03be4caa623f645` |
| 279 | `theorem` | [div_eq_inv_mul](../../../../RealFunctions/ENNReal.lean/declarations/div-eq-inv-mul.md) | 1359 | `result-track:58737a4143ae29723bd9caf2e77c4af00f698e6963d7ea58792bffc5e0f6edee` |
| 280 | `theorem` | [inv_zero](../../../../RealFunctions/ENNReal.lean/declarations/inv-zero.md) | 1362 | `result-track:1d00004066d08a018d2f7152fd8b35cab1878e3fea844c09d9d2c46f3df95737` |
| 281 | `theorem` | [inv_top](../../../../RealFunctions/ENNReal.lean/declarations/inv-top.md) | 1366 | `result-track:a13d31e37595b555fa480fd42db8d0b582c889342279c5a613060612d1805489` |
| 282 | `theorem` | [coe_inv_le](../../../../RealFunctions/ENNReal.lean/declarations/coe-inv-le.md) | 1370 | `result-track:a8ce91648e61bea1ba246e68d2c4be645b15c58d3d42f0d235e66b0d130ea01b` |
| 283 | `theorem` | [coe_inv](../../../../RealFunctions/ENNReal.lean/declarations/coe-inv.md) | 1379 | `result-track:a44ed6d5808f1b7d80e4c84776672480451f91e0c9f94af767605a5e7ddb5fc3` |
| 284 | `theorem` | [coe_inv_two](../../../../RealFunctions/ENNReal.lean/declarations/coe-inv-two.md) | 1384 | `result-track:707a38e50311d76dd6774f08087d34322dd27e2274b3399600c715aabd88c0e9` |
| 285 | `theorem` | [coe_div](../../../../RealFunctions/ENNReal.lean/declarations/coe-div.md) | 1388 | `result-track:7df3fb80189899fe1c915dec4a1eb53358586827b9fb3ac0643c8a31f1166380` |
| 286 | `theorem` | [div_zero](../../../../RealFunctions/ENNReal.lean/declarations/div-zero.md) | 1392 | `result-track:2dfb719a80baa46409c1a78bf1b0226abc8b09cba07a49eeec7aa1360c6bd890` |
| 287 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-15.md) | 1395 | `declaration-track:b8a27a382fbf1565215b2776f07d5385db7c0975bae76a41721a737d3ce356b3` |
| 288 | `theorem` | [inv_pow](../../../../RealFunctions/ENNReal.lean/declarations/inv-pow.md) | 1399 | `result-track:e83607307dfb24e465419508c81777f8480f9c89d487828fed21183d1f285a8e` |
| 289 | `theorem` | [mul_inv_cancel](../../../../RealFunctions/ENNReal.lean/declarations/mul-inv-cancel.md) | 1410 | `result-track:a79023ea8a280e06fac0f7d0ac6a96ef596cba55dae4fb0778199be757d9a097` |
| 290 | `theorem` | [inv_mul_cancel](../../../../RealFunctions/ENNReal.lean/declarations/inv-mul-cancel.md) | 1416 | `result-track:8cc7c0e76d097d129b15cdbb6448cb3c41748005915682f94b9aa79ea6822633` |
| 291 | `theorem` | [div_mul_cancel](../../../../RealFunctions/ENNReal.lean/declarations/div-mul-cancel.md) | 1420 | `result-track:6421a552a916233127f082015ca525f0d5a3ce004ed623553aea0e287c6a2a37` |
| 292 | `theorem` | [mul_div_cancel'](../../../../RealFunctions/ENNReal.lean/declarations/mul-div-cancel.md) | 1424 | `result-track:8e0b8ed7f90eab4a97309b26562749b8e1418e0b92870af5f4c9c360d5ff1a1c` |
| 293 | `theorem` | [mul_comm_div](../../../../RealFunctions/ENNReal.lean/declarations/mul-comm-div.md) | 1429 | `result-track:acc0214cc22d5c3a9a0845df6dcf66031504a77b8f8851a5b0641e8b7b453d24` |
| 294 | `theorem` | [mul_div_right_comm](../../../../RealFunctions/ENNReal.lean/declarations/mul-div-right-comm.md) | 1433 | `result-track:dbf3b7bb78c526a6218727524cfdc8b04761f3332111369c18f3eda4d208d1a9` |
| 295 | `instance` | [(anonymous)](../../../../RealFunctions/ENNReal.lean/declarations/instance-source-edition-20.md) | 1437 | `declaration-track:ea1951cf6982112c12d99f9edf00258b0d34c65ed018d993c71a87a35e0061dc` |
| 296 | `theorem` | [inv_eq_top](../../../../RealFunctions/ENNReal.lean/declarations/inv-eq-top.md) | 1441 | `result-track:504bfc7016997897672d5b2d3dd64fc496fbced9ebfcfc1c988cbf69fcea01ec` |
| 297 | `theorem` | [inv_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/inv-ne-top.md) | 1444 | `result-track:e1a634ec45fab1e67706899a29c2d3ee748a401e135031423ed29b369285e2fb` |
| 298 | `theorem` | [inv_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/inv-lt-top.md) | 1448 | `result-track:1ffa3a67325ef7e626d89204801f7de617b00fb86d3cb7a26a422995b58d37ba` |
| 299 | `theorem` | [div_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/div-lt-top.md) | 1452 | `result-track:1896262f127af908cbd3955258b71b6638b252cec1271612563a31df16e818df` |
| 300 | `theorem` | [inv_eq_zero](../../../../RealFunctions/ENNReal.lean/declarations/inv-eq-zero.md) | 1457 | `result-track:9a0e61ccac4fbfc8365027394f946f36cbac88e4cd7dec58010a1a3851c3099a` |
| 301 | `theorem` | [inv_ne_zero](../../../../RealFunctions/ENNReal.lean/declarations/inv-ne-zero.md) | 1461 | `result-track:dec991e639978c41d973eedd8d4016e03129b04fb7d6e30bee33c8ee9faaf57d` |
| 302 | `theorem` | [div_pos](../../../../RealFunctions/ENNReal.lean/declarations/div-pos.md) | 1464 | `result-track:d22e60ef69efc39d6fa23ea90e807b0211c5777552e15c6deb80f62b520b8c7c` |
| 303 | `theorem` | [mul_inv](../../../../RealFunctions/ENNReal.lean/declarations/mul-inv.md) | 1468 | `result-track:3202b8d92616999aeacb68ab35b02f2883a2cd0e326889e7dc369696318a4a8f` |
| 304 | `theorem` | [mul_div_mul_left](../../../../RealFunctions/ENNReal.lean/declarations/mul-div-mul-left.md) | 1487 | `result-track:d33c9a88fae441d853a82f400c30af1d432e6d8d9439ce53188c682ee8ba461d` |
| 305 | `theorem` | [mul_div_mul_right](../../../../RealFunctions/ENNReal.lean/declarations/mul-div-mul-right.md) | 1493 | `result-track:b02bef55f58ffd8e6dc12944528b19f88013ec083e2f94a6129afa82bbb4ed4b` |
| 306 | `theorem` | [sub_div](../../../../RealFunctions/ENNReal.lean/declarations/sub-div.md) | 1499 | `result-track:1bee157e303f7a2cb358cd4625e11ebf7fbf8bcb6d8839877365be50ff03f595` |
| 307 | `theorem` | [inv_pos](../../../../RealFunctions/ENNReal.lean/declarations/inv-pos.md) | 1505 | `result-track:eb4f0de03426e090cae502c605337bfee2d0450f8f2fb10e606e54956f641263` |
| 308 | `theorem` | [inv_strictAnti](../../../../RealFunctions/ENNReal.lean/declarations/inv-strictanti.md) | 1509 | `result-track:3d777aaf1f169527f65c00f6a901425b4b0e55518138473ef3f2a921e3576b88` |
| 309 | `theorem` | [inv_lt_inv](../../../../RealFunctions/ENNReal.lean/declarations/inv-lt-inv-source-edition-2.md) | 1520 | `result-track:c11e4bd1692e73708ed762440d00f48e0daf5983f1156f638d8ae451bd0f7732` |
| 310 | `theorem` | [inv_lt_iff_inv_lt](../../../../RealFunctions/ENNReal.lean/declarations/inv-lt-iff-inv-lt.md) | 1524 | `result-track:014a75e84415a9921dd2a216fcf2563b6e7293accbeb9e5e0ba321f53c0c10ae` |
| 311 | `theorem` | [lt_inv_iff_lt_inv](../../../../RealFunctions/ENNReal.lean/declarations/lt-inv-iff-lt-inv.md) | 1528 | `result-track:d255b4125417de1763e7a342f505f201ce6e0fc2be5ca366947d883f9b4ee36a` |
| 312 | `theorem` | [inv_le_inv](../../../../RealFunctions/ENNReal.lean/declarations/inv-le-inv-source-edition-2.md) | 1533 | `result-track:c30e09dfafa60cc895151f7b9527d49e5ea26a235428ce7f025fbc2199ca73bc` |
| 313 | `theorem` | [inv_le_iff_inv_le](../../../../RealFunctions/ENNReal.lean/declarations/inv-le-iff-inv-le.md) | 1537 | `result-track:0511ea4d20dae2f276fd483fe2580985b8c878f68dc1b9a93ade0d8f4c2c7207` |
| 314 | `theorem` | [le_inv_iff_le_inv](../../../../RealFunctions/ENNReal.lean/declarations/le-inv-iff-le-inv.md) | 1541 | `result-track:e387eb62f133d52a6b05e32f10e969c676c055659e10acf7b6262fced5f9133b` |
| 315 | `theorem` | [inv_le_inv'](../../../../RealFunctions/ENNReal.lean/declarations/inv-le-inv.md) | 1545 | `result-track:645337aca38af026f256d4bfcbd0f31187d60e70f1af676e69620b8510670a49` |
| 316 | `theorem` | [inv_lt_inv'](../../../../RealFunctions/ENNReal.lean/declarations/inv-lt-inv.md) | 1548 | `result-track:b994294a5605266b5dc7bc710e1170d4c4609d696065b91239f2d326c1b421cd` |
| 317 | `theorem` | [inv_le_one](../../../../RealFunctions/ENNReal.lean/declarations/inv-le-one.md) | 1551 | `result-track:12afa0aed1cedec39d7ea3d76e74cddd8e987881abfeb3ecd7fd740602094367` |
| 318 | `theorem` | [one_le_inv](../../../../RealFunctions/ENNReal.lean/declarations/one-le-inv.md) | 1554 | `result-track:6731ba5117f615045fe6b1c1eeb5c55898101306c716bfedae45f4ba1f0355c8` |
| 319 | `theorem` | [inv_lt_one](../../../../RealFunctions/ENNReal.lean/declarations/inv-lt-one.md) | 1558 | `result-track:27c4188957e98176ded4e5b5e85ae006c6f1998415c50f905fa749f87152fdfd` |
| 320 | `theorem` | [one_lt_inv](../../../../RealFunctions/ENNReal.lean/declarations/one-lt-inv.md) | 1562 | `result-track:5cd3e02436a98febbebdfed4be0e36f39e44b5137b587da487ed208f7acb9231` |
| 321 | `def` | [_root_.OrderIso.invENNReal](../../../../RealFunctions/ENNReal.lean/declarations/root-orderiso-invennreal.md) | 1567 | `declaration-track:e2f2cfd7e7a0afa8e6b5e2b5b2d9e8cec7d336ac02eeb2687f62b7764cb5e96e` |
| 322 | `theorem` | [_root_.OrderIso.invENNReal_symm_apply](../../../../RealFunctions/ENNReal.lean/declarations/root-orderiso-invennreal-symm-apply.md) | 1574 | `result-track:c8f6f58e8f60253d885c451a132215e0a0c2010677d2d1a3f5227f2f76a0f476` |
| 323 | `theorem` | [div_top](../../../../RealFunctions/ENNReal.lean/declarations/div-top.md) | 1579 | `result-track:ad02ca79e4e7dd4febe54cadf0cb1696ccdb4dc493118e961401ee4caf86b6d7` |
| 324 | `theorem` | [top_div](../../../../RealFunctions/ENNReal.lean/declarations/top-div.md) | 1584 | `result-track:6dad1615cab8c98e00a42f1df30e242b97421c39948ed887af8f055e197c8be4` |
| 325 | `theorem` | [top_div_of_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/top-div-of-ne-top.md) | 1587 | `result-track:f6dcbb84999019b913e9f927397f65efcf67aaf0472fe7460c60efce98c0ae6f` |
| 326 | `theorem` | [top_div_coe](../../../../RealFunctions/ENNReal.lean/declarations/top-div-coe.md) | 1590 | `result-track:8f11f6175de912bd282d2843ab62a22a8a8d0bdf55257a280255a2db8e790c17` |
| 327 | `theorem` | [top_div_of_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/top-div-of-lt-top.md) | 1593 | `result-track:e77b1483386b4ac74c1f12749398854fc9d218be427cdfe1da6a988282304e40` |
| 328 | `theorem` | [zero_div](../../../../RealFunctions/ENNReal.lean/declarations/zero-div.md) | 1596 | `result-track:a80cb5c09c09308eed55f66b23801124a9f025cca9fa55de95d4814e81dcebe8` |
| 329 | `theorem` | [div_eq_top](../../../../RealFunctions/ENNReal.lean/declarations/div-eq-top.md) | 1599 | `result-track:345c82d1fbf05621f06a0c90c813e5a029fe794dba8733b0870b748d68d79d68` |
| 330 | `theorem` | [le_div_iff_mul_le](../../../../RealFunctions/ENNReal.lean/declarations/le-div-iff-mul-le.md) | 1603 | `result-track:f88e9df44279784833bccc5f03d2134b700ee270e8ed2f78cd849c2494136494` |
| 331 | `theorem` | [div_le_iff_le_mul](../../../../RealFunctions/ENNReal.lean/declarations/div-le-iff-le-mul.md) | 1616 | `result-track:c32d4011c067aca440c1b6f3b3638bf10dc2aaa16009e010eba7b00ecd44a6bc` |
| 332 | `theorem` | [lt_div_iff_mul_lt](../../../../RealFunctions/ENNReal.lean/declarations/lt-div-iff-mul-lt.md) | 1622 | `result-track:8bc021f0372ff4376b1776acd1659159e25b2fb3ba7521bacbc3784a4e59290b` |
| 333 | `theorem` | [div_le_of_le_mul](../../../../RealFunctions/ENNReal.lean/declarations/div-le-of-le-mul-source-edition-2.md) | 1627 | `result-track:da769c983994e7ad218cf2bafdc896c5e33f5e715af02cf8e36f4ee65816bd9f` |
| 334 | `theorem` | [div_le_of_le_mul'](../../../../RealFunctions/ENNReal.lean/declarations/div-le-of-le-mul.md) | 1635 | `result-track:1079a8d36368588159bf1fb0e1a88f5b5a1e8268080c413d228dce652ffc1ecb` |
| 335 | `theorem` | [div_self_le_one](../../../../RealFunctions/ENNReal.lean/declarations/div-self-le-one.md) | 1639 | `result-track:d87e4534ea649e4eb0e3cbea902e87d211337e86e8a183382bac2fe83cfa1bc7` |
| 336 | `theorem` | [mul_le_of_le_div](../../../../RealFunctions/ENNReal.lean/declarations/mul-le-of-le-div-source-edition-2.md) | 1641 | `result-track:fdf9218e588794f2acf741d9dc72154097964419fce85947430e3dcfbb810f4e` |
| 337 | `theorem` | [mul_le_of_le_div'](../../../../RealFunctions/ENNReal.lean/declarations/mul-le-of-le-div.md) | 1646 | `result-track:f6700993e60ec5149260d4c38e0a339a19afe94dc63bf769ce598797dc772333` |
| 338 | `theorem` | [div_lt_iff](../../../../RealFunctions/ENNReal.lean/declarations/div-lt-iff.md) | 1650 | `result-track:cc38b2bc108db9f4dbd06b64200275fa5631b72cb8137277b119f4abac700018` |
| 339 | `theorem` | [mul_lt_of_lt_div](../../../../RealFunctions/ENNReal.lean/declarations/mul-lt-of-lt-div.md) | 1654 | `result-track:11083c9ab7d8864ca875459e99da7c832a69789e90a732eef23da838ca4e1c5f` |
| 340 | `theorem` | [mul_lt_of_lt_div'](../../../../RealFunctions/ENNReal.lean/declarations/mul-lt-of-lt-div-source-edition-2.md) | 1659 | `result-track:6a9cc438e27a943ca283e040619012cb497ca71a65b37fa15a01147701372a7e` |
| 341 | `theorem` | [div_lt_of_lt_mul](../../../../RealFunctions/ENNReal.lean/declarations/div-lt-of-lt-mul.md) | 1663 | `result-track:eb7ee0a37031a6ab1cc2f69926e87fe7face3fb3c77def8ec41dac643202234f` |
| 342 | `theorem` | [div_lt_of_lt_mul'](../../../../RealFunctions/ENNReal.lean/declarations/div-lt-of-lt-mul-source-edition-2.md) | 1666 | `result-track:f6403e461e392927be62e2fbbe9f3abfb69577d9de3d5092d1a0b13440c1de81` |
| 343 | `theorem` | [inv_le_iff_le_mul](../../../../RealFunctions/ENNReal.lean/declarations/inv-le-iff-le-mul.md) | 1669 | `result-track:159a9dbd365a852c2b6c200e525b4ee10a88cccc2458e6f419e924c526f5d72b` |
| 344 | `theorem` | [le_inv_iff_mul_le](../../../../RealFunctions/ENNReal.lean/declarations/le-inv-iff-mul-le.md) | 1675 | `result-track:7d3da6829ebdd8557b211fa9527576c3ab60018718b15cf8785503d0d011f691` |
| 345 | `theorem` | [div_le_div](../../../../RealFunctions/ENNReal.lean/declarations/div-le-div.md) | 1681 | `result-track:7e7ed46687bfbf170d467419da817882e730eafe170170daa4fcc0ae3376f960` |
| 346 | `theorem` | [div_le_div_left](../../../../RealFunctions/ENNReal.lean/declarations/div-le-div-left.md) | 1685 | `result-track:b8e1281e5e3965bee40463f4fb57a38efc002bd2977948a6bae66e84c1dba8f4` |
| 347 | `theorem` | [div_le_div_right](../../../../RealFunctions/ENNReal.lean/declarations/div-le-div-right.md) | 1689 | `result-track:6931b8313da99493cbe7d70c33cbadfefa1bcf3c04b5a79ad35b87ff4b0503ba` |
| 348 | `theorem` | [eq_inv_of_mul_eq_one_left](../../../../RealFunctions/ENNReal.lean/declarations/eq-inv-of-mul-eq-one-left.md) | 1693 | `result-track:dca0411aa2912d2961a776a16e51bd374d79907b8231f127f7166a5560480763` |
| 349 | `theorem` | [mul_le_iff_le_inv](../../../../RealFunctions/ENNReal.lean/declarations/mul-le-iff-le-inv.md) | 1700 | `result-track:4af912215f2c355d6fb0971f049e19eefb6751392069885b7e8a9b208846d0c1` |
| 350 | `theorem` | [le_inv_smul_iff](../../../../RealFunctions/ENNReal.lean/declarations/le-inv-smul-iff.md) | 1706 | `result-track:3d55e8a7fb5d6d94e84ec765627d90492c9ed0694278de083a2835910414b184` |
| 351 | `theorem` | [inv_smul_le_iff](../../../../RealFunctions/ENNReal.lean/declarations/inv-smul-le-iff.md) | 1711 | `result-track:5d0cefd055410bb5d0aae647e88e97191d521b37b28d7ba146b188ac9cbaf811` |
| 352 | `theorem` | [le_of_forall_nnreal_lt](../../../../RealFunctions/ENNReal.lean/declarations/le-of-forall-nnreal-lt.md) | 1715 | `result-track:da4383b6f95f3e9b951edca109fee948045d2df9a43c8442a0104e4b26aad1f0` |
| 353 | `theorem` | [le_of_forall_pos_nnreal_lt](../../../../RealFunctions/ENNReal.lean/declarations/le-of-forall-pos-nnreal-lt.md) | 1721 | `result-track:8aa8c745f2e0c210bf476f5465aaa12ad7d4da8cdf49c7a372857737c1a700a7` |
| 354 | `theorem` | [eq_top_of_forall_nnreal_le](../../../../RealFunctions/ENNReal.lean/declarations/eq-top-of-forall-nnreal-le.md) | 1726 | `result-track:9ad3826ef0524d473416efc859694880f035b15efef529d618a13400823b5761` |
| 355 | `theorem` | [add_div](../../../../RealFunctions/ENNReal.lean/declarations/add-div.md) | 1730 | `result-track:8064f1fb8e2a55d662924eb7efb8c36fe163fe3ab19f853e282e586a3fd8ab69` |
| 356 | `theorem` | [div_add_div_same](../../../../RealFunctions/ENNReal.lean/declarations/div-add-div-same.md) | 1734 | `result-track:72ebc3e8578b27329dd4e8f3c78908e0aebd33fbb42139de5fefbf7770387cbb` |
| 357 | `theorem` | [div_self](../../../../RealFunctions/ENNReal.lean/declarations/div-self.md) | 1738 | `result-track:2da3c7e600003e1e05817c0288b6c7c52f3c9ac8ef630c0394104867394a6cff` |
| 358 | `theorem` | [mul_div_le](../../../../RealFunctions/ENNReal.lean/declarations/mul-div-le.md) | 1742 | `result-track:7d2abda67afd681f6769c2d094d0bb1bf621fdff78a35b545519170bc220c402` |
| 359 | `theorem` | [eq_div_iff](../../../../RealFunctions/ENNReal.lean/declarations/eq-div-iff.md) | 1746 | `result-track:ce02e824c890aabb66c5a81e2d4f3070c71303f25d44dfa4c3748960a9fb9a58` |
| 360 | `theorem` | [div_eq_div_iff](../../../../RealFunctions/ENNReal.lean/declarations/div-eq-div-iff.md) | 1751 | `result-track:f85e36cc7ac737013d7c570cd8e18f5ed6e679788148bf932398cf82551ddb02` |
| 361 | `theorem` | [div_eq_one_iff](../../../../RealFunctions/ENNReal.lean/declarations/div-eq-one-iff.md) | 1758 | `result-track:4da65a1b2c507bbda5175a0098f661d122b2727dea6d0d086b0bc095888e0be0` |
| 362 | `theorem` | [inv_two_add_inv_two](../../../../RealFunctions/ENNReal.lean/declarations/inv-two-add-inv-two.md) | 1763 | `result-track:d05358d379a4ffc7a5cfbb2d0631fab39c116f0217fd965f881abe87e28a6792` |
| 363 | `theorem` | [inv_three_add_inv_three](../../../../RealFunctions/ENNReal.lean/declarations/inv-three-add-inv-three.md) | 1767 | `result-track:4ec4952696cfbc0e5cb23240c7c8458082cd928cc50ba488654de7134adb48ed` |
| 364 | `theorem` | [add_halves](../../../../RealFunctions/ENNReal.lean/declarations/add-halves.md) | 1773 | `result-track:44a658bbdb5dc1b467ba381895fe6ffa108ba2ae79f14fb70fe9a9f24453c02a` |
| 365 | `theorem` | [add_thirds](../../../../RealFunctions/ENNReal.lean/declarations/add-thirds.md) | 1778 | `result-track:ed922e92bbacdd1a958e57f7417fc2951e9b2ea1da1265536850f92e5dd50cf8` |
| 366 | `theorem` | [div_eq_zero_iff](../../../../RealFunctions/ENNReal.lean/declarations/div-eq-zero-iff.md) | 1782 | `result-track:7162e769273a384672dc0a4b5a2252b79fce7b193a8157b99cd18bce5fad0f83` |
| 367 | `theorem` | [div_pos_iff](../../../../RealFunctions/ENNReal.lean/declarations/div-pos-iff.md) | 1785 | `result-track:b850e1b731a95a3b9c6df846118f79a62667d62c319660da48076242843fbdd2` |
| 368 | `theorem` | [half_pos](../../../../RealFunctions/ENNReal.lean/declarations/half-pos.md) | 1788 | `result-track:f0bee6fff852d482daf97d58ebb50ba470bd698cde62c84a6e4ee097a638877e` |
| 369 | `theorem` | [one_half_lt_one](../../../../RealFunctions/ENNReal.lean/declarations/one-half-lt-one.md) | 1791 | `result-track:d4036c99ed9bdf76e93fe5177bf8886ad8f73bfe78baa34c2ea48df8f4b82951` |
| 370 | `theorem` | [half_lt_self](../../../../RealFunctions/ENNReal.lean/declarations/half-lt-self.md) | 1795 | `result-track:aa0765616ccf36f025a8f7646cd85dd55c7673ca2cc21baecdfbbc2f908aed60` |
| 371 | `theorem` | [half_le_self](../../../../RealFunctions/ENNReal.lean/declarations/half-le-self.md) | 1802 | `result-track:2270c332cef06ce82c8970a80582f3a726152a605a45ff0b344020a780e13666` |
| 372 | `theorem` | [sub_half](../../../../RealFunctions/ENNReal.lean/declarations/sub-half.md) | 1806 | `result-track:05e8181c54e89cbba5e467703bdce069a7847cfa8db8d18bd2dc6b4818303338` |
| 373 | `theorem` | [one_sub_inv_two](../../../../RealFunctions/ENNReal.lean/declarations/one-sub-inv-two.md) | 1812 | `result-track:bedd69351e57d6bf72afbb1f21b07a7508952bd26b57f23b6b11d8b4fd42c63c` |
| 374 | `def` | [orderIsoIicOneBirational](../../../../RealFunctions/ENNReal.lean/declarations/orderisoiiconebirational.md) | 1818 | `declaration-track:937fe4b359823ec4680a396e497d5d2bc2bbeefe7f4afdcfc6dd7a1e00687c21` |
| 375 | `theorem` | [orderIsoIicOneBirational_symm_apply](../../../../RealFunctions/ENNReal.lean/declarations/orderisoiiconebirational-symm-apply.md) | 1828 | `result-track:c08a312239e8a5f38e6ffbb51ed1fe09fbae7a5c9490f9dbef74f88dfcaac394` |
| 376 | `def` | [orderIsoIicCoe](../../../../RealFunctions/ENNReal.lean/declarations/orderisoiiccoe.md) | 1835 | `declaration-track:b5945c955e4d7d54c8a706892d6b80aba8bd82096fccf7f6e0dd549040bdb053` |
| 377 | `theorem` | [orderIsoIicCoe_symm_apply_coe](../../../../RealFunctions/ENNReal.lean/declarations/orderisoiiccoe-symm-apply-coe.md) | 1846 | `result-track:a060c690702e39946e18fbaf74efe16ad73489edc712a5f45017deeac0827ff1` |
| 378 | `def` | [orderIsoUnitIntervalBirational](../../../../RealFunctions/ENNReal.lean/declarations/orderisounitintervalbirational.md) | 1852 | `declaration-track:70c9a85ec45ca6639ee42db6624d36dabf08cfd74fb256f379bc4be230296752` |
| 379 | `theorem` | [orderIsoUnitIntervalBirational_apply_coe](../../../../RealFunctions/ENNReal.lean/declarations/orderisounitintervalbirational-apply-coe.md) | 1857 | `result-track:2fb12d954def4f5637332e6bf5f265408b593e1743b5ca6cd773d862dc5ea799` |
| 380 | `theorem` | [exists_inv_nat_lt](../../../../RealFunctions/ENNReal.lean/declarations/exists-inv-nat-lt.md) | 1862 | `result-track:728fe9498546eb3e8c43dc50f905a98ba97915876ae95bc450b5ea7c1db1cf74` |
| 381 | `theorem` | [exists_nat_pos_mul_gt](../../../../RealFunctions/ENNReal.lean/declarations/exists-nat-pos-mul-gt.md) | 1866 | `result-track:67997c4193059321b90dd0a6d6f4e27d0e06fa7f5e30c1f05adf028df07eae18` |
| 382 | `theorem` | [exists_nat_mul_gt](../../../../RealFunctions/ENNReal.lean/declarations/exists-nat-mul-gt.md) | 1872 | `result-track:4b9caba7f59b4337613fde0aa9a830a719bd4f3807efaf874f6d2b298c848844` |
| 383 | `theorem` | [exists_nat_pos_inv_mul_lt](../../../../RealFunctions/ENNReal.lean/declarations/exists-nat-pos-inv-mul-lt.md) | 1876 | `result-track:fe8118a492d579496e3f109d0d2f6e0307662333aa46f3955f7e7c4cdc929139` |
| 384 | `theorem` | [exists_nnreal_pos_mul_lt](../../../../RealFunctions/ENNReal.lean/declarations/exists-nnreal-pos-mul-lt.md) | 1884 | `result-track:50bb8e2553505fbd8d39ac0a8457e634f3c689a45ad8475b90aad01b8ef51775` |
| 385 | `theorem` | [exists_inv_two_pow_lt](../../../../RealFunctions/ENNReal.lean/declarations/exists-inv-two-pow-lt.md) | 1890 | `result-track:47c16f7545341a6f4bbc91960fbeaf5e51234ec583483c2e9f059f160c568a1f` |
| 386 | `theorem` | [coe_zpow](../../../../RealFunctions/ENNReal.lean/declarations/coe-zpow.md) | 1899 | `result-track:1a4fc813ae6213e786ca08ff5f54ec7db680421db6b558c6b6141b93b30ad862` |
| 387 | `theorem` | [zpow_pos](../../../../RealFunctions/ENNReal.lean/declarations/zpow-pos.md) | 1906 | `result-track:c98576a0a423b0fbab4c7c3cae7aed7832b8747a25c471de811c1c5e939905c6` |
| 388 | `theorem` | [zpow_lt_top](../../../../RealFunctions/ENNReal.lean/declarations/zpow-lt-top.md) | 1912 | `result-track:4458bb62bef80d656dcfff911860c0276fa76e87882f0ca19f04301f93b19f7a` |
| 389 | `theorem` | [exists_mem_Ico_zpow](../../../../RealFunctions/ENNReal.lean/declarations/exists-mem-ico-zpow.md) | 1918 | `result-track:2bf5599f5fe49f522ff870d02775c64e70fa0adf0803c9e8dd6b8f681caccd5b` |
| 390 | `theorem` | [exists_mem_Ioc_zpow](../../../../RealFunctions/ENNReal.lean/declarations/exists-mem-ioc-zpow.md) | 1931 | `result-track:16e57a0fea210cb40cf876715c63022750cfec336186fece1bb5035821bea59f` |
| 391 | `theorem` | [Ioo_zero_top_eq_iUnion_Ico_zpow](../../../../RealFunctions/ENNReal.lean/declarations/ioo-zero-top-eq-iunion-ico-zpow.md) | 1944 | `result-track:4ef881d2fb0f78400b7d7defb05afa16da98dd22cedad218ab98fd5aa00176c0` |
| 392 | `theorem` | [zpow_le_of_le](../../../../RealFunctions/ENNReal.lean/declarations/zpow-le-of-le.md) | 1960 | `result-track:50e64d65f64f99cb9d8039cddd00d0e8fbb07be738c8b1f0fdb097d958b51884` |
| 393 | `theorem` | [monotone_zpow](../../../../RealFunctions/ENNReal.lean/declarations/monotone-zpow.md) | 1974 | `result-track:aea5333fd60bbc90e3465d9484b0fc310ff2f3e1a58b8eb639d15a16f6f75e4b` |
| 394 | `theorem` | [zpow_add](../../../../RealFunctions/ENNReal.lean/declarations/zpow-add.md) | 1978 | `result-track:f34a9a03b1e3f31a4d6220a1698a170050a3fdd9233fbf4f44e2ec28dbe726d1` |
| 395 | `theorem` | [toReal_add](../../../../RealFunctions/ENNReal.lean/declarations/toreal-add.md) | 1989 | `result-track:778f82fc3f3a2e8d3968f18d92081d6f0034acb50a5beee5ab2588748f34aeac` |
| 396 | `theorem` | [toReal_sub_of_le](../../../../RealFunctions/ENNReal.lean/declarations/toreal-sub-of-le.md) | 1995 | `result-track:8de0456157082135ad948c2e781e22ae19ac80b8e6970844d442db31ecb015fe` |
| 397 | `theorem` | [le_toReal_sub](../../../../RealFunctions/ENNReal.lean/declarations/le-toreal-sub.md) | 2002 | `result-track:66246b83136d5018c93ca9fa3434a846ed215d0e3b8020ef29b3cc6988359190` |
| 398 | `theorem` | [toReal_add_le](../../../../RealFunctions/ENNReal.lean/declarations/toreal-add-le.md) | 2010 | `result-track:454f642ca97b086bdba521cdef6e3c768ce624d4b7ff8378d510aa3770d8f4a6` |
| 399 | `theorem` | [ofReal_add](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-add.md) | 2017 | `result-track:d3bef2a242ff3b07d75c7a8580e964159295767edac1c11cd0471e89c84df23f` |
| 400 | `theorem` | [ofReal_add_le](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-add-le.md) | 2023 | `result-track:51de683b41d7b456e2ae5db0332665e51c30e7fdc92020887a42c0d78fb0c1fc` |
| 401 | `theorem` | [toReal_le_toReal](../../../../RealFunctions/ENNReal.lean/declarations/toreal-le-toreal.md) | 2028 | `result-track:cfd81a70ff9a7b09b6d290bc7ff61ac1d00f7ee68dc7288990372ec2a32fce6c` |
| 402 | `theorem` | [toReal_mono](../../../../RealFunctions/ENNReal.lean/declarations/toreal-mono-source-edition-2.md) | 2034 | `result-track:d6444c4b2578532ff4ac14a759d6bee652e5f1dd0d3b456e7e2b27ddebc9d01b` |
| 403 | `theorem` | [toReal_mono'](../../../../RealFunctions/ENNReal.lean/declarations/toreal-mono.md) | 2039 | `result-track:803d7df1c5f9cc6baef041c53257e57dc357dc3f7627be04a1223ca2bf8efac0` |
| 404 | `theorem` | [toReal_lt_toReal](../../../../RealFunctions/ENNReal.lean/declarations/toreal-lt-toreal.md) | 2045 | `result-track:f7353ad64ae9563bad7ef99edf7702b6ceb1d708a9598c2151c01cb9f2deb300` |
| 405 | `theorem` | [toReal_strict_mono](../../../../RealFunctions/ENNReal.lean/declarations/toreal-strict-mono.md) | 2051 | `result-track:41e65d1088da32f155caabaaaf100deb0330edec947f935a72ea389b91799794` |
| 406 | `theorem` | [toNNReal_mono](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-mono.md) | 2055 | `result-track:c9626939308e8dfca6daf61b4c48efcc8aadf137426fdbf443f8f5e4401aaa64` |
| 407 | `theorem` | [toReal_le_add'](../../../../RealFunctions/ENNReal.lean/declarations/toreal-le-add.md) | 2063 | `result-track:8593bb056f030d82b2f654f41f1ad7dfdc22e11eaf6504ea918511772d5c12db` |
| 408 | `theorem` | [toReal_le_add](../../../../RealFunctions/ENNReal.lean/declarations/toreal-le-add-source-edition-2.md) | 2072 | `result-track:f603ed2a1f3459d9e7713c222e0670199ceb37c04c4ba0385b3ca57403182d4f` |
| 409 | `theorem` | [toNNReal_le_toNNReal](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-le-tonnreal.md) | 2077 | `result-track:1f2006b8499c1bd356ffebeb7e9bf2981522d9cf424c62ff34f302608ea2ef50` |
| 410 | `theorem` | [toNNReal_strict_mono](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-strict-mono.md) | 2081 | `result-track:a9fe2b38dc03d293fff11f25b93b649386d403398a378c395cb1a32755cef51e` |
| 411 | `theorem` | [toNNReal_lt_toNNReal](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-lt-tonnreal.md) | 2086 | `result-track:b783b3c769e01ad6a5df8bbdbad3c3f87c120658002fb98cfa0c00f768f82956` |
| 412 | `theorem` | [toReal_max](../../../../RealFunctions/ENNReal.lean/declarations/toreal-max.md) | 2090 | `result-track:83be61da4a1e4f1c772402298bfd0c2a505b270bd135b69a0e45820ab50ecc0a` |
| 413 | `theorem` | [toReal_min](../../../../RealFunctions/ENNReal.lean/declarations/toreal-min.md) | 2097 | `result-track:c6a27034d0fee8d42da6966a8d70b5d598d472a3d12d12fc65fa5d34525a92f5` |
| 414 | `theorem` | [toReal_sup](../../../../RealFunctions/ENNReal.lean/declarations/toreal-sup.md) | 2103 | `result-track:f5a97211916e4f83b111bb22c1a4d05370e624bee74362fdfb1c8a59d13eafe7` |
| 415 | `theorem` | [toReal_inf](../../../../RealFunctions/ENNReal.lean/declarations/toreal-inf.md) | 2107 | `result-track:20035f622627a3c35d0558f80de08d470fea7f20efe267814f35f9b2f662525a` |
| 416 | `theorem` | [toNNReal_pos_iff](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-pos-iff.md) | 2111 | `result-track:ecc382b45d8e8b59d30b8584c4a625473fdf2db2de937d5f4ac43e1ab163e0b8` |
| 417 | `theorem` | [toNNReal_pos](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-pos.md) | 2115 | `result-track:8a5ba7982d5c7e9029d9671a6c4284f1b4d818c186de8feaa13acd4e87e85bce` |
| 418 | `theorem` | [toReal_pos_iff](../../../../RealFunctions/ENNReal.lean/declarations/toreal-pos-iff.md) | 2119 | `result-track:e686dc82b9299eba6de0b744bc107345f440f059f279057633cfafca4c7a942a` |
| 419 | `theorem` | [toReal_pos](../../../../RealFunctions/ENNReal.lean/declarations/toreal-pos.md) | 2123 | `result-track:b91dbb863427826c3d488cd6ebbfa4e6a70e48ce3ae9b6bfefb6e3e091e93342` |
| 420 | `theorem` | [ofReal_le_ofReal](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-le-ofreal.md) | 2127 | `result-track:67fa96a6a934873600bdfad95b26384162b698c6459398025b88f2e5692e2ef5` |
| 421 | `theorem` | [ofReal_le_of_le_toReal](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-le-of-le-toreal.md) | 2131 | `result-track:b8a56136382660c7edc450f36f81c993cab5b4d0e9feb88fd65991a29767fe6d` |
| 422 | `theorem` | [ofReal_le_ofReal_iff](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-le-ofreal-iff.md) | 2137 | `result-track:9369ff729895fa2111ebf2204fddad63f9e8413705a35754b5991ecba1566034` |
| 423 | `theorem` | [ofReal_eq_ofReal_iff](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-eq-ofreal-iff.md) | 2142 | `result-track:bd8dceb947d49b0c6e9d1c11ce0aac653bdae2119d6ef288449253f240323028` |
| 424 | `theorem` | [ofReal_lt_ofReal_iff](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-lt-ofreal-iff.md) | 2148 | `result-track:3bc1b26b6c47ce7839260e165d1b42cef6b617beabed9886725a724c72c50b3b` |
| 425 | `theorem` | [ofReal_lt_ofReal_iff_of_nonneg](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-lt-ofreal-iff-of-nonneg.md) | 2152 | `result-track:2e8b743af4b4f84a1b3ec5ba71fb53e6025f6d38a7bfa0c9580ef12aeb0447dc` |
| 426 | `theorem` | [ofReal_pos](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-pos.md) | 2158 | `result-track:1a6ca2f80c7297bc27767801817fe7c4a2eae567a6be2a2b4ab1fe6dd507e602` |
| 427 | `theorem` | [ofReal_eq_zero](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-eq-zero.md) | 2162 | `result-track:1988e72aa15441f4b4e6e8778ebeddfd7fe1daced98c61c9e51788ce3a73e9a2` |
| 428 | `theorem` | [zero_eq_ofReal](../../../../RealFunctions/ENNReal.lean/declarations/zero-eq-ofreal.md) | 2166 | `result-track:fe179a36f52dd67f78167fb2e24f276138041ef89db873171bb05bfd0e4f4f9a` |
| 429 | `theorem` | [ofReal_sub](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-sub.md) | 2173 | `result-track:8854d0b69fbc4febfa10d5a0a3cbe42ed91b3447cf865fe0bcb7ba7008f2554a` |
| 430 | `theorem` | [ofReal_le_iff_le_toReal](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-le-iff-le-toreal.md) | 2181 | `result-track:498ada3734910642284dd6b27c0c3901ed4537c7e273b64145da26b5bb393018` |
| 431 | `theorem` | [ofReal_lt_iff_lt_toReal](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-lt-iff-lt-toreal.md) | 2187 | `result-track:b846eee7e86e639451698fd70e0270c9a0b7b8bdc9b6ee442e925aa88bdb80f8` |
| 432 | `theorem` | [ofReal_lt_coe_iff](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-lt-coe-iff.md) | 2193 | `result-track:02628937b754162da192db6f4a9b5a514971bd6f0eeacf32bd0f290c904c0ed2` |
| 433 | `theorem` | [le_ofReal_iff_toReal_le](../../../../RealFunctions/ENNReal.lean/declarations/le-ofreal-iff-toreal-le.md) | 2196 | `result-track:9b305083a15269eecb8c2aee44eeb43336e3511e2c597f7c8d834f1c15d0a963` |
| 434 | `theorem` | [toReal_le_of_le_ofReal](../../../../RealFunctions/ENNReal.lean/declarations/toreal-le-of-le-ofreal.md) | 2202 | `result-track:2770220a41e0fc5bc05f3272c0ec6892e4308cb392e28e85029ab11cd7b446f6` |
| 435 | `theorem` | [lt_ofReal_iff_toReal_lt](../../../../RealFunctions/ENNReal.lean/declarations/lt-ofreal-iff-toreal-lt.md) | 2208 | `result-track:4dbeed2bc3fae8ba3fea4a8761cf1e4d318fb6ff4d53efae15a4d303f54d04a2` |
| 436 | `theorem` | [toReal_lt_of_lt_ofReal](../../../../RealFunctions/ENNReal.lean/declarations/toreal-lt-of-lt-ofreal.md) | 2214 | `result-track:f79788a434fb9b951bea69bce0cab2ab3be0cc981771747e9dff3d989f14b8f8` |
| 437 | `theorem` | [ofReal_mul](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-mul-source-edition-2.md) | 2217 | `result-track:b18efa5d9f909b415ce0afaddcaa6dcb81948da2beeae7b3df77e31f3ddfc50c` |
| 438 | `theorem` | [ofReal_mul'](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-mul.md) | 2222 | `result-track:a678951fd93e94b88f78d0924a131a6159cf48a377f2e260fc49a3bd3da9292f` |
| 439 | `theorem` | [ofReal_pow](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-pow.md) | 2227 | `result-track:9f0ec6dd22a46e7c673ed3050c6c3af07ddf468bf438aab460626b07c05243d0` |
| 440 | `theorem` | [ofReal_nsmul](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-nsmul.md) | 2231 | `result-track:a77ea4d82e545598cc5e82e03abf5f3e925f6b07c53df0bbb847b4ad96b65122` |
| 441 | `theorem` | [ofReal_inv_of_pos](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-inv-of-pos.md) | 2235 | `result-track:94862ba15293db51a2ca65b891098766a7fa9b7430868bf4e21823a515a6abba` |
| 442 | `theorem` | [ofReal_div_of_pos](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-div-of-pos.md) | 2240 | `result-track:ad47b1f08ec2dbe0c9b3fdb228da1a6f4ab63156aab6a2c0cc9effdf255a78ed` |
| 443 | `theorem` | [toNNReal_mul](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-mul.md) | 2246 | `result-track:f27772d8c9b1b1f0ee43192bedfdbb7c6bc43caa0f383b57496a9d69c45e4bac` |
| 444 | `theorem` | [toNNReal_mul_top](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-mul-top.md) | 2250 | `result-track:34f9e3805d63a77b7fb0f1f9a2c2d5617452ac1f825ccfb52c02aa3f345031f1` |
| 445 | `theorem` | [toNNReal_top_mul](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-top-mul.md) | 2253 | `result-track:77e68f8a112db7929446ce2b413d277eb0892d0761f3f183643ebfea220b49b1` |
| 446 | `theorem` | [smul_toNNReal](../../../../RealFunctions/ENNReal.lean/declarations/smul-tonnreal.md) | 2257 | `result-track:bbccf4858740e2a3ba092bcb688cb3911a5640f47aa6af045f3b62fe3355bfc9` |
| 447 | `def` | [toNNRealHom](../../../../RealFunctions/ENNReal.lean/declarations/tonnrealhom.md) | 2264 | `declaration-track:055751bdfc717d3f5ea09b2cc2a76f6eda419e27ab82e6e7a87befedece20503` |
| 448 | `theorem` | [toNNReal_pow](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-pow.md) | 2271 | `result-track:2a2db2624bb6502aa07973954a4c3d7a420416848a23d55a9e3a39b99633c45e` |
| 449 | `theorem` | [toNNReal_prod](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-prod.md) | 2276 | `result-track:c4a1834a138f17db7e19a4e0c039d281fd22565179f16d62265096a129f954a5` |
| 450 | `def` | [toRealHom](../../../../RealFunctions/ENNReal.lean/declarations/torealhom.md) | 2283 | `declaration-track:f32a6f7924cc7a54570f6f6ea88d2dff206d74ac14ccb4fd88d9459e6a9286f3` |
| 451 | `theorem` | [toReal_mul](../../../../RealFunctions/ENNReal.lean/declarations/toreal-mul.md) | 2288 | `result-track:3002d5e27aff2cb9dcf6d7ec377a5e9c517b6eed1c99be61835ffca32c39118a` |
| 452 | `theorem` | [toReal_nsmul](../../../../RealFunctions/ENNReal.lean/declarations/toreal-nsmul.md) | 2292 | `result-track:1d8edcba49dc9b7d20ef47ded07b29ad3fef3500877b9af5bf75a99458ea2251` |
| 453 | `theorem` | [toReal_pow](../../../../RealFunctions/ENNReal.lean/declarations/toreal-pow.md) | 2295 | `result-track:5e7c4520b99367fe615f31983b3b021775309b3093dc9802cf9366b9015926fa` |
| 454 | `theorem` | [toReal_prod](../../../../RealFunctions/ENNReal.lean/declarations/toreal-prod.md) | 2300 | `result-track:3517b3eb67cd0e4d10feedfb67671126283c21570057f7a30b0011c40145839b` |
| 455 | `theorem` | [toReal_ofReal_mul](../../../../RealFunctions/ENNReal.lean/declarations/toreal-ofreal-mul.md) | 2305 | `result-track:ec9cdc09c36d1534b53641e4c6377c38952b3767b3a97efdd27bf1f237874a4f` |
| 456 | `theorem` | [toReal_mul_top](../../../../RealFunctions/ENNReal.lean/declarations/toreal-mul-top.md) | 2310 | `result-track:93ac13fbbd5a5f34433e81fb07f6bbd3e266e15f1b074b446215b33d88c63b26` |
| 457 | `theorem` | [toReal_top_mul](../../../../RealFunctions/ENNReal.lean/declarations/toreal-top-mul.md) | 2314 | `result-track:b5b85a9420b1fb82a35f15f88707dca3ffe73923696391ac7e578fa448bcd5c2` |
| 458 | `theorem` | [toReal_eq_toReal](../../../../RealFunctions/ENNReal.lean/declarations/toreal-eq-toreal.md) | 2319 | `result-track:925e7e5056269c75576b752a355cc445097c688d9ed072ee803510d20b7f942f` |
| 459 | `theorem` | [toReal_smul](../../../../RealFunctions/ENNReal.lean/declarations/toreal-smul.md) | 2325 | `result-track:c37f60145f3a7d74fbfe2baf340d734cdafbb5723b3dc097a9245b48e1916542` |
| 460 | `theorem` | [trichotomy](../../../../RealFunctions/ENNReal.lean/declarations/trichotomy.md) | 2330 | `result-track:0a9a2f7e89cf1925715bcc7e50306d8bbb0d9de00073d42f522820491449a0d0` |
| 461 | `theorem` | [trichotomy₂](../../../../RealFunctions/ENNReal.lean/declarations/trichotomy-source-edition-2.md) | 2334 | `result-track:39b4f7fa98ab44b6f08c715d6970474c8f153b7f1eae387ce05c37447cef3658` |
| 462 | `theorem` | [dichotomy](../../../../RealFunctions/ENNReal.lean/declarations/dichotomy.md) | 2350 | `result-track:a3cb7411261f1eb725d58837d7c9493bfd00637cd3f60207605110541cc39052` |
| 463 | `theorem` | [toReal_pos_iff_ne_top](../../../../RealFunctions/ENNReal.lean/declarations/toreal-pos-iff-ne-top.md) | 2356 | `result-track:85339f39d7e76657770e41379ab4227dbee93f450a4a31220d935a8b2e2e6bad` |
| 464 | `theorem` | [toNNReal_inv](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-inv.md) | 2363 | `result-track:7fb109ee73202f9f992764be51f25e1c547c06d5d7bb17bacb6b2d034a6019f6` |
| 465 | `theorem` | [toNNReal_div](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-div.md) | 2369 | `result-track:233c7d66ad10fe80e73b0a9518c1bd3aaa08964c0355b53456556a7ba6074a63` |
| 466 | `theorem` | [toReal_inv](../../../../RealFunctions/ENNReal.lean/declarations/toreal-inv.md) | 2373 | `result-track:8c3a4d4f79ec5b0f90517385452465fe56ed6077d9b937ab34883c5ed0afd952` |
| 467 | `theorem` | [toReal_div](../../../../RealFunctions/ENNReal.lean/declarations/toreal-div.md) | 2377 | `result-track:afe3613d6936fd8bbc914449c80e123d08a4f145acb2985bfac3bcbece9fa625` |
| 468 | `theorem` | [ofReal_prod_of_nonneg](../../../../RealFunctions/ENNReal.lean/declarations/ofreal-prod-of-nonneg.md) | 2381 | `result-track:09639436304031a4a10e26ba21e058cb81cab009bd1b23fded16ef86757d5a04` |
| 469 | `theorem` | [toNNReal_iInf](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-iinf.md) | 2400 | `result-track:0c02e242d80296f1af05742489fd90c106f1c40cc5c879170628b1d6e5cd3aeb` |
| 470 | `theorem` | [toNNReal_sInf](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-sinf.md) | 2407 | `result-track:b655a627034eeda93ad91d0d212b94128302ac06e8880fad1c4f1a6e475d48bf` |
| 471 | `theorem` | [toNNReal_iSup](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-isup.md) | 2415 | `result-track:04abcc16e1018481328b8e33ea347032c79b82bd99c49f366adc9f26a56a968c` |
| 472 | `theorem` | [toNNReal_sSup](../../../../RealFunctions/ENNReal.lean/declarations/tonnreal-ssup.md) | 2425 | `result-track:c6d253343bf6122e3daa00abcd9cce0571e429412be320f433e66076d86aa852` |
| 473 | `theorem` | [toReal_iInf](../../../../RealFunctions/ENNReal.lean/declarations/toreal-iinf.md) | 2433 | `result-track:147febc23bffbc0a105df557fec14e1bd57f9353b997fd6a7dbaa9229b6b8b36` |
| 474 | `theorem` | [toReal_sInf](../../../../RealFunctions/ENNReal.lean/declarations/toreal-sinf.md) | 2437 | `result-track:6c1af3d724c8dd237f3fa64cc679363cc70d5626519069f572832bc273b6ee80` |
| 475 | `theorem` | [toReal_iSup](../../../../RealFunctions/ENNReal.lean/declarations/toreal-isup.md) | 2442 | `result-track:797e86a81f445189f93fe170fbcf8bc2e99412627caa42ee3f947880be38c632` |
| 476 | `theorem` | [toReal_sSup](../../../../RealFunctions/ENNReal.lean/declarations/toreal-ssup.md) | 2446 | `result-track:462735201c1a2d2119ce85ba3b02a2267aad2a0446c8b1daf50a9719b6b9944a` |
| 477 | `theorem` | [iInf_add](../../../../RealFunctions/ENNReal.lean/declarations/iinf-add.md) | 2451 | `result-track:f8f198e6d77234b6e6f6ed1405fdac642506920c2195d887a78348037c4ffcae` |
| 478 | `theorem` | [iSup_sub](../../../../RealFunctions/ENNReal.lean/declarations/isup-sub.md) | 2456 | `result-track:fbe812ccb1a6546d7e012eb04050f2b5590f5bceba6adb7691036efb204d9746` |
| 479 | `theorem` | [sub_iInf](../../../../RealFunctions/ENNReal.lean/declarations/sub-iinf.md) | 2461 | `result-track:f8da250069b4aa2e6d48f69a80545d62fefe3d07fc620850aac2905dc0c5fbbe` |
| 480 | `theorem` | [sInf_add](../../../../RealFunctions/ENNReal.lean/declarations/sinf-add.md) | 2467 | `result-track:b5293ab341ebbbc4d096bae874d8f673dcbcbadcaa782d226ab8e01143831c61` |
| 481 | `theorem` | [add_iInf](../../../../RealFunctions/ENNReal.lean/declarations/add-iinf.md) | 2470 | `result-track:59c361c3ebe02bac7b6a0cc1a3290e0cde9914a776f4b30f9663aebbc15eaab2` |
| 482 | `theorem` | [iInf_add_iInf](../../../../RealFunctions/ENNReal.lean/declarations/iinf-add-iinf.md) | 2474 | `result-track:207fc514f4ee7764b83bc999321c43a7ede3a7e359723047506bb7c889bbd666` |
| 483 | `theorem` | [iInf_sum](../../../../RealFunctions/ENNReal.lean/declarations/iinf-sum.md) | 2483 | `result-track:65fcfd0b43eb261be682125d7d03c2ab130136865a28497e01851597b4495966` |
| 484 | `theorem` | [iInf_mul_of_ne](../../../../RealFunctions/ENNReal.lean/declarations/iinf-mul-of-ne.md) | 2497 | `result-track:9a59c41eed384324f265608a980141cb3a89dd4453c81cef622fb1e1955aeaff` |
| 485 | `theorem` | [iInf_mul](../../../../RealFunctions/ENNReal.lean/declarations/iinf-mul.md) | 2506 | `result-track:93e70f9c94a0d78fa1550a9d18eb398117ef65db0cf9a60de444d69261f29a3d` |
| 486 | `theorem` | [mul_iInf](../../../../RealFunctions/ENNReal.lean/declarations/mul-iinf.md) | 2515 | `result-track:00309e5754e9372ed9e2713ac980949cdb0cca757fb9eafe41a42b2bf7df8b01` |
| 487 | `theorem` | [mul_iInf_of_ne](../../../../RealFunctions/ENNReal.lean/declarations/mul-iinf-of-ne.md) | 2521 | `result-track:99509a5953d05a2b99bc914658c0352d8fa2fcc6a6c6392c6f10523dbc72c431` |
| 488 | `theorem` | [iSup_eq_zero](../../../../RealFunctions/ENNReal.lean/declarations/isup-eq-zero.md) | 2532 | `result-track:337716dd13cbd6942716943987a70923f1d72e62d0ec8f9c7c75dc0db248b13d` |
| 489 | `theorem` | [iSup_zero_eq_zero](../../../../RealFunctions/ENNReal.lean/declarations/isup-zero-eq-zero.md) | 2537 | `result-track:35fb3ef0465ef0f1bc00a5c438e4422f5d777f9f6bfcd91d087a7b97f9d8a703` |
| 490 | `theorem` | [sup_eq_zero](../../../../RealFunctions/ENNReal.lean/declarations/sup-eq-zero.md) | 2540 | `result-track:75b4df237f0bab8355b5876337f1ad4a89d48d85a87f02ccdd009e7d8ebaa431` |
| 491 | `theorem` | [iSup_coe_nat](../../../../RealFunctions/ENNReal.lean/declarations/isup-coe-nat.md) | 2544 | `result-track:0b4250a2579bc7cf78a74824d9b118db1c5742465bc688cfc76a87e27827608e` |
| 492 | `theorem` | [preimage_coe_nnreal_ennreal](../../../../RealFunctions/ENNReal.lean/declarations/preimage-coe-nnreal-ennreal.md) | 2560 | `result-track:26cd5de8aa86e1c004db6367906d4e60a7418236fb0c6c3ba40361426127a91d` |
| 493 | `theorem` | [image_coe_nnreal_ennreal](../../../../RealFunctions/ENNReal.lean/declarations/image-coe-nnreal-ennreal.md) | 2565 | `result-track:96cf9de0463d5b217ae8fa527a8b1a345e762f03d5f2e430b702608c4f4fd812` |
| 494 | `theorem` | [preimage_ennreal_ofReal](../../../../RealFunctions/ENNReal.lean/declarations/preimage-ennreal-ofreal.md) | 2571 | `result-track:1ce7f1407bc61caec1dbd5f4d6594aa61a27b356dfe1953fba0fac01fe0ed1e8` |
| 495 | `theorem` | [image_ennreal_ofReal](../../../../RealFunctions/ENNReal.lean/declarations/image-ennreal-ofreal.md) | 2575 | `result-track:38bd853e984424ce9d948396a4df5a9eeb8f4756e76c4cf45c44d7b1d531e1fe` |
| 496 | `def` | [evalENNRealtoReal](../../../../RealFunctions/ENNReal.lean/declarations/evalennrealtoreal.md) | 2589 | `declaration-track:c56213b7e552d56e77cda158d64b193b80a0307c251db200017f096ebb31bf48` |
| 497 | `def` | [evalENNRealOfReal](../../../../RealFunctions/ENNReal.lean/declarations/evalennrealofreal.md) | 2596 | `declaration-track:3f4db46e6242736de67564769ff1f700a510f49505d12c51c17e296662612afe` |
| 498 | `def` | [evalENNRealSome](../../../../RealFunctions/ENNReal.lean/declarations/evalennrealsome.md) | 2609 | `declaration-track:538a7561c08b32b6090d7ce4fbae5f174c278a3545bc6ee766ef0c543ac1a65f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e549035eda38decb987af8bb6b7b06a4a404c160a52d601d4f0d90af3a874f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

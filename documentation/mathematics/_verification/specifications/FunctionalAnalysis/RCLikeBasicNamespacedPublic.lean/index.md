# Verification target: RCLike Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d238c7aa6d8bd711e3b27b9b3d07ac93c2852a8",
  "lexical_observation_count": 277,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d238c7aa6d8bd711e3b27b9b3d07ac93c2852a8`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean.json)

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
| 1 | `class` | [RCLike](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/rclike.md) | 68 | `declaration-track:1af5f1dab263eea36f472b1ec27cb32cead0c9ea953c5b7ce246adb2cfecbda6` |
| 2 | `abbrev` | [ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal.md) | 105 | `declaration-track:5cc28e5f5420d0eb79df02e0f9cda2579e5a6c9e53823afce3ca2997c0ccc50a` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 109 | `declaration-track:917fa3b9824e8670c8dbfd038af15bffa55592f0d052bf8d6ff96f53c3699b42` |
| 4 | `theorem` | [ofReal_alg](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-alg.md) | 112 | `result-track:e3d981bf5ecf6e08f7728a35e3e38c0ed735fcf0f30d22cf96d558e8cf6e1716` |
| 5 | `theorem` | [real_smul_eq_coe_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/real-smul-eq-coe-mul.md) | 115 | `result-track:bec96d4f13b7479dfcf442ea5fe50b84d2055a40bacf22bc46e2024d6ae7ac48` |
| 6 | `theorem` | [real_smul_eq_coe_smul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/real-smul-eq-coe-smul.md) | 118 | `result-track:ee8b708a53afdb9359efe5b552fb7b7b396045f70ded2ff361c84ca1fb7c9112` |
| 7 | `theorem` | [algebraMap_eq_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/algebramap-eq-ofreal.md) | 121 | `result-track:4618030c9d763af865b091dd955ca48f1504ae5a9a74e481c8086b320396c46c` |
| 8 | `theorem` | [re_add_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-add-im.md) | 125 | `result-track:4b30055562a40d20b2ea0d202571fac492ff81851a1d636a0203b0520c171174` |
| 9 | `theorem` | [ofReal_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-re.md) | 129 | `result-track:a67065690a1e048fa170a38dc6b69d7f74c2ad9c49ccf125024cba72a017bbfa` |
| 10 | `theorem` | [ofReal_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-im.md) | 133 | `result-track:681d95e38f299d65081b0b95855579f600fcfc800df51a89bae565ed52525f83` |
| 11 | `theorem` | [mul_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/mul-re.md) | 137 | `result-track:89989a01d49ae0e6741a7e516462714074e8945a786b768315b113adc7718d9f` |
| 12 | `theorem` | [mul_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/mul-im.md) | 141 | `result-track:de7e3249f738ef3095a8f3c952cbf34f67244a2d2bef8150e045eeb9adccb8a2` |
| 13 | `theorem` | [ext_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ext-iff.md) | 144 | `result-track:9e2147f078b4d7b403d4d68e05def3bc08ee78d58c6f062c65d9e774ee1074e6` |
| 14 | `theorem` | [ext](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ext.md) | 147 | `result-track:27da3d722c979cdcc5ab0bcd6cecb1ddbf824aee0dec8c11b852f03faa40271e` |
| 15 | `theorem` | [ofReal_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-zero.md) | 151 | `result-track:8b53595f5dc4d3d4c319394ba39cb9a41cee7de8736f526e2bf9af6c94d15694` |
| 16 | `theorem` | [zero_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/zero-re.md) | 155 | `result-track:2b74c0729c237ec504db8b94e6b940fe4cca483f44452a04fa9b9ccc1abb7d66` |
| 17 | `theorem` | [zero_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/zero-im.md) | 159 | `result-track:b804a3ce48b06e457ec48232f5535e2d652a2b0f00a7f9f0e13afaf25841066e` |
| 18 | `theorem` | [ofReal_one](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-one.md) | 163 | `result-track:26cae57791f81e1c77fb3205d3c0483fb152889bd2636c694fbd779af4829108` |
| 19 | `theorem` | [one_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/one-re.md) | 167 | `result-track:d71f8cbf84de0bebc25425ab8dd435c1c75c5a52611ad116ef74fda71ae5ea67` |
| 20 | `theorem` | [one_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/one-im.md) | 170 | `result-track:97bb95bb3f2854bdde826bdab4858a3a9e603ed44949fefe1818ddba01ef6e76` |
| 21 | `theorem` | [ofReal_injective](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-injective.md) | 172 | `result-track:6d3d084ee46b6b477356f6776ec247fa682050937b6db91d7c502f132a337d83` |
| 22 | `theorem` | [ofReal_inj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-inj.md) | 176 | `result-track:975a3431ae3ff3803c64f4c23de8733d004b74c7a4838ddf461c75ee2e6874e4` |
| 23 | `theorem` | [ofReal_eq_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-eq-zero.md) | 179 | `result-track:85c24d4b7662c451b0aafe72e2eb75b374094f6a122e9cc9171d64840bae940f` |
| 24 | `theorem` | [ofReal_ne_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-ne-zero.md) | 182 | `result-track:f854404d15b840a79d14773f6a9509af925ee7a695a64eeed40e4ab5a17b9b5b` |
| 25 | `theorem` | [ofReal_add](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-add.md) | 186 | `result-track:eb79c520b201533b2973973b3bcf286139f34923cb60176712fa18b1990ab767` |
| 26 | `theorem` | [ofReal_neg](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-neg.md) | 190 | `result-track:e4982ee37a1c014e37bfc2ae6f7f79583c8d9a13c6fbdc07363aa8c94e927865` |
| 27 | `theorem` | [ofReal_sub](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-sub.md) | 194 | `result-track:1bc68b7eaa01093ea8b72234c5870e4890047f82ede6e02be223eb5852597e48` |
| 28 | `theorem` | [ofReal_sum](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-sum.md) | 198 | `result-track:0e6b1f770f0c1717f80a1b74bd1eb4a17c2bd94f25d5916e498a070f8d4c59c7` |
| 29 | `theorem` | [ofReal_finsupp_sum](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-finsupp-sum.md) | 203 | `result-track:4c7d9e0554528ce48da10fb61f89d11775a437f819d704ecfecf71d09303340d` |
| 30 | `theorem` | [ofReal_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-mul.md) | 208 | `result-track:ac6e9681f2c9a50424fec4df00502f80158a3fa87d4526d144ac5ad35f26d821` |
| 31 | `theorem` | [ofReal_pow](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-pow.md) | 212 | `result-track:7ea375709a9c048f0e3ca8cca8bcc80919f3a03b6b560a0a15fa4dba0dba932b` |
| 32 | `theorem` | [ofReal_prod](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-prod.md) | 216 | `result-track:9942966af9094487fbfb8ec5f86b0c7592c96a81b8c67a48d2676904221bb425` |
| 33 | `theorem` | [ofReal_finsuppProd](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-finsuppprod.md) | 221 | `result-track:85cb8ae46100bd1c0358472f8bc3a1b6cf3c8d7e452e90a69a03c40cc6247a29` |
| 34 | `theorem` | [real_smul_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/real-smul-ofreal.md) | 226 | `result-track:50404d56bf7399fcff111761bbebaee87f1eacb2381f07164ba4fa6ccca39c07` |
| 35 | `theorem` | [re_ofReal_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-ofreal-mul.md) | 230 | `result-track:b78fa959087c8c1f0a24790684ab8de1ef94af666cfe5c879f129a7224f5e461` |
| 36 | `theorem` | [re_mul_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-mul-ofreal.md) | 234 | `result-track:f508326e6744f7a3686542d8eadc975e11b44beac385d22db56fc25b9b9f532a` |
| 37 | `theorem` | [im_ofReal_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-ofreal-mul.md) | 238 | `result-track:f2116f8675b421992217baec7e29ea3037c026c26109f54f06179a3615f39edf` |
| 38 | `theorem` | [im_mul_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-mul-ofreal.md) | 242 | `result-track:df5f84831c32f2493a60ac69b8e439b08e2ffafe0ec33b15c3887dd195caf2a3` |
| 39 | `theorem` | [smul_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/smul-re.md) | 246 | `result-track:78bdc09d7155b8a042c65a7d9fb0eb62631fd71c53015ffb53e26b65d8c161dd` |
| 40 | `theorem` | [smul_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/smul-im.md) | 250 | `result-track:008a7d351c7c5f5b1aeedc56a3c057acc41fe0b815333708b5794f6d6a6ee509` |
| 41 | `theorem` | [norm_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-ofreal.md) | 254 | `result-track:e7d2a33796198a1671a2ac49504e8f87227cc1deb4e4782afc59982327933558` |
| 42 | `theorem` | [re_ofReal_pow](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-ofreal-pow.md) | 258 | `result-track:4a5582c2d4194e3f25dbf94654b2af57b9e3e6b1c131175ea6d86792214f285a` |
| 43 | `theorem` | [im_ofReal_pow](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-ofreal-pow.md) | 262 | `result-track:a90eeeb8377a9f55b95427ae113444e027a7578e5a67c23467a5f45ee2eca16b` |
| 44 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 269 | `declaration-track:b73ec2c202809f7a3e75565c8bbf3abbe9c0c4d9c5ea9235254514a17175cbc5` |
| 45 | `lemma` | [ofReal_expect](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-expect.md) | 273 | `result-track:3b96d2836a1741ebd1e8996d715157e80154998eb89e800ba510efa89245804c` |
| 46 | `lemma` | [ofReal_balance](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-balance.md) | 277 | `result-track:f04aa33617fa318a13ba98b7cccbdd2ed17602eee9ada31648582bc853f9d274` |
| 47 | `lemma` | [ofReal_comp_balance](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-comp-balance.md) | 280 | `result-track:3d5d30a5ef70870e79d8dd214e590c4803c1027042bd558a9ac1ea3e7a24ffed` |
| 48 | `theorem` | [I_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/i-re.md) | 287 | `result-track:7a69d2e95e4e7f2a2ae252b1525fc67db305ab20f7addd8554615cdc58f2ba86` |
| 49 | `theorem` | [I_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/i-im.md) | 291 | `result-track:6a76dcbf9a0b0575363fcb127260fb23f6015389c2aa96420f47f91b088a6575` |
| 50 | `theorem` | [I_im'](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/i-im-source-edition-2.md) | 295 | `result-track:6cde53b4128545b40e372813534c6cd19b382b380fee85c979061b484d44d871` |
| 51 | `theorem` | [I_mul_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/i-mul-re.md) | 299 | `result-track:9ea001911843ef76536582359ba9e805458a99ab4ad8ef730c73324d486f2eb9` |
| 52 | `theorem` | [I_mul_I](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/i-mul-i.md) | 302 | `result-track:df5327aa2c51e10cfaa9f1a328e9c5424c5f3d26ed6aeb6aed55df15dc59935e` |
| 53 | `lemma` | [I_eq_zero_or_im_I_eq_one](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/i-eq-zero-or-im-i-eq-one.md) | 306 | `result-track:54cdb1769cf3260ea32673f50ce810b88f544bd44a184b996cd5353611c97005` |
| 54 | `theorem` | [conj_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-re.md) | 310 | `result-track:0e9d2b3a671ef2ef43e8c8a8236857b4f4ad0067698ea00b77712f6c833da88a` |
| 55 | `theorem` | [conj_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-im.md) | 314 | `result-track:fd57251df5322cb8ff41268397fc06ec94b8173927468e3ad4ef27af50c6084f` |
| 56 | `theorem` | [conj_I](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-i.md) | 318 | `result-track:b5417c3c2dd0e955607c28f428352523da7dca5b005546b7d5c030062d193c1c` |
| 57 | `theorem` | [conj_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-ofreal.md) | 322 | `result-track:8b31467f646a32c8b85fdfecedc28d6bfb2670b51c2841a5c22cf6d4df86d96e` |
| 58 | `theorem` | [conj_nat_cast](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-nat-cast.md) | 326 | `result-track:5cdd686fb24c6c8749513cd65aec323a26d46d6d2aec22aa1ed7ae2124dc4ca3` |
| 59 | `theorem` | [conj_ofNat](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-ofnat.md) | 328 | `result-track:107513c33305783c37937cc155fa0472db4445703205703c32eabc30794bb8ec` |
| 60 | `theorem` | [conj_neg_I](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-neg-i.md) | 332 | `result-track:77ee4c307431eb552aadcac106e3e91a1886c36b5cdcbc45329347f46c183a3c` |
| 61 | `theorem` | [conj_eq_re_sub_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-eq-re-sub-im.md) | 334 | `result-track:e4a6c12cfb7d1414a135284c6540f21002b4dd4b466b6121638dc30b4efe5828` |
| 62 | `theorem` | [sub_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/sub-conj.md) | 338 | `result-track:46904f3137c4674bc3301a011d8f379d44c9e246ddbaedcf6baa64c2320dd924` |
| 63 | `theorem` | [conj_smul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-smul.md) | 344 | `result-track:bda40705615daf67969532bd2448b668cd8ee8914ab9d331e28bb4310d12b2ef` |
| 64 | `theorem` | [add_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/add-conj.md) | 348 | `result-track:8839d07ef3d547582d5e6c479c87f8b63c1619e70af23eb776511f439a0747f5` |
| 65 | `theorem` | [re_eq_add_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-eq-add-conj.md) | 353 | `result-track:d5bef184a2ffdf067a32d680e5570840e9802d19b0b634ac0b02d2f5a23ef0fd` |
| 66 | `theorem` | [im_eq_conj_sub](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-eq-conj-sub.md) | 356 | `result-track:2a8d08e9147206d124b8f2f146c061c76fcc148b0156b1bfc7917830999c1e07` |
| 67 | `theorem` | [is_real_TFAE](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/is-real-tfae.md) | 362 | `result-track:fa3dfb29795e182721cb0c103bf522f711f3c46d8e05f7c7dfcfc91d2f919748` |
| 68 | `theorem` | [conj_eq_iff_real](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-eq-iff-real.md) | 378 | `result-track:2627a09f4399ca2767c6a5ff318eca777f34e6d0c5e026cf78ee341241f4f922` |
| 69 | `theorem` | [conj_eq_iff_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-eq-iff-re.md) | 383 | `result-track:cd8f6b2e6e5827ee7f4b54a7429c7092cc025e9dde315e89a8adeba264ce5a3a` |
| 70 | `theorem` | [conj_eq_iff_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-eq-iff-im.md) | 386 | `result-track:3e997acfe185c5aa7684d22f940ae5824a40c9084cec43ee8e7ad59b07192d8c` |
| 71 | `theorem` | [star_def](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/star-def.md) | 390 | `result-track:e5d7eec9b57a2bb036384dc4dc28ed8bbe01cb5ba0f840e388c1dcee71fa3085` |
| 72 | `lemma` | [im_eq_zero_iff_isSelfAdjoint](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-eq-zero-iff-isselfadjoint.md) | 393 | `result-track:a2361c40ee8c8a337de77a13d78819cee443a1dc4faed09427fe4a6aef382b84` |
| 73 | `lemma` | [re_eq_ofReal_of_isSelfAdjoint](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-eq-ofreal-of-isselfadjoint.md) | 396 | `result-track:22120638d0b02e62f2699fe8290fd95ff03899f084904cb0d6c9c651460004a3` |
| 74 | `lemma` | [ofReal_eq_re_of_isSelfAdjoint](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-eq-re-of-isselfadjoint.md) | 400 | `result-track:7c5d367e30972dc099c13ad974c32b94efc0cd6455d0c1720393e938fcdf5e39` |
| 75 | `abbrev` | [conjToRingEquiv](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conjtoringequiv.md) | 408 | `declaration-track:d5ffa64e6669db24f0f5fd82c62b608dc364b7f0c2f1c1f8b4fb5a74f77bdab6` |
| 76 | `def` | [normSq](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq.md) | 414 | `declaration-track:1f72a12705986ae4f2c67b99319301aecf64f3a31089fcce4f3b56f4579fc433` |
| 77 | `theorem` | [normSq_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-apply.md) | 422 | `result-track:16d77ba0c18ba2df3550f6247691582e4a1b9ddceb2883fee3f9e862ccb324fa` |
| 78 | `theorem` | [norm_sq_eq_def](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-sq-eq-def.md) | 425 | `result-track:553b40e07d68a94597f7d82071f81c2fd79ecee774335f23878f7a03f5e265b0` |
| 79 | `theorem` | [normSq_eq_def'](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-eq-def.md) | 428 | `result-track:dbe7952310057ce70cd840816763af45edf025bb4f88103d5d976b73f445116c` |
| 80 | `theorem` | [normSq_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-zero.md) | 432 | `result-track:2569774e69af4d082d038036030bf0debf1737e82afe1a888a0b4e9a14cb5034` |
| 81 | `theorem` | [normSq_one](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-one.md) | 436 | `result-track:ed6d4617a7b7cf8297b236f820110d43e0170fa68ac1a146a3fd747e34ee4b3b` |
| 82 | `theorem` | [normSq_nonneg](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-nonneg.md) | 439 | `result-track:d0961a273bc57797be869ca1440dd1fa6518527aa4a7c61f5f7224b2ecbecbad` |
| 83 | `theorem` | [normSq_eq_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-eq-zero.md) | 444 | `result-track:9b9576f6be2a54dd79d2e61ea038819da0da317550158fd08fe049be140278a0` |
| 84 | `theorem` | [normSq_pos](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-pos.md) | 448 | `result-track:d4e8a9bb5c22ea52c357d650ef1490e06bb0e126ee73c4dfb4a175017b452055` |
| 85 | `theorem` | [normSq_neg](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-neg.md) | 452 | `result-track:7588178a3d3e4f2bcfcd594f6a3e22743a9cb23225c38c6801ae7f2d4aed4823` |
| 86 | `theorem` | [normSq_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-conj.md) | 455 | `result-track:d23ad6a8a3a4df7448aed23117646d419097be98c1351250d47e28b506a0d9cd` |
| 87 | `theorem` | [normSq_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-mul.md) | 460 | `result-track:4fd71646e5ea7ddc40d4019bae810e3d01aa4e39bf69bbbdf3a45469e7832357` |
| 88 | `theorem` | [normSq_add](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-add.md) | 463 | `result-track:e69716fc2ed71263b1877318e8905e14135100cfe4b986ae08b94e4ae100910d` |
| 89 | `theorem` | [re_sq_le_normSq](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-sq-le-normsq.md) | 467 | `result-track:7db1099eff424e0a38e6bd253cc41709fcb2c0d280911af58a1448eccc4929ec` |
| 90 | `theorem` | [im_sq_le_normSq](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-sq-le-normsq.md) | 470 | `result-track:5301ac5ae7d2f717b58f7c4e4d8d159b4e4d37b2653e2f8489575507b481d12f` |
| 91 | `theorem` | [mul_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/mul-conj.md) | 473 | `result-track:ab9765638002d2b54df4f4fe059618dc8770e6cecfc013788867ed37688dd016` |
| 92 | `theorem` | [conj_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-mul.md) | 476 | `result-track:b637cc14e889b990770826c610a04fa5cd556b679ec45ef3178c1be1ce92a773` |
| 93 | `lemma` | [inv_eq_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/inv-eq-conj.md) | 478 | `result-track:2e99d46393f56be848ba7c8934542cdd33c6d8e629a4fe1dde775592d9c52c4b` |
| 94 | `theorem` | [normSq_sub](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-sub.md) | 481 | `result-track:3b7575391299c461a0c530c592c3ce11ac303dc8861502c2d8f2e661742f0279` |
| 95 | `theorem` | [sqrt_normSq_eq_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/sqrt-normsq-eq-norm.md) | 484 | `result-track:82b775fb9a4d09ef947d1f8568d43a605bc2eaf2f255951cf924cee1a7883d30` |
| 96 | `theorem` | [ofReal_inv](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-inv.md) | 490 | `result-track:b6aa088818612a9de0397b0de7d3adad0d5ec8c1c5fbd80ed99cbde0c3f0121d` |
| 97 | `theorem` | [inv_def](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/inv-def.md) | 493 | `result-track:d80f558fc916fb22fb2997eaf549755f4818859373023648a47c8728d2d8b1d0` |
| 98 | `theorem` | [inv_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/inv-re.md) | 501 | `result-track:d9e4b9cf7d396a5e7c2acd2cfd391d2049751ccb0300f4edfa27045faa8666ef` |
| 99 | `theorem` | [inv_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/inv-im.md) | 505 | `result-track:af89d858557e556d38dcb3f2688fdf41a3a1e7d2b8a4d2604b6529b2624806b6` |
| 100 | `theorem` | [div_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/div-re.md) | 508 | `result-track:4d2e7a01e1637ecf782ed6073e699afdc92312de0efb94d1da4170ef849b8113` |
| 101 | `theorem` | [div_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/div-im.md) | 512 | `result-track:fab2c82a162a7b8bb4ede144c0539c73853c6a75097f0f21b4e5ac8d3b967c8b` |
| 102 | `theorem` | [conj_inv](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-inv.md) | 518 | `result-track:4fcb5268cc9e1912ba38f0752a3f95609a3f60aaaf7c75f7a762e865b8d09d4b` |
| 103 | `lemma` | [conj_div](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-div.md) | 521 | `result-track:8e59c24dd1095ba2bc0552de7b3913a90b6f82c7713c05e7c77fe731bb76b9cc` |
| 104 | `lemma` | [exists_norm_eq_mul_self](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/exists-norm-eq-mul-self.md) | 524 | `result-track:e41c5472b88479d63b756bf6c47c6a5b7d8ff44f89221ab3cf589b8eb4714e1c` |
| 105 | `lemma` | [exists_norm_mul_eq_self](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/exists-norm-mul-eq-self.md) | 529 | `result-track:c420eb8f88aff2783f0fdfeb6e2e983f1a012e1b980383a62fb9ee92592a37a0` |
| 106 | `theorem` | [ofReal_div](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-div.md) | 535 | `result-track:f03d0e0be62ead8a7a7c9f361ad6d3cfbf9c225f44c17c495b2ee673b79e5a5f` |
| 107 | `theorem` | [div_re_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/div-re-ofreal.md) | 538 | `result-track:50ecb473bb9359b3eb311456fe646187cf3d3d3b1beb17ee1725b25ed9491e67` |
| 108 | `theorem` | [ofReal_zpow](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-zpow.md) | 542 | `result-track:16f71f72774c9c1702d98a18b1e6f02f9f8c3acbf2bfd7d3fa3f29c73c8559af` |
| 109 | `theorem` | [I_mul_I_of_nonzero](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/i-mul-i-of-nonzero.md) | 545 | `result-track:4727e1769834295b672ee29c6223fbac99ad047227cb1890f959778a8e5fd4a2` |
| 110 | `theorem` | [inv_I](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/inv-i.md) | 549 | `result-track:f3d7806a3e5de4fe8823dc6729e3b519a40f7014770b71a81983f840148aa61e` |
| 111 | `theorem` | [div_I](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/div-i.md) | 556 | `result-track:cefe996cd218396aa289aca2046025d8b2111a836d2e8d61cb862b29cd9221d4` |
| 112 | `theorem` | [normSq_inv](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-inv.md) | 560 | `result-track:f3d082524e82e771a11834a9efa52841c0225034e6a1632aca10212eba40ea45` |
| 113 | `theorem` | [normSq_div](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-div.md) | 565 | `result-track:f4e1f253b5865a621f864dbe01ac3ab8e84d64c98f6d29abaa96fecc46810652` |
| 114 | `theorem` | [norm_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-conj.md) | 569 | `result-track:888c86b4f792de7d6f54ddbdfb8fe59cc38f7050444b38cdbdf0ce1cbedc495c` |
| 115 | `lemma` | [nnnorm_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nnnorm-conj.md) | 571 | `result-track:9a1fe6ea62c2b40807137c2e3fde41820d324c8967639be7aa7f05d34557f108` |
| 116 | `lemma` | [enorm_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/enorm-conj.md) | 573 | `result-track:d569d0a0f1b431c2b426e76b8fc27388c95e41914bc819f82c7a7d0457eab219` |
| 117 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instance.md) | 575 | `declaration-track:3c4c851ecbe98f8963debe37c39faa7976544253b8135efcd33708142431430a` |
| 118 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 578 | `declaration-track:3d1b02e44b74310367abc94ea8ea5d175330a6239322c35e9673bf65ab430d77` |
| 119 | `theorem` | [ofReal_natCast](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-natcast.md) | 585 | `result-track:5ecf23ae35a1686a3d68a1b8da11470dc639987f8797f614f84acc1e34492d96` |
| 120 | `theorem` | [natCast_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/natcast-re.md) | 589 | `result-track:e15ab341f90052760f0c6504ee6a9e8e2fae5dc2d236d004b431b7c23918d707` |
| 121 | `theorem` | [natCast_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/natcast-im.md) | 592 | `result-track:3b0884b7ba6323d44bd594d4320f75927732bd19f81164b003bd6515a1ffd1b4` |
| 122 | `theorem` | [ofNat_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofnat-re.md) | 594 | `result-track:7b8f672a34fa96f4de225f76d3feb960c7f78976e31e4a266fe7b8b77b198023` |
| 123 | `theorem` | [ofNat_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofnat-im.md) | 597 | `result-track:066a3012c5f2764294ee47180ce6c16a61c255dd72b3730ae88fbaa36b0f3627` |
| 124 | `theorem` | [ofReal_ofNat](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-ofnat.md) | 601 | `result-track:49881e54e26a3232fe44723e20513b49aea11b1ff6d61d5ff5d83eb9119c8ea8` |
| 125 | `theorem` | [ofNat_mul_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofnat-mul-re.md) | 604 | `result-track:60f14a8d9a6b1df4e46c1f6a0354109bb563ec5b5c6847410ff23f43eac5c677` |
| 126 | `theorem` | [ofNat_mul_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofnat-mul-im.md) | 608 | `result-track:c853c0ec1b6bf089cdad67ba8da006efb246eab0bfc86ea7cd54606208d1a9e5` |
| 127 | `theorem` | [ofReal_intCast](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-intcast.md) | 613 | `result-track:0c4d1d6217e59d5b71485f3700bcfc9c6335d94a19cfb726364cdd06b144abab` |
| 128 | `theorem` | [intCast_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/intcast-re.md) | 617 | `result-track:1f5c84806376ac9d63abaf2ed8357f393b7ad7ad399feb1832d2e13c98690b90` |
| 129 | `theorem` | [intCast_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/intcast-im.md) | 620 | `result-track:7909c3f5491caed2373b4b59993d641278aabc24774b34597ff9e66b44a8516b` |
| 130 | `theorem` | [ofReal_nnratCast](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-nnratcast.md) | 623 | `result-track:bf8300ecf8c7e741d603f4b38f148525d82d7ee4e1707a138b1e6df75eaca03b` |
| 131 | `theorem` | [nnratCast_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nnratcast-re.md) | 627 | `result-track:374967d173c7cb112ee29ebe74e9c28cf559953a862044da9758ffb82a728fb9` |
| 132 | `theorem` | [nnratCast_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nnratcast-im.md) | 630 | `result-track:7c01e73ff7588975ec5004b84f5805e9011ce6216f5541b56a17740a124e47b8` |
| 133 | `theorem` | [ofReal_ratCast](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-ratcast.md) | 633 | `result-track:a1fa0afe1ca2ae7840b4410e0f783a4fc60707c414ffb189ccd1e1b6223e1a22` |
| 134 | `theorem` | [ratCast_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ratcast-re.md) | 637 | `result-track:1e9bd66bec2f2ab23efae6127d8625904091e5870a7decbba710a90d32c2f6e2` |
| 135 | `theorem` | [ratCast_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ratcast-im.md) | 640 | `result-track:67c26e00d63343f25a8ab5c560c20495785c224d54e03611a85c430ab0615c0c` |
| 136 | `theorem` | [ofReal_ofScientific](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-ofscientific.md) | 645 | `result-track:352fd346ec0daa336758e387efec0bac82006512c7144592d6cd2716eb1a7607` |
| 137 | `theorem` | [ofScientific_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofscientific-re.md) | 649 | `result-track:4829a64e5ebb1ceb6dc1acbea909f4037c751b3b1a5f188cd3738dc5d49c4a08` |
| 138 | `theorem` | [ofScientific_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofscientific-im.md) | 653 | `result-track:b37e0d116d833b2a2d79bf28aeb179d36b96d043f9d35e77d18fb2e0d0634467` |
| 139 | `theorem` | [norm_of_nonneg](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-of-nonneg.md) | 658 | `result-track:56829879300243db0287a1ca3b4037713f367c861c3b7a00a5b54f31ea3fb798` |
| 140 | `theorem` | [norm_natCast](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-natcast.md) | 662 | `result-track:b46da68ddae02036c7ea3997c0c9e79861acc38b734dc60ef85514c6f5e20a46` |
| 141 | `lemma` | [nnnorm_natCast](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nnnorm-natcast.md) | 666 | `result-track:15abaef2d0aca9584d9ddd22e85c7cc6daf6656c83ec5e74149957b62bd08da8` |
| 142 | `theorem` | [norm_ofNat](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-ofnat.md) | 669 | `result-track:b274522923593f2ecbd627f235f626db3ac59afbcdf8ed8c1267a35d383047ab` |
| 143 | `lemma` | [nnnorm_ofNat](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nnnorm-ofnat.md) | 673 | `result-track:ee2f87c0ef55e09f1ee735b59dea7d8d6f1f6ce45da23cc9048caf4662121213` |
| 144 | `lemma` | [norm_two](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-two.md) | 676 | `result-track:381a72de9360d97cf1c95de4529cc13e7e5a3802adcbcc4c536b73951428b309` |
| 145 | `lemma` | [nnnorm_two](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nnnorm-two.md) | 677 | `result-track:674598f610f87934cfe7151d2af17f317b7b9477d79d88a12e187fe7a46fa228` |
| 146 | `lemma` | [norm_nnratCast](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-nnratcast.md) | 680 | `result-track:2a6deaafe62a40076cd1d19bda7dcc5303bbb528cf3f0f4c1e14652211038b2f` |
| 147 | `lemma` | [nnnorm_nnratCast](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nnnorm-nnratcast.md) | 684 | `result-track:37a96fda8ff7839d58808773b6c9bc571ea19afb952b1e3fb86165a9acbecd02` |
| 148 | `lemma` | [norm_nsmul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-nsmul.md) | 687 | `result-track:42380010074b1cc3278c07a812d9341e631045f415a4cad5529535c4103dfaf9` |
| 149 | `lemma` | [nnnorm_nsmul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nnnorm-nsmul.md) | 691 | `result-track:c6fae1af5d74de5b746649a243683cedcd7014b5f6a3167aecd9c2a17badd98a` |
| 150 | `theorem` | [mul_self_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/mul-self-norm.md) | 694 | `result-track:d3d63bd7ceab91290ec3f45fcb958fc2cc05db191b6cb9214c221bb327d8321c` |
| 151 | `theorem` | [abs_re_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/abs-re-le-norm.md) | 698 | `result-track:236d3a2cef0ffb33b5f145351e8b2b80b02daa0edeb38278446d9a9e30703b58` |
| 152 | `theorem` | [abs_im_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/abs-im-le-norm.md) | 702 | `result-track:5660ff0e5323072c610105519780ca20ebd5555a6c152841da679f86335bfffc` |
| 153 | `theorem` | [norm_re_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-re-le-norm.md) | 706 | `result-track:b206b2439d41ea7f7eb20ebc7c362338ed0a31dca53d131b5c461f69e4928b47` |
| 154 | `theorem` | [norm_im_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-im-le-norm.md) | 709 | `result-track:4d5187aabb56b14f4d2dffb78a931315d164b9dba1a8d4ddd702a20441356f95` |
| 155 | `theorem` | [re_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-le-norm.md) | 712 | `result-track:a7945a3d587b0158ab272c10734ddb615ef3b264f3e7e247093c24f5b412364c` |
| 156 | `theorem` | [im_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-le-norm.md) | 715 | `result-track:d4a3ebaa3d3c9e4b9335ac96c8670f28a5fafa231a55f04983131c74c5f246f5` |
| 157 | `theorem` | [im_eq_zero_of_le](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-eq-zero-of-le.md) | 718 | `result-track:c907e8f355ef314f72ce97bbf9451d8b095b121e789a49de656bdd948c441037` |
| 158 | `theorem` | [re_eq_self_of_le](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-eq-self-of-le.md) | 722 | `result-track:4bdad2436fd9b3d441e5ad86feded7407a0660e90c6b950677cfd9288b71baf6` |
| 159 | `theorem` | [abs_re_div_norm_le_one](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/abs-re-div-norm-le-one.md) | 725 | `result-track:9fd34fe1e6160e0d78c999111cb50989bd9487cbc44fdb6a0fc33ef66315ddfd` |
| 160 | `theorem` | [abs_im_div_norm_le_one](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/abs-im-div-norm-le-one.md) | 729 | `result-track:8ae61bf88d68a243d6cabd619c96381029d78078ca5b99cd81e2bf2368667ea5` |
| 161 | `theorem` | [norm_I_of_ne_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-i-of-ne-zero.md) | 733 | `result-track:45160a15620005fdd7cdf9ac03c7fd09344804e02d59be87cbe1b475b45d2958` |
| 162 | `theorem` | [norm_I](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-i.md) | 737 | `result-track:153c0515ff260bae24b7f7177e9fdc08854081443e61b5f6cc89462ef7d63ea8` |
| 163 | `theorem` | [re_eq_norm_of_mul_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-eq-norm-of-mul-conj.md) | 740 | `result-track:407c20e816403ca1d28885b933e43571be5df4e44730eba031fbedc61bae58e3` |
| 164 | `theorem` | [norm_sq_re_add_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-sq-re-add-conj.md) | 743 | `result-track:961c749822af3fcdc9a90f19461bcdacdcc17269bbe901690d82dd2ed994e348` |
| 165 | `theorem` | [norm_sq_re_conj_add](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-sq-re-conj-add.md) | 746 | `result-track:ead64f3e9da513083ee08a8c9251cb7e0f797d9e3bf67bccbc85758b5816e999` |
| 166 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 749 | `declaration-track:da906f3a67af33108bd3a27769c0fc960034e0ce919c4d496167d30bcc0c1d12` |
| 167 | `theorem` | [isCauSeq_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/iscauseq-re.md) | 755 | `result-track:ea7232d523cb84a9a150220fa3127f820265fd18408a78b4d6460c3ee5c21bad` |
| 168 | `theorem` | [isCauSeq_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/iscauseq-im.md) | 759 | `result-track:8a7253b01be22d9a469823638a19fe277084aec4fe39adb9caba14061f50723b` |
| 169 | `def` | [cauSeqRe](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/causeqre.md) | 764 | `declaration-track:ecf363d2b7d07fb8d6b9f7079a0614446093858a41619a3b14a8112d757efd4d` |
| 170 | `def` | [cauSeqIm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/causeqim.md) | 768 | `declaration-track:4bc6f56d9aec78753c100e9ea8cc91c54b28758868ef3ee403c3e4ea57038194` |
| 171 | `theorem` | [isCauSeq_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/iscauseq-norm.md) | 771 | `result-track:f09e9b01de8eddf6deaa848d57313d9d2c87a9aa38cbaa13595b70cb4f699e35` |
| 172 | `lemma` | [I_mem_skewAdjoint](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/i-mem-skewadjoint.md) | 775 | `result-track:2d5b609c12ae43ccf071aa470146a12da64630ba1d3ccf9b2fc00b9c992b1cc2` |
| 173 | `lemma` | [IsSelfAdjoint.I_smul_mem_skewAdjoint](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/isselfadjoint-i-smul-mem-skewadjoint.md) | 784 | `result-track:aa294c21b3ec0fe4f3be2936e0b95c425a58b834fc20bedfd57c852347841afb` |
| 174 | `lemma` | [IsSelfAdjoint.I_smul_of_mem_skewAdjoint](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/isselfadjoint-i-smul-of-mem-skewadjoint.md) | 787 | `result-track:e5e9cf774ece3448c99cf2b074d87044c583d5e21a7bdb6371300bbf88358a25` |
| 175 | `instance` | [Real.instRCLike](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/real-instrclike.md) | 794 | `declaration-track:09000a794cc0269f2bf81df8c49caf40fed2dedae5d397b7c39a160cb16dd5b5` |
| 176 | `lemma` | [norm_nnqsmul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-nnqsmul.md) | 823 | `result-track:6bea82063a3a821b72b3f6d1aab0a20355acc4434e5b4a87bfa30d3436509090` |
| 177 | `lemma` | [nnnorm_nnqsmul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nnnorm-nnqsmul.md) | 827 | `result-track:b7138ea61b7b8ed5fae0bc40891f0efd33374e2d796c27fd2272aaa1f4df45b5` |
| 178 | `lemma` | [norm_expect_le](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-expect-le.md) | 831 | `result-track:4abda793aa27c18cec7655a1bcb4c7c845ad95879ebbb827e2b1622cae502423` |
| 179 | `theorem` | [lt_iff_re_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/lt-iff-re-im.md) | 841 | `result-track:dc2adc419fa965b913446227c7d78389deb3f30dcdc2e89a16844d9c57b26ba8` |
| 180 | `theorem` | [nonneg_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nonneg-iff.md) | 849 | `result-track:a38f448603b23077ce27ec9032c3f3b3053d9d71d74e6dd0a9b7608cb3cc6ca3` |
| 181 | `theorem` | [pos_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/pos-iff.md) | 852 | `result-track:84a7150ccff34184b55b433ce11acf07132743d168bdd70bcc25613ebbf668c3` |
| 182 | `theorem` | [nonpos_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nonpos-iff.md) | 855 | `result-track:eb170fe644c615e0688aa65691e712f1b3d3a72120381f73e8b55b22b1d336fe` |
| 183 | `theorem` | [neg_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/neg-iff.md) | 858 | `result-track:7548c4d179409871e1bae145e1106df231b51f12d24e4586b66e80646d456481` |
| 184 | `lemma` | [nonneg_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nonneg-iff-exists-ofreal.md) | 861 | `result-track:98617274ac82e765c68e492b8baa334db5124c7addc9988dc67e829372bdb970` |
| 185 | `lemma` | [pos_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/pos-iff-exists-ofreal.md) | 864 | `result-track:cb90dc48dce4f605147bcbbaf38793ad1cfe321bcc812b096ad893cde71fa91d` |
| 186 | `lemma` | [nonpos_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/nonpos-iff-exists-ofreal.md) | 867 | `result-track:5c1711f6c70b31fef84a8d348f3c83b8eb7aae2f8f4854fc6571c27c5acb77b7` |
| 187 | `lemma` | [neg_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/neg-iff-exists-ofreal.md) | 870 | `result-track:aa130b6d286237b3ce9aab7c8a51eaed889c8cd40d71eb04fcf99ee589b63947` |
| 188 | `lemma` | [ofReal_le_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-le-ofreal.md) | 874 | `result-track:36d2182c56766a6efbc6222f4f96ae2ce0c9623bef69ef84e45645ddc28c6e5e` |
| 189 | `lemma` | [ofReal_lt_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-lt-ofreal.md) | 879 | `result-track:a5ebcda0f6ae83a59e3415f1bb0985e4fcca6625e641bb27523954c52d1387de` |
| 190 | `lemma` | [ofReal_nonneg](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-nonneg.md) | 884 | `result-track:ae447960e91811a1182385d944389f460947674453383e8762bf3a8d2053c7ec` |
| 191 | `lemma` | [ofReal_nonpos](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-nonpos.md) | 888 | `result-track:9a26aef4ee983c2663d14508499e353b5017960000cd3644e71efefbde3c8f5b` |
| 192 | `lemma` | [ofReal_pos](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-pos.md) | 892 | `result-track:22a0b2e1794a1e46f98a94083b0792940a977487cb4f2406d2dd47279a2c8212` |
| 193 | `lemma` | [ofReal_lt_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-lt-zero.md) | 896 | `result-track:cfcfb1fc2ea92e455c0bb04e95f7af8cc4862f5838b8a96dc8837c28a8a4cb1f` |
| 194 | `lemma` | [norm_le_re_iff_eq_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-le-re-iff-eq-norm.md) | 899 | `result-track:b6dc7e88875c0529f88f6d24f1a1b82a8a5214f0d4fe837ba21f44e50389700f` |
| 195 | `lemma` | [re_le_neg_norm_iff_eq_neg_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-le-neg-norm-iff-eq-neg-norm.md) | 907 | `result-track:900e4ab1a8ac547aec5d68fdf21fdd04e33aac091a0292de3131a42d7fb61ef3` |
| 196 | `lemma` | [norm_of_nonneg'](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-of-nonneg-source-edition-2.md) | 911 | `result-track:836876aa4651ff14be99bd73defe40b5a89d02bee9036420c515a9b5b026008e` |
| 197 | `lemma` | [re_nonneg_of_nonneg](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-nonneg-of-nonneg.md) | 915 | `result-track:f429165016dbe315b061c226bd6c43563923be54a81fae28c0155453c1620891` |
| 198 | `lemma` | [re_le_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-le-re.md) | 919 | `result-track:92397dff5c154d51dd926016c7510d1511eb04dc2302d82b2d05561520c1605c` |
| 199 | `lemma` | [re_monotone](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-monotone.md) | 923 | `result-track:36915c117643843b2b0108530b06014e5dea59aae6ba07d8cf4d4cd5367fe280` |
| 200 | `lemma` | [inv_pos_of_pos](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/inv-pos-of-pos.md) | 926 | `result-track:86e292d8e8d020e91c7a03ed9457e08ec290d3822c1009864d6ebd9f59c862d3` |
| 201 | `lemma` | [inv_pos](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/inv-pos.md) | 932 | `result-track:67615fc884d3ac2ab1f0bc28dc15528a9801363192602a991772f4320fc9e4b6` |
| 202 | `lemma` | [toStarOrderedRing](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/tostarorderedring.md) | 941 | `result-track:62a1170646a3ff81d794085a2f3788bcadd6c7b2684bcabfd0bba68bd92cf5c5` |
| 203 | `lemma` | [toZeroLEOneClass](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/tozeroleoneclass.md) | 954 | `result-track:7cfb2d312ea3f5b827d579a161756f60cdc99044cf24f1e291827d01797e6bf9` |
| 204 | `lemma` | [toIsOrderedAddMonoid](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/toisorderedaddmonoid.md) | 959 | `result-track:084586440da935e3ccb8dfa213d53b3199597e397a8bbd0e8c73ed1d1fc5f6ff` |
| 205 | `lemma` | [toIsStrictOrderedRing](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/toisstrictorderedring.md) | 967 | `result-track:92037f4f9fe87e0455282a6395c3970a8cf6c9b38ce418c4b1eb89db68c4b095` |
| 206 | `lemma` | [toPosMulReflectLT](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/toposmulreflectlt.md) | 974 | `result-track:ea07b50ea22ee168687d1f0c0abf0f94e132e362159101dd64cf00642277a33a` |
| 207 | `theorem` | [toIsStrictOrderedModule](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/toisstrictorderedmodule.md) | 988 | `result-track:0b43ac7c0b0807b09d42bc2702fd3ff8e62bd782e669ae10c4109fd26706ba88` |
| 208 | `theorem` | [ofReal_mul_pos_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-mul-pos-iff.md) | 997 | `result-track:84ee3e35d4363df043ff1198a9e68e98a2e61e049ac0e9c62c8d8805b8fe97c1` |
| 209 | `theorem` | [ofReal_mul_neg_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-mul-neg-iff.md) | 1007 | `result-track:ac28e8b2fc3935bf3655ab896dcb94032d927f36f2a65cd90c615cd53d380aa2` |
| 210 | `lemma` | [instPosMulReflectLE](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instposmulreflectle.md) | 1011 | `result-track:9801dee7b5215a3d49c4cc7e39d2f49304aeeec89ee48c4bdf5958c7167f40ec` |
| 211 | `lemma` | [instMulPosReflectLE](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instmulposreflectle.md) | 1025 | `result-track:34510e938680adf993b39c4cdba5cd4576e1a1cca3a1c8955a6a2f1d8aefb8be` |
| 212 | `theorem` | [re_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/re-to-real.md) | 1039 | `result-track:84ee1f9b5804e7c7bb0c8ce037516788d5aeb29be301ed3fd0f797beaa6a0fd4` |
| 213 | `theorem` | [im_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-to-real.md) | 1043 | `result-track:181e2df71e30e92a32aa3902798c3f2a5ff402939d23466bf0dd2dd600ca3be1` |
| 214 | `theorem` | [conj_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conj-to-real.md) | 1047 | `result-track:4da9600b63a11abb7de851c1ea82bcbd96bd0edf6d689b5385e9a66a412d3c49` |
| 215 | `theorem` | [I_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/i-to-real.md) | 1051 | `result-track:b7e089cfd3fa9079cd64ee3b72ba8250669e6ac55a0b1d08cbdde80bd185b686` |
| 216 | `theorem` | [normSq_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/normsq-to-real.md) | 1055 | `result-track:5385bb70bdd794212a6bc69217956c646d095488e539d58c9b9af91b40faaf0a` |
| 217 | `theorem` | [ofReal_real_eq_id](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofreal-real-eq-id.md) | 1058 | `result-track:729e7ff49adaec86b4ce49f3bb25d930500195a35ca06571bad78c183a64f6ab` |
| 218 | `def` | [reLm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/relm.md) | 1066 | `declaration-track:4ef8546b87437f126b897221292b057878068bbe2a04079bcf30ae8eb6963e30` |
| 219 | `theorem` | [reLm_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/relm-coe.md) | 1070 | `result-track:85522d3e222df3ed52e5a2256022d61f74fbdd9c0c166a363acd9aa6600df8c0` |
| 220 | `def` | [reCLM](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/reclm.md) | 1074 | `declaration-track:185c485a45dda3b4cf1000cb8884c31a4be9fecb91edebf78330b101ddcb979c` |
| 221 | `theorem` | [reCLM_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/reclm-coe.md) | 1080 | `result-track:9a5aa1bc382e78d0f5f5b2c3f97a6af3256b72ea625041e06cfe26ed6ba79745` |
| 222 | `theorem` | [reCLM_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/reclm-apply.md) | 1084 | `result-track:8fc65e26fba7d70ecb4c89796fc65bfc62ce7fd911ea4b12a98ec67993dee853` |
| 223 | `theorem` | [continuous_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/continuous-re.md) | 1088 | `result-track:c59422b6ae150d67115219a4f6e4418695804ff0d0aa937d3dceae899b2db634` |
| 224 | `def` | [imLm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/imlm.md) | 1092 | `declaration-track:3a3f269764b60d91c948ee7683c5c5fbf834e171d95e8769c81c2b05f3e3d45c` |
| 225 | `theorem` | [imLm_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/imlm-coe.md) | 1096 | `result-track:c0f28bb2eea7b58e269c691436eaecfff23bbdeceea1de83f692929b4a1e01d1` |
| 226 | `def` | [imCLM](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/imclm.md) | 1100 | `declaration-track:f9249bf9b98ef6676b14600024de5e3102c24609b5d04c00f6d57824982df927` |
| 227 | `theorem` | [imCLM_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/imclm-coe.md) | 1106 | `result-track:370ca23be00634f3e0f99d31afe27ff9fd2ff72d1e0ab4f015e3882b68817e6a` |
| 228 | `theorem` | [imCLM_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/imclm-apply.md) | 1110 | `result-track:25711d42ead2cd27906c5609b165f71769eeb981151d495e388f1de68e9bfddd` |
| 229 | `theorem` | [continuous_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/continuous-im.md) | 1114 | `result-track:5b31e07a35ce2bac50b8850f445358594f8aa892690b01f70b22fdf2b8b6fcbb` |
| 230 | `def` | [conjAe](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conjae.md) | 1118 | `declaration-track:4bfc2cc15219f0b37b710a5d3768420269d33dfd0ab1fd86050d7b60b042dfa3` |
| 231 | `theorem` | [conjAe_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conjae-coe.md) | 1126 | `result-track:2c51a6723db8a980e42b53865d0d1c475c832ec29ff7dee04b7e5357a971e659` |
| 232 | `def` | [conjLIE](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conjlie.md) | 1130 | `declaration-track:a17ec4d12d0ddc068f7fe6459a74d52b26ac80b36af350280b65153cf47818a9` |
| 233 | `theorem` | [conjLIE_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conjlie-apply.md) | 1134 | `result-track:3cfc2feeee2663112ecb558a50eda32543ee13e0e38e56d208f77b44ade4ad1e` |
| 234 | `def` | [conjCLE](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conjcle.md) | 1138 | `declaration-track:4e265701a0dd0f01b8f2bd12dc17ea2cde348f2312538f3c2f84375c7b00ec00` |
| 235 | `theorem` | [conjCLE_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conjcle-coe.md) | 1142 | `result-track:c8651f7c0d82ca11c89131a863a5174df5d306e834057025f1fe3b98e8bdace2` |
| 236 | `theorem` | [conjCLE_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/conjcle-apply.md) | 1146 | `result-track:c80ea9cbbadf42e6ac016adbddde2d4716d333ceba53a0498b4f826a72b7a12a` |
| 237 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 1149 | `declaration-track:e1f734aed58cd3b7894a2d9a1e8511244412362964dbd7e6b7b259df58226820` |
| 238 | `theorem` | [continuous_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/continuous-conj.md) | 1153 | `result-track:d873461056b53facd8e669ce3560be753cffd8bfe2db08bb0543df7e494c9979` |
| 239 | `def` | [ofRealAm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofrealam.md) | 1157 | `declaration-track:a0a22130881758a99fe3bbda850503af20945fa19b3bd80838434d87a682dfaf` |
| 240 | `theorem` | [ofRealAm_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofrealam-coe.md) | 1161 | `result-track:737b339a20e324174ae5292c2c67c7b3c8b060d6b1b6d28a899958a5b5d21f8e` |
| 241 | `def` | [ofRealStarAlgHom](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofrealstaralghom.md) | 1166 | `declaration-track:a5a362154b874148a04dadd9376b8192ee80b025a7417ab9e1641ee7c426928e` |
| 242 | `theorem` | [coe_ofRealStarAlgHom](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/coe-ofrealstaralghom.md) | 1168 | `result-track:bb99de26a1d93e3aaeb3de529163e0eb41a3cf3ef329282c383f052d1cef3816` |
| 243 | `lemma` | [toAlgHom_ofRealStarAlgHom](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/toalghom-ofrealstaralghom.md) | 1169 | `result-track:0fbd0208d02618e1dc784f2991ba23cfbcd3f6d2e8a39a40fea4e91af171bb40` |
| 244 | `def` | [ofRealLI](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofrealli.md) | 1172 | `declaration-track:dfdc88e15cf1e851c8961f4683ffcfe52966048f51ee6845ece0d87b01aba5d0` |
| 245 | `theorem` | [ofRealLI_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofrealli-apply.md) | 1177 | `result-track:24de0a55f8dbd86f427e27abcc3963e6f7c001ff214156a26c0f24dd2f4a6892` |
| 246 | `def` | [ofRealCLM](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofrealclm.md) | 1181 | `declaration-track:08f2d000730eb5b286cf385e10a13c62d92ea345247b02ee0b50dd52b883808c` |
| 247 | `theorem` | [ofRealCLM_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofrealclm-coe.md) | 1185 | `result-track:86c6f71e1cf09201cda4d97c3445d72bc222645c2153c8b690a1f31a317da59a` |
| 248 | `theorem` | [ofRealCLM_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/ofrealclm-apply.md) | 1189 | `result-track:a7ee85b8011f5af8b927b4ca2001c482c01ec36102079c8d557a9aa91531fca6` |
| 249 | `theorem` | [continuous_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/continuous-ofreal.md) | 1193 | `result-track:085621f9bd56a9b401468089a4d150f577fe1b4815daa4f765c5d06f563d6ff8` |
| 250 | `theorem` | [continuous_normSq](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/continuous-normsq.md) | 1197 | `result-track:f93e2a1ce13e4b14bc9abe0134b202117668d1b523670439cf735b4264a49e94` |
| 251 | `theorem` | [lipschitzWith_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/lipschitzwith-ofreal.md) | 1200 | `result-track:80a6690ebe9f911e59d55ef709e699738071ca1d269933bbf783fffe64601f1a` |
| 252 | `lemma` | [lipschitzWith_re](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/lipschitzwith-re.md) | 1203 | `result-track:fa09f5bcc6d3537e4a6c0aaf00cd1884a41922565927b0a7caf6fac056e59326` |
| 253 | `lemma` | [lipschitzWith_im](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/lipschitzwith-im.md) | 1210 | `result-track:14ca196802173c2bfd2e330799cf9b284306ac486d3b43b81c10f8eea603b1df` |
| 254 | `def` | [map](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/map.md) | 1218 | `declaration-track:5e5099ba6bd33605f0538574ca7b3f63f3b1bdca49189f8e543320e67f217638` |
| 255 | `theorem` | [map_same_eq_id](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/map-same-eq-id.md) | 1223 | `result-track:c0dfe49c1dc8e5bdf30d033224c30d540d6bcf069ce07b4fa2787095ae009a22` |
| 256 | `theorem` | [map_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/map-to-real.md) | 1225 | `result-track:8b92d8a94950214d9c634e8463e2c1d264377b30b6625ce5f2cec3a9c0f4371d` |
| 257 | `theorem` | [map_from_real](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/map-from-real.md) | 1228 | `result-track:7b9c5a16cd76ff7296408771bb5312d2f05ffb7c6a17c036831df10cdf36c674` |
| 258 | `lemma` | [instOrderClosedTopology](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instorderclosedtopology.md) | 1231 | `result-track:5bf12da3ffb90ed50defec61ca445a40699d859079acc4da1a074fd60c11ce6f` |
| 259 | `lemma` | [im_eq_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-eq-zero.md) | 1248 | `result-track:9efd52a73db1701d737eecc5dcd6d2c19f5a6f1a3f8d45ddfe1d000f81c1cb45` |
| 260 | `def` | [realRingEquiv](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/realringequiv.md) | 1254 | `declaration-track:6eadf993132a139b43af68e58b7ebdd1c3e1628206cf0cbc6acbe542a5144fdd` |
| 261 | `def` | [realLinearIsometryEquiv](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/reallinearisometryequiv.md) | 1265 | `declaration-track:25ef267e2c17c240f450f46188fe4bdeb5cdbaba01740adc317ce9e7602f7431` |
| 262 | `lemma` | [norm_le_im_iff_eq_I_mul_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/norm-le-im-iff-eq-i-mul-norm.md) | 1272 | `result-track:6b2c411350238b55311d6643bb69b5f732a402c8baaec2a180a6ba1a4886428e` |
| 263 | `lemma` | [im_le_neg_norm_iff_eq_neg_I_mul_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/im-le-neg-norm-iff-eq-neg-i-mul-norm.md) | 1281 | `result-track:30a9c0179a8abc372c889b951ec9f32b91ce7d9ef361dbb1d9c4ed559346fc4b` |
| 264 | `lemma` | [inv_apply_eq_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/inv-apply-eq-conj.md) | 1290 | `result-track:ce474a9d9650b4a63d5889fd141031ca84e9ee22658f3d233db69cf99b33e821` |
| 265 | `lemma` | [map_neg_eq_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/map-neg-eq-conj.md) | 1293 | `result-track:e30d46a659bfe09f8046745bea508729cf7bd15884d1c6f0fd279faa27d7503c` |
| 266 | `class` | [IsRCLikeNormedField](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/isrclikenormedfield.md) | 1303 | `declaration-track:d5fcebb086a15b95fe211a9c1cc54ad2cbd6f67781fed6870bf27a41beb4c0f2` |
| 267 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 1306 | `declaration-track:5b7abadc491fe86d885bc2ee2e881e1b0ceaa66f4e81815e6f1af3356452b7ac` |
| 268 | `def` | [RCLike.copy_of_normedField](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/rclike-copy-of-normedfield.md) | 1311 | `declaration-track:a675315ea21b58054d7f2f00b3bc6ff32e161b32715038d94a53a3f110b16343` |
| 269 | `def` | [IsRCLikeNormedField.rclike](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/isrclikenormedfield-rclike.md) | 1355 | `declaration-track:b733cb0e6938bbf552e9844604e024211e6e71539926f368c8ae24f7284adc8f` |
| 270 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 1368 | `declaration-track:e6c6d9b00f076ee992aeac013a1be41def5b16b60e38411df2c85f3c858514cd` |
| 271 | `theorem` | [smul_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/smul-apply.md) | 1372 | `result-track:188f90f9c5081b322afb2a67ca3ddaea77770555a837f66bfd230396bdbd6ea2` |
| 272 | `theorem` | [symm_smul_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/symm-smul-apply.md) | 1375 | `result-track:7c12093dd6989e6c377c22ed92d939ec3a4c7560155572e48fe93ecaf310c011` |
| 273 | `theorem` | [symm_units_smul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/symm-units-smul.md) | 1378 | `result-track:9fd265e68b51e1a71cefce2f6d5c55ebbded239ab44ca54cfa536678c82b8e11` |
| 274 | `theorem` | [toLinearEquiv_smul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/tolinearequiv-smul.md) | 1381 | `result-track:2d844230d4689b0f4d4ccd219b3714afeb64ba446ed49cf2ca120ef187a9ea24` |
| 275 | `theorem` | [toContinuousLinearEquiv_smul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/tocontinuouslinearequiv-smul.md) | 1384 | `result-track:694be656464e1e0973a7d0c0cb4042e53f497e1353821c72a9b25121c08cee9e` |
| 276 | `theorem` | [smul_trans](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/smul-trans.md) | 1387 | `result-track:14c2a90e68e70d8850136b34e6433cec44cce8217f85ede628ed7cf38179eb44` |
| 277 | `theorem` | [trans_smul](../../../../FunctionalAnalysis/RCLikeBasicNamespacedPublic.lean/declarations/trans-smul.md) | 1390 | `result-track:ba56161466f1214d6ce816ed947136123e20d9db4356d6133fd5da250b801ac0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdd5c0233a49fe5d9c74b9a1a605b2f4ebb072dc7275047d63b6428b1af98369 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant6966a96220174b2c3014151644155d6ae922ab42580cbdb5cfd280514bc17457.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

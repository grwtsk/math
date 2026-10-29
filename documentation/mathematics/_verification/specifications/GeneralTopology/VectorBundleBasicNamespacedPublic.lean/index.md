# Verification target: Vector Bundle Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c75d6dc02058c3177003eb1fd5c89c0ccd2eb81",
  "lexical_observation_count": 131,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c75d6dc02058c3177003eb1fd5c89c0ccd2eb81`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean.json)

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
| 1 | `class` | [Bundle.Pretrivialization.IsLinear](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/bundle-pretrivialization-islinear.md) | 82 | `declaration-track:a9f011996ca0b02d1f4d0cf7df8fefe8f7c1f2b1ee0a02888202793c97626ee3` |
| 2 | `theorem` | [linear](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linear.md) | 90 | `result-track:8d5b53633c524dfb6dbb06c0a8d6c6f98d2874a574803a3ed3c2b5cdd8a5a6f4` |
| 3 | `def` | [symmₗ](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm.md) | 99 | `declaration-track:c467e2efb4fa30780fd7fbeb475dc9a3e1f064997629c986292ad659cccc8e85` |
| 4 | `lemma` | [symmₗ_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-apply-source-edition-2.md) | 105 | `result-track:125d734a58e7cc7f004479c3aa6dc934692b1776ae6a3890cd5867ba33b84f3f` |
| 5 | `lemma` | [symmₗ_apply_of_notMem](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-apply-of-notmem.md) | 110 | `result-track:d021badc097621f1fa2f72320779224344980d7f3b1bafa4d1647fa01c0c544d` |
| 6 | `def` | [linearEquivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearequivat.md) | 117 | `declaration-track:9ac46a0f1f6616cd36627a4cd6b5add9e973446a7240fd161e352706450f6a9e` |
| 7 | `def` | [linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-source-edition-2.md) | 128 | `declaration-track:a935f3763b584398f7b797b5b40dc52090a3ec65c3d7a5ce78e84e146a1ee186` |
| 8 | `theorem` | [coe_linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coe-linearmapat-source-edition-2.md) | 134 | `result-track:7f3ff12f32a417648d203b7509f6defc719e9828dd90c9a50d654d6a1d09c281` |
| 9 | `theorem` | [coe_linearMapAt_of_mem](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coe-linearmapat-of-mem-source-edition-2.md) | 140 | `result-track:bef75a31b8c65717194e9267c5b4852f0cf9c05cf2376e04d0c66fafb2e30d3e` |
| 10 | `theorem` | [linearMapAt_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-apply-source-edition-2.md) | 145 | `result-track:b5ef173bd72906599c544b8000a24872e789472d6ffc76cdf896d4cc4e03953e` |
| 11 | `theorem` | [linearMapAt_def_of_mem](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-def-of-mem-source-edition-2.md) | 149 | `result-track:80fcabf99ffc834f5369b887444bd5c92e203264f20aa9ca122703307fc57125` |
| 12 | `theorem` | [linearMapAt_def_of_notMem](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-def-of-notmem-source-edition-2.md) | 153 | `result-track:7bb3d3ddc33ad909beb24c731a8a9f7cb0fc894381320a49a92e16f6c3463530` |
| 13 | `theorem` | [linearMapAt_eq_zero](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-eq-zero.md) | 157 | `result-track:54992b17279c8cf9071e97a8600111e90eb72911824cc21efb25b8927ac5c549` |
| 14 | `theorem` | [symmₗ_linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-linearmapat.md) | 161 | `result-track:06591e895844405e7aa5299090ec9ca1139642a6fb6ad5c41270babc508dc1ff` |
| 15 | `theorem` | [linearMapAt_symmₗ](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-symm-source-edition-2.md) | 164 | `result-track:8814f97ff1587f30f2d26edfa9fe7a502af74b9d0d492dbdb73bbbc9af02f9c0` |
| 16 | `class` | [Trivialization.IsLinear](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/trivialization-islinear.md) | 173 | `declaration-track:c57969632fc89641046ab4aa93d31cebc6d7578551746640b2a5c74b6f55c7d1` |
| 17 | `theorem` | [linear](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linear-source-edition-2.md) | 181 | `result-track:a155440a1520c607606586e66cd11a625e32ac48730e6e3b73c8beefbe29151c` |
| 18 | `instance` | [toPretrivialization.isLinear](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/topretrivialization-islinear.md) | 186 | `declaration-track:3ab3497c20c6204b894eb7102d973cecb4c6982b3ec028bb0b1b73b035451ee4` |
| 19 | `def` | [linearEquivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearequivat-source-edition-2.md) | 194 | `declaration-track:9b06ae2a8b0927f6d2aeecd7121a51632b43f892411ea1835195b69b0c151881` |
| 20 | `theorem` | [linearEquivAt_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearequivat-apply.md) | 201 | `result-track:1bf9501310ec0815ec06ac09404c0e9872dd20e382852f70ac9cddd2a57f616f` |
| 21 | `theorem` | [linearEquivAt_symm_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearequivat-symm-apply.md) | 206 | `result-track:f09eaaf3677b4c8fa9cb51e9aff7c0a027b19e4e76b0858b7d9c54ead5a533ee` |
| 22 | `def` | [symmₗ](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-source-edition-2.md) | 212 | `declaration-track:c4e5d78081727f0ed8d3f455d66c1e25416637f6b3c822b96d836eaf8b60d128` |
| 23 | `theorem` | [coe_symmₗ](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coe-symm.md) | 215 | `result-track:6149dacd1dc1ec6f21dd2cd2758d527bfb6c46dd16e0d5697e470a0350eab19a` |
| 24 | `theorem` | [symmₗ_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-apply.md) | 220 | `result-track:06fc3fd3e59e51b45325042f569cfcab3acbd7d9bb08ff0b45b1ddc8f3c771cd` |
| 25 | `theorem` | [symmₗ_apply_of_notMem](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-apply-of-notmem-source-edition-2.md) | 225 | `result-track:dcbdc4c6e2cfcba8443411b4bc238659dba0d3c78f35e5043e8b2ab289e7abd9` |
| 26 | `def` | [linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat.md) | 231 | `declaration-track:110f2a544c0e150e503ddbf4d0ab58d99ee1b799d372dac4f2afe0b214559208` |
| 27 | `theorem` | [coe_linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coe-linearmapat.md) | 235 | `result-track:2c70c16c26dd544d805a11db8b1baa613ecbdf42906ed1ab818201179ed8060c` |
| 28 | `theorem` | [coe_linearMapAt_of_mem](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coe-linearmapat-of-mem.md) | 240 | `result-track:2e88e652d61375f7e2841bd89a072a2db2f33643293ca34edb990b01a93e9f33` |
| 29 | `theorem` | [linearMapAt_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-apply.md) | 245 | `result-track:437b36fe30b1cd3747beabf583571644ba2bc70fd00c440178fbb88effbf2bb0` |
| 30 | `theorem` | [linearMapAt_def_of_mem](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-def-of-mem.md) | 249 | `result-track:608287f8cd3a39edba983b82194f47dbb153f5b70cad2f57b5a786f1ced8f95e` |
| 31 | `theorem` | [linearMapAt_def_of_notMem](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-def-of-notmem.md) | 253 | `result-track:5209bac8fc48ab49bb798d5473be0d1f0104557ba5add5ae7ca3723bffb1ff87` |
| 32 | `theorem` | [symm_linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-linearmapat-source-edition-2.md) | 257 | `result-track:85f9dc993a8da01dcaf636957f9339f6104a23f8a7ebafef91841bdcc26913bf` |
| 33 | `theorem` | [symmₗ_linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-linearmapat-source-edition-3.md) | 261 | `result-track:f38c8b4d33928f8f9dd1638c8e67e455e8a7d2e99679dc3f7cee3f78b760c591` |
| 34 | `theorem` | [linearMapAt_symm](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-symm.md) | 266 | `result-track:75faff4806beafe219a7863d641ed8702d1de935fed1b32c9e809cd629ac860c` |
| 35 | `theorem` | [linearMapAt_symmₗ](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linearmapat-symm-source-edition-3.md) | 270 | `result-track:d7ed748dc7c298ffeba7f204f565a0128bd836bae199264fbe922626bddbcf0c` |
| 36 | `def` | [coordChangeL](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coordchangel.md) | 278 | `declaration-track:72aaeaa36526c67edda4254bd300b30c3dffdcbe0d46b8c87b7f769f91a72954` |
| 37 | `theorem` | [coe_coordChangeL](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coe-coordchangel-source-edition-2.md) | 302 | `result-track:f63094c8f17d10936b6bb7537af6eada0abebe86447455531c273f1c742c2ace` |
| 38 | `theorem` | [coe_coordChangeL'](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coe-coordchangel.md) | 307 | `result-track:26231ce7982f6ff519ef96ff78b647498386e5234318d6b7c7fe4dfb96aab801` |
| 39 | `theorem` | [symm_coordChangeL](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-coordchangel.md) | 313 | `result-track:193449eca3f73039e9b20d45fee8784617b1082e9e2c8b1f7cb5e55a9fa591fe` |
| 40 | `theorem` | [coordChangeL_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coordchangel-apply.md) | 319 | `result-track:2a303a4aa30bde40630dba1170164f19327f90aae52d1fd7c3be7e8c7f808a3c` |
| 41 | `theorem` | [mk_coordChangeL](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/mk-coordchangel.md) | 324 | `result-track:4c249e1ee367573f1eebb66f93c5e88aaa9d81b98207ffca37aef1246a3a28c9` |
| 42 | `theorem` | [apply_symm_apply_eq_coordChangeL](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/apply-symm-apply-eq-coordchangel.md) | 333 | `result-track:8a23af3064544fcbd7b355b173dd7bc31797dfa6169ff03866535bb29faad436` |
| 43 | `theorem` | [coordChangeL_apply'](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coordchangel-apply-source-edition-2.md) | 341 | `result-track:eeed925432e5a88cbe59d6d2506899010a1bc4b9fd51bf68b15ebe361867afd1` |
| 44 | `theorem` | [coordChangeL_symm_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coordchangel-symm-apply.md) | 346 | `result-track:c71a958d0bddda2649be2a415b14da34008b01d143cd6b6f5f58ecb5f960732d` |
| 45 | `def` | [zeroSection](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/zerosection-source-edition-2.md) | 361 | `declaration-track:481cb0ca9adc6796684656eb0ae2869c462fdb1edbcf392070fe3291b958efee` |
| 46 | `theorem` | [zeroSection_proj](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/zerosection-proj.md) | 364 | `result-track:4c83afd0703488f161161acc1d0816401ba79d2c6d0127cbb34a9dde3d239627` |
| 47 | `theorem` | [zeroSection_snd](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/zerosection-snd.md) | 368 | `result-track:583c42ae90373a2b997164d4a3c4a17d0baf383d5744ac3c181ba17b0b33b33a` |
| 48 | `class` | [VectorBundle](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/vectorbundle-source-edition-2.md) | 383 | `declaration-track:e77495c0c13e205d469ebbb564865c9b9f265d9b1a6def692da87ac24456574f` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/instance.md) | 392 | `declaration-track:7cb43a851a2bbeb66aece3f760640d2957f462ec78ecefc9e68857ddca26abc4` |
| 50 | `theorem` | [continuousOn_coordChange](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuouson-coordchange.md) | 396 | `result-track:d3610b3756c9f48b729ee3849bd58fa5f4ea957ba229bd31d6cdb35f6aba32d6` |
| 51 | `def` | [continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuouslinearmapat.md) | 407 | `declaration-track:37a34bc2368a760e823eaf9963260ced1269e48580b3a9df6601ba65d57b8ff8` |
| 52 | `lemma` | [continuousLinearMapAt_apply_of_mem](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuouslinearmapat-apply-of-mem.md) | 417 | `result-track:0f048c8c6cc9910c63c7187076e1081386d93e0f08dc4bda8e2e743010e92d35` |
| 53 | `def` | [symmL](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symml.md) | 423 | `declaration-track:99979786c7985ce0a8961b3fcfc28fe2106465ced09ac34052f8116819e4f884` |
| 54 | `theorem` | [symmL_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symml-apply.md) | 436 | `result-track:0f0d300ecb3660a973c641c200522bd01531468f2b2e57622a14c1a03510f344` |
| 55 | `lemma` | [symmL_apply_of_notMem](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symml-apply-of-notmem.md) | 441 | `result-track:4d38b9c76a351ca934ffcbbfe4e3864e9bf9c8ba7c6edf3d51fd318d70c4f644` |
| 56 | `theorem` | [symmL_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symml-continuouslinearmapat.md) | 445 | `result-track:5f92bfccb19af5a603d4afa0fd7296460e5b016cb544b0c114888fccc924cc50` |
| 57 | `theorem` | [continuousLinearMapAt_symmL](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuouslinearmapat-symml.md) | 449 | `result-track:42fe45edafb5f1452ac50369c7d1fbfb5105f6a84259bf5c6ddeae2b8d53d293` |
| 58 | `def` | [continuousLinearEquivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuouslinearequivat.md) | 457 | `declaration-track:d7103912a9004004534fc7d5557d2d5d42abaf79e1eae6f02946ce4f660b7f78` |
| 59 | `theorem` | [coe_continuousLinearEquivAt_eq](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coe-continuouslinearequivat-eq-source-edition-2.md) | 466 | `result-track:a6b57452df30aacb5ad41fb7ccbda699e0b4d20daeec5e71959abd1f3e495077` |
| 60 | `theorem` | [coe_continuousLinearEquivAt_eq'](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coe-continuouslinearequivat-eq.md) | 471 | `result-track:12555a74337652c4644c9a5448fc231f8c110a554bed6bbc32e6d6d3f0bbf1de` |
| 61 | `theorem` | [symm_continuousLinearEquivAt_eq](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-continuouslinearequivat-eq.md) | 476 | `result-track:d609ecbc161620a07cafd628faae312016e2e6300b539e61e06cfea914559d3d` |
| 62 | `theorem` | [symm_continuousLinearEquivAt_eq'](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-continuouslinearequivat-eq-source-edition-2.md) | 480 | `result-track:e73dc638e1d7a4462a20ca7690073cfde0fbaf0ab2b4c6e88e8d1f2f66b88498` |
| 63 | `theorem` | [continuousLinearEquivAt_apply'](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuouslinearequivat-apply.md) | 486 | `result-track:0f658e9567b26a1dea0eb788fd31a3265fd81a9b676fa9247caf159c84186bbd` |
| 64 | `theorem` | [apply_eq_prod_continuousLinearEquivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/apply-eq-prod-continuouslinearequivat.md) | 492 | `result-track:841387788e03682c5c0f7c486dcd83dffb462d3751f797def380896c894c771b` |
| 65 | `theorem` | [zeroSection](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/zerosection.md) | 500 | `result-track:44b16ec9accd34474e604dfc6e10ee8bd2adef67e41ef56a69f2d7c15e48a109` |
| 66 | `theorem` | [continuous_zeroSection](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuous-zerosection.md) | 505 | `result-track:3c631e0a2015e10c679d83591f4c806f7a00ea72717db175da0d18fc09f0cd69` |
| 67 | `theorem` | [continuousOn_zeroSection](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuouson-zerosection.md) | 516 | `result-track:2070e0dcbb7a5f1c0b33c48ed659e7a6c41f7d372bea71fea7f8dd68f17aad36` |
| 68 | `theorem` | [continuousAt_zeroSection](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuousat-zerosection.md) | 521 | `result-track:b9ba86419c3b89ef4e0b8fc6f8c90bcef988e91680f95bfa7a77a9355dc68eb8` |
| 69 | `theorem` | [symm_apply_eq_mk_continuousLinearEquivAt_symm](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/symm-apply-eq-mk-continuouslinearequivat-symm.md) | 527 | `result-track:78701d34a8b4ff835df0ce12e507f1a1efecaa7b6837ea1de2b6565b25d5adb9` |
| 70 | `theorem` | [comp_continuousLinearEquivAt_eq_coord_change](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/comp-continuouslinearequivat-eq-coord-change.md) | 532 | `result-track:8c28d5df4f3d1551fa240de0120dc0f4b64cdf6dfc78d2f3653a66aa600aaa8a` |
| 71 | `def` | [VectorBundle.continuousLinearEquivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/vectorbundle-continuouslinearequivat.md) | 546 | `declaration-track:fbe0adaaf6bf8e6c48f9def48e6f0f2ba5df0cce4206ddacfb362275e04e43fa` |
| 72 | `lemma` | [VectorBundle.completeSpace](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/vectorbundle-completespace.md) | 551 | `result-track:1ad191592495e743a241417aed17e7283c2aea514ddad04a99eb8bb88acf5c25` |
| 73 | `structure` | [VectorBundleCore](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/vectorbundlecore.md) | 566 | `declaration-track:41d548721f09d1409f5b6041df3ced6a4d99aa7b92467d451d927eb6fe261914` |
| 74 | `def` | [trivialVectorBundleCore](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/trivialvectorbundlecore.md) | 579 | `declaration-track:3160d15376eac79dc11ee19f312d87ed7953b0a213073badb8c66307057bd5f8` |
| 75 | `instance` | [(anonymous)](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 589 | `declaration-track:bcd6c25ff6a07a485b8448e3c6f87f98e42dcbeacf56a09467e41394b2bdd955` |
| 76 | `def` | [toFiberBundleCore](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/tofiberbundlecore.md) | 599 | `declaration-track:37f49998d682ae21faeb6998e253eb7a8d087606ccd2665544b8adbdc381f9bc` |
| 77 | `theorem` | [coordChange_linear_comp](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coordchange-linear-comp.md) | 610 | `result-track:5c3406e9bc710ceb63c7cd106671e44803e933004e99157d1d082bbd87d9366f` |
| 78 | `def` | [Index](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/index.md) | 619 | `declaration-track:72347d62f3f44257ee60f18fca3933050db6c52ba3a5d15aad1bf7f3b850242c` |
| 79 | `def` | [Base](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/base.md) | 623 | `declaration-track:7b618e76521b0b48109c0ea96210387e7f09a8b339c210d43d5352a339b737d8` |
| 80 | `def` | [Fiber](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/fiber.md) | 628 | `declaration-track:26913d7883ea291f569f40df943b35658cff48704d795579230104f848fc4755` |
| 81 | `instance` | [topologicalSpaceFiber](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/topologicalspacefiber.md) | 631 | `declaration-track:9497af25a89029bb25474cdfb1908c51cfd2d2b8b5dea3b7004036a7a6b479fa` |
| 82 | `instance` | [addCommGroupFiber](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/addcommgroupfiber.md) | 636 | `declaration-track:9e94d3ad5faf485cc6435695eb14fcae5d9e86b195a901ab5431476ecddf0a2a` |
| 83 | `instance` | [moduleFiber](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/modulefiber.md) | 639 | `declaration-track:f50a301417a3f1932e231d254058bfde67a89298c62531738c9a3595536c8106` |
| 84 | `def` | [proj](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/proj.md) | 644 | `declaration-track:c7905b5564a856ff8a75e36bc43ffe45895b30509034a2e63de00ca6bd4e174d` |
| 85 | `def` | [TotalSpace](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/totalspace.md) | 650 | `declaration-track:e91714d575955819820a0fd18f524f4c725019e8cd03f88bb27b10fb7c9daeeb` |
| 86 | `def` | [trivChange](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/trivchange.md) | 654 | `declaration-track:72307c60ed487ebfeada6862a402aa12dd81358f437f9b5ae1250614165ae6d6` |
| 87 | `theorem` | [mem_trivChange_source](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/mem-trivchange-source.md) | 658 | `result-track:1c381475bfe642746525966f107b3cc9b89f779b20fe99f6c8756c1d5d8804d2` |
| 88 | `instance` | [toTopologicalSpace](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/totopologicalspace.md) | 664 | `declaration-track:8a4f12d4aaddfed061a7909313ee1ca262dd67eb8643a11fe2044922b29f85eb` |
| 89 | `theorem` | [coe_coordChange](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coe-coordchange.md) | 670 | `result-track:3a40c5fc38c583f829dfaae4ee5e58b34466ac139dbf0c22e00c3bcd695c963d` |
| 90 | `def` | [localTriv](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtriv.md) | 675 | `declaration-track:266973499835168fd35ddb36100392edade102d2f1908395e23d09a1557e8154` |
| 91 | `theorem` | [localTriv_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtriv-apply.md) | 679 | `result-track:273ef7a282406a63c642a71734a63a8f49ecc757f4364db08c900b65162e9af8` |
| 92 | `instance` | [localTriv.isLinear](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtriv-islinear.md) | 685 | `declaration-track:27ab4fbdd48f6e7cc2b4361d70d5c2c084fe1a0017552b5c568dee93d795ac1e` |
| 93 | `theorem` | [mem_localTriv_source](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/mem-localtriv-source.md) | 693 | `result-track:208d3838fb0ef658a848bc5bde9d627f548fd90a73c15f980ed8b377abf35604` |
| 94 | `theorem` | [baseSet_at](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/baseset-at.md) | 697 | `result-track:943e6224f6b12d3e3531a22d43448c183ab4c3439c97594e19803e867342239f` |
| 95 | `theorem` | [mem_localTriv_target](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/mem-localtriv-target.md) | 701 | `result-track:4d013afa4ec19f58490662678efe691fdd8552fbee4f8f59715a9711a781684e` |
| 96 | `theorem` | [localTriv_symm_fst](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtriv-symm-fst.md) | 706 | `result-track:0379b4b3dfa5352761114429414efbeef749121286854d9526d07a1143e35566` |
| 97 | `theorem` | [localTriv_symm_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtriv-symm-apply.md) | 712 | `result-track:8268032cd5a17587360c917679107e99ca91f59151af7357ac7b4662c02ac7c0` |
| 98 | `theorem` | [localTriv_coordChange_eq](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtriv-coordchange-eq.md) | 717 | `result-track:78f29fdcf29f861707e3d948b9e76c6f346fc218d2837976c26b71758b8bbb90` |
| 99 | `def` | [localTrivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtrivat.md) | 725 | `declaration-track:35f2dc94af8c25443ac5ebaf825234d8532d958ba745d71dc9e55e95024473f3` |
| 100 | `theorem` | [localTrivAt_def](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtrivat-def.md) | 729 | `result-track:3da2af242630b70ab7275acd992ce751bae98acde31c6e549ea61fa3623d5d8f` |
| 101 | `theorem` | [mem_source_at](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/mem-source-at.md) | 733 | `result-track:f8dac2296939b1f0bd05459dc1bb2fee2bc21e1ef97779f94bc7ff8eddffa79b` |
| 102 | `theorem` | [localTrivAt_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtrivat-apply.md) | 738 | `result-track:cb0961d51b122e681cf73c3b730b00e1304b57cc979edda7fb78dfe3f0fae95b` |
| 103 | `theorem` | [localTrivAt_apply_mk](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtrivat-apply-mk.md) | 742 | `result-track:d049a356adc93b6eb976734919c9d7db00f3fc1d30371eb0e165224f93b9cad4` |
| 104 | `theorem` | [mem_localTrivAt_baseSet](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/mem-localtrivat-baseset.md) | 746 | `result-track:598170bfd50f74b47bffc2fbc745d9fb2be15c67339201cfdc360ccfb6a63597` |
| 105 | `instance` | [fiberBundle](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/fiberbundle.md) | 749 | `declaration-track:19d6c23f593050453d043c0aac1e1812c871a8068e949eaaaee7490470090e85` |
| 106 | `lemma` | [trivializationAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/trivializationat.md) | 752 | `result-track:7fc90ba754ecc01dde5e69628226dc330827181dc30bbac061375bb4d0407a6f` |
| 107 | `instance` | [vectorBundle](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/vectorbundle.md) | 754 | `declaration-track:7af357f06395a7363094e4e3814d3a3326fbb15af52e308723c7737bec053398` |
| 108 | `theorem` | [continuous_proj](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuous-proj.md) | 766 | `result-track:1cdcc6537cc73258fb0ebd08bd69e51fd0cce49a155cf00455012db4f31d69e6` |
| 109 | `theorem` | [isOpenMap_proj](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/isopenmap-proj.md) | 770 | `result-track:c6362298f84c2717606fe50c03d2582032f8117d79bcef98573c3c950cd04b50` |
| 110 | `theorem` | [localTriv_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtriv-continuouslinearmapat.md) | 776 | `result-track:66744e7d85829994bb46dde9f52def0daf6b6183c59cbfe18d5f0f6910028fc9` |
| 111 | `theorem` | [trivializationAt_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/trivializationat-continuouslinearmapat.md) | 783 | `result-track:ea321959c88a7d65064959d5ef9da8aa5c0ac1a8002b9213a20b1840229411fb` |
| 112 | `theorem` | [localTriv_symmL](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/localtriv-symml.md) | 790 | `result-track:a2876a00fca3aec1d9674b6ad213c2b1a9bf345f632dca2cf4caba581f13bc6b` |
| 113 | `theorem` | [trivializationAt_symmL](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/trivializationat-symml.md) | 797 | `result-track:d937b22d9977c4bf6ccf7547e4d050206c4dcde4380e13ad4e8bae6edbac13e5` |
| 114 | `theorem` | [trivializationAt_coordChange_eq](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/trivializationat-coordchange-eq.md) | 802 | `result-track:cc23bdc3ffc162cb4a2c419b263c98a1fddfc3dc6f8e7c622620c3fe94316261` |
| 115 | `structure` | [VectorPrebundle](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/vectorprebundle.md) | 834 | `declaration-track:6dcbe2b3d79d86aaace4578b3c0e51160b1e25e9ddf65ba9d16da12e9cc72a5d` |
| 116 | `def` | [coordChange](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coordchange.md) | 851 | `declaration-track:dc205db633ed81827a45ad52a825eea62d8653cbcb48be9d6fe3245e9a9c5cc7` |
| 117 | `theorem` | [continuousOn_coordChange](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuouson-coordchange-source-edition-2.md) | 855 | `result-track:f3ef8dbe78cf4fbc4f615986a7cd194ec9fc4203e20ba9673201d15b9a423876` |
| 118 | `theorem` | [coordChange_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/coordchange-apply.md) | 860 | `result-track:3c26cc1e9dd617fb4375d19a9c089e58dc14938ae613d4147bd07815810ec6f0` |
| 119 | `theorem` | [mk_coordChange](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/mk-coordchange.md) | 866 | `result-track:b29b666a169483416d65a6cc67be014166be570431f845b9a88ab59d090180f8` |
| 120 | `def` | [toFiberPrebundle](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/tofiberprebundle.md) | 877 | `declaration-track:00bacc03b05eb383bba25f9ac018eb91ccd6ec9ba13af197e9104ed692b73d6e` |
| 121 | `def` | [totalSpaceTopology](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/totalspacetopology.md) | 892 | `declaration-track:d7c3991b76eb7c2d8bcfeb161ea07c27f2d1291d8326324456821b03fbe0b4b3` |
| 122 | `def` | [trivializationOfMemPretrivializationAtlas](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/trivializationofmempretrivializationatlas.md) | 897 | `declaration-track:43d22d68765f6a935f0837d9a71eeee22d032fadca1edf95c58838244455f943` |
| 123 | `theorem` | [linear_trivializationOfMemPretrivializationAtlas](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/linear-trivializationofmempretrivializationatlas.md) | 902 | `result-track:67f93597f799e8d739b26afd04239005a6c20492f36e5606945ce907cc8c80b1` |
| 124 | `theorem` | [mem_trivialization_at_source](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/mem-trivialization-at-source.md) | 911 | `result-track:5bf837cc4b9c89ee6db2bc1554b6da8f24adc718904316393856e59e2ead2df5` |
| 125 | `theorem` | [totalSpaceMk_preimage_source](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/totalspacemk-preimage-source.md) | 916 | `result-track:3f72ea375bc3a6a9055a9fb54c84db7d2fa66b1ee4f1212ad563d7d7d8682a70` |
| 126 | `theorem` | [continuous_totalSpaceMk](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/continuous-totalspacemk.md) | 921 | `result-track:1223b5d0687de06c76967a620a1460e224a801d85205cb367396a7760b2aa58e` |
| 127 | `def` | [toFiberBundle](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/tofiberbundle.md) | 928 | `declaration-track:88b7754344899db72cf073efe752a5457e75239fa7d8ac8511da8f5aebd4e23b` |
| 128 | `theorem` | [toVectorBundle](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/tovectorbundle.md) | 938 | `result-track:b96ad5e8a147411f6506e8c067dfdfe8b4e0fdd1abba25359c0c6c2aea8f478e` |
| 129 | `def` | [inCoordinates](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/incoordinates.md) | 986 | `declaration-track:290b619df0156b6bffa99a101571a031050f9ef6979f4f23de6b05d770732999` |
| 130 | `theorem` | [inCoordinates_eq](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/incoordinates-eq.md) | 993 | `result-track:21197c001e8c7091994a84a3772399f08fb5069f7d29cb3d8b767047e0b97e76` |
| 131 | `theorem` | [Vector Bundle Basic Namespaced Public](../../../../GeneralTopology/VectorBundleBasicNamespacedPublic.lean/declarations/root-grwtsk-topology-generaltopology-bundlepretrivializationislinear-var.md) | 1005 | `result-track:4adfe373340a917e852e9cf86ee248d6b8ba8130facfa9dafcefa82e94845992` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b667552328c60ff062a7770d6130b83711a57b9497a462984f9390885681091b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

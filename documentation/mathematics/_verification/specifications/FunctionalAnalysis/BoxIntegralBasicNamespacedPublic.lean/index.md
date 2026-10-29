# Verification target: Box Integral Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0925e524275a3187930041cbdadbf1efd6be99b",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0925e524275a3187930041cbdadbf1efd6be99b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean.json)

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
| 1 | `def` | [integralSum](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum.md) | 89 | `declaration-track:92aeba7bf7a24d6c43ae22632f0cafcc9919996d565f2fc7537e443a9267377b` |
| 2 | `theorem` | [integralSum_congr](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum-congr.md) | 92 | `result-track:cb34245fb42630c69d1fcb1c68f05f50692840ab3f9d21dcd70cfb530af89c17` |
| 3 | `theorem` | [integralSum_biUnionTagged](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum-biuniontagged.md) | 100 | `result-track:10f7e89bc7f388eff7b27d229ee225e7218f99a7d8bb0c124ac4b25b5781965b` |
| 4 | `theorem` | [integralSum_biUnion_partition](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum-biunion-partition.md) | 106 | `result-track:95a4f79321a11781f88dae672410fb0a7abe529ed3d95dd3731668686e4a1cf7` |
| 5 | `theorem` | [integralSum_inf_partition](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum-inf-partition.md) | 118 | `result-track:ea5ac5e5aa3ad38ee31fdde6cb5b53796db5075ced0798c3fe2e5d36e20c976e` |
| 6 | `theorem` | [integralSum_fiberwise](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum-fiberwise.md) | 124 | `result-track:a2041100602a0b1acbfb8f01e78d0b516dd3e33623b8c97028e53aab80fa4a79` |
| 7 | `theorem` | [integralSum_sub_partitions](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum-sub-partitions.md) | 129 | `result-track:81498c93cf14d10071f7fbc850fd5041b8ed6cbd789b6bcadfc2b49afe0733d0` |
| 8 | `theorem` | [integralSum_disjUnion](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum-disjunion.md) | 140 | `result-track:39b8f6636e316ac76d78c3bee81c8669f68c8bb2a1a95ba740aa1d80745ad441` |
| 9 | `theorem` | [integralSum_add](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum-add.md) | 149 | `result-track:e29160cc703dda6d2fa5f7c70767292389f6207d0f8fd024ec04db16e75c35fb` |
| 10 | `theorem` | [integralSum_neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum-neg.md) | 154 | `result-track:807bbbe6d100e097f4f60521ade4df8fa623ace5832f748a8f573b0b10451447` |
| 11 | `theorem` | [integralSum_smul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integralsum-smul.md) | 159 | `result-track:d03f7de78246bd299a0ff945163c927bd36c7002ab15ed65a227a9d0a399d457` |
| 12 | `def` | [HasIntegral](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral.md) | 172 | `declaration-track:86e5deb926848313cc5ce06bd07a2c25f5d8c4f42b31f3e89d1855c182cf6663` |
| 13 | `def` | [Integrable](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable.md) | 178 | `declaration-track:c40d07797b45fbf6685830c1eda91a8de4539e51e8d1448d4542289baf7d93b6` |
| 14 | `def` | [integral](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integral.md) | 184 | `declaration-track:be7105408a7637ed73d6a1292d7b52ba91f4219c161966e68accbe3d9de36e11` |
| 15 | `theorem` | [hasIntegral_congr](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-congr.md) | 187 | `result-track:187c73902710158fae53d7ed5039749b8d6dade70628352826595030975f734f` |
| 16 | `theorem` | [HasIntegral.tendsto](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-tendsto.md) | 200 | `result-track:419b5c90f385d622963732d77cfa79cbb3fcdf5b52b86cbfe44c564a8812126d` |
| 17 | `theorem` | [hasIntegral_iff](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-iff.md) | 205 | `result-track:e32df8f890648ed770fd5d12ad375a65d0990e511a55a5a8f063eafaee6b86a5` |
| 18 | `theorem` | [HasIntegral.of_mul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-of-mul.md) | 213 | `result-track:7b00686725d19aaa4111f4e8e8677aa5fcdae1ab8f9ce94d5a16e057f68b3116` |
| 19 | `theorem` | [integrable_iff_cauchy](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-iff-cauchy.md) | 222 | `result-track:5b62de9afd793687ecab7e2b3f284a1525f1159d69e79745e22eb5d49aad7f00` |
| 20 | `theorem` | [integrable_iff_cauchy_basis](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-iff-cauchy-basis.md) | 228 | `result-track:d1688d41a0f78b19c3f2b4fe1fbf57c23f5320ac2b870ad0c4e9b301c26cb6fe` |
| 21 | `theorem` | [HasIntegral.mono](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-mono.md) | 241 | `result-track:520161bbad4ea262de3afc809c1d4edbb5695600d4475655fdaa9aa5187b734b` |
| 22 | `theorem` | [Integrable.hasIntegral](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-hasintegral.md) | 245 | `result-track:cf53a28562c549e6cbfd11f9432d4a302b50f12faab66c0213af7f2f2868ad80` |
| 23 | `theorem` | [Integrable.mono](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-mono.md) | 250 | `result-track:3c711e1f7af219d3a00f00be4dbc6159c04b81876b6a5f82eda626980bb4acee` |
| 24 | `theorem` | [HasIntegral.unique](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-unique.md) | 253 | `result-track:7961ae818c57f4de9252cee965d81aab22099633d1714a7e9b56df3a73db9cc4` |
| 25 | `theorem` | [HasIntegral.integrable](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-integrable.md) | 256 | `result-track:5637d842b10ae5cbe24a0828bde8397234ecf47c3893e7b8b3477efe5c8165d5` |
| 26 | `theorem` | [HasIntegral.integral_eq](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-integral-eq.md) | 259 | `result-track:90c345c20fd951bdaec27b377a5aec3b66a09a3c4f58f40899df7ec72f0bf704` |
| 27 | `theorem` | [HasIntegral.add](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-add.md) | 262 | `result-track:29e76e6b969cb30b400cebf144b081f3c21caa2c77869920c86bbd6b8ac3129b` |
| 28 | `theorem` | [Integrable.add](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-add.md) | 266 | `result-track:889c39cf0e71886ce070cefff6ac6cef1921f1df2c3fe867abfb702c107a3100` |
| 29 | `theorem` | [integral_add](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integral-add.md) | 270 | `result-track:4ff7aa0dd1563a6fbd31ef7335f954745c889ab4c11ba4e8c0d701dd7a10d286` |
| 30 | `theorem` | [HasIntegral.neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-neg.md) | 274 | `result-track:13acc1e906513a47acb11ba4bc630b7395efe3bb7cbdad785bec7df094b07ad3` |
| 31 | `theorem` | [Integrable.neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-neg-source-edition-2.md) | 277 | `result-track:7c7c5d15a0adc418121af3ac2c7d4b8e68febb350580ef451ca16068d4ef13a2` |
| 32 | `theorem` | [Integrable.of_neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-of-neg.md) | 280 | `result-track:884921b96820af0b4d22e0567bd164a2df99f3b5c7a292feea0e468627395695` |
| 33 | `theorem` | [integrable_neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-neg.md) | 284 | `result-track:58c53223e641b785ffb0ea6fc6f4bef3884c9ae567f13c837d7b939c316b569b` |
| 34 | `theorem` | [integral_neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integral-neg.md) | 288 | `result-track:35e446e29a8b1fe68efbb3da120f5eefbb3461c078e5ab8c53da1fe9c767b2be` |
| 35 | `theorem` | [HasIntegral.sub](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-sub.md) | 293 | `result-track:f18bab09df4785e2ea27ea34151394fb40a597df1572b7ebc12a397d0b7b8923` |
| 36 | `theorem` | [Integrable.sub](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-sub.md) | 296 | `result-track:cba7739c671185c2ab3e9a087fbdf1c12528c387abdbba16f048f6527801848c` |
| 37 | `theorem` | [integral_sub](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integral-sub.md) | 300 | `result-track:0d43a6a3145f2351ca17f3fc445a03aa07d87b69a0edd0b4fde055b4699f74e2` |
| 38 | `theorem` | [hasIntegral_const](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-const.md) | 304 | `result-track:330cec81cdf3c0c87d665abbd82b3f080526fa680c6a0bd2bf71f5e307c39ce6` |
| 39 | `theorem` | [integral_const](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integral-const.md) | 309 | `result-track:deeb022d7dcb7de2e7ad71e723fa149305a057eea291be589ddcf9d2d1fa4945` |
| 40 | `theorem` | [integrable_const](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-const.md) | 312 | `result-track:82f57691e390753bde9656a34babddeae26c0047d663b9beb144261cbe74a442` |
| 41 | `theorem` | [hasIntegral_zero](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-zero.md) | 315 | `result-track:e4f9c1df0e5596dfc696b1f1660dd0455184fc4b7c369b0edceee4edcdaec9a9` |
| 42 | `theorem` | [integrable_zero](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-zero.md) | 318 | `result-track:4a9fc4fb69e3ff981650c7f56d131bcdea68424052536837fbed289821b62b8a` |
| 43 | `theorem` | [integral_zero](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integral-zero.md) | 321 | `result-track:69321c4843eb0f7cc3fc1d2f20c132e17365c09956a107b26a04fa76ad66bd6e` |
| 44 | `theorem` | [HasIntegral.sum](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-sum.md) | 324 | `result-track:abb7de791ca3e51610ecc4b09598b548385d282daf241d18d9aa556605ea4131` |
| 45 | `theorem` | [HasIntegral.smul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-smul.md) | 334 | `result-track:6385e098df3ec1ce283e89f92a50bc141f8084acebbd83c8acaae5df85213686` |
| 46 | `theorem` | [Integrable.smul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-smul.md) | 339 | `result-track:ec6c10943d0cc8bd0132fe42e32d26dbf27e9ac3cc8f6909bdc0cf97b0dcc84b` |
| 47 | `theorem` | [Integrable.of_smul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-of-smul.md) | 342 | `result-track:297eff157c56e94c46d6f7d946553f4e377641e5091d4e45126cb36ce404565d` |
| 48 | `theorem` | [integral_smul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integral-smul.md) | 347 | `result-track:2b23edb8827606193fa89eeeeaa339a5ecfb6fc61affb45299ddd297f365fc2d` |
| 49 | `theorem` | [integral_nonneg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integral-nonneg.md) | 358 | `result-track:f74160939c8d241558518c12e51a8a7a2669cb911eefce236eba63c0e6b73a5c` |
| 50 | `theorem` | [norm_integral_le_of_norm_le](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/norm-integral-le-of-norm-le.md) | 367 | `result-track:cd55ee6e4eecf3b7f0df2486588887c29ca95d9ddc897e6d74f27e00fb737c7d` |
| 51 | `theorem` | [norm_integral_le_of_le_const](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/norm-integral-le-of-le-const.md) | 380 | `result-track:28bec541db462ea33ce8085ae69332d20596d4fa5fdaa52a85f53e7301206417` |
| 52 | `def` | [convergenceR](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/convergencer.md) | 421 | `declaration-track:92fca1f6c62dc7f8a34883d0bdcea2d89dd88f859d17f8e0060b4da07c3e4553` |
| 53 | `theorem` | [convergenceR_cond](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/convergencer-cond.md) | 427 | `result-track:bbbad10154c1b2abfc1e921bf2a519f7db627e1348d9d3ed151df249b78db4c4` |
| 54 | `theorem` | [dist_integralSum_integral_le_of_memBaseSet](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/dist-integralsum-integral-le-of-membaseset.md) | 432 | `result-track:0bc50c96acbe42dd3ec8ed8d9593bdfa4bd4c79a82d2b5b3f473471397d36fdc` |
| 55 | `theorem` | [dist_integralSum_le_of_memBaseSet](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/dist-integralsum-le-of-membaseset.md) | 454 | `result-track:68e4b0d1f9c320f2a259d003f31301f6c390d9b36b01080248b4da68ad3c15e2` |
| 56 | `theorem` | [tendsto_integralSum_toFilter_prod_self_inf_iUnion_eq_uniformity](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/tendsto-integralsum-tofilter-prod-self-inf-iunion-eq-uniformity.md) | 477 | `result-track:5b0ef6e46993fd6c7d45c3aaea96b52d79bdde0768b17d9467c8291db6e1fd3a` |
| 57 | `theorem` | [cauchy_map_integralSum_toFilteriUnion](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/cauchy-map-integralsum-tofilteriunion.md) | 491 | `result-track:d06b6786f99264954ee72014ceb3e9c0316fc886e8c3690a630d8e4ab9b3f18f` |
| 58 | `theorem` | [to_subbox_aux](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/to-subbox-aux.md) | 500 | `result-track:fc9076058ffba37b7647e58b250ee5c0add6d7772ae678c4ab66723d072ca888` |
| 59 | `theorem` | [to_subbox](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/to-subbox.md) | 511 | `result-track:be875f557604051b42f8240a42a7d53fc30dedf5f52762ac1372924a453d7de9` |
| 60 | `theorem` | [tendsto_integralSum_toFilteriUnion_single](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/tendsto-integralsum-tofilteriunion-single.md) | 516 | `result-track:c37c99724c9e0e74a9c1af9eafcd6f06f3b5a2a61b970dc2b7acba58e3f72581` |
| 61 | `theorem` | [dist_integralSum_sum_integral_le_of_memBaseSet_of_iUnion_eq](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/dist-integralsum-sum-integral-le-of-membaseset-of-iunion-eq.md) | 537 | `result-track:43dc341893f047aa59f02f9865bd3e877c29f3bf580ab4300be2b40646e267f8` |
| 62 | `theorem` | [dist_integralSum_sum_integral_le_of_memBaseSet](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/dist-integralsum-sum-integral-le-of-membaseset.md) | 595 | `result-track:8fa6157a34c7776855e57fc7398cf3bf4a439a776e73c56cc8aab8129fe36d24` |
| 63 | `theorem` | [tendsto_integralSum_sum_integral](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/tendsto-integralsum-sum-integral.md) | 602 | `result-track:7fdac35c48792c5ee65741cce4e92799e00cfda69b30f32078507496cb1b187a` |
| 64 | `theorem` | [sum_integral_congr](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/sum-integral-congr.md) | 616 | `result-track:60b96f05c150563ac2c81b4b3b32176416a81baed30ed1c5ed515064bb700681` |
| 65 | `def` | [toBoxAdditive](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/toboxadditive.md) | 629 | `declaration-track:bf81d1be0be09377d10899b09f91023f92ace3396dbcf9ba92a54c21761affaa` |
| 66 | `theorem` | [integrable_of_bounded_and_ae_continuousWithinAt](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-of-bounded-and-ae-continuouswithinat.md) | 649 | `result-track:91df4df87612e1c51073e99e295b30a250b33d4e181d9af1dd63eb533cc2d8d8` |
| 67 | `theorem` | [integrable_of_bounded_and_ae_continuous](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-of-bounded-and-ae-continuous.md) | 758 | `result-track:86091e25a41763567d59d6e4f1db0ab83a942c1d5434c1eac00be53b6d1c9135` |
| 68 | `theorem` | [integrable_of_continuousOn](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/integrable-of-continuouson.md) | 768 | `result-track:bd61c4583e60535edf20892806dd9a45313ffb84be6f0a9ad749059d4365fade` |
| 69 | `theorem` | [HasIntegral.of_bRiemann_eq_false_of_forall_isLittleO](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-of-briemann-eq-false-of-forall-islittleo.md) | 783 | `result-track:6cecfe254f9e1fbe17408b79ddfff55618b7064efdc23cd4dd97404992c56ae3` |
| 70 | `theorem` | [HasIntegral.of_le_Henstock_of_forall_isLittleO](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-of-le-henstock-of-forall-islittleo.md) | 877 | `result-track:6932eed4c68b8ea21f470bf450f758c4b473b30d398d742459b2d0936402d5bc` |
| 71 | `theorem` | [HasIntegral.mcShane_of_forall_isLittleO](../../../../FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/declarations/hasintegral-mcshane-of-forall-islittleo.md) | 902 | `result-track:5480d3d526e0adc71f7990fe68f897009dcd753dcfebab3788f71ba252070d31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=352389bec2ea08e0a1e234868d2d779aaf9f5ddc2d98f13a0051748afc95407b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

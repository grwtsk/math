# Verification target: Box Integral Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6098dac7fbdb5c9e227e6daf427dac61b577eb6f",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6098dac7fbdb5c9e227e6daf427dac61b577eb6f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Filter` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Measure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralSum](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integralsum.md) | 86 | `declaration-track:9e48f8442d6c2fefff96bf154e8fa3b8e3a332a9f2b29ada348ee00f83d8665a` |
| 2 | `theorem` | [integralSum_biUnionTagged](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integralsum-biuniontagged.md) | 90 | `result-track:8fad12383eff3b9d27f5b23e39a68a22cb0dc328d2964377dc0ff9afcefab36e` |
| 3 | `theorem` | [integralSum_biUnion_partition](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integralsum-biunion-partition.md) | 97 | `result-track:a055012eeaea59ffb597ea7d91c24dd063feb55536d7d00124b6375ea3bb33d7` |
| 4 | `theorem` | [integralSum_inf_partition](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integralsum-inf-partition.md) | 110 | `result-track:77e822095b966b799b574a927ea50cd1a49118ed4f1ff12486dd65413364a523` |
| 5 | `theorem` | [integralSum_fiberwise](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integralsum-fiberwise.md) | 116 | `result-track:b659319fe83dddd69cc3d8f13f1a107896eb75d9ec1f0784a0cadd54b492d138` |
| 6 | `theorem` | [integralSum_sub_partitions](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integralsum-sub-partitions.md) | 122 | `result-track:f3bdfc3670ba26a367bd61285ee6392a4c15df870fa5dd091f72b0da3e9bc27b` |
| 7 | `theorem` | [integralSum_disjUnion](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integralsum-disjunion.md) | 134 | `result-track:f2965ad1fa8b87c0582c075295fbb249aeed8152d09ebded176ea86a70a979a1` |
| 8 | `theorem` | [integralSum_add](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integralsum-add.md) | 144 | `result-track:3d382b4a7f6f8a24b50180f8e40245c014f5daf9e77ae5cbaa87316d65b6265f` |
| 9 | `theorem` | [integralSum_neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integralsum-neg.md) | 150 | `result-track:79c583b8a1b7f1dc1e12548bd7b58577f11f35f9e41885b1f9a5a13b35229c83` |
| 10 | `theorem` | [integralSum_smul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integralsum-smul.md) | 156 | `result-track:cc8abf8f5a555c8e8051663fdb59be5992a4fa21cf19bf9e38cbd14f1d430a4e` |
| 11 | `def` | [HasIntegral](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral.md) | 171 | `declaration-track:d8ea467e92671dae3100d769afde0f0c3d347516a6f300ee6ab28fed1b614f1f` |
| 12 | `def` | [Integrable](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable.md) | 178 | `declaration-track:710732dca0531c327cbc2e669b77353a5444fce866d2e3920e244dbda737cd06` |
| 13 | `def` | [integral](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integral.md) | 184 | `declaration-track:2179ea9356e6d06f21670e45bc1f9524c58d895a03c0f486f6ff1a9f42d9302a` |
| 14 | `theorem` | [HasIntegral.tendsto](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-tendsto.md) | 195 | `result-track:163eb4c527e492f82d962c95b5a1b29a684b0e87f38abe75ac76bb9a092c6b2b` |
| 15 | `theorem` | [hasIntegral_iff](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-iff.md) | 201 | `result-track:508372fadf8205db6897127ae8c943d8b1c319b0a29a340ec7f2bd70c0cf437f` |
| 16 | `theorem` | [HasIntegral.of_mul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-of-mul.md) | 210 | `result-track:b6937368239c63557ab55d015b6506c1686ddab6b8956e7d15c1095c87714a5e` |
| 17 | `theorem` | [integrable_iff_cauchy](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-iff-cauchy.md) | 220 | `result-track:6a05602dc439e0aac6a29adad15ab85d951268dbea73ce1c827a15d2d376bb0c` |
| 18 | `theorem` | [integrable_iff_cauchy_basis](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-iff-cauchy-basis.md) | 227 | `result-track:3e97ea33941a89d43e8045d2706baf0459c831467800344e9445f29c539bb4c2` |
| 19 | `theorem` | [HasIntegral.mono](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-mono.md) | 242 | `result-track:fc0b64afb56dc3a0ef7a9f4d8d11793ea65b8ea693b84c336013b278845d54c7` |
| 20 | `theorem` | [Integrable.hasIntegral](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-hasintegral.md) | 247 | `result-track:f3f5e494b08b451af38d8f241ed711ff4347a25d2a33801d12288076a5bed706` |
| 21 | `theorem` | [Integrable.mono](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-mono.md) | 253 | `result-track:6193b56a30e0251e98ac15ef9c43259573477589212a2f67c79301f68d503de5` |
| 22 | `theorem` | [HasIntegral.unique](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-unique.md) | 257 | `result-track:7428d525f1b4c8643fd336d1fa252d31e9219d49ce9f465bf4d8cc94b6d58c9e` |
| 23 | `theorem` | [HasIntegral.integrable](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-integrable.md) | 261 | `result-track:f22e1fb335c1f4a57f9f748c60f47358915e0c53824321a55b56dc064eb4dd0c` |
| 24 | `theorem` | [HasIntegral.integral_eq](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-integral-eq.md) | 265 | `result-track:56a38a7310b27e96eded8b7fb2ff5930a3911787f6e78238f72d0967b83d2166` |
| 25 | `theorem` | [HasIntegral.add](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-add.md) | 269 | `result-track:be38b45adc30a9827283141caf284ab1acb79cbdba17fbbaabb5cbb07c6838cc` |
| 26 | `theorem` | [Integrable.add](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-add.md) | 274 | `result-track:bb4472c68e1e6ecc4c5233a293a55ab9fee282ee7279305feace45c313f9359f` |
| 27 | `theorem` | [integral_add](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integral-add.md) | 279 | `result-track:ddd7a0ab1d0af81bf46243745b841250195c629f540334f5edbae0371d860963` |
| 28 | `theorem` | [HasIntegral.neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-neg.md) | 284 | `result-track:77bfa14e021b8e23d79399be67cf8d1825c62487c860d451ebb601dc7f7371bc` |
| 29 | `theorem` | [Integrable.neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-neg-source-edition-2.md) | 288 | `result-track:7758fc2c32559f4fe14699cd77b3c9dbd5ea9904a58e98a8d1a604bdb8b01730` |
| 30 | `theorem` | [Integrable.of_neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-of-neg.md) | 292 | `result-track:79872c8bd65dec1290820f37b1bd2b284b23f18df35fe458672ba4ece5db02b6` |
| 31 | `theorem` | [integrable_neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-neg.md) | 297 | `result-track:01bb2c5e8b93e1cc599c202f46aa442daf4d371cc6e2e77b3792b4c43a54a1a4` |
| 32 | `theorem` | [integral_neg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integral-neg.md) | 302 | `result-track:c4aae5ebae2a7968ea2f146a87b3acbc5581e8833fd12497987acbbad92c0bc7` |
| 33 | `theorem` | [HasIntegral.sub](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-sub.md) | 307 | `result-track:a1b99be18fb506d84491dac97026a750f145395993b864456da5e5b59a0b2f92` |
| 34 | `theorem` | [Integrable.sub](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-sub.md) | 311 | `result-track:951096a31e25041d4971be1c46d0f2802aec335d12b02f9001416a3090a8a819` |
| 35 | `theorem` | [integral_sub](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integral-sub.md) | 316 | `result-track:2cfd55fe23aa201fcf7949175ddc9e166c8a548a79910930f5caad815928afbf` |
| 36 | `theorem` | [hasIntegral_const](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-const.md) | 321 | `result-track:d410a177ad73fd24d06f72c00eba6c572012cd320bc2101da48eac5cf964e9d3` |
| 37 | `theorem` | [integral_const](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integral-const.md) | 327 | `result-track:103fadadbaa8267d82ee1d5d8e94d1bea844d1094247f320111996eb3adfede2` |
| 38 | `theorem` | [integrable_const](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-const.md) | 331 | `result-track:ec219a1dd636dcea90f7f4a45340e6de1faf96f3b60f6c34663e38acd6755c56` |
| 39 | `theorem` | [hasIntegral_zero](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-zero.md) | 335 | `result-track:704ccf93a37b4372d113db28cf59a43a1dd9dd80c289d63c987ebc35230b6d0e` |
| 40 | `theorem` | [integrable_zero](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-zero.md) | 339 | `result-track:ff2522b79a4611b003d91b38fc28cec6fb9d800b2dd134e3230ae86a518c0c17` |
| 41 | `theorem` | [integral_zero](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integral-zero.md) | 343 | `result-track:8c869f65154ccd563d99f6feab0787d38cb8ddeb54521d61145fa12ecfb78d50` |
| 42 | `theorem` | [HasIntegral.sum](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-sum.md) | 347 | `result-track:64f4e011c39907d7ed232900d9c91ba4fb85440b636be93b58e3ae00f12835fd` |
| 43 | `theorem` | [HasIntegral.smul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-smul.md) | 355 | `result-track:1dc6672fadeb383000729530d78890250adea2ec1f94807ed4505bcb021f3a03` |
| 44 | `theorem` | [Integrable.smul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-smul.md) | 361 | `result-track:7199da766a7a5d9c89c3fad73b25523f859fe5c44e521b8f31ea36672170223f` |
| 45 | `theorem` | [Integrable.of_smul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-of-smul.md) | 365 | `result-track:5059339b50146071ad6e44b4d77476d319a03e91d1129d9e88ebd1fe408612cd` |
| 46 | `theorem` | [integral_smul](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integral-smul.md) | 371 | `result-track:6bd9822e0cfe44d23e6fbea82d7dd74029d8865999b0a7902a9b3f70c44aebc9` |
| 47 | `theorem` | [integral_nonneg](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integral-nonneg.md) | 383 | `result-track:340deda6bb57fbbff96ffa7761aab2879585a00c9e3378327461cb2edcc92f2a` |
| 48 | `theorem` | [norm_integral_le_of_norm_le](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/norm-integral-le-of-norm-le.md) | 393 | `result-track:7e8a10e53ec4844974cdd28e25d4cdcc05f07fc3596b899e3cd9c15d1da4dead` |
| 49 | `theorem` | [norm_integral_le_of_le_const](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/norm-integral-le-of-le-const.md) | 406 | `result-track:494a3df9c0ee484f4b6b359e25897e66541038e9c45568858125b5734b438d83` |
| 50 | `def` | [convergenceR](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/convergencer.md) | 448 | `declaration-track:77eafbc8d0fcf3632f4bce217ad7a4b618ee312c2f0456c585e4b23dcf0c64a4` |
| 51 | `theorem` | [convergenceR_cond](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/convergencer-cond.md) | 455 | `result-track:73c49ed028a48b107a5c244ac1392673d8ebc9a8694ccdbcddc90514d8c6ef05` |
| 52 | `theorem` | [dist_integralSum_integral_le_of_memBaseSet](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/dist-integralsum-integral-le-of-membaseset.md) | 461 | `result-track:0de9f4030ec2c2085936c62d76f038df4db5d808981d78b41d302f17029a788a` |
| 53 | `theorem` | [dist_integralSum_le_of_memBaseSet](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/dist-integralsum-le-of-membaseset.md) | 484 | `result-track:27a90963ac83fadfdcd63a5755110bb488738dd461355312abf805cc2414fefb` |
| 54 | `theorem` | [tendsto_integralSum_toFilter_prod_self_inf_iUnion_eq_uniformity](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/tendsto-integralsum-tofilter-prod-self-inf-iunion-eq-uniformity.md) | 509 | `result-track:5eadd61b42aa1e45d9b9978e3f25efa837f9673a5809c29dd6b3c59963dd43a4` |
| 55 | `theorem` | [cauchy_map_integralSum_toFilteriUnion](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/cauchy-map-integralsum-tofilteriunion.md) | 524 | `result-track:04e762e4bdf42236c16dde657d0ae78decc0df3d430647d802be471699e53c97` |
| 56 | `theorem` | [to_subbox_aux](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/to-subbox-aux.md) | 534 | `result-track:01908c448b278b22f4256b92dcf44e6ea92b7cd74d8919f9c8442f3bbd95353f` |
| 57 | `theorem` | [to_subbox](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/to-subbox.md) | 543 | `result-track:2ff78feb0cbf0dfc9f20f950998ff9e2f4de5ddd5fdc1895fc70ea59fc04681c` |
| 58 | `theorem` | [tendsto_integralSum_toFilteriUnion_single](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/tendsto-integralsum-tofilteriunion-single.md) | 549 | `result-track:5a52e0694defdb5cffbf0f56e9190bd077c4454db51130f25ff7f659ac65049d` |
| 59 | `theorem` | [dist_integralSum_sum_integral_le_of_memBaseSet_of_iUnion_eq](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/dist-integralsum-sum-integral-le-of-membaseset-of-iunion-eq.md) | 571 | `result-track:f1ced1fbafaa0ecc76c9fbf97bc0f1202ffacf0f7093460a2f35c8672761fc2c` |
| 60 | `theorem` | [dist_integralSum_sum_integral_le_of_memBaseSet](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/dist-integralsum-sum-integral-le-of-membaseset.md) | 630 | `result-track:481a5d256840edb889dec42f50d42c8788df5c2f693a23d40bee3a4dd80e458b` |
| 61 | `theorem` | [tendsto_integralSum_sum_integral](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/tendsto-integralsum-sum-integral.md) | 638 | `result-track:1609cf24210ee8ab366c94af53ebb81e12131359dab91d9ddd0e897f71583b57` |
| 62 | `theorem` | [sum_integral_congr](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/sum-integral-congr.md) | 653 | `result-track:f3002217549cdce26f89aba6b2214dafb3d97694d02539e5b67924bf91c9f7bd` |
| 63 | `def` | [toBoxAdditive](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/toboxadditive.md) | 667 | `declaration-track:6e01fe04fc05f2e9301f3ec411a7aaef021c4051266f13dce547ae8b60966180` |
| 64 | `theorem` | [integrable_of_continuousOn](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/integrable-of-continuouson.md) | 689 | `result-track:e7256d560f997fbb6ffb67f1a5d5539a0a12512c473cbf1232ec25f451e14179` |
| 65 | `macro_rules` | [(anonymous)](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/macro-rules.md) | 723 | `declaration-track:876db69f9722bba17dbbe5469831ea6a29124df96d704dd6e696d9eaf5cc7053` |
| 66 | `theorem` | [HasIntegral.of_bRiemann_eq_false_of_forall_isLittleO](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-of-briemann-eq-false-of-forall-islittleo.md) | 727 | `result-track:c8d910343a8b1e1cdf3231e89a0eb8bf9379f9386411ff5e29aa1ca44771f3fc` |
| 67 | `theorem` | [HasIntegral.of_le_Henstock_of_forall_isLittleO](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-of-le-henstock-of-forall-islittleo.md) | 821 | `result-track:e9edf1bc7d3525a7cc3684f9db2ec6bbe3736c0bd1f329682c47a318dca2c73b` |
| 68 | `theorem` | [HasIntegral.mcShane_of_forall_isLittleO](../../../../FunctionalAnalysis/BoxIntegralBasicNamespaced.lean/declarations/hasintegral-mcshane-of-forall-islittleo.md) | 848 | `result-track:54113f9f024aeb4ac87a8ca8c521d24c15d8b797f20f2813f4ebb42ff512cf96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe65442d7b6518fa367b95b69245d914c731d6a506f7032b2569d301516def00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

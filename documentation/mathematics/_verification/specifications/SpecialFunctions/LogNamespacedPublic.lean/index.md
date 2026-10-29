# Verification target: Log Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26e7b49526ee412a40c92387fe640b78ec08a2a0",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/LogNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/LogNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26e7b49526ee412a40c92387fe640b78ec08a2a0`.

Source path: `GRWTSK/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean.json)

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
| 1 | `def` | [log](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log.md) | 38 | `declaration-track:3299e010d963c9f2d5ac5580640af5069d2e1fb80293a799f34fc4c12bd13870` |
| 2 | `theorem` | [log_re](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-re.md) | 41 | `result-track:48e353de95bf820cff56daa5cd92db9589880ebe99542dee37646ed9aa22ab8f` |
| 3 | `theorem` | [log_im](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-im.md) | 43 | `result-track:737a4983f56ab3427eda7e5f5632edeb1ec89f7eee8bbc7170391b159127a76f` |
| 4 | `theorem` | [neg_pi_lt_log_im](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/neg-pi-lt-log-im.md) | 45 | `result-track:7fac31d0661de89f11ad62f3aafc5bd99aac7b20124a1d9f920a6a067cac1ace` |
| 5 | `theorem` | [log_im_le_pi](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-im-le-pi.md) | 47 | `result-track:b048436fce833e0c06099927089eb6d8cddb7951e5fed9bc92860f08f7550623` |
| 6 | `theorem` | [exp_log](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/exp-log.md) | 49 | `result-track:085c7b830c96116cfd4c73879dee36a35c7665e8c1026ae499d781dee66f0002` |
| 7 | `theorem` | [range_exp](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/range-exp.md) | 56 | `result-track:c772764b48ebd3560972211f1ebd41fb965f68fb93d70f38fbaa60619440c8c1` |
| 8 | `theorem` | [log_exp](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-exp.md) | 62 | `result-track:12073abd1d0b43e4ffc0ac269282ce4d86eb3e8f62e847d0597047c8bd061f9a` |
| 9 | `theorem` | [log_exp_eq_re_add_toIocMod](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-exp-eq-re-add-toiocmod.md) | 66 | `result-track:d63cd3b8ce9595e8f2a21417fecbdfccc29f0a6f08d91175669cbbba6ffda2e2` |
| 10 | `theorem` | [log_exp_eq_sub_toIocDiv](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-exp-eq-sub-toiocdiv.md) | 70 | `result-track:e610234ad6640c617028ac504bf162daefd22a4b850e4119e6cd5d20525b7f42` |
| 11 | `theorem` | [exp_inj_of_neg_pi_lt_of_le_pi](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/exp-inj-of-neg-pi-lt-of-le-pi.md) | 75 | `result-track:75f43a89a1610bc480d222e2b6ad29ea16cb4f2ac639e58155bff9df69240d36` |
| 12 | `theorem` | [ofReal_log](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/ofreal-log.md) | 79 | `result-track:64809a6f7485af7ba683fe1fa3b823ed62715a2aa0322f5db4e7b82bb0e360d7` |
| 13 | `lemma` | [natCast_log](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/natcast-log.md) | 84 | `result-track:6ad93b6d78b6035a1eb5cd1f42bc24b5490fdbea36be1dd44ecd4dc3e0b2a1ef` |
| 14 | `lemma` | [ofNat_log](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/ofnat-log.md) | 87 | `result-track:6c03cb94b769e5905c971bb91d6b8749bd5e76a42f70ac41aafaa3f8e9e60210` |
| 15 | `theorem` | [log_ofReal_re](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-ofreal-re.md) | 91 | `result-track:a6157765e81649ec1ae947c922e33f6f4de46508ed178d357582dd3ca0343f1a` |
| 16 | `theorem` | [log_ofReal_mul](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-ofreal-mul.md) | 93 | `result-track:15f0e1808df0006b09f0ca4e013485419a8c65a474b139fe39d48a841e8e864f` |
| 17 | `theorem` | [log_mul_ofReal](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-mul-ofreal.md) | 99 | `result-track:c9cd771259345f5c1b3316e524c7ccd0d03a51482bb8a314a6aae222a9b963b0` |
| 18 | `lemma` | [log_mul_eq_add_log_iff](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-mul-eq-add-log-iff.md) | 102 | `result-track:03b53f70c698fb1adc2120a87808726bbfe391703dab598313e045dfae15f168` |
| 19 | `theorem` | [log_zero](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-zero.md) | 111 | `result-track:b6470aad7940357c4cfcbe398fc1d8fb8661de5f16a934cd839da975074a1591` |
| 20 | `theorem` | [log_one](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-one.md) | 114 | `result-track:1b4c915ebf766a8dad9e66d5aa59058858d70a09b9e5234685d34a2301d6afc7` |
| 21 | `lemma` | [log_div_self](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-div-self.md) | 117 | `result-track:c1c14a113d3c7c2cd83431db6f2936e85125e6d11fc89be17d8ad6d270d88fe7` |
| 22 | `theorem` | [log_neg_one](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-neg-one.md) | 119 | `result-track:6fed9f4b1304fa6ba7624911f0a819c317af2645bd691bce677fe29f3121c5f6` |
| 23 | `theorem` | [log_I](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-i.md) | 121 | `result-track:fbb2fb9d6dc6cef622bb859b982bb86b85f4511b6b814a98d5a2ee96e86de70a` |
| 24 | `theorem` | [log_neg_I](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-neg-i.md) | 123 | `result-track:0b8b622b9041ede9e0d785f487ab9d3595ef6d936313774909821c8a851bb786` |
| 25 | `theorem` | [log_conj_eq_ite](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-conj-eq-ite.md) | 125 | `result-track:79d15d1380791cc5738de9dd9763995ed317e36637feacce85f02ce67ea0b88e` |
| 26 | `theorem` | [log_conj](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-conj.md) | 131 | `result-track:d58cb14a9adae22f2439f2e07a2fe576db5a96a4160e35abdab1b79cb89c1202` |
| 27 | `theorem` | [log_inv_eq_ite](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-inv-eq-ite.md) | 134 | `result-track:09dfa7991c0e3f033318e4ca71afc126946f4251dca4b68fcd27508bedb4cdee` |
| 28 | `theorem` | [log_inv](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-inv.md) | 145 | `result-track:9cbcae2191d9391de3e9678e95eae75cbe1642474f03cb7a4abe62bf5df3d3fb` |
| 29 | `theorem` | [two_pi_I_ne_zero](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/two-pi-i-ne-zero.md) | 148 | `result-track:8fbda15094e8270a0a8d57c0f68cbc6db0458b2fb00ce16e9cfb3218cc7b3606` |
| 30 | `theorem` | [exp_eq_one_iff](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/exp-eq-one-iff.md) | 150 | `result-track:cbef2edf6412ab40819936be138570bc9ce35e4b84849a2ea6ab82222233baee` |
| 31 | `theorem` | [exp_eq_one_iff_of_im_nonneg](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/exp-eq-one-iff-of-im-nonneg.md) | 161 | `result-track:9d0f7eb423c4aa165133b972d7be179112234b5f38b8932b41045d928ce5b234` |
| 32 | `theorem` | [exp_two_pi_mul_I_mul_div_eq_one_iff](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/exp-two-pi-mul-i-mul-div-eq-one-iff.md) | 169 | `result-track:c62f07980d7ac46fa83937ed9a003fc5816607c1738508a485e2a8507d1798de` |
| 33 | `theorem` | [exp_eq_exp_iff_exp_sub_eq_one](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/exp-eq-exp-iff-exp-sub-eq-one.md) | 177 | `result-track:24c8789e143ae7136b35e55418ae8c1cf9b10a0aec7a497ee94210da04e10964` |
| 34 | `theorem` | [exp_eq_exp_iff_exists_int](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/exp-eq-exp-iff-exists-int.md) | 180 | `result-track:48a9d9e4410407bfdf8735715e5a6d919284e8dc55835b7d37dcaedab593e332` |
| 35 | `lemma` | [re_eq_re_of_cexp_eq_cexp](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/re-eq-re-of-cexp-eq-cexp.md) | 183 | `result-track:1f9296e53e19ecca395591cfdef381ed12eda41ea7fbe9aff59281654cc66791` |
| 36 | `theorem` | [log_exp_exists](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/log-exp-exists.md) | 188 | `result-track:9af389f197c5084d993e76a11bc93cda45145470e3318e60b5d631a577dd8841` |
| 37 | `theorem` | [countable_preimage_exp](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/countable-preimage-exp.md) | 194 | `result-track:4b2fe632a5841385e713ad5dcdc04bd792f56ad9e538894944031862783c9ebb` |
| 38 | `theorem` | [tendsto_log_nhdsWithin_im_neg_of_re_neg_of_im_zero](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/tendsto-log-nhdswithin-im-neg-of-re-neg-of-im-zero.md) | 210 | `result-track:82812026a49164b3d65e7b360000ead0d6e8faf7c8502aa7050c7dd2902a4250` |
| 39 | `theorem` | [continuousWithinAt_log_of_re_neg_of_im_zero](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/continuouswithinat-log-of-re-neg-of-im-zero.md) | 222 | `result-track:9a77e85258849dc6c3661c1fd4b30325270f885932d846775dd4296ce4b52a2b` |
| 40 | `theorem` | [tendsto_log_nhdsWithin_im_nonneg_of_re_neg_of_im_zero](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/tendsto-log-nhdswithin-im-nonneg-of-re-neg-of-im-zero.md) | 233 | `result-track:8ff1929fd25c0a32cfa5087c54bc49fa9e4fa31b6d82144065327055744c3f22` |
| 41 | `theorem` | [map_exp_comap_re_atBot](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/map-exp-comap-re-atbot.md) | 239 | `result-track:15e2ce2d1e13f893c520666bf79b1b2dd63adbc9607e0def8e8c1db1b5d35dd3` |
| 42 | `theorem` | [map_exp_comap_re_atTop](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/map-exp-comap-re-attop.md) | 243 | `result-track:14b08a8cebe4131767e7b123bf258f02356355f5374b5d82eac92d6dfbcc5514` |
| 43 | `theorem` | [continuousAt_clog](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/continuousat-clog.md) | 257 | `result-track:f819c17f96c126ec963ae591ebf979142f91a14f3599df55d6929d66355f8624` |
| 44 | `theorem` | [Log Namespaced Public](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/clog-source-line-266-occurrence-2.md) | 266 | `result-track:febcd42675a9ab64549f2d74d00f04fd934de62888a91ba383fe9b7277ec8bec` |
| 45 | `theorem` | [Log Namespaced Public](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/clog.md) | 273 | `result-track:2eb17a8eab775a61f99f1863a6a552ee41d504c409b493338246840ee831fad2` |
| 46 | `theorem` | [Log Namespaced Public](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/clog-source-line-278-occurrence-2.md) | 278 | `result-track:fa98af6c1392c259ee8cdebcd6536f2345dfb2839c3fba587374c69269ca3b10` |
| 47 | `theorem` | [Log Namespaced Public](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/clog-source-line-284-occurrence-2.md) | 284 | `result-track:79c49216a4656e88151450a669d12ac43244e01da043d86af3b8c557e46c3761` |
| 48 | `theorem` | [Log Namespaced Public](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/clog-source-line-289-occurrence-2.md) | 289 | `result-track:ba723f9bf1f117718deee06645923e95d818425951807e7afeae4715e77aca1c` |
| 49 | `def` | [expOpenPartialHomeomorph](../../../../SpecialFunctions/LogNamespacedPublic.lean/declarations/expopenpartialhomeomorph.md) | 305 | `declaration-track:ba7caabae289e359bd07c880f1aad8c33ee14e6741c6ffb674e1ab48ede62750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c764a05b26446765205a2d9b70b73d1f4aa35a355ab9df2835f0116bdb820f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Log/Variantaf3309c69605fb9c19d2838c6d26ae91f73963a27dffe2d0a1c0e38b1737b448.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Different Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3de3057323522e4a6bd480e44dd388fe06b7f2c5",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DifferentPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DifferentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3de3057323522e4a6bd480e44dd388fe06b7f2c5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean.json)

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
| 1 | `def` | [Submodule.traceDual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/submodule-tracedual.md) | 57 | `declaration-track:6c63d55b6d18edfe66c7344137034ce9c6370882a88105ececfe489074661b78` |
| 2 | `lemma` | [mem_traceDual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/mem-tracedual.md) | 69 | `result-track:c9de66d2366d37fa1528532547869baa4d59b6b97fa27276cde7e8c620a54646` |
| 3 | `lemma` | [le_traceDual_iff_map_le_one](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/le-tracedual-iff-map-le-one.md) | 73 | `result-track:2cffcb5ae7bb78327f6c6e079a3bb07e7d2dab1b0fc90ed1d6b1852bfa3318ed` |
| 4 | `lemma` | [le_traceDual_mul_iff](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/le-tracedual-mul-iff.md) | 79 | `result-track:758ddf9a3fe88f64bbb566e8f8e8c8295cc630ae3ffba81be48340a357501b15` |
| 5 | `lemma` | [le_traceDual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/le-tracedual.md) | 83 | `result-track:5289785b1d8d9267bd4df39a95d5c5e594d0127ffbb946e7e6a40014e1895510` |
| 6 | `lemma` | [le_traceDual_comm](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/le-tracedual-comm.md) | 87 | `result-track:d6d57d3676c260ed2a859307cdc7364df39642acaaf9a308d9574990a5f8558c` |
| 7 | `lemma` | [le_traceDual_traceDual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/le-tracedual-tracedual.md) | 90 | `result-track:23b3027ec988b1cd5a5c8a87b3aa41de5dea4e53bcbe439c537bb9c6598cf741` |
| 8 | `lemma` | [restrictScalars_traceDual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/restrictscalars-tracedual.md) | 94 | `result-track:08629828e1150b4894266873581cedae96036de596c5444aa295a216d7a8c6fc` |
| 9 | `theorem` | [traceDual_span_of_basis](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/tracedual-span-of-basis.md) | 102 | `result-track:24a4c4753f333342eebb7e66a09028fbd1fadbf4fa6d9cb22ac46bc39b5b058f` |
| 10 | `lemma` | [traceDual_bot](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/tracedual-bot.md) | 110 | `result-track:046ea08399fe0509c5ef213d1e72213091a217316fecc556960116081817ea0c` |
| 11 | `lemma` | [traceDual_top'](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/tracedual-top.md) | 114 | `result-track:35fa39bcffb2901597e64a0113ccc6fb3d572054be64ac479f1ea82cba86586c` |
| 12 | `lemma` | [traceDual_top](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/tracedual-top-source-edition-2.md) | 131 | `result-track:9804b382e6682be261c7f3f5c9d929be2f537371e3111d80c2e6da4125c567cc` |
| 13 | `lemma` | [map_equiv_traceDual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/map-equiv-tracedual.md) | 146 | `result-track:e851dc9fcb8ba4e543e803d90739764736cd6eb2c3f61ae623fdce5b2653bbd5` |
| 14 | `lemma` | [Submodule.mem_traceDual_iff_isIntegral](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/submodule-mem-tracedual-iff-isintegral.md) | 170 | `result-track:31b915efde060afc8e02d2ebfd3f26122149721d15098a52bde21dde74d45206` |
| 15 | `lemma` | [Submodule.one_le_traceDual_one](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/submodule-one-le-tracedual-one.md) | 176 | `result-track:14f058c6a5bcb49f4b4164832f9e22211668a55189d1ecfac339e475563b038b` |
| 16 | `lemma` | [isIntegral_discr_mul_of_mem_traceDual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/isintegral-discr-mul-of-mem-tracedual.md) | 190 | `result-track:e90da7e3af1b1d0d673662fa14e44006bbba07f3c9dcea8f8c18910dbfd7fa36` |
| 17 | `def` | [dual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual.md) | 229 | `declaration-track:ab40252ad24455b7a0e20fe9184d01cfafa131bb58711e46a1a93aafed2c7c9a` |
| 18 | `lemma` | [coe_dual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/coe-dual.md) | 265 | `result-track:8c5a15c659c5fc775de3240bced62cca259bd7cbc6c0231765f40dfd6b966f71` |
| 19 | `lemma` | [coe_dual_one](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/coe-dual-one.md) | 271 | `result-track:ecb0bcd3754fb53fb8cd8403b447508ddf899cb5728bb495cef186747f9ed6e1` |
| 20 | `lemma` | [dual_zero](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-zero.md) | 278 | `result-track:d991a702a322c0aea87e52203fa81e3193c9d1cf733f5dbf4e0a793df8fbd52d` |
| 21 | `lemma` | [mem_dual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/mem-dual.md) | 284 | `result-track:d2bd2b95d78b5313d3464f23a2765a85a4f3b9252ea61af081f502b7ddef41a7` |
| 22 | `lemma` | [dual_ne_zero](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-ne-zero.md) | 290 | `result-track:afd2fc1b0e1e8faaf0c079506612fb878b830aceeee2c5ce70b8eb14dc9544a4` |
| 23 | `lemma` | [dual_eq_zero_iff](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-eq-zero-iff.md) | 311 | `result-track:fc1b0a7efa3cca4749e010737b0a2c4f3dec134a820ab5d3c94bc75f726a2f8d` |
| 24 | `lemma` | [dual_ne_zero_iff](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-ne-zero-iff.md) | 315 | `result-track:a9917a9e326fc015e5fca835af8b341abe11e856436af127590f84b15e2d6956` |
| 25 | `lemma` | [le_dual_inv_aux](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/le-dual-inv-aux.md) | 321 | `result-track:50066a6378ae1c7ceb0ca00dc6a3f3ecf833c43e00a7d7f419a23b9c3823e3b1` |
| 26 | `lemma` | [one_le_dual_one](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/one-le-dual-one.md) | 333 | `result-track:88586b448ee26032cfb416534a0b875ac68531f26dd75c49741192a4d50abb3d` |
| 27 | `lemma` | [le_dual_iff](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/le-dual-iff.md) | 337 | `result-track:df14aa2e6770940fd56d3e3f568cd4034f95be3f8caed86d512cdc8ef55aacc7` |
| 28 | `lemma` | [inv_le_dual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/inv-le-dual.md) | 345 | `result-track:4933ea625827c79d54618c533da5b91ebfb655aadf2e6245f9719fa35919c973` |
| 29 | `lemma` | [dual_inv_le](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-inv-le.md) | 350 | `result-track:81f7767c02cf44769a66d5e7f539211e32c9c8a37e3ff5601d9c4a0edb06057a` |
| 30 | `lemma` | [dual_eq_mul_inv](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-eq-mul-inv.md) | 356 | `result-track:ee76924076025c9d8914bfc14e0e02448886d92e6ad2e43f7d86e4921e8088e6` |
| 31 | `lemma` | [dual_div_dual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-div-dual.md) | 365 | `result-track:ae2a6d126db2be388c2bbb064e15fed05c3e291573dfa4739e9ee34ca8f50ebb` |
| 32 | `lemma` | [dual_mul_self](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-mul-self.md) | 371 | `result-track:9e0dd6967a4be5f78c2ae03aaae398777952877a70f29ecd8ad8af56c46d71ab` |
| 33 | `lemma` | [self_mul_dual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/self-mul-dual.md) | 375 | `result-track:bd979b29c338c2e1628498c2a2a94542f097140f0fb688412d35c5deefeb4be9` |
| 34 | `lemma` | [dual_inv](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-inv.md) | 379 | `result-track:003e148adf2392a9329b9af0fc2c13cb7258a899e0bf8be04ca129ee1f144ff5` |
| 35 | `lemma` | [dual_dual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-dual.md) | 385 | `result-track:fb1098be837721ee16224bcc4e2512c6f9b8b5c248bfbb93dac6cdaa4e055baa` |
| 36 | `lemma` | [dual_le_dual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-le-dual.md) | 395 | `result-track:f4ec5f7e482c569bcd46e17fb8401cfd346afd0d751585b92f05a1d0420e9896` |
| 37 | `lemma` | [dual_involutive](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-involutive.md) | 402 | `result-track:d4af672b729cc1c8cf5b397b26c277bf6a9ec9ac021c693502ac10dec6fc8856` |
| 38 | `lemma` | [dual_injective](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-injective.md) | 405 | `result-track:7e7e8a178c742a9d1d08c21fd63b3a7224a060d2ebcffbbf90b86a6b260238bd` |
| 39 | `theorem` | [trace_mem_dual_one](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/trace-mem-dual-one.md) | 419 | `result-track:033b1dd5b92297d353ac89f263798af02b78db7194b54fe14e56c9a89abe34ce` |
| 40 | `theorem` | [smul_mem_dual_one](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/smul-mem-dual-one.md) | 429 | `result-track:57366164830193a1f113812d44e8a05f6c4b00865f18692c5761a8328c813a7d` |
| 41 | `theorem` | [dual_eq_dual_mul_dual](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dual-eq-dual-mul-dual.md) | 444 | `result-track:1928ced271732d9d43dd214b4b519f58097435ed4d9f324a38aa94cdc817e8f1` |
| 42 | `def` | [differentIdeal](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/differentideal.md) | 480 | `declaration-track:efe319e4f47884dd4a9b184c285d5940534ceb130cc4ab3210e29addef908eef` |
| 43 | `lemma` | [coeSubmodule_differentIdeal_fractionRing](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/coesubmodule-differentideal-fractionring.md) | 484 | `result-track:07a309fdd2c896f3173bc4952a78bd23f5f7a85452af774c127b70aff2c3e366` |
| 44 | `lemma` | [coeSubmodule_differentIdeal](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/coesubmodule-differentideal.md) | 503 | `result-track:0d01e3ae40cfd2d870852888c0dc3c283674c7f7f22b46c625497112d23417f4` |
| 45 | `lemma` | [coeIdeal_differentIdeal](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/coeideal-differentideal.md) | 532 | `result-track:2a68887bbff74b0fcbe144e2fbe0aee92a053398e8f519ead689eac59d471ed7` |
| 46 | `theorem` | [differentIdeal_ne_bot](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/differentideal-ne-bot.md) | 542 | `result-track:19505e337cc22cac4676bcb73d097a1e0291bea4bcee2d1e604505b863bc50d5` |
| 47 | `lemma` | [differentialIdeal_le_fractionalIdeal_iff](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/differentialideal-le-fractionalideal-iff.md) | 550 | `result-track:b5cac4b5202b9e021cd09bd6a04c7d464fd40b5963de9c1202f20a89291d92d0` |
| 48 | `lemma` | [differentialIdeal_le_iff](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/differentialideal-le-iff.md) | 559 | `result-track:667b37366477424caad66e64cc0183ab12813d65b1815a62f36b879d80326bd4` |
| 49 | `theorem` | [differentIdeal_eq_differentIdeal_mul_differentIdeal](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/differentideal-eq-differentideal-mul-differentideal.md) | 571 | `result-track:b262a10d5bf0ec1d1b6002b61ac934b59010a0a54140d57fec7313a6b3ab966f` |
| 50 | `lemma` | [traceForm_dualSubmodule_adjoin](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/traceform-dualsubmodule-adjoin.md) | 592 | `result-track:a3b3053b74b41abde3df686fb1b31f24a299782a6eb00774b9cc764eff2e503e` |
| 51 | `lemma` | [conductor_mul_differentIdeal](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/conductor-mul-differentideal.md) | 637 | `result-track:de3a97514a4c48c223c457a0c33f3580823a2088424f5bbf5f156b7a1ecad373` |
| 52 | `lemma` | [aeval_derivative_mem_differentIdeal](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/aeval-derivative-mem-differentideal.md) | 676 | `result-track:975a5db8c24ce4caeeb4070ed3df21ceec1c85f1a86580c1eb3b4c3fc7ead7ef` |
| 53 | `lemma` | [pow_sub_one_dvd_differentIdeal_aux](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/pow-sub-one-dvd-differentideal-aux.md) | 693 | `result-track:34f417c63e798f97597d2fce76c23e623f282ff296fb04bce37d0b94fe186c7a` |
| 54 | `lemma` | [pow_sub_one_dvd_differentIdeal](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/pow-sub-one-dvd-differentideal.md) | 742 | `result-track:1799692db3dec923e35f470bb6055b84dd0dbf398f02e6a3a46a82ab6bb6af21` |
| 55 | `theorem` | [not_dvd_differentIdeal_of_intTrace_not_mem](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/not-dvd-differentideal-of-inttrace-not-mem.md) | 752 | `result-track:8ecae54f5b80632d1ca275ea85ac9ab7502faeedd6097749c705750cb2b4153c` |
| 56 | `theorem` | [not_dvd_differentIdeal_of_isCoprime_of_isSeparable](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/not-dvd-differentideal-of-iscoprime-of-isseparable.md) | 812 | `result-track:56e2dffc0f26a0b4d8fd18e3365d510292fe2ecf522b73b91d8ff2261c948a55` |
| 57 | `theorem` | [not_dvd_differentIdeal_of_isCoprime](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/not-dvd-differentideal-of-iscoprime.md) | 838 | `result-track:6619b89c51865842080da97b61bbaf0863e9ac6f113050d361f9c65075ca3d14` |
| 58 | `lemma` | [dvd_differentIdeal_of_not_isSeparable](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dvd-differentideal-of-not-isseparable.md) | 851 | `result-track:08023b6e7096932342432210cc433c229bca7de30c71864056a5a2fe9cc31cb1` |
| 59 | `theorem` | [not_dvd_differentIdeal_iff](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/not-dvd-differentideal-iff.md) | 912 | `result-track:5e4f1beac4c20aa1796077c29fc8c6f22cc3e4e99ceea12bfdf5e7c0e1b811e4` |
| 60 | `theorem` | [dvd_differentIdeal_iff](../../../../CommutativeAlgebra/DifferentPublic.lean/declarations/dvd-differentideal-iff.md) | 958 | `result-track:3e63c489c04cf01605f18eda96e9b0525d2f72bb227218e35ea680532ab84621` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e59194dc03356b60c6100a385a065ac609a9e448d1bb1876310143223746e4f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

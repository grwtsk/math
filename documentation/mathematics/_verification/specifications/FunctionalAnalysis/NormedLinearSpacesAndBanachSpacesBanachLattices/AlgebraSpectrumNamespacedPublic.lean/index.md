# Verification target: Algebra Spectrum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7`.

Source path: `GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralRadius](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius.md) | 90 | `declaration-track:ff326ad7979a6ce8731abfbc4ec60ed23ec5e7676b7ea6996afc737d3eb14904` |
| 2 | `theorem` | [Unitization.spectralRadius_inr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/unitization-spectralradius-inr.md) | 98 | `result-track:635ea4bc8402c1bdfbb3f5fb83b99958a43a2ef5ab74ad63c4d89a58fae8c3c9` |
| 3 | `theorem` | [SpectralRadius.of_subsingleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-of-subsingleton.md) | 123 | `result-track:a0f36d3456ceab3437c90c8a048037f44f9d83fdcf9700f43de680586c437413` |
| 4 | `theorem` | [spectralRadius_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-zero.md) | 128 | `result-track:e513922fee634df553d41c462ea8dbb2a9f8b71a4376e325d12fe4399cc09451` |
| 5 | `lemma` | [Algebra Spectrum Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-eq-of-unital.md) | 137 | `result-track:e980d78c659c28ce27136fd8c63ba6b1d0b7031caccd6417bca94d068079d79f` |
| 6 | `theorem` | [spectralRadius_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-one.md) | 142 | `result-track:4468df2e9f717e38b80abce09a43557a401598b35a221a23e133255fcccff8f4` |
| 7 | `theorem` | [mem_resolventSet_of_spectralRadius_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/mem-resolventset-of-spectralradius-lt.md) | 146 | `result-track:2ca4d4e8d85d10db900736b93f9bc43924a02171a8ed034e3b3c5eedaa88cc5f` |
| 8 | `lemma` | [spectralRadius_pow_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-pow-le.md) | 152 | `result-track:d9ad3b6664bc2dbe9cac579cee46741cba5fe8b52f46a568713f9e548b5d25c6` |
| 9 | `lemma` | [spectralRadius_pow_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-pow-le-source-edition-2.md) | 159 | `result-track:f42a1fc720355bc5f37b87f43c72dbbfff8a016eec14b388aaa7a1b19c6c639c` |
| 10 | `theorem` | [isOpen_resolventSet](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/isopen-resolventset.md) | 173 | `result-track:899264e5363056dd95763613922e9d1d1ab4f2076db05e5e9636031c1e124108` |
| 11 | `theorem` | [isClosed](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/isclosed-source-edition-2.md) | 177 | `result-track:6a985c1193aeb86fc24e72d856970a5166d243b7c868eb83ccce1d2db28c0796` |
| 12 | `theorem` | [mem_resolventSet_of_norm_lt_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/mem-resolventset-of-norm-lt-mul.md) | 180 | `result-track:db083f52a310a68df74536ef206a72abe19d4b9fafe6fd10e6d03e5e59bbdfa9` |
| 13 | `theorem` | [mem_resolventSet_of_norm_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/mem-resolventset-of-norm-lt.md) | 191 | `result-track:e672fff0be6ac450584eac518787430530bd762f80df44c361faf6d71c811f96` |
| 14 | `theorem` | [norm_le_norm_mul_of_mem](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/norm-le-norm-mul-of-mem.md) | 194 | `result-track:acd7cfce1a84a81fcca911502ab204301b3b0b5effdd209a4c20cfd979645b88` |
| 15 | `theorem` | [norm_le_norm_of_mem](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/norm-le-norm-of-mem-source-edition-2.md) | 197 | `result-track:33c22f703a80d277785973ebe5801dd1f6650c2ec5c48d3c91cb1c090a6f0c76` |
| 16 | `theorem` | [subset_closedBall_norm_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/subset-closedball-norm-mul.md) | 200 | `result-track:d661dbfe068038b0c79d6fc816761d5dcfd5b6fdbdb0b6008b7ca8444c387a6c` |
| 17 | `theorem` | [subset_closedBall_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/subset-closedball-norm.md) | 203 | `result-track:5ea9ee74762be5184afd415accd2757deda91ec69bf92f0de95a5ced071a6a12` |
| 18 | `theorem` | [isBounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/isbounded-source-edition-2.md) | 207 | `result-track:1bca5daeb76d0d621d4f9f9747d4c8d4851bf3f1d69b72a0d0ff3f172dbcc413` |
| 19 | `theorem` | [isCompact](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/iscompact-source-edition-2.md) | 211 | `result-track:a9f5d7680ff3f3461d943afc3296aa4630af1ab2f0fd894560bbba218dc209c3` |
| 20 | `instance` | [instCompactSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/instcompactspace.md) | 216 | `declaration-track:8184e69bfcf1968e093e7787ce1dca74003d7fae2e00fb1a91eca60666dde982` |
| 21 | `instance` | [instCompactSpaceNNReal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/instcompactspacennreal.md) | 219 | `declaration-track:b06a4886aa057591578ac161f38f4857e53d3a607091a170a76618895b6d2bd0` |
| 22 | `theorem` | [isCompact_nnreal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/iscompact-nnreal.md) | 226 | `result-track:486e36d00c24b4c9b480f7256a71ee8e2e3839aa8eb4e7e5f0d0b752cb3bf599` |
| 23 | `theorem` | [exists_nnnorm_eq_spectralRadius_of_nonempty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/exists-nnnorm-eq-spectralradius-of-nonempty.md) | 233 | `result-track:b555d4c49a9f21589ea7e360636e4dc677017fbdd6b840fe651b5ebfc460a3e2` |
| 24 | `theorem` | [spectralRadius_lt_of_forall_lt_of_nonempty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-lt-of-forall-lt-of-nonempty.md) | 240 | `result-track:c1ce8b05e44f23e34a32458185d7c4fa1a2c206a7716e0d055b2345e6f79b508` |
| 25 | `theorem` | [le_nnnorm_of_mem](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/le-nnnorm-of-mem.md) | 255 | `result-track:192fa30e5e33b59d3b6cc176a7abecb7fa3d6d005da9a6117ec154e14218754a` |
| 26 | `theorem` | [coe_le_norm_of_mem](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/coe-le-norm-of-mem.md) | 260 | `result-track:2660b2e3c7b1d8dcce85fd3c65ec0f4df80bcd0faaae0bab4334fc36af878da5` |
| 27 | `theorem` | [spectralRadius_le_pow_nnnorm_pow_one_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-le-pow-nnnorm-pow-one-div.md) | 274 | `result-track:2664650e9c7270b0b933060e0b8e4bc6f1544f0f4993b5b274fd3321fe7ca385` |
| 28 | `theorem` | [spectralRadius_le_liminf_pow_nnnorm_pow_one_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-le-liminf-pow-nnnorm-pow-one-div.md) | 295 | `result-track:caea615632a6abb5258fcb832de6c06b2ae4e6f73210425d0a7e959579778b2d` |
| 29 | `theorem` | [eventually_isUnit_resolvent](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/eventually-isunit-resolvent.md) | 328 | `result-track:959e81ef6c5f4295e95a2818db1fef5e382b2bb225c64bff5be9b8495422126c` |
| 30 | `theorem` | [resolvent_isBigO_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/resolvent-isbigo-inv.md) | 332 | `result-track:c4a2378522ad2369d111b7537613839a62c564b3c76655ed4289b8fa04862b82` |
| 31 | `theorem` | [resolvent_tendsto_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/resolvent-tendsto-cobounded.md) | 345 | `result-track:605400b64eb9890f33d57d1dbad56eaa465a3617a914cf1758278e835a137c0c` |
| 32 | `theorem` | [hasFPowerSeriesOnBall_inverse_one_sub_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/hasfpowerseriesonball-inverse-one-sub-smul.md) | 362 | `result-track:1d1283b35213173189a20041d20b48a5b2496f84303edbdfc09195a20f19c65b` |
| 33 | `theorem` | [isUnit_one_sub_smul_of_lt_inv_radius](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/isunit-one-sub-smul-of-lt-inv-radius.md) | 388 | `result-track:98e9f48150760b63b018441949e22bf2df19a583eabb4297e1be2a3673b67bb9` |
| 34 | `theorem` | [exp_mem_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/exp-mem-exp.md) | 408 | `result-track:60eaae5e18be5de7a42faf268ea2a2b76cf24d989dcdea7b7c67408d13bb20f1` |
| 35 | `lemma` | [quasispectrum_eq_spectrum_toLp_inr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/quasispectrum-eq-spectrum-tolp-inr.md) | 446 | `result-track:a7f135241431f982db29a93657d971f1415141518368fc899300074276e351f3` |
| 36 | `theorem` | [isCompact](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/iscompact.md) | 456 | `result-track:888a625e02b76064f25fab5aac1e2e6b4a424c3426050ed05cb9610b6f573024` |
| 37 | `instance` | [instCompactSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/instcompactspace-source-edition-2.md) | 462 | `declaration-track:ccd37451ce89bf1ac32b7914c8ea3855dc736835b7b154a1c7cb6f26fcf914db` |
| 38 | `instance` | [instCompactSpaceNNReal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/instcompactspacennreal-source-edition-2.md) | 466 | `declaration-track:c4506b11856cd9cffbb06cb753e4ae57bd80bdb7b06d2394955fcefd9d4b5bbe` |
| 39 | `theorem` | [isCompact_nnreal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/iscompact-nnreal-source-edition-2.md) | 474 | `result-track:a8df00a1d9e85ce752c57b03f18e647f78104437a288c48865f2c53d9658e2ec` |
| 40 | `theorem` | [isClosed](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/isclosed.md) | 482 | `result-track:3ea327bdbbd831474760f776f7d3416e98822a1cd21180c02dbaddfd6f18ab1e` |
| 41 | `theorem` | [isBounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/isbounded.md) | 486 | `result-track:156d05822e0e119cb3220b89ec3abc3b52d00339ebbe503ae53c5f5d979a1986` |
| 42 | `theorem` | [norm_le_norm_of_mem](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/norm-le-norm-of-mem.md) | 490 | `result-track:3082c22fc05b20ccc2fdfcc5fa157e5f61fb4b13c996495b276334bd4bedf435` |
| 43 | `theorem` | [spectralRadius_le_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-le-nnnorm.md) | 499 | `result-track:a687ac9f0d6b1f37353cd0016f35ef199e5d14e9014e5515b38da437d85d09f4` |
| 44 | `theorem` | [exists_nnnorm_quasispectrum_eq_spectralRadius](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/exists-nnnorm-quasispectrum-eq-spectralradius.md) | 505 | `result-track:64a2b81d0770eb6b5db7cb900d82fb58eae9a85ba48e5a2e319a6e26249cc212` |
| 45 | `theorem` | [spectralRadius_lt_of_forall_quasispectrum_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-lt-of-forall-quasispectrum-lt.md) | 511 | `result-track:7d38ee154fbcb8ab474161e6b4b42bd67dfbe14cebb95f426c2303eaca41336e` |
| 46 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/instance.md) | 526 | `declaration-track:68d29d828798ff881dd0d7bc43988b37849f4c72426992b8a0696a9f1362be92` |
| 47 | `def` | [toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/tocontinuouslinearmap.md) | 535 | `declaration-track:f3076d42691113143971e0e109266776c8c82fe00a8d2431ff7ff1353c50ecef` |
| 48 | `theorem` | [coe_toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/coe-tocontinuouslinearmap.md) | 539 | `result-track:4daa295ce6a33cdf20bb7f3a1704cac95198b0568ab4c33ad0a5a773a78842cb` |
| 49 | `theorem` | [norm_apply_le_self_mul_norm_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/norm-apply-le-self-mul-norm-one.md) | 542 | `result-track:eb5fa27d6415d95d122b3e637c6fcd92eb8a2747c04dd11f6ff2458e107d6872` |
| 50 | `theorem` | [norm_apply_le_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/norm-apply-le-self.md) | 546 | `result-track:88338f4314a55ca9a902dd27fa06ed6c8bee701b4cf72131e2f69d2ec62509e6` |
| 51 | `theorem` | [toContinuousLinearMap_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/tocontinuouslinearmap-norm.md) | 559 | `result-track:060d45055e7757ddcb8f7f44fb53a87b837bd9d2430d3b30317a81608285e8bd` |
| 52 | `def` | [equivAlgHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/equivalghom.md) | 577 | `declaration-track:b01bd734404ad8e7f1b7a9cc9e9b2c2236a6db773a38c9e500f794c1d0cecaf8` |
| 53 | `theorem` | [equivAlgHom_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/equivalghom-coe.md) | 584 | `result-track:d8162a99bcfe3bcf02ec75ce93fff7457d14aa033555dfb5c50545a90f3a8659` |
| 54 | `theorem` | [equivAlgHom_symm_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/equivalghom-symm-coe.md) | 588 | `result-track:d4e48574b8dff69d5729a9241cc918576ef90009341f45909b25ee42d2f9f94a` |
| 55 | `lemma` | [Algebra Spectrum Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/isunit-of-isunit-val-of-eventually.md) | 616 | `result-track:cae956b26592aa4174dadf385d88edaf8ca38b39ba6cd118171f4b05e8e4cfb7` |
| 56 | `lemma` | [Algebra Spectrum Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/frontier-spectrum.md) | 637 | `result-track:89e73944bba3a20ee261ad29e23704b6bd21914583518e9eb1d82810f1dcc17d` |
| 57 | `lemma` | [Subalgebra.frontier_subset_frontier](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/subalgebra-frontier-subset-frontier.md) | 658 | `result-track:31b0b0ce4155b5152f37808f3051d28e97d149eccad28679f0615b6c56b93b00` |
| 58 | `lemma` | [Subalgebra.spectrum_sUnion_connectedComponentIn](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/subalgebra-spectrum-sunion-connectedcomponentin.md) | 673 | `result-track:86d9296f7b7fd23408e25fdcbbb982794bcb9955f4690a1587ef760e2d3cfd39` |
| 59 | `lemma` | [Subalgebra.spectrum_isBounded_connectedComponentIn](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/subalgebra-spectrum-isbounded-connectedcomponentin.md) | 694 | `result-track:4480aca08e57a40d503e232184aa2a0282a0f60b7e486172f7e50188ae52d328` |
| 60 | `lemma` | [Subalgebra.spectrum_eq_of_isPreconnected_compl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/subalgebra-spectrum-eq-of-ispreconnected-compl.md) | 710 | `result-track:693eb7827c40994e2a83dd853095146ed3ac6ef0472a81a7e5bad51487f754f1` |
| 61 | `lemma` | [QuasispectrumRestricts.spectralRadius_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/quasispectrumrestricts-spectralradius-eq.md) | 726 | `result-track:3029d9b32b390f78ba0223a7338de27d9becfcfe4139a32ce46882e8362e6150` |
| 62 | `lemma` | [spectralRadius_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-eq.md) | 747 | `result-track:a9ad478c1181c85a07f3797d673fd2b046d24bd5fd07379731bd3c31084b39c5` |
| 63 | `lemma` | [nnreal_iff_spectralRadius_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/nnreal-iff-spectralradius-le.md) | 755 | `result-track:5da58bd3d6878c828766c8fca8b4aaec2d547cf376f63babcfa93da455b23736` |
| 64 | `lemma` | [Algebra Spectrum Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-mem-spectrum.md) | 778 | `result-track:94a27281f7dbea44ab6169cafc7ec2e900dad2af9941ad59734fe1d0f47dcde2` |
| 65 | `lemma` | [Algebra Spectrum Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-mem-spectrum-source-line-788-occurrence-2.md) | 788 | `result-track:ba9be978b38d39ad1a91a22efc2ba627af53002bee4b5e87df6a8191912406aa` |
| 66 | `lemma` | [Algebra Spectrum Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/spectralradius-mem-spectrum-or.md) | 794 | `result-track:7ecec4841e45342d6113921aa5198b85e53afea0a2e7b2864f4c3c339681ab4e` |
| 67 | `lemma` | [compactSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/compactspace.md) | 808 | `result-track:f0df01061aa8bb61c76ef9096806194324e7961ffb71978af7c622c776b3cb3e` |
| 68 | `lemma` | [upperHemicontinuous_spectrum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/upperhemicontinuous-spectrum.md) | 824 | `result-track:226d206ff02cf8c2b2a2ad84f5fc93372a7ee84ca00f896646c7f2a55ac6b357` |
| 69 | `theorem` | [upperHemicontinuous_spectrum_nnreal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/upperhemicontinuous-spectrum-nnreal.md) | 849 | `result-track:970445b85b5d4acf8c8476dede5f8fe46afe2dd58c2adab121bc9c194677dc97` |
| 70 | `theorem` | [upperHemicontinuous_quasispectrum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/upperhemicontinuous-quasispectrum.md) | 856 | `result-track:60e0d3fd14ece0182879727aa299f9a2736e30eaa0addf965e5a6e495418e800` |
| 71 | `theorem` | [upperHemicontinuous_quasispectrum_nnreal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraSpectrumNamespacedPublic.lean/declarations/upperhemicontinuous-quasispectrum-nnreal.md) | 868 | `result-track:acf53bc1140d48fd1976a7ac708601d7ab2e0271f0244b0561ecd331222e45b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d3b54dc62203bd6804bff6edb04f0bcb4ef88fc6d1762786840a3c25733dcb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

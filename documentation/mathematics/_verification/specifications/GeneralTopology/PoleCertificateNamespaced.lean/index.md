# Verification target: Pole Certificate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de06cc4b6a444d170fe5a20fa003acb92df90238",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PoleCertificateNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/PoleCertificateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de06cc4b6a444d170fe5a20fa003acb92df90238`.

Source path: `GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Continuation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [J_lower_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/j-lower-cleared-tendsto.md) | 51 | `result-track:1e497df08ea376d2397ba0a78a881230e8109ac1c857022306428d629011600b` |
| 2 | `lemma` | [polynomialKernel_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/polynomialkernel-cleared-tendsto.md) | 76 | `result-track:796c9e558df89149284d4fd5b7fba76584f55554c422ad6d7657461badda93c9` |
| 3 | `lemma` | [positivePolynomial_coeff_eight](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/positivepolynomial-coeff-eight.md) | 107 | `result-track:de3ee38fcd9658175626be70b2b4afb88620e984a672d4182555b2d01be84e63` |
| 4 | `lemma` | [mixedPolynomial_neg](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/mixedpolynomial-neg.md) | 112 | `result-track:b10674a8c7403b1cb32c0252c58c21d832e0e1accc34f696fedb028182d24cb6` |
| 5 | `theorem` | [sourceKernel_neg](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/sourcekernel-neg.md) | 119 | `result-track:ce9fa5e7d5063b3f246651c978c6602fd3e23ae132f0c2f29ef7fadca2cc8f61` |
| 6 | `theorem` | [sourceKernel_local](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/sourcekernel-local.md) | 127 | `result-track:7f8b033074eddead36c3971e3fe986f0064808961baeacd91ee27bcd2a8b4176` |
| 7 | `theorem` | [sourceKernel_local_remainder_analytic](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/sourcekernel-local-remainder-analytic.md) | 140 | `result-track:b97bd29af15074877a939a99b14d72bf46da05445f60b71f92663ec6cf6dbee7` |
| 8 | `theorem` | [ninth_order_limit_add_continuous](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/ninth-order-limit-add-continuous.md) | 173 | `result-track:dedc6bea3fcea446ac39db1e1188e9bdfe1e99ea278105f53facd7f45ba2251b` |
| 9 | `theorem` | [sourceKernel_local_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/sourcekernel-local-cleared-tendsto.md) | 197 | `result-track:fad083aa38a25c208649c09b9fb7025e1d5f21ae01b4c65d7a322d46c3b2e90a` |
| 10 | `theorem` | [reflected_pair_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/reflected-pair-cleared-tendsto.md) | 228 | `result-track:7507348974246636440534d9d0eabfba6630da8109e8d3fbebecdd08e107274e` |
| 11 | `def` | [pointPairPrincipalCoefficient](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/pointpairprincipalcoefficient.md) | 249 | `declaration-track:a6cba607484cd9bf2d9d9ae238955b90715e258d007fe71117e32d48a717ed23` |
| 12 | `def` | [pointPairKernel](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/pointpairkernel.md) | 254 | `declaration-track:dd657cfa5965e6e4f2ec2af813fea749d873c6439c6d5642ec8826b47e011894` |
| 13 | `theorem` | [point_pair_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/point-pair-cleared-tendsto.md) | 261 | `result-track:cd9f764e25ffdeda3a1e4ebcb29be0a494bd26f5b60adcd1ac46e926319c19f3` |
| 14 | `theorem` | [point_pair_principal_coefficient_ne_zero](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/point-pair-principal-coefficient-ne-zero.md) | 277 | `result-track:0bd965ec3de90fbf973b106421fb6bde83f40558f71bdcb46b8cca908ace0667` |
| 15 | `theorem` | [not_continuousAt_of_ninth_order_limit](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/not-continuousat-of-ninth-order-limit.md) | 294 | `result-track:661ed551a81255fab46152e9db16d63660d3227732b3e4aec738ba0a62e386b9` |
| 16 | `theorem` | [eventually_scaled_candidate_eq](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/eventually-scaled-candidate-eq.md) | 321 | `result-track:76cafae46a61edeaeb632708737659e0609dd498979005e4f3cb55777a632fa3` |
| 17 | `theorem` | [eventually_candidate_eq](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/eventually-candidate-eq.md) | 338 | `result-track:f38399eea409a326c665f04d6e297621670489f9ace97b8cd2d8110495a65292` |
| 18 | `theorem` | [exists_isolating_radius](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/exists-isolating-radius.md) | 365 | `result-track:7817382dc379e7c40f13adb5c2c2a8d9da771ab732e9dc7145bbefbe712140aa` |
| 19 | `theorem` | [punctured_closedBall_subset_domain](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/punctured-closedball-subset-domain.md) | 389 | `result-track:fd3c6e0b43b68caa1daa9aad8deed1b74d5b9e7288797a816956dba0667789f8` |
| 20 | `theorem` | [sphere_subset_domain](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/sphere-subset-domain.md) | 400 | `result-track:c0f0e11d8b981e5c937569e9a80fcac3b5da951d99a1e932a105e24672d60814` |
| 21 | `theorem` | [noncolliding_kernel_analytic](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/noncolliding-kernel-analytic.md) | 421 | `result-track:8a1bd25bfc7575a7486007ef0cdb39e68515b2b9a2588e80c8a66856e0a59d06` |
| 22 | `def` | [collisionSet](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/collisionset.md) | 453 | `declaration-track:1961fca5ec9d08746eb28ea9a90abbfaf0c33c6581e93aa62f0373e6eed92d87` |
| 23 | `theorem` | [shiftedValue_eq_iff](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/shiftedvalue-eq-iff.md) | 458 | `result-track:d85084b2669f2efad8240235a0e2b16675f3fbf3281908013c9b5e5c6daaa614` |
| 24 | `theorem` | [shiftedValue_eq_neg_iff](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/shiftedvalue-eq-neg-iff.md) | 469 | `result-track:5762595222944ee9f0c41d3c3a220c00d365688861e9b3b601e3e4d9c1019f07` |
| 25 | `theorem` | [collisionSet_eq_point_fibers](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/collisionset-eq-point-fibers.md) | 483 | `result-track:cc3710771ad086b6b32a12b263769278f61cd044a8a7a1dfbbdb3cb28c7a2aaa` |
| 26 | `theorem` | [collisionSet_finite](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/collisionset-finite.md) | 493 | `result-track:cd69161a7c14daf341be68e890676bbb734e484f625b527e6b003ef44e610c32` |
| 27 | `instance` | [collisionSetFintype](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/collisionsetfintype.md) | 503 | `declaration-track:364b37f54af438b46967f007f63ae4eac388437bf1b706aa43ed4d35204634bb` |
| 28 | `theorem` | [point_ne_reflect](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/point-ne-reflect.md) | 508 | `result-track:c80530552ffe50666bf584aa6f44b174063fe267248dd7c588511509475cf512` |
| 29 | `theorem` | [point_fibers_disjoint](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/point-fibers-disjoint.md) | 518 | `result-track:a8acb385fdd85f5b81215947eec7b5e83af2917456cd418f9c71c2dfc030115b` |
| 30 | `theorem` | [point_fiber_tsum](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/point-fiber-tsum.md) | 530 | `result-track:8dce6dd74ba5ac40393991be12abf9a9f2f8ead015021ab4d42869c6d938ef6d` |
| 31 | `theorem` | [collision_tsum_eq](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/collision-tsum-eq.md) | 556 | `result-track:8b4afb578e88d79c2f000773071ee08d7abca181bd3287a7ee4763f75ad1e37e` |
| 32 | `theorem` | [collision_sum_eq_pointPairKernel](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/collision-sum-eq-pointpairkernel.md) | 609 | `result-track:179e5963a82967da1efaa5308116ab1cbbc308c643b5fba16e8321d0a79f6bee` |
| 33 | `theorem` | [tsum_eq_pointPairKernel_add_remainder](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/tsum-eq-pointpairkernel-add-remainder.md) | 630 | `result-track:97d353f7ca0660c6b8a7d34c619f5bfbad087bd95c87b6a6eb08126d61f587f3` |
| 34 | `abbrev` | [RemainingOccurrence](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/remainingoccurrence.md) | 675 | `declaration-track:ff0fcdbeb47b1e10f44a5717cdb86b1d1ebfdcf91eadbca19fe1c718b2ebb5ae` |
| 35 | `def` | [remainder](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/remainder.md) | 678 | `declaration-track:2a1462edc4230f6a597b3bea9eed3eb4efcc13a81234601727217cb4793fb0c1` |
| 36 | `lemma` | [boundary_norms_summable](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/boundary-norms-summable.md) | 682 | `result-track:9b6aea565afcc141d213608050d929e6c4e50e80518eb7f0e8e1e56b8c2bec44` |
| 37 | `lemma` | [closedDisk_norm_le_boundary](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/closeddisk-norm-le-boundary.md) | 695 | `result-track:73b64cfc3d3289cc63b8cbc6a28cb0de6c869654410995794517c6ec12044a05` |
| 38 | `lemma` | [closedDisk_norms_summable](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/closeddisk-norms-summable.md) | 728 | `result-track:7a8e9da062b09c6cdbacc39752833516407538bb686b5956abf6d67317d40388` |
| 39 | `lemma` | [remainder_hasSumUniformlyOn_closedDisk](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/remainder-hassumuniformlyon-closeddisk.md) | 752 | `result-track:68bf70ce68ce1f93f369ef432b596401f7f595c430cebf92daae353f857b38eb` |
| 40 | `lemma` | [remainder_analyticOn_ball](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/remainder-analyticon-ball.md) | 773 | `result-track:e6aefd53b8689cd73cd645f68cd1ba7d27329264111418d34a254a4c04db2f95` |
| 41 | `lemma` | [remaining_kernel_analytic_on_isolating_disk](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/remaining-kernel-analytic-on-isolating-disk.md) | 799 | `result-track:1962bd9cef62e4928626efdcb94758545566f8bd1fc80e148e0ed4f6f5339c6b` |
| 42 | `lemma` | [exists_remainder_disk](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/exists-remainder-disk.md) | 835 | `result-track:060be4243d78ffebaaa4ca5f2b52e10766e9dec9e78797bdea8c0840f6c27e80` |
| 43 | `lemma` | [remainder_analytic_at](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/remainder-analytic-at.md) | 872 | `result-track:614b6309e70df1c7c89644a6c938d1fc4baeb134a7cd58dd0187a08c5e5ba8a9` |
| 44 | `theorem` | [eventually_center_add_mem_domain](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/eventually-center-add-mem-domain.md) | 883 | `result-track:77786dee49b16df09c696dd1ff427f1927e47fd2434d3c528963ca68f20888bd` |
| 45 | `theorem` | [continuedTransform_summable](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/continuedtransform-summable.md) | 910 | `result-track:01580a696b89db1222ecfe9850e16359c93ce84b7a7397ce0a728f61baae9cb0` |
| 46 | `theorem` | [continuedTransform_punctured_differentiable](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/continuedtransform-punctured-differentiable.md) | 917 | `result-track:583c4ce7754d113d77fab821ac7cdcf4155d708d776122085bd261bcb6a2e3b4` |
| 47 | `theorem` | [continuedTransform_eventually_split](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/continuedtransform-eventually-split.md) | 928 | `result-track:ec122a5e3b3cafaff99207b5563c64d303ca0d92c6224d6408d26beb0a3c29b0` |
| 48 | `theorem` | [continuedTransform_cleared_tendsto](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/continuedtransform-cleared-tendsto.md) | 957 | `result-track:1dfa1e668248137b171cbd259b81e2984aecc9be6b37e514f9d1aa358151bb13` |
| 49 | `def` | [patchedNumerator](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/patchednumerator.md) | 994 | `declaration-track:37f78475550a1cdc11b0fd3077b223ba606956394e51b72667647643995e9cf5` |
| 50 | `theorem` | [patchedNumerator_zero](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/patchednumerator-zero.md) | 998 | `result-track:da0d24801252331e11c4c13f46ac370a14fd97d0f549c98c7e5b93950eb9e651` |
| 51 | `theorem` | [patchedNumerator_of_ne](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/patchednumerator-of-ne.md) | 1003 | `result-track:e7fdb052fd8e982d74dc94ab9d70ddde50ae47a76503b910b7e9775a4b4f0b14` |
| 52 | `theorem` | [patchedNumerator_analytic](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/patchednumerator-analytic.md) | 1010 | `result-track:f47464019690194f3ae69dc671b2da7012db1cd77771a01f95f3d63a6f6d02e3` |
| 53 | `theorem` | [meromorphicAt_of_patched_numerator](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/meromorphicat-of-patched-numerator.md) | 1034 | `result-track:fccd07eecec21155462c12e49cd5c22a6ecbc98a1374431cdc9d8a13edd94052` |
| 54 | `theorem` | [meromorphicOrderAt_of_patched_numerator](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/meromorphicorderat-of-patched-numerator.md) | 1049 | `result-track:8b0a166ae18221fb7e0a3e97cf9d98991f246a3256cdf5c47669902b31d2a58d` |
| 55 | `theorem` | [exact_pole_certificate](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/exact-pole-certificate.md) | 1066 | `result-track:b4c2fae58e33718a2c6ed484d980e0041f220d7f438434128f1c5416340a5744` |
| 56 | `def` | [sourcePatchedNumerator](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/sourcepatchednumerator.md) | 1106 | `declaration-track:533e515075d0627e4c1d00e7984188aafd4d07bd40cbdcbc23c6cffb08e76189` |
| 57 | `theorem` | [source_exact_ninth_order_pole](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/source-exact-ninth-order-pole.md) | 1116 | `result-track:84338a50b76dbf16a68876f85d2a7b9aeb7ed25b8ba87635e2eb39da8f9505bc` |
| 58 | `def` | [PoleCertificateCheckpoint](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/polecertificatecheckpoint.md) | 1172 | `declaration-track:df35ee3e4e64c2fe03c73bf69f6af34584c1fb1fea4bface24f3cf5492a119f9` |
| 59 | `theorem` | [pole_certificate_checkpoint](../../../../GeneralTopology/PoleCertificateNamespaced.lean/declarations/pole-certificate-checkpoint.md) | 1184 | `result-track:111d57e75e988ce781a99c3bc5777c99983b01d73f9ccf1a13ff1d461e818c88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00e7af3f8a0befd10b7b0e06490c63f69440fd7ddc63df6dc81989981bf8e8b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Varianta4c289bde0a1012a1c1503c111dace4593cd8e4c7fad764c1ff32c14ffbc57e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

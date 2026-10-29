# Verification target: Spectrum Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3929fe9a220166f0cf1a134ce016c253851db68f",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant561f98a72f5a19a088c43f379f9267bb8ee3422496d52e66ba7c2ffebff67c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3929fe9a220166f0cf1a134ce016c253851db68f`.

Source path: `GRWTSK/Algebra/Basic/Variant561f98a72f5a19a088c43f379f9267bb8ee3422496d52e66ba7c2ffebff67c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant561f98a72f5a19a088c43f379f9267bb8ee3422496d52e66ba7c2ffebff67c0e.lean.json)

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
| 1 | `def` | [resolventSet](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/resolventset.md) | 72 | `declaration-track:70c0ec6411dbad7b9e4d7fc0e3e5d77e74aec9012f3f5a7262f9554e6d21747d` |
| 2 | `def` | [spectrum](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/spectrum.md) | 80 | `declaration-track:aa3955519d7ad85decbf6a812fe595b8f60501adfcd0bede3312953c313d6e36` |
| 3 | `def` | [resolvent](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/resolvent.md) | 88 | `declaration-track:dbcaf01fea545502b03f9156b0449f25340b764e5f64bd440c35f82239197be3` |
| 4 | `def` | [IsUnit.subInvSMul](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/isunit-subinvsmul.md) | 92 | `declaration-track:70aae18c36b1a37fc938cf8b3666237a83cc200ea7d38e92ab5550e96b974dbb` |
| 5 | `theorem` | [mem_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/mem-iff.md) | 111 | `result-track:f4cf876a345b9b4d1a6bc900619686518369f64fdabe05761056de79a3686847` |
| 6 | `theorem` | [resolvent_zero_of_mem_spectrum](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/resolvent-zero-of-mem-spectrum.md) | 115 | `result-track:d9a98a0c19da526e1fbd40e1f2a9897fc0ca866c337a10be4a75853d718b8ebd` |
| 7 | `theorem` | [mem_spectrum_iff_resolvent_zero](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/mem-spectrum-iff-resolvent-zero.md) | 118 | `result-track:b9b67d6ac0bf629139b79e606bfde4f2e6d78163bb3f9c84e6495dbb5a574437` |
| 8 | `theorem` | [notMem_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/notmem-iff.md) | 123 | `result-track:2e8aaf142dfd92e6a4848ac69d568f29cac0fedfc04a7c888bf34ab904030735` |
| 9 | `theorem` | [zero_mem_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/zero-mem-iff.md) | 128 | `result-track:35a2ceee1b8ce32cc99b0f5e7e504e2c9359b12cf3013c1d3043c4c16f5845bb` |
| 10 | `theorem` | [zero_notMem_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/zero-notmem-iff.md) | 133 | `result-track:7f7972212b82a1617371b9067c2f9c2b0ecc986d8466b2f53162c11de3e4c300` |
| 11 | `lemma` | [Spectrum Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/zero-notmem-spectrum.md) | 139 | `result-track:6911b0884c8a970e9f8d718ce65c4c27ee140d29dbd14f991c4d3b7824a01495` |
| 12 | `lemma` | [subset_singleton_zero_compl](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/subset-singleton-zero-compl.md) | 142 | `result-track:f47035c288865d2f29a5445fe093639f5a2241d95d721ed7070b868cf6ebb49b` |
| 13 | `theorem` | [mem_resolventSet_of_left_right_inverse](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/mem-resolventset-of-left-right-inverse.md) | 147 | `result-track:29d8f1a3b569af25b6c254cbf247a8602baaf116f89c49ae5890f770abed0d8a` |
| 14 | `theorem` | [mem_resolventSet_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/mem-resolventset-iff.md) | 151 | `result-track:a9f28251ee976cd1c2afa5a8579188e4c04e4e81c3af45b91dad59e7aca871c6` |
| 15 | `theorem` | [algebraMap_mem_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/algebramap-mem-iff.md) | 155 | `result-track:ba24ad2d8760321ab6748f4f284090bd881ecac98dce9120a4781ce6d59d0c7f` |
| 16 | `theorem` | [preimage_algebraMap](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/preimage-algebramap.md) | 163 | `result-track:e431c0cdc7b60a8c57a14a6b4ff371e9c0f08622ceefd12fde271c3300115487` |
| 17 | `theorem` | [resolventSet_of_subsingleton](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/resolventset-of-subsingleton.md) | 169 | `result-track:50d14c56f5f9a294fce64d894f7936ce93a7e07b96feb7a51c6a89a6ba26a1f5` |
| 18 | `theorem` | [of_subsingleton](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/of-subsingleton.md) | 173 | `result-track:e9f60256b8a3df6664a6292d1dd51a9ad0fdca9af5dac49e6a5b1907433b23ea` |
| 19 | `theorem` | [resolvent_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/resolvent-eq.md) | 176 | `result-track:ff111e387950181132e96e46849002571666acbf6b9ea624ea05c9c1c5d4bfb5` |
| 20 | `theorem` | [resolvent_sub_resolvent](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/resolvent-sub-resolvent.md) | 182 | `result-track:67b48465d47015ed0ae55f5706da9bdf4bc0868826dca854b4ec9b116e4c8d23` |
| 21 | `theorem` | [units_smul_resolvent](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/units-smul-resolvent.md) | 190 | `result-track:2333450cea0daf10f0eda80d842462c49c10c068e0fdcb78596fafe78261d51a` |
| 22 | `theorem` | [units_smul_resolvent_self](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/units-smul-resolvent-self.md) | 206 | `result-track:e6a1f686c9cbfdbd063564010be38272c481d9b98e850491f76e6bec18659f9c` |
| 23 | `theorem` | [isUnit_resolvent](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/isunit-resolvent.md) | 212 | `result-track:dc292a114d683dd25f5225cacf1216493a09e970ad0ab0f701926eea7459d862` |
| 24 | `theorem` | [inv_mem_resolventSet](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/inv-mem-resolventset.md) | 215 | `result-track:ccd3ffd57309e10d32936146a8ef603f7a9137328250296c3ecaa49a00897490` |
| 25 | `theorem` | [inv_mem_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/inv-mem-iff.md) | 226 | `result-track:3f5330fb3034be5c825885548de05ae7d04073bc5182c38d77a1d8d0d3e9fd60` |
| 26 | `theorem` | [zero_mem_resolventSet_of_unit](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/zero-mem-resolventset-of-unit.md) | 229 | `result-track:120e06d56394b4d8e19796fb930e33689df8347ecbbd15bc467cbf959b16e3c2` |
| 27 | `theorem` | [ne_zero_of_mem_of_unit](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/ne-zero-of-mem-of-unit.md) | 232 | `result-track:875e1075044c4bf21976885c678640aabed81368deec5b8a325e715dc6c7f726` |
| 28 | `theorem` | [add_mem_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/add-mem-iff.md) | 235 | `result-track:b2320916bf5d3958be061a349ad0f0a19fdcdd64b7a634f15ab864ee5e65a430` |
| 29 | `theorem` | [add_mem_add_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/add-mem-add-iff.md) | 238 | `result-track:23b63c01ac51f6a7893e1bd2e7d5b564fb82f627b5248bd928d7b7a86271059f` |
| 30 | `theorem` | [smul_mem_smul_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/smul-mem-smul-iff.md) | 241 | `result-track:56d760de446800066336d6fb718c8b11ae9563c665c61d2457553563b1853bbe` |
| 31 | `theorem` | [unit_smul_eq_smul](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/unit-smul-eq-smul.md) | 244 | `result-track:e7f10fb6fe085accd4f0982d9dc3c7b78868c0ff525938416dec1772c37f758d` |
| 32 | `theorem` | [unit_mem_mul_comm](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/unit-mem-mul-comm.md) | 255 | `result-track:957d2715b4f18792dc71530c89235c161af0322cbc8bab610f2e376b2a7fbe95` |
| 33 | `theorem` | [preimage_units_mul_comm](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/preimage-units-mul-comm.md) | 271 | `result-track:cc295dcdce8ccbd1644dd0131101c10cddc193653cd00a688b2dee2e4346c11e` |
| 34 | `theorem` | [setOfPred_isUnit_inter_mul_comm](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/setofpred-isunit-inter-mul-comm.md) | 275 | `result-track:780c08df9b1a2d2e616a75f6c0d558dcfcdc7711d629856dd2e24da7902b9f49` |
| 35 | `theorem` | [star_mem_resolventSet_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/star-mem-resolventset-iff.md) | 287 | `result-track:f082f8556968dabb1f28dec1a5431cda15947b7dd93782d73b3fc636140b5211` |
| 36 | `theorem` | [map_star](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/map-star.md) | 293 | `result-track:4fd1737e8d9bd65596b03afe845696e8ab130685e34bbccf605eb0c516cd42c4` |
| 37 | `theorem` | [subset_subalgebra](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/subset-subalgebra.md) | 310 | `result-track:bd3edf5d33b8f356926d360eea046b5066e5b42c8fc99c016e28f0127e20b3b0` |
| 38 | `theorem` | [singleton_add_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/singleton-add-eq.md) | 315 | `result-track:7f34ac4b0847c78057f24aec93ec41b962965701104354a64db8036404acd17f` |
| 39 | `theorem` | [add_singleton_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/add-singleton-eq.md) | 319 | `result-track:045c90c6de273d16626ced05966d9c24f7bb6d3beba3a9e2efe1fc96925cfd5c` |
| 40 | `theorem` | [vadd_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/vadd-eq.md) | 322 | `result-track:68b7274a7c6be38a17c774e65ea84ca69f9f3c23e62dfe5c6386f90a2e85e004` |
| 41 | `theorem` | [Spectrum Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/resolventset-neg.md) | 325 | `result-track:fc201ea20953bcc4d1de95db9c51b3d90e7cc2a4ed33c90d55391310adc1ea39` |
| 42 | `theorem` | [neg_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/neg-eq.md) | 329 | `result-track:248097d320369be5d66a6cd36b3be5d16699e43253a7300c20ca4267eed6091c` |
| 43 | `theorem` | [singleton_sub_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/singleton-sub-eq.md) | 332 | `result-track:d862f068f8709de1aefb92a29055dca53b4978cf30085288c0ff408ee36f9ef3` |
| 44 | `theorem` | [sub_singleton_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/sub-singleton-eq.md) | 335 | `result-track:bd12e5414666a49087c05b62c9656b1c907b3dfeae0c5d434848d65350740949` |
| 45 | `lemma` | [inv₀_mem_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/inv-mem-iff-source-edition-2.md) | 345 | `result-track:6f357b4e0d9b098af93947268574680e24756ceb3735f1b27c4e0053470a4cf9` |
| 46 | `lemma` | [inv₀_mem_inv_iff](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/inv-mem-inv-iff.md) | 352 | `result-track:e727eac17e9eeff9a38271b2b477c75d21254f7c10ed1f17c0902c0e20e0adaf` |
| 47 | `theorem` | [zero_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/zero-eq.md) | 372 | `result-track:06b2f18cab8ea8cafe7b845cbe65705806615a2695b13fc0e6b7a35cb9f52c3b` |
| 48 | `theorem` | [scalar_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/scalar-eq.md) | 377 | `result-track:438e1328af8f84f8a408b8338c387bd65fc51541d10a754622fa008533c0cb7f` |
| 49 | `theorem` | [one_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/one-eq.md) | 381 | `result-track:7ee2c991732b99736e50c1b3c92ffcf4d0606eaf52cbae5522d29ae9a222f21a` |
| 50 | `theorem` | [smul_eq_smul](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/smul-eq-smul.md) | 388 | `result-track:72d17adef987f85deb6661e2cccd22ddfaea05992e7fb6cd14028dae18f3111b` |
| 51 | `theorem` | [nonzero_mul_comm](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/nonzero-mul-comm.md) | 394 | `result-track:1d680a5ad929c8855fedd90b097e91fcfc918f78a95706ec5885d25ad3708a5f` |
| 52 | `theorem` | [map_inv](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/map-inv.md) | 401 | `result-track:5e3a15d81698e41be2efd3980344505ef598fdb3c9bcf873221a22ca8c132c5a` |
| 53 | `theorem` | [mem_resolventSet_apply](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/mem-resolventset-apply.md) | 420 | `result-track:aa85e6d2ff26138e5ac3db6d63e5b662d56caf32bf4cdcb2ac446a0b2c595bbb` |
| 54 | `theorem` | [spectrum_apply_subset](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/spectrum-apply-subset.md) | 424 | `result-track:6a87c575a52c20e7dd1a0b5e453a7319a701e0e4a89564285e74845859bb2631` |
| 55 | `theorem` | [apply_mem_spectrum](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/apply-mem-spectrum.md) | 438 | `result-track:5513b5fee902bf964caed647fc0e8e240077ae0d54271177ebc9a366e5aedd02` |
| 56 | `theorem` | [AlgEquiv.spectrum_eq](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/algequiv-spectrum-eq.md) | 450 | `result-track:de2bfa80ab4f18c10605a80b9e3e64e7a3e50aea23dba26806ec1e5aac844eda` |
| 57 | `lemma` | [spectrum.units_conjugate](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/spectrum-units-conjugate-source-edition-2.md) | 463 | `result-track:a5ba6d225d7d7102e599a3528afb4996b7e0cae7e02b5c23a18550c682136f1c` |
| 58 | `lemma` | [spectrum.units_conjugate'](../../../../AssociativeRingsAndAlgebras/SpectrumBasicNamespacedPublic.lean/declarations/spectrum-units-conjugate.md) | 476 | `result-track:213f502ff836b5a0716561a06e9272e1d29fdf6d1f47f5fbe752da23e3c485c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4245e29663954de375bed85be02b0f6b1e06edb20a6ea3e35a9f0f80b510541b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant561f98a72f5a19a088c43f379f9267bb8ee3422496d52e66ba7c2ffebff67c0e.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant561f98a72f5a19a088c43f379f9267bb8ee3422496d52e66ba7c2ffebff67c0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

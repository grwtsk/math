# Verification target: L2 Space Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f8ef57385bf24c42aab22ca7ebb64c7ce30a17a",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f8ef57385bf24c42aab22ca7ebb64c7ce30a17a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean.json)

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
| 1 | `theorem` | [summable_inner](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/summable-inner.md) | 117 | `result-track:1668f41b78cfe5487257aecc576c98080984c291d49ed27d97db6d2708206a97` |
| 2 | `instance` | [instInnerProductSpace](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/instinnerproductspace.md) | 125 | `declaration-track:7dbf1ccdceaf3c14c94f0f0837b68b4e4575e2b2b9f31ea0ca80d248a579573f` |
| 3 | `theorem` | [inner_eq_tsum](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/inner-eq-tsum.md) | 162 | `result-track:a870c99f60fe44b0f009ca4374d06c59eac5970c1643b87ada04bdc5663a8c08` |
| 4 | `theorem` | [hasSum_inner](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/hassum-inner.md) | 165 | `result-track:c4a86ca825a51b3ea5eb8e4604759d032e539913d2e13b532d95650faaefc3ef` |
| 5 | `theorem` | [inner_single_left](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/inner-single-left.md) | 168 | `result-track:3db19ca9488fa5b2195fbe93d66f8f75a2af5d62a5de189b22b30916e7c02eae` |
| 6 | `theorem` | [inner_single_right](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/inner-single-right.md) | 178 | `result-track:1b9212d1f4ac7a0737a9c5d6c2d3000beadf5616fa19cce2f49bf8f8184f7d99` |
| 7 | `theorem` | [summable_of_lp](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/summable-of-lp.md) | 192 | `result-track:cf8afbe53dd5a13000ee34857cc0387ba76d9cd32646b3280897e75f1d580bc3` |
| 8 | `def` | [linearIsometry](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/linearisometry.md) | 201 | `declaration-track:a53c6b59f49504a84c6296eaa15063fcca524372746159336d6a8667f1dc9e55` |
| 9 | `theorem` | [linearIsometry_apply](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/linearisometry-apply.md) | 218 | `result-track:d4c015ab2e53c236b1dea1a9d99a3ac2d3efe71311ccca5387c2e50c48353007` |
| 10 | `theorem` | [hasSum_linearIsometry](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/hassum-linearisometry.md) | 221 | `result-track:fb0e68ccfd9e3bbbc141ab8205861e8996c4a661cf345d21de00d0a2212a7851` |
| 11 | `theorem` | [linearIsometry_apply_single](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/linearisometry-apply-single.md) | 226 | `result-track:df4f0034002955088b44b066d95b32b3fa6003e01d82fc209b4168d26bcc8cf3` |
| 12 | `theorem` | [linearIsometry_apply_dfinsupp_sum_single](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/linearisometry-apply-dfinsupp-sum-single.md) | 236 | `result-track:2af685b6bbd495b2eb6c4235c3a15f8a510e0c6965db5d6b63f2e7b039f4fd3b` |
| 13 | `theorem` | [range_linearIsometry](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/range-linearisometry.md) | 242 | `result-track:33818077a1c36af0c6f584ec2f90d3628c18d10728aa93ec920b951be4807b75` |
| 14 | `structure` | [IsHilbertSum](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/ishilbertsum.md) | 275 | `declaration-track:db1c601b201fdacfcfff323dfd8d4cfa4eec4bf04ceff5510e2470f6a0f71dfa` |
| 15 | `theorem` | [IsHilbertSum.mk](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/ishilbertsum-mk.md) | 286 | `result-track:339493acb53c59c8263c831b2da90510bd66375946f909d264d39efb62bb98db` |
| 16 | `theorem` | [IsHilbertSum.mkInternal](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/ishilbertsum-mkinternal.md) | 296 | `result-track:dc7d1687333a0dbec6320883a03284599ce4d93a8b85b60bc2e7fb947c137068` |
| 17 | `def` | [IsHilbertSum.linearIsometryEquiv](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/ishilbertsum-linearisometryequiv.md) | 306 | `declaration-track:6d5e0598cd4b30ac083fb44200b9fabd0a50c6a8d48b7ee7f55f2d914b77b700` |
| 18 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply.md) | 312 | `result-track:de2fc314f9cb4bbe6cef37a6955ceecaf91e1427299edd178b0c2b8871bfa711` |
| 19 | `theorem` | [IsHilbertSum.hasSum_linearIsometryEquiv_symm](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/ishilbertsum-hassum-linearisometryequiv-symm.md) | 319 | `result-track:10a6ce5427b3980bf687a34c2c0f0b7466ca767f46a5ffa5906faea819b53afb` |
| 20 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_single](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-single.md) | 327 | `result-track:91b477d0b5f5f95e03ac170313d4c0d9cc282029e2e9eff6b9641fb1d29e637b` |
| 21 | `theorem` | [IsHilbertSum.linearIsometryEquiv_symm_apply_dfinsupp_sum_single](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/ishilbertsum-linearisometryequiv-symm-apply-dfinsupp-sum-single.md) | 335 | `result-track:db5b0096905723fe17fe0d95fcaadc8ec60a3bfe8d2211b6bd4c009c7e9e74b1` |
| 22 | `theorem` | [IsHilbertSum.linearIsometryEquiv_apply_dfinsupp_sum_single](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/ishilbertsum-linearisometryequiv-apply-dfinsupp-sum-single.md) | 345 | `result-track:f53fe0dee3386aa30fcdf1deeed9d7d14ccba9e188e9ecfa6ac828a173dce16e` |
| 23 | `theorem` | [Orthonormal.isHilbertSum](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/orthonormal-ishilbertsum.md) | 356 | `result-track:909ee90d72fe3de226192522b0866cd44668cbaf3e7dfeb6f62c8becd5d4ca98` |
| 24 | `theorem` | [Submodule.isHilbertSumOrthogonal](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/submodule-ishilbertsumorthogonal.md) | 363 | `result-track:c1ad4f99aa01ef8f1cc603f7de75a84754357a7f8762a648ed2d56c60404a2f5` |
| 25 | `structure` | [HilbertBasis](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/hilbertbasis.md) | 385 | `declaration-track:e3b34c09a3944da1acade9faafc208a4ecee24a9cb7078bad1eea203dec50013` |
| 26 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/instance.md) | 393 | `declaration-track:e737b38a5996dcc9a6508122430ea9b3fbf8def24b567945dfc6ab568ec95804` |
| 27 | `instance` | [instFunLike](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/instfunlike.md) | 399 | `declaration-track:b2a0e848dc1b20868f5087d6336e765fc22c3c2ee2a009995a09fb2ec081dd29` |
| 28 | `theorem` | [repr_symm_single](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/repr-symm-single.md) | 412 | `result-track:4c5f2e42d41d53bbf0ff80c6e184f091c7caec3d567c429f80791eef8b648982` |
| 29 | `theorem` | [repr_self](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/repr-self.md) | 418 | `result-track:1ee551b25ee3fb1198c1759349604f79bbf38470feae82a488868bf473c2e87e` |
| 30 | `theorem` | [repr_apply_apply](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/repr-apply-apply.md) | 422 | `result-track:fe690fea7a4b73efd5208c4d6cf52143629909f6ae7f7220e0e7b9f3b7ca6c4f` |
| 31 | `theorem` | [orthonormal](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/orthonormal.md) | 429 | `result-track:ce5cd5f505c9007be9bcf200e734dfb75a6add3dd818230c3329bf3072cf89b8` |
| 32 | `theorem` | [hasSum_repr_symm](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/hassum-repr-symm.md) | 437 | `result-track:75748d44e027b3141cfe0eea74bb963afe7167dd1f9f7effca29b3d6db7697fa` |
| 33 | `theorem` | [hasSum_repr](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/hassum-repr.md) | 454 | `result-track:fa6e4e8c85d0e37e75586fd0cac3213608b1aab5e8eea161ca223fd6d69f2abb` |
| 34 | `theorem` | [dense_span](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/dense-span.md) | 458 | `result-track:4962d302c0226cba021cb3c7844666c111e8c2bb5d3a8ea1c061c4ef238de3d7` |
| 35 | `theorem` | [hasSum_inner_mul_inner](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/hassum-inner-mul-inner.md) | 470 | `result-track:3794d37b130ec0178687d5bf402d1350d56446bd120a05288b5f24dd7a2592cf` |
| 36 | `theorem` | [summable_inner_mul_inner](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/summable-inner-mul-inner.md) | 476 | `result-track:25bce1a78d65250de7443ab674d7b71579d709c322eb888cac496d928b63a201` |
| 37 | `theorem` | [tsum_inner_mul_inner](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/tsum-inner-mul-inner.md) | 480 | `result-track:f39b9480b424f6dd857a6f6ec922f4d15481ff11f174fd14ea280f32930b4921` |
| 38 | `def` | [toOrthonormalBasis](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/toorthonormalbasis.md) | 487 | `declaration-track:22a77d0ce530c114d5beae550e60b8c7b7032c1f5a7fe61fa5a8f7b7197d49e6` |
| 39 | `theorem` | [coe_toOrthonormalBasis](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/coe-toorthonormalbasis.md) | 497 | `result-track:61052d30e29e6bf06fad94d601602ae47763e17251cf763cc9efc22546c7121e` |
| 40 | `def` | [toUnconditionalSchauderBasis](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/tounconditionalschauderbasis.md) | 505 | `declaration-track:b3e0134e4c177cbbcb3fc4adaba97dbfb20014b636e3754f6c249ba5c552ccbf` |
| 41 | `def` | [toSchauderBasis](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/toschauderbasis.md) | 518 | `declaration-track:3436c5ffbe05981692b5244ff3502a042119e3d0a3b3bee34122af80ad1cca5f` |
| 42 | `theorem` | [hasSum_orthogonalProjectionOnto](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/hassum-orthogonalprojectiononto.md) | 524 | `result-track:c53f7c576d427e991ebd2be5d3d85ef2c233ff952774da3c086462f67de2e869` |
| 43 | `theorem` | [finite_spans_dense](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/finite-spans-dense.md) | 533 | `result-track:1e1ec2c5e121e6ab3ea0e469be6de9d876b7e1f3884ea66f27b2de19ebd89d38` |
| 44 | `def` | [mk](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/mk.md) | 548 | `declaration-track:9663ed8da356b203a2716c52574cb20a4e682c00b3fabe4e8bc17d910786644a` |
| 45 | `theorem` | [L2 Space Namespaced Public](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/linearisometryequiv-symm-apply-single-one.md) | 551 | `result-track:e40ffc7ef2bd570e62c22f86520f66b2588801a87ee1edb5ab294cf83d3a3b51` |
| 46 | `theorem` | [coe_mk](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/coe-mk.md) | 557 | `result-track:e7d98406693a9a19a3bbf174220cf8d2e8b5fd1f607d2ccb741158bd992734d6` |
| 47 | `def` | [mkOfOrthogonalEqBot](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/mkoforthogonaleqbot.md) | 564 | `declaration-track:60d921adcefdc3aac072fde39a42eb7ef888f5378598c32efafc53d07ab4bbdb` |
| 48 | `theorem` | [coe_mkOfOrthogonalEqBot](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/coe-mkoforthogonaleqbot.md) | 569 | `result-track:c328d3f6995a2b9391518cf67f858184bb9019b548d97bb39a780a2fce5d0463` |
| 49 | `def` | [L2 Space Namespaced Public](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/tohilbertbasis.md) | 576 | `declaration-track:5703692ef80f35bbf0a55cf8c336173f490ee1ad651be6e9664eb669c93c1051` |
| 50 | `theorem` | [L2 Space Namespaced Public](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/coe-tohilbertbasis.md) | 585 | `result-track:583c14a92b463a4d955bc696cd937990de7a2d700e514b9ce44aef33d8d62630` |
| 51 | `theorem` | [L2 Space Namespaced Public](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/exists-hilbertbasis-extension.md) | 590 | `result-track:94f06d36fe85cdb7657f42669cfbe5d88d01f859178073e8fbef60119fe3f5b9` |
| 52 | `theorem` | [L2 Space Namespaced Public](../../../../FunctionalAnalysis/L2SpaceNamespacedPublic.lean/declarations/exists-hilbertbasis.md) | 602 | `result-track:0135ffaa9c4154f05f4a6991ec129b51abadf2ffa95fa0e41cf92cdd020bc9a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57cc7ebeab04bd0cf6f46b128a2511e4a0c8d0da5b94ca10d26448f39ae04952 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

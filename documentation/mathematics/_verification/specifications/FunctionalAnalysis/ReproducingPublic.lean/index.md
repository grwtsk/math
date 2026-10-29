# Verification target: Reproducing Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87010768956625462a038736bed01361f0e66b9c",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ReproducingPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ReproducingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87010768956625462a038736bed01361f0e66b9c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean.json)

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
| 1 | `class` | [RKHS](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/rkhs.md) | 56 | `declaration-track:e4bef6d26f909425883d13d9776c17b083925c9a6c2c2fcbc85e71ecd538226e` |
| 2 | `instance` | [instFunLike](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/instfunlike.md) | 76 | `declaration-track:04d25257993982c9f6a1305b81c8f8ccd3607163f9ecd6f755ce05e44efe8e91` |
| 3 | `lemma` | [ext](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/ext.md) | 81 | `result-track:9427b47fdea28932b02356fc13b812ec31f123b4f7d45a6b4d8f13e3eafdb0ff` |
| 4 | `lemma` | [coeCLM_apply](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/coeclm-apply.md) | 84 | `result-track:1a402e40e38b326d65d678e05e4f369a2cef551947da3b5c2ceb12636589d851` |
| 5 | `lemma` | [coe_zero](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/coe-zero.md) | 87 | `result-track:c7e968beb265efbd729994c4f3319b267635b1e819b5edf9a03818b78458d315` |
| 6 | `lemma` | [coe_add](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/coe-add.md) | 90 | `result-track:5f282ba0c67af38f3632c439719c0ad28c82456fc2d2f800cf50acb8a1e642cc` |
| 7 | `lemma` | [coe_sub](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/coe-sub.md) | 93 | `result-track:c987a1004c7c1f1bdea85d905ed8af2a4a9142f2d962accb75cfa993bf484d6f` |
| 8 | `lemma` | [coe_neg](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/coe-neg.md) | 96 | `result-track:dc0c7d04a16ea76f18293f4ebec0d7e2e04fc1411dfb626de2b297a000e2d570` |
| 9 | `lemma` | [coe_smul](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/coe-smul.md) | 99 | `result-track:49452e87776c6dac478a109fe3be4b7bf35265fdd6e457bb16169ff995d06368` |
| 10 | `lemma` | [continuous_eval](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/continuous-eval.md) | 102 | `result-track:66a5513fd1b9e8f2efaf706892b3581b94bfdf9068c33a2e504872cc6e366404` |
| 11 | `def` | [kerFun](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kerfun.md) | 110 | `declaration-track:35f2f3d6e63dfb64069f293d04b1f0d9661c4c9faa8f3cd5fdd000ac62f2f5f0` |
| 12 | `def` | [kernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kernel.md) | 114 | `declaration-track:a751578a352d02267026bb251b9948a8bde8df7110466e779e8c47fb78b5df4d` |
| 13 | `lemma` | [kerFun_apply](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kerfun-apply.md) | 117 | `result-track:8db79d9d43ec4dec96cd84d9bc6be78f7a89ff2c4e1d2eb61ca3472015083a13` |
| 14 | `lemma` | [kernel_apply](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kernel-apply.md) | 120 | `result-track:e6efe118c5ef40a428da5c5bd3a7e0d9076702850ee0623458c98c36795e0f10` |
| 15 | `lemma` | [adjoint_kerFun](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/adjoint-kerfun.md) | 126 | `result-track:cf54b8c3787806ac70006d37546e1c44a0c62beb677396ff3fc26daf598c2e80` |
| 16 | `lemma` | [kerFun_inner](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kerfun-inner.md) | 132 | `result-track:c87c3d9fbc1b0ef361ff2803969e38babd1f25f8224a1028e816c320e673fd8f` |
| 17 | `lemma` | [inner_kerFun](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/inner-kerfun.md) | 138 | `result-track:6413281fea4a25320a44cfea73fd013da581850e9c886ba3637d5dc538999f20` |
| 18 | `lemma` | [kernel_inner](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kernel-inner.md) | 142 | `result-track:59bfc3f65baebbcb8ac88ed9d0a1b285d3471c9743cee5627a9654007cf00d9e` |
| 19 | `lemma` | [norm_kernel_eq_norm_kerFun_sq](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/norm-kernel-eq-norm-kerfun-sq.md) | 146 | `result-track:5916bffb8dbc5cc65990faad95dfe8b0040cac83b043677e298244f52d44ab41` |
| 20 | `lemma` | [norm_kerFun_eq_sqrt_norm_kernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/norm-kerfun-eq-sqrt-norm-kernel.md) | 149 | `result-track:2e1d0744d50aeff24d4e75f58b476c691696e2e30687256270453b98126cc0cf` |
| 21 | `lemma` | [norm_kernel_le](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/norm-kernel-le.md) | 152 | `result-track:dd40324ae113f856f22a42a5abf7c19ec136e4831f5bf34f719fd7fe281bce33` |
| 22 | `lemma` | [norm_kernel_sq_le](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/norm-kernel-sq-le.md) | 156 | `result-track:540e6cec0a759fa39d506996ec8b54350f6c31144f3e1f93483cabe8a92bbd7b` |
| 23 | `lemma` | [norm_apply_le](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/norm-apply-le.md) | 162 | `result-track:2355605abd235ceae083de6c0ed16379fc13eaccd51163d23eff0dc48f06ccce` |
| 24 | `theorem` | [tendstoUniformlyOn_of_norm_kerFun_le](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/tendstouniformlyon-of-norm-kerfun-le.md) | 168 | `result-track:7b23a8e817e2d3f86f001035e57886148a7b7ae689e34c994e2c62858b3f3f4c` |
| 25 | `theorem` | [tendstoUniformly_of_norm_kerFun_le](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/tendstouniformly-of-norm-kerfun-le.md) | 183 | `result-track:6c01c20da39f2bf08e381529b748b9a2e4680d03c67a934de4ffc565ed0eda6a` |
| 26 | `theorem` | [kerFun_dense](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kerfun-dense.md) | 190 | `result-track:dc3e5b3d0492012c85a4f1a40a51b979e01defea39eb1911af9ca02e9b0dcd43` |
| 27 | `lemma` | [isHermitian_kernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/ishermitian-kernel.md) | 197 | `result-track:5d8ce56671f7d3e5c4a9ac491196155a419a9379606c052923bc7a474de92aed` |
| 28 | `theorem` | [posSemidef_kernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/possemidef-kernel.md) | 205 | `result-track:3870a3b881e86afd79c49ea58451e4d838d9e1b86636c7cbf224ff75a3101fdd` |
| 29 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/instance-source-edition-2.md) | 213 | `declaration-track:a80c3e7e872de70079c3721046c5c2928924b25fefe37756f9b998f512f81cc7` |
| 30 | `lemma` | [isSelfAdjoint_finsuppSum](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/isselfadjoint-finsuppsum.md) | 221 | `result-track:98426731cfc7ae3b3a2ee293cab9e75616b28effbbcac93524d87fd910438450` |
| 31 | `theorem` | [posSemidef_tfae](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/possemidef-tfae.md) | 227 | `result-track:945c3a90f19e13326932ad8c1da145c2b821e61e6355740d1c0839c753c6935a` |
| 32 | `theorem` | [posSemidef_iff_re_sum_kernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/possemidef-iff-re-sum-kernel.md) | 260 | `result-track:622105110463a5e14d5335a345f204a2b4d37e55b0fed8b18af5aa70aa4d0f16` |
| 33 | `theorem` | [posSemidef_iff_re_sum_kernel'](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/possemidef-iff-re-sum-kernel-source-edition-2.md) | 266 | `result-track:f14d84d9ae93ced49a2ea742ba0a4982202f8b00124f607b2a4c2e3c7dab981f` |
| 34 | `theorem` | [_root_.Matrix.PosSemidef.re_sum_kernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/root-matrix-possemidef-re-sum-kernel.md) | 271 | `result-track:1a873984b7120a56934ce07c537cfcc2aabbfc28a21de8af16704a9cc1c66c21` |
| 35 | `theorem` | [_root_.Matrix.PosSemidef.re_sum_kernel'](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/root-matrix-possemidef-re-sum-kernel-source-edition-2.md) | 275 | `result-track:20e47890a450aa5025528fc1eb8d4c1db44572db5dbdbe0f6b0f86879c68e8e8` |
| 36 | `abbrev` | [H₀](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/h.md) | 282 | `declaration-track:9c46fc7fd5addd2e102e2204db6bee559b36bafa4c2f33697efc404fdc4a0ad9` |
| 37 | `instance` | [instPreInnerProductSpaceCoreH₀](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/instpreinnerproductspacecoreh.md) | 286 | `declaration-track:87e27a93299016fcadb02e06cc01fa638f86d9e7e53c5a78675afc7c5e6d1fe7` |
| 38 | `instance` | [instSeminormedAddCommGroupH₀](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/instseminormedaddcommgrouph.md) | 300 | `declaration-track:63f7b83496871bb17d227414eb7a03cc6dceff62307a197cdb47af1cd8ffd9ec` |
| 39 | `instance` | [instInnerProductSpaceH₀](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/instinnerproductspaceh.md) | 303 | `declaration-track:82e6bd7aff0e976e0ffe1f45e398825391cb4302fcca12273bff82e5c91b9816` |
| 40 | `lemma` | [inner_H₀_def](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/inner-h-def.md) | 305 | `result-track:15eead4a9b0040f8b67f2f077a3b20fa39ee4647f9175437c245c98709196a82` |
| 41 | `abbrev` | [OfKernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/ofkernel.md) | 312 | `declaration-track:d1d8cfc907eff0275c751ca2dd218cab2e7bfd1740dc3c8f9c843685b02afc3b` |
| 42 | `abbrev` | [kerFunAux](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kerfunaux.md) | 317 | `declaration-track:7a44c344bdcc53e4822a847a69c58772d0f52a1aa82d93b29d482a42d80ee257` |
| 43 | `abbrev` | [kerFun](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kerfun-source-edition-2.md) | 331 | `declaration-track:fec81a83136ab300b4a744f6702ca9d92b61cda6b35a0e425e756bb52d26ce9a` |
| 44 | `instance` | [instRKHS](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/instrkhs.md) | 344 | `declaration-track:dbbdc406697321b41d374e5d76172801dadc7c2ba5d89e0e6c712cd22f399e58` |
| 45 | `theorem` | [kernel_ofKernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kernel-ofkernel.md) | 367 | `result-track:528ced2b41f6626c735ff8481e1df915a16db3018f7782fd3f750f16c0feb6e2` |
| 46 | `def` | [toH'](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/toh.md) | 380 | `declaration-track:54cd439b2112c747c9075fd1de95b8d6fb92da807019edb0ec10f3e0b6926fae` |
| 47 | `def` | [equivAux](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/equivaux.md) | 388 | `declaration-track:43b52e4d04365167555a338f34391871c0f1ea66ed5aa1b7c18bb8a104a26e58` |
| 48 | `lemma` | [toH'_apply_single](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/toh-apply-single.md) | 412 | `result-track:24c79e96c32adac8483795cbe83484b74f8f536b28e586d682d4e2b46f5be7c7` |
| 49 | `lemma` | [equivAux_apply_coe](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/equivaux-apply-coe.md) | 416 | `result-track:8d28223657874b4a6452e8fc908a36e777d6ec6b8be65ac0857e8e02dc0b22e8` |
| 50 | `def` | [equiv](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/equiv.md) | 422 | `declaration-track:d072075ccb2b98f888b2b2484b6a17576393a1b10ee595d2724effda26eab29c` |
| 51 | `theorem` | [equiv_kerFun](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/equiv-kerfun.md) | 425 | `result-track:fce85c8be0f45e1678916ca4f8735c75f2710a74e2241062b83a7de68bb656c5` |
| 52 | `theorem` | [coe_equiv](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/coe-equiv.md) | 435 | `result-track:831a29b640d2577cd5cb1b1866b3e74bac6b9dd7b2617d64af94766bd5cf0921` |
| 53 | `instance` | [instRKHSSubmodule](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/instrkhssubmodule.md) | 446 | `declaration-track:ffd3e0e7366f0ff360f9d25560f9971367a791e4d32e7cb702d21391868728ba` |
| 54 | `lemma` | [coe_coe](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/coe-coe.md) | 452 | `result-track:ffd7b0a05e709ef85de3545b276c52ffaf86c2e311ac7b8ff2575f3801a40287` |
| 55 | `lemma` | [kerFun_submodule](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kerfun-submodule.md) | 454 | `result-track:02b8267649ee0950f101e4b5887a4a2403399e0febdfd85a3bda59d371580da3` |
| 56 | `lemma` | [kernel_submodule](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kernel-submodule.md) | 460 | `result-track:a2dcefdd221cb47c7c069655fe94caa43728d643758e37193e359f8b8bd540d2` |
| 57 | `lemma` | [kernel_orthogonal](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kernel-orthogonal.md) | 466 | `result-track:e533eac5060a8d264e19dcc58b1d1f47432991a9eacd8ca1e749a73880e06500` |
| 58 | `def` | [outerKernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/outerkernel.md) | 477 | `declaration-track:0d36b3e832c595fafcea2dddf0018f6374dbdb8e2bc8b6b0448aa7788132cb0d` |
| 59 | `lemma` | [outerKernel_apply](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/outerkernel-apply.md) | 483 | `result-track:5eeccce91e7a2c229507395efb0e5f105c639e6a0920f3c76aa5869d09fa81bd` |
| 60 | `lemma` | [outerKernel_zero](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/outerkernel-zero.md) | 489 | `result-track:6a28bf1556977684f947b2308cef9da861aad9b54969558a2e26a22c928f8f28` |
| 61 | `lemma` | [outerKernel_inner](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/outerkernel-inner.md) | 495 | `result-track:268a9a4db573c8dd19e25a165d6c35de5be298a6313bf04a1d09596226c659a0` |
| 62 | `lemma` | [inner_outerKernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/inner-outerkernel.md) | 501 | `result-track:9ad4354271fccf777ade983346086d29ca7d77f82ff920797b6c7f47f71699a2` |
| 63 | `lemma` | [posSemidef_outerKernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/possemidef-outerkernel.md) | 506 | `result-track:fab80465ebc8a3a2dd4b01ec47f751772b06ff959adac7928d8b9a8bca858e2c` |
| 64 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/instance.md) | 514 | `declaration-track:1c3e8ab17394e754259d67f6e0d7646eb713b9d7623f2cfded86b1a70f55ca25` |
| 65 | `lemma` | [kernel_span_singleton](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/kernel-span-singleton.md) | 517 | `result-track:1adf337c6f05561426ffca4fb0f5ab49e27cc7af5b6b2b2a444ff04a221d76bd` |
| 66 | `theorem` | [posSemidef_norm_sq_smul_kernel_sub_outerKernel](../../../../FunctionalAnalysis/ReproducingPublic.lean/declarations/possemidef-norm-sq-smul-kernel-sub-outerkernel.md) | 523 | `result-track:a830b16a3836fd812574c3bc7fac1674aa23bf612b751f78573b96bb198fa347` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8465ac6eb60ea8586a28d068ac5b1fdca5e52659558a5734bcc5233d98e0335b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

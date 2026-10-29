# Verification target: Root Operator Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae602c7b0d3a5ea4f98274eb945ee879e21bd7a2",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RootOperatorAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RootOperatorAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae602c7b0d3a5ea4f98274eb945ee879e21bd7a2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/fullh-source-edition-2.md) | 17 | `declaration-track:d241f334ad8c928233566e2f650eeada0f3585209f4555cc8123aa66e6dce6ef` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/fullshift.md) | 19 | `declaration-track:3ee4ff3988d2c356d28f1fbeb9cb02edfc0b91f3d57bcba96e96ee5b63e97a09` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/fullshift-ae.md) | 22 | `result-track:a40bb12b6982f440b053dba59a8eb32fa5504e16ddd6e2e8c3fc546af0c5f69d` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/fullshift-continuous.md) | 26 | `result-track:06ad493af161114c0f35e27b9c9e95eff9b12f7331fd79f0f00884514a3c4531` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/weighted-shift-integrable.md) | 34 | `result-track:919f9a8ee21cfb967bd9ea3c8de74818174d070f788bc4e4974c0ad60baff1cc` |
| 6 | `def` | [vector](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/vector.md) | 43 | `declaration-track:c43049e55527eef917016eeb2789718d6c16a0db3ce8a0fad37ab26848fed239` |
| 7 | `theorem` | [vector_norm_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/vector-norm-le.md) | 45 | `result-track:09d6e65c381b8352186ac3b27c04e54010f35041b9dd6fbaf9906095927641c0` |
| 8 | `theorem` | [vector_add](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/vector-add.md) | 52 | `result-track:193c9b84688aa07211cfbb3116e58083c9f8baa42665456f8daa864c63346206` |
| 9 | `theorem` | [vector_smul](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/vector-smul.md) | 57 | `result-track:e6cb44f9021aa92f0644663629200b30ed89d03762b6a9d123e723cc240e46e4` |
| 10 | `def` | [linearMap](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/linearmap.md) | 61 | `declaration-track:07fa59f4a739906c3cd18f3cfbba3823ba3ea9305976c3f66429a4ef40f12cd9` |
| 11 | `def` | [fullConvolution](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/fullconvolution.md) | 66 | `declaration-track:bf571b1a571d2039723b24c41497f1505ce5d04220c1fe9434d57a082ee75446` |
| 12 | `theorem` | [fullConvolution_apply](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/fullconvolution-apply.md) | 69 | `result-track:ce2f5ad48cd6551e41bf50e3baac0cf197cebb593edc59c128a7a4e8f25c01a9` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/fullconvolution-norm-le.md) | 72 | `result-track:a667f59fb78a5c92206a3af2256a5923b9f053ed70f1532aab7392b3291e8434` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/fullconvolution-sub-kernel.md) | 76 | `result-track:c80880ac553dba63f4bc11327067c5840a7536991308133108504a8385f9ff6d` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/fullconvolution-norm-sub-le.md) | 84 | `result-track:963b49153d62446fccc49db7d58ff4fbefcddff88daa06ed64681e9d29732f68` |
| 16 | `def` | [actualFull](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/actualfull.md) | 89 | `declaration-track:817e93073ce7a0617efb127bc29b836fec72c5a24dcd6ca524ea8dde8e3e8804` |
| 17 | `theorem` | [actualFull_apply](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/actualfull-apply.md) | 91 | `result-track:52e74a85c9a0b65829901ca000b86d467d12db9498f498fe6180130bcbd9d22f` |
| 18 | `theorem` | [actualFull_norm_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/actualfull-norm-le.md) | 94 | `result-track:8da7b9c450fc0a590eee9e579601effb4c08fe55df5f2aea4f05b83c2e348150` |
| 19 | `abbrev` | [FullH](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/fullh.md) | 112 | `declaration-track:bf2ab08487090479dab132676a835466903613c41c909561b70b428406f6748f` |
| 20 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextensionfunction.md) | 114 | `declaration-track:17befd6b984b9d2a443b7fe5b4bbfa2c00c3b832ccf03d959e35635521d68ddd` |
| 21 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextensionfunction-memlp.md) | 116 | `result-track:444594e43b3a668afb7f02f1d4ce01537af08a3482bff89c6612518eff604398` |
| 22 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextensionvector.md) | 120 | `declaration-track:c5abeb0d42a04902fba700023d66cf8fddb541885fb5fcca0f0af5aa344bc2ec` |
| 23 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextensionvector-ae.md) | 123 | `result-track:e03e79977026a5cf7e5056aa579a6c897b17d310f46c302b36b9dbb8b05637b8` |
| 24 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextensionvector-norm.md) | 127 | `result-track:4ecc49dc4cc613453a58b81034cd0ebdfccfddad453b131c205c030d5b771851` |
| 25 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextensionvector-add.md) | 132 | `result-track:5731bc3489329deebcc88da8025eff2b24c06611716649fe2d324026eab7fc28` |
| 26 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextensionvector-smul.md) | 144 | `result-track:fba5006f05c8f4b3e251ff7caeaa16eaae753fdaecd5165aba00aaa7f268f152` |
| 27 | `def` | [zeroExtension](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextension.md) | 157 | `declaration-track:c69f04673f0f47b491651db4233ff47faa759b3f2ca495c90ca07ebad10989be` |
| 28 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextension-ae.md) | 163 | `result-track:20a1b650645f751e9d0a9c06f3e821e7b8b433dab89fea3bcb5653ee2726c263` |
| 29 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextension-norm.md) | 167 | `result-track:191bab0ae2bab779510064025739092c215ea1c2563e8efc06a5e5e65274de38` |
| 30 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextension-ae-halfline.md) | 170 | `result-track:6f72cecd9cfdc26f84c8f8bca840ee600a526787fd8b459b0cee6f908208ab33` |
| 31 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/zeroextension-ae-nonpositive.md) | 176 | `result-track:ff2f8d28f5ec1a4dcc114c903b2d9fe1e6a251530f7ae0547c9745891374845d` |
| 32 | `def` | [restriction](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/restriction.md) | 185 | `declaration-track:c76c9019022921072fe984849077072a405eca9d3e449cf1bc4689f8264436f2` |
| 33 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/restriction-ae.md) | 187 | `result-track:7e74f5af359648c3752423bb4a73e2da384718c8797078bfae573031bc7326b4` |
| 34 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/restriction-norm-le.md) | 190 | `result-track:bb597559ef4c6da74913152f6107ea3f6f5c199378087ab1df98ad321c4df570` |
| 35 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/restriction-opnorm-le.md) | 193 | `result-track:caa959ff9c5c6b40219de7150514a3dce8d0504f3c6340604473a55d30e581bd` |
| 36 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/restriction-zeroextension.md) | 198 | `result-track:997fac73c18661069c3d0a7dd062de3e2c079685903a1ecfc3ec8d24bd3ee208` |
| 37 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/restriction-comp-zeroextension.md) | 201 | `result-track:c3f0b6b1dd2c352bc52dcd4927b02b21909adf86c8a83635397b911c4c12e9e1` |
| 38 | `def` | [halfConvolution](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/halfconvolution.md) | 218 | `declaration-track:19441f1b4dd70db515d78f4d0341bfae767202fdf8d4f5b181306fbe58b3675b` |
| 39 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/halfconvolution-apply.md) | 221 | `result-track:986f5683df3401e12a314e7399cb308e1e6567a62feffec5f61ec93081622e31` |
| 40 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/halfconvolution-apply-norm-le.md) | 225 | `result-track:bc270ff4b1601470a81aa09388af1f1094ac64bd7ff1f415135181631b866838` |
| 41 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/halfconvolution-norm-le.md) | 232 | `result-track:aa228315095e909db51e623081bbb74f243389d599d8535459fe9c08903a1f28` |
| 42 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/halfconvolution-sub-kernel.md) | 237 | `result-track:5c21dfe0fc9f4b87dbe68731079399013b5b06a5f3ec1bf31fbce9f3d5f82e45` |
| 43 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/halfconvolution-norm-sub-le.md) | 246 | `result-track:a282cfd9166cd8d61d6bbeb30782ea92e795941f2467ebeeaa187debe3e8e416` |
| 44 | `def` | [sourceOperator](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceoperator.md) | 251 | `declaration-track:7d38aae660aee8f5bdd51e808bb3205e626d9de69211a94467ffeeabbc0da466` |
| 45 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceoperator-apply.md) | 253 | `result-track:dd2ac061a4e4fb6ab841262f8165116cfc67430ccf2edad5f9c36694993ecd7f` |
| 46 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceoperator-apply-norm-le.md) | 257 | `result-track:bdc68ce80786d38adce53f2d261056f7b066c0483b315526eabc20dc4d9f7cb7` |
| 47 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceoperator-norm-le.md) | 261 | `result-track:7dbff2ce027f5bc610092be96229514a2a9404d84c500a59044e7d1ba637db58` |
| 48 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceenergy.md) | 265 | `declaration-track:91db002e8ef0e948a0b3c75a1a15cc6e0de5ff396d603b23cd4a346222784443` |
| 49 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceenergy-apply.md) | 267 | `result-track:60cef53e176aaf06596c59be021f887c6221c932ea33b89c5db8e1d95fa93fb4` |
| 50 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceenergy-ispositive.md) | 270 | `result-track:3d00dd6a84f230eef895dae3526624f2cf240a80b8e2438417afffe515700ee2` |
| 51 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceenergy-isselfadjoint.md) | 273 | `result-track:97b38b9fe55fae61b3b1904d927e42b4249c76ea95e1e16689071632b39bbec0` |
| 52 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceenergy-inner.md) | 276 | `result-track:b9d5232eea1bcd97755c2959c6b3b54a4da58e772de331de187e965019cea9e8` |
| 53 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceenergy-re-inner.md) | 281 | `result-track:00ace0ce7a7bb2734859ae393b8f9c547d2470a99a06cc8ac4680fd058d46905` |
| 54 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceenergy-kernel.md) | 286 | `result-track:78b440b020fe41e312822f02db4fe2b48d3e8440ccc4768c793d5faa8d1acf66` |
| 55 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/sourceenergy-norm.md) | 289 | `result-track:c1e989f54ddbe973ef24806a71cf239e92b99efdf7096f17d889a288ae8467f1` |
| 56 | `def` | [truncatedKernel](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/truncatedkernel.md) | 305 | `declaration-track:ba7527da9a96a81b1a244cc08518ad6bb0d5ebe7442c4ac0c2ba43eb7fc51029` |
| 57 | `theorem` | [truncatedKernel_integrable](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/truncatedkernel-integrable.md) | 307 | `result-track:9a79912cd7c0287f736a7db1ec49b206560d84595d4f68d6eb6ae20d3c265dc2` |
| 58 | `theorem` | [truncatedKernel_memLp](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/truncatedkernel-memlp.md) | 310 | `result-track:52621d90e341f95e2934e2b2ca3b456958f1fff90fe96db798271d39b9249e22` |
| 59 | `theorem` | [kernel_sub_truncated](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/kernel-sub-truncated.md) | 313 | `result-track:9db4d045e8cfec0d8935229b3bc48a46b3ae56a13c9306d165a8d41b58b5fc43` |
| 60 | `theorem` | [norm_kernel_sub_truncated_integral](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/norm-kernel-sub-truncated-integral.md) | 324 | `result-track:b8791f2e991c44244b33cf8bbd070a28bd5fe199da8dbfff0ac3f264a3ee7e14` |
| 61 | `theorem` | [tail_majorant_integrable](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/tail-majorant-integrable.md) | 332 | `result-track:b3d972154050e018bc085bddda3cdcef589c99f13b5d40b74a29440fb133c318` |
| 62 | `theorem` | [tail_majorant_integral](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/tail-majorant-integral.md) | 343 | `result-track:5b56bd5d8f929242b20b6578ced1f8704d7310196fbaac5326a8261d3cc71448` |
| 63 | `theorem` | [kernel_tail_integral_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/kernel-tail-integral-le.md) | 355 | `result-track:a33bcc0a04b3a9008827ad192a17bbd22cf59bd29e10bc0d3b75593ac30ee199` |
| 64 | `theorem` | [norm_kernel_sub_truncated_integral_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/norm-kernel-sub-truncated-integral-le.md) | 363 | `result-track:d4d11eb3d1984123577004acae893dec31739667cdd34808c0f90769d53aa0f8` |
| 65 | `def` | [kernelMass](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/kernelmass.md) | 369 | `declaration-track:8167e1148784ad65990bbdf56ec5b3f20a565d039c824173a920cb1a8a74490d` |
| 66 | `theorem` | [kernelMass_nonneg](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/kernelmass-nonneg.md) | 371 | `result-track:3efcf20ecd0dd6fc27104e46debc3493a6cd260434648763032a782a664c1992` |
| 67 | `theorem` | [truncated_norm_integral_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/truncated-norm-integral-le.md) | 373 | `result-track:1142e1fa21b76ad83e5d028a5cb1ca93eaaf65f927936127d5ee9b4b9ef42444` |
| 68 | `def` | [truncatedOperator](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/truncatedoperator.md) | 378 | `declaration-track:0eb90029736ab91332230ad7db7fea6a7cfb8ab26ebbbdb00d2023d8a09da2ca` |
| 69 | `theorem` | [truncatedOperator_norm_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/truncatedoperator-norm-le.md) | 381 | `result-track:0d38cbcf9fd3a87ac96ead2ca2d03ef109c5fc9dbcb336dd9cd3267a54f6dd7e` |
| 70 | `theorem` | [operator_norm_sub_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/operator-norm-sub-le.md) | 384 | `result-track:5193ae01f4a3a2755c6b9b57028eb072958be9d3bc9449a6f0f47064e5a9c14a` |
| 71 | `def` | [truncatedEnergy](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/truncatedenergy.md) | 390 | `declaration-track:69f0f97579741ab1e5987a92dc7d04719a6e91867d115a1bdbf20dc0bdfff6ef` |
| 72 | `theorem` | [truncatedEnergy_isPositive](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/truncatedenergy-ispositive.md) | 393 | `result-track:4b270188c18be3b3b590f4f2727b5ab6eebbc9abaab50bd546e1146230847f56` |
| 73 | `theorem` | [norm_energy_difference](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/norm-energy-difference.md) | 396 | `result-track:68bdf44a684a40832ebc2fb2e8086a7c39c5aa8ac747f655e1cd37b83236b2d6` |
| 74 | `theorem` | [energy_norm_sub_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/energy-norm-sub-le.md) | 413 | `result-track:7df85cbf04be99ef776b68b026a4dabdf878bd67380213ed61a6e97ce76fa04a` |
| 75 | `def` | [diagonalCutoff](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/diagonalcutoff.md) | 425 | `declaration-track:548dfce32bf991c4eb66d3c8ac690163ab0b9815540c9f3d0f0150eb66efb387` |
| 76 | `theorem` | [diagonalCutoff_ge_two](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/diagonalcutoff-ge-two.md) | 427 | `result-track:5cf6a8a01977c1c8d99248b7bd738acf6545f2a76788e476d3f400afb6113578` |
| 77 | `theorem` | [diagonal_exp_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/diagonal-exp-le.md) | 429 | `result-track:4ae63db3d3e60a31f57c6ed9224b412375c3989b32c401ff600b9d6c5a42237f` |
| 78 | `theorem` | [diagonal_operator_error_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/diagonal-operator-error-le.md) | 439 | `result-track:72ade361999197cda9cc13869e1b13b5c1da2a6c67c6031bdb2f9c14614150be` |
| 79 | `theorem` | [diagonal_energy_error_le](../../../../MeasureAndIntegration/RootOperatorAudit.lean/declarations/diagonal-energy-error-le.md) | 445 | `result-track:5659f1ad7e9d99b59661f3cc6e22912672fe891deef66bfd383f28bc2c0c2c7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=251a4ccbb92d797022ca383d28e23c247e207657c101a9f140369672a1883886 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

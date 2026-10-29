# Verification target: Homogeneity Defect Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1de80692ff8195aa9a73853aece6982e81a9e6cf",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant76051d94eded511be6011e5c3de9aa16dff4579a415dad4953d08f2cb8e6deaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1de80692ff8195aa9a73853aece6982e81a9e6cf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant76051d94eded511be6011e5c3de9aa16dff4579a415dad4953d08f2cb8e6deaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant76051d94eded511be6011e5c3de9aa16dff4579a415dad4953d08f2cb8e6deaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.RealThetaDerivative` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correlationPrimeSample](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/correlationprimesample.md) | 25 | `declaration-track:183742633cbe7474827279f1209855b6102fc6e25c23d1a9cffdeea56349ee3a` |
| 2 | `theorem` | [correlationPrimeSample_eq](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/correlationprimesample-eq.md) | 30 | `result-track:f3a61d28b3565cd8b348d2f8654c09087bdb859c3cfc9967072204414c0470fd` |
| 3 | `def` | [correlationPrimeTheta](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/correlationprimetheta.md) | 39 | `declaration-track:6a9f9dc8d176b0141d51a59a6d84d40abc3346a00a2c2a5137135bd4335cda5c` |
| 4 | `theorem` | [correlationPrimeTheta_eq](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/correlationprimetheta-eq.md) | 42 | `result-track:44d45a8c8ae8a55813feb39d548e97a20a10c523fd0e30572b5dbbad1c58b6fe` |
| 5 | `theorem` | [homogeneity_defect_eq](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/homogeneity-defect-eq.md) | 48 | `result-track:c76aeedf62b1ab75f62239d551fc473bb1559a19ea044285f653edf8105ba708` |
| 6 | `def` | [negativePrimePrimitive](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/negativeprimeprimitive.md) | 57 | `declaration-track:1f71ed54757a488a039fa108e7d378b32db4ce1391914038653b0e2af1ad0622` |
| 7 | `theorem` | [negativePrimePrimitive_eq](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/negativeprimeprimitive-eq.md) | 60 | `result-track:a5fafacc64e6501f82168b65141d53993397cb2c0a312a88733e3d5ff8e503f1` |
| 8 | `theorem` | [negativePrimePrimitive_contDiff](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/negativeprimeprimitive-contdiff.md) | 65 | `result-track:52b63a010bd19acf8f82b76ea0ef4fc2d9ab029f0f6d484dfe6fc79b8d75adb6` |
| 9 | `theorem` | [negativePrimePrimitive_compact](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/negativeprimeprimitive-compact.md) | 70 | `result-track:e5b7e230082e54def7284677425e11af2c08480e5463178dc8434241e0e37e0b` |
| 10 | `theorem` | [negativePrimePrimitive_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/negativeprimeprimitive-abs-le.md) | 80 | `result-track:7551f2f9aa1a69ac09bf7913d3fa2d8fbb79f1b6dd3571ee89658e711c60adb6` |
| 11 | `theorem` | [negativePrimePrimitive_derivative_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/negativeprimeprimitive-derivative-abs-le.md) | 85 | `result-track:fa8f50ae2a5e670151299943a3f9284b86109e1b5e578f4e58ed37a10232634d` |
| 12 | `theorem` | [negativePrimePrimitive_moments](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/negativeprimeprimitive-moments.md) | 103 | `result-track:f90a697878ff1a87a5b4abd3a43145dd2dfd4283ee1dbcc6f666d9ee37026613` |
| 13 | `theorem` | [negativePrimePrimitive_zero_right](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/negativeprimeprimitive-zero-right.md) | 129 | `result-track:3b5f93c220178293c9a4c4de7f7c29ba7cd78188fba6d7749cc7adde87f7ee16` |
| 14 | `def` | [primePrimitiveSample](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primeprimitivesample.md) | 137 | `declaration-track:2115c3126d7fc0618e0b19cb2461203d9e64ef49323010255be4aab3a8adb13d` |
| 15 | `theorem` | [primePrimitiveSample_eq](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primeprimitivesample-eq.md) | 141 | `result-track:da70fce73abcc616748516304e207c28fdca0e2fd9d44b39792143e70c47bb21` |
| 16 | `theorem` | [primeSample_rescaled_integrable](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primesample-rescaled-integrable.md) | 150 | `result-track:5e41ad50b354b86b60f8ef9acc99cc246be46d8d8cf4a52e7c7ec2b460894dca` |
| 17 | `theorem` | [primeSample_integral_eq_primitive](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primesample-integral-eq-primitive.md) | 159 | `result-track:2a6b164e686f9f2ee90ed24d5997e85a1cbc6ec68744a91b280ca38da993bdf3` |
| 18 | `theorem` | [sampling_zero](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/sampling-zero.md) | 171 | `result-track:3cc68731f2d82e539e22073cb6905e18b9f4ba76370a2c1b0c96aeec959e6bc7` |
| 19 | `theorem` | [strict_sample_eq_padded](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/strict-sample-eq-padded.md) | 179 | `result-track:fbba53473793c209cec7caff2a5cc9c5eba1cdaf898f6bb062661d810c2948b3` |
| 20 | `theorem` | [sampling_padded_endpoint_zero](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/sampling-padded-endpoint-zero.md) | 205 | `result-track:0919639a57981073efefcd0d335ab21e6de3cf0df8d66329bae822068fdb192f` |
| 21 | `theorem` | [primePrimitiveSample_add_rankOne_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primeprimitivesample-add-rankone-abs-le.md) | 218 | `result-track:3f60744f4c9d662d88dfbfc571a1ce1783eff4201439ae069b64b3e3b2467640` |
| 22 | `theorem` | [difference_derivative_eq](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/difference-derivative-eq.md) | 236 | `result-track:fabebee6995b6acc8805c59c604e6dd72a3f61104420cab4ee22b11b3c21b2b1` |
| 23 | `theorem` | [difference_derivative_contDiff](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/difference-derivative-contdiff.md) | 242 | `result-track:832222da72b433573501f118d646f3d00bbb653ed1c1427422ef9231faede3e3` |
| 24 | `theorem` | [difference_second_derivative_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/difference-second-derivative-abs-le.md) | 252 | `result-track:02c8989fce309dd5edaf585e3a379939d88780d4c114e4b99717530cf46b719d` |
| 25 | `theorem` | [difference_derivative_zero_right](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/difference-derivative-zero-right.md) | 279 | `result-track:d6bee31b731fc6234ec02d21f129c891f3ff6b6309649236c4d1d48c5771f7ac` |
| 26 | `theorem` | [difference_derivative_sampling_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/difference-derivative-sampling-abs-le.md) | 287 | `result-track:530218b0994c3925321cca8f3d42272c4e45b1d794ac1a03f5d5505d029fe325` |
| 27 | `theorem` | [primeSample_hasDerivAt](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primesample-hasderivat.md) | 309 | `result-track:174b50b092952c8c8abbb79c8211f189106ab1b0d64ea46b12f112f73a80de6a` |
| 28 | `theorem` | [primeSample_derivative_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primesample-derivative-abs-le.md) | 325 | `result-track:9e460df2508e27cdb0b55657924a2788a5047a55524d1eba020f3e440f969919` |
| 29 | `theorem` | [scaledPrimeSample_hasDerivAt](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/scaledprimesample-hasderivat.md) | 338 | `result-track:c53d8d5bd1d6392fd2b5d93068dc91349a3498649a830e76fe878e80eca22937` |
| 30 | `theorem` | [scaledPrimeSample_derivative_integrable](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/scaledprimesample-derivative-integrable.md) | 346 | `result-track:035dff733c2ff1b08e7919a3d3eb2ea409d6d0f18fbb5e76eb7351cce4e5b01d` |
| 31 | `theorem` | [scaledPrimeSample_variation_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/scaledprimesample-variation-le.md) | 358 | `result-track:2e60a9753f53a55507ab8bed6b60d39b71d209564475dcadd6b15f86522accfd` |
| 32 | `theorem` | [primeSample_zero_of_exp_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primesample-zero-of-exp-le.md) | 376 | `result-track:6949e7cc9b9fef9c60ef19c80e44d17ea1db1dce7c507481493ca56b16528ba0` |
| 33 | `theorem` | [primeTheta_eq_padded_sum](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primetheta-eq-padded-sum.md) | 386 | `result-track:3d25e7694c1a9053d8c8fe954c18bfac82e232a70a5d691def8adb5b2cca76fb` |
| 34 | `theorem` | [primeTheta_sub_integral_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primetheta-sub-integral-abs-le.md) | 407 | `result-track:8352f7fdd1c2d34a0de7f6ede797b2393ad8e4744a2e79ac4f4b6e46a7919462` |
| 35 | `theorem` | [primeTheta_add_rankOne_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/primetheta-add-rankone-abs-le.md) | 431 | `result-track:0094f40e3bbb804b83bdc4de9220d8eeafeedc263f41334e193afef91eef19de` |
| 36 | `theorem` | [homogeneity_defect_abs_le](../../../../MeasureAndIntegration/HomogeneityDefectAuditNamespaced.lean/declarations/homogeneity-defect-abs-le.md) | 455 | `result-track:902aa4331c842ee01650e0862e7b491330b460d4dd8eff3b63ae214a54612660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce127b5d5caaafc336125e5f3f06ca03d3d16d96f6f6fd47e7f08d4922a2b808 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant76051d94eded511be6011e5c3de9aa16dff4579a415dad4953d08f2cb8e6deaa.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant76051d94eded511be6011e5c3de9aa16dff4579a415dad4953d08f2cb8e6deaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

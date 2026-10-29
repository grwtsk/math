# Verification target: Probability Density Density Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "151d395115028de4b1d556ef23fa48df0042fa13",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Density/Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `151d395115028de4b1d556ef23fa48df0042fa13`.

Source path: `GRWTSK/Analysis/MeasureTheory/Density/Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Density/Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.lean.json)

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
| 1 | `class` | [HasPDF](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/haspdf.md) | 65 | `declaration-track:4443445f293809c0f007fc58e61b67b092c8ae4d347f0947143a1f3b5886ac33` |
| 2 | `theorem` | [hasPDF_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/haspdf-iff.md) | 75 | `result-track:195618a77aa4c83ae3db78d34c5f0d6baa9cda6cc545d7f01d927c3555113c62` |
| 3 | `theorem` | [hasPDF_iff_of_aemeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/haspdf-iff-of-aemeasurable.md) | 79 | `result-track:ef84935a865ead012977094d1678cd7416e8544b30ae01642408771161d05043` |
| 4 | `theorem` | [HasPDF.aemeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/haspdf-aemeasurable.md) | 85 | `result-track:d95319d8337bbc7c529a4b0c9c7005a3f15f2ebedd7e493621a1fa940b523a6f` |
| 5 | `instance` | [HasPDF.haveLebesgueDecomposition](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/haspdf-havelebesguedecomposition.md) | 87 | `declaration-track:b82e74a7f67a81c1fe7d77fb902144e93efd5fce94446382a4c1d4e97b39b091` |
| 6 | `theorem` | [HasPDF.absolutelyContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/haspdf-absolutelycontinuous.md) | 90 | `result-track:37c3c68b9a5856d5794930df5b7e06a708550eecbbfd4e37f91a75421ce30d61` |
| 7 | `theorem` | [HasPDF.quasiMeasurePreserving_of_measurable](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/haspdf-quasimeasurepreserving-of-measurable.md) | 93 | `result-track:cfba77742b3ad3929aaabe87f28678e22f22f5b19f397957f8392d5e0cd270ad` |
| 8 | `theorem` | [HasPDF.congr](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/haspdf-congr.md) | 98 | `result-track:4258cefaf713a8e28e6ee3b09c367b560e8b384aeaa0473d6d501278b4d00d0d` |
| 9 | `theorem` | [HasPDF.congr_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/haspdf-congr-iff.md) | 102 | `result-track:2cdaf8839408c7334f5a2537bd8b514f5ebfb13c7f30aad0bb448496479f979a` |
| 10 | `theorem` | [hasPDF_of_map_eq_withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/haspdf-of-map-eq-withdensity.md) | 106 | `result-track:8beeb0ca21acdd4ea399b71c9cebb48be25431f5398baff8bbdef805aa70ebee` |
| 11 | `def` | [pdf](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/pdf.md) | 117 | `declaration-track:0ce5fe0911ae04f77889418833401d55990d6e217b8185ace22ff0ec21136b8d` |
| 12 | `theorem` | [pdf_def](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/pdf-def.md) | 121 | `result-track:56c21e78f61292f2b01625baeea48c0a01407dd4c3e46db1f5f2a37340cead92` |
| 13 | `theorem` | [pdf_of_not_haveLebesgueDecomposition](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/pdf-of-not-havelebesguedecomposition.md) | 124 | `result-track:8e9b5977b0d9e11cd11dd491c5d1d4d5fb2b26971ee75f9a76f3dbf853faf5eb` |
| 14 | `theorem` | [measurable_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/measurable-pdf.md) | 129 | `result-track:d75fe4dfa4e8a825e7b849426bfd44cdaa77fa8b0af3aad1758f30619bc07a70` |
| 15 | `theorem` | [withDensity_pdf_le_map](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/withdensity-pdf-le-map.md) | 133 | `result-track:5ad3f88af87970bdff42589fad0db5ca3e20b6ca743f15e98fb0fb377d5b33e4` |
| 16 | `theorem` | [setLIntegral_pdf_le_map](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/setlintegral-pdf-le-map.md) | 137 | `result-track:76081f82710f81db0f4c2eeed66edd25be3e0ca89adc7b3acda40856c867dffb` |
| 17 | `theorem` | [map_eq_withDensity_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/map-eq-withdensity-pdf.md) | 143 | `result-track:bfe392e234ab429c540773fd7883ea9687f287e15b9734aa34f0ae5e2bea888d` |
| 18 | `theorem` | [map_eq_setLIntegral_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/map-eq-setlintegral-pdf.md) | 148 | `result-track:3f6b9d962a6211eef233a0b15c23e0e7a079a482771e9eabf7fcebc54cdae8e0` |
| 19 | `theorem` | [congr](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/congr.md) | 157 | `result-track:fc5b939cf546eedc44d83c74220b9549a73255b84f81425b6f36d490544330ed` |
| 20 | `theorem` | [lintegral_eq_measure_univ](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/lintegral-eq-measure-univ.md) | 160 | `result-track:415fd1fb5d8efec0223f38fc59661fc2f9271ae245d6a975c4337fcb688a2768` |
| 21 | `theorem` | [eq_of_map_eq_withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/eq-of-map-eq-withdensity.md) | 165 | `result-track:38f3a99795c462df5ee4eb99027d573bff4f31ed66796110ec6566f5bc116f94` |
| 22 | `theorem` | [eq_of_map_eq_withDensity'](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/eq-of-map-eq-withdensity-source-edition-2.md) | 172 | `result-track:bc31b76e6c2dc409b8b2b95802d47465fd0b4d8878dca82413d1841ed55b44ba` |
| 23 | `theorem` | [ae_lt_top](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/ae-lt-top.md) | 177 | `result-track:c4fd583ac5db4a384d2e238555fc1b908935f246e098e4f5e64b156f0bd39ec2` |
| 24 | `theorem` | [ofReal_toReal_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/ofreal-toreal-ae-eq.md) | 181 | `result-track:8e06fee0d5e601d1068d9db5758e3209116ef1b475badc2d71e44ed45f4b3958` |
| 25 | `theorem` | [lintegral_pdf_mul](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/lintegral-pdf-mul.md) | 188 | `result-track:b305ba37a979ce84771be4e5ebd1bcbefe6920d7dce2929c4fd8fde8da414c9d` |
| 26 | `theorem` | [integrable_pdf_smul_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/integrable-pdf-smul-iff.md) | 196 | `result-track:469bfd8e3e0b213e06afd0fe18111a561e700e93a37652db8199372a76f9e042` |
| 27 | `theorem` | [integral_pdf_smul](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/integral-pdf-smul.md) | 207 | `result-track:c9823e85f900fcc3892c94c6ff24d0800c36913fc115b8e757c81a5e5fcd4e82` |
| 28 | `theorem` | [quasiMeasurePreserving_hasPDF](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/quasimeasurepreserving-haspdf-source-edition-2.md) | 224 | `result-track:d7d25ef7c00bd215eb571e70a866f9e159ab8ea487a0f679d6fc8c93a36cfba8` |
| 29 | `theorem` | [quasiMeasurePreserving_hasPDF'](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/quasimeasurepreserving-haspdf.md) | 231 | `result-track:c6fa7bebe2fcb588ff5fb0c1f1190042ccddf9528d6c6176e44a3589b530e9c6` |
| 30 | `theorem` | [_root_.Real.hasPDF_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/root-real-haspdf-iff.md) | 241 | `result-track:cc354e32df7e158588962307f9c58872595eb9428e9b88bce5d7a98618b04cc6` |
| 31 | `theorem` | [_root_.Real.hasPDF_iff_of_aemeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/root-real-haspdf-iff-of-aemeasurable.md) | 247 | `result-track:7bb4f6b48371f701f5b94943ae0581e23a9f660589aa6226c3275f98d567043e` |
| 32 | `theorem` | [integral_mul_eq_integral](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/integral-mul-eq-integral.md) | 255 | `result-track:55d73d136a780057b5296d44205c0813e47776d7e6a8e4a771ed8ababffddc97` |
| 33 | `theorem` | [hasFiniteIntegral_mul](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/hasfiniteintegral-mul.md) | 260 | `result-track:b59501f9084f29c0e91e045495587c3895c11290742c2ae8e34cca1a4e6c2d4d` |
| 34 | `theorem` | [indepFun_iff_pdf_prod_eq_pdf_mul_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/indepfun-iff-pdf-prod-eq-pdf-mul-pdf.md) | 278 | `result-track:0b5d5e8b90d55ac8ff563dc6320bf16a9fd2a58a9701316440ef30ff7f643e60` |
| 35 | `theorem` | [IndepFun.mul_hasPDF'](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/indepfun-mul-haspdf-source-edition-2.md) | 310 | `result-track:df5dec826cc1abc8357c366a333089a342b2ccedf3fe8226ea2bd6f9f6d0d285` |
| 36 | `theorem` | [IndepFun.mul_hasPDF](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/indepfun-mul-haspdf.md) | 321 | `result-track:0c7109d21f767d58849709aa3409339637ef093a7e8718f021a39229e9126972` |
| 37 | `theorem` | [IndepFun.pdf_mul_eq_mlconvolution_pdf'](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/indepfun-pdf-mul-eq-mlconvolution-pdf-source-edition-2.md) | 326 | `result-track:c4a00d4c9e89a69a2f962e78c7dd269cd79342b75f8e944f6e691fc1e5dff5ae` |
| 38 | `theorem` | [IndepFun.pdf_mul_eq_mlconvolution_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/declarations/indepfun-pdf-mul-eq-mlconvolution-pdf.md) | 333 | `result-track:1ce9f745a590d4656f72937afe840c4bec7b7efd99f0a726d9ba7c87d529e71d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=defed7415a978d2b8e433592cf0ea94e3f6e61d6f8757f5bbdee208847dc3b68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Density/Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Density/Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Source Dual Certificate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaff0da2a855d6a06073cdfcd5c86604fdbd31dc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualCertificate/Variant3cebac74d43bdfe3301d8b119fab7867c9a6b5c90f1a890789482636b95d6528.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaff0da2a855d6a06073cdfcd5c86604fdbd31dc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualCertificate/Variant3cebac74d43bdfe3301d8b119fab7867c9a6b5c90f1a890789482636b95d6528.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualCertificate/Variant3cebac74d43bdfe3301d8b119fab7867c9a6b5c90f1a890789482636b95d6528.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceReflectionArithmetic` — import line 6; external provider; requires a separately pinned dependency.
- `SourceMainTermOrigins` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualReflectedDualKernel](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/actualreflecteddualkernel.md) | 38 | `declaration-track:4019fcfd12b2228d1938861d79bfd7d3d382aad46ce284075c920f9ad7f56912` |
| 2 | `theorem` | [actualReflectedDualKernel_transport](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/actualreflecteddualkernel-transport.md) | 42 | `result-track:b8bc3c5bbf15cd2efc43766846c836a901eed9cf47ab53a8cc70a8fa2f1a6772` |
| 3 | `def` | [actualStationaryDualKernel](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/actualstationarydualkernel.md) | 49 | `declaration-track:033276515fd449a3cad77970c4e731fb9d01d82fffd87e48c4f2df14df2d1b72` |
| 4 | `theorem` | [actualStationaryDualKernel_transport](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/actualstationarydualkernel-transport.md) | 53 | `result-track:e1a963d9dbe0d84d084ad0eb568ed6baf4c1311becfe7bd656f3e2e6d138cf22` |
| 5 | `def` | [allReflectedMainTermDual](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/allreflectedmaintermdual.md) | 61 | `declaration-track:68739d39c0226a75f6c3cece6991773a40a4b940e80001023d7ffe36639e611c` |
| 6 | `def` | [allStationaryMainTermDual](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/allstationarymaintermdual.md) | 65 | `declaration-track:8ae54eb540684d64ca2724ace7d8e433e923f1605dc09ac7e7180a178d6f93bd` |
| 7 | `theorem` | [allReflectedMainTermDual_eq_neg](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/allreflectedmaintermdual-eq-neg.md) | 70 | `result-track:a039f7bde1f216a90bd1f35b9b2f7de0d3f9b730368382f0fe9c1422c8851fb5` |
| 8 | `theorem` | [allStationaryMainTermDual_eq_source](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/allstationarymaintermdual-eq-source.md) | 77 | `result-track:cfa5adb2746435cb47826aed5e543c65b253e7744a16752fbb7a4a18f1a6347b` |
| 9 | `def` | [actualJointRemainder](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/actualjointremainder.md) | 84 | `declaration-track:a2e3d486f43c22eb5c9459b918a460ed6d420a00fd9684cad552f3b80e9c560f` |
| 10 | `def` | [dualRemainderForMain](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/dualremainderformain.md) | 88 | `declaration-track:f1c8b7ffe71a9847314a8b194d3d15d6e1ec6670829837826cb34a6150f08865` |
| 11 | `def` | [mainTransportDefect](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/maintransportdefect.md) | 92 | `declaration-track:49f241ea027b75df8c1d88b4db4858635b8425715acd5bf80705207b37afb8fe` |
| 12 | `theorem` | [dualRemainder_eq_neg_joint_sub_defect](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/dualremainder-eq-neg-joint-sub-defect.md) | 96 | `result-track:52f265f343445655265e9600667a89a5b33bfcfac009c93a62c948a261e78ffd` |
| 13 | `def` | [actualReflectedDualRemainder](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/actualreflecteddualremainder.md) | 104 | `declaration-track:cad921fa6ab3e2f988408bfc28b81b24ae50846413cbaa633668357d78dcc166` |
| 14 | `theorem` | [allReflected_main_defect_zero](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/allreflected-main-defect-zero.md) | 108 | `result-track:44b1945e0a2dbb1af95ddc06f4ca55c17d658f2989f4af0e3f8a65b0fa4df979` |
| 15 | `theorem` | [actualReflectedDualRemainder_eq_neg](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/actualreflecteddualremainder-eq-neg.md) | 114 | `result-track:59d94e3f44d309a1865fa1ccc445416e6fa6d65f88a5198240c20b24ecbf7964` |
| 16 | `theorem` | [allStationary_main_defect](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/allstationary-main-defect.md) | 120 | `result-track:14525c240d355d33c4d0c3151dbe67daf4f9439672d4a736349b569bd285179d` |
| 17 | `theorem` | [joint_upper_of_dual_lower_and_defect_lower](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/joint-upper-of-dual-lower-and-defect-lower.md) | 127 | `result-track:ca144e09decfa603f5e3c8a5ea06788faaa054d902b675f83b08b6bd56325e88` |
| 18 | `def` | [DualLowerTailBudget](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/duallowertailbudget.md) | 137 | `declaration-track:daf1dd991a701ed65449d0ed055fee5f2baacdfa8bfe1e9e3838ed6ffc70482d` |
| 19 | `def` | [MainDefectLowerTailBudget](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/maindefectlowertailbudget.md) | 142 | `declaration-track:89854ba59158cc5f8c671528aa65a74ff9d2ada08a9813cff4f535df4bfca556` |
| 20 | `theorem` | [joint_tail_of_dual_budgets](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/joint-tail-of-dual-budgets.md) | 147 | `result-track:972958cf68ad74fffc18878a78888bc53d425a55c9b906f849d954abca718e97` |
| 21 | `theorem` | [residual_tail_of_dual_budgets](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/residual-tail-of-dual-budgets.md) | 161 | `result-track:f1d8fa86a668c05bf211b46bfaeb61ae3d0835eb6e0b1de4d414e6f4d2fab366` |
| 22 | `theorem` | [estimate_of_dual_budgets](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/estimate-of-dual-budgets.md) | 168 | `result-track:f8e418e92be02231cba1204d40168b0aad793a1b35a973651da4d675bb237baa` |
| 23 | `theorem` | [allReflected_main_defect_budget](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/allreflected-main-defect-budget.md) | 176 | `result-track:1c642310c3e59c9095ac56f61adfd2775ca48c185995f45b5a21def8e85314d7` |
| 24 | `theorem` | [allReflected_dual_budget_iff_joint_tail](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/allreflected-dual-budget-iff-joint-tail.md) | 184 | `result-track:55f7e8c7da8e919d476557122171acf8d2f30cfdf7fdc832b72dc8803d5da688` |
| 25 | `theorem` | [allReflected_dual_budget_iff_residual_tail](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/allreflected-dual-budget-iff-residual-tail.md) | 198 | `result-track:c16843d68b9a567d6eb02caaea039250375b9fb29e6c8bc84b630976f8ccdeb2` |
| 26 | `theorem` | [estimate_of_actualReflected_dual_budget](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/estimate-of-actualreflected-dual-budget.md) | 204 | `result-track:3f011201ea9f9b2e456841fc1070746a443592c80c4f9b471b0ae82594cb17e9` |
| 27 | `theorem` | [dualRemainder_original_fourier](../../../../MeasureAndIntegration/SourceDualCertificateNamespaced.lean/declarations/dualremainder-original-fourier.md) | 210 | `result-track:18cb9bc8ccec8f0ebd42cee54f103e6ebab9b199a093b23137177dc28e367492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b655162b06b062565cb5bdd6f4b9a0d4f14ff5286daee7190904e440461cd9ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualCertificate/Variant3cebac74d43bdfe3301d8b119fab7867c9a6b5c90f1a890789482636b95d6528.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualCertificate/Variant3cebac74d43bdfe3301d8b119fab7867c9a6b5c90f1a890789482636b95d6528.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

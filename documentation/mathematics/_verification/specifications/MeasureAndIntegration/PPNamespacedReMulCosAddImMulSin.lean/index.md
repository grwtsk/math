# Verification target: PPNamespaced Re Mul Cos Add Im Mul Sin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "287aac26488973ac9803facd5f914ae4e86e1a8d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `287aac26488973ac9803facd5f914ae4e86e1a8d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.PPChi` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [re_mul_cos_add_im_mul_sin](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/re-mul-cos-add-im-mul-sin.md) | 66 | `result-track:9f33c821fdfe21bb358ab69f5784f6f29df223f0fdeadd205ba564ab2def0fb8` |
| 2 | `def` | [wcoef](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/wcoef.md) | 82 | `declaration-track:a0a0a82ed729d940828e8bef069e148824905b45d289c8e6711249685f3dd0ec` |
| 3 | `lemma` | [wcoef_nonneg](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/wcoef-nonneg.md) | 84 | `result-track:4e1a0f8847f053866fd61bc80de441d5b958e605bbc7d2f7fd6460f20223145c` |
| 4 | `lemma` | [wcoef_sq](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/wcoef-sq.md) | 87 | `result-track:b8fd99e4a45c6d5c10c717b70056019e18c3c5261d930600249fa2f5c28160e8` |
| 5 | `lemma` | [wcoef_sq_mul](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/wcoef-sq-mul.md) | 91 | `result-track:69df3059aed3e9721509fec660a97ed35ddfede0603e186279874112d71af8c1` |
| 6 | `lemma` | [wcoef_one](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/wcoef-one.md) | 96 | `result-track:43f86b8bc35231e3c33257c7752d8a670d6c1a6e1324be518a6223b52855ae21` |
| 7 | `lemma` | [Pc_eq_sum](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/pc-eq-sum.md) | 101 | `result-track:7a4f0dcdfa1695a9df856ecac155fed10485ea91b8d00081aeff6b840d72c087` |
| 8 | `def` | [cosPolyPh](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/cospolyph.md) | 120 | `declaration-track:7e4626313709b9c455d47ea10376fb8cf5b5fe93e2186258b454eb10c43e3ac6` |
| 9 | `lemma` | [Mform_cosPolyPh](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/mform-cospolyph.md) | 126 | `result-track:88564eaac3f7f5dab9a144cb67421ab73da38acf1382bc9161d53a563d69195a` |
| 10 | `lemma` | [diag_estimate_w](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/diag-estimate-w.md) | 186 | `result-track:ade758297e4504e9d5979e2119e1592d2458b87ef7ceb8313fda8adc9fd6091c` |
| 11 | `lemma` | [w_eq_zero_or_two_le](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/w-eq-zero-or-two-le.md) | 214 | `result-track:9c9b789ecfa05ac92638f4045a609533181a485998183fd700a43f0f28e8ec30` |
| 12 | `lemma` | [O2_estimate_w](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/o2-estimate-w.md) | 224 | `result-track:46d8dcce97ee2a11e703309943c1ca8fe2583fb1bac4d8f536c45659d4d20487` |
| 13 | `lemma` | [MV_size_le_w](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/mv-size-le-w.md) | 262 | `result-track:fbbd776332060730c739346af0cafda5db17da169646e5998b55e0986ce638a1` |
| 14 | `lemma` | [MV_four](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/mv-four.md) | 309 | `result-track:f06f0333bd3a73c7d845c2d687d9d717440d0ea348d169bde6b7a5738f2db8ee` |
| 15 | `theorem` | [O1_bound_w](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/o1-bound-w.md) | 331 | `result-track:e1a43f199e8e86dcd8aeff57a43a7fb37ee0783fc50a1dfe6fa56c838b5cbbf2` |
| 16 | `lemma` | [Mform_Pc_Pc](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/mform-pc-pc.md) | 444 | `result-track:4968064e0b1a2d9d77edab025d31912be754dbd6b654fd2426e97f128fc9517c` |
| 17 | `def` | [KPP](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/kpp.md) | 462 | `declaration-track:59998746a587e16bfa3c08a83a328eaae30d788099dff282c0dd4cb79ec102b3` |
| 18 | `theorem` | [prop_PP_c](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/prop-pp-c.md) | 470 | `result-track:046f6769c02f98ccaa63683fec4a6471a569dcab0f30014817952125fd4b460e` |
| 19 | `theorem` | [prop_PP_c'](../../../../MeasureAndIntegration/PPNamespacedReMulCosAddImMulSin.lean/declarations/prop-pp-c-source-edition-2.md) | 594 | `result-track:d6f0a45d2279f6c67fe38fd075673b4eb4dfdc323104da2c5724de492412822e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5d4133d939238718855d9e1172b5d9a5d4d8b3dad8f12ced4a049e71c8f6189 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

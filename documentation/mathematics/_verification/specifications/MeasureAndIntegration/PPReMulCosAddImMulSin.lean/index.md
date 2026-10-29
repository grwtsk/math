# Verification target: PPRe Mul Cos Add Im Mul Sin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53f44380c7a4ec8099d45d329c081f43824d4a9e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53f44380c7a4ec8099d45d329c081f43824d4a9e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.PPChi` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [re_mul_cos_add_im_mul_sin](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/re-mul-cos-add-im-mul-sin.md) | 58 | `result-track:331d91f90fa54a56154cc9404c809d474c1fd8c48a4e73820973c76c2720ffb0` |
| 2 | `def` | [wcoef](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/wcoef.md) | 74 | `declaration-track:a61754d7bcab34d6503c5dd28ca3bbffa4c128108e334f82d4a85acf163636dc` |
| 3 | `lemma` | [wcoef_nonneg](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/wcoef-nonneg.md) | 76 | `result-track:feabd16ed1bea4af55ea2c184b911d77ce925d7d2bcf7050923e3cf89cb75382` |
| 4 | `lemma` | [wcoef_sq](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/wcoef-sq.md) | 79 | `result-track:4066b91898ff57a1175d1fb05e5f0bb2d7488eddffd74586d9a87392fa5adbe0` |
| 5 | `lemma` | [wcoef_sq_mul](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/wcoef-sq-mul.md) | 83 | `result-track:78e08994b783a02598d90f02d5065fb93fad1f125fa35f2aeea452ca3d0d0936` |
| 6 | `lemma` | [wcoef_one](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/wcoef-one.md) | 88 | `result-track:ef9566f3e27ad28fc6989732186eb9ccd65a885ccd47dce83ccef033114d25f8` |
| 7 | `lemma` | [Pc_eq_sum](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/pc-eq-sum.md) | 93 | `result-track:14f90171de511d3905ad5e54e88f7d3095b70fd1cd4a4ace8e8e2f03044cf9c4` |
| 8 | `def` | [cosPolyPh](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/cospolyph.md) | 112 | `declaration-track:08e02160159490f22ef0d27fe8f5aa7cce693bff0c565cb83ff5319d8c89ff98` |
| 9 | `lemma` | [Mform_cosPolyPh](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/mform-cospolyph.md) | 118 | `result-track:36c4e094aaecdd2b31d5f14ac3c1853c2409de6aa484447c5cc992b7ed4fc70a` |
| 10 | `lemma` | [diag_estimate_w](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/diag-estimate-w.md) | 178 | `result-track:3494766b2f52bc5ab78fce97e8ae8f91c22139a1216159c1bcf0a2daa5936636` |
| 11 | `lemma` | [w_eq_zero_or_two_le](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/w-eq-zero-or-two-le.md) | 206 | `result-track:a9d780eb73a4fa8f4bbf3b8172ac91553f59353de21df47fff094d8c850ff031` |
| 12 | `lemma` | [O2_estimate_w](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/o2-estimate-w.md) | 216 | `result-track:5c34d66f15533252de18ec1b153930eef4ce2065ae23852b40552a88b78208a9` |
| 13 | `lemma` | [MV_size_le_w](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/mv-size-le-w.md) | 254 | `result-track:ba9788521874e9c957042acbee4a8fd7a8f61d66c726a36bfdd73f2e63e0b17e` |
| 14 | `lemma` | [MV_four](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/mv-four.md) | 301 | `result-track:059952fe150aa44224d0379a538884f6a258dd619c0a9c114af302018881633b` |
| 15 | `theorem` | [O1_bound_w](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/o1-bound-w.md) | 323 | `result-track:99ff503b6d3fea72234ee51e28285b3bc299258bbf2ff1af774542ef74827a92` |
| 16 | `lemma` | [Mform_Pc_Pc](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/mform-pc-pc.md) | 436 | `result-track:b76d5b5f61948833f4b738684a505a6817be360ddb39036b8784df44e481a615` |
| 17 | `def` | [KPP](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/kpp.md) | 454 | `declaration-track:928ac4b266cbcf5b8dd37d91354418377a840fe267ce5af51a1cecb747a605c8` |
| 18 | `theorem` | [prop_PP_c](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/prop-pp-c.md) | 462 | `result-track:762de14cdf6e93557dfebefa81f500ddc5a82759769f146852bca6cc99858def` |
| 19 | `theorem` | [prop_PP_c'](../../../../MeasureAndIntegration/PPReMulCosAddImMulSin.lean/declarations/prop-pp-c-source-edition-2.md) | 586 | `result-track:f42ace5d1250c2b984c08007a4a4cda261c64e032d8db9485f57858b993f38ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5206eeeafc568a51580576b10092a51458d9415d9adfdda194dd2351fc56c86d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Full Line Hfn Apply

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2ae92dfd3852a435f3b7d5adc13cdde73073280`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.Contour` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Hfn_apply](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/hfn-apply.md) | 30 | `result-track:f311d9446a2336c6ef44b4abbd88e8e3bbc8949e6288c61c3c12e64a53047855` |
| 2 | `theorem` | [norm_Hfn_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/norm-hfn-le.md) | 37 | `result-track:98f2eb14c7ee8003f2794cf5fe6f3f3db7d4a49c9ee7d6380bcac4c21bef0d1f` |
| 3 | `theorem` | [continuous_Hfn_line](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/continuous-hfn-line.md) | 84 | `result-track:d74bbb19d5b2c0cf8b7a1f58e5c529df697dad6922897d30bb1c41d436c4277b` |
| 4 | `theorem` | [norm_logDeriv_zeta_le_of_one_lt_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/norm-logderiv-zeta-le-of-one-lt-re.md) | 92 | `result-track:ce4575828a942d4eef08d7802e09cf8a6335c5d34064372a0a1d0d2bbd6f959d` |
| 5 | `theorem` | [continuous_logDeriv_zeta_line](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/continuous-logderiv-zeta-line.md) | 117 | `result-track:3406a68bf6bd224d95917ab73cf5c3e85c92b15f5b4beb9fed14f8bd8494d6fc` |
| 6 | `theorem` | [integrable_mul_logDeriv_zeta_of_decay](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/integrable-mul-logderiv-zeta-of-decay.md) | 134 | `result-track:57c964515d8dea00b55e3e307fae6ac25bd738aa2eedcf16cfa4dd0478cc9d39` |
| 7 | `theorem` | [integrable_Hfn_mul_logDeriv_zeta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/integrable-hfn-mul-logderiv-zeta.md) | 149 | `result-track:921b0c803f620fcbf835136a19e9541144fa99ed5fed5207044dc5108725c2f5` |
| 8 | `theorem` | [log_two_add_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/log-two-add-le.md) | 157 | `result-track:18532fcc36d1039a770d2af24220cf793b29ec8a88cbe72c39b6c5d7ad8852ea` |
| 9 | `theorem` | [continuous_logDeriv_Gammaℝ_line](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/continuous-logderiv-gamma-line.md) | 183 | `result-track:4b17017fa88a508dd3ae26598b39c8ae81a35ec96fdab673342a4e675f2f12ce` |
| 10 | `theorem` | [integrable_mul_logDeriv_Gammaℝ_of_decay](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/integrable-mul-logderiv-gamma-of-decay.md) | 211 | `result-track:072ae5467918dcc4f23c8bc4b179dd1a4e9f1e4c9367818bf0662c984e95c511` |
| 11 | `theorem` | [integrable_Hfn_mul_logDeriv_Gammaℝ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/integrable-hfn-mul-logderiv-gamma.md) | 273 | `result-track:fa5e1003b8a689f087fabeca5a94de98e58805796512b310e7f66e2f26dd52d1` |
| 12 | `theorem` | [completedZeta_ne_zero_on_horizontals](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/completedzeta-ne-zero-on-horizontals.md) | 288 | `result-track:a7e3721069d5870089af8036ffe41dd7a76c76a8e7dddb91c00542c24eb2102b` |
| 13 | `def` | [Fline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/fline.md) | 322 | `declaration-track:6adf6bb7fb5d27bf5b3b98e8ade80b5bdc76305b6492aead0c348a9ab0763f5f` |
| 14 | `theorem` | [one_sub_cast](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/one-sub-cast.md) | 325 | `result-track:7f4863cb49edcb85e77be54938969bd16b5821e76f05e22915180bf4859329c0` |
| 15 | `theorem` | [continuous_Hfn_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/continuous-hfn-reflect.md) | 329 | `result-track:e661dfeb2cfa8b73c15acaccd3dc13e0625098b191d42ee6ade1bd1fa10a7dbe` |
| 16 | `theorem` | [logDeriv_completedZeta_line](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/logderiv-completedzeta-line.md) | 337 | `result-track:551bd71ff61372bd7450fc37b3e1fdc704f99c2721a0301f2387519a98514aa6` |
| 17 | `theorem` | [integrable_Fline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/integrable-fline.md) | 346 | `result-track:521733b3f0e9ec6859e8969d6f8239f8af28717a58939ee549222d7e2ed93003` |
| 18 | `theorem` | [verticals_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/verticals-eq.md) | 369 | `result-track:449646f83ca6a3a195622c62393a14b80ea3261468f742881554a65a38ce2423` |
| 19 | `theorem` | [tendsto_interval_Fline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FullLineHfnApply.lean/declarations/tendsto-interval-fline.md) | 415 | `result-track:1619a057c5c667ae884efdeed3aae596e8bc1faf4c189e616a9a51e606991c81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=277384eca6e9ae8f04e082157b2ade7126f8cdd507436f5250eed7e763fc7f00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Mv Power Series Evaluation Evaluation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c0349331a0f4571ac8e5122ce0f01085e426d2a",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c0349331a0f4571ac8e5122ce0f01085e426d2a`.

Source path: `GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean.json)

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
| 1 | `structure` | [HasEval](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval.md) | 66 | `declaration-track:144255829c87f30a3ea7305ad2b4c6941d1be5db1f2fb7661c9d87a0307e2c87` |
| 2 | `theorem` | [HasEval.mono](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-mono.md) | 70 | `result-track:994bd24b0430483c7ea0eaafe7e9a694230ac3826ca47b2ab010964914df4cd9` |
| 3 | `theorem` | [HasEval.zero](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-zero.md) | 76 | `result-track:715a9dd9bd40187b2ae651f45aebf6e052bdf37140b2039b15f2da2872f2519b` |
| 4 | `theorem` | [HasEval.add](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-add.md) | 80 | `result-track:86bd7b77842b17ed95990c67128d6f2e2a57f1686f8a8a8f296a0f750441100d` |
| 5 | `theorem` | [HasEval.mul_left](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-mul-left.md) | 85 | `result-track:d24f9b3994ebeef6b3994a8af8692e0bfc4159c4b5b6ca55bea77c9390e6b7a7` |
| 6 | `theorem` | [HasEval.mul_right](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-mul-right.md) | 90 | `result-track:20154d03cd8b20fc4ca836bcb0bf14e3607bedb678f3cf7a84e4fc4ba15a4c20` |
| 7 | `theorem` | [HasEval.map](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-map.md) | 95 | `result-track:2a4f005438804814a41989f0fd3d3e76e507a6d0ece8cfb9ceb9ffab3a97b570` |
| 8 | `theorem` | [HasEval.X](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-x.md) | 100 | `result-track:711833d51f091fa94a1c3e5415cde18ea207f6876300300df96bcc376213c409` |
| 9 | `def` | [hasEvalIdeal](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/hasevalideal.md) | 109 | `declaration-track:2bc27a779875eadfa039281b32a0f3da124ee4b2a7e66506c676b28388d4b0ac` |
| 10 | `theorem` | [mem_hasEvalIdeal_iff](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/mem-hasevalideal-iff.md) | 115 | `result-track:1716219056a9bb0e8d51aac97774da550096f74a9cb90ca523125c57f2e5f959` |
| 11 | `theorem` | [HasEval.pow](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/haseval-pow.md) | 119 | `result-track:b69fba44351fc11bd63683cf8398afd87bf755caa16a86f0ed365a1a49f83d39` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/instance.md) | 138 | `declaration-track:aaaba2654c6a25dd7e58c9b5654c287db8fe8dffbbbd086b588d77fbe899070d` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/instance-source-edition-2.md) | 142 | `declaration-track:c4b9672cad10feb3f3d19c9d4c7ea14947b94747532b23170898e688e9a8b9e0` |
| 14 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_isUniformInducing](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/root-mvpolynomial-tomvpowerseries-isuniforminducing.md) | 145 | `result-track:e2471b85da0269349cd27f1a93f195569e6d6bfcc80cdefb036704349b48c5a5` |
| 15 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_isDenseInducing](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/root-mvpolynomial-tomvpowerseries-isdenseinducing.md) | 149 | `result-track:755da40ad2eccada029f051cb85510683c52fdda6aae2dd9df9c52094af7b6ef` |
| 16 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_uniformContinuous](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/root-mvpolynomial-tomvpowerseries-uniformcontinuous.md) | 157 | `result-track:3a3f7a17bf71f8ddd6ea8a142c74e42d9730d7146ddc19e88262a059b72d786d` |
| 17 | `def` | [eval₂](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/eval.md) | 201 | `declaration-track:253dd7f21cc29d9b7fae3747b8f7fef87763e13b91773c4739af25ac903f1e03` |
| 18 | `theorem` | [eval₂_coe](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-coe.md) | 206 | `result-track:04d03becd54f027c625df167533eddd851d8cfb24ca1494e0405733a37f926e7` |
| 19 | `theorem` | [eval₂_C](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-c.md) | 214 | `result-track:725f76518998b0cec248e04e2f8f4dc0fe115abf801a2e4f85d6da37e476ccb5` |
| 20 | `theorem` | [eval₂_X](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-x.md) | 218 | `result-track:f0fafdbaeea3e82e135c0b1a86078d33a99e760b4c30d37b33552bfba3a70fa2` |
| 21 | `def` | [eval₂Hom](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-hom.md) | 228 | `declaration-track:9af3ecfe09875186077bdb64f15be1d245bc0851aef1214c7b4dac05a60528bd` |
| 22 | `theorem` | [eval₂Hom_eq_extend](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-hom-eq-extend.md) | 235 | `result-track:7d03e227ae872851a38a4f6dc81fd9a03a109a9de62facf64da7fba250828616` |
| 23 | `theorem` | [coe_eval₂Hom](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/coe-eval-hom.md) | 240 | `result-track:866cdda02f15c3719c05bbdaa7239bbf8cf132d469dbcb19d21fdac5925d0b40` |
| 24 | `theorem` | [uniformContinuous_eval₂](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/uniformcontinuous-eval.md) | 254 | `result-track:f6f7fcc564b2f6c8138ea9d4aec6a4c54ab4a9f8ccccb360d1813383d1384cb1` |
| 25 | `theorem` | [continuous_eval₂](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/continuous-eval.md) | 262 | `result-track:abc042456beb1d38b21db3a7119ee840667f99d26cf9b05b9afc47d1923bb26e` |
| 26 | `theorem` | [hasSum_eval₂](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/hassum-eval.md) | 266 | `result-track:75a0c2a74d07e7f18faf8976c4de5bdc583b6e1a5bfdc20c87f655358b6e1b68` |
| 27 | `theorem` | [eval₂_eq_tsum](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-eq-tsum.md) | 276 | `result-track:ad8af710bc49d58b0d0ba3752a92455c7c10aea2b98743c6099ca9000b85157f` |
| 28 | `theorem` | [eval₂_unique](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/eval-unique.md) | 281 | `result-track:528dfd22acd817d05f3bf9a7eb9d1972210051a95d6433a5f7e8505b27dd262a` |
| 29 | `theorem` | [comp_eval₂](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/comp-eval.md) | 288 | `result-track:8f686d59f9fa7c7c7d20bd45592de69ea42f23e1d105a7eee9b84e314f597d0b` |
| 30 | `def` | [aeval](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/aeval.md) | 304 | `declaration-track:9fb99c82ff84b929cab5e76dffaa14bbdc47fe1994765e6e90c2d819c7a5ef73` |
| 31 | `theorem` | [coe_aeval](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/coe-aeval.md) | 310 | `result-track:ff605c8086e846a02eed8ce2d839b79e93201f1c3a6683ffcea9bb8621ceb9b0` |
| 32 | `theorem` | [continuous_aeval](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/continuous-aeval.md) | 314 | `result-track:50ae268d72ee6254e1574f5d3275db5b05a9e8142e87f35f6c93cff7b596f178` |
| 33 | `theorem` | [aeval_coe](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/aeval-coe.md) | 320 | `result-track:0bcfc311f0b7f6a14073a279ee2afc6b5fd4c6affc8927820eac63118529e9e0` |
| 34 | `theorem` | [aeval_unique](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/aeval-unique.md) | 324 | `result-track:590efe0df697f42f26fa43fd46ef3bdd8e59204ace1375f262cb44c5075307d9` |
| 35 | `theorem` | [hasSum_aeval](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/hassum-aeval.md) | 335 | `result-track:dfe4511e90ee92e1d0f36c8e9b234c7ec1edf7656881e67b27e96094c6ebe073` |
| 36 | `theorem` | [aeval_eq_sum](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/aeval-eq-sum.md) | 341 | `result-track:83e8f17eccb11eff3c0678996e097f1e659c435b209a28e19a5b40c14d10c01b` |
| 37 | `theorem` | [comp_aeval](../../../../CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/declarations/comp-aeval.md) | 346 | `result-track:ae90e885fff2f9c860ba8010dd3f811a22ebd5649801da1d7f457a7b665aa481` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2de6941d3678db9f20eea9b8b94e0b1032c4620fa019e903e3128e93850570e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

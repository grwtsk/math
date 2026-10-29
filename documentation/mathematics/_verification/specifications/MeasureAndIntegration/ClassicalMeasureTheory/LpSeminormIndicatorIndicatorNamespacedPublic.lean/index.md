# Verification target: Lp Seminorm Indicator Indicator Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80d15ec912ab377c581f26725b6c103050a031e2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80d15ec912ab377c581f26725b6c103050a031e2`.

Source path: `GRWTSK/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eLpNorm_indicator_eq_eLpNorm_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnorm-indicator-eq-elpnorm-restrict.md) | 46 | `result-track:7517ee47b85f260e05c6a1bf21015771b88bbc4f477141e5d1d519ff8a4a2399` |
| 2 | `lemma` | [eLpNormEssSup_indicator_eq_eLpNormEssSup_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnormesssup-indicator-eq-elpnormesssup-restrict.md) | 70 | `result-track:c6806bb9db4b4d0466cfc898c85fb26c112f9229457a4e3e0cc6638e5319a73e` |
| 3 | `lemma` | [eLpNorm_restrict_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnorm-restrict-le.md) | 75 | `result-track:bc70c1f27a911a70ab97585ed074e12c3c3b2c9dc6a19958db1702657fc3a193` |
| 4 | `lemma` | [eLpNorm_indicator_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnorm-indicator-le.md) | 79 | `result-track:d5f5b75f9bcba7d83b52a0b81d6c19263b92f245f265cb80f0f666212f2dc06e` |
| 5 | `lemma` | [eLpNormEssSup_indicator_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnormesssup-indicator-le.md) | 88 | `result-track:7c6a8ed776c28a419186204e12f5fed5f23852faf43d9688f32156b111c69835` |
| 6 | `lemma` | [eLpNormEssSup_indicator_const_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnormesssup-indicator-const-le.md) | 94 | `result-track:7a82e46152fc8b1a0a0644946c7cb2b24fb87e1b78e9ccf3b244634b4f60c6c8` |
| 7 | `lemma` | [eLpNormEssSup_indicator_const_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnormesssup-indicator-const-eq.md) | 100 | `result-track:dda7ba934a85deb595e04b9774fc38479ed86a7bcb269fda4c4ec1ff489b7e1e` |
| 8 | `lemma` | [eLpNorm_indicator_const₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnorm-indicator-const-source-edition-3.md) | 109 | `result-track:ade26baa5a73ddf77ef9109bad794d8daa57efd2a04c42a57d62596fe75c0c54` |
| 9 | `lemma` | [eLpNorm_indicator_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnorm-indicator-const-source-edition-2.md) | 127 | `result-track:8eaf966a9ef9ddfb633d3670dea5de746217433c6ae8cfc7b4561f2f1178602c` |
| 10 | `lemma` | [eLpNorm_indicator_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnorm-indicator-const.md) | 131 | `result-track:2448a9ee984f08d878d8f2623dacb34187bf6abd868cb359903bdeaec4a2c561` |
| 11 | `lemma` | [eLpNorm_indicator_const_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnorm-indicator-const-le.md) | 140 | `result-track:002ab265321efaba6088f34a31b601cfe665ed7a67315a3ef1beb64cc0acf2b8` |
| 12 | `lemma` | [MemLp.indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/memlp-indicator.md) | 159 | `result-track:d20c1b4add393e326af282b72d1e1f2c9fe8fc828e1cf3b016820f0871f208b7` |
| 13 | `lemma` | [memLp_indicator_iff_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/memlp-indicator-iff-restrict.md) | 163 | `result-track:7509585783dd8eb9cad88b7651087965e8e6c4539d60532b58a97e44a168f139` |
| 14 | `lemma` | [memLp_indicator_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/memlp-indicator-const.md) | 167 | `result-track:66e31cf4535bf7699b12ea853f8b982b2de6c6c0eb01f933a4d73592e73c20be` |
| 15 | `lemma` | [eLpNormEssSup_piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnormesssup-piecewise.md) | 175 | `result-track:a96764ec8edae7e0575ccebe89b16908c60f92032d66b4b457e20d964f78e06d` |
| 16 | `lemma` | [eLpNorm_top_piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnorm-top-piecewise.md) | 182 | `result-track:e0138d32ba22cd2ba51a6ba5221c28924b8bef5c2b303475a5da5b23590d99b4` |
| 17 | `lemma` | [MemLp.piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/memlp-piecewise.md) | 194 | `result-track:e6957891a12b3873e2e69ec8e6738b6d0bf08e316cae2baf0c4745aacf45dbb7` |
| 18 | `theorem` | [eLpNorm_indicator_sub_le_of_dist_bdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnorm-indicator-sub-le-of-dist-bdd.md) | 219 | `result-track:7546bdd4d7350af94d648f0bf2b166335d7727731d5e986efd7111a898dbc74c` |
| 19 | `theorem` | [eLpNorm_sub_le_of_dist_bdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/elpnorm-sub-le-of-dist-bdd.md) | 238 | `result-track:53112478553ef9e5c9c4cc5afa479f866b68a683a0b488ff6f8ec63fc49a8498` |
| 20 | `theorem` | [MemLp.exists_eLpNorm_indicator_compl_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSeminormIndicatorIndicatorNamespacedPublic.lean/declarations/memlp-exists-elpnorm-indicator-compl-lt.md) | 256 | `result-track:4df709ef3b250e3b97954b2e4281ed43de18b2d048522bf42db2fe36594d2cda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c66d4385f150ce953f851283efd95c5d5df5285322bf528ff44e42e93696f66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

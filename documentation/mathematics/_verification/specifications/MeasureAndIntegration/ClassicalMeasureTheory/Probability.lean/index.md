# Verification target: Probability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63c76ac537cf2761791e6db1c56a2f7666661e9a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63c76ac537cf2761791e6db1c56a2f7666661e9a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.Finite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsZeroOrProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/iszeroorprobabilitymeasure.md) | 28 | `declaration-track:9f94efb6fa06af777cdf63aca19eb6b1de0335c4415ca2076219bde5520da85d` |
| 2 | `lemma` | [isZeroOrProbabilityMeasure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/iszeroorprobabilitymeasure-iff.md) | 31 | `result-track:159716ce3d92eed2f109aa253d4b080841026080158ceb378782fc6b8d0538c7` |
| 3 | `lemma` | [prob_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/prob-le-one.md) | 34 | `result-track:8cd1cbcb2d658d060b44494fa099a3a2ab5d7a39bfd0c7378278ab9f9a4a68fa` |
| 4 | `lemma` | [measureReal_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/measurereal-le-one.md) | 38 | `result-track:426387ada16426de3f2b79343fd0a2a88cc3f7969fbe34cd7c2f87ce0712390f` |
| 5 | `theorem` | [one_le_prob_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/one-le-prob-iff.md) | 45 | `result-track:006646fc9a97f3b914f21d6ab49127408f0ab2e384236b88b8da27a503ee3d48` |
| 6 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/instance-source-edition-2.md) | 48 | `declaration-track:0b9ec8b1dfe3724f9beb1695a5fbc373053e252532d7bc56d06b4dab1db0cb0c` |
| 7 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/instance-source-edition-5.md) | 52 | `declaration-track:bf43503836c57468dc22969917ca928e5121ef9a42bfb97d382a927cbce6ed1d` |
| 8 | `class` | [IsProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/isprobabilitymeasure.md) | 60 | `declaration-track:d026bc2bc1e9d2c1c14cf2d85568ea4e102540d309a231c3bdd2f5a0f33bbc94` |
| 9 | `lemma` | [isProbabilityMeasure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/isprobabilitymeasure-iff.md) | 67 | `result-track:b79676dcc9d540968a5e64f097536cb82dd50c90ca7293ea0787aecb1f2e1023` |
| 10 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/instance-source-edition-4.md) | 70 | `declaration-track:25baac8d6ff3437bea56d275d2a32ef47e07b61caaa9aa328589bbbfc778e1d0` |
| 11 | `theorem` | [IsProbabilityMeasure.ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/isprobabilitymeasure-ne-zero.md) | 74 | `result-track:82f1ab1ff40a1141c41a17004e5e75c75f86adea93ebe4cf79c09f9420600948` |
| 12 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/instance-source-edition-3.md) | 77 | `declaration-track:0f31ef1448b90bfffb8f67bf5a58c55d5a13194fc284236e5acaab03ade3fd8c` |
| 13 | `theorem` | [IsProbabilityMeasure.ae_neBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/isprobabilitymeasure-ae-nebot.md) | 80 | `result-track:15532519fd9c64c4e641cd795ee7b78aea724dbafe9da9d43d961fe075bdf1ec` |
| 14 | `theorem` | [prob_add_prob_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/prob-add-prob-compl.md) | 82 | `result-track:65d0fc13518569f32da41aa0fe7ea675d43ff08a8211756cdf2fc0e0db453895` |
| 15 | `instance` | [isProbabilityMeasureSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/isprobabilitymeasuresmul.md) | 85 | `declaration-track:578160fcbf7395c27a25f52a4f7310739801f350120a3bb6cf22bdace172b892` |
| 16 | `theorem` | [isProbabilityMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/isprobabilitymeasure-map.md) | 91 | `result-track:2baf84ceb54dcefa989984497e8f74dbad2d02cd724f8b3c313140ebc353b16c` |
| 17 | `instance` | [IsProbabilityMeasure_comap_equiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/isprobabilitymeasure-comap-equiv.md) | 95 | `declaration-track:2ae9113d37b8f4b650a546ab073cf8bef3d9d35a6136612f1fa984e79dc5fa5e` |
| 18 | `lemma` | [prob_compl_eq_one_sub₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/prob-compl-eq-one-sub-source-edition-2.md) | 101 | `result-track:f3e502b3f0b7f9dd94cd34ad5fd693a47f50173444c6e0ff209c3fd781ec4f74` |
| 19 | `theorem` | [prob_compl_eq_one_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/prob-compl-eq-one-sub.md) | 107 | `result-track:216d27058fc6f5ad70dd591aa98d3da423e1d5716d7787ef0b3973c14c172bbe` |
| 20 | `lemma` | [prob_compl_eq_zero_iff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/prob-compl-eq-zero-iff-source-edition-2.md) | 110 | `result-track:87128b4962f1491eab85185ed824fc69715367b5753ac928b40a6fdcb57e5d3f` |
| 21 | `lemma` | [prob_compl_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/prob-compl-eq-zero-iff.md) | 113 | `result-track:57a845952ea412f73614c3cacdd4c7d5467e8119f32d7b53c3a1fb7bc168754e` |
| 22 | `lemma` | [prob_compl_eq_one_iff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/prob-compl-eq-one-iff.md) | 116 | `result-track:1a85c886ba8e8f38083922c191368487df0b634d8e9c2060be82a3881f18b185` |
| 23 | `lemma` | [prob_compl_eq_one_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/prob-compl-eq-one-iff-source-edition-2.md) | 119 | `result-track:e03d07f8825842ef923f29afd9bf018bf0daa7afbff9e70638b774f6b589c3aa` |
| 24 | `lemma` | [mem_ae_iff_prob_eq_one₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/mem-ae-iff-prob-eq-one-source-edition-2.md) | 122 | `result-track:e7b0abf2429487608b8cfb0fbe61b071aaf1a26499fe8a5f340eb4e9099c64d1` |
| 25 | `lemma` | [mem_ae_iff_prob_eq_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/mem-ae-iff-prob-eq-one.md) | 125 | `result-track:136c96a1381bf3a4da4656dc9dc39ac4aeeec263ad328659af3b2c177631134a` |
| 26 | `lemma` | [ae_iff_prob_eq_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/ae-iff-prob-eq-one.md) | 128 | `result-track:1006a95fe8fa2e75dccb67ed88fedf1f590ef6c440dce3071cc4c969d63d3138` |
| 27 | `lemma` | [isProbabilityMeasure_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/isprobabilitymeasure-comap.md) | 131 | `result-track:b523ff98ce4e4bbb4052c5033aa300aa780df944cecf6985339f56988568c8d3` |
| 28 | `lemma` | [_root_.MeasurableEmbedding.isProbabilityMeasure_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/root-measurableembedding-isprobabilitymeasure-comap.md) | 139 | `result-track:502987229d4bc6424c4b3fea206599417c8cfabcbe7e64aa988f3822d29acdb7` |
| 29 | `instance` | [isProbabilityMeasure_map_up](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/isprobabilitymeasure-map-up.md) | 143 | `declaration-track:26e05e00472d67b3e19a14a39704e86895affcc380c15a3c0547a98fef01b30d` |
| 30 | `instance` | [isProbabilityMeasure_comap_down](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/isprobabilitymeasure-comap-down.md) | 146 | `declaration-track:57f762155d5734d3a146789252c4df35100fbe4bb3ba8616b3af7b3c6d31d80a` |
| 31 | `instance` | [isZeroOrProbabilityMeasureSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/iszeroorprobabilitymeasuresmul.md) | 154 | `declaration-track:b7ade5c952584d27cd7d35473a9dc6e6cdd8fb91187b9a879be058ab0c89998c` |
| 32 | `lemma` | [eq_zero_or_isProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/eq-zero-or-isprobabilitymeasure.md) | 166 | `result-track:894e8042a9fc4ae64c30cd3cba7b0fe3aca8660d57a873911c5414e5dae3610c` |
| 33 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/instance.md) | 171 | `declaration-track:0014dfb0377f2c424dccee3280c3beb5db58e56d3888f901a40edb523cfc5fa2` |
| 34 | `lemma` | [prob_compl_lt_one_sub_of_lt_prob](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/prob-compl-lt-one-sub-of-lt-prob.md) | 176 | `result-track:c0ee99142138cc7504619cfffb670dc4f472934b83745929d07af08bd820c8e5` |
| 35 | `lemma` | [prob_compl_le_one_sub_of_le_prob](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/prob-compl-le-one-sub-of-le-prob.md) | 185 | `result-track:a1e62f9ae8459c4c1c918722e68d02ba5f01a8749c14ea7254545f16a4cc4bc8` |
| 36 | `lemma` | [inv_measure_univ_smul_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Probability.lean/declarations/inv-measure-univ-smul-eq-self.md) | 192 | `result-track:ba4b67025a9eb96f3afde185a97d11c5ec4b15a84d8132aeda5c8f73404ed165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=862e51142c3aa26761488ab0929f3044c6244c05f4d749f59c30904940065b68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

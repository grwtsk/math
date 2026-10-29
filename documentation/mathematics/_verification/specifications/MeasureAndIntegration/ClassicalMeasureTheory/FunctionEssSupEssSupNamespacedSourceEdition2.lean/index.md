# Verification target: Function Ess Sup Ess Sup Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "384924e315256c5dca7350bdc37a34936aaf63ea",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant3e6dd3bc9557391b444e64011985be2ddc860b02eea31e485e4df9f328bdb140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `384924e315256c5dca7350bdc37a34936aaf63ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant3e6dd3bc9557391b444e64011985be2ddc860b02eea31e485e4df9f328bdb140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant3e6dd3bc9557391b444e64011985be2ddc860b02eea31e485e4df9f328bdb140.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ENNReal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup.md) | 52 | `declaration-track:33ca56df5382a45ad26729d4b6d080c8eaa09c7eb22a19b21daece3d935af64b` |
| 2 | `def` | [essInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/essinf.md) | 58 | `declaration-track:46b2f24a4da89c8affa0b5b0b89deeac1e1526ae3b364457d9e7ae953c99c475` |
| 3 | `theorem` | [essSup_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-congr-ae.md) | 62 | `result-track:2d27d53a343c2aff792aa68ee98440c671f77d06d219657958bd856616192754` |
| 4 | `theorem` | [essInf_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/essinf-congr-ae.md) | 66 | `result-track:41448710b10141f2140ebc98dbde474bbb4d177c5965bf62c9af2caa59b37aa5` |
| 5 | `theorem` | [essSup_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-const.md) | 71 | `result-track:0fd3f1e27ee97c592ac5583490726c73249dd0603b2770febf08abd486220149` |
| 6 | `theorem` | [essInf_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/essinf-const.md) | 76 | `result-track:0215a7e29483327f849f301746ccc7c20c452a0277856034be756c09dce54237` |
| 7 | `theorem` | [essSup_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-const-source-edition-2.md) | 80 | `result-track:373cc94b2de72267b94a8fa88c53a06213da59ce560158bbc9b405a18a78358b` |
| 8 | `theorem` | [essInf_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/essinf-const-source-edition-2.md) | 84 | `result-track:34571b41e8eb10328e394efef3175c9afbcf2638ee37e299b354d852834492b3` |
| 9 | `theorem` | [essSup_eq_sInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-eq-sinf.md) | 94 | `result-track:2bb9986a683487b4236fb6e77de4898be73daaec248de932d54d0d47e6907997` |
| 10 | `theorem` | [essInf_eq_sSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/essinf-eq-ssup.md) | 100 | `result-track:53c83914d6301b23dd65334cea0704123fbb007dcc8aed3cadd01f53290bfc29` |
| 11 | `theorem` | [ae_lt_of_essSup_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/ae-lt-of-esssup-lt.md) | 106 | `result-track:bc3d9759f5fe84c3e57a6a82cade1a6f0e47ff275e63a4c6b0b9e56750c1ec11` |
| 12 | `theorem` | [ae_lt_of_lt_essInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/ae-lt-of-lt-essinf.md) | 112 | `result-track:e28661f6007fbdca0c7a7b8242ee1ec40ea28e787b415a9db37d1dfa9dd62bc7` |
| 13 | `theorem` | [ae_le_essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/ae-le-esssup.md) | 120 | `result-track:4e780249d94e671ca3eeb12feb68ccd57b437f04844fcbce93bc71f8cbd13655` |
| 14 | `theorem` | [ae_essInf_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/ae-essinf-le.md) | 126 | `result-track:eaa3afda5aeb0e335a48d4f5e38f6fa7e0b6e60c4483d51192996ba8209d63e8` |
| 15 | `theorem` | [meas_essSup_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/meas-esssup-lt.md) | 132 | `result-track:9827fed71f703f0248c249894389e432b43e1293d878f0d251fc19ab12077482` |
| 16 | `theorem` | [meas_lt_essInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/meas-lt-essinf.md) | 139 | `result-track:f6f2c7c25c5f27ebe3b23c12d09ac3811a96eeeda36d29729cfb71df07a5ddd5` |
| 17 | `theorem` | [essSup_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-measure-zero.md) | 153 | `result-track:9ecd7d196c32111cb00b7a4537178458adcb4e449c58a3ff3127f4e33e839f85` |
| 18 | `theorem` | [essInf_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/essinf-measure-zero.md) | 158 | `result-track:667c4b5dcbac1bf880739d2d6ff80c7f1b874c2f11180622c8be9b57e849fa71` |
| 19 | `theorem` | [essSup_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-mono-ae.md) | 162 | `result-track:ad05e49dfaf1e77a33934b392ab48d40c49a706b385f10c3d23df9d7b36729f1` |
| 20 | `theorem` | [essInf_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/essinf-mono-ae.md) | 166 | `result-track:8e62ab38c2c6e60db6ade79ff1ba7ce0f07b463cb8f1673027f6781391075fb0` |
| 21 | `theorem` | [essSup_le_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-le-of-ae-le.md) | 170 | `result-track:b1bf381ff76bb84250aa1dc1f6a0f6ba5de7282d713ffac423c7fabaf3500a08` |
| 22 | `theorem` | [le_essInf_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/le-essinf-of-ae-le.md) | 177 | `result-track:e4cfb63aa24374bd9c741ea7bed1d5116f0c12ca8a2fc5fc097a4bfd5350f712` |
| 23 | `theorem` | [essSup_const_bot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-const-bot.md) | 181 | `result-track:5c127f6e6c8f2953eecb69f9b7be01d577ff9554b5fdc70547c2c8ef46f8e76c` |
| 24 | `theorem` | [essInf_const_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/essinf-const-top.md) | 185 | `result-track:d7d0edd2e230a50b9429bfaa1fe500d4bf6c8f9360eaec52bec9781fc51f8679` |
| 25 | `theorem` | [OrderIso.essSup_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/orderiso-esssup-apply.md) | 189 | `result-track:ab2241629bee5bed83f9c3ed357851f917a3d3e9512855a8feb1a5c885908b51` |
| 26 | `theorem` | [OrderIso.essInf_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/orderiso-essinf-apply.md) | 195 | `result-track:78df4226405d4393b09eed59f06740453145755310a066bd279ff56f0d617172` |
| 27 | `theorem` | [essSup_mono_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-mono-measure-source-edition-2.md) | 200 | `result-track:e3c6c5046b97b12f0e93a57eea85da195fa69038a56f24d730c6da652df94be3` |
| 28 | `theorem` | [essSup_mono_measure'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-mono-measure.md) | 205 | `result-track:dbca73226dcf8923c8e2118c8017612e46668a5abb28ede97d4ecb3fae07667a` |
| 29 | `theorem` | [essInf_antitone_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/essinf-antitone-measure.md) | 211 | `result-track:8bd6181b321b34cfa0bdfa438e000870181568398bb38398e1f0403a46350433` |
| 30 | `theorem` | [essSup_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-smul-measure.md) | 216 | `result-track:1923af6ba0b04fd08fdcedd6a7b330d04e60e04f9d26ccb1c2e7f16294fc1408` |
| 31 | `theorem` | [essSup_comp_le_essSup_map_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-comp-le-esssup-map-measure.md) | 229 | `result-track:3f8966b8adc11464b7b5b06b921a2fe783a149c8e53dd4894a7e86265eab9c32` |
| 32 | `theorem` | [MeasurableEmbedding.essSup_map_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/measurableembedding-esssup-map-measure.md) | 240 | `result-track:82edb018f185148a9f7a594e3a45d53a0a3696dce6ddc37db8e76e759c9c1121` |
| 33 | `theorem` | [essSup_map_measure_of_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-map-measure-of-measurable.md) | 251 | `result-track:c3f4f8aff4099719b87345a5b24806460ec87884082979fdb7b40449d8983013` |
| 34 | `theorem` | [essSup_map_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-map-measure.md) | 260 | `result-track:060106575f11c9edf2369613bfbc994ac6cfafea914047f44f43a9afc2ae0615` |
| 35 | `theorem` | [essSup_indicator_eq_essSup_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-indicator-eq-esssup-restrict.md) | 276 | `result-track:0caddf17a1686f2a2aa691bfac1483414f61faf38c88a58051855bf77d4c129c` |
| 36 | `theorem` | [ae_le_essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/ae-le-esssup-source-edition-2.md) | 312 | `result-track:64103a3eeacebfda3e90051e5d0c02d68a437f055a0885b51b67b839528c421a` |
| 37 | `theorem` | [essSup_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-eq-zero-iff.md) | 317 | `result-track:84d46e1f52b9f1c1212384bcffb574ef6bc8d54fd12026494922901c3a2aa097` |
| 38 | `theorem` | [essSup_const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-const-mul.md) | 321 | `result-track:37a5ea49b5a51825e79960f067e962bcd135014f82a142a75044b2e858cef18c` |
| 39 | `theorem` | [essSup_mul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-mul-le.md) | 325 | `result-track:d35e4f8bfb195ed6e55b0552322239123ac1382371e8b9fd4cc0c7da55f6b44b` |
| 40 | `theorem` | [essSup_add_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-add-le.md) | 329 | `result-track:30a536fecfc2816d5fd6839ddebc70286c4f51d4915dc926438fda6c81f85392` |
| 41 | `theorem` | [essSup_liminf_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/esssup-liminf-le.md) | 333 | `result-track:1d1e51092d604e9b8640cd23680c5962e9c10466585c3b47fe4e218ddef88d7d` |
| 42 | `theorem` | [coe_essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupNamespacedSourceEdition2.lean/declarations/coe-esssup.md) | 340 | `result-track:6506c730c3ad9af3446530e21065f59cf1e5ee2aca3d2c733b5b4e9c42105087` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7c7df9a18051a504a9c0496b0d6a0ab7f21615c01ca0c36b31ae34d398588f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant3e6dd3bc9557391b444e64011985be2ddc860b02eea31e485e4df9f328bdb140.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant3e6dd3bc9557391b444e64011985be2ddc860b02eea31e485e4df9f328bdb140.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Normed Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "428df85afc10db92fcd7da0b898117fe2fb9311d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant3f5646ae382e545dbae4b10b3896a566b0a699030805e02990da4a0893c90120.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/NormedNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/NormedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `428df85afc10db92fcd7da0b898117fe2fb9311d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant3f5646ae382e545dbae4b10b3896a566b0a699030805e02990da4a0893c90120.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Normed/Variant3f5646ae382e545dbae4b10b3896a566b0a699030805e02990da4a0893c90120.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normed](../../../../RealFunctions/NormedNamespaced.lean/declarations/normed.md) | 36 | `declaration-track:dccd16fc2f4a8c210d301ea11a6f3c61ad93ca152f103e420c9db019b772ca40` |
| 2 | `theorem` | [normed_def](../../../../RealFunctions/NormedNamespaced.lean/declarations/normed-def.md) | 38 | `result-track:83a17417c38812bc4d0bfd74fca019c7135b239c6e4336a5dbb0d6f7080d1ba7` |
| 3 | `theorem` | [nonneg_normed](../../../../RealFunctions/NormedNamespaced.lean/declarations/nonneg-normed.md) | 41 | `result-track:b90f9d8082204f384d70147d646467d78bada41a5e9260053490ae86ef3686d5` |
| 4 | `theorem` | [contDiff_normed](../../../../RealFunctions/NormedNamespaced.lean/declarations/contdiff-normed.md) | 44 | `result-track:30c42546cacbc18eb1ed8845a31ceaae32244321a172ea356b4c0c884d400e67` |
| 5 | `theorem` | [continuous_normed](../../../../RealFunctions/NormedNamespaced.lean/declarations/continuous-normed.md) | 47 | `result-track:9ae120c6c24592f3e41abcc16b3ee52616285cc9856fecaa9279682de92ed28f` |
| 6 | `theorem` | [normed_sub](../../../../RealFunctions/NormedNamespaced.lean/declarations/normed-sub.md) | 50 | `result-track:4af8027923966ba3d976aaa57fcf06a840a96135da61722344ad932012282c47` |
| 7 | `theorem` | [normed_neg](../../../../RealFunctions/NormedNamespaced.lean/declarations/normed-neg.md) | 53 | `result-track:3058098abb579f57e4654c170cc7bc8cedd85e4adb7a1df9d721b2fc6af6f0fd` |
| 8 | `theorem` | [integrable](../../../../RealFunctions/NormedNamespaced.lean/declarations/integrable.md) | 58 | `result-track:39ba0c3a77be755531b6e20862b4bb3c501711ff6ca04e7028cc1e9f802059aa` |
| 9 | `theorem` | [integrable_normed](../../../../RealFunctions/NormedNamespaced.lean/declarations/integrable-normed.md) | 61 | `result-track:df5b28369218328c409ea891e55d548eeb691c6c3b68369f567d0abea7e8d901` |
| 10 | `theorem` | [integral_pos](../../../../RealFunctions/NormedNamespaced.lean/declarations/integral-pos.md) | 67 | `result-track:5bb6c1c7a286f48ae51fee815fb65dafd84dd7efcba47a4fc1703e34efdcea28` |
| 11 | `theorem` | [integral_normed](../../../../RealFunctions/NormedNamespaced.lean/declarations/integral-normed.md) | 72 | `result-track:6e1fcbbd43a94776e0d8835bff548691048e1f82cd811c84145371e737996e71` |
| 12 | `theorem` | [support_normed_eq](../../../../RealFunctions/NormedNamespaced.lean/declarations/support-normed-eq.md) | 76 | `result-track:be705892aa9524ae1c90bc1a8917e89b64af8e5699b6ea47799aa48aa97f03e9` |
| 13 | `theorem` | [tsupport_normed_eq](../../../../RealFunctions/NormedNamespaced.lean/declarations/tsupport-normed-eq.md) | 80 | `result-track:d3aa6078eb2e5a333c7b8cc35b973750c70275fb73bd93236d4af78d5536c031` |
| 14 | `theorem` | [hasCompactSupport_normed](../../../../RealFunctions/NormedNamespaced.lean/declarations/hascompactsupport-normed.md) | 83 | `result-track:31f224c5d1b4f62f5e84e333457b88dddcad5606083c47d2ed10a90e0fc7cd29` |
| 15 | `theorem` | [tendsto_support_normed_smallSets](../../../../RealFunctions/NormedNamespaced.lean/declarations/tendsto-support-normed-smallsets.md) | 86 | `result-track:e5cc955008810ee90d084e58c897f23d62c1fac2f8ad2d8e674ffd2c2e0dcc4b` |
| 16 | `theorem` | [integral_normed_smul](../../../../RealFunctions/NormedNamespaced.lean/declarations/integral-normed-smul.md) | 98 | `result-track:1401ffd6f6b9257654125fa0deda93e4da7ac28e4bcaa2cc94338e05706ab4d2` |
| 17 | `theorem` | [measure_closedBall_le_integral](../../../../RealFunctions/NormedNamespaced.lean/declarations/measure-closedball-le-integral.md) | 106 | `result-track:b198edd7ae45c1a126144e181800fab62f00ffc015cfa70dc68e59026bbecfa0` |
| 18 | `theorem` | [normed_le_div_measure_closedBall_rIn](../../../../RealFunctions/NormedNamespaced.lean/declarations/normed-le-div-measure-closedball-rin.md) | 112 | `result-track:392f53dd8f2c8098e084e74ecf62ddb443261d89d25684d9520f52d7c11c186a` |
| 19 | `theorem` | [integral_le_measure_closedBall](../../../../RealFunctions/NormedNamespaced.lean/declarations/integral-le-measure-closedball.md) | 120 | `result-track:37ee451832fb4aaf4771cc100b89c2d5c8d3981fbb3b96114b2b18ec78038879` |
| 20 | `theorem` | [measure_closedBall_div_le_integral](../../../../RealFunctions/NormedNamespaced.lean/declarations/measure-closedball-div-le-integral.md) | 130 | `result-track:c640f7b34f55701e28dfe2ba43a5db90e68ae2bce404b3ab7e23580272d7648d` |
| 21 | `theorem` | [normed_le_div_measure_closedBall_rOut](../../../../RealFunctions/NormedNamespaced.lean/declarations/normed-le-div-measure-closedball-rout.md) | 141 | `result-track:181e7e4e4bfa05acd7bed7dd6121c2aac93f241718278fc1c95ae0f95ac3ed8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfde10ef3a0ab2b1d0c32128c20b0f4db9b62d31dd15eb18ccd33d34a38bdd8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant3f5646ae382e545dbae4b10b3896a566b0a699030805e02990da4a0893c90120.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Normed/Variant3f5646ae382e545dbae4b10b3896a566b0a699030805e02990da4a0893c90120.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

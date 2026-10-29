# Verification target: Source Attempt2 Namespaced P

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "134d774d37c6af8190af7b9a3d64fc2e58a17343",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant0c73fb2e0ed8c0c53394b94e8ff64a5a2eb91a29c7a768a8415ad469061ae942.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/index.md) · [Full source](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `134d774d37c6af8190af7b9a3d64fc2e58a17343`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant0c73fb2e0ed8c0c53394b94e8ff64a5a2eb91a29c7a768a8415ad469061ae942.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant0c73fb2e0ed8c0c53394b94e8ff64a5a2eb91a29c7a768a8415ad469061ae942.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/p.md) | 23 | `declaration-track:2a88f4007e6e43bd9f11ef3a95f16d9968ec72f3c7f3375128dd29d8be440ebf` |
| 2 | `abbrev` | [a](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/a.md) | 24 | `declaration-track:d6a9b8930946dcf5a4542a1c7aeff3e13f12bf2d39ceb475397db468e8ea331d` |
| 3 | `def` | [firstTerm](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/firstterm.md) | 26 | `declaration-track:4eb13654ad0bebb42830fac961903438993c894cd1255834de60c3eada89d5dd` |
| 4 | `def` | [secondTerm](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/secondterm.md) | 28 | `declaration-track:d296335e716350341eba1b6db446f1cfd060922eb16c61365cefc43c0de5f8c9` |
| 5 | `def` | [firstSeries](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/firstseries.md) | 30 | `declaration-track:2037b1f8afc64b64ce77783f7e01c6936a3daaf57a4ae5c21e4a1b247790190a` |
| 6 | `def` | [secondSeries](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/secondseries.md) | 32 | `declaration-track:02458efc7d48c734487aa4c3f2d2990e7ec261ced5472fa45579edc2efbcd9b3` |
| 7 | `def` | [weight](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/weight.md) | 34 | `declaration-track:6e39de3cb19c3a79538d82c976407b7186cb8db6b0e2793ddc9dbaa4614b20aa` |
| 8 | `theorem` | [weight_eq](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/weight-eq.md) | 36 | `result-track:21c35983f366be7907a72cf601926c497021cbd8c31259b7bff968ef72ceb3fc` |
| 9 | `theorem` | [weight_summable](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/weight-summable.md) | 41 | `result-track:0dd05a6af26b2ed77ded02df8cc3ab279419ddb896d2926bea84d0f3230a1358` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/pairedterm-hasderivat.md) | 46 | `result-track:37480832bb3a7734d97b0a109cdb9c26e4499b4bc94f2874bf87903906a307b8` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/firstterm-hasderivat.md) | 60 | `result-track:eabea0fd41d67c636a816bf8665f9b500d6e0f8a89c6a7b7215f8a96d9ac9669` |
| 12 | `def` | [lowerCoefficient](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/lowercoefficient.md) | 76 | `declaration-track:f223b3cd62366afd9056f874a725bfd150fa9856a57507bfeaca021d2a2bdc8c` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/lowercoefficient-pos.md) | 78 | `result-track:3487c71207bf32b9484719cd0da3f692560b31d58af742625c983f4da532996a` |
| 14 | `theorem` | [rate_lower](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/rate-lower.md) | 81 | `result-track:951b464f03db67bc1a25c60a86e3da833db8aba4e9e8815ede98ac9e362e27e7` |
| 15 | `theorem` | [firstTerm_bound](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/firstterm-bound.md) | 90 | `result-track:b3209720effda3b1efe11805485af7e369a63de60ba5edab6a7ff54871086ca3` |
| 16 | `theorem` | [secondTerm_bound](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/secondterm-bound.md) | 119 | `result-track:09db8fc692df983a4435d7f62178ab79d0bc908ff8775841ada4ca2c7743a6e9` |
| 17 | `theorem` | [firstTerm_summable](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/firstterm-summable.md) | 136 | `result-track:1d657d8f547a85fac96947477527c0d43f7f6a079fe226109519cd3e3358485e` |
| 18 | `theorem` | [secondTerm_summable](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/secondterm-summable.md) | 143 | `result-track:1b17b58af1a59558d1060a90c744e801d1ec34a8a2643ca7e4de04ca9287a67d` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/actualprofile-hasderivat.md) | 149 | `result-track:3f59c72290d1c53c0172206e0fe1e99988ca910af766c3ebd89eafb5d0a35aea` |
| 20 | `theorem` | [actualProfile_deriv](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/actualprofile-deriv.md) | 164 | `result-track:3371777379a5701180db0436cb6d22b31645e6ad69538e0505adeface2db30bb` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/firstseries-hasderivat.md) | 167 | `result-track:6fa908075b40b6402ad4d73e6dc20e73fa3617a539b777f78a40d34ff8618aa6` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/actualprofile-second-hasderivat.md) | 179 | `result-track:dabcc74747f45f8fda7ac9ce8810d397bbf57d11c04254baf1d20c9b373fca75` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../RealFunctions/SourceAttempt2NamespacedP.lean/declarations/actualprofile-second-deriv.md) | 185 | `result-track:879a9466943474dbac1dc5952aaf5a20d987b29b231d31e3f8d4b5e7de7682ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b218a834e65077b34d8dde5eb65b59e5e97ad35c577b38664b6bae5eabbd8270 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant0c73fb2e0ed8c0c53394b94e8ff64a5a2eb91a29c7a768a8415ad469061ae942.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant0c73fb2e0ed8c0c53394b94e8ff64a5a2eb91a29c7a768a8415ad469061ae942.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

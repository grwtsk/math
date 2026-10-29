# Verification target: Source Attempt4 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "504d2fbbd2c428347896d3bbacf9c9792775708c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt4/Variant7010b2e41a039416e61d6131b23a2c615e60ed540a8afaea3438c7964166904e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SourceAttempt4Namespaced.lean/index.md) · [Full source](../../../../RealFunctions/SourceAttempt4Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `504d2fbbd2c428347896d3bbacf9c9792775708c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt4/Variant7010b2e41a039416e61d6131b23a2c615e60ed540a8afaea3438c7964166904e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt4/Variant7010b2e41a039416e61d6131b23a2c615e60ed540a8afaea3438c7964166904e.lean.json)

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
| 1 | `abbrev` | [P](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/p.md) | 23 | `declaration-track:9b02e8b135d6746004bb6fabab1297ce494adbd8dd0c0622b053701a088d83d9` |
| 2 | `abbrev` | [a](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/a.md) | 24 | `declaration-track:0731af114b93970cdd531483c9bb470275b74b7217f2e9726b29d249f4b2e175` |
| 3 | `def` | [firstTerm](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/firstterm.md) | 26 | `declaration-track:7f98f8fd120c2c8a8432ad4fb6a5e782507213db7800a283730b38471adbdc37` |
| 4 | `def` | [secondTerm](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/secondterm.md) | 28 | `declaration-track:d11c78cad97082e8d1c7f58e7dd6ffcbd8102671ff7ee70272d0892cdaa449eb` |
| 5 | `def` | [firstSeries](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/firstseries.md) | 30 | `declaration-track:32a885ee6ec3bd5b1366a09b9034c0cddf95c5d0565b8739e5097b77d0a89022` |
| 6 | `def` | [secondSeries](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/secondseries.md) | 32 | `declaration-track:07b7b16da7fda239569d2d999ebfd154a5adce118cca2a4af48444b3e60ada27` |
| 7 | `def` | [weight](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/weight.md) | 34 | `declaration-track:8c537dfb5476eb8c8cd4547d6cc7836790f5074e11697c87ece60f272cd1ba54` |
| 8 | `theorem` | [weight_eq](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/weight-eq.md) | 36 | `result-track:c48c7bd5b87b4a2c62203a659d93db70b04f94006d524c0f27a2706cf7c3e32e` |
| 9 | `theorem` | [weight_summable](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/weight-summable.md) | 41 | `result-track:4836bd59fafa17ee116898007f541007730f29214e4c0cc1d40f5172fc1093e0` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/pairedterm-hasderivat.md) | 46 | `result-track:b3e3664cee55dbd7e97e028ed56bc478fc6665af01c13ef3f63004ff23d917ac` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/firstterm-hasderivat.md) | 63 | `result-track:8666f82b6ef18050bef8b90dbffdefb469ddcde77fac017735ab8bf587eceb1f` |
| 12 | `def` | [lowerCoefficient](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/lowercoefficient.md) | 81 | `declaration-track:c6edf046f0946052d6e4a5a147a769c3e0a21a37fdc782e768f4db5b8cecdd20` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/lowercoefficient-pos.md) | 83 | `result-track:7539db3e6121f5777ffc83631fffb3b7ea0120571cf14c0bc134c30da90b29f5` |
| 14 | `theorem` | [rate_lower](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/rate-lower.md) | 86 | `result-track:f10b6c8e2c16fd192a8a75ee897471c480137c64f1311bda62f4980d51f4d01b` |
| 15 | `theorem` | [firstTerm_bound](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/firstterm-bound.md) | 95 | `result-track:d9affa9bfe3ce510f8c8ef391cf4a268c26b91b524f75c4f18934d2956ab2e77` |
| 16 | `theorem` | [secondTerm_bound](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/secondterm-bound.md) | 124 | `result-track:5d39eaea74cf1f9fc3cd31f7c85c17f1b14a448e0de8e8cd98283404c40739e3` |
| 17 | `theorem` | [firstTerm_summable](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/firstterm-summable.md) | 141 | `result-track:04422c6a6aa2dad3afd7b8d2803b4b4b5207b356d45cd2ca7efa134b6b6f50c6` |
| 18 | `theorem` | [secondTerm_summable](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/secondterm-summable.md) | 148 | `result-track:cc11b8eed31007b0a4f56037377d06e96e4f4fabb4d2d09e8af4e12cebfc4f8b` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/actualprofile-hasderivat.md) | 154 | `result-track:1e89fe4da12931231e76e928133b2750d03bc7c249d18445688bb5b5d998f6f6` |
| 20 | `theorem` | [actualProfile_deriv](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/actualprofile-deriv.md) | 169 | `result-track:649a1777969fc7957cd0c999a91ddf33da52b6315c0c98dd267543f0e7fb5345` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/firstseries-hasderivat.md) | 172 | `result-track:702e7f26f4b6ea179bdcd8deb153321128fbc42799295500afd7cef77487fd50` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/actualprofile-second-hasderivat.md) | 184 | `result-track:59cd81ddd029c13b20c5c405ebb667d49804d5233bcc97a289e05de70a5015eb` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../RealFunctions/SourceAttempt4Namespaced.lean/declarations/actualprofile-second-deriv.md) | 190 | `result-track:0daac8b28b6f862d228c04050d80bfed573d2247cfd5ef54c5ed6e71614a59a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=951154e8ad5248f5fcba758e42cc2eae9992333e31c87d92713b0d7d8e2aec23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt4/Variant7010b2e41a039416e61d6131b23a2c615e60ed540a8afaea3438c7964166904e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt4/Variant7010b2e41a039416e61d6131b23a2c615e60ed540a8afaea3438c7964166904e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

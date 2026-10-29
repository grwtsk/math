# Verification target: Source Attempt2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eced7a720b4f3c9002e23727a4f868220553e12",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant3c8233841023155ef1226f02b5cd298dc0673dab8ddca6aaf5aa4d5aaec870a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SourceAttempt2.lean/index.md) · [Full source](../../../../RealFunctions/SourceAttempt2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eced7a720b4f3c9002e23727a4f868220553e12`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant3c8233841023155ef1226f02b5cd298dc0673dab8ddca6aaf5aa4d5aaec870a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant3c8233841023155ef1226f02b5cd298dc0673dab8ddca6aaf5aa4d5aaec870a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../RealFunctions/SourceAttempt2.lean/declarations/p.md) | 15 | `declaration-track:fb19a45017eecd7811842d41033e326f14502456193e4af6986c9b22adba5aa9` |
| 2 | `abbrev` | [a](../../../../RealFunctions/SourceAttempt2.lean/declarations/a.md) | 16 | `declaration-track:d4d9c1f73dee575b1178b7dd619d9d581e01c268a91812cd8384048d7e8ff4ae` |
| 3 | `def` | [firstTerm](../../../../RealFunctions/SourceAttempt2.lean/declarations/firstterm.md) | 18 | `declaration-track:d46067899085231fc973e5fa323a0e41138414ccbde4e05d40104755b24a2067` |
| 4 | `def` | [secondTerm](../../../../RealFunctions/SourceAttempt2.lean/declarations/secondterm.md) | 20 | `declaration-track:ebd747014a0537a39cec48d4875325a526b498acc4dfd1049d7a8a30b009e94c` |
| 5 | `def` | [firstSeries](../../../../RealFunctions/SourceAttempt2.lean/declarations/firstseries.md) | 22 | `declaration-track:6c37ffc67768784a18c24ece5e7ed3224a727aa838789a87b2e86de622729aa7` |
| 6 | `def` | [secondSeries](../../../../RealFunctions/SourceAttempt2.lean/declarations/secondseries.md) | 24 | `declaration-track:a860c5633951afa579a79871b96c1e530a82dc034e54f810ecbac4db106d69cd` |
| 7 | `def` | [weight](../../../../RealFunctions/SourceAttempt2.lean/declarations/weight.md) | 26 | `declaration-track:d495b821b3d6dda65826c7c9659bb52fdf064da48499644e650c025f7260b3d1` |
| 8 | `theorem` | [weight_eq](../../../../RealFunctions/SourceAttempt2.lean/declarations/weight-eq.md) | 28 | `result-track:32a806433e98ec41a39983188c1425afc1ac29ed21de1b59caa76c29c5da1d13` |
| 9 | `theorem` | [weight_summable](../../../../RealFunctions/SourceAttempt2.lean/declarations/weight-summable.md) | 33 | `result-track:609c39a5076f03f987d10a937f94351fbfedac6efda551f69c6e1bffaaa00b5e` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../RealFunctions/SourceAttempt2.lean/declarations/pairedterm-hasderivat.md) | 38 | `result-track:e60835cccbfb6bef4a9c53fb643432264e178123cdaad22a66b7cadc70880766` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../RealFunctions/SourceAttempt2.lean/declarations/firstterm-hasderivat.md) | 52 | `result-track:de50984faa6d0ec4f72eb284bb864f9f6f6d07867031695c0f88067c00918310` |
| 12 | `def` | [lowerCoefficient](../../../../RealFunctions/SourceAttempt2.lean/declarations/lowercoefficient.md) | 68 | `declaration-track:0dd86612b15ef8a058f11c54ecc42fbae56185b6a5f913ee892ff5363264a3e4` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../RealFunctions/SourceAttempt2.lean/declarations/lowercoefficient-pos.md) | 70 | `result-track:a217c570acc905817e98a51870288f1c33f98f1a0c2cde12dbadbc766e316035` |
| 14 | `theorem` | [rate_lower](../../../../RealFunctions/SourceAttempt2.lean/declarations/rate-lower.md) | 73 | `result-track:abfab3bd490538b59032becfaa07acbf9527869aad2919cde4c1ee57250a38d8` |
| 15 | `theorem` | [firstTerm_bound](../../../../RealFunctions/SourceAttempt2.lean/declarations/firstterm-bound.md) | 82 | `result-track:96b196f40d1821eccff29a48499a605fb7d6167289ceaca2779e98ef00d37ed8` |
| 16 | `theorem` | [secondTerm_bound](../../../../RealFunctions/SourceAttempt2.lean/declarations/secondterm-bound.md) | 111 | `result-track:9df9584adac1e518b71d39a432023b6873a2122f250c228dc607c5ca936bfdd1` |
| 17 | `theorem` | [firstTerm_summable](../../../../RealFunctions/SourceAttempt2.lean/declarations/firstterm-summable.md) | 128 | `result-track:b204f7458374dcc461da4ac01eb70f7710fe450174555ee70f1faa839b765962` |
| 18 | `theorem` | [secondTerm_summable](../../../../RealFunctions/SourceAttempt2.lean/declarations/secondterm-summable.md) | 135 | `result-track:eaca5c62ca0091560e35c9c7f63e03b25f7062d9dead24b759af2bf592f757b6` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../RealFunctions/SourceAttempt2.lean/declarations/actualprofile-hasderivat.md) | 141 | `result-track:b2e51f15522d62b789dd63d009fefc4f5cc304f8ee90f5b9334cf2ba4d4a59f7` |
| 20 | `theorem` | [actualProfile_deriv](../../../../RealFunctions/SourceAttempt2.lean/declarations/actualprofile-deriv.md) | 156 | `result-track:08172807bac7ee6f614b3661975f151a2b3a6328140e47a03e3de6e76b184f9e` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../RealFunctions/SourceAttempt2.lean/declarations/firstseries-hasderivat.md) | 159 | `result-track:cdbf89fb74a0b1b7d9b5c82b4d084e7b0bc4688d6b6d49822785ff43b4a84beb` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../RealFunctions/SourceAttempt2.lean/declarations/actualprofile-second-hasderivat.md) | 171 | `result-track:4d8afb68af4a8cb49679de96831d71b2864b2966b6ab16f975234375b35da50a` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../RealFunctions/SourceAttempt2.lean/declarations/actualprofile-second-deriv.md) | 177 | `result-track:0ec802ede1d4c85593be0bdf9e6aac64044c3ce3b7589f4dc62a765bb38a502d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef3535372a5a3e07095846666869a1f11f303a830b45fd72bc58ada3a0d1a9cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant3c8233841023155ef1226f02b5cd298dc0673dab8ddca6aaf5aa4d5aaec870a6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant3c8233841023155ef1226f02b5cd298dc0673dab8ddca6aaf5aa4d5aaec870a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Source Attempt6 Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "912ef78f2d7003530d4f26e61fa4a7a2a819379d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt6/Varianted2c385ef3d69f4cd1493ae66112b91163f3e01a99945d9e789a4b9eff92bd25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `912ef78f2d7003530d4f26e61fa4a7a2a819379d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt6/Varianted2c385ef3d69f4cd1493ae66112b91163f3e01a99945d9e789a4b9eff92bd25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt6/Varianted2c385ef3d69f4cd1493ae66112b91163f3e01a99945d9e789a4b9eff92bd25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaProfile` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.FrullaniIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dividedDifference](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/divideddifference.md) | 21 | `declaration-track:68601dee8200d97df6ac7aa8521607e21028cb3e8b941fec2a73123c65458f6e` |
| 2 | `theorem` | [dividedDifference_bound](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/divideddifference-bound.md) | 24 | `result-track:1e9cbaee7c8834ef0246bc13ec48e95bfa82a72bfd767696b65959d5144b81c8` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/divideddifference-integrable.md) | 44 | `result-track:08fa55d5cab22d88ccb2a5262b744107be56fe49d5b2357dd986105cca2f2d81` |
| 4 | `theorem` | [dividedDifference_integral](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/divideddifference-integral.md) | 55 | `result-track:e17375ca6887dd5017a0ca3748d7ead4630406b276ecb9ccc6f2d5524142ab37` |
| 5 | `def` | [physicalRate](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/physicalrate.md) | 67 | `declaration-track:d0fd0434870608f430da4d3cb42970ed5abda6ebd52a6b72ee7328a608bf6c52` |
| 6 | `def` | [compensatedTerm](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/compensatedterm.md) | 69 | `declaration-track:bef372b9180d16489665228e02d8a14cb74a4a1e5688c2bac8e331d85be83462` |
| 7 | `theorem` | [physicalRate_pos](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/physicalrate-pos.md) | 72 | `result-track:809396ef3ae92b406b3da1e0d6e6199e216afd90862371c09082e6b023479b87` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/shifted-physicalrate-pos.md) | 74 | `result-track:4954c3a815cff61a063a1b1a2687abc29e577502a27ca038eef453a537254d49` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/compensatedterm-nonneg.md) | 79 | `result-track:731c96f7a1472a3c12c7385b443691cfd85f40055abc66c5e3a8b0fb0464fd5a` |
| 10 | `theorem` | [compensatedTerm_split](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/compensatedterm-split.md) | 85 | `result-track:28b88f41fc71eaebc5648f66ba9c36f0cbec2ca936f7475cf61fe12ef4e13bd6` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/compensatedterm-integrable.md) | 97 | `result-track:a4920449950be97074379a8e0ebe01661a93560c2ba848dc7e4c1cc372b1e016` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../MeasureAndIntegration/SourceAttempt6SourceEdition2.lean/declarations/compensatedterm-integral.md) | 106 | `result-track:34cee3e3068f8616a02d4d32a7518088b42b5712d4ab53b06a96549276e36f1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c26f4168328853a8355b1866d4d2c25ebb60c0796f0acca9ee15485f8d1e18d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt6/Varianted2c385ef3d69f4cd1493ae66112b91163f3e01a99945d9e789a4b9eff92bd25.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceAttempt6/Varianted2c385ef3d69f4cd1493ae66112b91163f3e01a99945d9e789a4b9eff92bd25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Residual Residual Metric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8d583f58855c4fc010263f99ef27c2a1e4bc758",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidualResidualMetric.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidualResidualMetric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8d583f58855c4fc010263f99ef27c2a1e4bc758`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.Map` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ResidualMetric](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidualResidualMetric.lean/declarations/residualmetric.md) | 7 | `declaration-track:7c2ec24f04f418f42c9b92f0f7cb992024a2897f8a2f8817de329f18f2c7c340` |
| 2 | `structure` | [VerificationMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidualResidualMetric.lean/declarations/verificationmap.md) | 11 | `declaration-track:11c0b3738250d204632e221cac383ec15c7bc52e830c19d0b459b7cb38f0d3b8` |
| 3 | `def` | [forwardResidual](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidualResidualMetric.lean/declarations/forwardresidual.md) | 16 | `declaration-track:2c993087fe2fcfa96a07cb5f20c2401b7c2fdb37d8efc05ebf1d8037c888a6ba` |
| 4 | `def` | [inverseResidual](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidualResidualMetric.lean/declarations/inverseresidual.md) | 23 | `declaration-track:ec184bd7a303461b6df66d3be697a4a87ec72e148d3b63d9654b0e16ba28bd82` |
| 5 | `structure` | [VerificationSoundnessCertificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidualResidualMetric.lean/declarations/verificationsoundnesscertificate.md) | 30 | `declaration-track:3e20af308ebd4ddb8d50cee5ef7486a5d9e3a61df917666080a0d906ce0b1376` |
| 6 | `theorem` | [verifier_sound_on_declared_domain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidualResidualMetric.lean/declarations/verifier-sound-on-declared-domain.md) | 41 | `result-track:74532e2b0e0d92eef8df40cf4ae7f2b33880555772cd60513876c398c0a379ed` |
| 7 | `theorem` | [sound_round_trip_has_zero_inverse_residual](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidualResidualMetric.lean/declarations/sound-round-trip-has-zero-inverse-residual.md) | 52 | `result-track:819f0ea2f8c84e0b6865387d8d07d49a57ee2862d67fcb984cb0afc881b6e46a` |
| 8 | `theorem` | [forward_and_inverse_residuals_can_differ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidualResidualMetric.lean/declarations/forward-and-inverse-residuals-can-differ.md) | 70 | `result-track:30ee4691b67d46bd17a783e27dfc14b2a5e853b086e4327acd30913d33d977ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb574300bc6f18f72f6549cf8fba39affc23dc2af75580e5cb3474806d8401e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

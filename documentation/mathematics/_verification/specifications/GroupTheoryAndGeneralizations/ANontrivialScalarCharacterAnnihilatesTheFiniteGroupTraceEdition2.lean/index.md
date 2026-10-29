# Verification target: ANontrivial Scalar Character Annihilates The Finite Group Trace Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9da2fa5c470c5e814f40cc009ad5db118b1e7040",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9da2fa5c470c5e814f40cc009ad5db118b1e7040`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.InboundChannels` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orbitTrace](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/declarations/orbittrace.md) | 22 | `declaration-track:b9bd73219b640255f2e2bd450793bc51e66e0ec08683d479b27263aa7ed8d1ba` |
| 2 | `def` | [orbitAverage](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/declarations/orbitaverage.md) | 25 | `declaration-track:de06304cbb71292d1e45b2e055e1318b1c619aaa677aa39b63d6b6978140a4ce` |
| 3 | `theorem` | [orbit_trace_invariant](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/declarations/orbit-trace-invariant.md) | 28 | `result-track:2e3c334b4bb0c36651a5ccc17e3603b6b531e5d0a5e0e58888688ed31c183334` |
| 4 | `theorem` | [scalar_covariant_trace_zero](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/declarations/scalar-covariant-trace-zero.md) | 36 | `result-track:7395b8842b251dc57642d8d848bb1ae803ff551979bcd703b628ae00db584d94` |
| 5 | `theorem` | [nontrivial_readout_annihilates_trace](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/declarations/nontrivial-readout-annihilates-trace.md) | 48 | `result-track:dc515e90beff2c8de786b3f32279aaca780378f0e0a48b3a0f119ba1d0634d87` |
| 6 | `theorem` | [nontrivial_readout_annihilates_average](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/declarations/nontrivial-readout-annihilates-average.md) | 60 | `result-track:84d30ca4d9d433f991c385cfd8a25504c5c2cad5b417d4cb1d97ba69e93a2e3d` |
| 7 | `def` | [readoutResidual](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/declarations/readoutresidual.md) | 68 | `declaration-track:3dfaf954f5db7a035fe5eadaf732ed9d7c3f14f1433b334092563a857b56d195` |
| 8 | `theorem` | [exact_trace_residual](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/declarations/exact-trace-residual.md) | 72 | `result-track:9395312c78e0dc9da78860993167f69458435b22eab0b321d86a0a14ebad7fc8` |
| 9 | `theorem` | [averaged_readout_residual_bound](../../../../GroupTheoryAndGeneralizations/ANontrivialScalarCharacterAnnihilatesTheFiniteGroupTraceEdition2.lean/declarations/averaged-readout-residual-bound.md) | 83 | `result-track:a1e65d8183304e74112eaa93b3f4bc19f03469b09f2f6f9200d1c17b52c0766e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4380b03c0614c3696265bd9e0ebd8ace201183e9f7d502a113c1343f729dca79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

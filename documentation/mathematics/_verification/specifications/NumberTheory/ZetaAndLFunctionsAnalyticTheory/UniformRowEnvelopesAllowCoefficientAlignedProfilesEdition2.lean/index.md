# Verification target: Uniform Row Envelopes Allow Coefficient Aligned Profiles Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9673504ef16ff4d7012058070d39760b2561395e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileAlignment/Variant57f23f0ec8c9612210132dad1795340d910b02ad9d12b2038d2bd246eab97138.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformRowEnvelopesAllowCoefficientAlignedProfilesEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformRowEnvelopesAllowCoefficientAlignedProfilesEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9673504ef16ff4d7012058070d39760b2561395e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileAlignment/Variant57f23f0ec8c9612210132dad1795340d910b02ad9d12b2038d2bd246eab97138.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileAlignment/Variant57f23f0ec8c9612210132dad1795340d910b02ad9d12b2038d2bd246eab97138.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedVariance` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alignedUnit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformRowEnvelopesAllowCoefficientAlignedProfilesEdition2.lean/declarations/alignedunit.md) | 23 | `declaration-track:8200e84e3260954e1fd2400eb3101719615c9198ba25caffb25af501df2187ee` |
| 2 | `def` | [alignedProfile](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformRowEnvelopesAllowCoefficientAlignedProfilesEdition2.lean/declarations/alignedprofile.md) | 24 | `declaration-track:82452a1e1bf4c4fbd8cd783895469a99c6d18b2016f265d833f21e2adbda2eb7` |
| 3 | `theorem` | [alignedUnit_abs](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformRowEnvelopesAllowCoefficientAlignedProfilesEdition2.lean/declarations/alignedunit-abs.md) | 27 | `result-track:69a0f70b90267b8807f85082e211aa9c220097cd52f39b08065ab8245827a595` |
| 4 | `theorem` | [coefficient_alignedUnit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformRowEnvelopesAllowCoefficientAlignedProfilesEdition2.lean/declarations/coefficient-alignedunit.md) | 31 | `result-track:6759236de6a123a2b70e51b75775b07a030b217ae154e6e662c1eea4d46d80c1` |
| 5 | `theorem` | [row_envelope_unchanged](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformRowEnvelopesAllowCoefficientAlignedProfilesEdition2.lean/declarations/row-envelope-unchanged.md) | 37 | `result-track:809777118129cb51c67e2557bccd4c54ba52764aaf8ec060e2ea25e2e3146202` |
| 6 | `theorem` | [aggregate_equals_absolute_mass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformRowEnvelopesAllowCoefficientAlignedProfilesEdition2.lean/declarations/aggregate-equals-absolute-mass.md) | 42 | `result-track:f3114178699b0df1cf7394d05dbe0333de5e7206948e4280b8b35fea7f6ff9ca` |
| 7 | `theorem` | [aggregate_envelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/UniformRowEnvelopesAllowCoefficientAlignedProfilesEdition2.lean/declarations/aggregate-envelope.md) | 49 | `result-track:0aa04d0d6dba688a8f7b484ed505d895d86706999fad890ae4248730caac35ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa64a1fe76666d76d80f3348be1f73dea50422150ee035218251c89392e2494e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileAlignment/Variant57f23f0ec8c9612210132dad1795340d910b02ad9d12b2038d2bd246eab97138.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileAlignment/Variant57f23f0ec8c9612210132dad1795340d910b02ad9d12b2038d2bd246eab97138.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

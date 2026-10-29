# Verification target: Fixed Point Transcendency

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d507e063d1d8fba56c6c71d18fe62c3347ae2f9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Varianta195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FixedPointTranscendency.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FixedPointTranscendency.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d507e063d1d8fba56c6c71d18fe62c3347ae2f9`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Varianta195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Varianta195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.OffCriticalDisplacement` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeatflowDynamics](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FixedPointTranscendency.lean/declarations/heatflowdynamics.md) | 19 | `declaration-track:8bb18aaf0a8782c76daca723cf896aa66f67efc4e324a6c4ba410f0fa2e15f21` |
| 2 | `structure` | [FixedSpectralConfiguration](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FixedPointTranscendency.lean/declarations/fixedspectralconfiguration.md) | 23 | `declaration-track:0be936a6592266b458188adfb62bd30203f86c7828099e28433fdc4a7480ebf9` |
| 3 | `structure` | [FixedPointIndexSpectralIdentification](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FixedPointTranscendency.lean/declarations/fixedpointindexspectralidentification.md) | 32 | `declaration-track:1b5865a9af2a7d0fcc0d4dd560f064cc237f114759173c02fd106c3da1cfd21d` |
| 4 | `theorem` | [fixed_config_fixed_under_flow_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FixedPointTranscendency.lean/declarations/fixed-config-fixed-under-flow-if-supplied.md) | 40 | `result-track:86df71f527875f2acb7a62895fcc4da0314ff6fecd8ac9ac0decc17aafddba20` |
| 5 | `theorem` | [fixed_point_index_trace_equals_spectral_trace_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FixedPointTranscendency.lean/declarations/fixed-point-index-trace-equals-spectral-trace-if-supplied.md) | 45 | `result-track:b7d906ae3b845d37f07232e44929e0ffedce32626ed4c76b586931c32f1a21fb` |
| 6 | `structure` | [FixedPointTranscendencyPackage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FixedPointTranscendency.lean/declarations/fixedpointtranscendencypackage.md) | 56 | `declaration-track:cd6ed3e87f4514bdc0b00e162bc7f02c999a8fbd10f6e6ae0ae8ef6786becd9f` |
| 7 | `theorem` | [fixed_point_no_offcritical_compatible_point_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FixedPointTranscendency.lean/declarations/fixed-point-no-offcritical-compatible-point-if-supplied.md) | 69 | `result-track:8b07119c190628b4796af99f647721de3ddaec2a0353d5b1dc55ce35c106211b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17e01c7886ebb7f1339541c0ad78d036b7eb9acd4c4c20956181af61026ae851 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Varianta195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Varianta195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

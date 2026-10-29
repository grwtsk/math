# Verification target: Controller Schedule Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a61d26c3fd7c9a2c2fa8f2f186e645ae5383f00e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ControllerSchedule/Variant79cc30ea4c1a2363049a8708166125c76807581dac67cc7497d08caa34843853.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a61d26c3fd7c9a2c2fa8f2f186e645ae5383f00e`.

Source path: `GRWTSK/Topology/GeneralTopology/ControllerSchedule/Variant79cc30ea4c1a2363049a8708166125c76807581dac67cc7497d08caa34843853.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ControllerSchedule/Variant79cc30ea4c1a2363049a8708166125c76807581dac67cc7497d08caa34843853.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeCost](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/cumulativecost.md) | 25 | `declaration-track:d15a6930775b34dce872768f956e579e372f726994e6e4c3eb43df212c120536` |
| 2 | `def` | [controllerAlpha](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/controlleralpha.md) | 29 | `declaration-track:044056e7385d42ec77fb6602db55eac7e1de7440bd539416426bb57b805ee9c5` |
| 3 | `theorem` | [cumulativeCost_nonneg](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/cumulativecost-nonneg.md) | 33 | `result-track:b919bee79a64b6c87e0a9469470f2021930f9c38dbc86cb9c4d269e762d36914` |
| 4 | `theorem` | [cumulativeCost_monotone](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/cumulativecost-monotone.md) | 37 | `result-track:a3d4344fe7b0716fa6489207cce0013eeb81fdf00832078925faffe1157a13ca` |
| 5 | `theorem` | [controllerAlpha_pos](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/controlleralpha-pos.md) | 43 | `result-track:df09a260e4415256ead451b944d743f16b525a243117d0392fa5a3af59e5170f` |
| 6 | `theorem` | [controllerAlpha_strictAntiOn](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/controlleralpha-strictantion.md) | 51 | `result-track:969018a08a8e4701295f1a3e15b6e253a31bc2555471289814f92ade90a84f78` |
| 7 | `theorem` | [controllerAlpha_le_one_div](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/controlleralpha-le-one-div.md) | 65 | `result-track:0234256189cf9664980ec549e6f9ee8c516d146eec28bf83e61e952f2c40e1fb` |
| 8 | `theorem` | [controllerAlpha_input_cost_le](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/controlleralpha-input-cost-le.md) | 74 | `result-track:c4dcb235476ec06039a7e04ef9070926ce26fea8abc894ddb18b4fa91dd0dbc9` |
| 9 | `theorem` | [controllerAlpha_tendsto_zero](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/controlleralpha-tendsto-zero.md) | 87 | `result-track:f46f2f886f8b921d77cff47dcc82013cca6b35170328c091f514992fe956fc6f` |
| 10 | `theorem` | [sourceMass_controllerAlpha_le](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/sourcemass-controlleralpha-le.md) | 98 | `result-track:2e78b11d5b0b200daa676f2ce451557dfd399521c1679dea28e25c9ff0ac55d3` |
| 11 | `theorem` | [sourceMass_controllerAlpha_tendsto_zero](../../../../GeneralTopology/ControllerScheduleNamespaced.lean/declarations/sourcemass-controlleralpha-tendsto-zero.md) | 107 | `result-track:30c2beeb4395209a0560eec09b78411d73630a68c9a8de83c65ab2a7d52df3a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb18aaa7e96babc3460dfa076d87028adc9443ecaa20375f15342a82695ccb6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ControllerSchedule/Variant79cc30ea4c1a2363049a8708166125c76807581dac67cc7497d08caa34843853.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ControllerSchedule/Variant79cc30ea4c1a2363049a8708166125c76807581dac67cc7497d08caa34843853.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

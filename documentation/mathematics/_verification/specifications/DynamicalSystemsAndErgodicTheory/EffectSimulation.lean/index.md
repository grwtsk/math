# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.EffectSimulation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bec971c7707b5ba49d8c73574a3d25790f0292fc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/EffectSimulation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bec971c7707b5ba49d8c73574a3d25790f0292fc`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/EffectSimulation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/EffectSimulation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [System](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/system.md) | 33 | `declaration-track:1c58ea8de93289c37012652742ca00194c1efc8814a841b752a23a4a18592ab3` |
| 2 | `inductive` | [Trace](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/trace.md) | 38 | `declaration-track:269b0dad28d6333b31c3a85dd683b9eca98d42801d95a243af070687e201077b` |
| 3 | `def` | [Reachable](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/reachable.md) | 47 | `declaration-track:3d7562e86c899a246429f45660f1c309ea1f73c95734f1e2b2d3dfd8d9b10578` |
| 4 | `theorem` | [initial_reachable](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/initial-reachable.md) | 51 | `result-track:65888005cfbe544cad7b4346c6d49d50ef2673da63bd34fe3e125ad4ac16985a` |
| 5 | `theorem` | [Trace.snoc](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/trace-snoc.md) | 57 | `result-track:a7f49ccad34c5e820d410498f5d7cb54417bc32546d48e85de95215d0d3159de` |
| 6 | `theorem` | [reachable_step](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/reachable-step.md) | 70 | `result-track:a6c535ce6b0561aeaafe105139f30006a5f3d6bad28d9f4d9f11586cba5d9c13` |
| 7 | `structure` | [Simulation](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/simulation.md) | 84 | `declaration-track:9ea263f9a4573784d03c2976ae347f38ec96c63dff60e3d868863b83fbe9a0e8` |
| 8 | `theorem` | [Simulation.trace_correspondence](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/simulation-trace-correspondence.md) | 95 | `result-track:fd8d688506351ea00e5ac15ae4fe34fd48a0e043de02365742f3c48c11b9202b` |
| 9 | `theorem` | [Simulation.reachable_correspondence](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/simulation-reachable-correspondence.md) | 118 | `result-track:e277763233cbe61dca1eb2ba30e811865c6b199813c7117ed609ac9973590fbf` |
| 10 | `def` | [EffectsSafe](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/effectssafe.md) | 144 | `declaration-track:f8b1a020560fda6baa57635722f0743132343c81fc58ce1cf5ffdc80f740bfa7` |
| 11 | `def` | [PolicyBridge](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/policybridge.md) | 155 | `declaration-track:5033ebf82e8f900f7fa5a455e3ffd21d532c4faec82c737666bee68e66ed2e14` |
| 12 | `theorem` | [Simulation.transfers_effect_safety](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/simulation-transfers-effect-safety.md) | 170 | `result-track:31295578267ababc830fecc214edc6be05ae25727577858abc88cd167fe06c9c` |
| 13 | `def` | [RelComp](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/relcomp.md) | 192 | `declaration-track:642cb8a12bc931e467ff232dbd280833dddbc1c68fae2e11ab00c1131d79a739` |
| 14 | `theorem` | [Simulation.comp](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/simulation-comp.md) | 198 | `result-track:341300397a94ce9d189cf3cc3a291f7a082a1860977caf3894d2f5784207e8d5` |
| 15 | `theorem` | [Simulation.identity](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/simulation-identity.md) | 226 | `result-track:7af4bf4bb5843308c49cfafe193025e96959b385bd07eb44539229b8caa38308` |
| 16 | `inductive` | [State](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/state.md) | 237 | `declaration-track:47bc8d8bab3c8f5e6dd268307dee215825ff9b11c94c3c46883f835ed69c096b` |
| 17 | `inductive` | [Label](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/label.md) | 241 | `declaration-track:761847cb8e3ae395fad07ae37721937b391a5c1c2e10f232ec3da145ca041fbe` |
| 18 | `def` | [concrete](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/concrete.md) | 246 | `declaration-track:ff4e8cd1e80c4defcccc771cef1b8251e3ab3469a8d50d8a4cf29e3325aa99a5` |
| 19 | `def` | [absentAbstract](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/absentabstract.md) | 251 | `declaration-track:e5ba2434cde3948261d59ec18dd22d388321f60dea2d22599657dbb5bcb0900a` |
| 20 | `def` | [silentAbstract](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/silentabstract.md) | 256 | `declaration-track:6e525eb0f8e68e35344ecd5e9f4f10147e6cfe32a7ea56bd6824a19a7e4d6a51` |
| 21 | `def` | [isEffect](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/iseffect.md) | 260 | `declaration-track:0838c32f2f2c1bb73e2ea2f9253e40ce4877dfb8364de004aeef4ee6609e1ba4` |
| 22 | `theorem` | [concrete_effect](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/concrete-effect.md) | 262 | `result-track:05002c2a7d162b7b60220b4c0a4ac50ae0233dae2d4bc58f4fe22cdc48c7b4f1` |
| 23 | `theorem` | [absent_abstract_safe](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/absent-abstract-safe.md) | 266 | `result-track:a915efda50b06ce467a6e00fa9b578e5c3bcb117044dd99bef83abaa65ba472a` |
| 24 | `theorem` | [silent_abstract_safe](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/silent-abstract-safe.md) | 272 | `result-track:ffcf781baf90f5f9198ef71cc07d9b022cfc369875ba9390996ea9f8bbedbdac` |
| 25 | `theorem` | [concrete_not_safe](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/concrete-not-safe.md) | 281 | `result-track:89fc1b375c2782fe8dc915fb1cc668eb4c3ab77ebb3c0879c40b790edee28a23` |
| 26 | `theorem` | [no_simulation_to_absent](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/no-simulation-to-absent.md) | 287 | `result-track:f6922ddf53f9c1720c797b86534a9f88901f02edad48aa9a9f297dc02261fbe0` |
| 27 | `theorem` | [no_simulation_to_silent](../../../../DynamicalSystemsAndErgodicTheory/EffectSimulation.lean/declarations/no-simulation-to-silent.md) | 297 | `result-track:d26cf5d63148cdc541b5cdd6f1939768393e4516f061fc85597ac51464dfb78a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb42ec42edfadfc7cc0303cc7b30c6cfa55263b4e2b517e4991944c7a0156f94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DynamicalSystems/TransitionSystems/EffectSimulation.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/EffectSimulation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: GRWTSK.Topology.GeneralTopology.SoundFilter.Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0170bf816fbd8da85c232114b1978ae5c0e2c1a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SoundFilter/Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SoundFilter/Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SoundFilter/Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0170bf816fbd8da85c232114b1978ae5c0e2c1a`.

Source path: `GRWTSK/Topology/GeneralTopology/SoundFilter/Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SoundFilter/Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Accepts](../../../../../mathematics/Topology/GeneralTopology/SoundFilter/Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e.lean/declarations/accepts--c75c55436908e8c126a09180.md) | 5 | `declaration-track:c75c55436908e8c126a09180b1b2618ae744da615d718fc2a4a7aac2fc5a4ba0` |
| 2 | `theorem` | [prime_or_not_dvd](../../../../../mathematics/Topology/GeneralTopology/SoundFilter/Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e.lean/declarations/prime-or-not-dvd--1adfc32f23fd9baede9532a9.md) | 7 | `result-track:1adfc32f23fd9baede9532a95678db3616cef6acb84fd3dc66d2c3a314172710` |
| 3 | `theorem` | [sound_filter_retains_prime](../../../../../mathematics/Topology/GeneralTopology/SoundFilter/Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e.lean/declarations/sound-filter-retains-prime--b54fa6c6d0f7ad4108b135f7.md) | 17 | `result-track:b54fa6c6d0f7ad4108b135f75a63d553367dd34d78fce311705dda79de8db8d1` |
| 4 | `theorem` | [filter_retains_own_prime](../../../../../mathematics/Topology/GeneralTopology/SoundFilter/Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e.lean/declarations/filter-retains-own-prime--241a712827d1a5a1360b669a.md) | 20 | `result-track:241a712827d1a5a1360b669a5a6c2cf1a5c62a7ddedd37d3a3f441c5aa9a9810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

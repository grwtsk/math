# Verification target: GRWTSK.Topology.Localization.Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d401153fead11125f582ac0e2e3ce9db2b8d7b59",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Localization/Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Localization/Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d.lean/index.md) · [Full source](../../../../mathematics/Topology/Localization/Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d401153fead11125f582ac0e2e3ce9db2b8d7b59`.

Source path: `GRWTSK/Topology/Localization/Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Localization/Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Localization.ringTopology](../../../../mathematics/Topology/Localization/Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d.lean/declarations/localization-ringtopology--d9011654d5acb69893e08e1d.md) | 30 | `declaration-track:d9011654d5acb69893e08e1d535684e91f3d95ef91a8f2bd13a89564f4e3f5b4` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/Localization/Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d.lean/declarations/instance--450b0d475b58c8804928bef2.md) | 33 | `declaration-track:450b0d475b58c8804928bef24fd83036190e9523b1094c9084d5b7f01bc978a0` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Topology/Localization/Variant92376e728e534d44540e654b5507331c991d7f6d69da4c56ff505bdbc050775d.lean/declarations/instance--05efe05e89a69a8686a51f16.md) | 36 | `declaration-track:05efe05e89a69a8686a51f162e79227f47563fa505be14c43d6820a6c58a6290` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

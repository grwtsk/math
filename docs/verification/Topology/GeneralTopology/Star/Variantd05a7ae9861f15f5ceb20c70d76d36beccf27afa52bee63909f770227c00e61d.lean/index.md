# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3926f97668e3abb208fb93852f9ca13feb148b2a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3926f97668e3abb208fb93852f9ca13feb148b2a`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [starL](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/declarations/starl--c549970946711a2d975d82be.md) | 33 | `declaration-track:c549970946711a2d975d82be70947999961ea99318a470852b044b4e0000b4d0` |
| 2 | `def` | [starL'](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/declarations/starl--d93e69c516653eb28fdceb53.md) | 46 | `declaration-track:d93e69c516653eb28fdceb536bd568c2df6d2e98f0a83b1f614b45efdd5bc5d1` |
| 3 | `theorem` | [continuous_selfAdjointPart](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/declarations/continuous-selfadjointpart--815808e40800613217c41844.md) | 59 | `result-track:815808e40800613217c41844ab270878da3370582eafab67251b84bd3c4ac38c` |
| 4 | `theorem` | [continuous_skewAdjointPart](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/declarations/continuous-skewadjointpart--cee393593f52b47145ac59d7.md) | 63 | `result-track:cee393593f52b47145ac59d7abd1689731deedca9515cc64238592c765e5afa9` |
| 5 | `theorem` | [continuous_decomposeProdAdjoint](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/declarations/continuous-decomposeprodadjoint--1682fe9821675177d89ecfc2.md) | 67 | `result-track:1682fe9821675177d89ecfc2558bf1f414630b15a14eeb28bad645e851094f77` |
| 6 | `theorem` | [continuous_decomposeProdAdjoint_symm](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/declarations/continuous-decomposeprodadjoint-symm--a8b541eec6c83012417ad887.md) | 71 | `result-track:a8b541eec6c83012417ad887d464c65458fcb761f4bcdd0deb20ede4dab7143f` |
| 7 | `def` | [selfAdjointPartL](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/declarations/selfadjointpartl--c84aec80f87dc19f9c4dffbb.md) | 77 | `declaration-track:c84aec80f87dc19f9c4dffbb97ebde82f52a976721186d7dd8a53d3a84e1fdd8` |
| 8 | `def` | [skewAdjointPartL](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/declarations/skewadjointpartl--70d306af3deb4a1e4cbcced2.md) | 84 | `declaration-track:70d306af3deb4a1e4cbcced2975ee3281569a47015167714d02b32b7cc176f3d` |
| 9 | `def` | [StarModule.decomposeProdAdjointL](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd05a7ae9861f15f5ceb20c70d76d36beccf27afa52bee63909f770227c00e61d.lean/declarations/starmodule-decomposeprodadjointl--69aec5d8440184586e7f4a5d.md) | 92 | `declaration-track:69aec5d8440184586e7f4a5d4c87900234e421597c39cdf972eeb0806bd22721` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

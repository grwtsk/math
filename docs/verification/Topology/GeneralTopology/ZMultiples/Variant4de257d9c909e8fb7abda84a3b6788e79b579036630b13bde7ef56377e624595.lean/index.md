# Verification target: GRWTSK.Topology.GeneralTopology.ZMultiples.Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c174ce72b39f0bd279ff657205862746f488d59",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c174ce72b39f0bd279ff657205862746f488d59`.

Source path: `GRWTSK/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean/declarations/instance--c83644c165182b6c762073a9.md) | 32 | `declaration-track:c83644c165182b6c762073a92b38b2ce6808b495c823543c48d653b12bf3f244` |
| 2 | `theorem` | [tendsto_coe_cofinite](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean/declarations/tendsto-coe-cofinite--f55afbd16e9ee255c8c6ad11.md) | 43 | `result-track:f55afbd16e9ee255c8c6ad11f909035a443eb37ee0c351079c19fc4981185002` |
| 3 | `theorem` | [tendsto_zmultiplesHom_cofinite](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean/declarations/tendsto-zmultipleshom-cofinite--639785f16eb934ef2a369d9a.md) | 50 | `result-track:639785f16eb934ef2a369d9a21824c066b5a08ceafc9f9751fbf3873b353004e` |
| 4 | `theorem` | [tendsto_zmultiples_subtype_cofinite](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variant4de257d9c909e8fb7abda84a3b6788e79b579036630b13bde7ef56377e624595.lean/declarations/tendsto-zmultiples-subtype-cofinite--20d61a7bf29bafce983e1c10.md) | 62 | `result-track:20d61a7bf29bafce983e1c10b5b483ebab2a8ad9f840f49475d63fd9c1902daf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

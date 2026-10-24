# Verification target: GRWTSK.Topology.GeneralTopology.Real.Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5d7d906b295e04a6ff53bb39f281578c61ac236",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5d7d906b295e04a6ff53bb39f281578c61ac236`.

Source path: `GRWTSK/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Encodable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Isometry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneContinuity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Real` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean/declarations/instance--63ef0687ae507dd5b7e13b6f.md) | 27 | `declaration-track:63ef0687ae507dd5b7e13b6fceb048863da5fe536d5603a062cf75a5d79f4273` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean/declarations/instance--60f0a9609e79ce8960251b2a.md) | 32 | `declaration-track:60f0a9609e79ce8960251b2abe4a7f0153ab86ff070d522a4fd1e67c75d82835` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean/declarations/instance--bf2db0029890118dc2d2a4f4.md) | 36 | `declaration-track:bf2db0029890118dc2d2a4f4d14a1b296383b106cf7c9ef29307cacdea958c7e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean/declarations/instance--4b38076d2a579ead5b77515e.md) | 48 | `declaration-track:4b38076d2a579ead5b77515e23dbf5a4c051ed01719703d3dc76f78ca2673bc4` |
| 5 | `instance` | [instProperSpace](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean/declarations/instproperspace--5aacaa83580fb57883df8b88.md) | 51 | `declaration-track:5aacaa83580fb57883df8b885a0ec3d2fdef6e7d4c8f0fe102ddc08b1307772b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean/declarations/instance--c4d71f57a17cebe5d6f4ba21.md) | 60 | `declaration-track:c4d71f57a17cebe5d6f4ba2125c0c136d611eac473d8df4eae8a0426dc46aa41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

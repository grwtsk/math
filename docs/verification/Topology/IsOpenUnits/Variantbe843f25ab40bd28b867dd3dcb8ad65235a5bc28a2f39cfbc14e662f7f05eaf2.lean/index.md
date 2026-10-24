# Verification target: GRWTSK.Topology.IsOpenUnits.Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "904a6fb3422b420ea454eeb394565eb4fa1efafd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean/index.md) · [Full source](../../../../mathematics/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `904a6fb3422b420ea454eeb394565eb4fa1efafd`.

Source path: `GRWTSK/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupWithZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.AdicTopology` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOpenUnits](../../../../mathematics/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean/declarations/isopenunits--2cd233b32d4ac8dc75087420.md) | 36 | `declaration-track:2cd233b32d4ac8dc750874206ae8fc55e858bcb94fe4ac498ca6fb210538fe31` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean/declarations/instance--c8c43a1169d1c94b0bd2ad7e.md) | 39 | `declaration-track:c8c43a1169d1c94b0bd2ad7ebf3ca52528b377a74994a5d26fa7cd5ae1d83854` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean/declarations/instance--5e042bab3e6bd9c348d90cba.md) | 44 | `declaration-track:5e042bab3e6bd9c348d90cba5780b98194af1524e125a8ae2d7a22385a245f31` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean/declarations/instance--b755de472b005e6b1d06ddcc.md) | 48 | `declaration-track:b755de472b005e6b1d06ddcc116eaa9341a8a8ab8590a2f8638149e29a1895a8` |
| 5 | `lemma` | [IsOpenUnits.of_isAdic](../../../../mathematics/Topology/IsOpenUnits/Variantbe843f25ab40bd28b867dd3dcb8ad65235a5bc28a2f39cfbc14e662f7f05eaf2.lean/declarations/isopenunits-of-isadic--c18fe77e8dce7269b7208518.md) | 59 | `result-track:c18fe77e8dce7269b72085183a143a48b9c8bfc659847426e1f50e67a406d689` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

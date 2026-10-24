# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.AbsoluteValue.Variant2b89d457d482dc330bf8297a1049923d9fbad605eccaf98f65203a5f5b7c60bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4abd41990e9f16b76d4b04b2b0a6355b119c76f2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant2b89d457d482dc330bf8297a1049923d9fbad605eccaf98f65203a5f5b7c60bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant2b89d457d482dc330bf8297a1049923d9fbad605eccaf98f65203a5f5b7c60bf.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant2b89d457d482dc330bf8297a1049923d9fbad605eccaf98f65203a5f5b7c60bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4abd41990e9f16b76d4b04b2b0a6355b119c76f2`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant2b89d457d482dc330bf8297a1049923d9fbad605eccaf98f65203a5f5b7c60bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant2b89d457d482dc330bf8297a1049923d9fbad605eccaf98f65203a5f5b7c60bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.OfFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant2b89d457d482dc330bf8297a1049923d9fbad605eccaf98f65203a5f5b7c60bf.lean/declarations/uniformspace--83e2b252e174aea8075ea9a5.md) | 35 | `declaration-track:83e2b252e174aea8075ea9a56a241dc62a1231422057b9319d11c66e46ba4879` |
| 2 | `theorem` | [hasBasis_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant2b89d457d482dc330bf8297a1049923d9fbad605eccaf98f65203a5f5b7c60bf.lean/declarations/hasbasis-uniformity--d631ff2f60cde9a57b79629d.md) | 40 | `result-track:d631ff2f60cde9a57b79629d3d4f0d2f4312decd300e83700e18842a6acdc684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

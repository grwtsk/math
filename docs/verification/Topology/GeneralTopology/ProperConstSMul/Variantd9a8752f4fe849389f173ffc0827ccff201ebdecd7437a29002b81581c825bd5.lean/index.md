# Verification target: GRWTSK.Topology.GeneralTopology.ProperConstSMul.Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae493f8ef6145df7506038d393c55d948a41709c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae493f8ef6145df7506038d393c55d948a41709c`.

Source path: `GRWTSK/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.ConstMulAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ProperConstVAdd](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean/declarations/properconstvadd--6d77957a712c701e6b0c238a.md) | 35 | `declaration-track:6d77957a712c701e6b0c238ab61ed1dcb17dbe111f39beb5fd2fdec47ab2236d` |
| 2 | `class` | [ProperConstSMul](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean/declarations/properconstsmul--5823a7b951e219416f259fe8.md) | 43 | `declaration-track:5823a7b951e219416f259fe8ec2aa268f8c77c89dd34dbee6457d0becda7fe0e` |
| 3 | `theorem` | [isProperMap_smul](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean/declarations/ispropermap-smul--75a767fc42c0191859dfadfb.md) | 49 | `result-track:75a767fc42c0191859dfadfb9b312f10123a126bb9e7e1c086491cc5fc0a80fe` |
| 4 | `theorem` | [IsCompact.preimage_smul](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean/declarations/iscompact-preimage-smul--a8ad76fc9d62a248c94a745d.md) | 54 | `result-track:a8ad76fc9d62a248c94a745d71bb357a175594be40be3fa2e072399150d821a2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean/declarations/instance--2f3fc0b732fccd0cb81b0d1b.md) | 59 | `declaration-track:2f3fc0b732fccd0cb81b0d1b5fea086924d5a1520c1d55af2fea5c43829ce64e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean/declarations/instance--7ea5f51c9c869d6befaaa63f.md) | 64 | `declaration-track:7ea5f51c9c869d6befaaa63fd2912c7c7f8e48ec1619113af130723429f23413` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean/declarations/instance--f2e137e8c974851f3f01fb06.md) | 68 | `declaration-track:f2e137e8c974851f3f01fb06c94a741ba4e80852b6d0b2bd0e16f6791ec19595` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantd9a8752f4fe849389f173ffc0827ccff201ebdecd7437a29002b81581c825bd5.lean/declarations/instance--902d33a738483bb777f2f574.md) | 74 | `declaration-track:902d33a738483bb777f2f574a98119da795e0d625158021085764f674a688cd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.SubboxInduction.Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f70f3e2cb58e1786d236f475fa760d7e482fc0ac",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f70f3e2cb58e1786d236f475fa760d7e482fc0ac`.

Source path: `GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Box.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/declarations/splitcenterbox--5fa69146a28ea9cc7f146a39.md) | 43 | `declaration-track:5fa69146a28ea9cc7f146a39155a74bb63b94570ee1e0d1e60c2c984b4fc7f4b` |
| 2 | `theorem` | [mem_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/declarations/mem-splitcenterbox--ec5f0961205f54d2b60df4d1.md) | 50 | `result-track:ec5f0961205f54d2b60df4d1c14f619c345569ad6a728372991fd79df0a7691f` |
| 3 | `theorem` | [splitCenterBox_le](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/declarations/splitcenterbox-le--1cf6ff382435e104e59c3036.md) | 61 | `result-track:1cf6ff382435e104e59c3036e439322cbfa9ceff58c590cdc337c1f3911eff00` |
| 4 | `theorem` | [disjoint_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/declarations/disjoint-splitcenterbox--4027ef07df3871563edfe61b.md) | 64 | `result-track:4027ef07df3871563edfe61bf842eda76d96eef3bf6c566ead0362379cdde84f` |
| 5 | `theorem` | [injective_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/declarations/injective-splitcenterbox--473d4f56c815f1a6ab16c26f.md) | 72 | `result-track:473d4f56c815f1a6ab16c26f80e1345d61fa5bbe2b03891400d534cfe02691c8` |
| 6 | `theorem` | [exists_mem_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/declarations/exists-mem-splitcenterbox--8ee5b0f21d0110ee92a55676.md) | 76 | `result-track:8ee5b0f21d0110ee92a556760e01fef919c6d3b9b4134e893f38edba8249e5f8` |
| 7 | `def` | [splitCenterBoxEmb](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/declarations/splitcenterboxemb--70574c7a6ed68f3b627e6e4f.md) | 82 | `declaration-track:70574c7a6ed68f3b627e6e4f79f4f499125375719efa43a4636cd733c0302b94` |
| 8 | `theorem` | [iUnion_coe_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/declarations/iunion-coe-splitcenterbox--d4e57bef1f72296ba8b18363.md) | 86 | `result-track:d4e57bef1f72296ba8b1836371a3730a37d1552e22f96952be08ab190bc18191` |
| 9 | `theorem` | [upper_sub_lower_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/declarations/upper-sub-lower-splitcenterbox--9a4be6dbd2dde3a19aad3f0e.md) | 91 | `result-track:9a4be6dbd2dde3a19aad3f0ed1f6224925ff57aa967473eb2d2b0450988ba466` |
| 10 | `theorem` | [subbox_induction_on'](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant56b379fa9ed04c63bd23f0d06c8e71117982c7f4660722158bfa6360b04c4512.lean/declarations/subbox-induction-on--f0a207831c3e0e21a80066d6.md) | 111 | `result-track:f0a207831c3e0e21a80066d67674ba84da86917b7da0bfad3fef3a7072671938` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

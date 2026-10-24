# Verification target: GRWTSK.Topology.GeneralTopology.SubboxInduction.Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86bb52b980f0bbac5b0258efb76daa4bbd224e09",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86bb52b980f0bbac5b0258efb76daa4bbd224e09`.

Source path: `GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Box.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/declarations/splitcenterbox--13a4be2330e6258cb74adac9.md) | 51 | `declaration-track:13a4be2330e6258cb74adac99e89bba89427038b64a3572ed2886f837c9443bf` |
| 2 | `theorem` | [mem_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/declarations/mem-splitcenterbox--1294bfb5ec62a9a0da079b55.md) | 58 | `result-track:1294bfb5ec62a9a0da079b55130e62df26fce3f54ed666ef2b50655e03ce2c55` |
| 3 | `theorem` | [splitCenterBox_le](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/declarations/splitcenterbox-le--1da5b1f0ea82ef2c4501461e.md) | 69 | `result-track:1da5b1f0ea82ef2c4501461e13a35ab773e5fa526d700f1ff4659383b1f10022` |
| 4 | `theorem` | [disjoint_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/declarations/disjoint-splitcenterbox--22590ac57106d51c09cbc943.md) | 72 | `result-track:22590ac57106d51c09cbc94359358e5248b2cde93aa813f83ede091498f0cc1c` |
| 5 | `theorem` | [injective_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/declarations/injective-splitcenterbox--74bc51112000eb1fca823d4d.md) | 80 | `result-track:74bc51112000eb1fca823d4d8fd15e6ef233e052940f611d81ec5021d665c516` |
| 6 | `theorem` | [exists_mem_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/declarations/exists-mem-splitcenterbox--c563baa07fcaaf67df2905a6.md) | 84 | `result-track:c563baa07fcaaf67df2905a6c0c171bf052b99937ed29a58c8daca0160235663` |
| 7 | `def` | [splitCenterBoxEmb](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/declarations/splitcenterboxemb--1924a11a95e254a0760d5b64.md) | 90 | `declaration-track:1924a11a95e254a0760d5b64318b2f3071880e9978ecfa14fe0bf901d085495d` |
| 8 | `theorem` | [iUnion_coe_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/declarations/iunion-coe-splitcenterbox--a3d80ac4508648ebb5f17559.md) | 94 | `result-track:a3d80ac4508648ebb5f17559e8cf57ea9cf5ae507825c52ba20d48aca3c7aa0c` |
| 9 | `theorem` | [upper_sub_lower_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/declarations/upper-sub-lower-splitcenterbox--4bb8df30ac3d6c6c96be9a47.md) | 99 | `result-track:4bb8df30ac3d6c6c96be9a47f3af129ade6d8287c8a13fe04cb31b33b37cd989` |
| 10 | `theorem` | [subbox_induction_on'](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/declarations/subbox-induction-on--c121232d8caa0afac5cfad3d.md) | 119 | `result-track:c121232d8caa0afac5cfad3d186bac09f8a8e36d3da36710c704a372da21b99e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

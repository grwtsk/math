# Verification target: GRWTSK.Topology.GeneralTopology.Real.Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dce84fa80a3619d9801cf86e179c664012c7c2e0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dce84fa80a3619d9801cf86e179c664012c7c2e0`.

Source path: `GRWTSK/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Encodable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Isometry` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneContinuity` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Real` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Real` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean/declarations/instance--73f7a453baf0462666739489.md) | 35 | `declaration-track:73f7a453baf0462666739489504b1fccca6b0afdcf823899079362324e3f246d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean/declarations/instance--cb69ba9108c1baa2f15b57ee.md) | 40 | `declaration-track:cb69ba9108c1baa2f15b57eebc71061ce3dc550544838293710c96cfefd65cd9` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean/declarations/instance--ef9617ad0ee10150ac3d80ce.md) | 44 | `declaration-track:ef9617ad0ee10150ac3d80cead087fb78462bfd9d7aed76d2663d6b8e64a5c89` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean/declarations/instance--5b58d998830fa3b50fa4fc60.md) | 56 | `declaration-track:5b58d998830fa3b50fa4fc6031a165da314d627c16dcef4248ecdc00a9456b04` |
| 5 | `instance` | [instProperSpace](../../../../../mathematics/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean/declarations/instproperspace--82b58c66816a8272814946f8.md) | 59 | `declaration-track:82b58c66816a8272814946f80029dd0a82e17f0b5f9505b39a3bfd15b04b2fd2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantd27a7c4460a54156187ae40a18395fa4381d03ee018c9fbdbfe66c211756b271.lean/declarations/instance--5f417a99c3854d7a9726298d.md) | 68 | `declaration-track:5f417a99c3854d7a9726298d88f35c000ff9b350dab976be0d1d2d875aa15f7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

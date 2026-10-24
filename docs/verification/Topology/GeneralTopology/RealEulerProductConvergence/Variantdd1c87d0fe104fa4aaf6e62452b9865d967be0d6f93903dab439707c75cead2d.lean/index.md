# Verification target: GRWTSK.Topology.GeneralTopology.RealEulerProductConvergence.Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d74038d9d3619175853a6536b0dc2f3ddd434bef",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d74038d9d3619175853a6536b0dc2f3ddd434bef`.

Source path: `GRWTSK/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.ZetaPartialSums` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.EulerProductApproximation` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaEulerApproxReal](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/declarations/zetaeulerapproxreal--bb6a1db122e8bae6ce1deed9.md) | 19 | `declaration-track:bb6a1db122e8bae6ce1deed94085fba3c23dabafbb15f0629a94151e0264a51c` |
| 2 | `theorem` | [zetaEulerApproxReal_expands_boundedSmoothNumbers](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/declarations/zetaeulerapproxreal-expands-boundedsmoothnumbers--f46c66a5cf0afe310245fc40.md) | 24 | `result-track:f46c66a5cf0afe310245fc40b1a4b67a17bdaf052e4a2bbe9cfce3e8816b1b1f` |
| 3 | `theorem` | [zetaPartialReal_le_zetaEulerApproxReal](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/declarations/zetapartialreal-le-zetaeulerapproxreal--6fc01115ba4982e700464a40.md) | 36 | `result-track:6fc01115ba4982e700464a4047395f42a660eb3c37a370936a6fbab286dca45c` |
| 4 | `theorem` | [sum_le_tsum_of_nonneg_summable](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/declarations/sum-le-tsum-of-nonneg-summable--1151573cf2960b4703eecc41.md) | 47 | `result-track:1151573cf2960b4703eecc41109ae340587f76d47e72b53ecf4515f93c71d018` |
| 5 | `theorem` | [zetaEulerApproxReal_le_zetaRealHalfPlane](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/declarations/zetaeulerapproxreal-le-zetarealhalfplane--dea6a67a1089383276c03ae6.md) | 55 | `result-track:dea6a67a1089383276c03ae6c95f891d9e3dbccd2d4681aa3dba53eb61a59e3b` |
| 6 | `theorem` | [zetaEulerApproxReal_pos](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/declarations/zetaeulerapproxreal-pos--903be5550ce369cc49e31a71.md) | 67 | `result-track:903be5550ce369cc49e31a71091f70ebf8a839b66dd3f3afc8e6215bf5a11e51` |
| 7 | `theorem` | [zetaEulerApproxReal_ge_one](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/declarations/zetaeulerapproxreal-ge-one--9f81d5677b6f5409a7103666.md) | 76 | `result-track:9f81d5677b6f5409a71036665aa0aa78d051557ddb56f854567d61beb59abdf2` |
| 8 | `theorem` | [tendsto_zetaEulerApproxReal](../../../../../mathematics/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/declarations/tendsto-zetaeulerapproxreal--1482c987ee02264106eb1b1b.md) | 95 | `result-track:1482c987ee02264106eb1b1bcacabd2751c9bcbd28f9f4f477d06049cde7b7cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

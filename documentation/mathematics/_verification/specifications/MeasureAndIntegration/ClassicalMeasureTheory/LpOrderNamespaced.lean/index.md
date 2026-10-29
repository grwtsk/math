# Verification target: Lp Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "278207a6d6813783314fb75346f73c7783ba016d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `278207a6d6813783314fb75346f73c7783ba016d`.

Source path: `GRWTSK/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Order.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConvergenceInMeasure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeFn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/coefn-le.md) | 51 | `result-track:52ca82475a9c8ab9c4362d87e5a5e4e15513d5c2d4fc88e7915afc7facf655e8` |
| 2 | `theorem` | [coeFn_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/coefn-nonneg.md) | 54 | `result-track:9735671f4f17d8acfd0830878558921566d097576331187f56f4beda6524603f` |
| 3 | `instance` | [instAddLeftMono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/instaddleftmono.md) | 63 | `declaration-track:0d17988d23182d71711b1d07f691b3e182465b5454b9e931723c0635d34b3693` |
| 4 | `instance` | [instIsOrderedAddMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/instisorderedaddmonoid.md) | 70 | `declaration-track:ebfd5c24113d0335e36a2e4b7aad523340f315bd74f88c96b9c7834d9c8c72ad` |
| 5 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/instance.md) | 73 | `declaration-track:f0dd4db8ddbec244b93b6b26490c1490044a114d36d8ac0e94b1cc3ef07dd4b9` |
| 6 | `theorem` | [Lp Order Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/sup.md) | 87 | `result-track:0093b79ffe8b2da8f49a80b3a6fcce1d94acc9660814aa4982fd7699f57cddd2` |
| 7 | `theorem` | [Lp Order Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/inf.md) | 95 | `result-track:b3c83b54cdd429e0fc900b3d31a75578c3c1ae67f2ca05e275593b7b9f131c9c` |
| 8 | `theorem` | [Lp Order Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/abs.md) | 103 | `result-track:42e8620066ad0a0a4f129c8182ac507d62dfccf0e97bd75aea4934225c6c44ee` |
| 9 | `instance` | [instLattice](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/instlattice.md) | 109 | `declaration-track:da0efd7456fe5dbbdbe03b357ae5ce67fce884d5947f396231e275cadcb21d10` |
| 10 | `theorem` | [coeFn_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/coefn-sup.md) | 118 | `result-track:b6d96eaf856f0078f91f86a2afd329411dacc87fe513b7414635e0f55a2e6936` |
| 11 | `theorem` | [coeFn_inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/coefn-inf.md) | 121 | `result-track:adbe6061889690c14abd80eca174d26133160a4d9ff328f721d0ec2401418b8b` |
| 12 | `theorem` | [coeFn_abs](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/coefn-abs.md) | 124 | `result-track:a5e35b62bd121d8c0e83efc0405e8ca6f726f98f400643d642e25365b7f6cb5c` |
| 13 | `instance` | [instHasSolidNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpOrderNamespaced.lean/declarations/insthassolidnorm.md) | 127 | `declaration-track:cd6b7c1e90f7a441b5f817fbf25be0d967000c3c9f61d7f5714a336ebdf2fde9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfa1d00e141f476ae7299951e6877bc40ac063fa2f308c665057080bd8b2c304 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/LpOrder/Variant84edf3f746fd2231b23735fbd67c49fe29a109e18b6f3af7521f8dc685c990a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

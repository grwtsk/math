# Verification target: GRWTSK.Topology.MetricTopology.UpperLower.Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a2f15edd1badcc7fc5d81d2995b070d7e00c6b3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a2f15edd1badcc7fc5d81d2995b070d7e00c6b3`.

Source path: `GRWTSK/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.UpperLower` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.thickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean/declarations/isupperset-thickening--d7f14e03f96d5863b609343e.md) | 42 | `result-track:d7f14e03f96d5863b609343ebc2546824919f53028f85fe1e78b8f1e9c5e586e` |
| 2 | `theorem` | [IsLowerSet.thickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean/declarations/islowerset-thickening--764488602b4f5e6a0d49d5aa.md) | 50 | `result-track:764488602b4f5e6a0d49d5aa0b4bc0566b052af24943aa7192bde7ff7c2298fe` |
| 3 | `theorem` | [IsUpperSet.cthickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean/declarations/isupperset-cthickening--2f1ea898cb325c45a0de377f.md) | 58 | `result-track:2f1ea898cb325c45a0de377f73db988c0c53cc95b7f5e8422fa5876d0f8150f7` |
| 4 | `theorem` | [IsLowerSet.cthickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean/declarations/islowerset-cthickening--22375e97a6ed3a9725b45d8c.md) | 66 | `result-track:22375e97a6ed3a9725b45d8c9e791bfea566aa594588b0e18bd87f3f5f9a4af5` |
| 5 | `theorem` | [IsUpperSet.mem_interior_of_forall_lt](../../../../../mathematics/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean/declarations/isupperset-mem-interior-of-forall-lt--e7b8259e90edd3c151e74ca5.md) | 82 | `result-track:e7b8259e90edd3c151e74ca52cb481f62bcc93aee281e03ea603e1509a855bbd` |
| 6 | `theorem` | [IsLowerSet.mem_interior_of_forall_lt](../../../../../mathematics/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean/declarations/islowerset-mem-interior-of-forall-lt--a64fe330416453797d83727c.md) | 100 | `result-track:a64fe330416453797d83727c6af3d6302c8048ac57e870132f01cb6b29a7c052` |
| 7 | `theorem` | [IsUpperSet.exists_subset_ball](../../../../../mathematics/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean/declarations/isupperset-exists-subset-ball--c75bda59d2c9470ca203891f.md) | 125 | `result-track:c75bda59d2c9470ca203891f10d6436c77228603364aa61bb7482716c7a7ee38` |
| 8 | `theorem` | [IsLowerSet.exists_subset_ball](../../../../../mathematics/Topology/MetricTopology/UpperLower/Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22.lean/declarations/islowerset-exists-subset-ball--35629add0f6f7a56c3571092.md) | 144 | `result-track:35629add0f6f7a56c35710926ca53b52fc06933d690c712d29ee7dcb5530b869` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

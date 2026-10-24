# Verification target: GRWTSK.Topology.MetricTopology.Basic.Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fea76dda3d07936f15948c4c659444760344b9e5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fea76dda3d07936f15948c4c659444760344b9e5`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.DenomsClearable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Liouville](../../../../../mathematics/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean/declarations/liouville--02b6dd7a5c782e7cab7da33c.md) | 41 | `declaration-track:02b6dd7a5c782e7cab7da33cbbce98ebc9f71995e99ea203a5f483b1e949a75d` |
| 2 | `theorem` | [irrational](../../../../../mathematics/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean/declarations/irrational--9baf69d90cfa7dafea853915.md) | 47 | `result-track:9baf69d90cfa7dafea8539152d1535bfaa4bdec5d56e0a46ff11f6816d0babb0` |
| 3 | `theorem` | [exists_one_le_pow_mul_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean/declarations/exists-one-le-pow-mul-dist--325943eccbdb887df6bc7c2a.md) | 103 | `result-track:325943eccbdb887df6bc7c2ac151cae6c7f4ff21e5aff6c68080b6f91b4ea788` |
| 4 | `theorem` | [exists_pos_real_of_irrational_root](../../../../../mathematics/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean/declarations/exists-pos-real-of-irrational-root--fb8c332c338f89b84b3e0796.md) | 131 | `result-track:fb8c332c338f89b84b3e0796142ae947428caeaf808c88d70f850f8843873099` |
| 5 | `theorem` | [transcendental](../../../../../mathematics/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean/declarations/transcendental--aca506b6a5c40bab07ce3ebb.md) | 185 | `result-track:aca506b6a5c40bab07ce3ebb212f427229008fa70960d238941594e2cfdf1adb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

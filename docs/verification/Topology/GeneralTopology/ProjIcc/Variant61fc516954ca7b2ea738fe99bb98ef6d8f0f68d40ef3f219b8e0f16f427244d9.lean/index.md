# Verification target: GRWTSK.Topology.GeneralTopology.ProjIcc.Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e07022e86e3b295ce2e98e659891fbb43367a88",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e07022e86e3b295ce2e98e659891fbb43367a88`.

Source path: `GRWTSK/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.ProjIcc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.Tendsto.IccExtend](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/declarations/filter-tendsto-iccextend--2e0f819410966cb1fce3e096.md) | 29 | `result-track:2e0f819410966cb1fce3e096430a3131b123c921832c08aba55fec68b071c7e6` |
| 2 | `theorem` | [continuous_projIcc](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/declarations/continuous-projicc--55e51ba451edb1808397b502.md) | 37 | `result-track:55e51ba451edb1808397b5026588172765a42667000828da06b15422672e2b50` |
| 3 | `theorem` | [isQuotientMap_projIcc](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/declarations/isquotientmap-projicc--4dc75de77d959f58c6e3f096.md) | 40 | `result-track:4dc75de77d959f58c6e3f096826f212165d2f138fd04ebefd7882c11c71bbc96` |
| 4 | `theorem` | [continuous_IccExtend_iff](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/declarations/continuous-iccextend-iff--803e43043461ee81d20e9b83.md) | 48 | `result-track:803e43043461ee81d20e9b83d7206f568437b8bfa7e9b26754586e4a1df529d0` |
| 5 | `theorem` | [Continuous.IccExtend](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/declarations/continuous-iccextend--70a680f5a1b4dd3a30b4e82a.md) | 52 | `result-track:70a680f5a1b4dd3a30b4e82a3c22d736e28a134f979ca780ed199246f50105b8` |
| 6 | `theorem` | [Continuous.Icc_extend'](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/declarations/continuous-icc-extend--a7b8b8c071af88b284ace001.md) | 59 | `result-track:a7b8b8c071af88b284ace001a26185bbfff68e78ac3c1ae3cd14d1363e082c8a` |
| 7 | `theorem` | [ContinuousAt.IccExtend](../../../../../mathematics/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/declarations/continuousat-iccextend--10e854285e924406c1f92809.md) | 63 | `result-track:10e854285e924406c1f92809481924bbaa56f2f4d98df52b717ac7aa337daa00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.ZeroAtInfty.Variantd5ced99155c3f3b347d822a87e2d5af88656d4fa8f20536f1fab75d84f4fd49b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6408cb60e4ebe75044da9ba692944894b50d9872",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantd5ced99155c3f3b347d822a87e2d5af88656d4fa8f20536f1fab75d84f4fd49b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ZeroAtInfty/Variantd5ced99155c3f3b347d822a87e2d5af88656d4fa8f20536f1fab75d84f4fd49b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ZeroAtInfty/Variantd5ced99155c3f3b347d822a87e2d5af88656d4fa8f20536f1fab75d84f4fd49b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6408cb60e4ebe75044da9ba692944894b50d9872`.

Source path: `GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantd5ced99155c3f3b347d822a87e2d5af88656d4fa8f20536f1fab75d84f4fd49b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZeroAtInfty/Variantd5ced99155c3f3b347d822a87e2d5af88656d4fa8f20536f1fab75d84f4fd49b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.ZeroAtInfty` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ZeroAtInftyContinuousMapClass.norm_le](../../../../../mathematics/Topology/GeneralTopology/ZeroAtInfty/Variantd5ced99155c3f3b347d822a87e2d5af88656d4fa8f20536f1fab75d84f4fd49b.lean/declarations/zeroatinftycontinuousmapclass-norm-le--ba487a7662672dfe39d0d090.md) | 32 | `result-track:ba487a7662672dfe39d0d0901f184f646520da0c09e040b82841eb99a52e1213` |
| 2 | `theorem` | [zero_at_infty_of_norm_le](../../../../../mathematics/Topology/GeneralTopology/ZeroAtInfty/Variantd5ced99155c3f3b347d822a87e2d5af88656d4fa8f20536f1fab75d84f4fd49b.lean/declarations/zero-at-infty-of-norm-le--f66848e913b63cb449f52af4.md) | 46 | `result-track:f66848e913b63cb449f52af47391113f89174c5368f115a3c752984da484a75c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

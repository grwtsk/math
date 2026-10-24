# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98f2648daf5d39aaf025160a85ac6c3b9eb59e97",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98f2648daf5d39aaf025160a85ac6c3b9eb59e97`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [starL](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/declarations/starl--9d87e1659421261f2e0d880b.md) | 25 | `declaration-track:9d87e1659421261f2e0d880bff2dc2df1e2167bbf57afe555f3f5df07c2bfb82` |
| 2 | `def` | [starL'](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/declarations/starl--290e48efb6131ed0f8fbd6c2.md) | 38 | `declaration-track:290e48efb6131ed0f8fbd6c2da7a09cb50c89b4c01a08932c6319d1da69b347b` |
| 3 | `theorem` | [continuous_selfAdjointPart](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/declarations/continuous-selfadjointpart--2f53c32ec87835433d5c09e2.md) | 51 | `result-track:2f53c32ec87835433d5c09e243ec206bec3cbd87b5e01eedce91c8ab83427cd6` |
| 4 | `theorem` | [continuous_skewAdjointPart](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/declarations/continuous-skewadjointpart--81666a79f96390712e8bcdf5.md) | 55 | `result-track:81666a79f96390712e8bcdf55309288491c847a034e934ef4da06177f73a861b` |
| 5 | `theorem` | [continuous_decomposeProdAdjoint](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/declarations/continuous-decomposeprodadjoint--3413e61fe1e01da6fad7990d.md) | 59 | `result-track:3413e61fe1e01da6fad7990d6a0e55eb4bb2f8a0890e17212151334a240c2ed4` |
| 6 | `theorem` | [continuous_decomposeProdAdjoint_symm](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/declarations/continuous-decomposeprodadjoint-symm--856fe7a083abc3147d059ceb.md) | 63 | `result-track:856fe7a083abc3147d059ceb4d3669d8bb2c74313029ac3cfcf6d454a2aaa8e7` |
| 7 | `def` | [selfAdjointPartL](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/declarations/selfadjointpartl--09feff09b7bddbdbde034a87.md) | 69 | `declaration-track:09feff09b7bddbdbde034a8718dc1e14244bec990b45e6898ce14b9f49bd4b32` |
| 8 | `def` | [skewAdjointPartL](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/declarations/skewadjointpartl--d4076583fd20da577a77fe2c.md) | 76 | `declaration-track:d4076583fd20da577a77fe2cc23044d574bb6da2f2264313a9b9bfae8d94fa62` |
| 9 | `def` | [StarModule.decomposeProdAdjointL](../../../../../mathematics/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/declarations/starmodule-decomposeprodadjointl--d5c9215d4a7d4dee40069ff7.md) | 84 | `declaration-track:d5c9215d4a7d4dee40069ff77a057c6281de0023aca72dc0c77c5679c5b6b80c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.Weierstrass.Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14b5a528741abcaf924242b002ecf70cef82fb10",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14b5a528741abcaf924242b002ecf70cef82fb10`.

Source path: `GRWTSK/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Bernstein` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomialFunctions_closure_eq_top'](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/declarations/polynomialfunctions-closure-eq-top--e0f36d0e8364da6a3b20e506.md) | 31 | `result-track:e0f36d0e8364da6a3b20e5066ac9ba88279f5f835f934d6de59b3f41616b0243` |
| 2 | `theorem` | [polynomialFunctions_closure_eq_top](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/declarations/polynomialfunctions-closure-eq-top--588ae91a2ff76c47c93b340c.md) | 49 | `result-track:588ae91a2ff76c47c93b340cf6315a30c2155b1e7d0ea6780ec5512fb1ba5363` |
| 3 | `theorem` | [continuousMap_mem_polynomialFunctions_closure](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/declarations/continuousmap-mem-polynomialfunctions-closure--c18bdcfa89c5eca8c1e7c1b8.md) | 79 | `result-track:c18bdcfa89c5eca8c1e7c1b8eec6605b7d17503aaf904cd296fb60d1aa774546` |
| 4 | `theorem` | [exists_polynomial_near_continuousMap](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/declarations/exists-polynomial-near-continuousmap--3c057f4831fdeb8072bb554e.md) | 91 | `result-track:3c057f4831fdeb8072bb554e4b19ac6964333d162b7acae4bb097cb6fe76a379` |
| 5 | `theorem` | [exists_polynomial_near_of_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/declarations/exists-polynomial-near-of-continuouson--454ac0725e879b4e86b651ab.md) | 105 | `result-track:454ac0725e879b4e86b651ab10034bb7f5f564495d6cc91ec5134aa34b325ece` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

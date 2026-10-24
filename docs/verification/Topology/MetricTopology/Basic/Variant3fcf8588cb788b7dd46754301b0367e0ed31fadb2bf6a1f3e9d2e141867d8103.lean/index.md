# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01c728fec31a4dd62be0c666f81469ea7f59d9f7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01c728fec31a4dd62be0c666f81469ea7f59d9f7`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.PerpBisector` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuadraticDiscriminant` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner_weightedVSub](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean/declarations/inner-weightedvsub--d63c514702902d17263be1cb.md) | 66 | `result-track:d63c514702902d17263be1cb11d606da6d303a6089cdf72d811f5031ea304e21` |
| 2 | `theorem` | [dist_affineCombination](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean/declarations/dist-affinecombination--15794f2755f226076ef21b34.md) | 80 | `result-track:15794f2755f226076ef21b3469ea3dde6601a74a26fe7ccf4605913b3046bb07` |
| 3 | `theorem` | [dist_smul_vadd_sq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean/declarations/dist-smul-vadd-sq--06534f7bede4ad9ed5bec8a0.md) | 98 | `result-track:06534f7bede4ad9ed5bec8a0ec4a937bd46fff7de450c1edfc1c1dabc46739f7` |
| 4 | `theorem` | [dist_smul_vadd_eq_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean/declarations/dist-smul-vadd-eq-dist--5e6cfd52ba574d5b5bce237e.md) | 107 | `result-track:5e6cfd52ba574d5b5bce237ebf95e404d73d13fa157be9b5625233517f3147a2` |
| 5 | `theorem` | [eq_of_dist_eq_of_dist_eq_of_mem_of_finrank_eq_two](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean/declarations/eq-of-dist-eq-of-dist-eq-of-mem-of-finrank-eq-two--75351555f7f364c648b05fad.md) | 127 | `result-track:75351555f7f364c648b05fadfc13cf45607a5d8d4b6279c3e59a97e6615e3180` |
| 6 | `theorem` | [eq_of_dist_eq_of_dist_eq_of_finrank_eq_two](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean/declarations/eq-of-dist-eq-of-dist-eq-of-finrank-eq-two--6331aa4e56f9dfa8a287ff52.md) | 182 | `result-track:6331aa4e56f9dfa8a287ff52d8a6cf930ab8c9f8b720206faa5b47239fca9a90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

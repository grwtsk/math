# Verification target: GRWTSK.Topology.MetricTopology.MazurUlam.Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f25c5ae3d8b8e4933fb42f9c683fbf9d60ac320",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f25c5ae3d8b8e4933fb42f9c683fbf9d60ac320`.

Source path: `GRWTSK/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.RealVectorSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.Isometry` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [midpoint_fixed](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/midpoint-fixed--bdf4a82bd770abc701e155a5.md) | 43 | `result-track:bdf4a82bd770abc701e155a5c8d32c37bb781d667f203785e4f3f0f277d5255e` |
| 2 | `theorem` | [map_midpoint](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/map-midpoint--44c3daa584237ae897a12cbb.md) | 84 | `result-track:44c3daa584237ae897a12cbb586c1d4a04b8ae915ca39efade909439e91a2ec3` |
| 3 | `def` | [toRealLinearIsometryEquivOfMapZero](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/toreallinearisometryequivofmapzero--933dfbf7f48dcc38020bacf0.md) | 103 | `declaration-track:933dfbf7f48dcc38020bacf004db870d045e88ca4bb99aa998e3531b832ea543` |
| 4 | `theorem` | [coe_toRealLinearIsometryEquivOfMapZero](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/coe-toreallinearisometryequivofmapzero--c35e186e317a0ef7888e22fc.md) | 108 | `result-track:c35e186e317a0ef7888e22fc9a735d75000d6d373fac9e46dc8855eb4b5f898e` |
| 5 | `theorem` | [coe_toRealLinearIsometryEquivOfMapZero_symm](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/coe-toreallinearisometryequivofmapzero-symm--6989ec6402acb80f43d31e46.md) | 113 | `result-track:6989ec6402acb80f43d31e463c912a753a2b5adae50fa73c43536a326bb9b6c5` |
| 6 | `def` | [toRealLinearIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/toreallinearisometryequiv--8e6e98ff724f95a9735cf8f5.md) | 119 | `declaration-track:8e6e98ff724f95a9735cf8f5fb25a6832851bebd3a3d87e378902348232238f0` |
| 7 | `theorem` | [toRealLinearIsometryEquiv_apply](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/toreallinearisometryequiv-apply--0c8a82280c9eb2625c8261e8.md) | 124 | `result-track:0c8a82280c9eb2625c8261e848ac53d4c3175370249dc026c04531ca509a4962` |
| 8 | `theorem` | [toRealLinearIsometryEquiv_symm_apply](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/toreallinearisometryequiv-symm-apply--783a9134b7854e3339b26694.md) | 129 | `result-track:783a9134b7854e3339b26694322bf051a2ee99b0b642cf46138f73154a9c0f7b` |
| 9 | `def` | [toRealAffineIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/torealaffineisometryequiv--e48516ad587d3ecb3aab79b0.md) | 135 | `declaration-track:e48516ad587d3ecb3aab79b0ae4a18278af17221629f282906a4866ef1d20e21` |
| 10 | `theorem` | [coeFn_toRealAffineIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/coefn-torealaffineisometryequiv--a8f1a0cd160ec019c434895a.md) | 142 | `result-track:a8f1a0cd160ec019c434895ab1eff95eaf51013d684e5dc673e26eb446831918` |
| 11 | `theorem` | [coe_toRealAffineIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variante5f4b2e0d6eeba1b14829b77984946cf6c0236d30a721e228e79a08aee55b63a.lean/declarations/coe-torealaffineisometryequiv--d5e790bc5c0272c9bf340feb.md) | 146 | `result-track:d5e790bc5c0272c9bf340feba1dec846ef3b629235b83751b7b632c44ec2a98b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

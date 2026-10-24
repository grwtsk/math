# Verification target: GRWTSK.Topology.MetricTopology.Isometry.Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e09af538b55e13e04acb33a6b234638d6d679c09",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e09af538b55e13e04acb33a6b234638d6d679c09`.

Source path: `GRWTSK/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Isometry](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/isometry--10fe54cbd6f3960e247ce9b3.md) | 32 | `declaration-track:10fe54cbd6f3960e247ce9b3e50f06a1b4ba259d2168adfea1feddbccfd6b7b1` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/instfunlike--3d543646d3f0aa7290df6d55.md) | 44 | `declaration-track:3d543646d3f0aa7290df6d55ef64bbd8f70e5ff326399b76e26fb384efa9d6e7` |
| 3 | `instance` | [instLinearMapClass](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/instlinearmapclass--dbf2a85ff79afeba08b2b9e2.md) | 48 | `declaration-track:dbf2a85ff79afeba08b2b9e2537659100f9b82941b96a0cf441ae153e1fad64d` |
| 4 | `theorem` | [toLinearMap_injective](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/tolinearmap-injective--bdf13ee2938c48141686c2a0.md) | 52 | `result-track:bdf13ee2938c48141686c2a04a7127075ba0e7ffea5ad965c4763a00af31146d` |
| 5 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/ext--e495ab834da2bfa1b68fdd95.md) | 57 | `result-track:e495ab834da2bfa1b68fdd95ba080d911436d8a0ad379c3b075fb68fdf85b618` |
| 6 | `def` | [Simps.apply](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/simps-apply--b0241438bdb6a4738d8a8965.md) | 61 | `declaration-track:b0241438bdb6a4738d8a8965b4bd13778e1cbed6ec12ed145e1eafef333fd0b3` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/map-app--f9e9032b82f1b01be221526c.md) | 66 | `result-track:f9e9032b82f1b01be221526cd4938066f661bdc418d6286d9127d80daef06ae7` |
| 8 | `theorem` | [coe_toLinearMap](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/coe-tolinearmap--6681961d5f9128d09a79e7f7.md) | 70 | `result-track:6681961d5f9128d09a79e7f737ca28fa7863f8ca3c4cb847c8d30edeb43f7e15` |
| 9 | `def` | [id](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/id--5e0b5f420720ad328820c71e.md) | 75 | `declaration-track:5e0b5f420720ad328820c71ee92d2086dbf579494498a2f2674d041662c4f368` |
| 10 | `def` | [ofEq](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/ofeq--46145ac02aba447da3b406d0.md) | 81 | `declaration-track:46145ac02aba447da3b406d02260b9158a9953f31935caaa050b4cefe9dce30d` |
| 11 | `theorem` | [ofEq_rfl](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/ofeq-rfl--32cff7143daeb77938967d2d.md) | 86 | `result-track:32cff7143daeb77938967d2d37c8e2c9317453994ef34ab7dda70bb6af59ae17` |
| 12 | `def` | [comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/comp--6d37928b45c8dd5d525bc338.md) | 90 | `declaration-track:6d37928b45c8dd5d525bc338d06ec925be7abec12258d5981cb9fa1159e290ee` |
| 13 | `theorem` | [toLinearMap_comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/tolinearmap-comp--bbd218e1e696d7b9a1bd1ec2.md) | 96 | `result-track:bbd218e1e696d7b9a1bd1ec2473a77c12a9eeb8332deb6005eefa602bfe9312c` |
| 14 | `theorem` | [id_comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/id-comp--a10d5a992402e09e8b9aa49e.md) | 101 | `result-track:a10d5a992402e09e8b9aa49e05bc04d5804302ae467398ac47403b0d24226fb7` |
| 15 | `theorem` | [comp_id](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/comp-id--75f7bee60372dbde38d43403.md) | 105 | `result-track:75f7bee60372dbde38d43403f3c6ff50a7d5dc6babae40d41e2eb7401fe2692a` |
| 16 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/comp-assoc--cfd6e9fabbb660e5d982bb90.md) | 108 | `result-track:cfd6e9fabbb660e5d982bb90bbad5e63621cc5f4f8751350a4761eaccf8f99cc` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/instance--b1254b506c93a592e8fe4998.md) | 113 | `declaration-track:b1254b506c93a592e8fe4998b60332fe6314c14dceddb2b21fcff74df7238509` |
| 18 | `instance` | [hasZeroOfSubsingleton](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/haszeroofsubsingleton--cd108bb1a0ca69d7d618e9cb.md) | 117 | `declaration-track:cd108bb1a0ca69d7d618e9cb928a34185502384b22d4fe010701d2210e1a5b85` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Isometry/Variantd524f515e94e8ae68250f02a0eed28b04e986014e53ac50c0e1a2811fca0fa29.lean/declarations/instance--6313396c044ccfe525f85d4e.md) | 123 | `declaration-track:6313396c044ccfe525f85d4e4aa61ef19c2b84f3837520d0ca9696f06d4faa99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

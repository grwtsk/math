# Verification target: GRWTSK.Topology.GeneralTopology.ZMultiples.Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2309a0c7354963e1a1d789063a957d741e4fd637",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZMultiples/Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2309a0c7354963e1a1d789063a957d741e4fd637`.

Source path: `GRWTSK/Topology/GeneralTopology/ZMultiples/Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZMultiples/Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10.lean/declarations/instance--6d9d164e8ab98e6d89e20667.md) | 40 | `declaration-track:6d9d164e8ab98e6d89e206672a9d2ab1e89fc67ba7c58dab2c3d8f16c1c4b0c2` |
| 2 | `theorem` | [tendsto_coe_cofinite](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10.lean/declarations/tendsto-coe-cofinite--9c5d23cf14874d8d5503aa3b.md) | 51 | `result-track:9c5d23cf14874d8d5503aa3bbd0c325891889300d3e7cc782e3c80aadddebcd2` |
| 3 | `theorem` | [tendsto_zmultiplesHom_cofinite](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10.lean/declarations/tendsto-zmultipleshom-cofinite--031306eefa13dc67ad55b920.md) | 58 | `result-track:031306eefa13dc67ad55b920e6464a9e8f156fa1fc537d3650f2232fcae28d86` |
| 4 | `theorem` | [tendsto_zmultiples_subtype_cofinite](../../../../../mathematics/Topology/GeneralTopology/ZMultiples/Variantd9fac944a1dc69e596eedde795e0b2fea9e05185410edd5faac10cb6dfbc4d10.lean/declarations/tendsto-zmultiples-subtype-cofinite--8170cac53a1dd051389a69c5.md) | 70 | `result-track:8170cac53a1dd051389a69c5631efb498e2d90e92c71d2f019e2c44a32a31be3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.Sphere.Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4225241e12593843b56b3ad96f223e8fb527b00a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sphere/Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sphere/Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sphere/Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4225241e12593843b56b3ad96f223e8fb527b00a`.

Source path: `GRWTSK/Topology/GeneralTopology/Sphere/Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sphere/Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disk](../../../../../mathematics/Topology/GeneralTopology/Sphere/Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292.lean/declarations/disk--227d5c4d848f96f461c080a0.md) | 32 | `declaration-track:227d5c4d848f96f461c080a0af53d7f9f45a445b606e143d2774b4c969a02ea6` |
| 2 | `def` | [diskBoundary](../../../../../mathematics/Topology/GeneralTopology/Sphere/Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292.lean/declarations/diskboundary--369cf48a22243fbe43b1c590.md) | 36 | `declaration-track:369cf48a22243fbe43b1c5908f69a58b3026d7885aa9a8a15bd343e94258363e` |
| 3 | `def` | [sphere](../../../../../mathematics/Topology/GeneralTopology/Sphere/Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292.lean/declarations/sphere--caddf8e074c34c39bc716384.md) | 41 | `declaration-track:caddf8e074c34c39bc716384fcfbba11ff19e5de5acc7679b8957ea006128475` |
| 4 | `def` | [diskBoundaryInclusion](../../../../../mathematics/Topology/GeneralTopology/Sphere/Variant633d6937bf297a1317cdf5e14e664572270c368f05eb2d580a7b0e978c0ed292.lean/declarations/diskboundaryinclusion--a58e6119f75254e96908b995.md) | 54 | `declaration-track:a58e6119f75254e96908b995b5dd3437be66a2bd45f7bdc992c5e90da279c3ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

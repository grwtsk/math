# Verification target: GRWTSK.Topology.MetricTopology.Simplex.Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "230d2160a32882d6098735e31cdce61e10eb79da",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `230d2160a32882d6098735e31cdce61e10eb79da`.

Source path: `GRWTSK/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Independent` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Scalene](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/scalene--731c309f7d61032c3c834a67.md) | 35 | `declaration-track:731c309f7d61032c3c834a673f8f8bf58977c5070a5bbe61387fc673e528a78d` |
| 2 | `lemma` | [Scalene.dist_ne](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/scalene-dist-ne--d12dd7444f3a0d10d26181c7.md) | 39 | `result-track:d12dd7444f3a0d10d26181c7965cf08a9d86537405673a26fdf59dd1df46f518` |
| 3 | `lemma` | [scalene_reindex_iff](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/scalene-reindex-iff--b2fda362c3df3506b9acf829.md) | 57 | `result-track:b2fda362c3df3506b9acf8290b8f105f1b08a4af2ec9ff112ccc6908046b90e2` |
| 4 | `def` | [Equilateral](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/equilateral--a65620d1fe1d99e31a886ac9.md) | 90 | `declaration-track:a65620d1fe1d99e31a886ac90ffbce8a11aeb10b458949fded778f4bbfb02f54` |
| 5 | `lemma` | [Equilateral.dist_eq](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/equilateral-dist-eq--78f4db6b5492be045b7429f4.md) | 93 | `result-track:78f4db6b5492be045b7429f4c8b2b06f0b7bbf3093118d39eaf978a4c744ea4e` |
| 6 | `lemma` | [equilateral_reindex_iff](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/equilateral-reindex-iff--489ec1de35ab665fe67dbd73.md) | 99 | `result-track:489ec1de35ab665fe67dbd73d7de906bee7320a04f2f9955e40e2eb6822f7f29` |
| 7 | `def` | [Regular](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/regular--932b6b749e68e8033c36fe24.md) | 106 | `declaration-track:932b6b749e68e8033c36fe2454df4bc339ff371c394aefbc68c05b9979e50d51` |
| 8 | `lemma` | [regular_reindex_iff](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/regular-reindex-iff--701c86bfcc12ca1f90645221.md) | 109 | `result-track:701c86bfcc12ca1f906452212d9f99bd46899bc22685a852758e6222e8c2d7eb` |
| 9 | `lemma` | [Regular.equilateral](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/regular-equilateral--8c468791a4186f9444a85d4e.md) | 121 | `result-track:8c468791a4186f9444a85d4ec7bfb3ba6ee7a344f736f6730ff7b37598a2220b` |
| 10 | `lemma` | [scalene_iff_dist_ne_and_dist_ne_and_dist_ne](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/scalene-iff-dist-ne-and-dist-ne-and-dist-ne--8203524d32f4de2d1fec3ac2.md) | 145 | `result-track:8203524d32f4de2d1fec3ac2a2f0e88de0cb5b175abef9dabeacc59b74880e67` |
| 11 | `lemma` | [equilateral_iff_dist_eq_and_dist_eq](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/equilateral-iff-dist-eq-and-dist-eq--d9f726054915f71520f35f1f.md) | 161 | `result-track:d9f726054915f71520f35f1fb180b9cd613c07f5c1482333843823c8da9ea0d6` |
| 12 | `lemma` | [equilateral_iff_dist_01_eq_02_and_dist_01_eq_12](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/declarations/equilateral-iff-dist-01-eq-02-and-dist-01-eq-12--92c8f89952a80c24383c60de.md) | 182 | `result-track:92c8f89952a80c24383c60de8aa40922ba9a8779c5b108bfb3c3f6a2ae6d3035` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

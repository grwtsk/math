# Verification target: GRWTSK.Topology.MetricTopology.Simplex.Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9395ead8a380c9b5d995f9694b0e8d5450646a48",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9395ead8a380c9b5d995f9694b0e8d5450646a48`.

Source path: `GRWTSK/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Independent` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Scalene](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/scalene--8c86dcf5082b16a6aa64ecc1.md) | 43 | `declaration-track:8c86dcf5082b16a6aa64ecc190262c5ebf32d9215b8aefcb2061322914cade3e` |
| 2 | `lemma` | [Scalene.dist_ne](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/scalene-dist-ne--417c82a9992b65fd14b4f657.md) | 47 | `result-track:417c82a9992b65fd14b4f6571872ad54ff71321f02768da2ec5b72cd2ad3b6dc` |
| 3 | `lemma` | [scalene_reindex_iff](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/scalene-reindex-iff--b3c9e6cadcd70a8f12954212.md) | 65 | `result-track:b3c9e6cadcd70a8f12954212582fff521d50672bcf94d5359df57164d9b7c247` |
| 4 | `def` | [Equilateral](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/equilateral--93e619594646e48cc62179dd.md) | 98 | `declaration-track:93e619594646e48cc62179dd64b1ef9944c9bc59beed7d98db000964f1a24aec` |
| 5 | `lemma` | [Equilateral.dist_eq](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/equilateral-dist-eq--e5134501aae7403617bea285.md) | 101 | `result-track:e5134501aae7403617bea2851c458c439c5e170158daffffef84e508100d47b6` |
| 6 | `lemma` | [equilateral_reindex_iff](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/equilateral-reindex-iff--2d4ba1c60c9457ff070a2cea.md) | 107 | `result-track:2d4ba1c60c9457ff070a2cea0dd426f7ace0cc0cde3dc04993cb934ac5451f58` |
| 7 | `def` | [Regular](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/regular--28a1f5823941fc9314f8bf58.md) | 114 | `declaration-track:28a1f5823941fc9314f8bf58f873fdf82893ded9b2f12268d17036bb856bd80b` |
| 8 | `lemma` | [regular_reindex_iff](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/regular-reindex-iff--132b335dbfb282a7ab756807.md) | 117 | `result-track:132b335dbfb282a7ab756807497f341f5142f1ffcf3791dd0c3c8b3dd8122c76` |
| 9 | `lemma` | [Regular.equilateral](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/regular-equilateral--68e5feed1a3d7de27badd01f.md) | 129 | `result-track:68e5feed1a3d7de27badd01fab38116a4183d25268c31cc7ef1e135b399c46fd` |
| 10 | `lemma` | [scalene_iff_dist_ne_and_dist_ne_and_dist_ne](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/scalene-iff-dist-ne-and-dist-ne-and-dist-ne--294b67628acfa3491050f4fc.md) | 153 | `result-track:294b67628acfa3491050f4fcfb1fd1ad5cde6879de8a6406468917f4f9706e3b` |
| 11 | `lemma` | [equilateral_iff_dist_eq_and_dist_eq](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/equilateral-iff-dist-eq-and-dist-eq--fdd1278b78d94204025ed788.md) | 169 | `result-track:fdd1278b78d94204025ed788d66ff8807a342296014abd50d524cd1e1ed9fe1c` |
| 12 | `lemma` | [equilateral_iff_dist_01_eq_02_and_dist_01_eq_12](../../../../../mathematics/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/declarations/equilateral-iff-dist-01-eq-02-and-dist-01-eq-12--ca319d355b28987dfc3f3a14.md) | 190 | `result-track:ca319d355b28987dfc3f3a1434b452bb3f84c406f93bd36123a851061e483840` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

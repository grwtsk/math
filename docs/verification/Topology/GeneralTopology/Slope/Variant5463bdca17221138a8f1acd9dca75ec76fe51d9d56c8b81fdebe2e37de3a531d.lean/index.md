# Verification target: GRWTSK.Topology.GeneralTopology.Slope.Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2fa2c7202438671aff30a60a6ebf5214b64d30a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2fa2c7202438671aff30a60a6ebf5214b64d30a`.

Source path: `GRWTSK/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Slope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAtFilter_iff_tendsto_slope](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivatfilter-iff-tendsto-slope--9cff5e27632c09a044f22757.md) | 58 | `result-track:9cff5e27632c09a044f22757bbcfc39ccc08d326a651399bbc75768dd17d196c` |
| 2 | `theorem` | [hasDerivWithinAt_iff_tendsto_slope](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivwithinat-iff-tendsto-slope--88694ccba48a9db0e6cdc3ef.md) | 73 | `result-track:88694ccba48a9db0e6cdc3efaf6b14d942ca54f4e67c595a9d6387fb96a583fb` |
| 3 | `theorem` | [hasDerivWithinAt_iff_tendsto_slope'](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivwithinat-iff-tendsto-slope--355d25bd3776b77fd8a5c779.md) | 79 | `result-track:355d25bd3776b77fd8a5c7792dc696d50c22e53f9811671a65121cd5de27cdef` |
| 4 | `theorem` | [hasDerivAt_iff_tendsto_slope](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivat-iff-tendsto-slope--1e5094c4092e9fc2f7d2fd27.md) | 84 | `result-track:1e5094c4092e9fc2f7d2fd2709d3c315acc4c2e32dc4be717b72c297f16a1084` |
| 5 | `theorem` | [HasDerivWithinAt.limsup_slope_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivwithinat-limsup-slope-le--0a925c3de40f1ec84321c941.md) | 96 | `result-track:0a925c3de40f1ec84321c9413b384baf04db3dc73117f51b8ce231d000ede824` |
| 6 | `theorem` | [HasDerivWithinAt.limsup_slope_le'](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivwithinat-limsup-slope-le--2051e1a90c1b744a818ffde4.md) | 101 | `result-track:2051e1a90c1b744a818ffde4ed631d415fe5d16f3ddd691cb8da62fc63c25afe` |
| 7 | `theorem` | [HasDerivWithinAt.liminf_right_slope_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivwithinat-liminf-right-slope-le--653bf72f2e3c9ea7846ba793.md) | 106 | `result-track:653bf72f2e3c9ea7846ba793aefe299fa7518fe99bcc944bf46c6ab90274bc9a` |
| 8 | `theorem` | [HasDerivWithinAt.limsup_norm_slope_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivwithinat-limsup-norm-slope-le--16764468e4f49c4e0adf7e8a.md) | 124 | `result-track:16764468e4f49c4e0adf7e8a5a5e7ea30e64ac55355362ae69312590522950cc` |
| 9 | `theorem` | [HasDerivWithinAt.limsup_slope_norm_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivwithinat-limsup-slope-norm-le--c2b977b8419084280ae072cf.md) | 145 | `result-track:c2b977b8419084280ae072cf1a074e5b247a862504aa2bf997bffe3c53fbae54` |
| 10 | `theorem` | [HasDerivWithinAt.liminf_right_norm_slope_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivwithinat-liminf-right-norm-slope-le--601acb0b741e2c875ad8afbe.md) | 158 | `result-track:601acb0b741e2c875ad8afbe474264b5c58d0de6557f932c35a0b18c337062e7` |
| 11 | `theorem` | [HasDerivWithinAt.liminf_right_slope_norm_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/declarations/hasderivwithinat-liminf-right-slope-norm-le--0ce1e3e4145dd28c6e2a886d.md) | 174 | `result-track:0ce1e3e4145dd28c6e2a886dcd748cdf37ce2a5d6650fc752d4a708504d22eb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

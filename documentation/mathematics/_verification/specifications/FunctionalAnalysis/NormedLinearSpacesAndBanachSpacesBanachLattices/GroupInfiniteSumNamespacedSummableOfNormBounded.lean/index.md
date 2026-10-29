# Verification target: Group Infinite Sum Namespaced Summable Of Norm Bounded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08eb33646f78b84708a015c37990d673134be3fd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant8b9724bee614066461cbd3e70b6e1a96d100266c6e696070f95de9d5ae7710d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08eb33646f78b84708a015c37990d673134be3fd`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant8b9724bee614066461cbd3e70b6e1a96d100266c6e696070f95de9d5ae7710d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variant8b9724bee614066461cbd3e70b6e1a96d100266c6e696070f95de9d5ae7710d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.NNReal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cauchySeq_finset_iff_vanishing_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/cauchyseq-finset-iff-vanishing-norm.md) | 48 | `result-track:a30d3a17765b0b17546b9bbb36513217c31dda0fd89be5cb5d9de7d48620bd1d` |
| 2 | `theorem` | [summable_iff_vanishing_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/summable-iff-vanishing-norm.md) | 57 | `result-track:ca0e79f517785ed32e313134703a3dde282c153ff6a48c037b06bc46d2432d25` |
| 3 | `theorem` | [cauchySeq_finset_of_norm_bounded_eventually](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/cauchyseq-finset-of-norm-bounded-eventually.md) | 62 | `result-track:646a0ae6e94bc45a0ee7bad0f04d08fcbd512e64e87c9b7837b0c58b2465391d` |
| 4 | `theorem` | [cauchySeq_finset_of_norm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/cauchyseq-finset-of-norm-bounded.md) | 78 | `result-track:018df8232c20c60f9db5206be7421c292eb2df98e6294ca07a3a9c14ac01dc25` |
| 5 | `theorem` | [cauchySeq_range_of_norm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/cauchyseq-range-of-norm-bounded.md) | 85 | `result-track:d491b9b48b9ceed3874ddce56f7ed134b16d66da9354440b33aaed66a0bd1155` |
| 6 | `theorem` | [cauchySeq_finset_of_summable_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/cauchyseq-finset-of-summable-norm.md) | 99 | `result-track:bfe1281e291b51be8804f0fcab2794a434416a9b689fce85f736c1189ab62b9f` |
| 7 | `theorem` | [hasSum_of_subseq_of_summable](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/hassum-of-subseq-of-summable.md) | 107 | `result-track:998aa4d04cafec31d01b2a933c163eb1b65887290bebf6c51eb2c3b67681cc92` |
| 8 | `theorem` | [hasSum_iff_tendsto_nat_of_summable_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/hassum-iff-tendsto-nat-of-summable-norm.md) | 113 | `result-track:8e568c9f0dc8c9fec75e0bb1ae91646d0a478c5133b71b3b374a3d7819f00f7e` |
| 9 | `theorem` | [summable_of_norm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/summable-of-norm-bounded.md) | 120 | `result-track:2d488c4b30c040454ddf01cadd09fedea2b4db839c6dbfde617374aa3a1a8415` |
| 10 | `theorem` | [HasSum.norm_le_of_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/hassum-norm-le-of-bounded.md) | 126 | `result-track:67f65cf21b7c87b6ffcd7866305df60cefb48ae5e66effcd8dcd6fa4a6b6307e` |
| 11 | `theorem` | [tsum_of_norm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/tsum-of-norm-bounded.md) | 134 | `result-track:89ebf7c16e546ceee0eec575edea76eab19c9dc9f4d7b30f422274278e2a0686` |
| 12 | `theorem` | [norm_tsum_le_tsum_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/norm-tsum-le-tsum-norm.md) | 144 | `result-track:2a2fff9cdca98a1d8293b1645c94a568b4034da4534fd2702d3732a3e0092c53` |
| 13 | `theorem` | [tsum_of_nnnorm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/tsum-of-nnnorm-bounded.md) | 153 | `result-track:b8b0a73d2d981be97991652177d4e0f1055247b23dfaf5e1d09b348576830c34` |
| 14 | `theorem` | [nnnorm_tsum_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/nnnorm-tsum-le.md) | 162 | `result-track:1757e32ec5d9bcc9968fc7498795381d48df08e6ddc40ec8e0bb56f03d7136be` |
| 15 | `theorem` | [summable_of_norm_bounded_eventually](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/summable-of-norm-bounded-eventually.md) | 170 | `result-track:b2db7b76bbf5ffae5ac0b56e287b8040ee95d2a0bfbc70c8ea3cc5c15af44ea2` |
| 16 | `theorem` | [summable_of_nnnorm_bounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/summable-of-nnnorm-bounded.md) | 175 | `result-track:b161de857a0893640cdf44dcf7a5368d7e767c144e2e9cbfb43ca00f6ffa9296` |
| 17 | `theorem` | [summable_of_summable_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/summable-of-summable-norm.md) | 181 | `result-track:d5db49c48024258a80f02ba126f0ea8d5e0c20508bfc4d90c0cd0bae4a750157` |
| 18 | `theorem` | [summable_of_summable_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupInfiniteSumNamespacedSummableOfNormBounded.lean/declarations/summable-of-summable-nnnorm.md) | 185 | `result-track:7c5cd490e14a6d9f7917a70a51734a7f7ef6577f4fdb612989a37696c43993e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f44eef567884d9225e3a219beb16cb0bdfb394a10d5c615eb79005101321721a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant8b9724bee614066461cbd3e70b6e1a96d100266c6e696070f95de9d5ae7710d8.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/InfiniteSum/Variant8b9724bee614066461cbd3e70b6e1a96d100266c6e696070f95de9d5ae7710d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: GRWTSK.Topology.GeneralTopology.SmallInductiveDimension.Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a78b53aa15744b7e4ec37d5c1492a265a0a7ba9",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a78b53aa15744b7e4ec37d5c1492a265a0a7ba9`.

Source path: `GRWTSK/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [inductive](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/inductive--cd4e7b368bbe98f3308f584f.md) | 46 | `declaration-track:cd4e7b368bbe98f3308f584f8cca5d2a2574c54f4fe4894ca20b70d3f800398a` |
| 2 | `abbrev` | [HasSmallInductiveDimensionLE](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/hassmallinductivedimensionle--9b8e1d3cdbf388bda0647bbc.md) | 57 | `declaration-track:9b8e1d3cdbf388bda0647bbc0d01abe05d4038132ae10010be0074a2b23b4537` |
| 3 | `theorem` | [hasSmallInductiveDimensionLT_zero_iff](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/hassmallinductivedimensionlt-zero-iff--29b9fd7a613e69f58cb3489e.md) | 61 | `result-track:29b9fd7a613e69f58cb3489e2ba647e6d4e3c116e70c7d2b1e35445eff20f70d` |
| 4 | `lemma` | [hasSmallInductiveDimensionLT_one_iff](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/hassmallinductivedimensionlt-one-iff--6a4c4425de64510c6660ab43.md) | 67 | `result-track:6a4c4425de64510c6660ab43066981a1da0e192298a10d108cce1b637fb92868` |
| 5 | `theorem` | [HasSmallInductiveDimensionLT.mono](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/hassmallinductivedimensionlt-mono--e68aecf9f0f482d8915b4c41.md) | 80 | `result-track:e68aecf9f0f482d8915b4c41a4cf9b4c08d6c13c58037a3abf528097712c8590` |
| 6 | `theorem` | [HasSmallInductiveDimensionLE.mono](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/hassmallinductivedimensionle-mono--de3d6bbea9eaa654d4c25f97.md) | 91 | `result-track:de3d6bbea9eaa654d4c25f97ea3e425960efb665405da3807710c410741ff532` |
| 7 | `theorem` | [HasSmallInductiveDimensionLT.hasSmallInductiveDimensionLE](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/hassmallinductivedimensionlt-hassmallinductivedimensionle--b357b9a3e4e7438d300320da.md) | 96 | `result-track:b357b9a3e4e7438d300320da451acc8c285a6ef52507a6d691a99ea2a6ba0efe` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/instance--1b59b502953cfa2a882a2899.md) | 100 | `declaration-track:1b59b502953cfa2a882a2899131febdc305633cc1a6d0077e00bdcd8e9ebe9d7` |
| 9 | `def` | [smallInductiveDimension](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/smallinductivedimension--a2db1fdf803c2955aa60c246.md) | 107 | `declaration-track:a2db1fdf803c2955aa60c24654b14d5fa9be8c8c35e6fdfe9d1efa6ca170a5eb` |
| 10 | `theorem` | [hasSmallInductiveDimensionLT_of_smallInductiveDimension_lt](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/hassmallinductivedimensionlt-of-smallinductivedimension-lt--18c1d343491ef637c99fedbb.md) | 110 | `result-track:18c1d343491ef637c99fedbb144aa82a0133933c1523f2cabef7ecd9619e446c` |
| 11 | `theorem` | [hasSmallInductiveDimensionLE_of_smallInductiveDimension_le](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/hassmallinductivedimensionle-of-smallinductivedimension-le--6a59a27385303b732d174d3b.md) | 118 | `result-track:6a59a27385303b732d174d3b9ef28d04773816c92bf587504afd96fe0b630ac5` |
| 12 | `theorem` | [smallInductiveDimension_le_iff](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/smallinductivedimension-le-iff--95e9e582ce972dfa28218b36.md) | 123 | `result-track:95e9e582ce972dfa28218b366fe92108bee182810f5cf438563aeb07ecb43786` |
| 13 | `theorem` | [smallInductiveDimension_lt_iff](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/smallinductivedimension-lt-iff--38e22d2e83d188038e895868.md) | 128 | `result-track:38e22d2e83d188038e895868f372af18826f7f86d6ce5c7f5e1d75823089aff2` |
| 14 | `theorem` | [smallInductiveDimension_le](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/smallinductivedimension-le--822502b3d17d165ca19003ef.md) | 142 | `result-track:822502b3d17d165ca19003efe3d72174c09ddfa3f79cdbcec25b11be2ed4af59` |
| 15 | `theorem` | [smallInductiveDimension_lt](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/smallinductivedimension-lt--f74d748f152b65d413d0eded.md) | 147 | `result-track:f74d748f152b65d413d0ededcb2f50ecb74b9231f9c3056acb14c80311072d53` |
| 16 | `theorem` | [smallInductiveDimension_eq](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/smallinductivedimension-eq--01292c6d2a4772a461e827c4.md) | 151 | `result-track:01292c6d2a4772a461e827c47e37f5e946e78004cbd63ee05019662065f2cd37` |
| 17 | `theorem` | [smallInductiveDimension_eq_bot](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/smallinductivedimension-eq-bot--3562bf13528eefecd45e6d92.md) | 158 | `result-track:3562bf13528eefecd45e6d92dfea6fea9a09329bb2c2555933eb55c29829c6b0` |
| 18 | `theorem` | [smallInductiveDimension_of_isEmpty](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/smallinductivedimension-of-isempty--bbbd9a6a3000ba451e407da3.md) | 164 | `result-track:bbbd9a6a3000ba451e407da31b3c34f276d087bfdf8941e389ffe3d2f9790eb0` |
| 19 | `theorem` | [Topology.IsInducing.hasSmallInductiveDimensionLT](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/topology-isinducing-hassmallinductivedimensionlt--7b17332571c50772a541a6c5.md) | 167 | `result-track:7b17332571c50772a541a6c5bcdef60ee13de70b022b2eb4af53d142177c1664` |
| 20 | `theorem` | [Topology.IsInducing.hasSmallInductiveDimensionLE](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/topology-isinducing-hassmallinductivedimensionle--d1dde197363d954f7a094401.md) | 176 | `result-track:d1dde197363d954f7a09440154c7d6f878f45338a20dc2bbd272be581dfbd070` |
| 21 | `theorem` | [Topology.IsInducing.smallInductiveDimension_le](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/topology-isinducing-smallinductivedimension-le--c42c12de4cd3f5a784f996f3.md) | 181 | `result-track:c42c12de4cd3f5a784f996f3d206234c8d6425f6dcbd0c96b52f1658edc9bf95` |
| 22 | `theorem` | [smallInductiveDimension_subtype_le](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/smallinductivedimension-subtype-le--e25e2f675de96c5db6b562ff.md) | 186 | `result-track:e25e2f675de96c5db6b562ff0509a7ec5f42e965bbec1fdd71aa6c599d873899` |
| 23 | `theorem` | [Homeomorph.hasSmallInductiveDimensionLT](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/homeomorph-hassmallinductivedimensionlt--5d8899595a6e7c4c9c79cfa4.md) | 190 | `result-track:5d8899595a6e7c4c9c79cfa42b63503b67de51f34bd2038bbe63f94f3e3354c7` |
| 24 | `theorem` | [Homeomorph.hasSmallInductiveDimensionLE](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/homeomorph-hassmallinductivedimensionle--ef2ff51c5aad858c990e2b3e.md) | 194 | `result-track:ef2ff51c5aad858c990e2b3e2d20aefcafff2c72013b1db54e20c7685b7d5c78` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/instance--4230b1107dd4edef0052db71.md) | 198 | `declaration-track:4230b1107dd4edef0052db719b848bf825605faa576afc41187909408a08b912` |
| 26 | `theorem` | [Homeomorph.smallInductiveDimension_congr](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da.lean/declarations/homeomorph-smallinductivedimension-congr--01f7346d225e86b6b1c61692.md) | 203 | `result-track:01f7346d225e86b6b1c61692ab4d7caba21ed5e93bedd6a6d8d655d0a39cec72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

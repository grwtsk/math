# Verification target: GRWTSK.Topology.MetricTopology.Similarity.Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab890f4deded1822842b0a8244cca9a509f203b4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab890f4deded1822842b0a8244cca9a509f203b4`.

Source path: `GRWTSK/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Congruence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Similar](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/similar--4a859d7d5ef75817fae8fb4e.md) | 37 | `declaration-track:4a859d7d5ef75817fae8fb4e1dfd9bc1db430afa2f296f3e17572f15da6ce28c` |
| 2 | `lemma` | [similar_iff_exists_edist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/similar-iff-exists-edist-eq--93571a33ea026f35648b2426.md) | 44 | `result-track:93571a33ea026f35648b2426869df95ce3b4a99040268b30e0a416f603965554` |
| 3 | `lemma` | [similar_iff_exists_pairwise_edist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/similar-iff-exists-pairwise-edist-eq--ccbada10ea781a62bfaf9582.md) | 51 | `result-track:ccbada10ea781a62bfaf95821a3c2d4fd72cd92a99d16d20530acbbb2b3ebd5b` |
| 4 | `lemma` | [Congruent.similar](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/congruent-similar--82a89bb28d30723762b250e2.md) | 61 | `result-track:82a89bb28d30723762b250e2f6c4b2bd62725a581f6cffa6d3cc7d0a7098a0c4` |
| 5 | `lemma` | [refl](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/refl--3d542a17bdd3061e66e0de3f.md) | 81 | `result-track:3d542a17bdd3061e66e0de3fa0d241155510b5f72e26a8884e68e69128074bba` |
| 6 | `lemma` | [symm](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/symm--65cc4c594db41daa6abf9830.md) | 84 | `result-track:65cc4c594db41daa6abf98305ca89e28fba20275487cab3dcc28ed034cdd104a` |
| 7 | `lemma` | [_root_.similar_comm](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/root-similar-comm--d83090fbd92f01bcb668ec70.md) | 90 | `result-track:d83090fbd92f01bcb668ec705c33ed54b3f8465dafeaa917303369c8d354a123` |
| 8 | `lemma` | [trans](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/trans--3ed38f033dfad04283ee32e0.md) | 92 | `result-track:3ed38f033dfad04283ee32e0317180e342ec1e2d731e2b35bd36a25f92c58b7e` |
| 9 | `lemma` | [index_map](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/index-map--37c0843090b96b9f03ec9b63.md) | 98 | `result-track:37c0843090b96b9f03ec9b63aefcc42a9d8bc5f1f72e32ae62d9c97751fa9624` |
| 10 | `lemma` | [index_equiv](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/index-equiv--81f6283c83407b6f71dfb29d.md) | 105 | `result-track:81f6283c83407b6f71dfb29de01facf73a28608ce06c2c28e9fa0ce624168e9e` |
| 11 | `lemma` | [similar_iff_exists_nndist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/similar-iff-exists-nndist-eq--b1d3e3a79d383eee8f50f4de.md) | 121 | `result-track:b1d3e3a79d383eee8f50f4de03b6765c1d383071aba66f18c14307e56befaf05` |
| 12 | `lemma` | [similar_iff_exists_pairwise_nndist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/similar-iff-exists-pairwise-nndist-eq--058919912a3451229a5e72c8.md) | 129 | `result-track:058919912a3451229a5e72c89d40a5948de3dabacf7c5748e97829af2429cac9` |
| 13 | `lemma` | [similar_iff_exists_dist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/similar-iff-exists-dist-eq--a28eeeb5ffa48193cc866347.md) | 136 | `result-track:a28eeeb5ffa48193cc8663470c8b8f4ddf2f272da202e3bbe548cd99dc061ea8` |
| 14 | `lemma` | [similar_iff_exists_pairwise_dist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/declarations/similar-iff-exists-pairwise-dist-eq--6a55903706f3ef489f1fc70f.md) | 145 | `result-track:6a55903706f3ef489f1fc70fe5a6d578f3e28fb84469d16bb1788f8dd991be73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

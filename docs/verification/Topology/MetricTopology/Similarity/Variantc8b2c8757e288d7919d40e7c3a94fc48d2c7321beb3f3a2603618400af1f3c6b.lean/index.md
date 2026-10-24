# Verification target: GRWTSK.Topology.MetricTopology.Similarity.Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a3cb50ab0effd615a355eb94fac3b693a2af8b8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a3cb50ab0effd615a355eb94fac3b693a2af8b8`.

Source path: `GRWTSK/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Congruence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Similar](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/similar--254f382523ed99c30b36473d.md) | 45 | `declaration-track:254f382523ed99c30b36473d0bb4e5c9092ed21f5e2e74635f16e09dc321ed1a` |
| 2 | `lemma` | [similar_iff_exists_edist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/similar-iff-exists-edist-eq--193ebb8f2eb40a6178d0c744.md) | 52 | `result-track:193ebb8f2eb40a6178d0c7449e5bd5e6f27e7496c2c10841e80a20598e5759ba` |
| 3 | `lemma` | [similar_iff_exists_pairwise_edist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/similar-iff-exists-pairwise-edist-eq--788a457e371a438d0c490122.md) | 59 | `result-track:788a457e371a438d0c490122d5330271ffc27f64b6e82745ac0197d4f36f55a0` |
| 4 | `lemma` | [Congruent.similar](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/congruent-similar--81e068b97ef06febdd5d9588.md) | 69 | `result-track:81e068b97ef06febdd5d958815cfbd77c17142e3e8a53c815c33c8af9948818c` |
| 5 | `lemma` | [refl](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/refl--155348bfeb912e078c9d49db.md) | 89 | `result-track:155348bfeb912e078c9d49db3cecf8b99bfb5648be3837a496b98136c4fd54ff` |
| 6 | `lemma` | [symm](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/symm--b165959e9795a74cf685e416.md) | 92 | `result-track:b165959e9795a74cf685e416231b7da1cc87301ebf94fbad1b14c05ba8f3746c` |
| 7 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.Similar.Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.similar_comm](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/root-grwtsk-topology-metrictopology-similar-variant1f763ba2827845dac0057--df85afe52c1a07fb4c500218.md) | 98 | `result-track:df85afe52c1a07fb4c5002182caa56e5903ead9a35a7d9cb39a853bab881912e` |
| 8 | `lemma` | [trans](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/trans--203f32044bce86e2b05b1a98.md) | 100 | `result-track:203f32044bce86e2b05b1a9837c5ba024a76bb255d35d1531ea5cf5fbc1caa0e` |
| 9 | `lemma` | [index_map](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/index-map--d54e2a2ef808eb8d1d8c921f.md) | 106 | `result-track:d54e2a2ef808eb8d1d8c921f023974a89d5b2c55fba30251b2699a5f4329d3bb` |
| 10 | `lemma` | [index_equiv](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/index-equiv--e517b732574d95c5425ef4fc.md) | 113 | `result-track:e517b732574d95c5425ef4fc3c630305de9ecf0e74bbd7d2956468509baaa6cc` |
| 11 | `lemma` | [similar_iff_exists_nndist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/similar-iff-exists-nndist-eq--843ef26facc1027502796753.md) | 129 | `result-track:843ef26facc10275027967539ea8ffc7e69e7af84533aa9a19f4b8a5ee4965f3` |
| 12 | `lemma` | [similar_iff_exists_pairwise_nndist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/similar-iff-exists-pairwise-nndist-eq--873505ec7340dbd759e00472.md) | 137 | `result-track:873505ec7340dbd759e004722cb4c8ca2fd7c5c8fb3c06d16fdbdb58bc4942c7` |
| 13 | `lemma` | [similar_iff_exists_dist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/similar-iff-exists-dist-eq--04e768f2bb0525fcc44396a6.md) | 144 | `result-track:04e768f2bb0525fcc44396a627422da0e3cbeb8860b35734b37389a874cf7422` |
| 14 | `lemma` | [similar_iff_exists_pairwise_dist_eq](../../../../../mathematics/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/declarations/similar-iff-exists-pairwise-dist-eq--f5a6e095a42f2276de5c8027.md) | 153 | `result-track:f5a6e095a42f2276de5c80272041e3afc729763917fe8345ef75d954ac405ef5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

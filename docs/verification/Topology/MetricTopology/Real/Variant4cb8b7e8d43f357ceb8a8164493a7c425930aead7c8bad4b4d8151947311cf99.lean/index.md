# Verification target: GRWTSK.Topology.MetricTopology.Real.Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e7246b82e8a821f22e1586a2f2ac9e710d94012",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e7246b82e8a821f22e1586a2f2ac9e710d94012`.

Source path: `GRWTSK/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [dist_left_le_of_mem_uIcc](../../../../../mathematics/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean/declarations/dist-left-le-of-mem-uicc--57e957c60dd4b900cb019bc1.md) | 28 | `result-track:57e957c60dd4b900cb019bc1bd36ff3043ff2d63848a27b8e8475afd5ee1edf2` |
| 2 | `lemma` | [dist_right_le_of_mem_uIcc](../../../../../mathematics/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean/declarations/dist-right-le-of-mem-uicc--91b73e35035aaf6cc6617400.md) | 31 | `result-track:91b73e35035aaf6cc66174006b788f48185cd53f1ebd7b514331d58a9e18218f` |
| 3 | `lemma` | [dist_le_of_mem_uIcc](../../../../../mathematics/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean/declarations/dist-le-of-mem-uicc--a8fdcd4cc992c835d95f3c6e.md) | 34 | `result-track:a8fdcd4cc992c835d95f3c6eaec7fb147b447f50272db5e3bd657a2c354cff5b` |
| 4 | `lemma` | [dist_le_of_mem_Icc](../../../../../mathematics/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean/declarations/dist-le-of-mem-icc--75c6a4b53ef73718ad81adf6.md) | 38 | `result-track:75c6a4b53ef73718ad81adf6b4fb834542393c809a91ebd71733c9bfe4d8edd5` |
| 5 | `lemma` | [dist_le_of_mem_Icc_01](../../../../../mathematics/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean/declarations/dist-le-of-mem-icc-01--064adbf6431b9fcb7cc2eecb.md) | 43 | `result-track:064adbf6431b9fcb7cc2eecbf1f331d6aa726ba9e174074cfe01dcea7994c61b` |
| 6 | `lemma` | [dist_le_of_mem_pi_Icc](../../../../../mathematics/Topology/MetricTopology/Real/Variant4cb8b7e8d43f357ceb8a8164493a7c425930aead7c8bad4b4d8151947311cf99.lean/declarations/dist-le-of-mem-pi-icc--8eda94da547018065c1d65a4.md) | 48 | `result-track:8eda94da547018065c1d65a41a09ef92db7ae74a838dc3792e1e643c38067a40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.TightNormed.Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00bb98a6312309c2ac1f7a1558672b77199a7dcc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00bb98a6312309c2ac1f7a1558672b77199a7dcc`.

Source path: `GRWTSK/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Tight` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompletePartialOrder` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_measure_compl_closedBall_of_isTightMeasureSet](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/declarations/tendsto-measure-compl-closedball-of-istightmeasureset--3e3cec2280c5c1d517f774b1.md) | 45 | `result-track:3e3cec2280c5c1d517f774b185160b917985f9753d1fffff60a4816dda050195` |
| 2 | `lemma` | [isTightMeasureSet_of_tendsto_measure_compl_closedBall](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/declarations/istightmeasureset-of-tendsto-measure-compl-closedball--48cf7de2645cd0f9584d78ac.md) | 53 | `result-track:48cf7de2645cd0f9584d78ac59374124d473a07ce8d78d9090ab209ccf146d4f` |
| 3 | `lemma` | [isTightMeasureSet_iff_tendsto_measure_compl_closedBall](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/declarations/istightmeasureset-iff-tendsto-measure-compl-closedball--5fa00c375423268150849ab4.md) | 63 | `result-track:5fa00c375423268150849ab49f8808091af703e0d24ba1931bb8bddcfcb2472b` |
| 4 | `lemma` | [tendsto_measure_norm_gt_of_isTightMeasureSet](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/declarations/tendsto-measure-norm-gt-of-istightmeasureset--605cfcce54c0bf77ef66d289.md) | 74 | `result-track:605cfcce54c0bf77ef66d28987e748994064feaca5f296a8f9074e97b03d274b` |
| 5 | `lemma` | [isTightMeasureSet_of_tendsto_measure_norm_gt](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/declarations/istightmeasureset-of-tendsto-measure-norm-gt--60d7664cf3544a1649e766be.md) | 81 | `result-track:60d7664cf3544a1649e766be21983a783c5cff36ae2acfb66a6800d0923d5886` |
| 6 | `lemma` | [isTightMeasureSet_iff_tendsto_measure_norm_gt](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/declarations/istightmeasureset-iff-tendsto-measure-norm-gt--cb0bf5c7176ba9e085cd3278.md) | 91 | `result-track:cb0bf5c7176ba9e085cd32789fb5314c5be13497f5c9c2d69e61d6b114230635` |
| 7 | `lemma` | [isTightMeasureSet_of_forall_basis_tendsto](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/declarations/istightmeasureset-of-forall-basis-tendsto--14e879325a8d2f34aea34ec1.md) | 99 | `result-track:14e879325a8d2f34aea34ec18a18cd6a87612295397d0c9dd616b5fd406df02b` |
| 8 | `lemma` | [isTightMeasureSet_of_inner_tendsto](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/declarations/istightmeasureset-of-inner-tendsto--546bb472fe7a09989510d1a6.md) | 136 | `result-track:546bb472fe7a09989510d1a6905714f7542273729a417a099d90fd7f0b5753e1` |
| 9 | `lemma` | [isTightMeasureSet_iff_inner_tendsto](../../../../../mathematics/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/declarations/istightmeasureset-iff-inner-tendsto--d588dfc7c6b8b25fbe14f2b0.md) | 146 | `result-track:d588dfc7c6b8b25fbe14f2b0ad5d01ba20db3b2c8a67832656918f6adda2f052` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

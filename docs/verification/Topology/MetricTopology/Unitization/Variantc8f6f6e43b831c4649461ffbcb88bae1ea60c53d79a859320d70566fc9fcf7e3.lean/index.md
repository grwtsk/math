# Verification target: GRWTSK.Topology.MetricTopology.Unitization.Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed265b48ac659e0f2ab39fd2f8690d6e67e21360",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed265b48ac659e0f2ab39fd2f8690d6e67e21360`.

Source path: `GRWTSK/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Unitization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [opNorm_mul_flip_apply](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean/declarations/opnorm-mul-flip-apply--bf3db0867abda16e9c42f6ff.md) | 30 | `result-track:bf3db0867abda16e9c42f6ff349387f886ed4756660eb2adfe269d176ffa13af` |
| 2 | `lemma` | [opNNNorm_mul_flip_apply](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean/declarations/opnnnorm-mul-flip-apply--8081838047e9e7ba362344ce.md) | 41 | `result-track:8081838047e9e7ba362344cecf7b2800f6951db572fecaf5ae775ff26fc17788` |
| 3 | `lemma` | [isometry_mul_flip](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean/declarations/isometry-mul-flip--1db66e03ddbed1271f348dd0.md) | 46 | `result-track:1db66e03ddbed1271f348dd0252787ba4d6935baabb3104575af664fa583d752` |
| 4 | `instance` | [CStarRing.instRegularNormedAlgebra](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean/declarations/cstarring-instregularnormedalgebra--cd0459ec4241b2d7c240de63.md) | 56 | `declaration-track:cd0459ec4241b2d7c240de632224afd4bc70c98baeacc64be08db381ac70d51a` |
| 5 | `theorem` | [Unitization.norm_splitMul_snd_sq](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean/declarations/unitization-norm-splitmul-snd-sq--bc36db8bc403606f05d357fd.md) | 84 | `result-track:bc36db8bc403606f05d357fdb78f1ea501f4c1b08dba0dd8894f49e7325737dc` |
| 6 | `instance` | [Unitization.instCStarRing](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean/declarations/unitization-instcstarring--1dcf664d397fd200d32ff01c.md) | 127 | `declaration-track:1dcf664d397fd200d32ff01c8deb6646284b96bbb5600766501bab1389769a0f` |
| 7 | `instance` | [Unitization.instCStarAlgebra](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean/declarations/unitization-instcstaralgebra--f0720379584f54dd2dd99347.md) | 178 | `declaration-track:f0720379584f54dd2dd99347cb9a3d58edc1ddd7e787f8d6082e9746b2b588d2` |
| 8 | `instance` | [Unitization.instCommCStarAlgebra](../../../../../mathematics/Topology/MetricTopology/Unitization/Variantc8f6f6e43b831c4649461ffbcb88bae1ea60c53d79a859320d70566fc9fcf7e3.lean/declarations/unitization-instcommcstaralgebra--1d021e7d95b8158677da07ee.md) | 182 | `declaration-track:1d021e7d95b8158677da07ee1937bca3a9665ba30d15c3d102cd9c09a40d4a59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

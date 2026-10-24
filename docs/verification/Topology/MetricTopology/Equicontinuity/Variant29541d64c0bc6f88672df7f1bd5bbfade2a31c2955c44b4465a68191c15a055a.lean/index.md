# Verification target: GRWTSK.Topology.MetricTopology.Equicontinuity.Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce91ad062a3593dd6f007d8abcb5f47e17be8718",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce91ad062a3593dd6f007d8abcb5f47e17be8718`.

Source path: `GRWTSK/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equicontinuousAt_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean/declarations/equicontinuousat-iff-right--5950818f4ecf81fd435e74ee.md) | 53 | `result-track:5950818f4ecf81fd435e74ee9267f61e8ae51c485fd02defd10b0e3d7e7cbee7` |
| 2 | `theorem` | [equicontinuousAt_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean/declarations/equicontinuousat-iff--efc7cb9c724af3800ed893b5.md) | 59 | `result-track:efc7cb9c724af3800ed893b5c0f67617934d1538a2764cfeb10e07f941a2a9f6` |
| 3 | `theorem` | [equicontinuousAt_iff_pair](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean/declarations/equicontinuousat-iff-pair--0c09f3a65bc8f8a8e7854a41.md) | 66 | `result-track:0c09f3a65bc8f8a8e7854a41ce186630f173b3285c278b0f9399c56a84b9fc0a` |
| 4 | `theorem` | [uniformEquicontinuous_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean/declarations/uniformequicontinuous-iff-right--a66d8af6c7707b0d6ff96047.md) | 82 | `result-track:a66d8af6c7707b0d6ff96047537c1a8a336f05d1e286f710e6e9f9ce32a85780` |
| 5 | `theorem` | [uniformEquicontinuous_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean/declarations/uniformequicontinuous-iff--af1ed5461c3684192c9f2f8b.md) | 89 | `result-track:af1ed5461c3684192c9f2f8b4b8c1611c20dbc4ed9d8c75f2f98a81e02337fde` |
| 6 | `theorem` | [equicontinuousAt_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean/declarations/equicontinuousat-of-continuity-modulus--f15768d4fc40e329c39648a6.md) | 98 | `result-track:f15768d4fc40e329c39648a6ab459e383c042270db1b3e1a1de27703365055fc` |
| 7 | `theorem` | [uniformEquicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean/declarations/uniformequicontinuous-of-continuity-modulus--5aac73fdc7c0e6b855e759a9.md) | 111 | `result-track:5aac73fdc7c0e6b855e759a9acee88e36c14eb1bc01aad8ec6b3aa90fb6cbaa2` |
| 8 | `theorem` | [equicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant29541d64c0bc6f88672df7f1bd5bbfade2a31c2955c44b4465a68191c15a055a.lean/declarations/equicontinuous-of-continuity-modulus--06e738ee5c9cbcd8950c3787.md) | 127 | `result-track:06e738ee5c9cbcd8950c378745ba48b3ce1b8741ad3095cdf8480b1a5ddd7bf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

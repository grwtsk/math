# Verification target: GRWTSK.Topology.GeneralTopology.Sinc.Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58b6de4ab0d2a3ee0f1d81c53ee78ad77a307385",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58b6de4ab0d2a3ee0f1d81c53ee78ad77a307385`.

Source path: `GRWTSK/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.DSlope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sinc](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/sinc--df5a9a359d84c3fdd3607a65.md) | 34 | `declaration-track:df5a9a359d84c3fdd3607a655ee51c43c9282e8c037eb801953fdd3bf3d9f786` |
| 2 | `lemma` | [sinc_apply](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/sinc-apply--0507a7a1f799206a0ac831a9.md) | 36 | `result-track:0507a7a1f799206a0ac831a94d2574b26307b49343c633c62d43f2bfb0a2ea61` |
| 3 | `lemma` | [sinc_zero](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/sinc-zero--f3b285c206c8b440a2adefcc.md) | 39 | `result-track:f3b285c206c8b440a2adefcc442275e1394d55e46b5d37bf500744426975a5bb` |
| 4 | `lemma` | [sinc_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/sinc-of-ne-zero--16c62d4599febfe2798a3354.md) | 41 | `result-track:16c62d4599febfe2798a3354eeb65224951cc692403dc78262fd51ddcb7a412f` |
| 5 | `lemma` | [sinc_eq_dslope](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/sinc-eq-dslope--a93b3ddbe1d90ccbe2ef4cf6.md) | 43 | `result-track:a93b3ddbe1d90ccbe2ef4cf6eb44162596edafe4a44112a3cab770f6ab7a67c3` |
| 6 | `lemma` | [sinc_neg](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/sinc-neg--de2e7fd6f58e37b2f19f1808.md) | 48 | `result-track:de2e7fd6f58e37b2f19f18085b0fb072e5eaf90816ea68b9f1ee6b34a7f37429` |
| 7 | `lemma` | [abs_sinc_le_one](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/abs-sinc-le-one--fc4c38eb181f791714756b8b.md) | 53 | `result-track:fc4c38eb181f791714756b8bcddc881bbca42272f4ab4ce2d14f42c8a9008073` |
| 8 | `lemma` | [sinc_le_one](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/sinc-le-one--bd0223578d33269e55227633.md) | 61 | `result-track:bd0223578d33269e5522763300443be6cee0042e2a55a97ddf606a5444387812` |
| 9 | `lemma` | [neg_one_le_sinc](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/neg-one-le-sinc--ee66d3a200df53551ff150e5.md) | 63 | `result-track:ee66d3a200df53551ff150e550c4e69e8691947dc77801adfe3996dbd604572f` |
| 10 | `lemma` | [sin_div_le_inv_abs](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/sin-div-le-inv-abs--7f238029655092a87c1b4187.md) | 65 | `result-track:7f238029655092a87c1b41879943d653c6f303ee301c74897ba07e8dafc1f1da` |
| 11 | `lemma` | [sinc_le_inv_abs](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/sinc-le-inv-abs--327cc03a462defcc5433510c.md) | 76 | `result-track:327cc03a462defcc5433510cf1f9c58e26df42fb92c6f82e20d6e1363f61bec7` |
| 12 | `lemma` | [continuous_sinc](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantf0677edd22825e0fbc7c70674a45a0896f99efc5ed35597a5d6d348bc0b6e8c9.lean/declarations/continuous-sinc--03c7fba38e779200d98954a1.md) | 82 | `result-track:03c7fba38e779200d98954a1181722e22101c134746abae0f0339ae954aa57a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.SourceLeadingTailDecay.Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6782405422c3b04a2aeb2de95c8c44ca7004fe85",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6782405422c3b04a2aeb2de95c8c44ca7004fe85`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceLeadingTailQuantitative` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicLeadingErrorEnvelope](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean/declarations/logarithmicleadingerrorenvelope--7925cc0dbbb7235d332d098a.md) | 24 | `declaration-track:7925cc0dbbb7235d332d098afd2d1cc6f5b3b6c8926597f28c7abccbc052610c` |
| 2 | `theorem` | [fullKappaShortBudget_le_logarithmic_envelope](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean/declarations/fullkappashortbudget-le-logarithmic-envelope--8d5a091526463c638d074bab.md) | 30 | `result-track:8d5a091526463c638d074bab1ea02b3a719a4abc4596999ac819d6218f73154e` |
| 3 | `theorem` | [logarithmicLeadingErrorEnvelope_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean/declarations/logarithmicleadingerrorenvelope-tendsto-zero--ca66e182fbb16d515f179db5.md) | 65 | `result-track:ca66e182fbb16d515f179db5f197e3cfb8682ef49eb3152ad26531c41ce3bfa8` |
| 4 | `theorem` | [fullKappaShortBudget_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean/declarations/fullkappashortbudget-tendsto-zero--8db63fac889cc4fe4241f774.md) | 81 | `result-track:8db63fac889cc4fe4241f774da4c182387f9914f306c211a85421cf9b6ab8601` |
| 5 | `theorem` | [renormalized_sub_actual_leading_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceLeadingTailDecay/Variant32d85360c1b53105a47cf058351be7c9e42557ee397a382fd521c5e1b676ac90.lean/declarations/renormalized-sub-actual-leading-tendsto-zero--d29562200da9725bb3247dee.md) | 94 | `result-track:d29562200da9725bb3247dee72958af3b6c5e0135eb81ae39d29c1f97f753a4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

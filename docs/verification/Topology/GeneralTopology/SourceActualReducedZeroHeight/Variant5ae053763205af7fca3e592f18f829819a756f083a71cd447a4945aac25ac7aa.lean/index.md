# Verification target: GRWTSK.Topology.GeneralTopology.SourceActualReducedZeroHeight.Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb3271f5a10985f5573c606e23cc73c15081a8be",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb3271f5a10985f5573c606e23cc73c15081a8be`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualOffAxisResidualUpper` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualReducedZeroHeight](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/declarations/actualreducedzeroheight--e4367757aebb360889e8aad4.md) | 23 | `declaration-track:e4367757aebb360889e8aad42dd1105871cb630e03e46a5978f384707c925a81` |
| 2 | `def` | [actualReducedZeroEnvelope](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/declarations/actualreducedzeroenvelope--147ac7521b0b93cf77058146.md) | 26 | `declaration-track:147ac7521b0b93cf77058146fb9392262df7baef02af37e61d767c243573df3e` |
| 3 | `theorem` | [actualReducedZeroHeight_ge_four](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/declarations/actualreducedzeroheight-ge-four--b559342db83964129a23a5a0.md) | 30 | `result-track:b559342db83964129a23a5a0a613d151a0316ac5131258d0ba8260a413f74f6e` |
| 4 | `theorem` | [actualReducedZeroTail_norm_bound](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/declarations/actualreducedzerotail-norm-bound--e63ffa87db33f0d919405669.md) | 40 | `result-track:e63ffa87db33f0d91940566936693e4298ee5e556310b906ee700c0e007d4b1e` |
| 5 | `theorem` | [actualReducedZeroTail_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/declarations/actualreducedzerotail-tendsto-zero--8051b928a85985e8a443ab0d.md) | 74 | `result-track:8051b928a85985e8a443ab0dbbc7c0357471493b6d642b08aaefa11f7ba3e65a` |
| 6 | `theorem` | [actualSourceQuadraticValue_sub_reducedHead](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/declarations/actualsourcequadraticvalue-sub-reducedhead--8ed6e7029bda5958f4cce269.md) | 90 | `result-track:8ed6e7029bda5958f4cce269695016bfdc328601887a10d486834be87f5e8346` |
| 7 | `theorem` | [actualResidual_reducedHead_signed_error_bound](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/declarations/actualresidual-reducedhead-signed-error-bound--2ec8ecd33406f7b6fc8ca7b2.md) | 99 | `result-track:2ec8ecd33406f7b6fc8ca7b2f60a6abdde7fe8c2d0db0c164cf94d0c119b9a82` |
| 8 | `theorem` | [actualResidual_reducedHead_signed_error_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/declarations/actualresidual-reducedhead-signed-error-tendsto--cbc44e742c4cfa9b57e2862d.md) | 121 | `result-track:cbc44e742c4cfa9b57e2862de3a1628fbd6a1fdf6b20764d48ad20665185bb0f` |
| 9 | `theorem` | [actualResidual_reducedOffAxisHead_upper](../../../../../mathematics/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/declarations/actualresidual-reducedoffaxishead-upper--b68aee46a0d3b6e1cbd0c350.md) | 136 | `result-track:b68aee46a0d3b6e1cbd0c350d5cae798af9fa88993065bfc37f93c2cce9f4619` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

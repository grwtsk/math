# Verification target: Regularity Compacts Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31c164d3cc1eabefc8433e0833f0fb992f4b2cd7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31c164d3cc1eabefc8433e0833f0fb992f4b2cd7`.

Source path: `GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [innerRegularWRT_isCompact_closure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregularwrt-iscompact-closure-iff.md) | 36 | `result-track:e73dd00c80c43a37c8cccdd3c9f80e7bea35deec6300dc892b83731e0064d713` |
| 2 | `lemma` | [innerRegularWRT_isCompact_isClosed_iff_innerRegularWRT_isCompact_closure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregularwrt-iscompact-isclosed-iff-innerregularwrt-iscompact-closure.md) | 46 | `result-track:647326fb646210ec808575560a384b69bf3e26e30bb9a7a8c59fe968d65352fe` |
| 3 | `lemma` | [innerRegularWRT_isCompact_isClosed_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregularwrt-iscompact-isclosed-iff.md) | 60 | `result-track:d616caee4362a162bb2add0b33ebcdc874aa8ba79fb31ba4b2210827e5367558` |
| 4 | `theorem` | [innerRegularWRT_of_exists_compl_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregularwrt-of-exists-compl-lt.md) | 71 | `result-track:43d75196efdaafd1793929b5ded9fce429009b1dfdb53c09c521aa9ca29bac83` |
| 5 | `theorem` | [innerRegularWRT_isCompact_closure_of_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregularwrt-iscompact-closure-of-univ.md) | 85 | `result-track:98b3613f350a1a5e485a778a4f357c568747364eac6d784798b8942504883cee` |
| 6 | `theorem` | [exists_isCompact_closure_measure_compl_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/exists-iscompact-closure-measure-compl-lt.md) | 94 | `result-track:dc946d48f61611b968088f3964599d7df6c0b67fb1f6fd9a772968e76ff2c293` |
| 7 | `theorem` | [innerRegularWRT_isCompact_closure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregularwrt-iscompact-closure.md) | 135 | `result-track:cb9b4ccfa64540eeea7601131afcae374a99f817dc9f0e0af06f63449ebdcc81` |
| 8 | `theorem` | [innerRegularWRT_isCompact_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregularwrt-iscompact-isclosed.md) | 142 | `result-track:9f802b3b2ffef3d2825b0f06ca5a5a9e8f145c3971099ab2898471d264c91a24` |
| 9 | `theorem` | [innerRegularWRT_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregularwrt-iscompact.md) | 149 | `result-track:e8bbd44ccccb4e0ad8f70d6f6e7d0681f3b1ff4889017022f2031a4f02bcc502` |
| 10 | `theorem` | [innerRegularWRT_isCompact_isClosed_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregularwrt-iscompact-isclosed-isopen.md) | 156 | `result-track:32019aa9bca5417cf1e2cdd54007d2887e199becf3eebfc0f5cdcaf3e278f515` |
| 11 | `theorem` | [innerRegularWRT_isCompact_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregularwrt-iscompact-isopen.md) | 163 | `result-track:9e3d0d34dd8d1786a21a121ceae96f839da9a608ada8612acbdf7a63d7773576` |
| 12 | `instance` | [instInnerRegularOfIsCompletelyPseudoMetrizableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/instinnerregularofiscompletelypseudometrizablespace.md) | 175 | `declaration-track:c52c83e7498d2a4fc87d1e86eba25d481b8de8fbd0003d2618faf33513e168b5` |
| 13 | `instance` | [instInnerRegularCompactLTTopOfIsCompletelyPseudoMetrizableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/instinnerregularcompactlttopofiscompletelypseudometrizablespace.md) | 188 | `declaration-track:7b361c90f117c8319bdb09aacd551522bd7ab728afbcd595db3f275360183e11` |
| 14 | `theorem` | [innerRegular_isCompact_isClosed_measurableSet_of_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RegularityCompactsPublic.lean/declarations/innerregular-iscompact-isclosed-measurableset-of-finite.md) | 203 | `result-track:aaa809e45c3592610914fd549975ad50a3e9b24b5a6abc4725b0241befdfb42d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f09e15e9b56557f12573e5cbd6e516325adb3ae9e6fc60bc0ba78ecf2b3003f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

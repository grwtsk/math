# Verification target: Operator Asymptotics Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f23d9f6afa9bf430cb44a68a2f85963b3d32ab7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantd627a420d44ba767f6ae2c8c22ca08f2a6f6696ab9d3c7f488bd46023cb5b429.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f23d9f6afa9bf430cb44a68a2f85963b3d32ab7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantd627a420d44ba767f6ae2c8c22ca08f2a6f6696ab9d3c7f488bd46023cb5b429.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variantd627a420d44ba767f6ae2c8c22ca08f2a6f6696ab9d3c7f488bd46023cb5b429.lean.json)

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
| 1 | `theorem` | [isBigOWith_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/declarations/isbigowith-id.md) | 39 | `result-track:95c7614b3dd6e5ec0088809b1a3a116e1bab33a97c30d41bc44c481adc1471eb` |
| 2 | `theorem` | [isBigO_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/declarations/isbigo-id.md) | 42 | `result-track:b487c9074b19acfae966a800c46a8b2ad4fd31e946f1983f92c2ab42ec37a737` |
| 3 | `theorem` | [isBigOWith_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/declarations/isbigowith-comp.md) | 45 | `result-track:8c18c3fa2134ad34ebde23328925dd1095a62f8ebb789068ab6f7a81be253545` |
| 4 | `theorem` | [isBigO_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/declarations/isbigo-comp.md) | 49 | `result-track:d7546f975b88c41f7f3058ab683f73b6cb48c7def0a09a989b172afa93539a51` |
| 5 | `theorem` | [isBigOWith_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/declarations/isbigowith-sub.md) | 53 | `result-track:b79cbcbef789e85e6d0c4c538288f93cce26493337263711bf5d32788356513f` |
| 6 | `theorem` | [isBigO_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/declarations/isbigo-sub.md) | 57 | `result-track:7c1ad31f77bf8c71d42e66df8500c971641f9501d21a9587f208f62b879c0c87` |
| 7 | `theorem` | [isBigO_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/declarations/isbigo-comp-source-edition-2.md) | 71 | `result-track:fd9aab1346c4969af16574ec3e75e402d8e4a256a12b070909fb88c4a60f75cc` |
| 8 | `theorem` | [isBigO_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/declarations/isbigo-sub-source-edition-2.md) | 74 | `result-track:b31be7fa088ca17d36afe5d28311c0b3c2a4b946024293d7b7a46504102f10f5` |
| 9 | `theorem` | [isBigO_comp_rev](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/declarations/isbigo-comp-rev.md) | 83 | `result-track:67bd4f752c0f0b4b9bf32f9f64299909ea61df804456fb1058ee58e94f3ab7d6` |
| 10 | `theorem` | [isBigO_sub_rev](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsNamespacedPublic.lean/declarations/isbigo-sub-rev.md) | 86 | `result-track:8388764bf199e56c69b87f3a0a62bff7ff89022b0d1d87c67fb6964f1c9bb885` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a4921e87b12ad982367c6e5cc5a5a356d06184459dd8d8f435af80d9df9411f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantd627a420d44ba767f6ae2c8c22ca08f2a6f6696ab9d3c7f488bd46023cb5b429.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Asymptotics/Variantd627a420d44ba767f6ae2c8c22ca08f2a6f6696ab9d3c7f488bd46023cb5b429.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

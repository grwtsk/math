# Verification target: Order Two Recursive Cumulant Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "544bffdab4ed933bb8f836249c68bccbee2eca16",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant7f1e492775f9b789c74fb623aa076510ddb8cbb0e1988b24115fd790881dffaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `544bffdab4ed933bb8f836249c68bccbee2eca16`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant7f1e492775f9b789c74fb623aa076510ddb8cbb0e1988b24115fd790881dffaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant7f1e492775f9b789c74fb623aa076510ddb8cbb0e1988b24115fd790881dffaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteRawMomentHierarchy` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [properPartition_two_eq_bot](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/declarations/properpartition-two-eq-bot.md) | 35 | `result-track:c1b1bc4fa8f95e93241b54677af7f37329171ec24bd7b642fb262e4ac1fc5943` |
| 2 | `theorem` | [bot_mem_properPartitions_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/declarations/bot-mem-properpartitions-two.md) | 57 | `result-track:44e18e6f490aa97ed9787516f2c82c7e5895ffea999f61c627cc202f9976c3be` |
| 3 | `theorem` | [properPartitions_two_eq_singleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/declarations/properpartitions-two-eq-singleton.md) | 74 | `result-track:5639972f9967b3c557fc06d253c089e5f34286439ceff51c2d6fd00a8aa712a8` |
| 4 | `theorem` | [blockCumulantValue_singleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/declarations/blockcumulantvalue-singleton.md) | 85 | `result-track:373fce07dcef1db03bde51a2d8a20f327bcd1dd548b398f2e5420502d6b704f0` |
| 5 | `theorem` | [parts_bot_two_eq_pair](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/declarations/parts-bot-two-eq-pair.md) | 102 | `result-track:0f074f964ec01e3186b4d34edde1229a55045ab743a03a0096cefacf21ea4cfb` |
| 6 | `theorem` | [directionalPartitionWeight_bot_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/declarations/directionalpartitionweight-bot-two.md) | 110 | `result-track:841036d28970022cebc85db4122ca204245eed88fa006068b6e95ceef4529842` |
| 7 | `theorem` | [directionalProperContribution_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/declarations/directionalpropercontribution-two.md) | 125 | `result-track:d9583c673d8e59a895e6ea45aacc7661c17ad535770f1a1e9f4153f08d5d6ed6` |
| 8 | `theorem` | [recursiveRawProperContribution_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/declarations/recursiverawpropercontribution-two.md) | 150 | `result-track:9e3056dde6e10333168d270c9b77e36750416a88d3a11c66d6bf83b6708c2ab2` |
| 9 | `theorem` | [recursiveRawCumulantFamily_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/declarations/recursiverawcumulantfamily-two.md) | 167 | `result-track:819415ab059a8dbc7e5b8ad43064d62f6d682de6f5a68b5435054b8c721c86a0` |
| 10 | `theorem` | [recursiveRawCumulantFamily_matches_order_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition2.lean/declarations/recursiverawcumulantfamily-matches-order-two.md) | 186 | `result-track:9a2973d16a54ed88b53ce433863bd40f02b57772816fdab351b081a84a7ddb37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=561869d68532c10036ea577ef48909492a405066fa32d523a493e856b5d216a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant7f1e492775f9b789c74fb623aa076510ddb8cbb0e1988b24115fd790881dffaf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant7f1e492775f9b789c74fb623aa076510ddb8cbb0e1988b24115fd790881dffaf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

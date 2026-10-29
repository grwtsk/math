# Verification target: Order Two Recursive Cumulant Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46437bd641abecc541dbbf52300387f18f345310",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant3e3bec7536a05780fb62674f9f10db7a9563158ba7e72a53e53f639939c71ee7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46437bd641abecc541dbbf52300387f18f345310`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant3e3bec7536a05780fb62674f9f10db7a9563158ba7e72a53e53f639939c71ee7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant3e3bec7536a05780fb62674f9f10db7a9563158ba7e72a53e53f639939c71ee7.lean.json)

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
| 1 | `theorem` | [properPartition_two_eq_bot](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/declarations/properpartition-two-eq-bot.md) | 35 | `result-track:5bfdfab3fab3e70507ea9c70a10c001461685db295ea01c9a3b553eb4da8c004` |
| 2 | `theorem` | [bot_mem_properPartitions_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/declarations/bot-mem-properpartitions-two.md) | 57 | `result-track:f992499d46cacd10651e32316fe51691e9f75f7b20b7ae1a7000ce1f8c693626` |
| 3 | `theorem` | [properPartitions_two_eq_singleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/declarations/properpartitions-two-eq-singleton.md) | 74 | `result-track:27cc4537a31701d9fe9710f1ff37833fff5f9cb88242c148c74d26ef203309f4` |
| 4 | `theorem` | [blockCumulantValue_singleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/declarations/blockcumulantvalue-singleton.md) | 84 | `result-track:7fed2dfbd384cfef0c32799fe6db47085751fa98c84b448c2018d3aebaf7f21e` |
| 5 | `theorem` | [parts_bot_two_eq_pair](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/declarations/parts-bot-two-eq-pair.md) | 102 | `result-track:581e1a89a08b50074acc1ca48d5ba6d8f0d3744be7b887f3df06d5cec8145a1e` |
| 6 | `theorem` | [directionalPartitionWeight_bot_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/declarations/directionalpartitionweight-bot-two.md) | 110 | `result-track:285b668d5b31b61556f59005d678ca93656603d86ba0a8711e38d365bb645880` |
| 7 | `theorem` | [directionalProperContribution_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/declarations/directionalpropercontribution-two.md) | 125 | `result-track:0f91ca26fe461ce44401f2f336cd76fb90b71f9cef1af65429ad313a7d7d3d40` |
| 8 | `theorem` | [recursiveRawProperContribution_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/declarations/recursiverawpropercontribution-two.md) | 150 | `result-track:80129688dbf26ebc486226e0da1d7a12f801e0852783d89e7fd1c470c0add617` |
| 9 | `theorem` | [recursiveRawCumulantFamily_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/declarations/recursiverawcumulantfamily-two.md) | 167 | `result-track:02ef9922e13a54e643b55a8a5e27f1acebd99b50864b0e7058115f0fbe6a6709` |
| 10 | `theorem` | [recursiveRawCumulantFamily_matches_order_two](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OrderTwoRecursiveCumulantEdition1.lean/declarations/recursiverawcumulantfamily-matches-order-two.md) | 182 | `result-track:2828a4e9c6ae4264e5ac295032d6a023d724ca9b4f23a19fe6107f6634cf4f90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed462ac487da624736af17082d1fc2c9b9c35891313fb9d833006250c01173d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant3e3bec7536a05780fb62674f9f10db7a9563158ba7e72a53e53f639939c71ee7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant3e3bec7536a05780fb62674f9f10db7a9563158ba7e72a53e53f639939c71ee7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

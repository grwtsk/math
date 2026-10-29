# Verification target: Terrain Locator

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89857581c9bf0841e21384a60c2e211711b5d2fb",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/TerrainLocator/Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89857581c9bf0841e21384a60c2e211711b5d2fb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/TerrainLocator/Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/TerrainLocator/Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Language.ClaimPayload` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReasoningStep](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/reasoningstep.md) | 16 | `declaration-track:d1d518b72f18d7495b6afce6c7b1e405cc3e589fc6f97b8801580a1d4cd58542` |
| 2 | `structure` | [ReasoningChain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/reasoningchain.md) | 24 | `declaration-track:61d9b88c6cd36a6206cf189fd5cdff1bf673916c5ec862f395d9c224f17b53d1` |
| 3 | `def` | [StepsContinuous](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/stepscontinuous.md) | 31 | `declaration-track:733b032650f68a4c0b2b6f90f8eaef171efe1296e88a81c14f722844069cb7f8` |
| 4 | `def` | [StepResolves](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/stepresolves.md) | 39 | `declaration-track:b15ba9de3d14d7f5f1cf206e56e775c2dc35e0b0c94443ff1aad041dc1e267e6` |
| 5 | `def` | [Valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/valid.md) | 47 | `declaration-track:4da916f6b525eb1b3a58534a4de59f000262eb4c95e64de23eee92d4a10ab09e` |
| 6 | `def` | [ConcludesAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/concludesat.md) | 52 | `declaration-track:cdacc9d64d5fac725be447413bd3577d3ebe3acdd1e506444183dc0941aaa227` |
| 7 | `structure` | [TerrainLocator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/terrainlocator.md) | 60 | `declaration-track:d8a03b1e4ee2db31f659ee051f82cd353241ddc51885156d3b07c46e5c012a06` |
| 8 | `structure` | [TerrainLocatorContext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/terrainlocatorcontext.md) | 73 | `declaration-track:01c5627b10be813931fcf21a7432a6227603f44e1c8ba81d340e46dd77f6fd4d` |
| 9 | `def` | [HasFold](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/hasfold.md) | 83 | `declaration-track:7b3384220c2d448dd4a4db1919c3637ab6eeeffdfdde2d15123b900813ca50d4` |
| 10 | `def` | [HasCellFace](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/hascellface.md) | 86 | `declaration-track:e6114c6f6d3524d3fed32e7ec46013c46da9a71d3b86ad16935830f3c604cb7d` |
| 11 | `def` | [OptionalMember](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/optionalmember.md) | 89 | `declaration-track:066ee3bcc2a7f4e962a01d19b0c51e55733c7984e014a9d8cf79558894fd0491` |
| 12 | `def` | [OptionalReasoningChainValid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/optionalreasoningchainvalid.md) | 94 | `declaration-track:69f8283101c394838f6c2094d58764fa5824e772fcf1bf41ab2c86ea177cfe78` |
| 13 | `inductive` | [LocatorError](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/locatorerror.md) | 102 | `declaration-track:0110c26f1f12785ba16fb5e6f15537d4190324828bd728dbfbb23d61abecf71f` |
| 14 | `structure` | [CheckedTerrainLocator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/checkedterrainlocator.md) | 115 | `declaration-track:f4968f366f7b056eadd403da5e26c6762d9bf966e990e23b441313f14555a237` |
| 15 | `def` | [validateTerrainLocator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/validateterrainlocator.md) | 141 | `declaration-track:4c1b768164ccfe6ffbee42b855587abcf33c4826f3dd039f4cb1811e8cd6ee0c` |
| 16 | `theorem` | [checked_locator_snapshot_current](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TerrainLocator.lean/declarations/checked-locator-snapshot-current.md) | 184 | `result-track:f67e7a71447fe85aa15ef67fc47f42c397a84dad393e5384c4938117ca7a2000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f0955142663aa3b568216328e06b155fa90cfe9711642ea2015d8f0b4cc343f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/TerrainLocator/Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/TerrainLocator/Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

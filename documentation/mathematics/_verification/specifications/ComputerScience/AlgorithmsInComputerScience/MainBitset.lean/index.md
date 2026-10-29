# Verification target: Main Bitset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11f8ede4fcc5fea2ac28089bbeed87d0fc872127",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11f8ede4fcc5fea2ac28089bbeed87d0fc872127`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.CLI.Main` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [help](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/help.md) | 28 | `declaration-track:3bc98cf96956eff122cb8659013467714e4b620c1e161c7e32cb17c89e8e7ba5` |
| 2 | `abbrev` | [Bitset](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/bitset.md) | 81 | `declaration-track:4f302955178789577f8a0f14fb6210b551d9bf8b72eb749edf899263fc4419f3` |
| 3 | `structure` | [State](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/state.md) | 84 | `declaration-track:fd3acdbf5ddd78106c675aa7be3382740174b4bce7b7a77c6cb89b06e02ce9ba` |
| 4 | `def` | [isBlacklisted](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/isblacklisted.md) | 105 | `declaration-track:c590f138aed3f58d612aba85bd2ddd261204ee5927590b9580fbd8cbc8c24202` |
| 5 | `def` | [calcNeeds](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/calcneeds.md) | 115 | `declaration-track:888a8e8d0b2b1c932cc5bb3ccb69f2d870f8b6424f79e96f2b8125c0b1b61ad1` |
| 6 | `def` | [getExplanations](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/getexplanations.md) | 130 | `declaration-track:6affd46b20acd11cb8520a9454e88c1c204050f8692646d269323543afc40754` |
| 7 | `def` | [loadModules](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/loadmodules.md) | 159 | `declaration-track:29afd5b0914495594e81f119a77b6661fd090526e98b50e0bcc78d651c8d14c9` |
| 8 | `abbrev` | [Edits](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/edits.md) | 203 | `declaration-track:37d366656d5b854cbccce8448d2e399b23d5c1ae113f192715bbc44ac3a7a7bb` |
| 9 | `def` | [Edits.remove](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/edits-remove.md) | 206 | `declaration-track:9727fbad3df1938786f0cb6fd2fa1c56dc550a8576cedbecac5e0d7f29066532` |
| 10 | `def` | [Edits.add](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/edits-add.md) | 212 | `declaration-track:74ea63486a402023b93227c3d737cbe8012157cad254192f671091fc85046d5a` |
| 11 | `def` | [parseHeaderFromString](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/parseheaderfromstring.md) | 222 | `declaration-track:7c0945bac348082ba62eaab7476bae7ac3075f8d16ee15f36f4a5dd25d325c84` |
| 12 | `def` | [parseHeader](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/parseheader.md) | 240 | `declaration-track:71b64445a1d6c2cc7fb29358141ca7af6ea2da46cb7b36d8ce76bcf05dfb367e` |
| 13 | `def` | [importId](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/importid.md) | 250 | `declaration-track:c9c1efe5c20c1611c70d9560913179d6bdf6572bba13f753960f0a0fcd7a0101` |
| 14 | `def` | [visitModule](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/visitmodule.md) | 263 | `declaration-track:2e6fa618dfc1a277edf7aa07c251fcee539ab6062c18f913c573cc356c90930c` |
| 15 | `def` | [toBitset](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/tobitset.md) | 389 | `declaration-track:98bdcdcd22a36d6f623265c1e27a1030c60b5f39eb415318e04ec6e15d9f44ad` |
| 16 | `structure` | [Args](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/args.md) | 396 | `declaration-track:0d7917101543f0ad5650522b5e2b059d8bbe9b487c2aef0a6bf23d57e151cf9d` |
| 17 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/instance.md) | 418 | `declaration-track:1e1790d150a799840acf9cffed10736f72ca90c74eeecda7c7233839d0055434` |
| 18 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/instance-source-edition-2.md) | 422 | `declaration-track:a671116260d260b2f6478b409b3f3dc43db10427cbd181266997d7eda07c03be` |
| 19 | `structure` | [ShakeCfg](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/shakecfg.md) | 427 | `declaration-track:2060f7c1ac877a7be9aed46c96cf352c208c1df58930df31d4c5eb58fd6d9f13` |
| 20 | `def` | [main](../../../../../ComputerScience/AlgorithmsInComputerScience/MainBitset.lean/declarations/main.md) | 437 | `declaration-track:7e0f540b4fe13dffcbf41d60350cbb25d04aad5bafa3870b3c1f876132b4588f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59d8918b938aa61d3fbe4d6e52846be0451927458f833902078730df655786c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

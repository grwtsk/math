# Verification target: Analytic Continuation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5abbb6bb88e4a3db4e57564607a392c5c6802706",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e/Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5abbb6bb88e4a3db4e57564607a392c5c6802706`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e/Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e/Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/context.md) | 22 | `declaration-track:a251262f403161f493ac591be0a776369837e3cd00f8e94bec48b5cec51f5df1` |
| 2 | `inductive` | [Atom](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/atom.md) | 39 | `declaration-track:9d87fe89c72680afe1ead01111b20ebaafcdc9fba613c8b3f847052e2efbee00` |
| 3 | `def` | [Atom.id](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/atom-id.md) | 54 | `declaration-track:a4bd56f4044717fd4b94c965f1e67326ab24ee8c928c74975452887b6c304ce3` |
| 4 | `def` | [finalClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/finalclaim.md) | 68 | `declaration-track:82522f39324383704827e372f00c0873655c1a56b08fbcf4ae7b1f507145b1ad` |
| 5 | `def` | [Atom.claim](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/atom-claim.md) | 71 | `declaration-track:e3c72ff2dbe4e47c784cd479f07b2fc8d5d4355e9ab09c5da9558167816e90dc` |
| 6 | `def` | [Atom.kind](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/atom-kind.md) | 85 | `declaration-track:ec631c9c679d5fea24545c60ffd63f018955cf323abbce41ff8ae354743f6a31` |
| 7 | `def` | [Atom.blocks](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/atom-blocks.md) | 99 | `declaration-track:d7a20fdb428078bd0832ea9489b206533f5c6d9154f4cf7c4e9915b7ab164bd2` |
| 8 | `def` | [Atom.clearsBy](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/atom-clearsby.md) | 113 | `declaration-track:9f75d0b1540c6f2aff0ab69e1dacafa0e40f12700e15d79e27a5f2e24423aed9` |
| 9 | `def` | [allAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/allatoms.md) | 127 | `declaration-track:dac48e24495ea0c468baeff5502331aa3c61e0448f3aa59a71a0f3a052326f7f` |
| 10 | `def` | [atomResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/atomresidue.md) | 142 | `declaration-track:5d9ba468801e48dc92113976659adb42f529e9c32090f629c51cfca05aa06c29` |
| 11 | `theorem` | [atomResidue_target](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/atomresidue-target.md) | 149 | `result-track:a0d93b59b025f6e0d6d776d6a734133e55211b38e13ddafb4299332fe6f5e8b2` |
| 12 | `def` | [ledger](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/ledger.md) | 153 | `declaration-track:b049c492bbdd0d7999cb2eaec5aa769e656f4ee8f2c470b10054089fc21fbc92` |
| 13 | `def` | [finalResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/finalresidues.md) | 158 | `declaration-track:e9e3052ef84ce59664db78995d476282b83cef765d66ec629d0af24f6d2c93b7` |
| 14 | `theorem` | [finalResidues_match_allAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/finalresidues-match-allatoms.md) | 161 | `result-track:e0137206b804a3ef273c982c08af4941408a8579d2adf0771914c2ebae838081` |
| 15 | `theorem` | [finalResidues_match_ledger](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/finalresidues-match-ledger.md) | 165 | `result-track:dd7698beb628318f99866954b9906b2fc5a1d12b25daaab7a3d85fb3778aff80` |
| 16 | `theorem` | [allAtoms_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/allatoms-complete.md) | 169 | `result-track:dcfdf135b2fc6745f07be77483a5959bf5021134408a075453d0f7e4a46b3676` |
| 17 | `theorem` | [allAtoms_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/allatoms-nodup.md) | 173 | `result-track:8d7d00d0a92e930d02253f3013d8e25e0d1f48c888177613749d46f70d3c4c54` |
| 18 | `theorem` | [atomId_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/atomid-injective.md) | 177 | `result-track:94781d4f9d5762631534f4834bd414031ab1f404a5e4eaba06e45aaa75b1f1d3` |
| 19 | `theorem` | [finalResidues_atomIds_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/finalresidues-atomids-nodup.md) | 182 | `result-track:a64ce461926ed373cda57bff21c6cdc4a88242a0a916a5c8911f9985ae5e4371` |
| 20 | `theorem` | [finalResidues_targets_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/finalresidues-targets-correct.md) | 186 | `result-track:91f403c73254a8ba413bb7913feaa5d9d3c949ab957e232fc145f773e69d2198` |
| 21 | `def` | [finalWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/finalwitness.md) | 193 | `declaration-track:1222f240d48fe11179c7a353f2a0c86907de47fcdbead3d28cbb885a102c9ad8` |
| 22 | `theorem` | [finalWitness_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/finalwitness-hasresidue.md) | 196 | `result-track:cb738e7de57149df20ecfc76f8cdb6d60a43423a37ea89f5e59724c2a69a6275` |
| 23 | `theorem` | [finalResidue_count](../../../../../ComputerScience/AlgorithmsInComputerScience/AnalyticContinuation.lean/declarations/finalresidue-count.md) | 200 | `result-track:edc17c3c4242bafc7ad31cec4f7c322f689e56170d5d78b54fa4f4e6ac3fd5da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3d3cd866b8d051db15657e86a2ed7ff81676ed85f6bcc830fab18b2bdbe08b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e/Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f416e616c79746963436f6e74696e756174696f6e2e6c65616e/Variant5e5af069966232e26a19ba90b92b451346b0dc0750b62f651321718ab08eaa13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

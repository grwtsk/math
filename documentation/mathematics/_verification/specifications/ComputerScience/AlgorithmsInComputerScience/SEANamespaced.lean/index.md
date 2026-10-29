# Verification target: SEANamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fe7943ef5568e31de5b2cb52546227b7d623614",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variant6f8674d0e4713134a4bbfb55f7d39e194eadfd7bb4690a64936e196c994ce916.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fe7943ef5568e31de5b2cb52546227b7d623614`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variant6f8674d0e4713134a4bbfb55f7d39e194eadfd7bb4690a64936e196c994ce916.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variant6f8674d0e4713134a4bbfb55f7d39e194eadfd7bb4690a64936e196c994ce916.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Boundary` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.Cost` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.Template` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SEAInstance](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seainstance.md) | 22 | `declaration-track:93372a09a053cba35be80134fe0036c7af2a4f53ac3ec2801d442e81b7b29e67` |
| 2 | `structure` | [Congruence](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/congruence.md) | 30 | `declaration-track:182f6af8bb086e55d6f27632a5e269a839cb8fe46a499f50a182f355a73e1de0` |
| 3 | `inductive` | [SEAArithmeticStep](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seaarithmeticstep.md) | 35 | `declaration-track:a70ffb6373f82d41c9190ec515db22f7a81d9d46dd99b38934aa88a71537a875` |
| 4 | `inductive` | [SEAValueSort](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seavaluesort.md) | 51 | `declaration-track:1194f24e75147d0337952ec2e322dadde43997b81411c99b0c73fc72f1b79d59` |
| 5 | `def` | [SEAArithmeticStep.outputSort](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seaarithmeticstep-outputsort.md) | 58 | `declaration-track:77b4fc9b53ce5fcbac56df43c517208a386d59cf5ce7a8812daa2e95cc0e0029` |
| 6 | `def` | [SEAArithmeticStep.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seaarithmeticstep-valid.md) | 64 | `declaration-track:114f032038e5a53f07bece67ce273f1449bb4a44577445adf40b458e1f8e8544` |
| 7 | `structure` | [SEAOperation](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seaoperation.md) | 98 | `declaration-track:42e3ecce3c917b0a90581379e4743b9f291ea665922ed8d6c937ce87ae1b64d6` |
| 8 | `def` | [SEAOperation.MetadataValid](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seaoperation-metadatavalid.md) | 113 | `declaration-track:aeab507816d3bff31ddbae780d9be99641540c6ce1226b02c4fd80048e2b6be8` |
| 9 | `structure` | [SEATranscript](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seatranscript.md) | 120 | `declaration-track:71470150e4a9724c0f94d359451b30150516deaadd4563b7daf5d426dae46ebe` |
| 10 | `def` | [transcriptCost](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/transcriptcost.md) | 128 | `declaration-track:6df6b70ac902d559c10e01127b7a7b290fea11ce7395c662a81ca13f289bcf7c` |
| 11 | `def` | [SEAOperationChain](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seaoperationchain.md) | 134 | `declaration-track:6b5a2a13044658300cdfe2f848d682ef63ef62016fc975519d1d4a20d2a071ed` |
| 12 | `structure` | [SEATranscript.ArithmeticValid](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seatranscript-arithmeticvalid.md) | 141 | `declaration-track:081c63b82bd041de1f1b660847beb09c4b053ca1416ac3aa6c7adbe9cab276e3` |
| 13 | `structure` | [SEAVerifier](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/seaverifier.md) | 164 | `declaration-track:dedcc195651a8eb3b7323e27018b277154422b8755b8445ad68c54e8881fdf58` |
| 14 | `structure` | [VerifiedSEATranscript](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/verifiedseatranscript.md) | 171 | `declaration-track:2cfdeae71530a1fd9436942e863f2fbb52aae52395f18194773d8846eeea5b41` |
| 15 | `theorem` | [verifiedTranscript_pointCount](../../../../../ComputerScience/AlgorithmsInComputerScience/SEANamespaced.lean/declarations/verifiedtranscript-pointcount.md) | 177 | `result-track:fa32710de68fd98dad6f1fb74efe51c2b2eac3cee606c15c1e7fe6efd94bf7a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d1da7bad326aec63d0b2013957ace23f2ac4276fc221c12d008d17d22851a32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variant6f8674d0e4713134a4bbfb55f7d39e194eadfd7bb4690a64936e196c994ce916.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variant6f8674d0e4713134a4bbfb55f7d39e194eadfd7bb4690a64936e196c994ce916.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

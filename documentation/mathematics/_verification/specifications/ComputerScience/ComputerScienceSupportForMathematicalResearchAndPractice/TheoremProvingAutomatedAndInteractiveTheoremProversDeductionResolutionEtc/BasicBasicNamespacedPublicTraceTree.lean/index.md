# Verification target: Basic Basic Namespaced Public Trace Tree

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c2ee08defb381768cd32c43caab17a657ca1bb4",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c2ee08defb381768cd32c43caab17a657ca1bb4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.CoreM` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/syntax.md) | 71 | `declaration-track:a6f826eb2d48d79921763a129b2a54e9cdc358a43b4305436211444cd6985516` |
| 2 | `inductive` | [TraceTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/tracetree.md) | 78 | `declaration-track:c74f5d3875764a11d997127f1e623aa19bf21095a5f79b58511db2d0d5bfdc61` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/instance-source-edition-2.md) | 91 | `declaration-track:7eedda20f4c50d2b8d8113bcbbceca922190f470b279bae7bf2a28e086c2b57d` |
| 4 | `def` | [TraceTree.ofMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/tracetree-ofmessagedata.md) | 97 | `declaration-track:41921237d0a4f3980c0cf18cbe7097f94064081be10b7a3bba1fe107ec7cd51a` |
| 5 | `def` | [TraceTree.toMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/tracetree-tomessagedata.md) | 107 | `declaration-track:3398f30cb7c66861e587abfe7630b3f94aa9c7af2032ebb24285e203be7d92f4` |
| 6 | `abbrev` | [TracePostprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/tracepostprocessor.md) | 123 | `declaration-track:5d2550df3b24073be594f80a345e46ebf4e1485dcd8284567bc9c67e9973d562` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/instance.md) | 125 | `declaration-track:02227ce285e03e540a52162cb7a36af4f0d58ff543cb33c718254580b1c395a6` |
| 8 | `def` | [traceContainer?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/tracecontainer.md) | 132 | `declaration-track:4ef3e5b773900d69e8fb725cc82e9ca6349aab9f8b2a6ab53644749734c801e4` |
| 9 | `def` | [postprocessMessage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/postprocessmessage.md) | 151 | `declaration-track:ca12c0ad5af89f953b8a2e8767c12e54959085e8ac9061c0164702bed4058fbf` |
| 10 | `def` | [runAndCollectMessages](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/runandcollectmessages.md) | 170 | `declaration-track:446d63abc84a491dc402d7f8907e96d717ccfd57127822be4a1bacfc800e0edb` |
| 11 | `def` | [evalPostprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/evalpostprocessor.md) | 193 | `declaration-track:5cd5838ba6f8eb45ea09d4cb3f5577090a4581dd36bc92c07499a2712364779d` |
| 12 | `def` | [evalPostprocessorTopLevel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/evalpostprocessortoplevel.md) | 213 | `declaration-track:9cea31da5d5ce1210b0e847247d178c90206db03b6755748789647b52ba9c11d` |
| 13 | `def` | [elabPostprocessTraces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/elabpostprocesstraces.md) | 221 | `declaration-track:5e295d8908440214364ad1f620a317b4808d7caa210fd45611dbf87602f9ab82` |
| 14 | `abbrev` | [TracePattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/tracepattern.md) | 249 | `declaration-track:27735a5b3ccdfead4581816ae03b0ca08f05d98b4e6ff963ed60034c03e28776` |
| 15 | `def` | [data?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/data.md) | 254 | `declaration-track:e0be9866c46a57745d2a61e0c22ed03ca1a4c0d36449dbf4198670b7251257c7` |
| 16 | `def` | [cls?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/cls.md) | 259 | `declaration-track:58490454913db318d34925c8cb5651af35cc48669b3d61ed3e418bbf30ac433e` |
| 17 | `def` | [children](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/children.md) | 263 | `declaration-track:39172dd9722eecb17f3331a4d517aebf2bca3851ef8e21c853651fc7bac1d8cf` |
| 18 | `def` | [withChildren](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/withchildren.md) | 268 | `declaration-track:dcad605422b00b32aa1d7ff4c1cd9cd70a568014084f5231b154b50409d94af3` |
| 19 | `def` | [modifyData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/modifydata.md) | 274 | `declaration-track:1da3dcd5e34ce9489b34bdb3aa2bae187147afa27b62110f584cb1cde113d76d` |
| 20 | `def` | [elapsed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/elapsed.md) | 280 | `declaration-track:8949064f13d2d4247249213c054a6d562e9e3fe736eac3a1f105f2f1a181b221` |
| 21 | `def` | [selfElapsed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/selfelapsed.md) | 289 | `declaration-track:b80381374855c839de1cea4d167a4c02b4e756548baa6771ea83447dce773dc8` |
| 22 | `def` | [headText](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/headtext.md) | 296 | `declaration-track:f252191eb609f7210c2f82bcb8273ff5618a1da111d8019c32bb964c73c80529` |
| 23 | `def` | [result?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/result.md) | 305 | `declaration-track:516168b9eb2b57071700777c9683599d71f1910052a310ff2c3b8f24d66bd7ec` |
| 24 | `def` | [collectSubtrees](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/collectsubtrees.md) | 312 | `declaration-track:02175b75737952ec3d7779cfc44452f0daf88cbd952dd73d8c71279233e95953` |
| 25 | `def` | [filterSubtrees](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/filtersubtrees.md) | 323 | `declaration-track:89c4445a422de185df15845acba81ad8bd9533ab45cab61fa1a9424375184b19` |
| 26 | `def` | [containsSubstr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/containssubstr.md) | 334 | `declaration-track:ae73ec094311344e829d91c0387cbac105ff64276cacd106c3533f03a43a541e` |
| 27 | `def` | [ofClass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/ofclass.md) | 340 | `declaration-track:c7708e2f82fe41bf44bfd7bb62569f72c891ba157880052f371909c237072210` |
| 28 | `def` | [containsString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/containsstring.md) | 348 | `declaration-track:8433b1f14c924e9c5990a5aaecc23a0abc6fd527e24d0b236b066eb9456fc8ee` |
| 29 | `def` | [succeeded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/succeeded.md) | 357 | `declaration-track:da88d21f4fca85d925599562c1cb400374680e6db2159944047e9e14b404a8af` |
| 30 | `def` | [failed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/failed.md) | 361 | `declaration-track:bd77aecc905ba4186b7654f741f0cad63b1736e8188c6804d41e2b09db5d925e` |
| 31 | `def` | [errored](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/errored.md) | 365 | `declaration-track:e9cdf3973c5fceb0005855845274dcff8c2cfc7f5b64a439c8b10c6aba3bf7d6` |
| 32 | `def` | [unsuccessful](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/unsuccessful.md) | 372 | `declaration-track:9bb7efedf02a0b888fe1442e8f4032082789f80817e479789ec85f27e7476bb0` |
| 33 | `def` | [minTimeMs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/mintimems.md) | 379 | `declaration-track:8f9c3e268b655cb7f44b31c9c03f77be016e9d39ef80db6b539fe4491bc3e33a` |
| 34 | `def` | [minSelfTimeMs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/minselftimems.md) | 386 | `declaration-track:3d3ba5810655d3eace0e87563dc382bce31511f794d5a62c4410c8cad8ed5f91` |
| 35 | `def` | [filterSubtrees](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/filtersubtrees-source-edition-2.md) | 398 | `declaration-track:b9ee64bb7c0e5d226c93649a842ae6a869ba776f1edff7e0ff35172c5ee1d6c0` |
| 36 | `def` | [hoist](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/hoist.md) | 406 | `declaration-track:b6f6ffddc535e01cd4df59a5ecfe55f1bf337e250c0a96f20520d6cdfebf207e` |
| 37 | `def` | [exposeSubtrees](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/exposesubtrees.md) | 415 | `declaration-track:9be9879cdfc61b767949d76bf34022629b1e1dfa6f112e0b293b8f5a17693583` |
| 38 | `def` | [countNodes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/countnodes.md) | 428 | `declaration-track:695f0cc4dc94ddef64536036cc80f96a0e706c17306ba01536c690b03fa37f57` |
| 39 | `def` | [formatMs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/formatms.md) | 441 | `declaration-track:bfe4fe846e090a345e8d23f2fc5ad89268398213428c2fe22eda8e97a8e3c786` |
| 40 | `def` | [selfTime](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicTraceTree.lean/declarations/selftime.md) | 450 | `declaration-track:ff3df030364f78be71d2328eaddfb4beb613a3d0e95651e6824faa1a4d653dc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54adcfcf0b6d730a04c36f30060e93e5ede922085a7e11a4ac047481dfc20002 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

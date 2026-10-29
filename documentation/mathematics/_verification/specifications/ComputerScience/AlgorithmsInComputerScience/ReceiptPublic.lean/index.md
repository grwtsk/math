# Verification target: Receipt Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3792f3e781705ecb24f53744201a7c73212e1439",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3792f3e781705ecb24f53744201a7c73212e1439`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39.lean.json)

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
| 1 | `def` | [kernelReceiptSchema](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/kernelreceiptschema.md) | 18 | `declaration-track:83d608a9ab9c37792bec753be1448a5fbfe328e9935449057a2b7782e32428fd` |
| 2 | `def` | [buildReceiptSchema](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/buildreceiptschema.md) | 19 | `declaration-track:bfe59b29c597c5ccbc148ff9b012e90bc211c94fa0dd15d7e04d7261fd2f9697` |
| 3 | `def` | [reuseReceiptSchema](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/reusereceiptschema.md) | 20 | `declaration-track:23ec590841567fa6693d482ace7d01dafc20a88814536c54b78679e34c2335dd` |
| 4 | `structure` | [KernelReceipt](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/kernelreceipt.md) | 24 | `declaration-track:3ff62ecc336cc18f17deac421e20d2f4a678b5213d9d94ba589eddb4366720bb` |
| 5 | `structure` | [BuildReceipt](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/buildreceipt.md) | 36 | `declaration-track:19c3219145db3dc8f2eeb7ea209d1f0be033c9da8afaf1c76cceeb6794a18893` |
| 6 | `inductive` | [RetrievalStage](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/retrievalstage.md) | 48 | `declaration-track:40d5f7768800ec224c26a2ba42251265364502f5b6f3fcfc0b2d3bca7fe0662e` |
| 7 | `structure` | [RetrievalFailure](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/retrievalfailure.md) | 61 | `declaration-track:7788228ef92b31c80aed1d4fbf86de5604253d96d835b4be8aee119ca83de225` |
| 8 | `structure` | [ReuseReceipt](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/reusereceipt.md) | 69 | `declaration-track:e87dc1f7d907e75e0bf4ce6ef63ba70cf5089afae30d716961a509b674d6b213` |
| 9 | `structure` | [SearchReceipt](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/searchreceipt.md) | 87 | `declaration-track:f7a936f3526bc78f30832b413a4c6966386568f1f2cabd7ace217e1ef4095aeb` |
| 10 | `def` | [KernelReceipt.MatchesTask](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/kernelreceipt-matchestask-source-edition-2.md) | 97 | `declaration-track:ecdce59e7c444ce1e80519c16ca8e8d2a04d3fb7da9e0bc31dba1ce6e6878146` |
| 11 | `def` | [KernelReceipt.matchesTask](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/kernelreceipt-matchestask.md) | 105 | `declaration-track:1224c6c74f42628e109164f13efe4404917e1736e8c58bb4650ef3fe5ca739a9` |
| 12 | `theorem` | [KernelReceipt.matchesTask_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/kernelreceipt-matchestask-sound.md) | 113 | `result-track:0fff1e5767a7c3c1eaf48bea5c424569619e5a32ee783d2c76550c647bef7d39` |
| 13 | `structure` | [CheckedTrial](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/checkedtrial.md) | 129 | `declaration-track:610beb2124af24af79cbc18c624c36aa6290efa8dc5e7266485b48fecb2fb728` |
| 14 | `inductive` | [KernelObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/kernelobservation.md) | 137 | `declaration-track:18da317e1b8168c2ec213eb631535be44cd57e8a7ba7768373fc734b6a8606d6` |
| 15 | `inductive` | [ProofStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ReceiptPublic.lean/declarations/proofstatus.md) | 146 | `declaration-track:35325797ce952ac8103d01e0659506a626c050c9d2b9e24207b851b98305b46e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18fe1f1667e10815e62e072c945d85377ea405e69199d4f012fcb8ba4e72770d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

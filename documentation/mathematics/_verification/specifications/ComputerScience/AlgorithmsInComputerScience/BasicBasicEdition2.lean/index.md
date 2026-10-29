# Verification target: Basic Basic Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff765cd438db478170602639cbeda7af5d1d07b7",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff765cd438db478170602639cbeda7af5d1d07b7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Syntax.Cambridge` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Flow.Tag](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-tag.md) | 26 | `declaration-track:423fd130cc7c6e4930cea666244e302735b2985fb81c24f8637095dce0ebe347` |
| 2 | `inductive` | [Flow.ResidueStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-residuestatus.md) | 38 | `declaration-track:32f83109393ab223df4a83aaa72eb10200d7f9e3a590be8606ce5ca382bc21fc` |
| 3 | `structure` | [Flow.HeatResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-heatresidue.md) | 45 | `declaration-track:5699b3f0b87d4400d6f636ae0d380dc07d9a94a20f0763ea406154969d1899b3` |
| 4 | `def` | [Flow.HeatResidue.pending](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-heatresidue-pending.md) | 51 | `declaration-track:8943f200ffa8db64a84e0a2230c19e109170152060b1a437d5b6c069e5a5af94` |
| 5 | `def` | [Flow.HeatResidue.realized](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-heatresidue-realized.md) | 58 | `declaration-track:fff2b12a05b4b2cb5c4d87a99c20751429acb3d89a7d456de1c0df2a112318dd` |
| 6 | `inductive` | [Flow.BinaryAction](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-binaryaction.md) | 65 | `declaration-track:539b82299d155a4ce1be3ec57bd17e1fd78e6008ba401e5f16e90ed9ff4f316e` |
| 7 | `inductive` | [Flow.VariadicOp](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-variadicop.md) | 86 | `declaration-track:a103c56f67a6629800b5d27e4745b0bcdbb505db10bc1a74f618b53ddbe6473a` |
| 8 | `inductive` | [Flow.Expression](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression.md) | 113 | `declaration-track:de22adaad72b3261900af567ffe12486e01c165052d9cd897ebc54089593ebaa` |
| 9 | `inductive` | [Flow.Token](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-token.md) | 140 | `declaration-track:92c4e2f51efcef687695d3c243832627b38a94f1d9c836d4343829f62ff9d601` |
| 10 | `def` | [Flow.Expression.toCambridgeTokens](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-tocambridgetokens.md) | 158 | `declaration-track:3de9bd88af3c00be4d1a2a3209ca1593303fbf31814840f702571b04f1651519` |
| 11 | `def` | [Flow.Expression.toCambridgeTokensList](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-tocambridgetokenslist.md) | 184 | `declaration-track:088e41ab762ed56b71952fa86678ea4942a657d554a02df3502469d95292abd5` |
| 12 | `def` | [Flow.Expression.attendMany](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-attendmany.md) | 194 | `declaration-track:d488bdf9c1743237e92de1511fe0c41399ed3803b5a681e16a46af3605603f8b` |
| 13 | `def` | [Flow.Expression.pendingBinaryAction](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-pendingbinaryaction.md) | 203 | `declaration-track:faa509f40522350d159373d07a07a300b19158557d1edf9e39e3ea091a38698e` |
| 14 | `def` | [Flow.Expression.expBaseBase?](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-expbasebase.md) | 212 | `declaration-track:180cdf1e09b38e8f7fd6fe9f10de85a6259e5c2826e66e392ee7f2ba2cf42218` |
| 15 | `def` | [Flow.Expression.binaryActionStatus?](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-binaryactionstatus.md) | 218 | `declaration-track:01197f417a2345e2601c8a0aed4ba8498d124a788cc007dbedf9b728e0f473d6` |
| 16 | `theorem` | [Flow.Expression.expBase_records_base](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-expbase-records-base.md) | 224 | `result-track:dcfd7c932d301fe5126f5d50de8ba984607c1d0664a5564feddbf5298148f3f1` |
| 17 | `theorem` | [Flow.Expression.pendingBinaryAction_status](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-pendingbinaryaction-status.md) | 232 | `result-track:3ac705aaaf403ebe6b9c9ed844f07a4d09c7fb78afaa4fd0191ff6b8317476b2` |
| 18 | `def` | [Flow.Expression.product](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-product.md) | 242 | `declaration-track:76be49745dd7e551831985950a0ce984f1723804748e3db812daeffd5693a9b7` |
| 19 | `def` | [Flow.Expression.sum](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-sum.md) | 248 | `declaration-track:21af0a00dc2d625baa2477334f6a5b294f0e9664617599da9561fd89deaf417b` |
| 20 | `def` | [Flow.Expression.chain](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-chain.md) | 254 | `declaration-track:ad0189803bf46dd36e1ac362c500f243baa57e98c7e0bc8776ee13942890f47e` |
| 21 | `def` | [Flow.Expression.log](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-log.md) | 260 | `declaration-track:9fb4408b606d66034bffe6c5ba7a9759fca892af98bc7084c292cfe0502520db` |
| 22 | `def` | [Flow.Expression.cos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicEdition2.lean/declarations/flow-expression-cos.md) | 266 | `declaration-track:65d7dba1658da83c7b863591b0177e212773bc19b9e0f3166e73ed77aae7e099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ceea4fe88d9ecf4f55ea47586836f2a59521c8e6724c8a5f96ae48034e0d39f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Util Public Nested Proof

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e313694fc57c5a25a22c231690d983b7e2e57cc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant1ecb7094fab7c7e65c6b6cc5b41e6e91c0499e99dfbfb2a10fda7d2f909e57d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e313694fc57c5a25a22c231690d983b7e2e57cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant1ecb7094fab7c7e65c6b6cc5b41e6e91c0499e99dfbfb2a10fda7d2f909e57d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant1ecb7094fab7c7e65c6b6cc5b41e6e91c0499e99dfbfb2a10fda7d2f909e57d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Classical` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nestedProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/nestedproof.md) | 16 | `result-track:0ee7cd5fec095a55c51865c7f0067c883e9962056fb3a7aae25ea9b687333935` |
| 2 | `def` | [nestedDecidable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/nesteddecidable.md) | 21 | `declaration-track:c381007b94abe7c792cdc62e6af3ef08b9b0b380c7ffcc8199a331a260e68477` |
| 3 | `def` | [simpMatchDiscrsOnly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/simpmatchdiscrsonly.md) | 33 | `declaration-track:0b5b1881695b6c98424e26d1fa681da23549ca871e24d51b18d6bbaf09b05c3f` |
| 4 | `def` | [abstractFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/abstractfn.md) | 39 | `declaration-track:fe5ef8043877cce77979a29f4f278c70ec637bb174b38f68d0509b9884875df7` |
| 5 | `def` | [offset](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/offset.md) | 42 | `declaration-track:e3cc001ae2912629cc4fb1d349d2092d9931b199ddbd321112c8e0a11515cbe3` |
| 6 | `def` | [eqBwdPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/eqbwdpattern.md) | 45 | `declaration-track:133d9b70939dbcfbeb1ee54b4431e6fc0a652f641380e1e4a63cb4e56b5f774c` |
| 7 | `abbrev` | [EqMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/eqmatch.md) | 52 | `declaration-track:15c5e077ef31dd1d7362046c1f2a20d0d0f7d57521483a4f7e4897cbcff81343` |
| 8 | `abbrev` | [MatchCond](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/matchcond.md) | 60 | `declaration-track:25a94be66438b0ec34a9a5a3de9bf599f48c1e181e8f2e13078734e4beafd945` |
| 9 | `def` | [PreMatchCond](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/prematchcond.md) | 66 | `declaration-track:c349aa033e986a13d943177b0f59a2f3378ad98613ae02965334e8024eecdf39` |
| 10 | `theorem` | [nestedProof_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/nestedproof-congr.md) | 68 | `result-track:b6301408168593542fdd2b6f8c4ced32e9f9821044987ccdab8aca99f80798ca` |
| 11 | `theorem` | [nestedDecidable_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/nesteddecidable-congr.md) | 71 | `result-track:9874171413a3135a8f99d685592a2add732abbf3823fd00826e25fead881d6bc` |
| 12 | `def` | [nestedProofUnexpander](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/nestedproofunexpander.md) | 75 | `declaration-track:480ee06227b0a7b6a6305f5c4cbe82675f92becee93ea2e74c5e8b5a818a3f2f` |
| 13 | `def` | [matchCondUnexpander](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/matchcondunexpander.md) | 81 | `declaration-track:1a5a9ff222f14233eecf0b483846547627523095e751fb606d232940ed8ccc9b` |
| 14 | `def` | [eqMatchUnexpander](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/eqmatchunexpander.md) | 87 | `declaration-track:c944c5886bb6dbd789154443bc25989b450a31e1194f6d773ade475ea2213362` |
| 15 | `def` | [offsetUnexpander](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/offsetunexpander.md) | 93 | `declaration-track:a4e50de0c32757ce7a2398bf86f411f895a1f9bb3ae8c6f35a7cb42afd07980b` |
| 16 | `def` | [natCastUnexpander](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/natcastunexpander.md) | 106 | `declaration-track:aab8bd7b343c566473c61f667c6076b25b0c420b360759e8e894a94dbba5d538` |
| 17 | `def` | [alreadyNorm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/alreadynorm.md) | 122 | `declaration-track:0bf663c33eee65656e1dc5858eedd4e86925a6aee8afdfe4e80d0e02c8cfb7e7` |
| 18 | `theorem` | [em](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/em.md) | 128 | `result-track:b272a12aa6dba961cca10ab4fa15672b71259db2a5ae8d6b293ef0095b926693` |
| 19 | `def` | [Marker](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/marker.md) | 136 | `declaration-track:f479b6583fd837bff189838f3a157b4a0c6f0389fe81b34425dbb4be9b8004e7` |
| 20 | `def` | [markerUnexpander](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilPublicNestedProof.lean/declarations/markerunexpander.md) | 139 | `declaration-track:636d496330de1561b91a6d732ed646f79074bc856336a78439cf8e8de1bb99f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73579d5079125df007bf49a53854de47f0cc1b4859eab9dc0a604ee17671e4d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant1ecb7094fab7c7e65c6b6cc5b41e6e91c0499e99dfbfb2a10fda7d2f909e57d9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant1ecb7094fab7c7e65c6b6cc5b41e6e91c0499e99dfbfb2a10fda7d2f909e57d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: State Public State T

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75479ff2840fcf6ee4fc3d5990b2ca49bc337b68",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant1eaa3725f72bd22af1510fcb5b004f395a1d2eef877cd33d520bfb9bff85bf18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75479ff2840fcf6ee4fc3d5990b2ca49bc337b68`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant1eaa3725f72bd22af1510fcb5b004f395a1d2eef877cd33d520bfb9bff85bf18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant1eaa3725f72bd22af1510fcb5b004f395a1d2eef877cd33d520bfb9bff85bf18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StateT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/statet.md) | 25 | `declaration-track:8a8a3ca03b0e318f762ba3900af474c2460fd35578b8942ff60daa24df099048` |
| 2 | `def` | [StateT.mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/statet-mk.md) | 32 | `declaration-track:ac039c18fe6640b961172e4d193b646b114ef4878087000db414103b21000b83` |
| 3 | `def` | [StateT.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/statet-run.md) | 39 | `declaration-track:185939c1b0c4a261a8d68e15ba1e32037a0ed515281c80d2086558c506cad171` |
| 4 | `def` | [StateT.run'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/statet-run-source-edition-2.md) | 47 | `declaration-track:75a83f6ae8c2bb92453c29d489991ba76fd44695da5ee6b7b360f6a609b2d983` |
| 5 | `def` | [StateM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/statem.md) | 57 | `declaration-track:67b08315d8545e3c3d440f9b2b6656704e9b7391be383689327c8c76e232f8c2` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/instance-source-edition-2.md) | 59 | `declaration-track:0f454d0ec372ac61730535a3b04df34e45f501b53cff6209f545be1b7c382aeb` |
| 7 | `def` | [pure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/pure.md) | 76 | `declaration-track:512291f91d80fba7b5f1fcb42c5c6fc2293ee5b14316aab25e6917accd99c9d8` |
| 8 | `def` | [bind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/bind.md) | 83 | `declaration-track:0f8f8166cdb545ee3485de751697e86dad6e10959183e18ac2677b771b248139` |
| 9 | `def` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/map.md) | 90 | `declaration-track:76c82f9ec1fcaa2c3a6b84b8df291571a5eaa6bfe529aa05640ec3e31fe10d50` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/instance.md) | 94 | `declaration-track:08c023a9e0ba68e777e71719a08e91fd3d3e6141936af9ec0ad0579b4ea571f1` |
| 11 | `def` | [orElse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/orelse.md) | 104 | `declaration-track:67d0b5f052e0aee70775b51358dd3afb7ef32b494a8602632280df95a09c8d4c` |
| 12 | `def` | [failure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/failure.md) | 111 | `declaration-track:30a329cb36f89e6493f17fac169d90ee45ea8f16159437ed049dabeebcde6b02` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/instance-source-edition-8.md) | 114 | `declaration-track:fa8a5d129137f54a1ab39d267d1824deceecc35ae8ac0586c91232ced0639146` |
| 14 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/get.md) | 124 | `declaration-track:f1088bf7396bab250c51190bbcf8299cc5c6b11892e750d68eb07cf690564397` |
| 15 | `def` | [set](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/set.md) | 131 | `declaration-track:c120b6700dbc7aa7bfe7dc362624edebf7a3fe011c72d486f69a9c419c9ba472` |
| 16 | `def` | [modifyGet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/modifyget.md) | 143 | `declaration-track:7cd44cb5ae36ae10bfd5a1e6c1d899bff9852b1380cb9f1477f78ddf2bbb1e31` |
| 17 | `def` | [lift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/lift.md) | 153 | `declaration-track:ced5b8eafe333788364bcacc778186935bac0ff646d534cfea84ca596a469317` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/instance-source-edition-7.md) | 156 | `declaration-track:f73eb206f9e2a7c1478567bd89c625ab190fcb010eb16fb809af43b288990235` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/instance-source-edition-3.md) | 159 | `declaration-track:30c3d5ef7d6bc4b6d206bc4e20e6cd829dc147ca3b1d9559b952111a1fbbb37d` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/instance-source-edition-5.md) | 162 | `declaration-track:5d699332d00bc76b6e3dab61f46b115b6faebc96969d2b584df72f25d578f6e4` |
| 21 | `def` | [ForM.forIn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/form-forin.md) | 174 | `declaration-track:81ffc7f3221ea735033b432a45b05b9d2b42f18e24c0854cfa0bd462be45a97c` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/instance-source-edition-6.md) | 187 | `declaration-track:d6e9fd48ce41506ac0663dd695dbccc9a30dc826189e7a6a999e3fcd7e7fe920` |
| 23 | `instance` | [StateT.monadControl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/statet-monadcontrol.md) | 195 | `declaration-track:fb496848f281e92c015a9ca0c88aadc5b7d7891bf57f4292aa1e8a7e0b2cae6d` |
| 24 | `instance` | [StateT.tryFinally](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/statet-tryfinally.md) | 201 | `declaration-track:2156cb6427d40d9d28d92ca195be2369a47fea24d94921d243c429ca9b50dd97` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/StatePublicStateT.lean/declarations/instance-source-edition-4.md) | 208 | `declaration-track:455726dc30368f0b0ee983d78b3205e6b462b7183e66d99ae6a8fd04406416cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab79765ef0dbf13cfee97e339958eb6bc44b45fb04f635619c007d9cc8dace08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant1eaa3725f72bd22af1510fcb5b004f395a1d2eef877cd33d520bfb9bff85bf18.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant1eaa3725f72bd22af1510fcb5b004f395a1d2eef877cd33d520bfb9bff85bf18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

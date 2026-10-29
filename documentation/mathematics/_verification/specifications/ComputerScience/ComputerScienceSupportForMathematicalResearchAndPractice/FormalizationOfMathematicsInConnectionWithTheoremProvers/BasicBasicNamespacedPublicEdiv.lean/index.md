# Verification target: Basic Basic Namespaced Public Ediv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd2d2dfa53779352fb61e70286aaee77372692cf",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd2d2dfa53779352fb61e70286aaee77372692cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Div.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ediv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/ediv.md) | 81 | `declaration-track:698db719a0e547b35f2d6a63a0e681a4e7828ff1290468864c660d5864c172c0` |
| 2 | `def` | [emod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/emod.md) | 111 | `declaration-track:ce3313643fe3ea8a812d719876bef240d566b857a345e9977df583a8a48e487d` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/instance.md) | 119 | `declaration-track:2bdbb45bdefcbabe4ca6a64824af734efc3ea60407ac3e89c701f96877934813` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/instance-source-edition-2.md) | 125 | `declaration-track:ae06bb514709f4a027e2d71075c2bb548ec278b60a0606968556c901099ad4a5` |
| 5 | `theorem` | [natCast_ediv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/natcast-ediv.md) | 128 | `result-track:fb04b4c620b0b2c1d2df4f1ae5635563ee1323e9cb12880d2db0924e9b62504c` |
| 6 | `theorem` | [ofNat_ediv_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/ofnat-ediv-ofnat.md) | 130 | `result-track:dd50b1f82814866d859d4d89f99b4341620aa8502826bafe1b2037637b3797b2` |
| 7 | `theorem` | [negSucc_ediv_ofNat_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/negsucc-ediv-ofnat-succ.md) | 132 | `result-track:253d83e91649332286336441101e787dcf57a46a3c0f9b7c7ae3558b146e5d09` |
| 8 | `theorem` | [negSucc_ediv_negSucc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/negsucc-ediv-negsucc.md) | 133 | `result-track:0e59f257dd5108633fc871f99274cca9b8029eb96423d5861f7e870fe80daf93` |
| 9 | `theorem` | [ofNat_ediv_negSucc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/ofnat-ediv-negsucc.md) | 134 | `result-track:fa74502783fefe61faffe2ce1ded754638f630b086391a989b62e6027f2c9b03` |
| 10 | `theorem` | [negSucc_emod_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/negsucc-emod-ofnat.md) | 135 | `result-track:52ecc411bf22687af255cade78185fc127cd7a8ca2ce8344cf1fc83ee4bf0c63` |
| 11 | `theorem` | [negSucc_emod_negSucc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/negsucc-emod-negsucc.md) | 136 | `result-track:8d8656d9ef03da4d9f80b3e3407c74e2731b5b97e2780bed5a0b089e3948e57d` |
| 12 | `def` | [divExact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/divexact.md) | 154 | `declaration-track:a16cc16f75bf3e164c31fe9007d6429b314fc8152c85cdcf0063e4a1346cb901` |
| 13 | `theorem` | [divExact_eq_ediv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/divexact-eq-ediv.md) | 158 | `result-track:77feb123a8532e15dd83b98267e12206090bf04189a67e02f1f2f624c8ca6fda` |
| 14 | `def` | [tdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/tdiv.md) | 186 | `declaration-track:b196f265dd0bd3f0b3082a617008b910f7ccd0560345c6b6a860c8991938ffd2` |
| 15 | `def` | [tmod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/tmod.md) | 219 | `declaration-track:7550c3bebad18e910d3e6f1a165ae595cb8e72dc09e0aefd8516bb6e4f227b45` |
| 16 | `theorem` | [ofNat_tdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/ofnat-tdiv.md) | 225 | `result-track:571f59085dfd045609621f268471873dae37c65af13d31d6c45db7c45d1dbe8d` |
| 17 | `def` | [fdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/fdiv.md) | 250 | `declaration-track:94903c9dfbbcc86658888ea0ffbc06ec395a5917eb8fa8e6c140d4d0773a5c0f` |
| 18 | `def` | [fmod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/fmod.md) | 281 | `declaration-track:ae8a2cbfc9d02504e75ce7110adcf77c342c0eb2218dac7a3f95bced6ec14f53` |
| 19 | `theorem` | [ofNat_fdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/ofnat-fdiv.md) | 288 | `result-track:76639f3de4081e0b77b8a950a47616fcaee52cf87a0011ca38dbd4ea425f82b1` |
| 20 | `def` | [bmod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/bmod.md) | 326 | `declaration-track:7e570b868915946b5323b36b22e88fa0e19fc7216ece55ae1529853acc71eaf6` |
| 21 | `def` | [bdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicEdiv.lean/declarations/bdiv.md) | 351 | `declaration-track:16caaa4909d07b91c8bf121d0a2c1cf848465bac5cc4de6415c292e1a455e9ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60d7856b7c49c3660680efea08bc388fcf8204f5e54b8f4eb77d24fb332d29a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

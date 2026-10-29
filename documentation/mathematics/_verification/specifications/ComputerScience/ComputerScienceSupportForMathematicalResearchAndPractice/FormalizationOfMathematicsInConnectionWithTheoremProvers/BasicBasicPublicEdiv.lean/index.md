# Verification target: Basic Basic Public Ediv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "855635fb1ddc652debd9b4f843ecd546ef94dee9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `855635fb1ddc652debd9b4f843ecd546ef94dee9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Div.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ediv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/ediv.md) | 73 | `declaration-track:e2309674d53d441c979c5a2772d97bcf5950166e0b3bc27249f6a1e2f22777ff` |
| 2 | `def` | [emod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/emod.md) | 103 | `declaration-track:cacfd48e16dc018638576e3db9b7f5e28d3e64bf9a14af54d1c15b32db0fe1c7` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:ed70e0b28c4aa75d17d583c977c8b543d8370df1c2a3f80fd13c3b6e4aa20aea` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/instance.md) | 117 | `declaration-track:26a95084f30da12ef369765aac4e1c7ef4bec9bcff9bd4eee2db5c03543e86e6` |
| 5 | `theorem` | [natCast_ediv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/natcast-ediv.md) | 120 | `result-track:b6f2ac8644b1d2379b269b50049ac9b06865a2d1c38ff78492a5478ddce19dae` |
| 6 | `theorem` | [ofNat_ediv_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/ofnat-ediv-ofnat.md) | 122 | `result-track:28cf3ad6c10550b22c99617ce9e49ad3f5b3aa60e5b34dcdc618a699af58978c` |
| 7 | `theorem` | [negSucc_ediv_ofNat_succ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/negsucc-ediv-ofnat-succ.md) | 124 | `result-track:7d647ced3940a8010a40d5a61821e4fff7ac96428be7fab942acbec465e58a5c` |
| 8 | `theorem` | [negSucc_ediv_negSucc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/negsucc-ediv-negsucc.md) | 125 | `result-track:a21800a8fad6e559c3e5a1e3e6cf1f44977002fa0bec306e5b0569dec532a592` |
| 9 | `theorem` | [ofNat_ediv_negSucc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/ofnat-ediv-negsucc.md) | 126 | `result-track:90f8cdffca43668a5cedfbcbd7fb2e5170dd0daa198c671b3e5ba68217ab7d34` |
| 10 | `theorem` | [negSucc_emod_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/negsucc-emod-ofnat.md) | 127 | `result-track:6f7fa623ae274338639c7af9c3182f41531fd81f28cb6732cb98838754294705` |
| 11 | `theorem` | [negSucc_emod_negSucc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/negsucc-emod-negsucc.md) | 128 | `result-track:ffec10763b7271971574a095d3092b693a40099d77941074a2d22999e7086e65` |
| 12 | `def` | [divExact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/divexact.md) | 146 | `declaration-track:103abc59f79d1fe62e58e0039d764b7fa4916b7a068d7a257bc1c10be87d543a` |
| 13 | `theorem` | [divExact_eq_ediv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/divexact-eq-ediv.md) | 150 | `result-track:a7950362579b017a52f6cb308640786df79ff11e3f474ec07261629b45988348` |
| 14 | `def` | [tdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/tdiv.md) | 178 | `declaration-track:2d3c1649456101745e81c6b3ac0442710f90857020fd8dbb84858a0728f2c7af` |
| 15 | `def` | [tmod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/tmod.md) | 211 | `declaration-track:bcc1befe8b721a1cf46d2d57d0d96d3071321f4f865a86029f352524ce68dfe2` |
| 16 | `theorem` | [ofNat_tdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/ofnat-tdiv.md) | 217 | `result-track:1ccfcca22d973f2e1741bbf7f7256ce96406b13f8b6a40ec1bb4be89dd388728` |
| 17 | `def` | [fdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/fdiv.md) | 242 | `declaration-track:7b31e15419bcf75025dc688d81af537c51bc94694d172a00ffb7f702b5d7ea57` |
| 18 | `def` | [fmod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/fmod.md) | 273 | `declaration-track:3c944ed7401112db9330573c6da12b9a6b8aef0c4f9823308ec3475d61a5f196` |
| 19 | `theorem` | [ofNat_fdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/ofnat-fdiv.md) | 280 | `result-track:15c532ecec8b3e8e65b5edc61112b57f18795dd554bde757a67f6177c91cfb14` |
| 20 | `def` | [bmod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/bmod.md) | 318 | `declaration-track:a68d5e9f18ba963796afd345f738efb49a26be018c0e57025a2a5ff11bc89d7c` |
| 21 | `def` | [bdiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicEdiv.lean/declarations/bdiv.md) | 343 | `declaration-track:10ab6cccfaea9fd288e516e5693dd649f0ed18078fde8c5bb12c2d1012205744` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dabeb9caed1acea381683d91e895fa28422bae6112cb56efd08e487999cc16b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

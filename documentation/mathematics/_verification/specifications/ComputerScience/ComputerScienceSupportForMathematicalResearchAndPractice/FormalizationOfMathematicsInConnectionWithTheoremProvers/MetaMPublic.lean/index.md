# Verification target: Meta MPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ddee37c642fe505c18ce7f18904b7ad7b07bf4f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaM/Variantfbe080a57926c6545b5532e53ad071bc9f83958d53b7a394034ea4a0219cacb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ddee37c642fe505c18ce7f18904b7ad7b07bf4f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaM/Variantfbe080a57926c6545b5532e53ad071bc9f83958d53b7a394034ea4a0219cacb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaM/Variantfbe080a57926c6545b5532e53ad071bc9f83958d53b7a394034ea4a0219cacb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.SynthInstance` — import line 4; external provider; requires a separately pinned dependency.
- `Lean.Elab.Term.TermElabM` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkFreshExprMVarQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/mkfreshexprmvarq.md) | 20 | `declaration-track:3a64e07c2ac1c31acf52305a2006b4af518b5e0b412de3de4d4b6ca0fedd4455` |
| 2 | `def` | [withLocalDeclDQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/withlocaldecldq.md) | 23 | `declaration-track:1e71ba760858416ba4ae12a03b1314a75e0bf7120b31c5a39e8ff2ab857dad36` |
| 3 | `def` | [withLocalDeclQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/withlocaldeclq.md) | 26 | `declaration-track:9fa89b52cdbaf702eedc74b106e6ef35b170371b24ba0fefdd0272c396745fb0` |
| 4 | `def` | [synthInstanceQ?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/synthinstanceq.md) | 29 | `declaration-track:da158d9d11eb0b79f0c283b4eff76a9ffebfd77f898261bb57b1e4bc8d14d4b4` |
| 5 | `def` | [trySynthInstanceQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/trysynthinstanceq.md) | 32 | `declaration-track:9c9c4dc1544223f7040b4f076478986c6f1a9d1f6d795f1525fd6bc81f915c3e` |
| 6 | `def` | [synthInstanceQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/synthinstanceq-source-edition-2.md) | 35 | `declaration-track:fba34cc66f6c8c54151b52ce27f48f699ce7678663ef379babb2bb4f0a44c1ca` |
| 7 | `def` | [instantiateMVarsQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/instantiatemvarsq.md) | 38 | `declaration-track:4363a92a8e151bb167e5e70fbe5287f04856e66939fbe22b1000cbb07a37d16c` |
| 8 | `def` | [elabTermEnsuringTypeQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/elabtermensuringtypeq.md) | 41 | `declaration-track:6d79f860a240e5e9a0136270c166738788d515ca9bdf9e26c2d65e68d8ffdc59` |
| 9 | `def` | [inferTypeQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/infertypeq.md) | 62 | `declaration-track:10d1a0272a28eaee3b44cac3c6e59289fd9cd947f7bccf86519df66a3f45292e` |
| 10 | `def` | [checkTypeQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/checktypeq.md) | 68 | `declaration-track:887ef5d4561c633ae3fb33634d8485c8933dfa9915b8bf7577160fe03cfc57f4` |
| 11 | `inductive` | [MaybeDefEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/maybedefeq.md) | 75 | `declaration-track:2a5ab5497b885d0ee31dfc5af54223ca65c66f5a686b80133e7ba41e9351d59b` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:a989c6dff9d303e1f0554c1e5b40a2002f6b9960f638519bacaa532d14a470dc` |
| 13 | `def` | [isDefEqQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/isdefeqq.md) | 85 | `declaration-track:63fbdf30016b519ae3777a8586dac537cac8a3b61d360a62f45037152559e6a2` |
| 14 | `def` | [assertDefEqQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/assertdefeqq.md) | 92 | `declaration-track:d99ae498ba4a84299210c38f10899819dee86fe4487c5e558bab577aaf300c52` |
| 15 | `inductive` | [MaybeLevelDefEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/maybeleveldefeq.md) | 98 | `declaration-track:fb2a668d41ec6d111f4d8abc5af1e8d794cdb7db3963af1adc01b22ff6002c6e` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/instance.md) | 102 | `declaration-track:992e72fe1e53cdb758c2115d35c07c4c7651f3d1f564583450a38789bdf502a7` |
| 17 | `def` | [isLevelDefEqQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/isleveldefeqq.md) | 108 | `declaration-track:d73d9e35010f7680cf8d05b5cd806c8224bc9012fc2b4805c490da5b090ec762` |
| 18 | `def` | [assertLevelDefEqQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MetaMPublic.lean/declarations/assertleveldefeqq.md) | 115 | `declaration-track:49e56f036fad8b6506a9035d4da57ffff2024397edc3abee836fa5c12353adcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1b5a21aeb730f3313a8338efa0f9dc4210a291245eb1e3bf72ec1a20a6bd346 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaM/Variantfbe080a57926c6545b5532e53ad071bc9f83958d53b7a394034ea4a0219cacb2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaM/Variantfbe080a57926c6545b5532e53ad071bc9f83958d53b7a394034ea4a0219cacb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

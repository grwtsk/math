# Verification target: Name Public Get Prefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f69370868e943ebe60464838dacbc77dcfd6477d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant09e2a9e730fffe635daefd138aa11ccf3e29768d81434884bab799776fa12f84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f69370868e943ebe60464838dacbc77dcfd6477d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant09e2a9e730fffe635daefd138aa11ccf3e29768d81434884bab799776fa12f84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant09e2a9e730fffe635daefd138aa11ccf3e29768d81434884bab799776fa12f84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Ord.String` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Ord.UInt` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.String.Length` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hashEx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/hashex.md) | 21 | `declaration-track:4e085f23ba2d786b3066edb0b378ef3dd4c2b17138e85245893fd4f71fe87364` |
| 2 | `def` | [getPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/getprefix.md) | 24 | `declaration-track:8653304071c9db5d7f58cf297dfa34e71ccd4ac2f6f4eefc89a9dce54471f77e` |
| 3 | `def` | [getString!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/getstring.md) | 29 | `declaration-track:b94c90b87b67c5d3fdc746ec5c91c00f784b6c04445a1b699bef46d447c5f0de` |
| 4 | `def` | [getNumParts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/getnumparts.md) | 33 | `declaration-track:b30568c35062028a314127b77dc52765f59968d8e4abbd59e32ed357ce5438e6` |
| 5 | `def` | [updatePrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/updateprefix.md) | 38 | `declaration-track:3fafa02cb93eb008046719897e789959542bfd28742fb6d1fc21d5e235ff992a` |
| 6 | `def` | [componentsRev](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/componentsrev.md) | 43 | `declaration-track:e15a8d21bb617b03e4272ba57a26b5a9225455bfdb004a966f648aa843396c76` |
| 7 | `def` | [components](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/components.md) | 48 | `declaration-track:d40760d71cac0905f22fddd7fffdb45ae0f56c2a30e39fefa2d04c2efa64e0b2` |
| 8 | `def` | [eqStr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/eqstr.md) | 51 | `declaration-track:b7fe979a8cbbf66185f73413a13f5d52811f476b76018abfa19df30c6bc22c8e` |
| 9 | `def` | [isPrefixOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/isprefixof.md) | 55 | `declaration-track:a57813a28ea9514b742c19662921453817720c8e2dff89428ad0d0ec9d0980ca` |
| 10 | `def` | [isSuffixOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/issuffixof.md) | 61 | `declaration-track:f805139fabe9683c11e05e1449f94695dea54aa9e7c1452af3aa03960c6bc19a` |
| 11 | `def` | [cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/cmp.md) | 67 | `declaration-track:49e8d8dce13c36e2fff3ce6f3520b93c57e00dbb7ae3fe12d02e8adce6032632` |
| 12 | `def` | [lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/lt.md) | 82 | `declaration-track:36cce3f0962fd74acbc6ec88cec78239c3682bbee0c979c67b6d06866b288aea` |
| 13 | `def` | [quickCmpAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/quickcmpaux.md) | 85 | `declaration-track:9b8b060e58d2c9e0a3fefadfccecb245ccd5d3a7fb7c9f055c7db5629ba8ddd2` |
| 14 | `def` | [quickCmpImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/quickcmpimpl.md) | 100 | `declaration-track:7807da87ca16271c00bcbe7257514a0e94ce1a564819d4317ec8f4917a4da3e0` |
| 15 | `def` | [quickCmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/quickcmp.md) | 109 | `declaration-track:c6c802d51b97fca6fbdc93273986d34b143bff6dc6dac59f740953b6b6738051` |
| 16 | `def` | [quickLt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/quicklt.md) | 114 | `declaration-track:f0b6a6109b88f418f8042781fe8b12ce068a2f458a8c805805384774ec7994ec` |
| 17 | `def` | [hasNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/hasnum.md) | 118 | `declaration-track:be772e44266a714b7b574d0840a7197026f130664c24ea073de408f4b76fb842` |
| 18 | `def` | [isInternal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/isinternal.md) | 125 | `declaration-track:819f4aa8d49f340a54c21d165f2371682b48664135a9fcc5d14682eecadb2046` |
| 19 | `def` | [isInternalOrNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/isinternalornum.md) | 136 | `declaration-track:de27c9af9c94ce4e4e89fae4aac6ffb0ebe950ba779fcd0ccdb2f8a64e7851d9` |
| 20 | `def` | [isInternalDetail](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/isinternaldetail.md) | 147 | `declaration-track:39a0a247e8edf8df130bf52b0575bd51251b255de8e3b8d36597e4c72be8fa32` |
| 21 | `def` | [isImplementationDetail](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/isimplementationdetail.md) | 167 | `declaration-track:5803f89ff6eeca1c33c05969d2e17961bc88eb8bf0aeadc1683ffee28ce4a315` |
| 22 | `def` | [isAtomic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/isatomic.md) | 173 | `declaration-track:b99358acce5b84b7e07c1fee77610e2fadb6dd65e37091d87b66ef46641dfa25` |
| 23 | `def` | [isAnonymous](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/isanonymous.md) | 179 | `declaration-track:dde15d013e5ad9b749fee1d68e2c59798e382abdeac8e28d4c031e54da7242bc` |
| 24 | `def` | [isStr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/isstr.md) | 183 | `declaration-track:31afd4dcc7d8a7ffc9ecfa21b17c96d8686c7f36034e7cc6f39e3cacd6269688` |
| 25 | `def` | [isNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/isnum.md) | 187 | `declaration-track:5fdd229c303d554a735d5d13846b33e24db67cbd70977bf3f4753b7c8e1a57cd` |
| 26 | `def` | [anyS](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/anys.md) | 200 | `declaration-track:39570f33f2e9e41f90ac4bb27adbf0870da81aaf3202110c104f42860ae44f90` |
| 27 | `def` | [isMetaprogramming](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NamePublicGetPrefix.lean/declarations/ismetaprogramming.md) | 207 | `declaration-track:ba645ff24deedb3136a303f632659164759239491423f39f4a3c7f4ecd1f00a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=449c8fa8c42eb15b93e2c6e9bf3f9d9e390ca05cfdd50d3e62351e25af247eff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant09e2a9e730fffe635daefd138aa11ccf3e29768d81434884bab799776fa12f84.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant09e2a9e730fffe635daefd138aa11ccf3e29768d81434884bab799776fa12f84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

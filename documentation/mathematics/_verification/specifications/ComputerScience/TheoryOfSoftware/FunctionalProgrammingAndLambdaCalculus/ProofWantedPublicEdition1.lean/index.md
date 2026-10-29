# Verification target: Proof Wanted Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fd54ae27efd64bd5098aa0c44a09505bf051150",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fd54ae27efd64bd5098aa0c44a09505bf051150`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean.json)

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
| 1 | `structure` | [ProofWanted](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/proofwanted.md) | 63 | `declaration-track:cb112ed1a1feb52be587b2684061db1106df6a4b7ab3012386b0eb7049c9f973` |
| 2 | `def` | [ProofWanted.Stmt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/proofwanted-stmt.md) | 70 | `declaration-track:0ceb4b9f033b9bfebd99462cdc623f963e6793644a55ea5205e1829570f9c9b2` |
| 3 | `structure` | [DefWanted](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/defwanted.md) | 73 | `declaration-track:45b9d9f15b873c7f3ba7dc432d5d561f1d6f8f03b008ad4879ea828375bfc4af` |
| 4 | `def` | [DefWanted.Val](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/defwanted-val.md) | 80 | `declaration-track:56cf7a6ff45bfac3570b8e1fa3b9536133742176b2262dbd6fb0574c8acf86bd` |
| 5 | `structure` | [DerivedWanted](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/derivedwanted.md) | 89 | `declaration-track:06058784eacc3a65bd8000dcdb6bc5c576a91702932e0f153c889fc8389c4e18` |
| 6 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/syntax.md) | 102 | `declaration-track:4f072d79bdc3bceb21462562915a8b00d30e2f0cdbba17191a8eedbefc1f18e2` |
| 7 | `def` | [elabWantedRef](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/elabwantedref.md) | 106 | `declaration-track:faf631ac77ad14c3f6d80c0f96b5cc255d8aab097f2903d1c28ac79287ecd438` |
| 8 | `inductive` | [WantedRefKind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/wantedrefkind.md) | 112 | `declaration-track:ec9c0fde29ecc0c50b4528f9c0bc15ed225aa96e87b060a8e2aad7bb8c3c9ea1` |
| 9 | `def` | [WantedRefKind.accessor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/wantedrefkind-accessor.md) | 117 | `declaration-track:0a878f3b16770c3cb916026dae84eda4119bc2c9b788cb9e61e0d6ce23b67893` |
| 10 | `def` | [WantedRefKind.hypPrefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/wantedrefkind-hypprefix.md) | 122 | `declaration-track:7555f41771befc51e85e4f318346598887e65d2933fab39414d7dd04b89a5257` |
| 11 | `structure` | [WantedCmdKind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/wantedcmdkind.md) | 127 | `declaration-track:75066e083d1a40fcdcc5a2c16fde2fb81bfccd9abcf92b5167805f184e7b3d88` |
| 12 | `def` | [WantedCmdKind.fallbackKeyword](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/wantedcmdkind-fallbackkeyword.md) | 143 | `declaration-track:34424a4a5a056030a97412ca82524a6f2a2a7e9ccccc62bc2767d66c736f0a60` |
| 13 | `def` | [theoremWantedCmd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/theoremwantedcmd.md) | 148 | `declaration-track:1e5cd1f2e8ad37dbf0dbeeca9cf258a92522766479984dbf74c590102d51f7be` |
| 14 | `def` | [proofWantedCmd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/proofwantedcmd.md) | 153 | `declaration-track:8a412068d3fa7f8a685e5318b69326da019e8d63ce2fb2d4e7c715e00242b4bf` |
| 15 | `def` | [defWantedCmd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/defwantedcmd.md) | 156 | `declaration-track:7ee3d557953b2b34136a917769f5da2af6b0c40fed9d4958e47cd1328c7b8c64` |
| 16 | `def` | [instanceWantedCmd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/instancewantedcmd.md) | 159 | `declaration-track:f65a2f3d0bb3c559683bc46735bde43a16b25616941df4f578dac39d5b3e24dd` |
| 17 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/initialize-source-edition-2.md) | 168 | `declaration-track:84a4083d91fcc20da44216f656400dd56e0e4e2f347a605cd836a630901a1c3d` |
| 18 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/initialize.md) | 180 | `declaration-track:1f230e9ea20502993554e93fe92245942d2f368c2d6dabbba3d1f322122fd5e6` |
| 19 | `def` | [rejectRefsIn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/rejectrefsin.md) | 188 | `declaration-track:e46d8df381af306841301aeb6a21f71304b6801218c9c3cba83a83ef79eaa9d7` |
| 20 | `def` | [freshHypName](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/freshhypname.md) | 196 | `declaration-track:a578b02bcd7936c38d1d4bd0fcf5416f443ea784255f04fb57aef762eb80799c` |
| 21 | `structure` | [WantedDep](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/wanteddep.md) | 205 | `declaration-track:f21c2bf947c5b356bb758acdbe07f9c914fd6cae29b4445317ed060d4855a811` |
| 22 | `structure` | [WantedRefInfo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/wantedrefinfo.md) | 224 | `declaration-track:a077525bdd87d2b5467851123597d5a807b9a257815dd90c45ae3a830975448b` |
| 23 | `def` | [classifyWantedRef](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/classifywantedref.md) | 263 | `declaration-track:636f025cb4d2393ff1c6e21eb582901fe8da06a066a93462512d586991ecf764` |
| 24 | `def` | [elabWanted](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/elabwanted.md) | 422 | `declaration-track:68fc483a10d322c4e9510f3333c66f4e8181ea544723484e49bfbf0d6f3bda41` |
| 25 | `def` | [$name](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/name-source-edition-2.md) | 555 | `declaration-track:7b5b9f0bf482ec38a1a4d6b79d8e74b51775cebe84e0beccba620423ee19f51b` |
| 26 | `def` | [$name](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/name.md) | 565 | `declaration-track:109b05825562ca845a46b8763231fba2d60b70e5daa3c7e2b1e879052f31911e` |
| 27 | `def` | [«theorem_wanted»](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/theorem-wanted.md) | 682 | `declaration-track:445272ac28e21146bbcc29defa9d0f5e90b6b97e21a842845788b3445a12cab6` |
| 28 | `def` | [«proof_wanted»](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/proof-wanted.md) | 690 | `declaration-track:e3d1903cb5bad91342c734b6c8b9c991f3c16941a47095ebcda58d446978ac98` |
| 29 | `def` | [«def_wanted»](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/def-wanted.md) | 720 | `declaration-track:f9f0bf4b9b5f8bd80babc8f0d6491b4e00fc3fd2bf2701587733175fe969ac89` |
| 30 | `def` | [elabTheoremWanted](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/elabtheoremwanted.md) | 727 | `declaration-track:07201237a8c778845ff9ee80bf31afce778a489302f3a0df65ca69b4917e9c69` |
| 31 | `def` | [elabProofWanted](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/elabproofwanted.md) | 736 | `declaration-track:eb0228cf7b66fa0a00f510878051cbb47bf9fd8e22e642a68b9c31661f4d8452` |
| 32 | `def` | [elabDefWanted](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/elabdefwanted.md) | 744 | `declaration-track:81f8ec7175a924337fa4c63b9a56bdc441e32f51dbc4c771a5a9a595c0398e9e` |
| 33 | `def` | [«instance_wanted»](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/instance-wanted.md) | 779 | `declaration-track:240f51c7675ab0d91acda9d52c42c28a08d172dd5c367544407f39b41b920a69` |
| 34 | `def` | [autoInstanceWantedName](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/autoinstancewantedname.md) | 789 | `declaration-track:00b6f4cb7ead2c10dd0986b9d178bfc1818f750ca7d724c24119933b22a88a65` |
| 35 | `def` | [elabInstanceWanted](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/declarations/elabinstancewanted.md) | 819 | `declaration-track:cf3e174d32de90ca3f1ee2f9ee342ad45859b5da7361842f9ca30048e2bbb5ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c122a32ba06bb560b13b9a4e08912470bf43afbfad073b1c1c7b44b142d85e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

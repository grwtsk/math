# Verification target: Basic Basic Public Ext Hash Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd83b64078cf43ca3236826c59e18a87f9536cd4",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf4c949c5ff5bfb28aa1c9031aff20470892cb1b5b44ce411f27b3dc1f1a39783.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd83b64078cf43ca3236826c59e18a87f9536cd4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf4c949c5ff5bfb28aa1c9031aff20470892cb1b5b44ce411f27b3dc1f1a39783.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf4c949c5ff5bfb28aa1c9031aff20470892cb1b5b44ce411f27b3dc1f1a39783.lean.json)

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
| 1 | `structure` | [ExtHashSet](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/exthashset.md) | 57 | `declaration-track:32ce1b5e5e29a55e1bb72e277bbec678a638237f72d4ad11f7a2b565f516284d` |
| 2 | `def` | [emptyWithCapacity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/emptywithcapacity.md) | 69 | `declaration-track:60c41d0458b8a52d36d55dd7594758fbda2e530a85c497246029009d1339e2d8` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-6.md) | 72 | `declaration-track:61a4ac196129c02ba4b1be7f48eba1de3558dd15204378f4c444dd6599e57487` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-3.md) | 75 | `declaration-track:2cc5e76de3a6858af9094d25f3693b36a84b7c6cd95da5563d0a036d579dee61` |
| 5 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/insert.md) | 86 | `declaration-track:c76c46530b2a12f515c9640a78a87823bcf135237d88f560fe579fae432f520b` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-4.md) | 89 | `declaration-track:3c9886b45edfc6c2740b6ddec85d650a77667d12be25fb01c41126c13a942735` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-10.md) | 92 | `declaration-track:c3c00a6c336295cb058528cfdd8b01ed27e0d0465447530293dd9df444f2bb0c` |
| 8 | `def` | [containsThenInsert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/containstheninsert.md) | 103 | `declaration-track:f68b7064788ddcfb8ef1e6bc5d2e84eb9703bd49f167d06b4adcc4e446d88487` |
| 9 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/contains.md) | 115 | `declaration-track:5522c661d965a07fff064c86f894dced8890b5ada379370be03ba0acd4557808` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-13.md) | 118 | `declaration-track:e4e7eef4fbbcc3b6e19288f97e23b65f7d1c8ba6f244c70b5a5a5d68a6c8961f` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance.md) | 121 | `declaration-track:0a173988bb56700b78085d2d9f16dd510f2ef88c88308791fbdf294f6f70afb6` |
| 12 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/erase.md) | 126 | `declaration-track:b2c1e5ab3213045fc68afbe6db7117c99557dffe8e98f8d24ba5a688471b3f1e` |
| 13 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/size.md) | 130 | `declaration-track:cc0b037deb1e9108a1211f89f856221ddea3b05f13285d3ec92d491ec6af45d2` |
| 14 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/get-source-edition-3.md) | 137 | `declaration-track:d32d04a4b53795893c1b0ccc48399a0104cc2ecf76ab778ae553b992189ab8e2` |
| 15 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/get-source-edition-2.md) | 144 | `declaration-track:a6c024baaec62661a2e496e2a09bb6f25e345a729501fd666ffd2548923bd7d5` |
| 16 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/getd.md) | 152 | `declaration-track:0d4c1b30c6b728e4820363e61768ce155b3b5904f9b06c2ddeff671759e4d473` |
| 17 | `def` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/get.md) | 159 | `declaration-track:5bdf119b7f7d3e558c39731276c43f6ad462f447f242f5f25cc01d9ddb20255c` |
| 18 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/isempty.md) | 169 | `declaration-track:efb2fa53efd5e050cbf028920b4889a20657d46cead486825b2aae42e080cb4c` |
| 19 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/oflist.md) | 177 | `declaration-track:0ae11335b528e69a040279c463556beceae2c8a93157462718cf5aa090eb7609` |
| 20 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/filter.md) | 181 | `declaration-track:47d4868f7342fa063ea4ee45c0c95f9cec94dbefee07b9ff318d410581da86cf` |
| 21 | `def` | [insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/insertmany.md) | 192 | `declaration-track:fbf6efdbe5de863e468a7d9238135f0e330b13ad6dac6ad7213fc80e55ff49c4` |
| 22 | `def` | [union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/union.md) | 203 | `declaration-track:1bb786899f24029823504ff180f313433b71867527e234daab5a77bb7b710cf7` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-11.md) | 205 | `declaration-track:d56cbf9315924df669fd2793fe139a147766a055877b373466b46270640acf4e` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-9.md) | 207 | `declaration-track:b142618b9088ef22f71446764ea7571987d8b2667e5834742b0e6660426d8638` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-5.md) | 210 | `declaration-track:4dc85e13035ecf16341f103d1e2760e0d932745d7ed6a0d4233b86e0f6c84ff3` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-2.md) | 213 | `declaration-track:0d97a0c078e1d96e6e16f0c882097fbc9356fbea028b6d17a6cc1cf1a01dadf9` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-8.md) | 220 | `declaration-track:aafdbcb2abdee5ff46fbce18f9e4a03ae86594eae8c53df18f3b908a2c9f34d9` |
| 28 | `def` | [inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/inter.md) | 229 | `declaration-track:3b8a7dde4e7fa64506d8ed99c05390747a474367b8ff7509eaae9202584b6095` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-7.md) | 231 | `declaration-track:92688655821a661817c0b9aab249bf9b547b8fff168caf4da1d0de00fdcd59e3` |
| 30 | `def` | [diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/diff.md) | 239 | `declaration-track:27edb98f906859f7d095ed1be0bf3b337eeac1afff3127d4925939688a46753b` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/instance-source-edition-12.md) | 241 | `declaration-track:dd5211f0f14f82a992ef015e8458123cf0b8d91f3a17d474c04ee3884d311de4` |
| 32 | `def` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtHashSet.lean/declarations/ofarray.md) | 248 | `declaration-track:8869abb48046c8a6a037d3761a18f27633036dfc731d8cef1be6e453976a1016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c069ffa6b454def6e8b8af08b5771cffc3935f418277f4fb7e8ba9881e50066f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf4c949c5ff5bfb28aa1c9031aff20470892cb1b5b44ce411f27b3dc1f1a39783.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf4c949c5ff5bfb28aa1c9031aff20470892cb1b5b44ce411f27b3dc1f1a39783.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

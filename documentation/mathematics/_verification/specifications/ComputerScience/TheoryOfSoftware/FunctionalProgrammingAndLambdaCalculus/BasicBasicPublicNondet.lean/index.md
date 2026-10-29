# Verification target: Basic Basic Public Nondet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b4a924d0f1717fa97718676a9c0fdefecc7a878",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbb202a049c224630b4cf34faf69151fed107eabd6af052dfe69b54b6b48d0d87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b4a924d0f1717fa97718676a9c0fdefecc7a878`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbb202a049c224630b4cf34faf69151fed107eabd6af052dfe69b54b6b48d0d87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbb202a049c224630b4cf34faf69151fed107eabd6af052dfe69b54b6b48d0d87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.MonadBacktrack` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Nondet](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/nondet.md) | 50 | `declaration-track:377ffdf376b47c6920bf654451e77dff07ad5223c984a1e86b0c8b4c8724b1b5` |
| 2 | `def` | [nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/nil.md) | 64 | `declaration-track:ed06341fe267e96f6e531c4a25d04724a6feaa2c3e2c6fa553651df5135b7955` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/instance-source-edition-4.md) | 66 | `declaration-track:b911913497fbef0c68e67c68fc39a6c9ef618938ffb290831c2a23d1269229a8` |
| 4 | `def` | [squash](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/squash.md) | 71 | `declaration-track:d1a26bfeaa9a58960fa44bdb4081e23090b67df9e640f35b8335d21a60b8dd7e` |
| 5 | `def` | [bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/bind.md) | 78 | `declaration-track:276a2ad33a21cd7073ac84cdc6066d887e859e19fd7a4d95b4550c6db08fbbcb` |
| 6 | `def` | [singletonM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/singletonm.md) | 89 | `declaration-track:917653f9821601ab31e4dfc6078590cbc44153db1830c61f546e5f2043338670` |
| 7 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/singleton.md) | 95 | `declaration-track:b339863e9ef52aec2a08ec27307670873b73c70b61c6dcf75ed5a446c96320f9` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/instance-source-edition-2.md) | 98 | `declaration-track:31cc524a7a60594b41d0ea80f6804bdde3c21a66db03f03fe4e59a694462bf44` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/instance.md) | 104 | `declaration-track:20b92e48788b8667298e1cbd25e2dd5aa8329b21695ec5ad3ae48f5732a615ab` |
| 10 | `def` | [ofListM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/oflistm.md) | 111 | `declaration-track:48a5e2da935e795b25520595898dea9da88add66131417568a105a99b12793fb` |
| 11 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/oflist.md) | 124 | `declaration-track:33603c337b28d78748fbbfb7eea8e40eb3048e7730d841fb85dea5c2fcf658c2` |
| 12 | `def` | [mapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/mapm.md) | 127 | `declaration-track:760a35b51a8476261532a715dd90facd28a7eacd3e4e3fd153b1626097c5e3fb` |
| 13 | `def` | [map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/map.md) | 131 | `declaration-track:51641e8b41e84c7e0f3657cb25c01b4348da4a844aa14f3c20902a55beef924a` |
| 14 | `def` | [ofOptionM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/ofoptionm.md) | 135 | `declaration-track:4fdb33ae1a86e007d2b921829c1992cccbe7505c53cde9537688f46fbb70cbd2` |
| 15 | `def` | [ofOption](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/ofoption.md) | 141 | `declaration-track:6a8f41438b31738d6eaf0040a78400479cc63bd58bffef4767e9702ff24a4350` |
| 16 | `def` | [filterMapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/filtermapm.md) | 144 | `declaration-track:85a91d519e123b454b0b7caedbaf4c3f89352c82b93fdbeb73224fee9342eda6` |
| 17 | `def` | [filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/filtermap.md) | 148 | `declaration-track:9688f10e56fe4f7455ec1863c02e645b48e6a1602794c0c6fb22043b8709a304` |
| 18 | `def` | [filterM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/filterm.md) | 152 | `declaration-track:e58f3c2fb69cf4914000e35b54dccb34774894e74e805d2e9205cc5f1868d097` |
| 19 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/filter.md) | 160 | `declaration-track:94a27d0da22d0b6da1d43855cc740d4a3b280eefff10382a32e8316ab5b3f208` |
| 20 | `def` | [iterate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/iterate.md) | 168 | `declaration-track:7b73e30fa8c7fd1f4b3b0b975c081d99daa3f7f4f9b0ea85b3ec31adb3451842` |
| 21 | `def` | [toMLList'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/tomllist.md) | 174 | `declaration-track:d039a0513c7095a66628f8e48b35abeb45f0b20ccb62858efe1300f3786fc11f` |
| 22 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/tolist.md) | 179 | `declaration-track:6f25222f53610adaefbf49c6f70e97ce6ed9f86fbd115d505c8aae2fe6f3b38e` |
| 23 | `def` | [toList'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/tolist-source-edition-2.md) | 184 | `declaration-track:f8ba906a7573a2d953e791911e0bb3f15a38784c4445f83c6f042ae26d3a16ef` |
| 24 | `def` | [head](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/head.md) | 194 | `declaration-track:045e8918518fb1c247098f1ecf4fad877546df6fe7284489f65d2d3591c0e127` |
| 25 | `def` | [firstM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/firstm.md) | 203 | `declaration-track:5df9b3ba5c677b81cee0179d3bf320eec0484ab0bbbec72518738ad4e9f36c3b` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicNondet.lean/declarations/instance-source-edition-3.md) | 213 | `declaration-track:3d731de5ea0ccb40d07497b7ed91da1da356736ce637fddf057166997232b880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e401a7b8796dea1188c954b653e1f0c657c4eb5035122fc625b07a1e2003e97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbb202a049c224630b4cf34faf69151fed107eabd6af052dfe69b54b6b48d0d87.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbb202a049c224630b4cf34faf69151fed107eabd6af052dfe69b54b6b48d0d87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

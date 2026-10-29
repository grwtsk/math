# Verification target: Byte Slice Public Std

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcaef215f3e797a0597ed17182ace7f60d21fde7",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant4a570a611c3f114b5ce09c57533d0896027204188db15ee1e95dcfb6589db23e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcaef215f3e797a0597ed17182ace7f60d21fde7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant4a570a611c3f114b5ce09c57533d0896027204188db15ee1e95dcfb6589db23e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant4a570a611c3f114b5ce09c57533d0896027204188db15ee1e95dcfb6589db23e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Std.Slice.Internal.ByteSliceData](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/std-slice-internal-byteslicedata.md) | 30 | `declaration-track:b5d2f89911a6824219cfa4b0e1a1ab025c9189490dbb44caca3428588f5b813f` |
| 2 | `abbrev` | [ByteSlice](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/byteslice.md) | 73 | `declaration-track:566cf1678c8968c6e3f744b6940bf2679cf81ee5dc893ccb827e321cf23383dd` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-12.md) | 75 | `declaration-track:5d3f533d0f64248c088f24f78b56cfd6e28fc026bd81066ec96ac2f1f1e038fb` |
| 4 | `def` | [byteArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/bytearray.md) | 80 | `declaration-track:a47f8bcd0d76a899acd2d588a8b87c5b32d45174f59feec4309aab9c834933c0` |
| 5 | `def` | [start](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/start.md) | 84 | `declaration-track:1c5c04405927746474697be55f0b8bd1695d80f55c092c4c9bc964e6e49cc36f` |
| 6 | `def` | [stop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/stop.md) | 88 | `declaration-track:3ec737a6747dffb61d632b25d449f4ea49de222bd943d52d980e3bdb5838869a` |
| 7 | `theorem` | [start_le_stop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/start-le-stop.md) | 92 | `result-track:629a32743d647971f906169740c7bf1364093ebcbd447a937b9c60b514d9f607` |
| 8 | `theorem` | [stop_le_size_byteArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/stop-le-size-bytearray.md) | 96 | `result-track:66c11d50e4aebc9826eea5b5a97160a3f1782c72e7125303995519ae4c80475c` |
| 9 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/size.md) | 102 | `declaration-track:d0b24d8d79c6b45ec01df3f7fb53a4d75b79a2a160813356636aa9a168bf2635` |
| 10 | `theorem` | [size_le_size_byteArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/size-le-size-bytearray.md) | 105 | `result-track:d795078173285f42c6340e6c18550fcdd36e94b34857fdb36e3f15fb9debf77f` |
| 11 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/get-source-edition-2.md) | 116 | `declaration-track:6fd69ba7dac48b886b7071b9a415d042a3aa2e188916cf4471e8318c8fe525c3` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-13.md) | 125 | `declaration-track:5e5c995c00e0456bb9e9c0ab1caecc5101dbc086c016e99572c1e63180fb459f` |
| 13 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/getd.md) | 134 | `declaration-track:399d342bb7b6a0041070681eb847b97fb877c45505f089514b26c9fe806ecc2f` |
| 14 | `abbrev` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/get.md) | 143 | `declaration-track:35a57567857faf6b4e121006cc5cf1c3e25bb10a0256efe0f45ce7911682ce87` |
| 15 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/empty.md) | 151 | `declaration-track:655cb01e9bd29226da8c7328bda3887fa13298f41a3edafd66490116be4aab99` |
| 16 | `def` | [ofByteArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/ofbytearray.md) | 162 | `declaration-track:6f2e579973924747c594851bb5bff023982e0013e63865d7064e51e28afaa61a` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-11.md) | 170 | `declaration-track:57478f77cb3cf97570fc6acff31e2763b072c1ec4e86ae84aa12891146ace46c` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-21.md) | 173 | `declaration-track:b9326f5fae62f0a4b4df807de117684223e354d8bf8214ab8345dd0ed3ff985d` |
| 19 | `def` | [toByteArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/tobytearray.md) | 179 | `declaration-track:33f0981d0de70d0eb14816a44910d049e142f0c13851873cd015df99adb08157` |
| 20 | `def` | [beq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/beq.md) | 186 | `declaration-track:448885ab59a23186dc3adb16184fe19f1759c0d3a07a5576691f59d8d54f4327` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-17.md) | 189 | `declaration-track:79fa7ef93606e0ba03a9910d957c5244c72e1d56be661b7753cc4871fe9dc8f1` |
| 22 | `def` | [foldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/foldrm.md) | 208 | `declaration-track:57610b5d50b30c7dbc0fcc898a0363271767ab56e99aca8fcf9c768392caf05a` |
| 23 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/form.md) | 223 | `declaration-track:3add25e95c320c094b1f40c28b027c0a6be2dea716a254a14f234fb07298a754` |
| 24 | `def` | [foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/foldr.md) | 243 | `declaration-track:327135a53d51e86aea365df3a0b3ea8638f08301de51f2ac251213a959df30b7` |
| 25 | `def` | [slice](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/slice.md) | 254 | `declaration-track:91a0f8216356903b0a9e9238bdb8ef0b755c5558a0430f575b30453dfa9042b6` |
| 26 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/contains.md) | 282 | `declaration-track:54b6dc581531ab0deaafdf0ed4edc0868b9d42bfb3292e44274df14176ecbd42` |
| 27 | `def` | [toByteSlice](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/tobyteslice.md) | 301 | `declaration-track:aff83176e3906f5246109ebd0ef986c35b8c450a0d0fb83a7eee2653e0418588` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance.md) | 331 | `declaration-track:03ded67617a6e5301bc5301b1dcc7468a91b00978a2ef9372ba86a62a9b3d1f8` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-4.md) | 336 | `declaration-track:21f45dae1671eb6c543c41630cb84b5cd69f6fe0865915da09cb6ea45367d35d` |
| 30 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-3.md) | 341 | `declaration-track:20307f7503153a09898de7e8c93a287c127a4d85c8a587fc26fd083508b88331` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-5.md) | 346 | `declaration-track:3276c287983b930b4c66808239579a9b73ea6093651678f298afe65706321753` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-18.md) | 351 | `declaration-track:84ea19144f606abcb9425742d98c108e5e0d6d59d3eb8675719ca30dd011765b` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-15.md) | 356 | `declaration-track:78eaa8b76952d86452eb8139131acf32d9bd886c94311610c849f0a21db0c374` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-7.md) | 361 | `declaration-track:3301ac44fc47109082d62ee439ce92b064940770621c395bfca1e922857295cf` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-16.md) | 366 | `declaration-track:790084e14e44bdb9950b9cbe96ad0765d19f3b437eec18c6b0fd2bbc8446aad9` |
| 36 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-23.md) | 371 | `declaration-track:f8270987d3df674da92b20dc6471fa289264b1b6579215b7acb62d96efc826eb` |
| 37 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-14.md) | 380 | `declaration-track:667a88bb4c01887aea2b63a77c9dad963284876cb18cfd559318afc6ea5b7305` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-10.md) | 385 | `declaration-track:4d9f6781ba9e2d6a49b6204ee34bd21817642c9de10440b953334aa85ae9df0f` |
| 39 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-6.md) | 390 | `declaration-track:329b7d8f9820753694b3baae6b00e3df4367bef3a42f931c2fd4c10b7b972f83` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-19.md) | 395 | `declaration-track:931e4a1f42f3cc9bafa963278cb9e2489cfb8e9d6bd44302dd4615a35cd17b6b` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-9.md) | 400 | `declaration-track:3ee72005c105d8e65901908515de9a2e821fafc672206599d59890f58e6572f2` |
| 42 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-8.md) | 405 | `declaration-track:335d9b379f17059e965e607e3cae0c9bc4189a03fb9e9db4f63b30838bca74b8` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-20.md) | 410 | `declaration-track:b40cf575a9fa0431123dd7602e6e3122b518f90f2354381db8fa78469b1a834b` |
| 44 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-2.md) | 415 | `declaration-track:0897f4431e4d81e95dd3acb98d534b4598ce4e56deecd7ea72ab8023f0379066` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteSlicePublicStd.lean/declarations/instance-source-edition-22.md) | 420 | `declaration-track:ca3ed9b93193c7161c3550ffb2be34a490b1f092549c8c5f07a0c85a1c175bcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ac9934f01ed9a61d11c2d15c144ce368ac3d84e64599c2725a8c96c1dc33433 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant4a570a611c3f114b5ce09c57533d0896027204188db15ee1e95dcfb6589db23e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant4a570a611c3f114b5ce09c57533d0896027204188db15ee1e95dcfb6589db23e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

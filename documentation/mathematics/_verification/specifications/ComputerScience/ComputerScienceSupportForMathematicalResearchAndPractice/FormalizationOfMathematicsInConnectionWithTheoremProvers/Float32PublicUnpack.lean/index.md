# Verification target: Float32 Public Unpack

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d5da2350c70c4aa231fbdccc24c74b7597bfe6b",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float32/Variant5228027676e06f1375b55c79a02583234723842e5b4ba70c0eb52d965e412f05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d5da2350c70c4aa231fbdccc24c74b7597bfe6b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float32/Variant5228027676e06f1375b55c79a02583234723842e5b4ba70c0eb52d965e412f05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float32/Variant5228027676e06f1375b55c79a02583234723842e5b4ba70c0eb52d965e412f05.lean.json)

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
| 1 | `structure` | [Float32.Model](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/float32-model.md) | 35 | `declaration-track:bb18b1cb58c9fec5cc5977130074e78cc4899407ad2dffdcb43b0b27e944116f` |
| 2 | `def` | [unpack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/unpack.md) | 47 | `declaration-track:2e91c7d7696b15b2a342f204dc7e92ab30cfcee41e13b71eb7ca2b717e58cb06` |
| 3 | `def` | [pack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/pack.md) | 55 | `declaration-track:aae3eca1f770562f13df141bf2c3a29121297b9b8cf2b7b92e1458f405ba5342` |
| 4 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/add.md) | 62 | `declaration-track:31900ddbf867548721237a51eb2a431822bd7fbad2188f7fe1fceeb7f4d2fcf0` |
| 5 | `def` | [sub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/sub.md) | 68 | `declaration-track:94497a09e1fe33d5439352543a31dc155cca7788e5e980e6ef78bc2761507e8f` |
| 6 | `def` | [mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/mul.md) | 74 | `declaration-track:146b7ea755bdc20004c641d676ae40ba88593cd42f6bf920e71cd851dc00fdf1` |
| 7 | `def` | [div](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/div.md) | 80 | `declaration-track:a5f2ea43efe901e5a38d3f6d972a4dc2ed3b0241e7e164c2705589ba922bf959` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:2ec6bb85a642a3bb5f036ce06c688a24b250ffb9d26dea92e6cb6824e9e4179a` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-13.md) | 86 | `declaration-track:f9d03ffc513afcf92edaa1686b5ff2ccc045674247c2f349b97a11c81899c487` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-7.md) | 89 | `declaration-track:7a833c6c3ff88be09ef827c4580284b334ed44a87d6a9ce698613bf80add6403` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-12.md) | 92 | `declaration-track:c554d108d988993a6ec9c0a9c52cd941c1563d5292645ec4332b3c2f5f5a5c68` |
| 12 | `def` | [sqrt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/sqrt.md) | 98 | `declaration-track:893c21c5f72298956c3765fee4f3013a2bd0523274587f5838d42e91e6efabbf` |
| 13 | `def` | [neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/neg.md) | 104 | `declaration-track:a50044bff10023041d0e6fa7e9d5fdec07eb5189ba41b3f1c6908f9bf09cf6dd` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-5.md) | 107 | `declaration-track:676ba8ebe99f91b1808f95a92358ad06a7152011bc8dcbe900be59de13d0ec4a` |
| 15 | `def` | [abs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/abs.md) | 113 | `declaration-track:db7e9aeb3c2db48bc1404b7dfee5882a0f751e30f493c697c442cd9d2dc6a415` |
| 16 | `def` | [compare](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/compare.md) | 121 | `declaration-track:638109cf481a7fa4d0a091af66c1eb5b003d373d24a4c711b3be71c239b06c57` |
| 17 | `def` | [le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/le.md) | 129 | `declaration-track:00a47b3a8efbe5963ea5a00e089387a86a522dbf8f93a6c564bb4b7cb462c660` |
| 18 | `def` | [lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/lt.md) | 137 | `declaration-track:a100c6428d5ea7947fbde55ac401b786b1f1c09ccbb4d2f1d44397e9422dca8a` |
| 19 | `def` | [beq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/beq.md) | 145 | `declaration-track:9a332ce268080628aa5b1ea24d93a17b7b26b80eff03b442c2c9460d445fef2b` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-9.md) | 148 | `declaration-track:9f31fa39f54dcaf397d61980bc7b1bb2bb1a959a02b1f45b963ca0f3a88d4043` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-6.md) | 151 | `declaration-track:78670d3ede3e9a0126afedf9853c1ca5f079cbc5faba87878cc21e0ff0b4629f` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance.md) | 154 | `declaration-track:28b5de23182883e4bfc2595a33a815ea55fdd00533e641bd899dbd1dd3ca8122` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-10.md) | 157 | `declaration-track:a3f52f9b478bbe10d3b791041e4b724beba273b4771067c5554f0a557cb1572f` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-11.md) | 160 | `declaration-track:b81525c4c2b328174aba0023c50858ec2db1b5e47a3e0026d120f831566d760e` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-8.md) | 163 | `declaration-track:8eff6a08cea2783add49dbecfd09e67227dab7a2a0b8be57339f96af1e667e16` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-3.md) | 166 | `declaration-track:33e2b522037d140cdeb20f53b549752668f56e9d4e001c1a3914679a40d8c760` |
| 27 | `def` | [isFinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/isfinite.md) | 172 | `declaration-track:425770a934fdb8825e64ac911e5ad8af82d2d002b4ceb874c7d5c2ecdd780707` |
| 28 | `def` | [isInf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/isinf.md) | 178 | `declaration-track:153d14ed011be69767333b92cb2dae7e90cb66e196571ff29987b79c6d8ed463` |
| 29 | `def` | [isNaN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/isnan.md) | 184 | `declaration-track:20611dbb74e39fac4224fa3afc0b6937f8ffc44c9a56ef5ffa1e0d6ba8c09394` |
| 30 | `def` | [ofBits](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofbits.md) | 191 | `declaration-track:71d1c75448d0fd13dd3fa49d9f2ed46ad7d821cd0f50431e8f78af288055ddf1` |
| 31 | `def` | [ofInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofint.md) | 195 | `declaration-track:399ee9e2a88945690f090e5c9c97ce5c82d226f4c3610cf4e8633ccc7d1b262c` |
| 32 | `def` | [ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofnat.md) | 199 | `declaration-track:707dbe492ed44c869f892b0810727b2cc4bffb9bd79918110a2f55010582c34a` |
| 33 | `def` | [ofUInt8](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofuint8.md) | 203 | `declaration-track:667b15294bc7298ff66066e14e3a063f626125d3fdf1c5a04a4ebba0f8d438c4` |
| 34 | `def` | [ofUInt16](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofuint16.md) | 207 | `declaration-track:7d7b4a03b6b928775685671e850e6c9fe9632b029a2bc51d742b47412140b2ab` |
| 35 | `def` | [ofUInt32](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofuint32.md) | 211 | `declaration-track:26c14b1a1022c8e11472309ed4c060536ce0c893fabc7886794c4ee757f25bc6` |
| 36 | `def` | [ofUInt64](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofuint64.md) | 215 | `declaration-track:a639acee7a36a204586ea1450d3819f8ff3c2475141b2d6a06128f2611840604` |
| 37 | `def` | [ofUSize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofusize.md) | 219 | `declaration-track:74ba8ff1935c7d11ae44a5bc5ecb75fb361549d24d0c757657fcb0f1c6846436` |
| 38 | `def` | [ofInt8](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofint8.md) | 223 | `declaration-track:208927828337404277015f8985735e354a64a26818315a0816ec2f0555b0445a` |
| 39 | `def` | [ofInt16](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofint16.md) | 227 | `declaration-track:7863809b9f2a9cb69dfb9b56c42abfd887cb742dfa94ad3b5308d4c805b6d3b1` |
| 40 | `def` | [ofInt32](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofint32.md) | 231 | `declaration-track:38538d71ec1c29a84a58e0feb9f3bb139927e5b0c64fbd307ee38f376694db02` |
| 41 | `def` | [ofInt64](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofint64.md) | 235 | `declaration-track:dd352ac80ea565040391fad8214ea223ed8769663caa371f49d94861ba605516` |
| 42 | `def` | [ofISize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofisize.md) | 239 | `declaration-track:f2bc21ff141b113dd4e24bc6634768d1b74764d8a0e8a798056f8d694bf1df01` |
| 43 | `def` | [toUInt8](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/touint8.md) | 246 | `declaration-track:03dd7356603966351a0359ff8e2f1a123bb6b55d6b04394b64aa175b728fcee5` |
| 44 | `def` | [toUInt16](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/touint16.md) | 252 | `declaration-track:514a0abfead49308d479560ef1e7a88489815ae1faf6e6351c4a6942519d4439` |
| 45 | `def` | [toUInt32](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/touint32.md) | 258 | `declaration-track:eee1fea693fb9dc352466e3e1b99f6fabee833506cf6c3bc662f77dff1653a07` |
| 46 | `def` | [toUInt64](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/touint64.md) | 264 | `declaration-track:8c34a7df712f694a84c29910c2cf717ab9d45906f66c340fa3c3f733fd834ddc` |
| 47 | `def` | [toUSize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/tousize.md) | 270 | `declaration-track:e7df50ca0262c4401c110e775a399ad4969066d09cf1257413a41a93b429ff86` |
| 48 | `def` | [toInt8](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/toint8.md) | 276 | `declaration-track:60269d27aff1756bb4339f014dcc0c4d7c08ed98406d5d3778565656803a7414` |
| 49 | `def` | [toInt16](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/toint16.md) | 282 | `declaration-track:c846e2ccec95c835dd5197ecdf6afb48c115cb4136902831cf526313f22eaf11` |
| 50 | `def` | [toInt32](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/toint32.md) | 288 | `declaration-track:86326e53f8e8d3cf5461077deb87430722ec384de2fc927a8b724349100105d4` |
| 51 | `def` | [toInt64](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/toint64.md) | 294 | `declaration-track:440983acc037212449e54c46eada391de6c47183b35b0a05f2aa145a6cda653e` |
| 52 | `def` | [toISize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/toisize.md) | 300 | `declaration-track:a2f55947b903cccb91bc8bfe5aaf743476e4636fb4beb3712fd9e290c7aea60c` |
| 53 | `def` | [ofScientific](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/ofscientific.md) | 303 | `declaration-track:e09045aabf94762ac69ff2c144e1a370b9f01c6e96764dae5fbb8b73defc2e8e` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Float32PublicUnpack.lean/declarations/instance-source-edition-4.md) | 306 | `declaration-track:5d35ee1cdd8dd0cedf1d8f51fb96aebfa0e0366b3b636fcd2ff51fbf6cc034b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4da5c914fa9df88659ac3109099cd0075f954ae6b0d8613de910583d1bbde633 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float32/Variant5228027676e06f1375b55c79a02583234723842e5b4ba70c0eb52d965e412f05.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float32/Variant5228027676e06f1375b55c79a02583234723842e5b4ba70c0eb52d965e412f05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

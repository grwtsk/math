# Verification target: Basic Basic Public Float Array

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29eb263dfd77c1be05e3cd3d45b94023b4188ed9",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant80f3eff556a5316357ceff025f8b094f9c47915abdb61d4bbb843b92bc8075de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29eb263dfd77c1be05e3cd3d45b94023b4188ed9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant80f3eff556a5316357ceff025f8b094f9c47915abdb61d4bbb843b92bc8075de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant80f3eff556a5316357ceff025f8b094f9c47915abdb61d4bbb843b92bc8075de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Ext` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FloatArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/floatarray.md) | 17 | `declaration-track:86b55309157271e189f7c9c740e5bf056cdb6014c0952bfe78cdf03eeb081fe1` |
| 2 | `def` | [emptyWithCapacity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/emptywithcapacity.md) | 30 | `declaration-track:58a698303f95554ae5c7fbb10e97ac051d629df5717fad2dd826b75dbec2880f` |
| 3 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/empty.md) | 33 | `declaration-track:492c7d1c4081dfcd03243f04bb7b0de49c31218943ce0617f407dccd8b5e83ad` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/instance.md) | 36 | `declaration-track:19d315e0d3ec827e34d7fbdc511cc370b04221140b18664025bd2e05968d4e91` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/instance-source-edition-3.md) | 39 | `declaration-track:6263b1ee1c7a9015785530c4881901e8a231d6e8e0a6724e1b5b67df863a6048` |
| 6 | `def` | [push](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/push.md) | 43 | `declaration-track:babfb8397c295b63e427c2dd554e27b133b90dd59b5ecb53dcc07c96deb0d432` |
| 7 | `def` | [size](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/size.md) | 47 | `declaration-track:cf751d54808f274dce262094a3dffac477cb8fe9a1e654f69f9f047c3000589b` |
| 8 | `def` | [usize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/usize.md) | 51 | `declaration-track:21fed3fb3aee0c758434ba217f48048d26da609a222e25b2e82182bd4e5a18a4` |
| 9 | `def` | [uget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/uget.md) | 55 | `declaration-track:ece68a991bfc0afab96a89c2e55b2247187a35022f63f880e9fd5ab8f198f3a7` |
| 10 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/get-source-edition-2.md) | 59 | `declaration-track:0c323bbe335af8ace15f5a31b2b193245fd3ae4091d021c46138fe263e98ee48` |
| 11 | `def` | [get!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/get-source-edition-3.md) | 63 | `declaration-track:c6b66f809d4c8bfdacc83bde2cc1a91a8c4e1832d73c5fa063fce7f831f33fa2` |
| 12 | `def` | [get?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/get.md) | 66 | `declaration-track:08b60a76d6b7689f1438f7b9e546e289a9acc55a20fbd196f4100b9b394e79fd` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/instance-source-edition-6.md) | 72 | `declaration-track:cb39ace945ac5584e69e5d2a2f441a30806d4806afb48140c4c05645d4bb6f54` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/instance-source-edition-2.md) | 75 | `declaration-track:3c6104a29fca23d6e12ad0916dcaf5608231569bbbc82c91041c9e695f372758` |
| 15 | `def` | [uset](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/uset.md) | 79 | `declaration-track:88de7e69ebdd0b6a5a7a74110fbc29746bec055ec814da8e240a65a2b164c555` |
| 16 | `def` | [set](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/set.md) | 83 | `declaration-track:2f7460eb9854ea6ee5be43179da6daf771ecb9acd3de41e6fe8eaff6ce642950` |
| 17 | `def` | [set!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/set-source-edition-2.md) | 87 | `declaration-track:9129491787b4628708e83fef5683d18e3c5a5c90c3c962a7b082f1e14769ccd4` |
| 18 | `def` | [isEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/isempty.md) | 90 | `declaration-track:4208ef106d27684a87b31652c5c9aed7bb046fbec186b47ea687062ffecb9f37` |
| 19 | `def` | [toList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/tolist.md) | 93 | `declaration-track:dbf1dea42afebde62449ba9c23334fd6ccc2892fb514a3fb1eb98c02ebe7d6ff` |
| 20 | `def` | [forInUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/forinunsafe.md) | 106 | `declaration-track:0b452ac4f8500eab3b3d3539eb3f23d59a8d0c82d5eef24a564e9f617465e7d3` |
| 21 | `def` | [forIn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/forin.md) | 120 | `declaration-track:6ce41d6fa4e459b6953059bfe20df7c7621af5a8568479703589476006442c79` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/instance-source-edition-5.md) | 133 | `declaration-track:97becfb3a5e28e54a079c2306acb4ad724b2d85afe98f8c3749c28211ac6a633` |
| 23 | `def` | [foldlMUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/foldlmunsafe.md) | 139 | `declaration-track:919ec6aad37aa1bc0ade2e472ea3a85dffd1870c46d63b48b435107c0394e4eb` |
| 24 | `def` | [foldlM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/foldlm.md) | 157 | `declaration-track:db8496ac529a9fba3b11081d1ebfcd95dbeff5cc9af737caf50d63325fea4a94` |
| 25 | `def` | [foldl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/foldl.md) | 174 | `declaration-track:32ac7374d4fccea0bbffa50f8eb279ceb4002ef2a71f9300a17de66a8ae45982` |
| 26 | `def` | [List.toFloatArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/list-tofloatarray.md) | 182 | `declaration-track:c0ca771d41fc0d5db2a78693605fca43749c2e98a60c59fcc006613473f6f56f` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicFloatArray.lean/declarations/instance-source-edition-4.md) | 189 | `declaration-track:905cccefa6305ee9d512fe7fc1918902f5fae6b15f55a3c3ee5b8de0b8f7e873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12187db25f619bea8fd2f788829421bba35ee0d855acb26fec2845ef666c6c44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant80f3eff556a5316357ceff025f8b094f9c47915abdb61d4bbb843b92bc8075de.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant80f3eff556a5316357ceff025f8b094f9c47915abdb61d4bbb843b92bc8075de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

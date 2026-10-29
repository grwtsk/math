# Verification target: Dict Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd05710c4332966f0c88e1576ff688ab4b184514",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dict/Variant9d84c11a2d8647a7203c8d6203d15bc355e2f0c8ab41de912fee56b52e4df68e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd05710c4332966f0c88e1576ff688ab4b184514`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dict/Variant9d84c11a2d8647a7203c8d6203d15bc355e2f0c8ab41de912fee56b52e4df68e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dict/Variant9d84c11a2d8647a7203c8d6203d15bc355e2f0c8ab41de912fee56b52e4df68e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Fold` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RBDict](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/rbdict.md) | 31 | `declaration-track:2ac810e204ed7bec8f3d425db41f03fddf125ee7decc6e2ac4e62f00dcf114e9` |
| 2 | `abbrev` | [NameDict](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/namedict.md) | 36 | `declaration-track:305b0110c2750bf3c9aacb9c9fe325ebc39bd672505c212484f3bc1eccef901f` |
| 3 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/empty.md) | 40 | `declaration-track:690e00769f90bfca87b9611cf9ebddde4afce72495a7548227b3c48afa81df41` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/instance.md) | 43 | `declaration-track:17c21f17c23aafef46eaf94ce8097593015d492f4d92b62e447c3abd4c241a0f` |
| 5 | `def` | [mkEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/mkempty.md) | 45 | `declaration-track:e7e1f40d5ba8d7695d02d6515c76f9824e757df0186611290b90cbaf4942bdea` |
| 6 | `def` | [ofArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/ofarray.md) | 48 | `declaration-track:23adf58c3bf8215e7a5cfa26ca7d9f2cf9d6ac52d5b4ce1c202071488a22ab93` |
| 7 | `def` | [beq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/beq.md) | 53 | `declaration-track:28eaea3224c9c377caed9de655d87de9c066d7fa48259990e5a2b1c55b510a4d` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 56 | `declaration-track:5ecc871a58c16068d24d2a5741c768d7cb8cf23365a5b0923411372520d2be46` |
| 9 | `abbrev` | [size](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/size.md) | 58 | `declaration-track:54c3f748462f5341429813147085d4f01b43a8a1d5e2a4a51acc09efc244b8c2` |
| 10 | `abbrev` | [isEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/isempty.md) | 61 | `declaration-track:07f4a516569dd36bb14c620ff2cb8c6e5da3f5ef6a7f38048254ca6339a70199` |
| 11 | `def` | [keys](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/keys.md) | 64 | `declaration-track:9f3b74d488a9737576f0ce71ac783593673014f4f766eaf33e025e5cac1e7aab` |
| 12 | `def` | [values](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/values.md) | 67 | `declaration-track:af72ae76a441aaf7e5b5d4d5bb6fd34b5d9ed1c688d049b087f2788c09607bbb` |
| 13 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/contains.md) | 70 | `declaration-track:f11787c5f274f209befb554dfbd0c76995d10f3e91d4cc4577df73fefe73ec62` |
| 14 | `def` | [findIdx?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/findidx.md) | 73 | `declaration-track:a7b1fd30b5d012e7856f2f70ec2c2ba86b539c43d3221352f61e311455f9666e` |
| 15 | `def` | [findEntry?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/findentry.md) | 76 | `declaration-track:a5d9f628e1ba2c7e387e45cec701295b80a12d13456698fecbe0238431cfb8ed` |
| 16 | `def` | [find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/find.md) | 79 | `declaration-track:a91a695c2fcd752ef8b5d534dffc4702ed857518ea4a4d1c98753c66b1efd07c` |
| 17 | `def` | [push](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/push.md) | 82 | `declaration-track:1a7d152cd608334424b58bf1285e17d76a9d803457276f6f08b789d796ff3462` |
| 18 | `def` | [alter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/alter.md) | 85 | `declaration-track:e797dda07fa3594c6f2f3c012ede55e89ddd982db683480d05fa8093a4bddb49` |
| 19 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/insert.md) | 91 | `declaration-track:e07ca4b4a4ec9cb1264f864992f976b7cb2f228fee4485b558895976c850e77a` |
| 20 | `def` | [insertIf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/insertif.md) | 101 | `declaration-track:98536556a506b2f31f9d9c7e71ad0f8e031c66c6f3d593e88450d71f746e17be` |
| 21 | `def` | [insertUnless](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/insertunless.md) | 105 | `declaration-track:db5738767c4d8163c780b1a074dcd24070cc3f4f4efa0e80bdab239d0e7e94d0` |
| 22 | `def` | [insertSome](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/insertsome.md) | 109 | `declaration-track:e14107e2b2bdc2e7f0d499955706633d6d0ac5543036701de92d9d51746b1870` |
| 23 | `def` | [appendArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/appendarray.md) | 112 | `declaration-track:e75355401df7e453db0f534c17ac495e4ac9e2c8327dca90757a82d64c37fa23` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 115 | `declaration-track:348984b8293b13e57d8f03f6a8333d61ac9da3252a594b0728311aaa6e4a9725` |
| 25 | `def` | [append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/append.md) | 117 | `declaration-track:444b762033873320c5b3b8238fa2a7f98020fe578b5de050bd55f4f6eddf5d92` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 120 | `declaration-track:9c0d6d60f6ebfdd063cd563deafb40be018bf9639dfd3dbe0af91000add935bd` |
| 27 | `def` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/map.md) | 122 | `declaration-track:efdb528f0183786b5556676a6a2f1525d932dc27a097b8b0994cfa59f3920ff2` |
| 28 | `def` | [filter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/filter.md) | 125 | `declaration-track:457fe7cf9ca9d77474e89934f7c8d2e791d00e49abd2b5df8bd6b04bd3b70f99` |
| 29 | `def` | [filterMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/filtermap.md) | 128 | `declaration-track:9dd2da63b805b91a38daa94ba5d110f42867272a510b3d83c676daa7997c190e` |
| 30 | `def` | [foldM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/foldm.md) | 131 | `declaration-track:6106c78801c0094abc111e12ce0b0b80dc8f1d1c6635cdd93ea86e4f8a721051` |
| 31 | `def` | [fold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DictNamespacedPublic.lean/declarations/fold.md) | 134 | `declaration-track:76f3d25583314e351c347ff5b86d57bdc58d6c69b33cc7829de721f923302a80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b4511d5a394e1a94e0555be5b9724e4dc443a8ab6b2e232c8f5484501f3551d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dict/Variant9d84c11a2d8647a7203c8d6203d15bc355e2f0c8ab41de912fee56b52e4df68e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dict/Variant9d84c11a2d8647a7203c8d6203d15bc355e2f0c8ab41de912fee56b52e4df68e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

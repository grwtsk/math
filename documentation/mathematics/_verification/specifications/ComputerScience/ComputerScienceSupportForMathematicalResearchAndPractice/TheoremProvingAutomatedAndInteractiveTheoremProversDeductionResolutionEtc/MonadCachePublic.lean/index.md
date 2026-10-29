# Verification target: Monad Cache Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07f97d5c8fbd8215b0da830b0743199137615492",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07f97d5c8fbd8215b0da830b0743199137615492`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean.json)

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
| 1 | `class` | [MonadCache](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/monadcache.md) | 15 | `declaration-track:e2021e38d0df935190ca00eb51546c12e0921acd346a551210da8528b3d1769b` |
| 2 | `def` | [checkCache](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/checkcache.md) | 22 | `declaration-track:7588eb1a9abcfd9ba593031ad45e60b185a8b31b0f7532f18b3e95a44865ad93` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-13.md) | 30 | `declaration-track:c9917d8c5c7dc3cfd0e0447e811da9690ae02dd8c70b4b71b55e492beb1377a7` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-7.md) | 35 | `declaration-track:55aa44325514dfb799a821266508aea68611a59d952dd1341cbf98b468e60860` |
| 5 | `class` | [MonadHashMapCacheAdapter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/monadhashmapcacheadapter.md) | 41 | `declaration-track:8fa8077947a72ae6fa240755ca82cd2bddb1f15399537171c23dea4df0991cc4` |
| 6 | `def` | [findCached?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/findcached.md) | 48 | `declaration-track:32e0df72353f6157a85bba09e56214f2b1f325e279e4e460222de6169dd9fc12` |
| 7 | `def` | [cache](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/cache.md) | 53 | `declaration-track:3ae5160574c072b07268867c1a38dbf3c04a22a2106f632e812a835e607d0deb` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-9.md) | 56 | `declaration-track:6b0e6faa40bb6380a28504644eaed6a3dd82f52911f225ee72bd6a4d45d6f048` |
| 9 | `def` | [MonadCacheT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/monadcachet.md) | 62 | `declaration-track:3aac6011486fb96a794c501ad0523262a8b2910395a71a7bdf85b58386a4a865` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-11.md) | 68 | `declaration-track:92d49fe9cefb13b3b04ca78888103fb53f88523e7ad56277785aacb1afc1533c` |
| 11 | `def` | [run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/run.md) | 72 | `declaration-track:4d515e29f9a0802bfe71dad94e089ce6a073d3fcedc9809dba90abed0937fa73` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-2.md) | 75 | `declaration-track:16f6894e7e6aea449a783ef09de2a03f7c10329ba1f4849ef6e391677ab1d2a0` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-5.md) | 76 | `declaration-track:3030e9aba48b8017d2260c697f1fda51c1d7bbaba15f832783661a739961be9f` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-14.md) | 77 | `declaration-track:d3d69b3d514202298cf93c28cfeb8d9635af6a57b70612c338b9d8596ecb4343` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:1734ababe3189bbe5cd36b7543921b0f3c08ddda30a336f1cf51d3e03f7b4194` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance.md) | 79 | `declaration-track:107dfede6a2039e800009b6e1c4d7d179b9c565b97930ec825c64253b30155c2` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-8.md) | 80 | `declaration-track:5909641eb4ae67dc93a14b03998374d7b7621f8008849acc2c6393c738c19cb8` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-12.md) | 81 | `declaration-track:a01812e12f9f99ece2afccaa5e181991e651555b4a2b12d27b41d17a315df769` |
| 19 | `def` | [MonadStateCacheT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/monadstatecachet.md) | 86 | `declaration-track:82c8b4732fa826fcccba0b9f914da911e6d8021b8236662e18c8de62af4ed2b4` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-6.md) | 92 | `declaration-track:324b9b1d3f250cfd3c57a097090af188c547da08b879aa03a9c5b7f583912354` |
| 21 | `def` | [run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/run-source-edition-2.md) | 96 | `declaration-track:85777d4cef93fb9d38bc232b4c929c67c83784ab53bd0481fe4ca6f8f61deff0` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-16.md) | 99 | `declaration-track:da28e23830cd86e4d23dec34457145649a63b434a51dd1b17a51d6ebb372c7cb` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-17.md) | 100 | `declaration-track:dfc747c27a10cc907dd33a96cfee025fd33ac051932458acefe44d1774f8eac5` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-18.md) | 101 | `declaration-track:f3ca4bc03e0163ecd23b4bbaf8d84979f62af98e0d7a6d133f098964f807baa3` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-10.md) | 102 | `declaration-track:86a222177dae43339ceab19536aa0d725279cd9ab4c5b8102d3785e82cd197f6` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-15.md) | 103 | `declaration-track:d68b87cccf529758f2ab694a0063bd2b895d2b2f4984674393322690b71201b9` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadCachePublic.lean/declarations/instance-source-edition-4.md) | 104 | `declaration-track:277650428b0f0a0dfee09e031c8def9deaf6e5f79edfa622a0716b1f657f37df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=606fec7b156c0482568c48a4310eec16e8d44ec3804b3ee61d1b9a2d15867d78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadCache/Variant0ec70d17ccd61c1d0d5e29f1f0d60b09e7facdb5e17edeec59570ba68bbc766c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

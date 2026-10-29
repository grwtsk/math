# Verification target: Tactic Cache Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "080375618a05f3a383ef69942703abc3cb259bc0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant6e9656e4ace263eb8e8fc26f0abb502cd4ed77fbcbcea7959780ded0a6f6eb74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `080375618a05f3a383ef69942703abc3cb259bc0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant6e9656e4ace263eb8e8fc26f0abb502cd4ed77fbcbcea7959780ded0a6f6eb74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant6e9656e4ace263eb8e8fc26f0abb502cd4ed77fbcbcea7959780ded0a6f6eb74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.DiscrTree` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cache](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/cache.md) | 59 | `declaration-track:f265be72a7dde63a37c1132e92e721ae7db22ee13e4ca86ff5806158b4bf8442` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/instance.md) | 63 | `declaration-track:8103de77e330bcdd2fd65443a00fd550bd07544227f02fb3270f66abb362095a` |
| 3 | `def` | [Cache.mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/cache-mk.md) | 67 | `declaration-track:c55886f10b41cff383bb907e77f1a365dba27318545dd11fe3f72341fe4264e0` |
| 4 | `def` | [Cache.get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/cache-get.md) | 76 | `declaration-track:d0a5a4c388727f25490e5a97639ab5e8a2c601d312378f9835911ebe3056faa9` |
| 5 | `structure` | [DeclCache](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/declcache.md) | 106 | `declaration-track:550e8a1e3af6fbaa29efd1c647694f80a7ef87179bbe399cf4e317950e943c05` |
| 6 | `def` | [DeclCache.mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/declcache-mk.md) | 123 | `declaration-track:78092c68d3c1853182a19b3280c5e64a2a354d7f253a7d010b4ccd9b96e1eeaa` |
| 7 | `def` | [DeclCache.get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/declcache-get.md) | 141 | `declaration-track:debbb3e38bb69941fb5c64e7a4c19eb4dd33c25c2f6348f34f3c319a60139ec7` |
| 8 | `def` | [DiscrTreeCache](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/discrtreecache.md) | 152 | `declaration-track:8870f662e335d5acaee38417dd56d8d5273e3849aa78ba95b95532d7f17d533b` |
| 9 | `def` | [DiscrTreeCache.mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/discrtreecache-mk.md) | 159 | `declaration-track:9261543208d992eab80d71f186caea766543d22e3b9bc94fef00807f51b8c28c` |
| 10 | `def` | [DiscrTreeCache.getMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/discrtreecache-getmatch.md) | 186 | `declaration-track:d93ae3ce48c686787c798f9ec249b2f0d907f3b5b9b1933cec320bf5ea683366` |
| 11 | `structure` | [CachedData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCacheNamespaced.lean/declarations/cacheddata.md) | 196 | `declaration-track:a40e152eee2fde144f6181f7c00ea42f62885d4efe68e0e1609e0ba6356fd2e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5633fc309b6d6a938efe726d16643f2e176dafe5eca8a6b0f02122614071aa01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant6e9656e4ace263eb8e8fc26f0abb502cd4ed77fbcbcea7959780ded0a6f6eb74.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant6e9656e4ace263eb8e8fc26f0abb502cd4ed77fbcbcea7959780ded0a6f6eb74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

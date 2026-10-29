# Verification target: Specialize Public Cache

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6499b801b9870d1ca1f79b8ffb1a9c9fa987cbd2",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6499b801b9870d1ca1f79b8ffb1a9c9fa987cbd2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.Simp` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.ToExpr` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Level` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Closure` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Transform` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Cache](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/cache.md) | 20 | `declaration-track:9033c20e36a51adbd1060f6b028f9c3d5c3bfd9cf523e2744ac89a74619ffcae` |
| 2 | `structure` | [CacheEntry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/cacheentry.md) | 22 | `declaration-track:853f075403e3e3b9b6c1fe65fdf6824109d7e012b6a7e0f040204439160126f3` |
| 3 | `def` | [addEntry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/addentry.md) | 27 | `declaration-track:d8de3b151a1c00d124f90df6c1e946d366d18cbfbeea100244f491f723ec9c16` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/builtin-initialize.md) | 30 | `declaration-track:2cb02559f858be6ba32e7f786281714ff28bff0251ae101b6fe03449e60f15f9` |
| 5 | `def` | [cacheSpec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/cachespec.md) | 41 | `declaration-track:785c9207b5f1abbe6fcd28ba71c98e6d334c0ffee96a529ec1872046365615b4` |
| 6 | `def` | [findSpecCache?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/findspeccache.md) | 44 | `declaration-track:ef1f82a65cdb57df8ef518dfe27af2e872199ed84fa7f548284e078b8b80ed6f` |
| 7 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/context.md) | 47 | `declaration-track:98d518b9895a3d0976f6ee021c73ac96a6f24a029f66048014ebd04e95e4ae1d` |
| 8 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/state.md) | 63 | `declaration-track:a0da701bb2b18d5329ebb12dc8aa7dbe682c3c12d7a18b915b09cdf066ac635b` |
| 9 | `abbrev` | [SpecializeM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/specializem.md) | 88 | `declaration-track:09fe703df698aa25a396d1468ceee6ab4a3a07bab871246206c2e4955fc288da` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/instance.md) | 90 | `declaration-track:42ce8bc29563e0979b322a61ef20a9dea2544963b3209a808685e2fe89573d70` |
| 11 | `def` | [isGround](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/isground.md) | 98 | `declaration-track:0e4db46e2d5f781058b0c7d4b71291409af7ec052fe8b5e203cdaf673473849e` |
| 12 | `def` | [withLetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/withletdecl.md) | 102 | `declaration-track:77bac6abf1cf0abc100bc6286cc3e92dc01deb273e17bdf5b95f9a54fd4229c4` |
| 13 | `def` | [withFunDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/withfundecl.md) | 126 | `declaration-track:22479cd43b50ab759365ccdc5af499443b0d0f3ead17df67495465a01e6beb2c` |
| 14 | `def` | [collect](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/collect.md) | 194 | `declaration-track:dd93067051dc705928c4965bcc02baf21a9e4f26bdf64d9eb655b205e325714c` |
| 15 | `def` | [shouldSpecialize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/shouldspecialize.md) | 219 | `declaration-track:156cb4bba7d6c439067afd5d68bf3b9d4e1c976c08ea4005f5caafcc78268741` |
| 16 | `def` | [expandCodeDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/expandcodedecls.md) | 267 | `declaration-track:d091b4eef89ef010c5aa02e19b939abc2604cf2b688e1ad1de7b29c2483d4147` |
| 17 | `def` | [mkKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/mkkey.md) | 288 | `declaration-track:56ae9784e3c46e6143eae3cdf1b5b27d48e66be43e40e0b25bec3ed1586a08e8` |
| 18 | `def` | [mkSpecDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/mkspecdecl.md) | 312 | `declaration-track:a3152237afbd9adb8bd3e7090a230525a63175631f530732b497e7610a715187` |
| 19 | `def` | [getRemainingArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/getremainingargs.md) | 361 | `declaration-track:fd41bcc6df14959d2594fbe92a4ab8710c2b5baa44ccadb1550cee76b35c47e8` |
| 20 | `def` | [paramsToGroundVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/paramstogroundvars.md) | 368 | `declaration-track:dc5e62257b503e2458227eaa56b8049b9f9e8121ce99a393dc7b8b4e85496577` |
| 21 | `def` | [getSpecEntry?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/getspecentry.md) | 375 | `declaration-track:d019a8c942afb6749810915e5624255a4792eeab476c354a6ae640090999a16f` |
| 22 | `def` | [markChanged](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/markchanged.md) | 382 | `declaration-track:2190c0c5bfc065e831590c76f89c41c7f4c2ed89329af757af239f7ba1404788` |
| 23 | `def` | [resetChanged](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/resetchanged.md) | 386 | `declaration-track:8e1af2fde9ef5856aecf07f4bb70f2d6ae46d2dc7058d5b7ebcc6ed9949abf6d` |
| 24 | `def` | [hasChanged](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/haschanged.md) | 390 | `declaration-track:d00d68bed0c1a4cd7623c0ff3e1418bcbaea3adb40f2c7d69492720212be7f55` |
| 25 | `def` | [specializeApp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/specializeapp.md) | 398 | `declaration-track:27e766d1d51072276419f35f05fbf4802ce82d71c1d22b1013466fb36831a25e` |
| 26 | `def` | [visitFunDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/visitfundecl.md) | 448 | `declaration-track:340fa804479f67a8f185707ee1aa08d7e96085d2e828c86609bda01abaecff28` |
| 27 | `def` | [visitCode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/visitcode.md) | 452 | `declaration-track:c32e8b9b7caf9263f8b5672687c4e5d8e55a6309af1f5f701a7b513ac245a335` |
| 28 | `def` | [specializeDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/specializedecl.md) | 482 | `declaration-track:8534a68992f91224b4682bee65d33988b423c8da2bdbea2b75dec19e85bf214b` |
| 29 | `def` | [updateLocalSpecParamInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/updatelocalspecparaminfo.md) | 499 | `declaration-track:5692182d932a4a534913e6a65dccbe6525ab1967796fbd592dba890d693c8a33` |
| 30 | `def` | [loop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/loop.md) | 519 | `declaration-track:c7378d3a8ab4dc13c16e5b14b580bccd57d23da42103c11d588496e91399ea16` |
| 31 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/main.md) | 550 | `declaration-track:3dc4f87d200489c8ac80514778482c49c9088882bb60364ae3dee0dacfb196d4` |
| 32 | `def` | [specialize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/specialize.md) | 557 | `declaration-track:70af82f5c92a5beed97548c45c6348884593a9a2396ae084dda2d73e0a6fe935` |
| 33 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/declarations/builtin-initialize-source-edition-2.md) | 563 | `declaration-track:62aa36f063e7d9d2f13bf6c2be18304dfde36b17aa2685dc5dc80c16f10395d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d25f0f972b54fb0879ed148e6fe1377a4a565138370a77ab459263c0e64e44c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

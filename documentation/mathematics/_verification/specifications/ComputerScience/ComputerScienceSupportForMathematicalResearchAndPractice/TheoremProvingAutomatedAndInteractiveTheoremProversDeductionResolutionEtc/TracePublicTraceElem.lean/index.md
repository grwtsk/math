# Verification target: Trace Public Trace Elem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d441f69db37a760f7e9df53643c694e73b45713",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Varianta49a604e68b3870755e1dd4f728fb5dc3a8dfcda43df53ae863786199e5fe167.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d441f69db37a760f7e9df53643c694e73b45713`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Varianta49a604e68b3870755e1dd4f728fb5dc3a8dfcda43df53ae863786199e5fe167.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Varianta49a604e68b3870755e1dd4f728fb5dc3a8dfcda43df53ae863786199e5fe167.lean.json)

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
| 1 | `structure` | [TraceElem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/traceelem.md) | 66 | `declaration-track:a8815ca6b15722a9cbe7412913b15eacad96190f0dfbec5f9dd19b42c7e49bab` |
| 2 | `structure` | [TraceState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/tracestate.md) | 71 | `declaration-track:82c8bb60347adf5623b7fad5d3eadd89af35c4e07c3280608ca608da1d3f81c3` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/builtin-initialize.md) | 77 | `declaration-track:621ba86b2193c4b9a757f0258ecb7a4aad396a64a9a631686f4a56ed0c4c5ae1` |
| 4 | `class` | [MonadTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/monadtrace.md) | 79 | `declaration-track:d42e460ad52cb77d3913af4a6ad7e6d9ce3a9f53585181113840631d1ccbd14e` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/instance-source-edition-6.md) | 91 | `declaration-track:7eebff4aa1b4d8457b566d7765c283c8c98ea0931c803d80df81df1c8f2e6405` |
| 6 | `def` | [printTraces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/printtraces.md) | 98 | `declaration-track:df04365642f3be0678ebcd1c040f051188b95a7f592ae075d01dc492961e264b` |
| 7 | `def` | [resetTraceState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/resettracestate.md) | 102 | `declaration-track:64eb7e367679f0c95acda527521321aa195ce642f9a804429a13c9e2d86d27c0` |
| 8 | `def` | [checkTraceOption](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/checktraceoption.md) | 105 | `declaration-track:e112b4e89f555a6e0ab62d004a1b61c8d95f2351f723256f4bcf0bc85275e9da` |
| 9 | `def` | [isTracingEnabledFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/istracingenabledfor.md) | 118 | `declaration-track:df3e0597978c065498980fa6e4489b8548dd4df8c838cbee400020f7f3a060e0` |
| 10 | `def` | [isTracingEnabledForExport](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/istracingenabledforexport.md) | 122 | `declaration-track:e8381131ae36df45a6b2f6fc2cd067f62069c02f49b0dfe6e7d025e1ce342373` |
| 11 | `def` | [getTraces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/gettraces.md) | 130 | `declaration-track:635f5ac889ad63dec13ebdb12846b6b9d357615a6fad29179a4d1038963d98cf` |
| 12 | `def` | [modifyTraces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/modifytraces.md) | 134 | `declaration-track:35be41e00aad1d1d5c0cda349c8080b5bcaf5cfe5a5320a02b1ffbadcdb8dcfb` |
| 13 | `def` | [setTraceState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/settracestate.md) | 137 | `declaration-track:3d625896cd913d4af58d79fea7673cac2183420af7d8b268be4b11cd0158ac97` |
| 14 | `def` | [getResetTraces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/getresettraces.md) | 140 | `declaration-track:8f9aab225e1127d00eee11025293822265131f2e778de3d037669969ee5fd5f6` |
| 15 | `def` | [addRawTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/addrawtrace.md) | 148 | `declaration-track:0a041f3ff62e00c22b98679ddb28be7954841d57a69bfdb71e9b5bc5678ea1f5` |
| 16 | `def` | [addTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/addtrace.md) | 153 | `declaration-track:9c82ea323dd6a079d814cace83bbbc187a44f42d678db24353bdcf55d48f0880` |
| 17 | `def` | [trace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/trace.md) | 158 | `declaration-track:de7ec02ede56c469743d115054612cf73cf98a9584e3714326abf87cf0c7fe07` |
| 18 | `def` | [traceM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/tracem.md) | 162 | `declaration-track:c56fabf32a9625cc814aa95b330b230b8c45395e729cdd4869cbdf0c60638efc` |
| 19 | `def` | [addTraceNode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/addtracenode.md) | 167 | `declaration-track:a083cafe0b4a62c4e916de9d4238053ba865f28ac89e11a78d496e8582be25be` |
| 20 | `def` | [trace.profiler.isExporting](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/trace-profiler-isexporting.md) | 213 | `declaration-track:b594a022485d2a8e1d7de52a6337c29060e1816342121dcd93c8fb779e992d11` |
| 21 | `def` | [withStartStop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/withstartstop.md) | 225 | `declaration-track:d940cccaec861f64ab1981381cfe8748bc02f4ee5749e9de937c1b2e55aa0878` |
| 22 | `def` | [trace.profiler.threshold.unitAdjusted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/trace-profiler-threshold-unitadjusted.md) | 238 | `declaration-track:6c7f57cfa8a8117da8ee086a81d503b50d6d7de0aeb03492e1597c31a8c0e288` |
| 23 | `class` | [MonadAlwaysExcept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/monadalwaysexcept.md) | 253 | `declaration-track:968efd631e13c7a0c8ad7b5986adb92145badd5b934e9e03d71cabdbb477c76f` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/instance-source-edition-7.md) | 258 | `declaration-track:97acae13d002886b7f7f0c1650ac7a2f8594923c190e6c250ebb4a34dcd49834` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/instance-source-edition-2.md) | 261 | `declaration-track:20d58f53fefde7b61619a03f36b98d45a652afb67ada85eb42d939ed42bbd149` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/instance-source-edition-3.md) | 264 | `declaration-track:278117b7e12b076916cef6c2b2f5eb301dda8ca1af95238bf6e19ace1d984dec` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/instance-source-edition-8.md) | 267 | `declaration-track:b61b3cb837ac6a15f11ba05ff06ba76e2c6a39857168b3c4ad9171a743f1bc91` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/instance-source-edition-10.md) | 270 | `declaration-track:fe8d747d63f273d7f6e29b42f763bd820e787bbeebfc5ace1fb6b3fea6a810e9` |
| 29 | `def` | [bombEmoji](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/bombemoji.md) | 274 | `declaration-track:e7cc483daf22df16f0419524e07eb8950aef3639ee0bc34a1ac57c5f5778fccd` |
| 30 | `def` | [checkEmoji](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/checkemoji.md) | 275 | `declaration-track:7b5fd2d20d65a7aceb500c352e998ce010b0ae947d6c294b7103cd79ec145822` |
| 31 | `def` | [crossEmoji](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/crossemoji.md) | 276 | `declaration-track:950333b92f135cfae262b2b414978e550438521ef753182ddbe5dfe41f0cb05e` |
| 32 | `class` | [ExceptToTraceResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/excepttotraceresult.md) | 281 | `declaration-track:87faaef44a43c728817965640232723b948d606516c19bfb308eee2881a6e35d` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/instance-source-edition-5.md) | 284 | `declaration-track:648949ce48f9745d85cdbfb6254d411659e356239310dcf42df7870fda74ae60` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/instance-source-edition-4.md) | 290 | `declaration-track:33a2d612f1620973d3c7bcac492f24563695679ded1d7e8c39834a8d2a9599ca` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/instance.md) | 296 | `declaration-track:1ce2c0dc03adc6af74af7245b514e0122d61313e60d7f8d7885ea4c95f8f0981` |
| 36 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/instance-source-edition-9.md) | 301 | `declaration-track:fa15c8ffbb61f35a7dfd7e14184f064385a7add275b8d5cc32e247cd42d87282` |
| 37 | `def` | [Except.toTraceResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/except-totraceresult.md) | 307 | `declaration-track:a37b448d027fd16da6d37275cbb6925c8cb1c4cf2d83e2f691df93b9983abe89` |
| 38 | `def` | [withTraceNode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/withtracenode-source-edition-2.md) | 332 | `declaration-track:53a5d011556d3a2c7ef6186e7cb9c898984e0f92b51cc54cbb01ffc15dada04a` |
| 39 | `def` | [withTraceNode'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/withtracenode.md) | 364 | `declaration-track:31d614d99d3180422857c831e5044edc3df392be7786bf1478c960eb3c9db225` |
| 40 | `def` | [registerTraceClass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/registertraceclass.md) | 381 | `declaration-track:d5b55013995fa94ff886d9595f631402d0efeab0f84ac0249234f1c97e740e00` |
| 41 | `def` | [expandTraceMacro](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/expandtracemacro.md) | 392 | `declaration-track:665aaa8cfa18ff20f61a5d05f6e698045c324ce13a5010557ec261194ec5a7d7` |
| 42 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/macro.md) | 399 | `declaration-track:edcaec3cb07730446ffa89f63daeace52c15f50c9cb39f219f8cc78e6849bbcc` |
| 43 | `def` | [withTraceNodeBefore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/withtracenodebefore.md) | 415 | `declaration-track:f2b8f32bc8b9dc4b625ba5662b7f884b1fae7e83377e525ca2993be5e3dd1dd2` |
| 44 | `def` | [addTraceAsMessages](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/addtraceasmessages.md) | 447 | `declaration-track:c2d1aeb1bb2ca679f74faf1c582a06dd542eddd18cd7afd2418bf8d8ab428b74` |
| 45 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TracePublicTraceElem.lean/declarations/builtin-initialize-source-edition-2.md) | 469 | `declaration-track:9ebf98c5fec513c15cfeb41b3db576b4c06bcb150f39bba7766988ae046d3fd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1350e600a7671e500793427aabf3f1b89f7952bedfcc95bde898cf1d0f2ba7ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Varianta49a604e68b3870755e1dd4f728fb5dc3a8dfcda43df53ae863786199e5fe167.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Varianta49a604e68b3870755e1dd4f728fb5dc3a8dfcda43df53ae863786199e5fe167.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

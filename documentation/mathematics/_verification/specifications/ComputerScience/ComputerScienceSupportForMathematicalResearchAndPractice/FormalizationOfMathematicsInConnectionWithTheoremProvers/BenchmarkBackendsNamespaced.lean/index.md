# Verification target: Benchmark Backends Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c73afb9b7fcf26b825ef73998e22d9c2fe83b52a",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variant40679161c96f6919ebbe15dce40a03302d2263a96b037bd972ed92ad8866f41b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c73afb9b7fcf26b825ef73998e22d9c2fe83b52a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variant40679161c96f6919ebbe15dce40a03302d2263a96b037bd972ed92ad8866f41b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variant40679161c96f6919ebbe15dce40a03302d2263a96b037bd972ed92ad8866f41b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkPowerExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/mkpowerexpr.md) | 54 | `declaration-track:fb790735c116c12081241bf68e8115e1294cae788f70f7ab1874827d1807e5e9` |
| 2 | `def` | [mkPolynomialExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/mkpolynomialexpr.md) | 60 | `declaration-track:206966f486907ce9f620f8fa0584d32ccc7df6936ec1fff48c63583969da417b` |
| 3 | `def` | [mkDeepMulExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/mkdeepmulexpr.md) | 66 | `declaration-track:53b434629fe5baecf61d064cdd0f02f3a0323b1e5fb76102fdd065d9336330c4` |
| 4 | `def` | [mkNestedSin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/mknestedsin.md) | 72 | `declaration-track:bba80f04137cabe2dd45a623b948bad08af6f6943d0772ceeab6138d69e198fe` |
| 5 | `def` | [mkNestedExp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/mknestedexp.md) | 78 | `declaration-track:d5c0a46384a8ee5e147c15d68b62cefd6eab71ae8ab61a8043f3465f88f5b231` |
| 6 | `def` | [mkMixedExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/mkmixedexpr.md) | 84 | `declaration-track:5e7250b1e005d0ba7fbe68bf279809beca54f9e0f4fceda8e3150397312e2685` |
| 7 | `def` | [mkHornerPoly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/mkhornerpoly.md) | 93 | `declaration-track:70796ecce95627746c3727144687708332580c08770787ae32c891e7e47dc40a` |
| 8 | `def` | [mkExpandedBinomial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/mkexpandedbinomial.md) | 100 | `declaration-track:a7111d2730d8ee8ea934186e9535044bdd45352d6ee672cac7d119a96a5bf1a2` |
| 9 | `def` | [testIntervalRat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/testintervalrat.md) | 110 | `declaration-track:5345c88f8a859989ce7613e6e6b7da458cb37d681f8fa76bfafe69971a7b3456` |
| 10 | `def` | [smallIntervalRat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/smallintervalrat.md) | 113 | `declaration-track:7c1cf0fb4ec39814a0aea114920affcdde91e989a9785563113ab0aa692d959e` |
| 11 | `def` | [testIntervalDyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/testintervaldyadic.md) | 116 | `declaration-track:ecd2573ed3fea64cab215289a43ae6a90b38ee51a81a4a064e511181569a7e50` |
| 12 | `def` | [smallIntervalDyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/smallintervaldyadic.md) | 120 | `declaration-track:aed3373c7d3e00de89d8e7ec29cf6195199aeba4c8c5f34dcb6f2276c1b35ed1` |
| 13 | `def` | [evalRational](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/evalrational.md) | 126 | `declaration-track:0798373b9a30ec90a9fc1d30e48f9c27ddcfbf34183e93cc4f3a570d58b3c37e` |
| 14 | `def` | [evalDyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/evaldyadic.md) | 130 | `declaration-track:3be62b95c3b88fa4343259ba2c263f70aee0977a09393381324fb6f30a132bf8` |
| 15 | `def` | [polyExpr5](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/polyexpr5.md) | 136 | `declaration-track:06d877442e7d4a7b0efbd36b50fa04800c92d76d6e550caa9a7f7caac0c83e1e` |
| 16 | `def` | [polyExpr10](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/polyexpr10.md) | 137 | `declaration-track:c5ade6d581c38df2e8644ae0d74165526d8aeb5593481e357b7fb470a2e25c64` |
| 17 | `def` | [polyExpr15](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/polyexpr15.md) | 138 | `declaration-track:272d96b7f402fa646c4ba1ce31716b63846f45e9cfddf473d78fb93f42744386` |
| 18 | `def` | [polyExpr20](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/polyexpr20.md) | 139 | `declaration-track:610752f6f3f57a2a207d1b8a8895e9d76e6a7e15b0e8f4136689dab4a431b9f1` |
| 19 | `def` | [deepMul10](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/deepmul10.md) | 142 | `declaration-track:085060befac3289a87bd292cc0abc971503dca0ad5fba01c7d50e5ddddd0ed92` |
| 20 | `def` | [deepMul20](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/deepmul20.md) | 143 | `declaration-track:c6d2d87b0c050a45f931b184d61fb9c5e87ac8423e6f51d709ef9f07f67fd6d5` |
| 21 | `def` | [deepMul30](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/deepmul30.md) | 144 | `declaration-track:a97ba6545e86186972688d2bc43b96a41204ef1c94f126d42c257ab483047a47` |
| 22 | `def` | [deepMul50](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/deepmul50.md) | 145 | `declaration-track:2a6d2aad2820dec361689eed85188898d9ccf5d64a907d3d42699d4319bf4977` |
| 23 | `def` | [nestedSin3](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/nestedsin3.md) | 148 | `declaration-track:f81471145b0923ca0a6ae01f62feb6a4e17b4ce04b482b9597e1d54872afc5c3` |
| 24 | `def` | [nestedSin5](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/nestedsin5.md) | 149 | `declaration-track:ea1209b2df02bbfc039b8f4556fd7141f36a47befb0e808b812c16f60be4be0c` |
| 25 | `def` | [nestedSin7](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/nestedsin7.md) | 150 | `declaration-track:2d07345f68cf19f51902bbc0893ac9e9594824b17f9601c76f4c04bb9cadc059` |
| 26 | `def` | [nestedExp2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/nestedexp2.md) | 153 | `declaration-track:51b49ebc2ffff1b5277156898608a8230beeb8493ca30780619a3b79f671cbe9` |
| 27 | `def` | [nestedExp3](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/nestedexp3.md) | 154 | `declaration-track:9755d8ed1a41c2e92b6b61dad247d28129072aa9f9d16bdf366cf3f211038807` |
| 28 | `def` | [horner10](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/horner10.md) | 157 | `declaration-track:f28a3f6308a23344a28953d2013abd83d32e0ae29c628b4800b2f70ab9ee11f8` |
| 29 | `def` | [horner20](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/horner20.md) | 158 | `declaration-track:cbb929a3e0f12cfa170924be4b7b908791a7a4052326ae010b5aed59c81de6f0` |
| 30 | `def` | [binomial5](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/binomial5.md) | 161 | `declaration-track:40a3965df1dbcb40c9e551ab4d05e11a6a3b78b4eab0ed27ab285371405cdc28` |
| 31 | `def` | [binomial10](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/binomial10.md) | 162 | `declaration-track:eaccfff813106a3ef56c36885046700cf6470b86cacd2743e27bc8ffc34da366` |
| 32 | `def` | [binomial15](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/binomial15.md) | 163 | `declaration-track:e28a518df1b83a3d0d206c252612f2e0e514b7f9463e9b0d220dd0c9942aebaa` |
| 33 | `structure` | [BenchResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/benchresult.md) | 168 | `declaration-track:1f08236c39a9021a287413b3a0022283b0980b770d14141a8e49a0d46c99c508` |
| 34 | `def` | [runBenchmark](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/runbenchmark.md) | 177 | `declaration-track:c42f8a93708488fdd76c93640c98b92c6667f4c94a1db70deb4fdf56b475f791` |
| 35 | `def` | [runDyadicOnly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/rundyadiconly.md) | 225 | `declaration-track:f6b7ea3b553a7db5e2b76076314da9bf5f7d9fef7c30b60e0b8d55e29c6845c8` |
| 36 | `def` | [comparePrecision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/compareprecision.md) | 240 | `declaration-track:c1c7fc14e317c1547152bf965825aeb277c189cb7be8e757d28692e68d38d7f2` |
| 37 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/example-source-edition-2.md) | 258 | `declaration-track:5d6dedaa66f6bfb7ca1b0e45180ff50babd3169104e82b1dbafc0d3d10eed1b2` |
| 38 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BenchmarkBackendsNamespaced.lean/declarations/example.md) | 261 | `declaration-track:0d298d792873e28389523ea077f4aa1f89782a97696879cc29de70022dd5ec97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c7d3169f589eab45ffbbf156d85c3ec56466bce1bde6afb564e7370573b7358 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variant40679161c96f6919ebbe15dce40a03302d2263a96b037bd972ed92ad8866f41b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variant40679161c96f6919ebbe15dce40a03302d2263a96b037bd972ed92ad8866f41b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

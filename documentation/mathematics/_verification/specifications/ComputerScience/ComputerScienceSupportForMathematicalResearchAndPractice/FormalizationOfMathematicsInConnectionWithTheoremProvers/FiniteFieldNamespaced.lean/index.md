# Verification target: Finite Field Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90add06b58283adecab8945f63993c441f71d69a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteField/Variantd08fd285313f3968483a535c1e2a91721e04a54021deecd81c59af7ff6c08b15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90add06b58283adecab8945f63993c441f71d69a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteField/Variantd08fd285313f3968483a535c1e2a91721e04a54021deecd81c59af7ff6c08b15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteField/Variantd08fd285313f3968483a535c1e2a91721e04a54021deecd81c59af7ff6c08b15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.GaloisRound` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gf2OneCellCoordinates](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/gf2onecellcoordinates.md) | 29 | `declaration-track:afe8402301895d9a01350e049b676fd651955208f86748ec555c90f0bf2e02c0` |
| 2 | `def` | [gf2OneCellEncoding](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/gf2onecellencoding.md) | 43 | `declaration-track:82bc14094efc91acb32dee066d475c6c32f94c9eb3e4c1ffde9c242cb6e88640` |
| 3 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example-source-edition-7.md) | 46 | `declaration-track:7416db8c5cf7ed81847590a2bfdbe8b6a426a0df2c34359a1c0c896327c03597` |
| 4 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example-source-edition-3.md) | 50 | `declaration-track:1f243f395c335bf2a5cc267bd75e945f85ec552caa7a658482dc9e77de38e036` |
| 5 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example-source-edition-10.md) | 59 | `declaration-track:d3ec61408ae2a1811d4b2230dc282b5f158da1dfaa713a2f794af64a0c5e95dd` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example-source-edition-2.md) | 63 | `declaration-track:12d2845424e52bb9761c0f93865802cb50909839a7d096001dbcdfba64a5cd08` |
| 7 | `def` | [leftBit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/leftbit.md) | 75 | `declaration-track:37621d2eca084eeb1af976d539a0d8d0d327a23844fea1c1fde864009ef4972e` |
| 8 | `def` | [rightBit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/rightbit.md) | 79 | `declaration-track:810bdfcac53211cb56b9b6bc9c6e53ef49dab6279342906a701e47d4cf7db1e4` |
| 9 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example-source-edition-11.md) | 82 | `declaration-track:f6e08cef42efc96461489ef9ef6f7f15a9bcd992c1570777e01c2ad3cc158b86` |
| 10 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example.md) | 85 | `declaration-track:00f3211ff53f4ad028221d13824bd75ecb9f7f3852a934de08e964f68ef01097` |
| 11 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example-source-edition-9.md) | 88 | `declaration-track:a9416a8299495e208b80ef642497587ef2b0f454783060a7c49678005c687e13` |
| 12 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example-source-edition-6.md) | 91 | `declaration-track:5d49f0a481aae177ede0d245df1c3af4f9fdb876116549d57cbc725475d71e83` |
| 13 | `def` | [upperUnitriangular2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/upperunitriangular2.md) | 101 | `declaration-track:b7beef142639b07fc8112cfd7815699af7ce2a3cf84276003035639b551358f8` |
| 14 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example-source-edition-8.md) | 104 | `declaration-track:7efa342b49a2c30973a9e499c206fab05374bd9c277ff9b4bdd99805f54b449a` |
| 15 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example-source-edition-4.md) | 109 | `declaration-track:289676110f5aa4a14143305a371e433d6366c968a43839e5bd61c6d10269e22d` |
| 16 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteFieldNamespaced.lean/declarations/example-source-edition-5.md) | 114 | `declaration-track:4adb709a69689915a5f7dc4a71456e3ffa113a6300f450bbfa84dafc3b4ebf6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6faf2834c434dbbd01aedc5c00f7b777a7b0bf64d4967e7b551e7d960042b392 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteField/Variantd08fd285313f3968483a535c1e2a91721e04a54021deecd81c59af7ff6c08b15.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteField/Variantd08fd285313f3968483a535c1e2a91721e04a54021deecd81c59af7ff6c08b15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

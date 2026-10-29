# Verification target: Algebra Join

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f750324bc112c1135287330d44421e3966b1d8f7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variante51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f750324bc112c1135287330d44421e3966b1d8f7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variante51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variante51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Formula.Semantics` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [join](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/join.md) | 17 | `declaration-track:281feeceb4a472d6d7fad6474a9c20ccdbeb1d5b2467c9f455024d1bd2a6811d` |
| 2 | `abbrev` | [meet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/meet.md) | 18 | `declaration-track:50750eaaf3af017869c39d6552b846a6a2484b392638eab7ba5958a04e7b1730` |
| 3 | `abbrev` | [compl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/compl.md) | 19 | `declaration-track:f46b17ea2f0153f8847b022ba15ceb0482c57323ad8f7327120c0af739c4ccc9` |
| 4 | `abbrev` | [bot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/bot.md) | 20 | `declaration-track:563cf8551e8bb252e05b3754cd0f31e4e969f920e1432cf1c36994a675ef626e` |
| 5 | `abbrev` | [top](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/top.md) | 21 | `declaration-track:645890120f5c5e76b04e7605c8f07845fac2090c8899cfb49fa9bc51d91951c8` |
| 6 | `theorem` | [join_bot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/join-bot.md) | 23 | `result-track:afc1fff1966f8a7fc323b50424ae5a7029a6175b0f2b7b4e1649df8535a871bf` |
| 7 | `theorem` | [meet_top](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/meet-top.md) | 28 | `result-track:e97b963ead6513be62d00d8eed5d0b0731125c2cbaa8a5678eaafdf6f8e02094` |
| 8 | `theorem` | [join_idem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/join-idem.md) | 33 | `result-track:6bebb8aaab188f5224a07f2280ab2ba41fc0d7a29fc55007ca199125792f7dd9` |
| 9 | `theorem` | [meet_idem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/meet-idem.md) | 38 | `result-track:3ccb54d91987f56a3b21e4ca25706d85c698bf89a4d2939f353f044702b56677` |
| 10 | `theorem` | [join_top](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/join-top.md) | 43 | `result-track:fff63253aeda095d65197e398644404b58fd75424237977bd9dcc13bff23beb0` |
| 11 | `theorem` | [meet_bot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/meet-bot.md) | 48 | `result-track:16934f09172149e3c434d7a073cad7c111096caeb7bd0957b8604c99ef313def` |
| 12 | `theorem` | [join_absorb](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/join-absorb.md) | 53 | `result-track:529032cbc8936500cbd6664c017e5189d38f4a1006efe5aa407543efe20c4a72` |
| 13 | `theorem` | [meet_absorb](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/meet-absorb.md) | 60 | `result-track:6ee8c0efb2e185ac55489911cac3d17caa00fb3f847a870a6bdeda2fa47526d0` |
| 14 | `theorem` | [join_meet_distrib](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/join-meet-distrib.md) | 67 | `result-track:8823d3cefea5973bd068ebae791b69fc34b6eca750f5a848554406e468d97b96` |
| 15 | `theorem` | [meet_join_distrib](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/meet-join-distrib.md) | 77 | `result-track:c61fd4fb8c6159d09d99a117179106ff0c1dfc8028f305dc0a99ee59fdc02551` |
| 16 | `theorem` | [join_compl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/join-compl.md) | 87 | `result-track:ee198da05234d65862e10f8eb9298e7e3d75caa280608265a8cd541536ce0f0b` |
| 17 | `theorem` | [meet_compl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/meet-compl.md) | 92 | `result-track:8058d8ecc4fe772e046a0f621ffb3e964031ae33811bfad00a8f318a709d4188` |
| 18 | `theorem` | [compl_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/compl-unique.md) | 97 | `result-track:d7a5e36fbf7ec640fa1ceacaba345beccf76aac35fb0eeb000aedfde8743a337` |
| 19 | `theorem` | [bot_ne_top](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AlgebraJoin.lean/declarations/bot-ne-top.md) | 109 | `result-track:ccbc385bb121a354439a5b92df8369f251ec9b8f94c7e119e8348943d04ca5bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7b8bcb5c6682d8283eb3d0a9ebcf5e3822ce7d594ca37a9bcc37e377a0b4506 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variante51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variante51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

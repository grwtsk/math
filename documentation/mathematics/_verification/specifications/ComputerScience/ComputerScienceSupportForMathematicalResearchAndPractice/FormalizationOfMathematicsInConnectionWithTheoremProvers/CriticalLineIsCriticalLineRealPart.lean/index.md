# Verification target: Critical Line Is Critical Line Real Part

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7e4d64b5b16424a57d71d7b72a08155cb029524",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalLine/Variant3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalLineIsCriticalLineRealPart.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalLineIsCriticalLineRealPart.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7e4d64b5b16424a57d71d7b72a08155cb029524`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalLine/Variant3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalLine/Variant3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Core.DualPivot` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Harmonic.AnalyticPivot` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCriticalLineRealPart](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalLineIsCriticalLineRealPart.lean/declarations/iscriticallinerealpart.md) | 20 | `declaration-track:98cd4d7844058d64f914404aa43e74c5a7035f864c220097ba0df3bfe30b06e0` |
| 2 | `def` | [CenteredWithZeroVariance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalLineIsCriticalLineRealPart.lean/declarations/centeredwithzerovariance.md) | 23 | `declaration-track:3fabf0fe6ad6214ba6ec42466be84027d5300b2682ca44b8a1e2289b741c6277` |
| 3 | `theorem` | [criticalLine_of_centered_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalLineIsCriticalLineRealPart.lean/declarations/criticalline-of-centered-zero.md) | 26 | `result-track:978cdb0d71a72feccb22e9b39dabcbe63674a7d63dcb4b8ebb7342fb7eedb76a` |
| 4 | `theorem` | [centered_zero_of_criticalLine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalLineIsCriticalLineRealPart.lean/declarations/centered-zero-of-criticalline.md) | 39 | `result-track:b2794bdda20fd730c8a9e389a7eef3d749051a677116573f6c99920478b0c3af` |
| 5 | `theorem` | [criticalLine_iff_centered_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalLineIsCriticalLineRealPart.lean/declarations/criticalline-iff-centered-zero.md) | 49 | `result-track:91df027b83086a941fc2d333235ff23a2dbd1585f43db7530545190ff7da277f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3db00635436bae35a4d5f68f15d940fc88cd53fcbedb34d3f343602eb0f1aeb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalLine/Variant3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalLine/Variant3fd0d37603ba8bf1a672f2a24a5415f86fb14e7eef7703f1bf146932f83de288.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

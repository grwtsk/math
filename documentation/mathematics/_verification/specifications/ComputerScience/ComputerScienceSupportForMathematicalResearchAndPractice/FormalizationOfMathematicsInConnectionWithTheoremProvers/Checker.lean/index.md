# Verification target: Checker

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a386635fd4c2b917981e5c1f7057d16a15d0051",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variantcd469a49b93ff82e91b2e8c6dcfc0f0306d3f783808ee0c1bd89981ae2cb8776.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Checker.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Checker.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a386635fd4c2b917981e5c1f7057d16a15d0051`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variantcd469a49b93ff82e91b2e8c6dcfc0f0306d3f783808ee0c1bd89981ae2cb8776.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variantcd469a49b93ff82e91b2e8c6dcfc0f0306d3f783808ee0c1bd89981ae2cb8776.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Cut` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TrustedChecker](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Checker.lean/declarations/trustedchecker.md) | 14 | `declaration-track:0a2484555083cdbf84efcea569d5e039119f4a700e237d3502102c85a856d075` |
| 2 | `def` | [accepted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Checker.lean/declarations/accepted.md) | 22 | `declaration-track:23f66bb3168d37db38b0270dddc2fe1a6850dc7be5dd0f4a30a2494cc171f63d` |
| 3 | `def` | [proofStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Checker.lean/declarations/proofstatus.md) | 31 | `declaration-track:e1a2c6881c5ed80634630c52904a807479fa195a7c18a48b24cca31b94e093e6` |
| 4 | `def` | [unresolved](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Checker.lean/declarations/unresolved.md) | 44 | `declaration-track:8b0e2da3a1e1ed77eb10ec60e6824c84cf62ce8af920d803b016088d868f898d` |
| 5 | `theorem` | [accepted_proves](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Checker.lean/declarations/accepted-proves.md) | 54 | `result-track:c4914a4e6a16caa9da04508a797738f84718d1fc40b961dc4059fe80b301ff4f` |
| 6 | `theorem` | [mem_unresolved](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Checker.lean/declarations/mem-unresolved.md) | 64 | `result-track:18c824ac270ea4556b92a116020198f379f6a257f60a2d440fa651cbd76da697` |
| 7 | `theorem` | [accepted_mono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Checker.lean/declarations/accepted-mono.md) | 76 | `result-track:eb3a0c97bd583f46f2737e7e170f72e17e537aa337f6c25b3c4694eb21cde357` |
| 8 | `theorem` | [unresolved_antitone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Checker.lean/declarations/unresolved-antitone.md) | 89 | `result-track:6e09a6b3dfb217abad8b656c6cb94ac34ba03285193991777171f156e3b72bf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41199c2180b583eac15362fa49d284f45088b467763394a47abd89a6a56aa8e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variantcd469a49b93ff82e91b2e8c6dcfc0f0306d3f783808ee0c1bd89981ae2cb8776.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variantcd469a49b93ff82e91b2e8c6dcfc0f0306d3f783808ee0c1bd89981ae2cb8776.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

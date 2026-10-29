# Verification target: Presheaf Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fbf8719af1a7849af749081f43cf3a416b51c71",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Presheaf/Variant49dc28f11e733c150b5f39cc210789f4fd4aa1678c60088cecd2bc9173f71eca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PresheafNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PresheafNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fbf8719af1a7849af749081f43cf3a416b51c71`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Presheaf/Variant49dc28f11e733c150b5f39cc210789f4fd4aa1678c60088cecd2bc9173f71eca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Presheaf/Variant49dc28f11e733c150b5f39cc210789f4fd4aa1678c60088cecd2bc9173f71eca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Site` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteWorldModelPresheaf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PresheafNamespaced.lean/declarations/finiteworldmodelpresheaf.md) | 23 | `declaration-track:99fb631829f9d167a1917889d8a7ab5566fc4d5625e9817735f7ec500030f272` |
| 2 | `theorem` | [restriction_identity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PresheafNamespaced.lean/declarations/restriction-identity.md) | 43 | `result-track:e1f51f54391cab3b03e101bb0c7e013605514eca2f5e2df8310090043b004a88` |
| 3 | `theorem` | [restriction_composition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PresheafNamespaced.lean/declarations/restriction-composition.md) | 52 | `result-track:923d6cb02604dc1eee2691864309e09da6dd9a3b516e63dc1a483b0aa08304af` |
| 4 | `structure` | [FiniteDescentCapability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PresheafNamespaced.lean/declarations/finitedescentcapability.md) | 69 | `declaration-track:26a6bcbc2be04ffe87f79bb6952f9fddcba97e8aba34c5befaea20786d52f9df` |
| 5 | `theorem` | [compatible_family_glues](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PresheafNamespaced.lean/declarations/compatible-family-glues.md) | 84 | `result-track:34a26c23a99e3f61759fe08ecab8965e7bd380c0e630b23ff2d5d73c60da1e04` |
| 6 | `theorem` | [glued_section_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PresheafNamespaced.lean/declarations/glued-section-unique.md) | 93 | `result-track:eea5962a2733d4b545e1654db7e492bd93e0c92ea06b550cdb530e8f22e30ec2` |
| 7 | `def` | [equivCompatible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PresheafNamespaced.lean/declarations/equivcompatible.md) | 104 | `declaration-track:a6a8c1f8a0ea0605025f5da9619a0fbfd761328fd20c2042d700a61480c2998d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d12080e58c2b70d41dec3ada4515bb80ce052da73e8f4ed1bc10ba9db5213c41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Presheaf/Variant49dc28f11e733c150b5f39cc210789f4fd4aa1678c60088cecd2bc9173f71eca.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Presheaf/Variant49dc28f11e733c150b5f39cc210789f4fd4aa1678c60088cecd2bc9173f71eca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

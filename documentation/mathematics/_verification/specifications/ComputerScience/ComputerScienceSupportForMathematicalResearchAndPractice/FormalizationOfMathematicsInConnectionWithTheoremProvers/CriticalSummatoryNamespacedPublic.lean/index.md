# Verification target: Critical Summatory Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dc17e10a395c47076f19ebb08bdc5d6d39da91b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variant053e57a8998c0d1573bbd13ed744b243af923321030d5e40d3cfd6d9eeca7191.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dc17e10a395c47076f19ebb08bdc5d6d39da91b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variant053e57a8998c0d1573bbd13ed744b243af923321030d5e40d3cfd6d9eeca7191.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variant053e57a8998c0d1573bbd13ed744b243af923321030d5e40d3cfd6d9eeca7191.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CriticalSummatoryMembership](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/criticalsummatorymembership.md) | 41 | `declaration-track:9389d81d0c54386d021dbe08c59e7f452fd544447785e1ed2325c0841867531a` |
| 2 | `def` | [CriticalSummatoryHalfPlusEpsilonMembership](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/criticalsummatoryhalfplusepsilonmembership.md) | 49 | `declaration-track:194998bc13f1f5dd421bbefdf23e04c8f7c7d5bc7d77fbfa1c63b3af4e7dfbe8` |
| 3 | `def` | [CenteredTwistedPsiHalfPlusEpsilon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/centeredtwistedpsihalfplusepsilon.md) | 56 | `declaration-track:76ba4066b53d92eb68a97c3027d0fdf57775f12f7e2f3c2419268fa11dbc26ff` |
| 4 | `def` | [CenteredTwistedPsiCriticalMembership](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/centeredtwistedpsicriticalmembership.md) | 62 | `declaration-track:6503287a9a682d0c4a3ad7bbceb542e862b5a4207348427b5cf24f02e6c68990` |
| 5 | `theorem` | [criticalSummatoryMembership_implies_halfPlusEpsilon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/criticalsummatorymembership-implies-halfplusepsilon.md) | 70 | `result-track:eb7705d7b0a13e8a22a6f3532931b74aa1f1335151e74aa1225560a85d73899e` |
| 6 | `theorem` | [criticalSummatoryHalfPlusEpsilonMembership_implies_countable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/criticalsummatoryhalfplusepsilonmembership-implies-countable.md) | 82 | `result-track:60375f50a0cfa6ded61b03df64a61b587981cf1ede3f5de2b0df42a5d7ff1bae` |
| 7 | `theorem` | [criticalSummatoryMembership_iff_halfPlusEpsilon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/criticalsummatorymembership-iff-halfplusepsilon.md) | 92 | `result-track:47935f73154b7d45883c1beca22049665fed66a88dabf72fcfef3e97b29b21a4` |
| 8 | `theorem` | [criticalSummatoryMembership_iff_forall_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/criticalsummatorymembership-iff-forall-pos.md) | 103 | `result-track:d88f36440cbbfc1f4eeb2ee514852ddf7d4ffcc5f68f84454553769e7f499885` |
| 9 | `theorem` | [centeredTwistedPsiCriticalMembership_iff_halfPlusEpsilon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/centeredtwistedpsicriticalmembership-iff-halfplusepsilon.md) | 113 | `result-track:8a7a7effb54e4db1c871c51350586d4249537016cc18a3d4a2095c001f7333bc` |
| 10 | `theorem` | [centeredTwistedPsiHalfPlusEpsilon_inv_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/centeredtwistedpsihalfplusepsilon-inv-iff.md) | 123 | `result-track:ee716c77da3e979fe83c696172fc03620903f571c6263fa2d7592880b907135a` |
| 11 | `theorem` | [centeredTwistedPsiHalfPlusEpsilon_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/centeredtwistedpsihalfplusepsilon-inv.md) | 139 | `result-track:880dbbb1784d3e745d7408dbe47c26af75290f0d14bcae47d86dcf93c4b5bd3b` |
| 12 | `theorem` | [centeredTwistedPsiCriticalMembership_inv_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalSummatoryNamespacedPublic.lean/declarations/centeredtwistedpsicriticalmembership-inv-iff.md) | 148 | `result-track:161201a5d08d3bae6ecc779f715bcd81bf85ab06eb0b710cc693654d273a5523` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb3f4860ecc492254b7464b7ba7f1c4513c29e8659ec26e32b2e6208163498d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variant053e57a8998c0d1573bbd13ed744b243af923321030d5e40d3cfd6d9eeca7191.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalSummatory/Variant053e57a8998c0d1573bbd13ed744b243af923321030d5e40d3cfd6d9eeca7191.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

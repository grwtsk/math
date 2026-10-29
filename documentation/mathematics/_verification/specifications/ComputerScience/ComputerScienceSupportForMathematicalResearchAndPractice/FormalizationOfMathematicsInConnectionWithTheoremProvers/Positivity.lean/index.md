# Verification target: Positivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b36e54d7683d949cd1e54e43f2b2f711b67c612a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Positivity/Variantfe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Positivity.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Positivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b36e54d7683d949cd1e54e43f2b2f711b67c612a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Positivity/Variantfe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Positivity/Variantfe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.Positivity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positivity_data_uses_operator](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Positivity.lean/declarations/positivity-data-uses-operator.md) | 20 | `result-track:4fbb3a3c6073c3d2128e38e419ea091da8d7b03908e8510c7f2da1271b813b62` |
| 2 | `theorem` | [dense_domain_from_operator_data](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Positivity.lean/declarations/dense-domain-from-operator-data.md) | 26 | `result-track:10b4d80f480e8002ec1a945cbaab2c8b66fc90460aae5b1d5ed3f2099e9abf4a` |
| 3 | `theorem` | [selfAdjoint_from_operator_theorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Positivity.lean/declarations/selfadjoint-from-operator-theorem.md) | 31 | `result-track:7b88ace46153f7525e2926a1676a3fde0bc657fbe69fbafbc39c80612aa4af45` |
| 4 | `theorem` | [compactResolvent_from_operator_theorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Positivity.lean/declarations/compactresolvent-from-operator-theorem.md) | 37 | `result-track:fef0b21afadf368c48e5c04cbcfb285efe69a22a99b4cb720b19ab5e0fc144d8` |
| 5 | `theorem` | [positivity_from_operator_data](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Positivity.lean/declarations/positivity-from-operator-data.md) | 43 | `result-track:c1a5683067b44acb874f19b1b94aabea422e0963f93b1df4428ea0fc2dad4494` |
| 6 | `theorem` | [proven_positivity_from_operator_data](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Positivity.lean/declarations/proven-positivity-from-operator-data.md) | 50 | `result-track:29292f11815868d1584adf1b7d3a8426f7aa29f4f15971a0410dd7ef53bbbaa4` |
| 7 | `theorem` | [spectral_reality_from_selfAdjoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Positivity.lean/declarations/spectral-reality-from-selfadjoint.md) | 55 | `result-track:7e730c5cf3de2f54131d756d15dd88d79955185bf4d3e7b1cc862c5fee7c574e` |
| 8 | `theorem` | [real_spectrum_from_selfAdjoint_theorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Positivity.lean/declarations/real-spectrum-from-selfadjoint-theorem.md) | 62 | `result-track:9c886aa6105950fa8be25a02993f05dd09decee776f63b458e29489106092f01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37707d53cf162b2f94641318a63c65bbdf900a11c95c5554ef8ca106cafb8c37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Positivity/Variantfe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Positivity/Variantfe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

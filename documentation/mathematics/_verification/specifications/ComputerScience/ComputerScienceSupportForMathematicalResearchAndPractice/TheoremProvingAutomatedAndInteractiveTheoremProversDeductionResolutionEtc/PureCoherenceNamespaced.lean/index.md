# Verification target: Pure Coherence Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e19df25aa2991142913744e10775e4dc2b892f47",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e19df25aa2991142913744e10775e4dc2b892f47`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.PureCoherence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.Datatypes` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [normalizeIsoComp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/normalizeisocomp.md) | 42 | `declaration-track:1f7b12fb0bcdb68fc41f5ae646ff0e0fb61d954707ee24922c1c24c61f76ae80` |
| 2 | `theorem` | [naturality_associator](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/naturality-associator.md) | 45 | `result-track:43e82c44af9e1826a76ddc73e644c3609205e59d1e0424b113b5e79d494b7b99` |
| 3 | `theorem` | [naturality_leftUnitor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/naturality-leftunitor.md) | 51 | `result-track:065a5093b54c08d25333e09146a096bbd86ac787a4bf3ff8dbe3352cb6cbbec0` |
| 4 | `theorem` | [naturality_rightUnitor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/naturality-rightunitor.md) | 55 | `result-track:d0b7934e3489376cb73411803ee806eef5374cab0cb9dcde02514ea9749cbcb3` |
| 5 | `theorem` | [naturality_id](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/naturality-id.md) | 59 | `result-track:3b1d0f1aa102f392e8aea7513f9235353d39d4605934d006bb2bada3c9f4b2c8` |
| 6 | `theorem` | [naturality_comp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/naturality-comp.md) | 63 | `result-track:19084472b0be873f9416a095f256d3d0dbb8cf43e53a57cd195fbd8cfc332f7a` |
| 7 | `theorem` | [naturality_whiskerLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/naturality-whiskerleft.md) | 69 | `result-track:5070286b21aada8a7a57ef67ea268991ea100f073064fc3726bc1d8029c64bed` |
| 8 | `theorem` | [naturality_whiskerRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/naturality-whiskerright.md) | 77 | `result-track:1d2a5f9bc85d0f952163d90510c0e03f16be936695fb135a00739d0426fdaf14` |
| 9 | `theorem` | [naturality_tensorHom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/naturality-tensorhom.md) | 85 | `result-track:36e6cd9b6614a4eb18fabe8f3a528d8ac56864249a5a3cdd7514372b683493c1` |
| 10 | `theorem` | [naturality_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/naturality-inv.md) | 95 | `result-track:bb53945ad0c9231003e4974d32443a48f346be9f5a1a3c689a1a38b5ced7b553` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/instance.md) | 102 | `declaration-track:483db7fa7fcaf3ae57edb4b379748e1d3b1f914469d38a73332f6cc4bc13a8a8` |
| 12 | `theorem` | [of_normalize_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/of-normalize-eq.md) | 219 | `result-track:bafc302034589400fcac17dff79dab523720226f4ac10642acdef13f7bbab013` |
| 13 | `theorem` | [mk_eq_of_naturality](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/mk-eq-of-naturality.md) | 229 | `result-track:e076d2c5a9bb851b08fe46d45dc0fb3f68f541f7ebedc30fb274f4e7010f3751` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/instance-source-edition-2.md) | 244 | `declaration-track:de85dee1446473cbe6c4d317374c9010a4ad5aeaf0498ce271eecf53261c9284` |
| 15 | `def` | [pureCoherence](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/purecoherence.md) | 278 | `declaration-track:b1dd20d840e9b2a594c8c7725847efcd4c01f24cf1271c73f5aafb80cb415903` |
| 16 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PureCoherenceNamespaced.lean/declarations/elab.md) | 282 | `declaration-track:ba407df740ced69f318b033c1a75fe487152b94f32cd53e5fc3fae5e0e217cd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8db9d409b41049a5e51c832c1a7473964038bed8b31f105244c297fdf8d6c122 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Linear Combination Namespaced Eq Of Add Pow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6311d2131ef87ac2d1541009b41eada247f16231",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant8b7d6b3d45f55081f3bae9385e07a50e74fd7e77092f81e53903df82bf6cf79b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6311d2131ef87ac2d1541009b41eada247f16231`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant8b7d6b3d45f55081f3bae9385e07a50e74fd7e77092f81e53903df82bf6cf79b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant8b7d6b3d45f55081f3bae9385e07a50e74fd7e77092f81e53903df82bf6cf79b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pf_add_c](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/pf-add-c.md) | 52 | `result-track:6eb67840893bc2f4470744ad109118566d8c7d07c06f19e590dbc75b9f12cd5c` |
| 2 | `theorem` | [c_add_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/c-add-pf.md) | 53 | `result-track:0a5bcc8053ce5a0bd989b6c68d6f7e78fd1cae1b9d80b4d02dbca30cc4a14d32` |
| 3 | `theorem` | [add_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/add-pf.md) | 54 | `result-track:5f789bf71bf4afecff4e42c68a694f125c3ad00b7116a0ca1085bfbb240dfe4f` |
| 4 | `theorem` | [pf_sub_c](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/pf-sub-c.md) | 55 | `result-track:e5d28cf9ff97caa527f162dc2938a23d116ce2593496a3d348e45d9423b027ac` |
| 5 | `theorem` | [c_sub_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/c-sub-pf.md) | 56 | `result-track:79e3e4c91bb9894619bf78441c14dac59c92198d08326750d1b762fbcde0cc6b` |
| 6 | `theorem` | [sub_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/sub-pf.md) | 57 | `result-track:024dbdbb929d5e796a114ba122e966d76ad0fb6fb519b2e3dec3a5d5458323e3` |
| 7 | `theorem` | [neg_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/neg-pf.md) | 58 | `result-track:51019dbfa876daf4fdfdf2bd9d2812bc49a8ce80c2ce2ed7e689bd72f5e1287c` |
| 8 | `theorem` | [pf_mul_c](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/pf-mul-c.md) | 59 | `result-track:95a8c4b18dfa0c8edfa0300be5891f0df5fe4bb2ca2427f40f65304c0c2f3f7c` |
| 9 | `theorem` | [c_mul_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/c-mul-pf.md) | 60 | `result-track:e9a03e3407dc83f444669c8c558a88060493471693749b38b3cc7bd922bd18c4` |
| 10 | `theorem` | [mul_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/mul-pf.md) | 61 | `result-track:8b58d18b83e6c740a8eb07782ba31a5aea194b34f531c9bb2fbc5962e4ca5276` |
| 11 | `theorem` | [inv_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/inv-pf.md) | 62 | `result-track:8dc61237661eb46f6d377fd17b9f1d7708eb4efe81ad8b432a74b3be8d472c30` |
| 12 | `theorem` | [pf_div_c](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/pf-div-c.md) | 63 | `result-track:326579e255b74e5613b53755f2834736ab1f20ac05fddfd4cddabf2382863d49` |
| 13 | `theorem` | [c_div_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/c-div-pf.md) | 64 | `result-track:2e31c0b14618e52b36b6942280f889020057c82be1f221c33d28cdc80d080fe3` |
| 14 | `theorem` | [div_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/div-pf.md) | 65 | `result-track:9b77dd5a5c3da680504d2f7efd7ab9e246fa7e3d2cfb06fc40ca645ea29fd9d6` |
| 15 | `inductive` | [Expanded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/expanded.md) | 68 | `declaration-track:79fe5cb1b8c242503993f4924f62d32c0507e7f29d4a105886d43afdf70151ce` |
| 16 | `def` | [expandLinearCombo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/expandlinearcombo.md) | 82 | `declaration-track:5ba4406e33ae833150f4c03c67c01ae18a0b457d1723ec88994d3d558ef86039` |
| 17 | `theorem` | [eq_trans₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/eq-trans.md) | 132 | `result-track:376bc2bbeb1b93df8327616892324639e8be2d1d16cd636f8313dcf8c311087d` |
| 18 | `theorem` | [eq_of_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/eq-of-add.md) | 134 | `result-track:db61df32331feb1c9a581fb658540c31ddeef03a92082c1a7cfa6f807d094b39` |
| 19 | `theorem` | [eq_of_add_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/eq-of-add-pow.md) | 137 | `result-track:8f5102580285ec6d1470eb338a622521a4c405f1726bee2b19e0168d5ebf1995` |
| 20 | `def` | [elabLinearCombination'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/elablinearcombination.md) | 142 | `declaration-track:11d950a3b6147ab0ca9dd2301a1e5386702628e401efd7aeea4fc187a08920da` |
| 21 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/syntax-source-edition-2.md) | 172 | `declaration-track:4e3d847e6de4ca430541ac8fce9403ca52c705b1b0584be02dbfba8ecce30e4d` |
| 22 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/syntax-source-edition-3.md) | 178 | `declaration-track:878f8467956e30bef429fc0f65220c51443ad818f1e286c0e566c15b16df949b` |
| 23 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/syntax.md) | 259 | `declaration-track:10b0d0405e8978570d7484b4fb6a383c02b21833f0f04c6868e8465434b4e149` |
| 24 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/elab-rules.md) | 261 | `declaration-track:597bcfdc8dde960f1c15bc08eca92d04125d1d1521e9ef79d5ba35ccc627c7b2` |
| 25 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/syntax-source-edition-4.md) | 266 | `declaration-track:ab0902392c5921835adc2df7b99e0eeca5fba211befe08325038b1a443939315` |
| 26 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationNamespacedEqOfAddPow.lean/declarations/elab-rules-source-edition-2.md) | 267 | `declaration-track:81f3cee710ebcc3bb68811ca7962178c2ebf3368a11bd94ba76ab31e34c109aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07d4724af5c307dff1eb89fe7491dc3212225d8acccb24f4947e4d73a1fb8010 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant8b7d6b3d45f55081f3bae9385e07a50e74fd7e77092f81e53903df82bf6cf79b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant8b7d6b3d45f55081f3bae9385e07a50e74fd7e77092f81e53903df82bf6cf79b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

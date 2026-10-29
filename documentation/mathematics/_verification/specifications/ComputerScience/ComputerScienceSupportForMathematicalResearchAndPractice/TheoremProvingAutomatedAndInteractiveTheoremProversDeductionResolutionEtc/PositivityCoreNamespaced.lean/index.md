# Verification target: Positivity Core Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a75feda06a3f36d2c747cec5ba096bb75629aa93",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a75feda06a3f36d2c747cec5ba096bb75629aa93`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.Parser` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HaveI` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Invertible` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Qq` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/syntax.md) | 38 | `declaration-track:fe093061ff4072c4963250bd16020a07f13320c2edb64c0073ff8763c9c344c1` |
| 2 | `lemma` | [ne_of_ne_of_eq'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/ne-of-ne-of-eq.md) | 40 | `result-track:91dd7e46d513c2fbe0404c50e297426476f6144e119baf4e52a9f8f9e2e8bd3e` |
| 3 | `inductive` | [Strictness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/strictness.md) | 47 | `declaration-track:2183f10e4171ee5b9d658a48e031c6ad653ace47674697dc877c0e71691fcd9e` |
| 4 | `def` | [Strictness.toString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/strictness-tostring.md) | 55 | `declaration-track:ea3437c1ba4c44934a9b2e55cd2f5f3009119c592c75d4e068ed407cd22fce60` |
| 5 | `structure` | [PositivityExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/positivityext.md) | 62 | `declaration-track:abb4f93d9130661de9061d8e75e5e07112e39f2039a6ec4549a45aa5e5fd2a9a` |
| 6 | `def` | [mkPositivityExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/mkpositivityext.md) | 68 | `declaration-track:89ef733577c2364e5319ba5e261fde3590e82cea24b25e1a9a51f7bf2813683a` |
| 7 | `abbrev` | [Entry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/entry.md) | 74 | `declaration-track:a639c2af16edd19b67f4671523ce7cbd91377245602c756ef2772d27265dde28` |
| 8 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/initialize-source-edition-4.md) | 77 | `declaration-track:bb575f77b73f79fa8b26d820f08eeff0b37226b7287156a5b9707a8aa821fc4a` |
| 9 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/initialize-source-edition-2.md) | 92 | `declaration-track:79e144a8d5e8b503b3424912ac2b555f8aaf58b9e0ce490eae136e559bf2aca9` |
| 10 | `lemma` | [lt_of_le_of_ne'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/lt-of-le-of-ne.md) | 116 | `result-track:14dd304d3e88534134ae1979709fe073d55e56a402f924ae64f0abb3a9b13ff7` |
| 11 | `lemma` | [pos_of_isNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/pos-of-isnat.md) | 119 | `result-track:971e49c3304a4b6969811409665c334da5ffb88232a445d44c233921dc581f52` |
| 12 | `lemma` | [nonneg_of_isNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/nonneg-of-isnat.md) | 125 | `result-track:9e3b4eac8110e141f01a9069c24730ae6c315ccb624676a739e6da68ff6424f5` |
| 13 | `lemma` | [nz_of_isNegNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/nz-of-isnegnat.md) | 130 | `result-track:e7f027d049f7b2f8362b8b0dd358d119ff9039323a91e40c95f01515663cd155` |
| 14 | `lemma` | [pos_of_isRat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/pos-of-israt.md) | 137 | `result-track:5a2536088f3e78ade8366cbe2b51d35f7a44b925ec5ffd6d8c0f803b4a79a2e3` |
| 15 | `lemma` | [nonneg_of_isRat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/nonneg-of-israt.md) | 145 | `result-track:7b5a8ff32943ea462105637bb72bb832fdc3803b5380b63ca68eba4bb44b9606` |
| 16 | `lemma` | [nz_of_isRat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/nz-of-israt.md) | 149 | `result-track:50d20e4012b5ba7bae9a9c445dbe41ee34a1b1c97c25155b59641588d1122ae7` |
| 17 | `def` | [catchNone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/catchnone.md) | 161 | `declaration-track:51e4a07f893839293957bf9b87155f725f179e2e1dc90e309544b5edbe387a82` |
| 18 | `def` | [throwNone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/thrownone.md) | 169 | `declaration-track:7a3c23ac7112915b79eb6e0748de4f14d07dbb86c5016046b9df09a6edb55198` |
| 19 | `def` | [normNumPositivity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/normnumpositivity.md) | 176 | `declaration-track:e10c8505b8e25b428cf41b6f27683c6046b491a99afa64617598b5a2aa13398f` |
| 20 | `def` | [positivityCanon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/positivitycanon.md) | 212 | `declaration-track:bb518dd60423e0b46734a52c66e1ae61e610a4edfe3337f30442db6461d2c2dc` |
| 21 | `def` | [compareHypLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/comparehyple.md) | 218 | `declaration-track:a4e69e36fd1dcdc8b38807afc03aaa433b4ac74a9bd3c0ffe10524d30384dcbd` |
| 22 | `def` | [compareHypLT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/comparehyplt.md) | 225 | `declaration-track:0ef2828b18036440ecc4fc52878f923f282fc09fe01e8874633edff003ad6bda` |
| 23 | `def` | [compareHypEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/comparehypeq.md) | 232 | `declaration-track:8c64fe6f66d13837ed60496e24d059796438cbbfec5ce143d923784fcb2ad09c` |
| 24 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/initialize.md) | 240 | `declaration-track:2c8567ea5d8355bc57c20cb2985857a95f410b9fd03f2caafa70e4b3cd1cf12c` |
| 25 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/initialize-source-edition-3.md) | 241 | `declaration-track:86520c5d89e6fae096a7a00d1257d17a39e4764cb2b8b636d197e2c3ca906d0b` |
| 26 | `def` | [compareHyp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/comparehyp.md) | 245 | `declaration-track:43f7feef7fb932c1660a60ac6f16a10d723cf6315b020721bca66a9b195db46b` |
| 27 | `def` | [orElse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/orelse.md) | 277 | `declaration-track:9bbb9b896983011801a518abe844efcf859a8a76a82fdcafc770626611fa37a7` |
| 28 | `def` | [core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/core.md) | 294 | `declaration-track:c5696423f4ada22feea14adc8c199a50730dbb2bde8517d5b4cb13e0a8a2bcd6` |
| 29 | `inductive` | [OrderRel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/orderrel.md) | 313 | `declaration-track:76bdc282cadfbb49d4cda586cc06284c222c5ce649f08c64f8ef2e071e10701f` |
| 30 | `def` | [solve](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/solve.md) | 325 | `declaration-track:6649607482a71cfb2e336e355a7d91422b7c849e0903dd01893c2408d1d2e152` |
| 31 | `def` | [positivity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/positivity.md) | 365 | `declaration-track:7f1345ca1efa3e8f910984ad58aad7b174e5eacc8e5a6ad46424d556ea316f8e` |
| 32 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityCoreNamespaced.lean/declarations/elab.md) | 390 | `declaration-track:c06faf9bf7b248dc26314fded53617be4b65f5184d3360238d5122f8e6931615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9755cd35675ba409f9f896a9f393300670e30826b2a4e434b492b7822c43f4ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

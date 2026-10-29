# Verification target: Core At Scale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "876f3447de0bf5867c5bd3030e96fc9f6ce65d6f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantfc245f83225c31af248af9ab3259383b44e7828efc4eb04c78d2ebb1f3f46f9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `876f3447de0bf5867c5bd3030e96fc9f6ce65d6f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantfc245f83225c31af248af9ab3259383b44e7828efc4eb04c78d2ebb1f3f46f9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantfc245f83225c31af248af9ab3259383b44e7828efc4eb04c78d2ebb1f3f46f9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Knowledge.Sheaf.Equalizer` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Logic.CategoryEquivalence` — import line 2; external provider; requires a separately pinned dependency.
- `Think.Logic.LayerEquivalence` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AtScale](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/atscale.md) | 9 | `declaration-track:be195d4ccfe6458ad982d50540a3ceb79b3753e1660769f71e6a436d8be125d1` |
| 2 | `abbrev` | [StableAtScale](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/stableatscale.md) | 11 | `declaration-track:76aa3c9e080518fa030ad113adfdd7ffa3fdd779da1adc11db8fe88ec32d7a5e` |
| 3 | `theorem` | [atScale_of_base](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/atscale-of-base.md) | 13 | `result-track:40f39fc42e8e19936eae9b19a3f7ffdf392296466b024bdd8ff09bc9c3cb9800` |
| 4 | `theorem` | [epistemic_scale_induction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/epistemic-scale-induction.md) | 21 | `result-track:199ddd23048d352c32af2475d77b2402260c81b7972f98eb3508082ed7bb3012` |
| 5 | `structure` | [ScaledInvariant](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/scaledinvariant.md) | 33 | `declaration-track:a814b779a79599c5d5cffeb01a2213c539271d7026247b977bef08ca02ee64db` |
| 6 | `def` | [ScaledInvariant.receiptOnly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/receiptonly.md) | 42 | `declaration-track:e4876c860607ed354ed81de6fffa5e764593545f497f86029b689a5315090f1d` |
| 7 | `theorem` | [ScaledInvariant.holds_all_scales](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/holds-all-scales.md) | 45 | `result-track:5680288dee8cd7f5323103f3e85e51e514237841227a11cbc2e876ae2fa86f20` |
| 8 | `theorem` | [ScaledInvariant.receipts_only_if_accepted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/receipts-only-if-accepted.md) | 51 | `result-track:0ac45d6404e570a14a8d6af3767a96a55ccbca528df066c9b2598350c3ccf7ff` |
| 9 | `structure` | [ScaleStepReceipt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/scalestepreceipt.md) | 59 | `declaration-track:f710194c3ec3943f858613fb6edf0595cc4c471806eee54567c4cea95a7e38b1` |
| 10 | `def` | [ScaleStepReceipt.accepted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/scalestepreceipt-accepted.md) | 70 | `declaration-track:485d821c1cf7538fbcbae73519f08caa83cdb6af988ab5e8b20282919c1ee726` |
| 11 | `theorem` | [ScaleStepReceipt.proof_content_unchanged](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/scalestepreceipt-proof-content-unchanged.md) | 73 | `result-track:b2c9c73483a8b61227821ae64797302ce21ecc42d8412ca9673691c2352a5fe0` |
| 12 | `theorem` | [ScaleStepReceipt.only_data_if_accepted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/scalestepreceipt-only-data-if-accepted.md) | 79 | `result-track:e67b9e8ef7fdaaa3d10895b4e0f508309756b11328339a643b4818f3db805d26` |
| 13 | `theorem` | [stable_authority_all_scales](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/stable-authority-all-scales.md) | 87 | `result-track:c9948db3b11eaa6e53ce79689880e04f105c9a82f865a83fb802fc9b820e5ee6` |
| 14 | `structure` | [ScaleFrame](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/scaleframe.md) | 94 | `declaration-track:641f8902f611981446fdb3159e5eec66312bce540d176963feb8a129b67029ca` |
| 15 | `structure` | [ScaleChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreAtScale.lean/declarations/scalechain.md) | 103 | `declaration-track:bf698f23667fb2c48e187db772635e3f80534a3baf7e3b53da85a255bbb0d465` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b9efff18519f14af3240249a39d4846aac15890c547b6bfec5d6d7981bd9f00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantfc245f83225c31af248af9ab3259383b44e7828efc4eb04c78d2ebb1f3f46f9c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantfc245f83225c31af248af9ab3259383b44e7828efc4eb04c78d2ebb1f3f46f9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

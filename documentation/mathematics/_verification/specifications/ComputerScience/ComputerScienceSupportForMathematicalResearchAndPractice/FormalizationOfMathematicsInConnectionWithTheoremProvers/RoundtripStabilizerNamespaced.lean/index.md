# Verification target: Roundtrip Stabilizer Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38b362d5ee64ef7214a7a8749cac80a8a35bfb02",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e/Variantb728398354fa130421cf0effe277c8d31ed4a730c6a1c2813dbea3ae363cc434.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38b362d5ee64ef7214a7a8749cac80a8a35bfb02`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e/Variantb728398354fa130421cf0effe277c8d31ed4a730c6a1c2813dbea3ae363cc434.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e/Variantb728398354fa130421cf0effe277c8d31ed4a730c6a1c2813dbea3ae363cc434.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616e` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [containment_update_monotone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/declarations/containment-update-monotone.md) | 20 | `result-track:a1067763ec5c612308fbd7775379731b7768cd6478fa2aad0f6199851640b6f8` |
| 2 | `theorem` | [stableWithResidue_notCleared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/declarations/stablewithresidue-notcleared.md) | 27 | `result-track:d63b2e86b4fd09fe97cd67eaadf1a2820ff76298c0c4f8d2f4a9572607246635` |
| 3 | `theorem` | [status_stableResidueFree_has_empty_active](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/declarations/status-stableresiduefree-has-empty-active.md) | 44 | `result-track:17cdaad446a11d205c5ab4849dd0bc6a41b98e138784cdc9e99b1d73a0ff9db4` |
| 4 | `theorem` | [status_stableWithResidue_has_nonempty_active](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/declarations/status-stablewithresidue-has-nonempty-active.md) | 66 | `result-track:5a3e4cbd2797dc9197ad0a9163dafc5bdb98777a54f6b78aac1218d2f61076be` |
| 5 | `theorem` | [containmentExpanded_implies_strict_subset](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/declarations/containmentexpanded-implies-strict-subset.md) | 88 | `result-track:c29c1e1ba93134a4330b8b9309c2e22ffe88a195c2884d19a3cda7a152ac05c4` |
| 6 | `theorem` | [roundtrip_containmentExpanded_implies_ledgerContains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/declarations/roundtrip-containmentexpanded-implies-ledgercontains.md) | 112 | `result-track:4ac62ab27472b89bbf451644b33e4e72010cc1dea489fc85059b50c93acdb8a6` |
| 7 | `theorem` | [authority_drift_refuses_stability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/declarations/authority-drift-refuses-stability.md) | 136 | `result-track:4c43dbebfcf55993840d38e71a409f25596a00ac5d7d4dc68e016062cb342aa0` |
| 8 | `theorem` | [nonclaim_drift_refuses_stability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/declarations/nonclaim-drift-refuses-stability.md) | 157 | `result-track:41e36be4147ac1db77fc9a631a7db76bbbeb4d773a4548f9363f49c9012b5901` |
| 9 | `theorem` | [correctiveEnergyIncreased_refuses_stability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundtripStabilizerNamespaced.lean/declarations/correctiveenergyincreased-refuses-stability.md) | 180 | `result-track:1ffccee30dab14d1c1080f7da76f37af73bcded81b4201442d7563c49a38dcb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17f6782e87ad4ff1b9712f29a3a65b937484b7f8d7eef9ac801159e499878bbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e/Variantb728398354fa130421cf0effe277c8d31ed4a730c6a1c2813dbea3ae363cc434.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e/Variantb728398354fa130421cf0effe277c8d31ed4a730c6a1c2813dbea3ae363cc434.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

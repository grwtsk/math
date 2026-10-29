# Verification target: Lemmas Lemmas Public AMGM

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfc3e58c3b6f251353c7da84f66b7025b39c92a7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant36f460b85017cca7a6ced02292d4b9a6441182cb84589ac36710c6c741b65c0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasPublicAMGM.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasPublicAMGM.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfc3e58c3b6f251353c7da84f66b7025b39c92a7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant36f460b85017cca7a6ced02292d4b9a6441182cb84589ac36710c6c741b65c0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant36f460b85017cca7a6ced02292d4b9a6441182cb84589ac36710c6c741b65c0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.TacticsExtra` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Mod` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AM_GM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasPublicAMGM.lean/declarations/am-gm.md) | 27 | `result-track:e58722d5f54bd41104c40ceca2ca1105d01f7308a4f89f1302bde58c15486c05` |
| 2 | `theorem` | [sqrt.iter_sq_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasPublicAMGM.lean/declarations/sqrt-iter-sq-le.md) | 35 | `result-track:8c596bff0304c544bc923a6ae439c72cdd69d07488d6c47cd6236c852296d065` |
| 3 | `theorem` | [sqrt.lt_iter_succ_sq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasPublicAMGM.lean/declarations/sqrt-lt-iter-succ-sq.md) | 45 | `result-track:fad2f8e3ad3302bafa95f2b3c6c8332204727472706112dc4ae6324d852e6438` |
| 4 | `def` | [IsSqrt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasPublicAMGM.lean/declarations/issqrt.md) | 67 | `declaration-track:b584364c9eee9d0414208c47c5937da158943b0072381895e4a4c2b0aa5add90` |
| 5 | `theorem` | [sqrt_isSqrt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasPublicAMGM.lean/declarations/sqrt-issqrt.md) | 79 | `result-track:b3dffd78acb00e5affc7400fc2154684809cef3068d77697039c7d1516aa1714` |
| 6 | `theorem` | [sqrt_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasPublicAMGM.lean/declarations/sqrt-le.md) | 97 | `result-track:93570b83da33b3c385c51b02a15c1e396eb7f29af4d644a81d30ad2494f21ac9` |
| 7 | `theorem` | [lt_succ_sqrt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasPublicAMGM.lean/declarations/lt-succ-sqrt.md) | 99 | `result-track:4f1a802616126d249b95dbd281866edbc7a5a7f65af0cdc2937d660ef9d5f3e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f77fecdb1e89f0e522e87cb5b7dd98167028db2acf6e6e0478be630b819fdc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant36f460b85017cca7a6ced02292d4b9a6441182cb84589ac36710c6c741b65c0d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant36f460b85017cca7a6ced02292d4b9a6441182cb84589ac36710c6c741b65c0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

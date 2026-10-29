# Verification target: Ring Compare Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dc2fcf9b14a8af086c30d06a8033eff9528ccec",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant100d9f7f9059943dc2663b5ff0509dae921e6c3e6be1bd26a71bbfe9e94a5c47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dc2fcf9b14a8af086c30d06a8033eff9528ccec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant100d9f7f9059943dc2663b5ff0509dae921e6c3e6be1bd26a71bbfe9e94a5c47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant100d9f7f9059943dc2663b5ff0509dae921e6c3e6be1bd26a71bbfe9e94a5c47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Ineq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [amwo_of_cs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/amwo-of-cs.md) | 61 | `declaration-track:785768ff8d2d38f16b8a5b7befd2c32d11ebaa46f2013391c43cd52c4280c8bd` |
| 2 | `abbrev` | [le_of_po](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/le-of-po.md) | 64 | `declaration-track:21ddba39b3a269bd5365bdf5333ff851a5a2582732e85c22fa7be244f8cee49b` |
| 3 | `abbrev` | [lt_of_po](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/lt-of-po.md) | 67 | `declaration-track:0463601b946488f630ded57bf738cdb1b70f00ea4677dc9671cfd2b918d437ed` |
| 4 | `theorem` | [add_le_add_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/add-le-add-right.md) | 86 | `result-track:b238de296cebbbe9db72fc82c3e969fb418d674ce61e3eba3491ccb029221ee1` |
| 5 | `theorem` | [add_le_of_nonpos_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/add-le-of-nonpos-left.md) | 91 | `result-track:7ebb6282da72d014ac88d4f4b8c5d6aa47fa90f66933e1ffd18956e63577ed5a` |
| 6 | `theorem` | [le_add_of_nonneg_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/le-add-of-nonneg-left.md) | 96 | `result-track:844a8432edf1d46f3aee95182d3bf93d1bb23b58d6aceaf7d9cfc60519ee5101` |
| 7 | `theorem` | [add_lt_add_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/add-lt-add-right.md) | 101 | `result-track:ee7ce0101b489323e061967a314a7cf1d78d3d5b2d949c48e67dd03438bdefd9` |
| 8 | `theorem` | [add_lt_of_neg_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/add-lt-of-neg-left.md) | 106 | `result-track:618f8e43989a178e9bea31d520ab71e75e368f162a523754b0495de159bc3fba` |
| 9 | `theorem` | [lt_add_of_pos_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/lt-add-of-pos-left.md) | 111 | `result-track:556d06bf5f4a9cd62a77afac37056e67db4707baf4146ecd047047a21cf96d47` |
| 10 | `inductive` | [ExceptType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/excepttype.md) | 120 | `declaration-track:5627b4ebba784a2b7c61de5f756be622f7979a5a185119eb3c1be0b4f3300989` |
| 11 | `def` | [evalLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/evalle.md) | 126 | `declaration-track:47d3746aecc8c390b087de448c56beecb5973f53bb65083e440b19c89c3689b7` |
| 12 | `def` | [evalLT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/evallt.md) | 164 | `declaration-track:18d06139d9b6273c3f081bd81ff86736a6a15b3b94e3bc6eecca9d6e1cfa3bc2` |
| 13 | `theorem` | [le_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/le-congr.md) | 198 | `result-track:52caf2d3393e00f368f6e79a6c5b56239d3385faa6c28cfa6b40a8f93ba975d1` |
| 14 | `theorem` | [lt_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/lt-congr.md) | 202 | `result-track:0fa7fe644d3190c1f71e46f51a6c7024915ea9146eab6bece479159e17756da7` |
| 15 | `def` | [proveLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/provele.md) | 209 | `declaration-track:abe20e9abfab622846b6fff207ce3a608e10d847743ae9811602a6e01201a29e` |
| 16 | `def` | [proveLT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingCompareNamespaced.lean/declarations/provelt.md) | 235 | `declaration-track:fdd849096f1a2bd6919b961f7f5cd62b9a6be3c6e896365989108c7c1f2bd24a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb4886460d7c3bfa5395144f274920cee2f5bd767733ce80625aef16a8a4e9b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant100d9f7f9059943dc2663b5ff0509dae921e6c3e6be1bd26a71bbfe9e94a5c47.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant100d9f7f9059943dc2663b5ff0509dae921e6c3e6be1bd26a71bbfe9e94a5c47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

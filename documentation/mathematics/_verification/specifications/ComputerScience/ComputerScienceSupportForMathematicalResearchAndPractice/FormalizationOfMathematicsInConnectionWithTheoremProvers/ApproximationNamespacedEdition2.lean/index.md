# Verification target: Approximation Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8c8f9667c0671c19f3122da1ba87a96e7cf1404",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8c8f9667c0671c19f3122da1ba87a96e7cf1404`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Authority` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Precision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/precision.md) | 38 | `declaration-track:36a277825ec4fe11e81ecccd7d41ea1da5657e0588fc74354228850c4d129462` |
| 2 | `structure` | [ErrorBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/errorbound.md) | 45 | `declaration-track:0512d02a3e6c25e2ee5dc3a15e9a68122027b8faf19e5a0a63fc2c532f1755c1` |
| 3 | `structure` | [FiniteToTargetApproximation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/finitetotargetapproximation.md) | 52 | `declaration-track:4046f6d4a1553b2bc16934fc9fbaa047ca2fc5c713cc5a10a1b563e40a2c4e62` |
| 4 | `structure` | [TargetToFiniteProjection](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/targettofiniteprojection.md) | 61 | `declaration-track:d8dd9cfaf95b2c970fdefb1f28877a0d875365ecf143a3a2cdd64c484df2e5f0` |
| 5 | `structure` | [BidirectionalBridge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/bidirectionalbridge.md) | 75 | `declaration-track:6c120816a10238bd4652fbb52a71f9b79297647789c6ecff6aaa1834bd55621e` |
| 6 | `theorem` | [finite_to_target_sound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/finite-to-target-sound.md) | 86 | `result-track:fa794a4ac1eb432f06a81bcf71aa596b3792de8c70d38661813b2922032a9318` |
| 7 | `theorem` | [target_to_finite_sound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/target-to-finite-sound.md) | 92 | `result-track:9f47474c635bce3187a17cef16e57a83c56f24750d13ff4139ab6dc58e79bdda` |
| 8 | `theorem` | [bidirectional_bridge_has_round_trip_bounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/bidirectional-bridge-has-round-trip-bounds.md) | 98 | `result-track:4ff706eb75a75dbfdec14d43076c7563e5f75c12002f623b56488a911db8ae0a` |
| 9 | `theorem` | [bidirectional_bridge_refinement_sound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/bidirectional-bridge-refinement-sound.md) | 104 | `result-track:d4f62e421372f331e475989104714b2cd23e0fab037729e027092faea811e79f` |
| 10 | `structure` | [ExactFiniteEquivalence](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/exactfiniteequivalence.md) | 116 | `declaration-track:6cc064d77bf89b4f1c5938c7f35b80c7b7f55001d331572e6f0bf5b38601af13` |
| 11 | `theorem` | [exact_finite_equivalence_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/exact-finite-equivalence-left.md) | 125 | `result-track:6754e59318de6dea4e3d90539c46cd1a61e0e3c60169d17e7af06d765117b85a` |
| 12 | `theorem` | [exact_finite_equivalence_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/exact-finite-equivalence-right.md) | 132 | `result-track:3239338e1806009a5ea52897617e6167d9a18ce240a6c6eae0e73ddb1fef6d31` |
| 13 | `structure` | [ObservableQuotient](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/observablequotient.md) | 145 | `declaration-track:96dea42368d28f55dd417e99a9428d78be2965bfe779eb55305b4df9eac773f3` |
| 14 | `theorem` | [quotient_equivalent_iff_same_projection](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/quotient-equivalent-iff-same-projection.md) | 156 | `result-track:6cd181da68364bec9d2a624af7a80421fc8e822feaf1f2dd7c8fc1eceb8b43df` |
| 15 | `theorem` | [quotient_rep_projects_to_input](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ApproximationNamespacedEdition2.lean/declarations/quotient-rep-projects-to-input.md) | 163 | `result-track:59e2de50b014d274f1e6585aab01696248e8ddc4022330a667ea78e81125bedc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb564c6029784676600ff7ca13d5c368b9feb060ab5feb873d54c89b9082ab25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximation/Variant7a84fa2da177a57e0d52816d8f470b47648fc257c45a040d7057da2d95bf0114.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

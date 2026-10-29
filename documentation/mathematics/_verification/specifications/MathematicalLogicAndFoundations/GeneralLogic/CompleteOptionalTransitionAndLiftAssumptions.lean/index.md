# Verification target: Complete Optional Transition And Lift Assumptions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57b0766e96e01457937f788aea64fa2979fdbec1",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedPivotTransitionPackages/Variantb6af7c162eef5583/CompleteOptionalTransitionAndLiftAssumptions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57b0766e96e01457937f788aea64fa2979fdbec1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedPivotTransitionPackages/Variantb6af7c162eef5583/CompleteOptionalTransitionAndLiftAssumptions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedPivotTransitionPackages/Variantb6af7c162eef5583/CompleteOptionalTransitionAndLiftAssumptions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.PivotAtlas` — import line 19; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.ContinuationQuasiIsomorphism` — import line 20; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.DeterminantLinePropagation` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralDeterminantValue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/spectraldeterminantvalue.md) | 44 | `declaration-track:93b4f3012122e7ec4acabaf63f156ca6921a0a269d8ab39239ea8bce4602a090` |
| 2 | `structure` | [DeterminantPivot](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinantpivot.md) | 49 | `declaration-track:4b9d839f57dfd63af2443613e3a1241eb65cece3f952b12a4b5eaa4cb018497a` |
| 3 | `structure` | [DeterminantTransition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinanttransition.md) | 60 | `declaration-track:79a7aef7edc25fd48a8d6809db0c16a8061759148afd36a2f2f55406b27a9546` |
| 4 | `structure` | [PrecomputedSpectralDeterminantAtlas](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/precomputedspectraldeterminantatlas.md) | 74 | `declaration-track:6d1be00788726bb679c37d6008270f35f48e2ebc57a6dcae8d29719480ef4b60` |
| 5 | `structure` | [DeterminantPreservingQuasiIsomorphism](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinantpreservingquasiisomorphism.md) | 95 | `declaration-track:a2e510b174404a2498a9a3e32faa96b4b44cca05b948dd7ab095b2efe92c3329` |
| 6 | `structure` | [SpectralDeterminantLift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/spectraldeterminantlift.md) | 111 | `declaration-track:38f534e5e083fc7e7e1780462c93d1a8554bcef22eb9ad01df3e55c3821442dc` |
| 7 | `theorem` | [determinant_transition_preserves_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-transition-preserves-if-supplied.md) | 129 | `result-track:98cf22bee73d6403cb3be01b840ed777e6163d92fe390b8ca4ff6063cd0f6a0d` |
| 8 | `theorem` | [determinant_atlas_covers_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-atlas-covers-if-supplied.md) | 134 | `result-track:a9e39218a618bdcbdd1e8467d77e02c17bf9240142887d2169532318af567184` |
| 9 | `theorem` | [determinant_atlas_cocycle_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-atlas-cocycle-if-supplied.md) | 139 | `result-track:5f6c9405897c649d27047d5999dd4d2dac00626c39dbc7c34f9fc9abfbefa6e7` |
| 10 | `theorem` | [determinant_atlas_path_independent_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-atlas-path-independent-if-supplied.md) | 144 | `result-track:af3d43bfa6df53dcdbcd62cb483c0fc016d374175f8950811f913db5a787c11e` |
| 11 | `theorem` | [determinant_atlas_regularization_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-atlas-regularization-if-supplied.md) | 149 | `result-track:84d9c2e2752f050684b4c9b312b941e980f141bf0d97a9e9b73629e217a99458` |
| 12 | `theorem` | [determinant_quasi_iso_preserves_line_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-quasi-iso-preserves-line-if-supplied.md) | 154 | `result-track:e375213ee16b5fe152a6a75e5d5fc9203765b19cbc736b23384f99502ee9ce9a` |
| 13 | `theorem` | [determinant_quasi_iso_preserves_spectral_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-quasi-iso-preserves-spectral-if-supplied.md) | 159 | `result-track:fc006b1cf0e60cb4594524a1d0d4044f784f22ce191a885ddf3a4c99f217d1fb` |
| 14 | `theorem` | [determinant_lift_atlas_descends_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-lift-atlas-descends-if-supplied.md) | 164 | `result-track:cf9f6d0a766ae4690fc5c46b0f5c1f0e562bba72d29e84a9510938cd073276a3` |
| 15 | `theorem` | [determinant_lift_quasi_iso_computes_same_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-lift-quasi-iso-computes-same-if-supplied.md) | 169 | `result-track:d9016b3a70e88f77cb641ada65a240bfcdf28d37a43791cbafe10432117a00eb` |
| 16 | `theorem` | [determinant_lift_agrees_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-lift-agrees-if-supplied.md) | 174 | `result-track:88e4eacb11775d0be770d33b4bacbca392192a7269c835ddb7680a8d213d3176` |
| 17 | `theorem` | [determinant_lift_atlas_to_quasi_iso_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-lift-atlas-to-quasi-iso-if-supplied.md) | 179 | `result-track:c579bef493c567be932c94faa7d55417ad23558f42e687291f12dd9efe3c054e` |
| 18 | `theorem` | [determinant_lift_quasi_iso_to_atlas_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteOptionalTransitionAndLiftAssumptions.lean/declarations/determinant-lift-quasi-iso-to-atlas-if-supplied.md) | 184 | `result-track:4fc9e49c897228b047ccb75e03f09c92bc1e2095bfa18c92cec34fb93a9a9e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=272d1f71126b2c7da46e1b5153dd805f7973d5b5c1e23c7bbd7a59039cc0c37f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedPivotTransitionPackages/Variantb6af7c162eef5583/CompleteOptionalTransitionAndLiftAssumptions.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedPivotTransitionPackages/Variantb6af7c162eef5583/CompleteOptionalTransitionAndLiftAssumptions.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

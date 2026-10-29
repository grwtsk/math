# Verification target: Is Splitting Field Adjoin Root Set Eq Range

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b49308aab5c29f3acf7e23442ee5f7338147dfe",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsSplittingField/Varianta5e154c2b8caec6c66c6746ac8005a63883869832f35da81f600651f337fc390.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b49308aab5c29f3acf7e23442ee5f7338147dfe`.

Source path: `GRWTSK/Algebra/IsSplittingField/Varianta5e154c2b8caec6c66c6746ac8005a63883869832f35da81f600651f337fc390.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsSplittingField/Varianta5e154c2b8caec6c66c6746ac8005a63883869832f35da81f600651f337fc390.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Algebra` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSplittingField](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/issplittingfield.md) | 42 | `declaration-track:a99d2eff04ad53f76d9735988b846bf4d5a3d8a0ca55dc883187963882fbf840` |
| 2 | `theorem` | [splits](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/splits.md) | 50 | `result-track:c705a8c65ee39ae64426ca0a539444bc6b33e152be9c415d93d8e14f56a62ea5` |
| 3 | `theorem` | [adjoin_rootSet](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/adjoin-rootset.md) | 53 | `result-track:c0592bdc8ae3e87e43664c7aee7cd05ae57d9ce03996dfdb9e3d2e5a53c1c6fc` |
| 4 | `instance` | [map](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/map.md) | 61 | `declaration-track:7f27a578f6c12b2514f34408a589284d851076c12c4b4b910bd4fdb37054ad9f` |
| 5 | `theorem` | [splits_iff](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/splits-iff.md) | 68 | `result-track:c88bfc0e20c79a2d91da580f36bb2c687a4bf7070175053f1a4bf8554f26c777` |
| 6 | `theorem` | [mul](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/mul.md) | 84 | `result-track:50aaee3780f81504de80588ce7cc210e52337417450944a57ec198f57d79d604` |
| 7 | `def` | [lift](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/lift.md) | 102 | `declaration-track:03301bd11cfbdb0346c82f2b29bf4218764be490a3b8a80a0b2a54a740361763` |
| 8 | `theorem` | [finiteDimensional](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/finitedimensional.md) | 117 | `result-track:85b24284f752e55cd774312d96f93821db722bed6529184e6ee6fcb0fa8e294d` |
| 9 | `theorem` | [of_algEquiv](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/of-algequiv.md) | 124 | `result-track:3e691f43d5ae3eeea5eb121e8abf3036decad42c187e9ec6a1076a380697ccd6` |
| 10 | `theorem` | [adjoin_rootSet_eq_range](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/adjoin-rootset-eq-range.md) | 132 | `result-track:478d0dc09d6f34e74bc4c9a5b79d371bba5513d33f0756461425d243f2bfa2d2` |
| 11 | `theorem` | [IntermediateField.splits_of_splits](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/intermediatefield-splits-of-splits.md) | 144 | `result-track:d93dbe91f5fa85eeed99a6bf0fe0e46ee067c59ddabc5597a6d062065e5808a4` |
| 12 | `theorem` | [IntermediateField.splits_iff_mem](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/intermediatefield-splits-iff-mem.md) | 150 | `result-track:bb60a67b482a95b830617bfed2583be6fd9fdc1acf2dba7e100224d4e4db8f41` |
| 13 | `theorem` | [IsIntegral.mem_intermediateField_of_minpoly_splits](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/isintegral-mem-intermediatefield-of-minpoly-splits.md) | 157 | `result-track:d4e4a84b6086018ce7cfeb73118e55286e68bd772d922f7ac76e9e0d368f4c77` |
| 14 | `theorem` | [isSplittingField_iff_intermediateField](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/issplittingfield-iff-intermediatefield.md) | 162 | `result-track:261447806262582f40dd6d2b9f24716c19f853439fa03b4f451d6a0eccb1db45` |
| 15 | `theorem` | [IntermediateField.isSplittingField_iff](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/intermediatefield-issplittingfield-iff.md) | 169 | `result-track:6c974694d94bda16a9b622e4345193fa825daa21d7513041db11b33a1dbba923` |
| 16 | `theorem` | [IntermediateField.adjoin_rootSet_isSplittingField](../../../../FieldTheoryAndPolynomials/IsSplittingFieldAdjoinRootSetEqRange.lean/declarations/intermediatefield-adjoin-rootset-issplittingfield.md) | 178 | `result-track:9958061e43060230ca0817ec93455d75bb9eaf489610e1202c6361984e2b0861` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9473e34ebc0cac39a5f64e9cbd0dadd923961ad8a9654cab6c2ba29f2e6bbfa9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/IsSplittingField/Varianta5e154c2b8caec6c66c6746ac8005a63883869832f35da81f600651f337fc390.lean","GRWTSK/_verification/specifications/Algebra/IsSplittingField/Varianta5e154c2b8caec6c66c6746ac8005a63883869832f35da81f600651f337fc390.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

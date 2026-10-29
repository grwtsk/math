# Verification target: Dual Lattice

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63811d51628b38bf4be51a08335bb354422c02a4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63811d51628b38bf4be51a08335bb354422c02a4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.Properties` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualSubmodule](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/dualsubmodule.md) | 32 | `declaration-track:a5cb30a0638c2b74be09fd07fb8460b7e8e99dc936ed5bab0cb9b618da1d7eb3` |
| 2 | `lemma` | [mem_dualSubmodule](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/mem-dualsubmodule.md) | 41 | `result-track:2bdac95332d8b745709ee01cbe03058fd224ab6bd6ee4ffdcb3c5cec905cc596` |
| 3 | `lemma` | [le_flip_dualSubmodule](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/le-flip-dualsubmodule.md) | 44 | `result-track:e1a5a6c767bfa409b707ea8099a5dd034c5e68464e26851ea9bbe93cc0b52c4d` |
| 4 | `def` | [dualSubmoduleParing](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/dualsubmoduleparing.md) | 53 | `declaration-track:748d3aff5c44fbe6df75184cdec3f4f1e56acf5294b6f5dea2f74fe3b3a02d67` |
| 5 | `lemma` | [dualSubmoduleParing_spec](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/dualsubmoduleparing-spec.md) | 57 | `result-track:811df8ed854011783806987c9d6b8804b34cc1955eb96da83fd07846ba81123b` |
| 6 | `def` | [dualSubmoduleToDual](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/dualsubmoduletodual.md) | 65 | `declaration-track:dbb35aa964753ba7aafe3d9c5fa105bbec9e12556c76a9b6d26842e438bab0af` |
| 7 | `lemma` | [dualSubmoduleToDual_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/dualsubmoduletodual-injective.md) | 77 | `result-track:f3ab48a72fa2ec9fb119e05fc43df6620cb961a4e1b6c7373eb1d26e47770c6c` |
| 8 | `lemma` | [dualSubmodule_span_of_basis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/dualsubmodule-span-of-basis.md) | 87 | `result-track:2c16c8ffa94b8492a677258bede6fd7f03a53b45cea090c2670cab0e62b54162` |
| 9 | `lemma` | [dualSubmodule_dualSubmodule_flip_of_basis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/dualsubmodule-dualsubmodule-flip-of-basis.md) | 112 | `result-track:d4db03076760b793414ef49885996a6976f108586c2bcf2b88f0b6fe86c2b200` |
| 10 | `lemma` | [dualSubmodule_flip_dualSubmodule_of_basis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/dualsubmodule-flip-dualsubmodule-of-basis.md) | 121 | `result-track:d89a3b6f0bad08727965fb55170a1ab36c56770deacfd0738ef99e281c801721` |
| 11 | `lemma` | [dualSubmodule_dualSubmodule_of_basis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/DualLattice.lean/declarations/dualsubmodule-dualsubmodule-of-basis.md) | 130 | `result-track:131c4b45bfd3e40f304641eed820c6bc4e15d2567209d88218492fdaf97e55a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98dd45ede0039d493bcb30e4bf7ad4450433bd11eff738ec4f9a57eca4fc7354 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

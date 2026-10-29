# Verification target: Bilinear Form Tensor Product Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68b14da79b482f1714b52872de38a7dae07d854d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68b14da79b482f1714b52872de38a7dae07d854d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tensordistrib.md) | 54 | `declaration-track:da0d47121bf08d54b355f5c395d27cbc7691f4a969d68a96d08923838fe226ef` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tensordistrib-tmul.md) | 65 | `result-track:bdfd8ea8fba78d0a5857ea0810e580d10662cb7abea126741a25fdced9050c21` |
| 3 | `abbrev` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tmul-source-edition-2.md) | 72 | `declaration-track:ecad4caaf1211af6ed1011cadf471e705c179402bba37dbd410c666b15953198` |
| 4 | `lemma` | [tmul_isSymm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tmul-issymm.md) | 78 | `result-track:3bdcdbf0bd9825bb1684fc2641f40e7803fb4482da23b4bc1f4f0650c16d6538` |
| 5 | `def` | [baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/basechange-source-edition-2.md) | 88 | `declaration-track:b62f224270af6af533f1e7c60f3d653e9fc62f7ab1b895df396de38d1b6571c1` |
| 6 | `theorem` | [baseChange_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/basechange-tmul-source-edition-2.md) | 92 | `result-track:a5b16e4ab3bec15e6b4d15eaf97c9c853a1dfe36f2d981c9626d495ff3ead6c0` |
| 7 | `lemma` | [baseChange_isSymm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/basechange-issymm.md) | 97 | `result-track:a86843b8eb7640bc2c3d2b193cda8ffb973762fd5a7bbc094d4ddcb7592406eb` |
| 8 | `def` | [tensorDistrib](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tensordistrib-source-edition-2.md) | 110 | `declaration-track:f7ca4d0d5a6e2854dd6c0fba65287dfd676eb092e8b4af0ef291022ad955a558` |
| 9 | `theorem` | [tensorDistrib_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tensordistrib-tmul-source-edition-2.md) | 117 | `result-track:ca9f2072149c2980e874f0bf8e1bac4eb4280977b1b503181bb7852639476a9d` |
| 10 | `abbrev` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tmul.md) | 124 | `declaration-track:b2015cab3600930f6bf60ab31437abc0ccda1190a5fa864de0996583495adfae` |
| 11 | `lemma` | [_root_.LinearMap.IsSymm.tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/root-linearmap-issymm-tmul.md) | 129 | `result-track:a076262738a43914fe4c4160b3311ed947ca5db7f1c57667b5cfd571169e3f57` |
| 12 | `def` | [baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/basechange.md) | 137 | `declaration-track:4f76f50d09a1b55ba02d146f055a211bd644ab383f83832021efd7d94263b393` |
| 13 | `theorem` | [baseChange_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/basechange-tmul.md) | 141 | `result-track:69ff81993cd96cbc18148496d042d00cb82746772837c018cd1a59925b9bca58` |
| 14 | `lemma` | [baseChange_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/basechange-zero.md) | 146 | `result-track:002c0d12ad138612d3fba876fb5070bbca767b89dd0ed47e07eafa30abf76428` |
| 15 | `lemma` | [baseChange_eq_zero_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/basechange-eq-zero-iff.md) | 148 | `result-track:934739414f8c84ef843f042bb8c7ffd242f90d808db8f8fd00bd18a189d97bde` |
| 16 | `lemma` | [IsSymm.baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/issymm-basechange.md) | 156 | `result-track:97ef21ecda16e658047616f5b556a2e38e16fbe24e1ff4ca0a898b4a85f56ef2` |
| 17 | `def` | [tensorDistribEquiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tensordistribequiv.md) | 175 | `declaration-track:912d1503610dc2370f1735845d003f1997b8fef46fceb04f5f6182acd6cedf37` |
| 18 | `theorem` | [tensorDistribEquiv_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tensordistribequiv-tmul.md) | 186 | `result-track:91e977508c5695f4a20af29a767ee3636d05dd27752b20e2e16a5acec92afab2` |
| 19 | `theorem` | [tensorDistribEquiv_toLinearMap](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tensordistribequiv-tolinearmap.md) | 194 | `result-track:bb53aa4be1a70cf4a0eb18d0c448d3fff8a0e55be266caf90390dec64d126d10` |
| 20 | `theorem` | [tensorDistribEquiv_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductPublic.lean/declarations/tensordistribequiv-apply.md) | 198 | `result-track:50d3b626ac7d48c55e5ca5c9142d615db2a57baa483247c067a4cbc545ad4bba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a76b4895da4af33c1e6b814abb37f138023a1e007263cefd44b2eb7f844a33a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

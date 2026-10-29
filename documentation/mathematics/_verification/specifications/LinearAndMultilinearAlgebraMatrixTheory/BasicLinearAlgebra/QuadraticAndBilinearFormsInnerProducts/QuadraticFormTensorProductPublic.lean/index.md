# Verification target: Quadratic Form Tensor Product Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "144336f291354a72b71c5a32b41932a907a637b1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant66fdc5517b7c84581aa42eef9cdb19401c0e09b2c7c5869bae3ac8a1eb4e62de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `144336f291354a72b71c5a32b41932a907a637b1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant66fdc5517b7c84581aa42eef9cdb19401c0e09b2c7c5869bae3ac8a1eb4e62de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant66fdc5517b7c84581aa42eef9cdb19401c0e09b2c7c5869bae3ac8a1eb4e62de.lean.json)

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
| 1 | `def` | [tensorDistrib](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/tensordistrib-source-edition-2.md) | 48 | `declaration-track:85788d3da39f9bd7e57c2d2a93c4614cf08f586d3e5b891fa77dbc3226c322a8` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/tensordistrib-tmul.md) | 61 | `result-track:3b64b6b2492c995a9459254f0cdb5022c82abc77511b22baae0809a54fddf3f5` |
| 3 | `abbrev` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/tmul.md) | 68 | `declaration-track:251d65fcd9462bb3110ed197fd15df0482076052abb819ab68b2b454802a352e` |
| 4 | `theorem` | [associated_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/associated-tmul.md) | 72 | `result-track:5ec03ddc4e5ce5a6712cfa449eb645a8e7be94d3cf5dfb8296c813c49f72e7d5` |
| 5 | `def` | [tensorDistrib](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/tensordistrib.md) | 92 | `declaration-track:6995e871eff227c29e734bbaf9ec52dc6e80b4c088e4337f656ae12080951ecb` |
| 6 | `theorem` | [tensorDistrib_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/tensordistrib-tmul-source-edition-2.md) | 99 | `result-track:adc03035cd75e4dbde78624f3178be69117b6101c1218575304c3103561de9f5` |
| 7 | `abbrev` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/tmul-source-edition-2.md) | 106 | `declaration-track:2d7001f84550a0a80efbcd412f9d25030d46af5ed7f89ff42023221c5f15d8fb` |
| 8 | `theorem` | [associated_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/associated-tmul-source-edition-2.md) | 110 | `result-track:87fea459e38387125932e910a4b245c4aaf58e83b877c6564fbd198d5c1bd485` |
| 9 | `theorem` | [polarBilin_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/polarbilin-tmul.md) | 118 | `result-track:96f95b3a35597222e026da8f6a34d87ef19f24461650b3c49a1708059616a7a6` |
| 10 | `def` | [baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/basechange.md) | 127 | `declaration-track:31d8fc72005fa6a53c9b4350c8f8c157253809ad1d6f54c377c435c8b314cc1d` |
| 11 | `theorem` | [baseChange_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/basechange-tmul.md) | 131 | `result-track:d81e2d0dc2009a1a4c0a2e80859d079ab3146855369ba85ecdcbf8b43e393491` |
| 12 | `theorem` | [associated_baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/associated-basechange.md) | 135 | `result-track:503bcfd7036725386a9b1fd6d988f6244183708ded05025af95969f56ac2db66` |
| 13 | `theorem` | [polarBilin_baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/polarbilin-basechange.md) | 141 | `result-track:349337476f6cedec2a842bc89a2e78df73daa6aedd5547ad1defbf612ff92fc5` |
| 14 | `theorem` | [baseChange_ext](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductPublic.lean/declarations/basechange-ext.md) | 158 | `result-track:2ff3ce5873b8da1c6d309ae69a00d67d7f3809bd668e512d3120f3798feb0e0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e805e36b03753545a545f497da7ee63abcbb52c54882c461c74c7ecd489211c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant66fdc5517b7c84581aa42eef9cdb19401c0e09b2c7c5869bae3ac8a1eb4e62de.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Variant66fdc5517b7c84581aa42eef9cdb19401c0e09b2c7c5869bae3ac8a1eb4e62de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

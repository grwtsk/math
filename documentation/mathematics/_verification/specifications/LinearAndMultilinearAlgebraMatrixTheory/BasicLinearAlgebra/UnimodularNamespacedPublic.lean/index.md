# Verification target: Unimodular Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce7f99ecbc034d44f9d4dab33a4a24f2ea0e03e9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Unimodular/Variant5ec2edb397ca048b4fdb0826e1fc0fd328eb3f7cd1c6da219baede5718c2d3bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnimodularNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnimodularNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce7f99ecbc034d44f9d4dab33a4a24f2ea0e03e9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Unimodular/Variant5ec2edb397ca048b4fdb0826e1fc0fd328eb3f7cd1c6da219baede5718c2d3bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Unimodular/Variant5ec2edb397ca048b4fdb0826e1fc0fd328eb3f7cd1c6da219baede5718c2d3bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsUnimodular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnimodularNamespacedPublic.lean/declarations/isunimodular.md) | 55 | `declaration-track:f26a026d8449ea03b5a456439c22d058028f4041611c67bd27a17338002054fc` |
| 2 | `theorem` | [isUnimodular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnimodularNamespacedPublic.lean/declarations/isunimodular-iff.md) | 59 | `result-track:a3321c29dbd01e78f295a44c96e7cc9a95bc7cdbf896ac9df1f55855016be925` |
| 3 | `theorem` | [isUnimodular_of_apply_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnimodularNamespacedPublic.lean/declarations/isunimodular-of-apply-eq-one.md) | 61 | `result-track:83ef081017e7950112329008e639a2247d29a6ecd4c5e62457c571fbc89b9f76` |
| 4 | `theorem` | [span_repr_eq_range_applyₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnimodularNamespacedPublic.lean/declarations/span-repr-eq-range-apply.md) | 73 | `result-track:b483dddc688caee5e1e8bce2de360469d360acb5ea1802979c4801988bd3850a` |
| 5 | `theorem` | [isUnimodular_iff_span_repr_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnimodularNamespacedPublic.lean/declarations/isunimodular-iff-span-repr-eq-top.md) | 86 | `result-track:56403bb9fc773404203d07914ea18fa563ce932d92fe445e15fb3b535fc1257e` |
| 6 | `theorem` | [Unimodular Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnimodularNamespacedPublic.lean/declarations/isunimodular-one.md) | 97 | `result-track:1d5bcc3715e54c975dbe1f23cd2297fb124878db6a05afa43768b6ba3e8e7dba` |
| 7 | `theorem` | [exists_basis_zero_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnimodularNamespacedPublic.lean/declarations/exists-basis-zero-eq.md) | 110 | `result-track:5dc5065abbe5ea7f0ac61ada209f83a163a01b61a9a92a6b8bdd6fa82592bbd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1018be90694fbf094e1d1a702ce28602867df7f2644dde30c3d0b269246c0efd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Unimodular/Variant5ec2edb397ca048b4fdb0826e1fc0fd328eb3f7cd1c6da219baede5718c2d3bf.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Unimodular/Variant5ec2edb397ca048b4fdb0826e1fc0fd328eb3f7cd1c6da219baede5718c2d3bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

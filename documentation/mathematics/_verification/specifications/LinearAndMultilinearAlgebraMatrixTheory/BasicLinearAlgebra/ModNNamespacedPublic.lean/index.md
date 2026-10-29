# Verification target: Mod NNamespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4890d423fea7ba5259746d0a8ba4e5f50bb2f0e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4890d423fea7ba5259746d0a8ba4e5f50bb2f0e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean.json)

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
| 1 | `abbrev` | [ModN](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/declarations/modn.md) | 34 | `declaration-track:6cb96a0a9d6871eb1cae3e6e46ca144f9909de0a88f0f56ef0cf2ef53d3193aa` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/declarations/instance.md) | 38 | `declaration-track:8abc5158d9b944873ca237cb88c475e9adb5168046a5c38e7664ff3e4d1be6a3` |
| 3 | `def` | [liftEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/declarations/liftequiv-source-edition-2.md) | 43 | `declaration-track:ca2a9a464cdd1a4cbbee24dfb133f3c766ab1b5f4c169da0ec62a9c0bef984a4` |
| 4 | `def` | [liftEquiv'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/declarations/liftequiv.md) | 60 | `declaration-track:23168b00200af11c5cec51e2787e24928a491560134bb83c9d665b0ff461b47b` |
| 5 | `def` | [mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/declarations/mkq.md) | 66 | `declaration-track:dbefd0948666e89f1e3bd3932fd21dfd24a53db3820bbcb6a3035f653553ba45` |
| 6 | `def` | [basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/declarations/basis.md) | 72 | `declaration-track:95ced541cc0eed9c6d0d8b953dd86c5157d7dd5903ab85336d8140f05eea80e7` |
| 7 | `lemma` | [basis_apply_eq_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/declarations/basis-apply-eq-mkq.md) | 103 | `result-track:bdae01b927c1008e1e358461b535e8d3d7375d54a000dc925e30fcdb792ff724` |
| 8 | `instance` | [instModuleFinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/declarations/instmodulefinite.md) | 108 | `declaration-track:41fe6f93b856bdcce8d7d2da0fe7788e45dfd41c53f52102325c5a606cc574e5` |
| 9 | `instance` | [instFinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/declarations/instfinite.md) | 111 | `declaration-track:bbb2a255355a548be67762969c9cbbc272aa3fa5e80e112d97d0357d73efd39c` |
| 10 | `lemma` | [natCard_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ModNNamespacedPublic.lean/declarations/natcard-eq.md) | 114 | `result-track:c32cff267025c4cb32865f90743785c35237f13cb7e9903c09bbe83104b4bae0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fca7f17bf9533f4cee6b08f6798a18aabeca68f5c51843ba3d7a3477ca606604 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

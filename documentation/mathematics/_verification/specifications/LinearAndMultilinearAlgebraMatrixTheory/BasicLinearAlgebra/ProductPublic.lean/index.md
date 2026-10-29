# Verification target: Product Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba2a12152012e960e2afc49d28675784a3fd7a75",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Product/Variant621ea7d79e0a4e42509c6fc2f698f115dd4577f2788686aa6c0ed98069d5d1ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba2a12152012e960e2afc49d28675784a3fd7a75`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Product/Variant621ea7d79e0a4e42509c6fc2f698f115dd4577f2788686aa6c0ed98069d5d1ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Product/Variant621ea7d79e0a4e42509c6fc2f698f115dd4577f2788686aa6c0ed98069d5d1ec.lean.json)

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
| 1 | `def` | [prodEquivTensorForwardAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensorforwardaux.md) | 33 | `declaration-track:c5b297eece2fc32abf59605b2e238300f261dcc22ab7cf9a46e4fde5b49d2392` |
| 2 | `lemma` | [prodEquivTensorForwardAux_apply_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensorforwardaux-apply-mul.md) | 39 | `result-track:9ab05df3137744c03ee79d492528eff573b0070115aab3b435a581eeebfec1e3` |
| 3 | `def` | [prodEquivTensorForward](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensorforward.md) | 53 | `declaration-track:ac58ff2e1ff8e386be728965c4cf4712fc02807a7fe7e5d958fc84a11b8ba28a` |
| 4 | `lemma` | [prodEquivTensorForward_ι_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensorforward-apply.md) | 57 | `result-track:ec9b92c211f0dda8e258d9c2bbe0d8c0781d9e3367b385d358cba277298ff5e4` |
| 5 | `lemma` | [map_inl_inr_anticomm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/map-inl-inr-anticomm.md) | 62 | `result-track:218db96da063b2ca23b4e531c9dc488239f214913094b114bec3d9d2d4644a64` |
| 6 | `def` | [prodEquivTensorInverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensorinverse.md) | 79 | `declaration-track:abef47489ab25b8a330b68fa88f7981119e934dc18c7a30b9bdc58c1c35a758f` |
| 7 | `lemma` | [prodEquivTensorInverse_ι_tmul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensorinverse-tmul-one.md) | 84 | `result-track:f2ebd572c9fea02eb0a49d5d6f2c4e0137b298a1387793c3a8e4830c175f67f4` |
| 8 | `lemma` | [prodEquivTensorInverse_one_tmul_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensorinverse-one-tmul.md) | 88 | `result-track:b24e417e0bc8f5472c0bce2e1e9837ee10b80e0a2df936ffd706df1c6239d01d` |
| 9 | `lemma` | [prodEquivTensor_inverse_comp_forward](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensor-inverse-comp-forward.md) | 95 | `result-track:544e79510814b5b15112d075ad2c8c49098d94accceb6907d51899acd5fa9bab` |
| 10 | `lemma` | [prodEquivTensor_forward_comp_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensor-forward-comp-inverse.md) | 101 | `result-track:450a1d0ac714872de5c973eb7c18e840b282e1366e3e487698bff87f46e69467` |
| 11 | `def` | [prodEquivTensor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensor.md) | 109 | `declaration-track:5d3de9c6cc30248582c5f2a5dbd825334783810a8e2690a58646d2d94ef2daeb` |
| 12 | `lemma` | [prodEquivTensor_symm_apply_tmul_ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensor-symm-apply-tmul-multi.md) | 114 | `result-track:e83314d1723645abb5d2d287dd6bf52908bc48dd9893d0600ba54ad7954ff495` |
| 13 | `lemma` | [prodEquivTensor_symm_tmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProductPublic.lean/declarations/prodequivtensor-symm-tmul.md) | 119 | `result-track:74428bac306d291b0d3a7d24d1e542816e8fd688919fb3c123d96583f6e0e786` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d65b73241670dc582064d0c23967213cd14f0142a8896e7e597ad90555f19b5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Product/Variant621ea7d79e0a4e42509c6fc2f698f115dd4577f2788686aa6c0ed98069d5d1ec.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Product/Variant621ea7d79e0a4e42509c6fc2f698f115dd4577f2788686aa6c0ed98069d5d1ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

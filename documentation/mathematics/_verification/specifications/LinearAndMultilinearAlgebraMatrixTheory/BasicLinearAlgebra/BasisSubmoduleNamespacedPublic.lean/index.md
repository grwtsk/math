# Verification target: Basis Submodule Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fac5e82fc5269d7d50e4c8bdda17149b33fd8ad",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd2bc327fc8c25481ee72e15ff37375873b439c466ece8128ac25c2847748fce2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fac5e82fc5269d7d50e4c8bdda17149b33fd8ad`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd2bc327fc8c25481ee72e15ff37375873b439c466ece8128ac25c2847748fce2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variantd2bc327fc8c25481ee72e15ff37375873b439c466ece8128ac25c2847748fce2.lean.json)

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
| 1 | `theorem` | [mem_submodule_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/mem-submodule-iff-source-edition-2.md) | 41 | `result-track:41a0384ee48f624adcd523cfea66b2cbe95190d28af973bfacc9a8219668a49e` |
| 2 | `theorem` | [mem_submodule_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/mem-submodule-iff.md) | 51 | `result-track:189a6f78df938afb96dcf5ece42b8a36601069f30a5bd36df3ae9b9c48a8f571` |
| 3 | `theorem` | [Basis.eq_bot_of_rank_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/basis-eq-bot-of-rank-eq-zero.md) | 65 | `result-track:5846aac268ac4d7eb4271a817a872735d39fdaaa3e33689e8cf2e081ee8a7d7a` |
| 4 | `def` | [Submodule.inductionOnRankAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/submodule-inductiononrankaux.md) | 87 | `declaration-track:77a5c417c60151618d3d0f3b320c7d97d71a757f20ff38f70042714ae97fc581` |
| 5 | `lemma` | [mem_center_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/mem-center-iff.md) | 124 | `result-track:38b5c02c3d66f72e91ae6b4a0f2a55a90f98da991a94d2b1db3109f3be84ad4a` |
| 6 | `def` | [restrictScalars](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/restrictscalars.md) | 175 | `declaration-track:c758db6cac5899fa6891aa7821c0faf60bbeba0858815c41f01fe158a7492d35` |
| 7 | `theorem` | [restrictScalars_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/restrictscalars-apply.md) | 179 | `result-track:13aa4fa6690234be96cf988b84d2cb3015b834edb53daee7943b597e1be47c41` |
| 8 | `theorem` | [restrictScalars_repr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/restrictscalars-repr-apply.md) | 183 | `result-track:32529950b5220334e538156b1331446291722910ff97aa5caf001e3099c2faf5` |
| 9 | `theorem` | [mem_span_iff_repr_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/mem-span-iff-repr-mem.md) | 197 | `result-track:97aa9c1bec80d2587d46d881ba605f8ba50dcc195961dbc77f707446909396ba` |
| 10 | `def` | [addSubgroupOfClosure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/addsubgroupofclosure.md) | 219 | `declaration-track:100606e87fc4ae6feb08b39c07637358484eea6d725e2acb772a782ab0a48814` |
| 11 | `theorem` | [addSubgroupOfClosure_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/addsubgroupofclosure-apply.md) | 226 | `result-track:a7901f7dfed0f2cebc2fba2ae5c7c5a3f6bf351d5d48c288a2d0bd7c60c3e4e6` |
| 12 | `theorem` | [addSubgroupOfClosure_repr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisSubmoduleNamespacedPublic.lean/declarations/addsubgroupofclosure-repr-apply.md) | 231 | `result-track:818a023c619a250122e77ffdbd37fa75b69ad3bcf9fd77ade16f8eb7358724ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5906d820816ce2c8591edd3f53a4429969acf6a97f3a7b2571a845313494da3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd2bc327fc8c25481ee72e15ff37375873b439c466ece8128ac25c2847748fce2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Submodule/Variantd2bc327fc8c25481ee72e15ff37375873b439c466ece8128ac25c2847748fce2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

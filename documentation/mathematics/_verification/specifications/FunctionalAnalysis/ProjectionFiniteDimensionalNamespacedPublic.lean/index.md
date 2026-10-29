# Verification target: Projection Finite Dimensional Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3d15476e98dcad6d9a5e976a534bcd0e73a6798",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3d15476e98dcad6d9a5e976a534bcd0e73a6798`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [topologicalClosure_eq_self](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/topologicalclosure-eq-self.md) | 65 | `result-track:95110da4eaa92ba04cfc997b607328e75dff4c15067d242846781592008b5e7e` |
| 2 | `theorem` | [det_reflection](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/det-reflection.md) | 69 | `result-track:fe7ec26c878f76f070299c915eb1ccadf9c041f3a360e6237415eddaaa30d3e6` |
| 3 | `theorem` | [linearEquiv_det_reflection](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/linearequiv-det-reflection.md) | 85 | `result-track:e6201310b653945215bfc68065862cfcb0e666d1f7fdfa54a0df48806602a1ac` |
| 4 | `theorem` | [finrank_add_inf_finrank_orthogonal](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/finrank-add-inf-finrank-orthogonal.md) | 99 | `result-track:7047432947b82b0bdcb5ee1743c40d8a8e8f6eff733ba44b0f78026a68829208` |
| 5 | `theorem` | [finrank_add_inf_finrank_orthogonal'](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/finrank-add-inf-finrank-orthogonal-source-edition-2.md) | 112 | `result-track:74cc7c08e0727014044e8ef259c60192315dc39a36370e3bedb20c0210030bcd` |
| 6 | `theorem` | [finrank_add_finrank_orthogonal](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/finrank-add-finrank-orthogonal.md) | 120 | `result-track:2961b1f83c136ac8604fc8fa8579dbc47de84a4e84d15a16e81891ee5ad1c0c0` |
| 7 | `theorem` | [finrank_add_finrank_orthogonal'](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/finrank-add-finrank-orthogonal-source-edition-2.md) | 128 | `result-track:3ccf76fdd03ae9e33fd0c7d867c0c1d621d8b4439b26ddc313cd361933198df2` |
| 8 | `theorem` | [finrank_orthogonal_span_singleton](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/finrank-orthogonal-span-singleton.md) | 135 | `result-track:6a328b815771751262428260698214ad2ba2c7193e6f8bf520abac59b55561eb` |
| 9 | `theorem` | [mem_span_singleton_of_inner_eq_zero_of_inner_eq_zero](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/mem-span-singleton-of-inner-eq-zero-of-inner-eq-zero.md) | 143 | `result-track:460255193d77ba19387e0bfb2d95c5ae3f3af9572a83881a05899447e4c15fea` |
| 10 | `theorem` | [LinearIsometryEquiv.reflections_generate_dim_aux](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/linearisometryequiv-reflections-generate-dim-aux.md) | 160 | `result-track:afca2ba24288a0178b503dfe6ba766112f13e2f52afa0de5dcf33299e0980846` |
| 11 | `theorem` | [LinearIsometryEquiv.reflections_generate_dim](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/linearisometryequiv-reflections-generate-dim.md) | 238 | `result-track:13a434ef948448cce4b11bc68e227ead3a44e8dccd816e61a2d05c3f896a3579` |
| 12 | `theorem` | [LinearIsometryEquiv.reflections_generate](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/linearisometryequiv-reflections-generate.md) | 244 | `result-track:3b1dfc028e36b8e39c14bc4f547333b71af9c9da610a706ccd35688a9b6dc87b` |
| 13 | `theorem` | [OrthogonalFamily.isInternal_iff_of_isComplete](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/orthogonalfamily-isinternal-iff-of-iscomplete.md) | 263 | `result-track:d948572d43092deb99ef42c4c001b8e872acc2f8ddd2cf36bd86428eaebdd4a9` |
| 14 | `theorem` | [OrthogonalFamily.isInternal_iff](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/orthogonalfamily-isinternal-iff.md) | 273 | `result-track:c02e26af7534fcefd167a0a3172423232d938fdfee89866662a1f14f8dd28d2e` |
| 15 | `theorem` | [OrthogonalFamily.sum_projection_of_mem_iSup](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/orthogonalfamily-sum-projection-of-mem-isup.md) | 282 | `result-track:6b8af6896794e983d562ef1a4a1a45c114703ae93d49800c252bc630cc7314b6` |
| 16 | `theorem` | [OrthogonalFamily.projection_directSum_coeAddHom](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/orthogonalfamily-projection-directsum-coeaddhom.md) | 300 | `result-track:6d8b06b753406b8dd97cdc293bdd6440bb3d6eaa71fd77d706787be8da9f0ed4` |
| 17 | `abbrev` | [OrthogonalFamily.decomposition](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/orthogonalfamily-decomposition.md) | 324 | `declaration-track:263ef4fd0cfb52476d38c7b37e99bb3714f25a64b4f51af11fd372fe38675e7b` |
| 18 | `theorem` | [maximal_orthonormal_iff_orthogonalComplement_eq_bot](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/maximal-orthonormal-iff-orthogonalcomplement-eq-bot.md) | 353 | `result-track:1a93c8b587f70289604d6beb8068f75996c9880bffe42f0b1945c74e8b4a000e` |
| 19 | `theorem` | [maximal_orthonormal_iff_basis_of_finiteDimensional](../../../../FunctionalAnalysis/ProjectionFiniteDimensionalNamespacedPublic.lean/declarations/maximal-orthonormal-iff-basis-of-finitedimensional.md) | 414 | `result-track:d19c1ea83ba8acb41afb6afb160d7a4495658406b339c8820c93659b16493dc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d876c1c67519214e497d855c6716bb8553d1eebd9a96a3b5581f75c13525c2a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

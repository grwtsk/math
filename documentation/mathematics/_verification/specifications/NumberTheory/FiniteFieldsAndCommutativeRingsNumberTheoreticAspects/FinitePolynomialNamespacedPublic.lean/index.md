# Verification target: Finite Polynomial Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f3dd21d8027f9c71519ca6f4ff68f7ef56e1bb5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantb14710fb86d699335a72dc67f74ae034906aeed94dd76cff3acd6b385b8d45b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f3dd21d8027f9c71519ca6f4ff68f7ef56e1bb5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantb14710fb86d699335a72dc67f74ae034906aeed94dd76cff3acd6b385b8d45b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Polynomial/Variantb14710fb86d699335a72dc67f74ae034906aeed94dd76cff3acd6b385b8d45b9.lean.json)

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
| 1 | `theorem` | [C_dvd_iff_zmod](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/c-dvd-iff-zmod.md) | 35 | `result-track:3af14f9969c7679a2401182a4f6d14f1cb7fba6ac6c5d0834b56ad8d349a0718` |
| 2 | `theorem` | [frobenius_zmod](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/frobenius-zmod.md) | 43 | `result-track:2f971a87471315c69eb55822bada462f8b78e174d830aadc6b081f652903693b` |
| 3 | `theorem` | [expand_zmod](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/expand-zmod.md) | 50 | `result-track:194858ebd722bfe7043d7b958ee36df73e5239857e7ed59ca6664e072158728a` |
| 4 | `def` | [indicator](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/indicator.md) | 70 | `declaration-track:9565a15b42c50c8a5aec91ddcd728fb9465779d0dc739425583d7c8357f40488` |
| 5 | `theorem` | [eval_indicator_apply_eq_one](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/eval-indicator-apply-eq-one.md) | 77 | `result-track:b46c2f001e79646cd6c4fa35a923bfdf3840cbdc18e34e4a6e6d16454b3aa604` |
| 6 | `theorem` | [degrees_indicator](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/degrees-indicator.md) | 83 | `result-track:ba1c7bf1e9645133946649c1dd2b8b5b35cdc5331cf408abcaac5ead7f89070b` |
| 7 | `theorem` | [indicator_mem_restrictDegree](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/indicator-mem-restrictdegree.md) | 94 | `result-track:048605121489bf18fd79c428a223ee03aa4a10d1bf7808f179482f2637b4a488` |
| 8 | `theorem` | [eval_indicator_apply_eq_zero](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/eval-indicator-apply-eq-zero.md) | 113 | `result-track:e0a7519e10fc18d36d8fc315d86e6354c80ff9e0868c05c74aa6ff0719bb60fd` |
| 9 | `def` | [evalₗ](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/eval-source-edition-2.md) | 129 | `declaration-track:cc808a3ac24c0a946c337cf0d21c1d0b97f42aec76112c55e8842494d2cb211a` |
| 10 | `theorem` | [map_restrict_dom_evalₗ](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/map-restrict-dom-eval.md) | 136 | `result-track:a61f2ebc6d3071235e4d561fee07f197eeff2332439dc640601b2c860e585294` |
| 11 | `def` | [R](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/r.md) | 164 | `declaration-track:19ebbf7f8cea1758631984a616128681ee5beb328efb71f9273c9dd3a21a809f` |
| 12 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 168 | `declaration-track:e9b0c104fc2eeb3d8cd80df1280984461f37f3c9ea41c109c152d9ab63ce76f6` |
| 13 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/instance.md) | 171 | `declaration-track:09a4bcc4da34cd147eeb1ab12b7a06ea8769d8a4074f242665b5638ab8472563` |
| 14 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 174 | `declaration-track:a8ef17b93947deab8dfd869af242aa31943d04b4522c6fd0e1112168efca06f8` |
| 15 | `def` | [evalᵢ](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/eval.md) | 178 | `declaration-track:2604e0e69babdd60f4b5cb824ee965f0b513c633f9a3ea9b46c992982d69145f` |
| 16 | `instance` | [decidableRestrictDegree](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/decidablerestrictdegree.md) | 183 | `declaration-track:f778ffa5c11ca77f453954ba74ea221b082e49d4a7179a004cda02511a3dc929` |
| 17 | `theorem` | [rank_R](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/rank-r.md) | 190 | `result-track:a4426f304ecaf2683adbf19b8315a62f2169d0e728547cf87920116f21f93c5c` |
| 18 | `instance` | [(anonymous)](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 208 | `declaration-track:679ba7dfc0d18e131dc8302a31e72f261ce67309967886672279d422719efeb2` |
| 19 | `theorem` | [finrank_R](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/finrank-r.md) | 214 | `result-track:ed41c4f2b243f122871d2677a6443f1493eb20c402374ceac0401ec5e6ed4c4e` |
| 20 | `theorem` | [range_evalᵢ](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/range-eval.md) | 218 | `result-track:e0531b0848f0781ba943cc4585eb3f34e2dddb6dcc86712c530e8fa96349243b` |
| 21 | `theorem` | [ker_evalₗ](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/ker-eval.md) | 222 | `result-track:4d2a0f0053b61b9bcb598ff6a1f87f8c67a7a2574bbe3b7e18bb670aba42e58e` |
| 22 | `theorem` | [eq_zero_of_eval_eq_zero](../../../../../NumberTheory/FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/FinitePolynomialNamespacedPublic.lean/declarations/eq-zero-of-eval-eq-zero.md) | 228 | `result-track:a26c002f5edf752d09ba01d72c9d04ecb78fe45ddabc669e692d60dd729e5650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6196a657d207e9480a9b93799746ecb9153c71b60b18379b2a2c4d750e3dab92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantb14710fb86d699335a72dc67f74ae034906aeed94dd76cff3acd6b385b8d45b9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Polynomial/Variantb14710fb86d699335a72dc67f74ae034906aeed94dd76cff3acd6b385b8d45b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

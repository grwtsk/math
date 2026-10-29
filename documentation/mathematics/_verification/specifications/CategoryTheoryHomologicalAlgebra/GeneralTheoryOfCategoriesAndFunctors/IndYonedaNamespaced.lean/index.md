# Verification target: Ind Yoneda Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1614cd4888a75d667be231ac022ececed4f4ab5a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantd98ac4072a2a15116d32f9c5b28787886442bccaf4ef431af20b85a905288321.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1614cd4888a75d667be231ac022ececed4f4ab5a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantd98ac4072a2a15116d32f9c5b28787886442bccaf4ef431af20b85a905288321.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantd98ac4072a2a15116d32f9c5b28787886442bccaf4ef431af20b85a905288321.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Opposites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coyonedaOpColimitIsoLimitCoyoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/coyonedaopcolimitisolimitcoyoneda.md) | 51 | `declaration-track:949d7fb36d08968f885ecaca31439b83fc22e6a2353213e39382ed25c2102e50` |
| 2 | `lemma` | [coyonedaOpColimitIsoLimitCoyoneda_hom_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/coyonedaopcolimitisolimitcoyoneda-hom-comp.md) | 56 | `result-track:35f5d7c2e5e20ba0585412dbbeb89d5b2bddc689a18a070f87b961f89db89e5c` |
| 3 | `lemma` | [coyonedaOpColimitIsoLimitCoyoneda_inv_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/coyonedaopcolimitisolimitcoyoneda-inv-comp-source-edition-2.md) | 64 | `result-track:e3b9321c654b1d2ac86c1da9eab104805d14aae53cbb276779009461001ac012` |
| 4 | `def` | [colimitHomIsoLimitYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimithomisolimityoneda-source-edition-2.md) | 71 | `declaration-track:87aba7744c196c3460a7d58770b12e71a025c79e80c87709ada9cfe5fcb5ab6d` |
| 5 | `lemma` | [colimitHomIsoLimitYoneda_hom_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimithomisolimityoneda-hom-comp.md) | 77 | `result-track:3e463c0baf59b1b811538c971edc42bba2dabc5dd8ae3680fbfe7cd01514fcaa` |
| 6 | `lemma` | [colimitHomIsoLimitYoneda_inv_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimithomisolimityoneda-inv-comp.md) | 86 | `result-track:31bbce0a06bd5a5e8d8ed76d0fe7d9d4649f7477b48e51f1c72e959aa497924d` |
| 7 | `def` | [coyonedaOpColimitIsoLimitCoyoneda'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/coyonedaopcolimitisolimitcoyoneda-source-edition-2.md) | 99 | `declaration-track:ebd431ac37c0d00b4bd52cb45f6154e47d7282e03f375a4bab36466d914c5f55` |
| 8 | `lemma` | [coyonedaOpColimitIsoLimitCoyoneda'_hom_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/coyonedaopcolimitisolimitcoyoneda-hom-comp-source-edition-2.md) | 104 | `result-track:66e1a5922e538792f4061c22065075c4c0d0981a0e869b6455b84ff9ff7e3a78` |
| 9 | `lemma` | [coyonedaOpColimitIsoLimitCoyoneda'_inv_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/coyonedaopcolimitisolimitcoyoneda-inv-comp.md) | 112 | `result-track:0b460d312014937603ff4721d507df320cf31a94643ecf759ce0af9c67261e08` |
| 10 | `def` | [colimitHomIsoLimitYoneda'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimithomisolimityoneda.md) | 119 | `declaration-track:03225b5b3861e4e5dceafe8bef767d625b1158cd49b14c2c7bc51c03f3978d83` |
| 11 | `lemma` | [colimitHomIsoLimitYoneda'_hom_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimithomisolimityoneda-hom-comp-source-edition-2.md) | 124 | `result-track:4a272bbe6aef463f1010e12585e4bedee849bcf5eb37bf8a81e527dc793dc437` |
| 12 | `lemma` | [colimitHomIsoLimitYoneda'_inv_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimithomisolimityoneda-inv-comp-source-edition-2.md) | 134 | `result-track:dea56d5b8d7efbc2decf2aec4be54307c61eb3576e9e49d3bd755326bdf8a080` |
| 13 | `def` | [colimitCoyonedaHomIsoLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimitcoyonedahomisolimit.md) | 150 | `declaration-track:138aa1467510bad9aaa3b094a0a2fd45eaf0562b9eb6a90b15056be1406a11e1` |
| 14 | `lemma` | [colimitCoyonedaHomIsoLimit_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimitcoyonedahomisolimit-apply-source-edition-2.md) | 156 | `result-track:7b23be001c58dbb1eeb8c67810f4d1fe9bdb52c5adc4e72612833aa1ecf41e2c` |
| 15 | `def` | [colimitCoyonedaHomIsoLimitLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimitcoyonedahomisolimitleftop.md) | 178 | `declaration-track:cc437898fdbdc2888769393039da7392b055c3ba431d6e7a00a1a3e4c49a8ce0` |
| 16 | `lemma` | [colimitCoyonedaHomIsoLimitLeftOp_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimitcoyonedahomisolimitleftop-apply.md) | 185 | `result-track:7dcc71417ad0d260b40bbdc3781ec019108391fd70ffed652596ea801ef1f7e2` |
| 17 | `def` | [colimitYonedaHomIsoLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimityonedahomisolimit-source-edition-2.md) | 204 | `declaration-track:fe7b8382ee45231a8fc0cc112bffc39c0650fe32782c308f91d02c7edc6f913f` |
| 18 | `lemma` | [colimitYonedaHomIsoLimit_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimityonedahomisolimit-apply-source-edition-2.md) | 210 | `result-track:ded0a7885726e122ca2b11e9d062ff0eae9e1ad084ad580472b3f6fd783dd91a` |
| 19 | `def` | [colimitYonedaHomIsoLimitOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimityonedahomisolimitop.md) | 231 | `declaration-track:c91a1b4bab64b161b39e24f92eaeeed93ccb98e73f7f6fe2b739ddb79ba1f557` |
| 20 | `lemma` | [colimitYonedaHomIsoLimitOp_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimityonedahomisolimitop-apply.md) | 238 | `result-track:e14b7142a4a268c98d532283ac1eea0efdc61c1af141410a1fae103ecf78080e` |
| 21 | `def` | [colimitCoyonedaHomIsoLimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimitcoyonedahomisolimit-source-edition-2.md) | 256 | `declaration-track:db5df637fcb0dcd22ed9058450ed2697d3754f8d8166fd94c9ae1a8f03b592c2` |
| 22 | `lemma` | [colimitCoyonedaHomIsoLimit'_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimitcoyonedahomisolimit-apply.md) | 262 | `result-track:4ab2cc5d916a45de9c63e59ae3b8ce5a05ead53885bf53e6d5cdee6c47f377e0` |
| 23 | `def` | [colimitCoyonedaHomIsoLimitUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimitcoyonedahomisolimitunop.md) | 282 | `declaration-track:a73110156d3fd0c4ae433c0ff49e98e69ef8257b72d011cbf154540a0a2e47eb` |
| 24 | `lemma` | [colimitCoyonedaHomIsoLimitUnop_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimitcoyonedahomisolimitunop-apply.md) | 289 | `result-track:6a4d02bdc3bd21f9b87091e753db5fd1f57261ca1e007b0368e12bd3e38ea434` |
| 25 | `def` | [colimitYonedaHomIsoLimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimityonedahomisolimit.md) | 307 | `declaration-track:41134020bb1ea85ade9ef8cfab86440e34eec58d48e12275253adad6db11c3c0` |
| 26 | `lemma` | [colimitYonedaHomIsoLimit'_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimityonedahomisolimit-apply.md) | 313 | `result-track:84bad6151f5bf2cec5826780f3536160a9f8533574b19a7ebb7493ea00b127bd` |
| 27 | `def` | [colimitYonedaHomIsoLimitRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimityonedahomisolimitrightop.md) | 334 | `declaration-track:424b679f4deae12c61f3278424c2a3cd0bebb943d12e1bd739230504b62d4b1d` |
| 28 | `lemma` | [colimitYonedaHomIsoLimitRightOp_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndYonedaNamespaced.lean/declarations/colimityonedahomisolimitrightop-apply.md) | 341 | `result-track:67e2b82c410c97be187f5aeb8222431cab315f1b83e42c5e501bd1fed753ef95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6796ed6543d319775c6e43bfdf1a6661e0d1b4a73ae50d5e131b3b2b65989d3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantd98ac4072a2a15116d32f9c5b28787886442bccaf4ef431af20b85a905288321.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantd98ac4072a2a15116d32f9c5b28787886442bccaf4ef431af20b85a905288321.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

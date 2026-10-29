# Verification target: Subfunctor Equalizer Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9422ab9861909112a7eb7d635a603f67c3ce2859",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantb50d6a0c7c84cfd07c57f33efa77aaee84a4a5a45a69222c3b61461d94053ce3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9422ab9861909112a7eb7d635a603f67c3ce2859`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantb50d6a0c7c84cfd07c57f33efa77aaee84a4a5a45a69222c3b61461d94053ce3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantb50d6a0c7c84cfd07c57f33efa77aaee84a4a5a45a69222c3b61461d94053ce3.lean.json)

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
| 1 | `def` | [equalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-source-edition-3.md) | 35 | `declaration-track:ef742c40cdb63e3d4701e1634195114dee74b71c84234f5eb22f3236ffb82399` |
| 2 | `lemma` | [equalizer_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-le.md) | 45 | `result-track:e106ae719f27fe99cd755c50c31a970ac281e87265ca7e13a991b5cbb04818e9` |
| 3 | `lemma` | [equalizer_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-self.md) | 49 | `result-track:60b2a1dddd169f9a7f8e38702c3bab2fb2ee85150b7d51762e72a07fbcdf34bb` |
| 4 | `lemma` | [mem_equalizer_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/mem-equalizer-iff.md) | 51 | `result-track:e3d7ff38c633d6c1b296e1b4b805b4f24d67a190bd7507634fde247d5a4b1d90` |
| 5 | `lemma` | [range_le_equalizer_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/range-le-equalizer-iff.md) | 55 | `result-track:765a452982088047e9ba88c90c6a17f7ceaf0cefe3449bae14cba7b6805652e6` |
| 6 | `lemma` | [equalizer_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-eq-iff.md) | 60 | `result-track:851cafff7ffd3456a0ca6d80ac572112fd988ded5657bd6c624c3fa669368667` |
| 7 | `def` | [equalizer.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-source-edition-2.md) | 73 | `declaration-track:af4ec50a48a80111c52bd61538c5460499060bf4945bfa95a470c46504f6fe89` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/instance.md) | 76 | `declaration-track:c8700f052141b6aa4fc2e31e72aff1463168850dc598ebedcbd1d482fe9a9d5d` |
| 9 | `lemma` | [equalizer.ι_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer.md) | 81 | `result-track:3ae518ae5ff1c43f6c5c511d9c793c4c264577d2602894557248f81d3b840c4c` |
| 10 | `lemma` | [equalizer.condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-condition.md) | 84 | `result-track:da2bc65a3e511a1fe089a2076293b06b03bad3e4d83ab7e43c304c453e9cc571` |
| 11 | `def` | [equalizer.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-lift-source-edition-3.md) | 92 | `declaration-track:dcfe6ebc03b05e1722da102b4f8574db410ef7c3bb101448252ed5698f71052d` |
| 12 | `lemma` | [equalizer.lift_ι'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-lift-source-edition-2.md) | 98 | `result-track:a533293798318fb80f55b4e613319156c509580657a0fb61e8267696b0dda9ee` |
| 13 | `lemma` | [equalizer.lift_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-lift.md) | 104 | `result-track:60678deaf86a830fd18040fe256ad311c2a56d31c107b1c666289d5b3eb6c430` |
| 14 | `def` | [equalizer.fork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-fork-source-edition-2.md) | 112 | `declaration-track:a11f505b5a96dca1e6a201b49c2f444510ed59835796e509a782b0178f2d899c` |
| 15 | `lemma` | [equalizer.fork_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-fork.md) | 116 | `result-track:5b0a37d379dfbad8433e1092c0787665adf5020edd752dc58bcce32ca2267b79` |
| 16 | `def` | [equalizer.forkIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubfunctorEqualizerPublic.lean/declarations/equalizer-forkislimit.md) | 122 | `declaration-track:00dd00d0a8ba7cafe472389c1b191819c39fcd27c2308482e2684af034213596` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1f15bd273aacff0ef128dc6e7e652f8f755724bc23c84a30c6204fd2a972807 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantb50d6a0c7c84cfd07c57f33efa77aaee84a4a5a45a69222c3b61461d94053ce3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantb50d6a0c7c84cfd07c57f33efa77aaee84a4a5a45a69222c3b61461d94053ce3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

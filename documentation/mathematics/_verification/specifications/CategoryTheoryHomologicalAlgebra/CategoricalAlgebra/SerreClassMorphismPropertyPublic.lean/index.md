# Verification target: Serre Class Morphism Property Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3258b5a1c5757cdd9c20cb96451e6744e82d22a2",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant0293cc9651a4b77289c035047ebc9700843a17c465890c384d08c738a2e66bf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3258b5a1c5757cdd9c20cb96451e6744e82d22a2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant0293cc9651a4b77289c035047ebc9700843a17c465890c384d08c738a2e66bf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant0293cc9651a4b77289c035047ebc9700843a17c465890c384d08c738a2e66bf1.lean.json)

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
| 1 | `def` | [monoModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/monomodserre.md) | 52 | `declaration-track:f33a0fe6b82e71951e9dd840e75e6fa0aff5f6aa33de88683b0ffb1d10d8b09b` |
| 2 | `def` | [epiModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/epimodserre.md) | 59 | `declaration-track:f4838e444de567b7e0e3fda2f213d03a4bdf5ef061c3009a8464d8610daaaf60` |
| 3 | `def` | [isoModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/isomodserre.md) | 66 | `declaration-track:7113dbcac7ec2b6633a4228d017243d8cb2ce48720b5d71d69044e459573fa14` |
| 4 | `lemma` | [monoModSerre_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/monomodserre-iff.md) | 71 | `result-track:2a2ba6d878b4205b88390e9abbe7ae83b265cbe8c48f7a81e8232c7918268c06` |
| 5 | `lemma` | [monomorphisms_le_monoModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/monomorphisms-le-monomodserre.md) | 74 | `result-track:7956c302629aec7f83aa447367f9786aee4b30d21f8e91c8a97c61ad36373552` |
| 6 | `lemma` | [monoModSerre_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/monomodserre-of-mono.md) | 77 | `result-track:a93ac0d9e609f6f3ba0c4d3c62817587a881f8689445cd7e6b0d5741a11853f5` |
| 7 | `lemma` | [epiModSerre_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/epimodserre-iff.md) | 81 | `result-track:33d3b35d0ca738c21565f3143544dd35222b6094acb6c159981117b92e3b600d` |
| 8 | `lemma` | [epimorphisms_le_epiModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/epimorphisms-le-epimodserre.md) | 84 | `result-track:c38106274374b8d63827be50888976be0c591938a66d8e7d298f904847baea79` |
| 9 | `lemma` | [epiModSerre_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/epimodserre-of-epi.md) | 87 | `result-track:63ba8b5c12ae3377c5ced8b37119019174a36aefbf8b3bbce7b823ccb6d7e734` |
| 10 | `lemma` | [epiModSerre_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/epimodserre-zero-iff.md) | 92 | `result-track:4f240673e337648320765b53452cc5a9036d4e5a7160908c140999c1b775ac48` |
| 11 | `lemma` | [monoModSerre_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/monomodserre-zero-iff.md) | 97 | `result-track:462ddb39fd60693e6973cbb86f0583fe65c19b55437b7c2411cb5dcfc227551a` |
| 12 | `lemma` | [isoModSerre_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/isomodserre-iff.md) | 101 | `result-track:f0765114f8fb6d8daff545857a139881b2122eaf5344162984562276551a3887` |
| 13 | `lemma` | [isoModSerre_iff_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/isomodserre-iff-of-mono.md) | 104 | `result-track:97ab9e93bebe079b2d5d7e09fa0c898687f6d98e94c1aa9f01b29d39aeae5347` |
| 14 | `lemma` | [isoModSerre_iff_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/isomodserre-iff-of-epi.md) | 110 | `result-track:e6586637040bf927e2315d65c28e476389aada42495aa1829353bd287e439e4c` |
| 15 | `lemma` | [isoModSerre_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/isomodserre-of-mono.md) | 116 | `result-track:721ed336ff2ac6fbe0d19320eae3dd42f1ff77274fb5b2f103ed56ba2ca362d6` |
| 16 | `lemma` | [isoModSerre_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/isomodserre-of-epi.md) | 120 | `result-track:edc7f00d4322093d285cd6dcd140dd6933ed23049ddf3c27dc54e6a879b8f279` |
| 17 | `lemma` | [isoModSerre_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/isomodserre-zero-iff.md) | 125 | `result-track:a8b22522d02b8a31658445388be2b739253bafab3fe6674922975902b95ceeb1` |
| 18 | `lemma` | [isomorphisms_le_isoModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/isomorphisms-le-isomodserre.md) | 129 | `result-track:aae76e2900a23ac11d4a2d8f4b482217ec15e85485731376854b2344172a7217` |
| 19 | `lemma` | [isoModSerre_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/isomodserre-of-isiso.md) | 132 | `result-track:6e2b23d5adb041469b70b6ca801e0ae731139072f76e0299bd54aed23a1453af` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-4.md) | 135 | `declaration-track:49e3a196ad88b3afcacddc29927c1428336b6fa1a76f06a8a04334e9dd698d90` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-13.md) | 140 | `declaration-track:f9e08436012fa7266ba214a49d4620490cc8c770fe5d2bc9bcf0c4a1899fdd8e` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-6.md) | 145 | `declaration-track:691f8533f340cac8ad9aa0ad3eae6dffe3d508621314e417ea4cc5400a9c4fc8` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance.md) | 149 | `declaration-track:1280fbee72538aec28931f435b827463fd6eacb4c2aaa47657f743893b9790bc` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-10.md) | 153 | `declaration-track:d85b0de1a7fb040d7e5c93a306aa08eb4942c075083de734b5417cdc13c0b81e` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-8.md) | 157 | `declaration-track:7c753ec99c27012538b5035c740cf43ab4bbaf0df9bebd5bfe02adf79039cfd2` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-5.md) | 161 | `declaration-track:6295e9619cbec66e4ac86202f4f78f15cf317c78f9c0793c75c463f362dcfe80` |
| 27 | `lemma` | [le_kernel_of_isoModSerre_isInvertedBy](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/le-kernel-of-isomodserre-isinvertedby.md) | 169 | `result-track:feae6b760c517324b182a862440f534f7820850ab5666f122bba13c8bf9a0702` |
| 28 | `lemma` | [isoModSerre_isInvertedBy_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/isomodserre-isinvertedby-iff.md) | 178 | `result-track:688fdfcaa5f4887cbe4f0cfb37bfaf9f607639780f9e93b328ef67f9308cbbaf` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-9.md) | 190 | `declaration-track:8ff8f604062cfe62d32e006daacef7dfa16798dbcfb4a63fb20a59971d63f95e` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-11.md) | 195 | `declaration-track:d9b630c7b529497ed7ed1655ea7cbfa1cdd44d72de133a82c1d4b09151863355` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-12.md) | 200 | `declaration-track:e9e54ead3b1214ff85d0e136f7844fc63a8b09684845012b7d32943e80af044f` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-3.md) | 204 | `declaration-track:340b4f842931031a8ed56dec2bba1578009f9ff36800c6621bb1cde56d230893` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-2.md) | 209 | `declaration-track:1fb48b6a9e3255e0198045b654671fb2d5789d5ba2fbab7d3949e277035c257a` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyPublic.lean/declarations/instance-source-edition-7.md) | 214 | `declaration-track:704b1bb80f7f949d76deb1d87946508dc548e649d5f2d6aaf69930fdd54b1278` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74e46a0f317081c178ea8db8cfb73440641b749e169ec8450480a029558984df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant0293cc9651a4b77289c035047ebc9700843a17c465890c384d08c738a2e66bf1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant0293cc9651a4b77289c035047ebc9700843a17c465890c384d08c738a2e66bf1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

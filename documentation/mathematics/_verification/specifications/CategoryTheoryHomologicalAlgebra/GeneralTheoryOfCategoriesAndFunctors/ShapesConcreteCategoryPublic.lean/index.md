# Verification target: Shapes Concrete Category Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e045d1973f7a4d88f608614790e166b7b48b7f20",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant0cb1d84f56a02589ab05c950059af0008bd561f50dbe562f91a497a9e5221546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e045d1973f7a4d88f608614790e166b7b48b7f20`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant0cb1d84f56a02589ab05c950059af0008bd561f50dbe562f91a497a9e5221546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant0cb1d84f56a02589ab05c950059af0008bd561f50dbe562f91a497a9e5221546.lean.json)

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
| 1 | `def` | [productEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/productequiv.md) | 59 | `declaration-track:f96f2fd7ef3d52f03558676084a319157532ad8574a76a584f0a3f125621d753` |
| 2 | `lemma` | [productEquiv_apply_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/productequiv-apply-apply.md) | 64 | `result-track:edacc9d5a12e3c503d75ea943d3c6c52675bac56b0051534c7011b4eb9792aaf` |
| 3 | `lemma` | [productEquiv_symm_apply_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/productequiv-symm-apply.md) | 69 | `result-track:08ba1f0bde039be8c7f6f3a6f51a0f04d0be41c8212b7c9fd6ee16ab2bbbbfdc` |
| 4 | `lemma` | [Pi.map_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/pi-map-ext.md) | 85 | `result-track:a7e1411a2a59581333a4075e9c6f8f98896e047038f36529e2a7b307a6421383` |
| 5 | `def` | [uniqueOfTerminalOfPreserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/uniqueofterminalofpreserves.md) | 105 | `declaration-track:f09915fdb715d3bb04070a8b3206911656422a97097ffa567da736dfa38e0e81` |
| 6 | `def` | [terminalOfUniqueOfReflects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/terminalofuniqueofreflects.md) | 110 | `declaration-track:6bda05d6d9e7ffefba6659c480d30d48aa98a5076e32f4e12cac559b2b92511f` |
| 7 | `def` | [terminalIffUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/terminaliffunique.md) | 117 | `declaration-track:0d9a781a1458ce056caee821559e8458d5380918e8082aabeaafb73a9453f502` |
| 8 | `def` | [terminalEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/terminalequiv.md) | 126 | `declaration-track:8f324b22dc072e3b2b653e236741e06a589417adcef7c86e1719362b24b8553b` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/instance.md) | 129 | `declaration-track:d632757c01267caaabb025bbcb8142d9af6a371fc0ac02b37a1c8cf2eddf330d` |
| 10 | `lemma` | [empty_of_initial_of_preserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/empty-of-initial-of-preserves.md) | 141 | `result-track:d889d4d9c50ddcdd92bae32b7df743be0355ef5ba57a805e96824b3ff80400cd` |
| 11 | `lemma` | [initial_of_empty_of_reflects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/initial-of-empty-of-reflects.md) | 147 | `result-track:6737a8c2f5bb072656089c7438f2aa085389ecfb3604465330caec2177a2f279` |
| 12 | `lemma` | [initial_iff_empty_of_preserves_of_reflects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/initial-iff-empty-of-preserves-of-reflects.md) | 154 | `result-track:eae06150c62627a5532433cb2179fdc5ff87f0df2a290c33291b25d0ffc2aeba` |
| 13 | `def` | [prodEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/prodequiv.md) | 169 | `declaration-track:12d40349ac5a5db77544d6dc0378fb7462d94fcd85afea3b5d61d6ad8c6ea0a8` |
| 14 | `lemma` | [prodEquiv_apply_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/prodequiv-apply-fst.md) | 173 | `result-track:43cca4d2ade4019db15190d73f2c83bbbb2a08407d99f86b161699eebadfabaf` |
| 15 | `lemma` | [prodEquiv_apply_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/prodequiv-apply-snd.md) | 178 | `result-track:8da2c5f3ebf02c164fbbd22e7053c7cdfe4757d8729d5bd1c6b7d2f82935c600` |
| 16 | `lemma` | [prodEquiv_symm_apply_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/prodequiv-symm-apply-fst.md) | 183 | `result-track:00465388936569c491994f1920069f24e4df916e7192a7b063500760c150dda5` |
| 17 | `lemma` | [prodEquiv_symm_apply_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/prodequiv-symm-apply-snd.md) | 189 | `result-track:8b34579f54b8cb706a00e3c2a2555c1431ea2d9585bd54f14ed15282a4c9fa72` |
| 18 | `def` | [pullbackEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/pullbackequiv.md) | 206 | `declaration-track:8e5cd0d585b284024f770b75ac3d3fefd2bdd1e1ab253c8e05b5710ed4690761` |
| 19 | `def` | [pullbackMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/pullbackmk.md) | 212 | `declaration-track:007645155fde59c75b4fcb3b023c34b347fbc8aed62de16b5fd1e6887244246b` |
| 20 | `lemma` | [pullbackMk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/pullbackmk-surjective.md) | 216 | `result-track:569821992d35f8a04337ab82129fdabff003a41c9c25d6d2c27264f797f62083` |
| 21 | `lemma` | [pullbackMk_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/pullbackmk-fst.md) | 222 | `result-track:33c91bd9be6e9f445bb9ea096f3a1bbac5899d27d129b1a973bde6fc116eed40` |
| 22 | `lemma` | [pullbackMk_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/pullbackmk-snd.md) | 228 | `result-track:b6cdede2c9fcdf1eeebd603a813e64d8395eaef8a78a22b90e2f283adb386b61` |
| 23 | `theorem` | [widePullback_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/widepullback-ext.md) | 244 | `result-track:2ed410b6eb2cbcaafe200ca7f3e961da063618b5b4e5b18b51306117301b5370` |
| 24 | `theorem` | [widePullback_ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/widepullback-ext-source-edition-2.md) | 253 | `result-track:77458c10d9baea92e52e8e6288ea4f99b284b59ccbe830f186375fdbe58e8a99` |
| 25 | `theorem` | [multiequalizer_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/multiequalizer-ext.md) | 270 | `result-track:c28fbb1dd546d8f4ae684c5eb2d1f4638204d370dab47bb2b6dfa894bfa605d8` |
| 26 | `def` | [multiequalizerEquivAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/multiequalizerequivaux.md) | 283 | `declaration-track:8279843023e04e89383f495543e39fceef01189f057e57a0b52c338aa48ac384` |
| 27 | `def` | [multiequalizerEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/multiequalizerequiv.md) | 316 | `declaration-track:bf8f32729db1bbba0a4e38d3b564cb9ea40455562c04cc44cb8f93b147b6ef5c` |
| 28 | `theorem` | [multiequalizerEquiv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/multiequalizerequiv-apply.md) | 326 | `result-track:59f3c898d06e242d2d34ac0d32349a812de165c46b9d718c863876f9cbfedd5a` |
| 29 | `theorem` | [widePushout_exists_rep](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/widepushout-exists-rep.md) | 344 | `result-track:7c7b1ef9c270631f37952926dcd44b7f2e45eb4c71f96d4158c679699ffd20e9` |
| 30 | `theorem` | [widePushout_exists_rep'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/widepushout-exists-rep-source-edition-2.md) | 354 | `result-track:894abed304a5292ace2c6354caa6d55f8b069e7c6f834b2c19f53be3f858cff0` |
| 31 | `theorem` | [cokernel_funext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesConcreteCategoryPublic.lean/declarations/cokernel-funext.md) | 367 | `result-track:5ce4d1f123d87b94c1695beb9056b5c0dc2d4083693c85ea5143e49a22b86a88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2818398cb74c40fcbfc4830d7d123e2b82c137c67a1d08fffeca733bac602c42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant0cb1d84f56a02589ab05c950059af0008bd561f50dbe562f91a497a9e5221546.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant0cb1d84f56a02589ab05c950059af0008bd561f50dbe562f91a497a9e5221546.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

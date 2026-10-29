# Verification target: Morphism Property Descent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8859ef586279820cdb1d8dc6f351b48ea9b63a3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8859ef586279820cdb1d8dc6f351b48ea9b63a3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DescendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/descendsalong.md) | 26 | `declaration-track:89e14497239df4341b15f5742794fab69ae84fbd2b7d6d63a35bd839d7270aa7` |
| 2 | `lemma` | [of_isPullback_of_descendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/of-ispullback-of-descendsalong.md) | 34 | `result-track:d9cda3aaa9bc23bbb4e1ee5072b869a3234f8c745e62da5c081f2fe15d89944b` |
| 3 | `lemma` | [iff_of_isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/iff-of-ispullback.md) | 38 | `result-track:e6674cb43964bef89f548b36d5286d18d392b1ab8ae3600fc1aa901b5be719c2` |
| 4 | `lemma` | [of_pullback_fst_of_descendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/of-pullback-fst-of-descendsalong.md) | 42 | `result-track:d90b32cef4d24964722aec03b7ccffc28c2387891bec769b357418427cd9404d` |
| 5 | `lemma` | [pullback_fst_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/pullback-fst-iff.md) | 46 | `result-track:3d395aa023013fd1fdcf227c15bc21448fa37b2860dabccb7681ae9ce1b97e08` |
| 6 | `lemma` | [of_pullback_snd_of_descendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/of-pullback-snd-of-descendsalong.md) | 50 | `result-track:9b9dd6693de1c29faae83a7ddc8cd57a52ccf75208f87b5eee11c650b6b34c1e` |
| 7 | `lemma` | [pullback_snd_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/pullback-snd-iff.md) | 54 | `result-track:f93a3434b01e05e09cdd3214794cc4cb3466fb6393af402a648bf5ac38b1af73` |
| 8 | `instance` | [DescendsAlong.top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/descendsalong-top.md) | 58 | `declaration-track:a0346d7d700b676de5a5c11460ffc28afdbf197bd907d3f8a35b95b272f643ee` |
| 9 | `instance` | [DescendsAlong.inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/descendsalong-inf.md) | 61 | `declaration-track:ec315d54e2d498e2775340d3d52199fb4f15dede945c9ab1445b11596785a196` |
| 10 | `lemma` | [DescendsAlong.of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/descendsalong-of-le.md) | 65 | `result-track:0a1e1bdb9cf1ab8005c93552e6c2964ed713fb4ec34563f40cb8b2840a05a109` |
| 11 | `lemma` | [DescendsAlong.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/descendsalong-mk.md) | 69 | `result-track:f888ea44f2b9fbcc74644473402530ca6840a06e66498eaeaedcfe8ffd7680b9` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/instance.md) | 78 | `declaration-track:49fb7e30055e8511ee023adf782f81e5b13d3498a6d0c81aa46fbc61cfcb24cc` |
| 13 | `class` | [CodescendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/codescendsalong.md) | 89 | `declaration-track:deeb6dc926e8a3afaf7b33477578d021ee8a1dfe467a52aa9adb04b1da52dabb` |
| 14 | `lemma` | [of_isPushout_of_codescendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/of-ispushout-of-codescendsalong.md) | 97 | `result-track:c2e1b1042108cf75eed78bc086603c00e20f596466b9ced870a86f12fdd2b762` |
| 15 | `lemma` | [iff_of_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/iff-of-ispushout.md) | 101 | `result-track:c55dc63bdcd47fb3b576f76a5477547b7a8cd993ed96cf539518813205c93267` |
| 16 | `lemma` | [of_pushout_inl_of_codescendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/of-pushout-inl-of-codescendsalong.md) | 105 | `result-track:4049449c56007632c8be00dcdb14b24f1a041d4adaf9f550a8a086b69d26b755` |
| 17 | `lemma` | [pushout_inl_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/pushout-inl-iff.md) | 109 | `result-track:2bf237db99b2e347f615d555ac33be7d76691ae32041590ceb76a334f5856280` |
| 18 | `lemma` | [of_pushout_inr_of_descendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/of-pushout-inr-of-descendsalong.md) | 113 | `result-track:00cae963e82be71ccf33745457ccb63b914ddc266e0156aa9aa9138708b9ebb5` |
| 19 | `lemma` | [pushout_inr_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/pushout-inr-iff.md) | 117 | `result-track:888325f4fcc324082d8f47846042b94258d5527a39bba28236aa79bf62c778a2` |
| 20 | `lemma` | [CodescendsAlong.of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/codescendsalong-of-le.md) | 121 | `result-track:e544d74afee6f914a8d42df67319c19bac47fcb298ea7e788e4bfa8db56db424` |
| 21 | `instance` | [CodescendsAlong.top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/codescendsalong-top.md) | 124 | `declaration-track:37d59c1bebdecc3d84c08aa4e8cac4f9e155274c8161f8f18d07833bd845bfb9` |
| 22 | `instance` | [CodescendsAlong.inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/codescendsalong-inf.md) | 127 | `declaration-track:8ff7488b1dfa38dedb493b19270b50cfb8cf6b998e2bf700b5d0dcffb715b462` |
| 23 | `lemma` | [CodescendsAlong.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/codescendsalong-mk.md) | 133 | `result-track:853449c98da1189faec0ac25f6d0d4bddcf00eca9f8ea7d45c7c5dc38f3be2e4` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescent.lean/declarations/instance-source-edition-2.md) | 141 | `declaration-track:f0120020c9384c744b8c58239749e3d17c044125df3f38bd3120b8059c3c59b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e2982c585cc143006d88b4df90e3c44c55854d178f90c29b8e4d9043aaf94bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantbd8e66f8a78a0b590f3ad12d4dc6473e9970c52bfe9e14574aed07bd55246096.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

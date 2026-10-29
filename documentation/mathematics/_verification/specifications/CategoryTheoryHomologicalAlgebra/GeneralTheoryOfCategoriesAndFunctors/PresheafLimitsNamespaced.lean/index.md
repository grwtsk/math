# Verification target: Presheaf Limits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d93514137a792e1f627144558e0d550fb2f08b6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d93514137a792e1f627144558e0d550fb2f08b6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationJointlyReflectsLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/evaluationjointlyreflectslimits.md) | 42 | `declaration-track:89ce5ca523c084e8f54d7bba481b831ab8ef850dde62271771541470d1ca597c` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/instance.md) | 64 | `declaration-track:7cea0eb3bd74846ae7fcc52b7fc418a462e79de31434d0d2e59628c4e7799b3f` |
| 3 | `def` | [limitPresheafOfModules](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/limitpresheafofmodules.md) | 72 | `declaration-track:9257456a70a86f119b2d4b034d5fe189dc7cebf73cefdb453e20cc8867283018` |
| 4 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/limitcone.md) | 114 | `declaration-track:9839417f465d2b410d645ba2b7991a324604912e3ae1bf3922acd6f6a6befa5c` |
| 5 | `def` | [isLimitLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/islimitlimitcone.md) | 128 | `declaration-track:703f517328c10431428f23ce322d992ce1f464646afb798fdc6618e96516a2cc` |
| 6 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/haslimit.md) | 131 | `declaration-track:ab141c60c07c5c5d10666b36a7772ac42b890ba60666df551fc4044c989867d3` |
| 7 | `instance` | [evaluation_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/evaluation-preserveslimit.md) | 133 | `declaration-track:ac61993ea7a61d3f6611f22531b8aa4c4dfececa9b45fd5eee832789019c3578` |
| 8 | `instance` | [toPresheaf_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/topresheaf-preserveslimit.md) | 137 | `declaration-track:d480c68299f2db794b2a55744b2de769fc5b4b6f9796cfb83fa0ab360dd4a9e9` |
| 9 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/haslimitsofshape.md) | 152 | `declaration-track:db6316ac59535bda2d64e1668c5bf14bef7075049091742af66cb96b7d1c292e` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/haslimitsofsize.md) | 154 | `declaration-track:4476a43e629b45ec540b19cda27fe5e075bab364466579a079c605f56f628bd1` |
| 11 | `instance` | [evaluation_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/evaluation-preserveslimitsofshape.md) | 156 | `declaration-track:60afb3ab27480154b53aba785fb93f161781b6a8370bef834a5fb33446f00369` |
| 12 | `instance` | [toPresheaf_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/topresheaf-preserveslimitsofshape.md) | 159 | `declaration-track:f9155add8d6d81f9d742cba553a5bd9ee3e2f2fc0a960bcc381e01a57c69e03a` |
| 13 | `instance` | [hasFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/hasfinitelimits.md) | 166 | `declaration-track:f6caeabdee266f3e0b4c9b7242817785ad2c1b4f9c10d4188e40e6173f25de28` |
| 14 | `instance` | [evaluation_preservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/evaluation-preservesfinitelimits.md) | 169 | `declaration-track:9d9ecf0fddffc324a96e0eba9c770fb8e296e130e488442d0dd6fca8f2bf9a1a` |
| 15 | `instance` | [toPresheaf_preservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimitsNamespaced.lean/declarations/topresheaf-preservesfinitelimits.md) | 172 | `declaration-track:454b0653c965a045dbf4d0dbe6d3a489d0e5e2e4c218dbbaf5eece29b65eb1f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f95541793105bc9c917cc43fd22cd877be7e7bf3b2e9bc60a818de6fa13e41c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant586586e25e3789a79b710801a875e4841a46aedb17c97e574856c4455f30a81f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

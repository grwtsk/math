# Verification target: Smooth Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3de15b4c05eb49750cbdac2a306df484922177f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1c3290e672dc502120ba216e0bf1a17904569326efdba8b72e870b53796a4258.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3de15b4c05eb49750cbdac2a306df484922177f`.

Source path: `GRWTSK/Algebra/Basic/Variant1c3290e672dc502120ba216e0bf1a17904569326efdba8b72e870b53796a4258.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1c3290e672dc502120ba216e0bf1a17904569326efdba8b72e870b53796a4258.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FinitePresentation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteStability` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Cotangent` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Nilpotent` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.AdjoinRoot` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FormallySmooth](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/formallysmooth.md) | 54 | `declaration-track:b3554b1829f965acd08a548bc1ecb167e55f6db7374f6ce8fc66242c72e58537` |
| 2 | `theorem` | [exists_lift](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/exists-lift.md) | 70 | `result-track:22694080d5fdd2f0f1d58300e52d612cd5f6fcf705d56bc53629f4abed515956` |
| 3 | `def` | [lift](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/lift.md) | 94 | `declaration-track:53ed937443064ee050992dc71d113fcb21d57446bf5d4295259a1638b660492d` |
| 4 | `theorem` | [comp_lift](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/comp-lift.md) | 99 | `result-track:279b497e21a0c9861419f45d8f1d7b62b8ab2da19edc40afded3326250bf557f` |
| 5 | `theorem` | [mk_lift](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/mk-lift.md) | 104 | `result-track:1fd449c8ab6218f154f4a1221a4742f57e69db4445d5f0356d82e228f3221b43` |
| 6 | `def` | [liftOfSurjective](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/liftofsurjective.md) | 112 | `declaration-track:ba9a5599539f909b3de79b82f975d3e95d55a28835b2c918a9e73948eea2ea2e` |
| 7 | `theorem` | [liftOfSurjective_apply](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/liftofsurjective-apply.md) | 118 | `result-track:4790e018cb6db238a750da585ef830030e09467454dd59e49f30be411e74f1d5` |
| 8 | `theorem` | [comp_liftOfSurjective](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/comp-liftofsurjective.md) | 129 | `result-track:8df0f6c5d783a5494b3860be898e523e9f32391e836a726669b2a843ff704207` |
| 9 | `theorem` | [of_equiv](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/of-equiv-source-edition-2.md) | 141 | `result-track:30d5dbbbd6b307c2c7dab6b11c717f0cdaa958301481211ca7a8b52d821ac6b0` |
| 10 | `theorem` | [iff_of_equiv](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/iff-of-equiv.md) | 148 | `result-track:3e0309a65419f2af7f6f4dad93d3de91abf97e8a6407341165edcec6ada38011` |
| 11 | `instance` | [mvPolynomial](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/mvpolynomial.md) | 159 | `declaration-track:c5de6dec02e05bb5d1dad1b43c635f79187a8b62f66e97577c56d3495d08a28f` |
| 12 | `instance` | [polynomial](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/polynomial.md) | 170 | `declaration-track:c9726ebf2732dea51ee87d28876af391f35f78755d9add113f00d67a9d7299df` |
| 13 | `theorem` | [comp](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/comp-source-edition-2.md) | 181 | `result-track:e8579f87013cef31d7aa46686e58c8c7a561f38abe74081499b32d80564c5dde` |
| 14 | `theorem` | [of_split](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/of-split.md) | 200 | `result-track:03998c204b49a0e8ec3d1ed753025d18a5ce948d6390f67fefa300343c7cae35` |
| 15 | `theorem` | [iff_split_surjection](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/iff-split-surjection.md) | 228 | `result-track:598e3711e6820862c9e43812e5b394b6ec0c3f44a95538b757d2260b53f49235` |
| 16 | `instance` | [base_change](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/base-change.md) | 262 | `declaration-track:009e72d84a2d97346446992b9765541eb3d9ab92438949d233af2dc73519d30a` |
| 17 | `theorem` | [of_isLocalization](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/of-islocalization.md) | 289 | `result-track:7a0eb272c98f0a80b9d3810c537e07d6e3e34768ad72c36e02eba630e9acf519` |
| 18 | `theorem` | [localization_base](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/localization-base.md) | 305 | `result-track:c96f4ffa24fc62346f68c6b9f2fd455b851d8fe916e797d7c9d7a795e26b72cc` |
| 19 | `theorem` | [localization_map](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/localization-map.md) | 326 | `result-track:bb9147fb1ae1faadcc60e8049efc781072c96cb256d8b8caee9387c71a65c13b` |
| 20 | `class` | [Smooth](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/smooth.md) | 343 | `declaration-track:ab1fa1429595b5a25975779dbbfdceea5b0b33f330902452cf715873a5c3cd9b` |
| 21 | `theorem` | [of_equiv](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/of-equiv.md) | 357 | `result-track:1fdc6a79db5b3615be9f9560f00fe1a9209fb9f3b996d397104e203d87f12266` |
| 22 | `theorem` | [of_isLocalization_Away](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/of-islocalization-away.md) | 362 | `result-track:55b6e16f36859e9719508426a84245914244f7cdc640325a3ab6f0e5b85a750d` |
| 23 | `theorem` | [comp](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/comp.md) | 371 | `result-track:78f86c7e85f6de6e575e5b0d60c6ff3d8dc7f055cbadf224d37d82decf4f25b0` |
| 24 | `instance` | [baseChange](../../../../CommutativeAlgebra/SmoothBasicNamespaced.lean/declarations/basechange.md) | 376 | `declaration-track:da7551e6bc49265ec3431625062c94b8d88637878a36fd99731318f70c7cdcb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24161a47d0d979cc02b45a1472fd096ca0dff13fddf8f5e8bc8e1b7e7df844f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant1c3290e672dc502120ba216e0bf1a17904569326efdba8b72e870b53796a4258.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant1c3290e672dc502120ba216e0bf1a17904569326efdba8b72e870b53796a4258.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

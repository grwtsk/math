# Verification target: Local Properties Exactness Exactness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65f958b008f7e8d176f5624bc1d76f0a250024b9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65f958b008f7e8d176f5624bc1d76f0a250024b9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Submodule` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.AtPrime` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Away` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_of_isLocalized_maximal](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/injective-of-islocalized-maximal.md) | 47 | `result-track:df7b1450e2774ee4c660ab2126af2f602cdcb1e26990dd74e229e342abdc418f` |
| 2 | `theorem` | [surjective_of_isLocalized_maximal](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/surjective-of-islocalized-maximal.md) | 52 | `result-track:c8b75fc5ca788a547f581302a56a6dce7b461eef0d74a9449f9b4e53101ae1f9` |
| 3 | `theorem` | [bijective_of_isLocalized_maximal](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/bijective-of-islocalized-maximal.md) | 59 | `result-track:c9e85be7257d2ae6018dc836d25528d8c755b87e884d4fec7d37aed58fb502ba` |
| 4 | `theorem` | [exact_of_isLocalized_maximal](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/exact-of-islocalized-maximal.md) | 65 | `result-track:286385f5cede4b5ef91818dc82f59fd4fd284df54281ef6e293e0ad39242c3bb` |
| 5 | `theorem` | [injective_of_localized_maximal](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/injective-of-localized-maximal.md) | 85 | `result-track:6db88ea2145865a2470b000e34172810401b5a00761da7eb82c9766389d91578` |
| 6 | `theorem` | [surjective_of_localized_maximal](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/surjective-of-localized-maximal.md) | 90 | `result-track:47c2187073ec734e21d73f2f32e1d99f24e6a58ca2cf4b30c30f1ef22294bc27` |
| 7 | `theorem` | [bijective_of_localized_maximal](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/bijective-of-localized-maximal.md) | 95 | `result-track:777c3ed3df181dff26923ef18b8f7f23f7722190d3901edc091ca5dc6d50f017` |
| 8 | `theorem` | [exact_of_localized_maximal](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/exact-of-localized-maximal.md) | 101 | `result-track:602418880ea0f4d6344457afcbcb4f21c4709d677450e55a3b9b2d63e6ba6785` |
| 9 | `theorem` | [injective_of_isLocalized_span](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/injective-of-islocalized-span.md) | 135 | `result-track:c2d5731eec3d6cffc0b52d373b5932857fe23dca987ffe59724bf1aa6885303d` |
| 10 | `theorem` | [surjective_of_isLocalized_span](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/surjective-of-islocalized-span.md) | 140 | `result-track:71a99195ad4a0f27c747512a48a4b9cb96cb6b307315349079daecf10591fc48` |
| 11 | `theorem` | [bijective_of_isLocalized_span](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/bijective-of-islocalized-span.md) | 146 | `result-track:45d336c3cf2d89ab578b392d0205fae4b956c2d67718cb5db22bb8fecad4816e` |
| 12 | `lemma` | [exact_of_isLocalized_span](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/exact-of-islocalized-span.md) | 152 | `result-track:b90c7e0d24bd80225519141b75d3e1f88f823422b2b719bf22c36da9f347baab` |
| 13 | `theorem` | [injective_of_localized_span](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/injective-of-localized-span.md) | 174 | `result-track:1962ea81ec3391524c99e2d0abf6a31de72c5d2aa8163fe1715630e3af8adeda` |
| 14 | `theorem` | [surjective_of_localized_span](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/surjective-of-localized-span.md) | 179 | `result-track:3997d7315e59c0d5405c5ddcf14ea9e2abaa4692ec3ecbbd207c79b7c771fe1c` |
| 15 | `theorem` | [bijective_of_localized_span](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/bijective-of-localized-span.md) | 184 | `result-track:566d912cfa562f56ccf133faca60e81edd0d66744935d8ae0c4384090bfade32` |
| 16 | `lemma` | [exact_of_localized_span](../../../../CommutativeAlgebra/LocalPropertiesExactnessExactness.lean/declarations/exact-of-localized-span.md) | 190 | `result-track:8c929549ba347700fa820ad00c805dcbabe54c9222cc33d56c58936ea8c1b962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06da756517ef32e8a8a739cf51611b95143159d9b3329d217e1b6966fb50d140 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Coherent Equivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edc55d2e3f01e201f67d47fa1a32c8e06c78915f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantbe105a29d0556a21deceb35919be8e404e762f7efa6d0cd696a51f2098e5dfa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edc55d2e3f01e201f67d47fa1a32c8e06c78915f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantbe105a29d0556a21deceb35919be8e404e762f7efa6d0cd696a51f2098e5dfa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantbe105a29d0556a21deceb35919be8e404e762f7efa6d0cd696a51f2098e5dfa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.SheafComparison` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Equivalence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [precoherent](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/precoherent.md) | 31 | `result-track:e50a78ac7e5e300395924a8132cf8086fa60eefaa625b18f13bd79d5e0af6e6b` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/instance-source-edition-2.md) | 33 | `declaration-track:21f4a41ecf235a5d35211d36a844789dca0a542e101c909718116e1c162c6d9b` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/instance-source-edition-4.md) | 36 | `declaration-track:f753ef728384d056878db8f3707f469369db21a0b62fbe86c0eb9f7f13408ac1` |
| 4 | `def` | [sheafCongrPrecoherent](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/sheafcongrprecoherent.md) | 48 | `declaration-track:ed0173bd9138d9a78de991bee51c44e36066026f17ca3063dea7369a3c9895b0` |
| 5 | `theorem` | [precoherent_isSheaf_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/precoherent-issheaf-iff.md) | 56 | `result-track:717d730a84643b7966e9c46ad7b21955bdc8828d6a3b4a2b2574b6a4c710976f` |
| 6 | `theorem` | [precoherent_isSheaf_iff_of_essentiallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/precoherent-issheaf-iff-of-essentiallysmall.md) | 67 | `result-track:596ab139f50c6145eff87a78f0ad2a29ae892f8830000697959110762ee8c27c` |
| 7 | `theorem` | [preregular](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/preregular.md) | 79 | `result-track:36d55c879069ae278aa2ba7e133db7f381c0b6ec58ad09ca39b5a879c8f8aa01` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/instance.md) | 81 | `declaration-track:1428f571f7ce747e736bfbf862a3f424f612fe83485e790adbd66140bf73c1e5` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/instance-source-edition-3.md) | 84 | `declaration-track:dfb9ac461e0aea5c0b7e58aba7ed675885a172e9d6f3ce3350709870ba5b3c55` |
| 10 | `def` | [sheafCongrPreregular](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/sheafcongrpreregular.md) | 96 | `declaration-track:e574688bb4bc1e62ee43078173dc75158ccd7e1517b4be9b3f4b4a8d823c1e61` |
| 11 | `theorem` | [preregular_isSheaf_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/preregular-issheaf-iff.md) | 104 | `result-track:6d016b593a8c31a948ec1b041cadf62c7b6518e65d5f5340852c0ce7093325f2` |
| 12 | `theorem` | [preregular_isSheaf_iff_of_essentiallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoherentEquivalence.lean/declarations/preregular-issheaf-iff-of-essentiallysmall.md) | 115 | `result-track:f2683672c86ccf4e7e0c5d347fe3827e58d1016bfeaba5b0e48bb2f68e0c7500` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80b5e2db78da4b829457fa05ba50e8362d6a1f17ce6455e32d40a4bb88af4b13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantbe105a29d0556a21deceb35919be8e404e762f7efa6d0cd696a51f2098e5dfa7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantbe105a29d0556a21deceb35919be8e404e762f7efa6d0cd696a51f2098e5dfa7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

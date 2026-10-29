# Verification target: Schur Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ce90513ceaf92f45a9ef3c2ecc4abc4706f6e38",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant1d3b4b09caad2c971de3a4a89d8a23271076e215892f614eee9382cb91184550.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ce90513ceaf92f45a9ef3c2ecc4abc4706f6e38`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant1d3b4b09caad2c971de3a4a89d8a23271076e215892f614eee9382cb91184550.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant1d3b4b09caad2c971de3a4a89d8a23271076e215892f614eee9382cb91184550.lean.json)

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
| 1 | `theorem` | [mono_of_nonzero_from_simple](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/mono-of-nonzero-from-simple.md) | 46 | `result-track:df0eaf01cfde09e8d5d212ee1a7156c18c162590053ade41753b149400c99d5a` |
| 2 | `theorem` | [isIso_of_hom_simple](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/isiso-of-hom-simple.md) | 53 | `result-track:9527a19f6f0823a713fdcec80fbebf0041f3975c8fca52a2143f7e268d11c6fa` |
| 3 | `theorem` | [isIso_iff_nonzero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/isiso-iff-nonzero.md) | 61 | `result-track:e9cf62ee250ed3b59cd3a456f29b89cf0e09a3ea50f3c2c08440843f5a099680` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/instance.md) | 72 | `declaration-track:a8a6ab9b374340015857ea3b6a5faff7bfa9fedaaf0de9f94249acc27d1a235f` |
| 5 | `theorem` | [finrank_hom_simple_simple_eq_zero_of_not_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/finrank-hom-simple-simple-eq-zero-of-not-iso.md) | 95 | `result-track:8e6c924f97eb1ae41877035fb2c0310686b22e8deaa3d65b2469a97ff812f69d` |
| 6 | `theorem` | [finrank_endomorphism_eq_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/finrank-endomorphism-eq-one.md) | 117 | `result-track:651412163265064a2a9bb761be2fb2b3943ed4018751042c7c7154915919dd6b` |
| 7 | `theorem` | [finrank_endomorphism_simple_eq_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/finrank-endomorphism-simple-eq-one.md) | 134 | `result-track:2dfdb362a2d4452680c68222022736a44e3ebcc91bee566c5dca942bc145e694` |
| 8 | `theorem` | [endomorphism_simple_eq_smul_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/endomorphism-simple-eq-smul-id.md) | 138 | `result-track:e59cc5e6c0e536b818f713b6855bd2b1d8d243c0b84dcd7d975e0fcf5e485e3c` |
| 9 | `def` | [fieldEndOfFiniteDimensional](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/fieldendoffinitedimensional.md) | 147 | `declaration-track:22ba0e6b13bc7082bd324b4724881f1f702e3c4e9b6347aec63aa744c9f3a187` |
| 10 | `theorem` | [finrank_hom_simple_simple_le_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/finrank-hom-simple-simple-le-one.md) | 164 | `result-track:979e3eb300a099a256cdd5ce43deae93b06100591a625b3918ddd0eb146c2b9c` |
| 11 | `theorem` | [finrank_hom_simple_simple_eq_one_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/finrank-hom-simple-simple-eq-one-iff.md) | 176 | `result-track:5e210dea1466f76d2ed3f12c7202701a36de105eb4eee931815abb4c4498adbd` |
| 12 | `theorem` | [finrank_hom_simple_simple_eq_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/finrank-hom-simple-simple-eq-zero-iff.md) | 191 | `result-track:9b83791e9887ca44c5d076ce8280e3ed399315f3db3a0ab71c726e755436f1b0` |
| 13 | `theorem` | [finrank_hom_simple_simple](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SchurNamespacedPublic.lean/declarations/finrank-hom-simple-simple.md) | 199 | `result-track:ca5a8ad73cfbfa7ec0669ba8766f6015ee9f19b5e16a1cfcbf3e2b8d4f1b2bb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54808d2caa5597a553b0ed42e4bcfdc2f4a27f1b85a21d25b28a68529b9785fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant1d3b4b09caad2c971de3a4a89d8a23271076e215892f614eee9382cb91184550.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant1d3b4b09caad2c971de3a4a89d8a23271076e215892f614eee9382cb91184550.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

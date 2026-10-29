# Verification target: Differentials Basic Basic Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11713be6bee8560a66a2fde6d4210716e0488bd5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variantba60041abc2032da66a9a5b0427d866dc08633655603ade386889e997dbf8229.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11713be6bee8560a66a2fde6d4210716e0488bd5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variantba60041abc2032da66a9a5b0427d866dc08633655603ade386889e997dbf8229.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variantba60041abc2032da66a9a5b0427d866dc08633655603ade386889e997dbf8229.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Kaehler.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Derivation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/derivation.md) | 33 | `declaration-track:590cfd3753dd9b49822fe9635402b77006a2c30760850f4efbe559598b371916` |
| 2 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/mk.md) | 43 | `declaration-track:a5462cb688ca098af2f8223f9aa386877eaa10805e1cc05851fca4d2766a8f3c` |
| 3 | `def` | [d](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/d-source-edition-3.md) | 64 | `declaration-track:87ac46274d8af16a181ac22330bd45cd5532bb44f6d5bba5c59ed5c1097119ec` |
| 4 | `lemma` | [d_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/d-add.md) | 70 | `result-track:85211fb2dac0eda7663dabdf1f5f888eef26178310978d9c8ce12b9bffca87f4` |
| 5 | `lemma` | [d_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/d-mul.md) | 73 | `result-track:84385dc1f7f4966bef698a848602888ad6505a926ebf42da8b86594b23cb5418` |
| 6 | `lemma` | [d_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/d-map.md) | 76 | `result-track:ea089984be551767b2228eab171b1967bb5e540a64ef8b4cd800a36524ae9383` |
| 7 | `def` | [KaehlerDifferential](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/kaehlerdifferential.md) | 92 | `declaration-track:3c237542ebb9727f038dac6c6b888be006faa8af05e44466560562f56f35b04e` |
| 8 | `def` | [D](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/d.md) | 101 | `declaration-track:6832530cf071dde50d7931041c328d9adc62d519c326c8f23e385945e8be6d55` |
| 9 | `abbrev` | [d](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/d-source-edition-2.md) | 109 | `declaration-track:7ed0b22f37ab179cf76dbad4a49a2203a826d2d08d4be6cf00792e71f18bf071` |
| 10 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/ext.md) | 112 | `result-track:d54bfee0c9d31e017f6874573679a1b1fdb47ced8cb0cd773ab21eb8a47d1417` |
| 11 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/map.md) | 127 | `declaration-track:28b53a346e48e8303d2f7d2dadc1fada564b46675ba88edb8a670c29c852fb72` |
| 12 | `lemma` | [map_d](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/map-d.md) | 145 | `result-track:b3f447dfed4f8eaaa1b1d50d1d1da84bf94cd074e47612a45cfbc5337932a452` |
| 13 | `def` | [desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/desc.md) | 162 | `declaration-track:75929e08227598aeb00b990e35fcd11e0c7e5ab2963ae186f0cfaf2876d341b5` |
| 14 | `lemma` | [desc_d](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DifferentialsBasicBasicBasic.lean/declarations/desc-d.md) | 168 | `result-track:8968694b3d60638f000a9dcb18c7060a3421d24685592085cee99a6c52bcbdb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c529efda18d98b615277a4feff2ff2ae4420db4208562928258153ce2a49665 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variantba60041abc2032da66a9a5b0427d866dc08633655603ade386889e997dbf8229.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variantba60041abc2032da66a9a5b0427d866dc08633655603ade386889e997dbf8229.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

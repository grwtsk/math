# Verification target: Presheaf Generator Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75bf1215711fe02cc10286bac668f628f4d0f19f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant35f27f622297956863cbed424afd76089c0544fda80aeb08a362d4245d669f65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75bf1215711fe02cc10286bac668f628f4d0f19f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant35f27f622297956863cbed424afd76089c0544fda80aeb08a362d4245d669f65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant35f27f622297956863cbed424afd76089c0544fda80aeb08a362d4245d669f65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Free` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elements` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeYonedaEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/freeyonedaequiv.md) | 62 | `declaration-track:9f524df606555c6d881609e41965d115770d802d040d4b7d03b35fbdfe2a4e44` |
| 2 | `lemma` | [freeYonedaEquiv_symm_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/freeyonedaequiv-symm-app.md) | 66 | `result-track:69ace08d234e30d3a248d3959a4a3def5fbe99db9dfe0380b7007c5f6bb05dfb` |
| 3 | `lemma` | [freeYonedaEquiv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/freeyonedaequiv-comp.md) | 73 | `result-track:0b9fa863fbe35ad5078a7779ac621685e969fb1c6fafdd159e63bf02f67a44dd` |
| 4 | `def` | [freeYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/freeyoneda.md) | 80 | `declaration-track:422d6bfe946435b1fbd04dc06dcd71ad5ef655e086c94280d15293e5d85b135f` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/instance.md) | 84 | `declaration-track:7a0013a2758df00487175174c204e9af920314a736bba9690c8e4542f138bfa0` |
| 6 | `lemma` | [isSeparating](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/isseparating.md) | 91 | `result-track:1218e3cb957e08c261ef0f923df4ff381668af8607ed261411a7f30e60c6b5bf` |
| 7 | `lemma` | [isDetecting](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/isdetecting.md) | 97 | `result-track:e1b367c3239a4e3740496e9e8a9c83131dce6928fef7582d3c5ffe21c78409af` |
| 8 | `instance` | [wellPowered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/wellpowered.md) | 102 | `declaration-track:65af813824dfca20c9664a30dfa46503c3576c962f0e2bc943a657fe2ce480ad` |
| 9 | `abbrev` | [Elements](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/elements.md) | 108 | `declaration-track:36d1f1a3c4838b44471e43ccc3ca7e9d65c04d777a8d2c17bae86ae287ad61e4` |
| 10 | `abbrev` | [elementsMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/elementsmk.md) | 112 | `declaration-track:5e3732d5ce0869b51f74f55917ea57ac5a86e72bfdd9afa577967de93b4efa76` |
| 11 | `abbrev` | [freeYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/freeyoneda-source-edition-2.md) | 123 | `declaration-track:f55f608c720ab8262f76cc01b99959516413c1b28ac5f314da3829cac566d451` |
| 12 | `abbrev` | [fromFreeYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/fromfreeyoneda.md) | 128 | `declaration-track:9f9d08fdd5a342bfd7717fa759cb727792ba66277158571e93619cfa23b8f2d3` |
| 13 | `lemma` | [fromFreeYoneda_app_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/fromfreeyoneda-app-apply.md) | 132 | `result-track:6650c467236c2115189f8e49849b2ec3fa4e72b33cd3725771e292e696721e9a` |
| 14 | `abbrev` | [freeYonedaCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/freeyonedacoproduct.md) | 144 | `declaration-track:0be4681eeaae161173950a51e6450e8a8fb8882412544330dfc0a0a199551ddc` |
| 15 | `abbrev` | [ιFreeYonedaCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/freeyonedacoproduct-source-edition-2.md) | 149 | `declaration-track:97e07fffb95e8f85a54c2242b239b5758133ead336a7d41ea4f6f1478dd28a3e` |
| 16 | `def` | [fromFreeYonedaCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/fromfreeyonedacoproduct.md) | 155 | `declaration-track:3b30613ba81f9358890e12e0bba070edcae7a89cfc9ea41ca07084da84c6cc82` |
| 17 | `def` | [freeYonedaCoproductMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/freeyonedacoproductmk.md) | 161 | `declaration-track:dfab7680814d8977964acd1505020fa5087d5953bec20c7d8e7e376de976bfec` |
| 18 | `lemma` | [ι_fromFreeYonedaCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/fromfreeyonedacoproduct-source-edition-2.md) | 166 | `result-track:4924e80a460f15ed0dc36f18f77ecf2ae549f9941ee4d873cf66881bd99277c3` |
| 19 | `lemma` | [ι_fromFreeYonedaCoproduct_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/fromfreeyonedacoproduct-apply.md) | 170 | `result-track:a83463b22384cf9e60f2ff5be5400a823bd17852c82dc89801c78e5771190275` |
| 20 | `lemma` | [fromFreeYonedaCoproduct_app_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/fromfreeyonedacoproduct-app-mk.md) | 176 | `result-track:8bb1e03a431270490061b47675bb01e28eaeaeeea48b1bfab05c35544c57d790` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/instance-source-edition-2.md) | 182 | `declaration-track:e11cb00cd9b80def6a9be6585c2f820bbcce18a79a5b19480db0a1f339b4a698` |
| 22 | `def` | [toFreeYonedaCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/tofreeyonedacoproduct.md) | 189 | `declaration-track:ba1bfac390ece98fb59ca6c7e33ed5323b55d07710f463d66a3a1eadc58197ae` |
| 23 | `lemma` | [toFreeYonedaCoproduct_fromFreeYonedaCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/tofreeyonedacoproduct-fromfreeyonedacoproduct.md) | 194 | `result-track:8a872d8272e77696082c7d3f51e447142c9e63d8a00896e35e775d4094eddb04` |
| 24 | `abbrev` | [freeYonedaCoproductsCokernelCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/freeyonedacoproductscokernelcofork.md) | 200 | `declaration-track:d481295de3ec0b62d9595c1342796a40d87d16fd475d2850dbf6f78c77f6c63c` |
| 25 | `def` | [isColimitFreeYonedaCoproductsCokernelCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafGeneratorNamespaced.lean/declarations/iscolimitfreeyonedacoproductscokernelcofork.md) | 208 | `declaration-track:5c603d4c162cadd597f6b64e113e104ec2dc15365bc5fd656791b3e2de09eda8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c01c157fdd976bcf69ea3a4e911c45c9463de3b34f5d64224cb519c9751d911 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant35f27f622297956863cbed424afd76089c0544fda80aeb08a362d4245d669f65.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant35f27f622297956863cbed424afd76089c0544fda80aeb08a362d4245d669f65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

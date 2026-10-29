# Verification target: Mon Cat Filtered Colimits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63c6430bf75093a50d373e196580baa234842f31",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63c6430bf75093a50d373e196580baa234842f31`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Filtered` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/m-source-edition-2.md) | 55 | `declaration-track:daff697b9479d61205435ef83481c2c4286842d6a654833614ce3d33402b3ef0` |
| 2 | `abbrev` | [M.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/m-mk.md) | 60 | `declaration-track:20cb0900f0cd6235c31d7542439b469329af9c6bad7e529d98bcf08b1d310251` |
| 3 | `theorem` | [M.mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/m-mk-eq.md) | 64 | `result-track:c4b4488130b820c1068a76c054861343a48243e1d775d7a5f7651f505a6822c1` |
| 4 | `instance` | [colimitOne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitone.md) | 77 | `declaration-track:5cd4e4e06f704d0b6b829900e6e01057dca611a21291a8c59da89639b2b142e8` |
| 5 | `theorem` | [colimit_one_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimit-one-eq.md) | 88 | `result-track:02cd8f0851d5d94368e4e44ae87cbb11024be9a3ea8eea86584b2f4eaa817aaa` |
| 6 | `def` | [colimitMulAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitmulaux.md) | 101 | `declaration-track:a47d21ed438dd2036209912e9d53bf74231cf2741099c17e66ac1072c02f1e34` |
| 7 | `theorem` | [colimitMulAux_eq_of_rel_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitmulaux-eq-of-rel-left.md) | 107 | `result-track:6cac7ec7f16fdd942802d4f56211214edf1821cc7c598a4c84442eb7461771de` |
| 8 | `theorem` | [colimitMulAux_eq_of_rel_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitmulaux-eq-of-rel-right.md) | 124 | `result-track:7e7c19cddc629694753cb5c671b863d747400ab07bada6359c2a0def5556d4ff` |
| 9 | `instance` | [colimitMul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitmul.md) | 141 | `declaration-track:e9820b585058070086a875c960d60b1a9c0032c42c5dfaadd717295bf2944c19` |
| 10 | `theorem` | [colimit_mul_mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimit-mul-mk-eq.md) | 161 | `result-track:f9fc34a7c1bfb5104fb07d29cf2bb3f85cd0f568cc23ac438e302f1f24f9d893` |
| 11 | `instance` | [colimitMulOneClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitmuloneclass.md) | 172 | `declaration-track:4708967ed67d9d4fb9ba8a0eb11a718335d30891c4e48b9ad2d45f55b3a56ba7` |
| 12 | `instance` | [colimitMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitmonoid.md) | 189 | `declaration-track:68cd1d894e32ae92fb859d489e4bf38b08f9a7791282e49ad4336ef72e713f5f` |
| 13 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimit-source-edition-2.md) | 217 | `declaration-track:be674209f39eb84816b9f76e35ea94948370aa0abdf391ea20c4113566d7d522` |
| 14 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/coconemorphism.md) | 224 | `declaration-track:52606df112b4a6d2764f969f0c746d6cd1215657fff8ca35167007d5a676a2a4` |
| 15 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/cocone-naturality.md) | 234 | `result-track:3a25b1a5260674b8f373c3723fe0c25c5e173b74513693b8120083c79609c18f` |
| 16 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitcocone-source-edition-2.md) | 241 | `declaration-track:c94597d39452ce987a0037c3f44c5ee5eb4fd88792bdcda238aec0393ef80838` |
| 17 | `def` | [colimitDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitdesc.md) | 254 | `declaration-track:c624e70bb36b889ada9a28e5c6aef7ba99b6b3bc46aa2f3fd0b9d67989853982` |
| 18 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitcoconeiscolimit-source-edition-2.md) | 275 | `declaration-track:aae269230f294169b11085c762092bfc611c5c17b41f69227201b0a930bedb45` |
| 19 | `instance` | [forget_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/forget-preservesfilteredcolimits-source-edition-2.md) | 285 | `declaration-track:c41e6c80b85022c0638e51e9112a08a173ea9af22f4aa06dca106bb6a88e14e5` |
| 20 | `abbrev` | [M](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/m.md) | 310 | `declaration-track:71273ab3fdcd0f29585313753d6e6ed03f52cd7f987e059b268728fcac666713` |
| 21 | `instance` | [colimitCommMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitcommmonoid.md) | 314 | `declaration-track:856905c05ea951d5a111dbcf3f6b28eaafc1a3d28c8aaa3818e17e801992767f` |
| 22 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimit.md) | 330 | `declaration-track:5a7a3f03a25e63060f0bdd1e37321e8e88e074f0d626493fb1fbb22f82a22042` |
| 23 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitcocone.md) | 335 | `declaration-track:62c4e49e8b0f4ae951b1bf3d4d52653cbf215bf0e4dc1d0a8a22e88a65bbd39f` |
| 24 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/colimitcoconeiscolimit.md) | 345 | `declaration-track:95c61085dbdcd439b364934b7a612dbb992a950306750e75de0d6c63fc690b18` |
| 25 | `instance` | [forget₂Mon_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/forget-mon-preservesfilteredcolimits.md) | 361 | `declaration-track:baf8ab3b9fd696a7021a87da6f3aa149281166b2b0a4493c4e35240c35775bb3` |
| 26 | `instance` | [forget_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespaced.lean/declarations/forget-preservesfilteredcolimits.md) | 368 | `declaration-track:227cdb6398def5dde29f7e35544349f81de3af5cc187b202d611a07edf71232c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11f479445eb9b7dc0e64b44c935a9ddb627ba6a51d5404c30a1264f016ba1098 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

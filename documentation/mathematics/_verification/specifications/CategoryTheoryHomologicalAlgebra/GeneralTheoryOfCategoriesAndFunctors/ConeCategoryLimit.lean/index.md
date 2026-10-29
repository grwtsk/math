# Verification target: Cone Category Limit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9059ea7e342be3a22f86ef54e55d24db389f0f46",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9059ea7e342be3a22f86ef54e55d24db389f0f46`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Comma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equivalence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cone.toStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-tostructuredarrow.md) | 38 | `declaration-track:44c4db57218f7f09aa2af507d26ac2a6af2264eaa7671628bed05a1f8a972956` |
| 2 | `def` | [limit.toStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/limit-tostructuredarrow.md) | 45 | `declaration-track:d0e3537f71db6e71ee9f80a95c3251fc7ebb668f1ffdf3e8bc9972225ffe4b30` |
| 3 | `def` | [Cone.toStructuredArrowIsoToStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-tostructuredarrowisotostructuredarrow.md) | 51 | `declaration-track:de49cca9ba27bf722223f5f8479f1300a9e8017e68c47fd730ee3272e4c1a28a` |
| 4 | `def` | [_root_.CategoryTheory.Functor.toStructuredArrowIsoToStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/root-categorytheory-functor-tostructuredarrowisotostructuredarrow.md) | 56 | `declaration-track:18a88296fdfc0ec5ec033a875d71cc4a31cfe23927059dc090c7ecc26107271c` |
| 5 | `def` | [Cone.toStructuredArrowCompProj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-tostructuredarrowcompproj.md) | 66 | `declaration-track:9d06c6aedc42a53cc50bc83c578e4ca7920392931114c99f3ad68ce8009bcaa0` |
| 6 | `lemma` | [Cone.toStructuredArrow_comp_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-tostructuredarrow-comp-proj.md) | 71 | `result-track:434769ad92b717e12aa9e944acc9be71efb71d725290e04909d03ce950bd8d32` |
| 7 | `def` | [Cone.toStructuredArrowCompToUnderCompForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-tostructuredarrowcomptoundercompforget.md) | 79 | `declaration-track:df16713c2950124944d2fd002c162f0ced54beefb5ae2afabba80ddc32223cc8` |
| 8 | `lemma` | [Cone.toStructuredArrow_comp_toUnder_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-tostructuredarrow-comp-tounder-comp-forget.md) | 84 | `result-track:fbd018eb8f427f7b984ea2a9959fa466f80a1dd2cdfa82a98c1b87c721a8bfc1` |
| 9 | `def` | [Cone.toUnder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-tounder.md) | 90 | `declaration-track:25abdf4aa57cd6d877982fde20179202953c18e527ec068981a6f475e5a9a087` |
| 10 | `def` | [limit.toUnder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/limit-tounder.md) | 97 | `declaration-track:5134a940529423fdecdabfcbc2c932a429cc93d6aa3a61027b60716b3383d004` |
| 11 | `def` | [Cone.mapConeToUnder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-mapconetounder.md) | 104 | `declaration-track:430354d23b6355aa1cabcf1abbb09710be59b6acd949671b95376c75eb4f71bb` |
| 12 | `def` | [Cone.fromStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-fromstructuredarrow.md) | 109 | `declaration-track:2ac50c6e6300ca1be4e7dd827502e4d557ff354a02507b98b381ef933062e2f2` |
| 13 | `def` | [Cone.toStructuredArrowCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-tostructuredarrowcone.md) | 118 | `declaration-track:c297acba54a983e7d12d48751e4807c08e340b757bc50d7ed8baf5be5ba5f3f6` |
| 14 | `def` | [Cone.toCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-tocostructuredarrow.md) | 126 | `declaration-track:c6e28ea514e2e578c08033b7b8b5368dacb7bc15e021673fdaeb4ceb1b5593d7` |
| 15 | `def` | [Cone.fromCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-fromcostructuredarrow.md) | 133 | `declaration-track:ed83cd961f0fec2130c6c8c2f000b87e037c2c2cd12b82b9cc571b092376fa58` |
| 16 | `def` | [Cone.equivCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-equivcostructuredarrow.md) | 145 | `declaration-track:188df9550d9e6b2c1cb92069d5b45d05c04403199beeffed264cad4e9abc221d` |
| 17 | `def` | [Cone.isLimitEquivIsTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cone-islimitequivisterminal.md) | 152 | `declaration-track:b7d53c848c86e705645b71e577fb53a6b28d649f90c70ee2bd6e008693b99106` |
| 18 | `theorem` | [hasLimit_iff_hasTerminal_cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/haslimit-iff-hasterminal-cone.md) | 159 | `result-track:688f4585126ac03225c0ca855d0ede1aa65dd3017b8d649b5687c5dad4e385c1` |
| 19 | `theorem` | [hasLimitsOfShape_iff_isLeftAdjoint_const](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/haslimitsofshape-iff-isleftadjoint-const.md) | 164 | `result-track:60e9dbe1295e2ccd4341b6a88de877ae7e3dc72a9737ce721a41c1a96d5b025e` |
| 20 | `theorem` | [IsLimit.liftConeMorphism_eq_isTerminal_from](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/islimit-liftconemorphism-eq-isterminal-from.md) | 175 | `result-track:b504e971c40820583d51459e1ceba3b84f87f3162b265120db4a382637f79ca1` |
| 21 | `theorem` | [IsTerminal.from_eq_liftConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/isterminal-from-eq-liftconemorphism.md) | 179 | `result-track:112608d8529ad1ca62c10965ba4b18ff2d119510303f54f28b339f1c3cf9e073` |
| 22 | `def` | [IsLimit.ofPreservesConeTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/islimit-ofpreservesconeterminal.md) | 185 | `declaration-track:f5a605b222d16685563a14231be9bf39e436a87bf3645560fa8e00567f17a150` |
| 23 | `def` | [IsLimit.ofReflectsConeTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/islimit-ofreflectsconeterminal.md) | 190 | `declaration-track:6840827f1605d12a9e984eb2cd267b41d399e2d168d7161fdef55ce380d70823` |
| 24 | `def` | [Cocone.toCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-tocostructuredarrow.md) | 197 | `declaration-track:55f36f20e2fd45aede1c4b7e446b309c925e4204c3e71b5bbc052a403989ea8b` |
| 25 | `def` | [colimit.toCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/colimit-tocostructuredarrow.md) | 204 | `declaration-track:b74ad2042c72124197e52971c9407fc07829e86220ceafbfa4bd80b8bc18399c` |
| 26 | `def` | [Cocone.toCostructuredArrowIsoToCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-tocostructuredarrowisotocostructuredarrow.md) | 210 | `declaration-track:1e6757dbce359d8e59824e585dd07b3485c57bb7064a6f27b1df8999162b5cd1` |
| 27 | `def` | [_root_.CategoryTheory.Functor.toCostructuredArrowIsoToCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/root-categorytheory-functor-tocostructuredarrowisotocostructuredarrow.md) | 215 | `declaration-track:9e468b474e616e69182a58ac7c057534fe2cd51a79b4cd27990b089b3ba30fc9` |
| 28 | `def` | [Cocone.toCostructuredArrowCompProj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-tocostructuredarrowcompproj.md) | 225 | `declaration-track:2a45530d00318fcf427d6accccab3289071a20e417f4c50128bef0043a7ddafb` |
| 29 | `lemma` | [Cocone.toCostructuredArrow_comp_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-tocostructuredarrow-comp-proj.md) | 230 | `result-track:399d4ec9f09b1a6232f96cadd616e92a482b5f47b4bb7c6a96b8f5dd71057c0b` |
| 30 | `def` | [Cocone.toCostructuredArrowCompToOverCompForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-tocostructuredarrowcomptoovercompforget.md) | 238 | `declaration-track:7839c1b589402a576539288e28f6b142475ffb5ff3c727048ac7643c5c937e4b` |
| 31 | `lemma` | [Cocone.toCostructuredArrow_comp_toOver_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-tocostructuredarrow-comp-toover-comp-forget.md) | 243 | `result-track:c1b7afc60f9fb6aeb164b73e8ddfd5fa1174f3e0457098cb809e36a8e63cfbaa` |
| 32 | `def` | [Cocone.toOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-toover.md) | 249 | `declaration-track:8b310781027f61b6bae4c70a28643a479cb2b6c1e037234e5089c3e1a1558e23` |
| 33 | `def` | [colimit.toOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/colimit-toover.md) | 257 | `declaration-track:85e5abb179fb45d09423ad45ef1539c6b2e9d4a4a59772036f697a19b6ab5404` |
| 34 | `def` | [Cocone.mapCoconeToOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-mapcoconetoover.md) | 264 | `declaration-track:bacb9309c5349d73fd7d1188d38a71b95613437d52051cf6cc257586996419cb` |
| 35 | `def` | [Cocone.fromCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-fromcostructuredarrow.md) | 269 | `declaration-track:5dc1c529d7999b0a892ad09fbff9abe18c6b0d02c35a30570360338e8f898e99` |
| 36 | `def` | [Cocone.toCostructuredArrowCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-tocostructuredarrowcocone.md) | 277 | `declaration-track:e4ce81b6515ea4b64c681d0f55b615e9addba12b3487b52ef3004ceb87511f2b` |
| 37 | `def` | [Cocone.toStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-tostructuredarrow.md) | 286 | `declaration-track:ec07d0cf17a989f3e0260e220fc060bb7ec25086d48ad14badc20f4913c4b841` |
| 38 | `def` | [Cocone.fromStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-fromstructuredarrow.md) | 293 | `declaration-track:32d2f9d3094317a86dd757cddf553ad5e568da90b2001fd02f1593719e03a78e` |
| 39 | `def` | [Cocone.equivStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-equivstructuredarrow.md) | 305 | `declaration-track:f97f254b46a220dddfdff76c397a366b5981acf553587138e75a57f0b40cb233` |
| 40 | `def` | [Cocone.isColimitEquivIsInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/cocone-iscolimitequivisinitial.md) | 312 | `declaration-track:4e17de51cda4891bcd6b4446cbb4cef490999ab405dfba610b912b8ec0be7f0d` |
| 41 | `theorem` | [hasColimit_iff_hasInitial_cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/hascolimit-iff-hasinitial-cocone.md) | 319 | `result-track:3c6d551d891e12923fd2421d1b02c0c0d70d9b18c80431468f37c0d0c9e5fbf6` |
| 42 | `theorem` | [hasColimitsOfShape_iff_isRightAdjoint_const](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/hascolimitsofshape-iff-isrightadjoint-const.md) | 324 | `result-track:1cac8ff74a1e7983cf342dc45643b405558f2a7ccf390b2e279fb01af1147761` |
| 43 | `theorem` | [IsColimit.descCoconeMorphism_eq_isInitial_to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/iscolimit-desccoconemorphism-eq-isinitial-to.md) | 335 | `result-track:b6aceced07d01b249cacc8b0d059f870b5dd3f809b285c37480e770370779ac7` |
| 44 | `theorem` | [IsInitial.to_eq_descCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/isinitial-to-eq-desccoconemorphism.md) | 340 | `result-track:b335d7d87649e8ba65487b66e007fd4cc819cab858e4ba91443c3b23c0d17799` |
| 45 | `def` | [IsColimit.ofPreservesCoconeInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/iscolimit-ofpreservescoconeinitial.md) | 346 | `declaration-track:c5f6a319da99693040dd530555586f1a90217d7c2ca81f41612e716c436e8da8` |
| 46 | `def` | [IsColimit.ofReflectsCoconeInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryLimit.lean/declarations/iscolimit-ofreflectscoconeinitial.md) | 353 | `declaration-track:56e865d08b08f8f75e09e63fbc8d12f2da508d84bcb830ad373ef0349641357f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c373264a158b1ea8aafc50716572b2b465bc6c00ca23bdf6b40489d661194878 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

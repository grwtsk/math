# Verification target: Cone Category Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e530df37fd3cb71fed9c9d856e9971db173672a9",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variant52ed86e9d1b33d99bb94120ddcf894a3174592999a78778955d01b2daec1b611.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e530df37fd3cb71fed9c9d856e9971db173672a9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variant52ed86e9d1b33d99bb94120ddcf894a3174592999a78778955d01b2daec1b611.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variant52ed86e9d1b33d99bb94120ddcf894a3174592999a78778955d01b2daec1b611.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Comma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equivalence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Over` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cone.toStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-tostructuredarrow.md) | 49 | `declaration-track:ca9adea070630a202977cdd41c8e9e186428ce2ee976d685e5df7017d26f6024` |
| 2 | `def` | [Cone.toStructuredArrowIsoToStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-tostructuredarrowisotostructuredarrow.md) | 54 | `declaration-track:587bab043677b97d9c08f0bd7bc67dd34288d8f8226f67fbacdadd1e750be485` |
| 3 | `def` | [Cone Category Namespaced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-conetostructu.md) | 59 | `declaration-track:43394aacad1230ab4d99536fd8c7bad4692b3e2e4f2086d43fd79f3899fab87e` |
| 4 | `def` | [Cone.toStructuredArrowCompProj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-tostructuredarrowcompproj.md) | 69 | `declaration-track:f51c90c21932e141aa39570ff408f301ccff7bfc341abf9f82630f2f6900a039` |
| 5 | `lemma` | [Cone.toStructuredArrow_comp_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-tostructuredarrow-comp-proj.md) | 74 | `result-track:687b8f1798e3b1e05f60a318ca1e54212b178227fe475dbb27b7e5d4387d6aa0` |
| 6 | `def` | [Cone.toStructuredArrowCompToUnderCompForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-tostructuredarrowcomptoundercompforget.md) | 82 | `declaration-track:4b9a1e94de367748ea91e0701a2b02189488398ef1d028ee1704783e80bbaa97` |
| 7 | `lemma` | [Cone.toStructuredArrow_comp_toUnder_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-tostructuredarrow-comp-tounder-comp-forget.md) | 87 | `result-track:604ea642d56c2871c9bc29c8cbdd72dda2d48fcad9150da14e19ff701aedb138` |
| 8 | `def` | [Cone.fromStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-fromstructuredarrow.md) | 93 | `declaration-track:fffb32b55656bb705b4b3043cefb9b4fb7ed3ef38248d029974134897a2e6031` |
| 9 | `def` | [Cone.toStructuredArrowCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-tostructuredarrowcone.md) | 102 | `declaration-track:f5b3ed03eb978fd99597c20c733db0a55d4897255ee41711d6bacbbf6461e42f` |
| 10 | `def` | [Cone.toCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-tocostructuredarrow.md) | 111 | `declaration-track:64af0e427ffd7df41121756a5fd3cce327964a8e66a06ed64240b69a8364f202` |
| 11 | `def` | [Cone.fromCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-fromcostructuredarrow.md) | 120 | `declaration-track:0eb926a3c39785262418efd8a03169c46af0346e6a2dff4cb2b00ed04f3e1091` |
| 12 | `def` | [Cone.equivCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-equivcostructuredarrow.md) | 141 | `declaration-track:400827b608c69788444473224f538c351b65072c171655c11c79e8fd75963ae4` |
| 13 | `def` | [Cone.isLimitEquivIsTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cone-islimitequivisterminal.md) | 148 | `declaration-track:35aab320bf05b41f4e03179dd73d291a95eb65ffa460f1f1e024eb918e94807c` |
| 14 | `theorem` | [hasLimit_iff_hasTerminal_cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/haslimit-iff-hasterminal-cone.md) | 156 | `result-track:d8d6136ec32347d2a2a4bf1f855fcc7cc3f2081eb5aaf0645f288e745dec808b` |
| 15 | `theorem` | [hasLimitsOfShape_iff_isLeftAdjoint_const](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/haslimitsofshape-iff-isleftadjoint-const.md) | 162 | `result-track:63e091941eefde66f0cededf9b5174ae3deaf2c13f589de545fcb00811a98e2c` |
| 16 | `theorem` | [IsLimit.liftConeMorphism_eq_isTerminal_from](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/islimit-liftconemorphism-eq-isterminal-from.md) | 174 | `result-track:08810adf73d96ff8bb83c6c6c3d34b0ffc5570c7d591190b0e1206d8aa54f0ac` |
| 17 | `theorem` | [IsTerminal.from_eq_liftConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/isterminal-from-eq-liftconemorphism.md) | 179 | `result-track:f16e1fe675a237a5c3d8a78f8add78c10d79b0b4882e3bb0e7fd2cf81668ee0b` |
| 18 | `def` | [IsLimit.ofPreservesConeTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/islimit-ofpreservesconeterminal.md) | 186 | `declaration-track:5e4f5c620329792107a8e613b2658d41f129f62b3fcaed4f9dbb4a4a7da3f911` |
| 19 | `def` | [IsLimit.ofReflectsConeTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/islimit-ofreflectsconeterminal.md) | 192 | `declaration-track:5bafc0e2bd1ee6a9cd8d9761c201ee9b23747e8c657e7d51c4ab7ecd665ff3d4` |
| 20 | `def` | [Cocone.toCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-tocostructuredarrow.md) | 200 | `declaration-track:bee1dfc9ac0ef72becf0894dec2bd365901657f80cb6d2cf3b175bb4b7712986` |
| 21 | `def` | [Cocone.toCostructuredArrowIsoToCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-tocostructuredarrowisotocostructuredarrow.md) | 205 | `declaration-track:40f4deed4ca16b139614cc5bae9c8c8178cd95fa1aea1dcd8a9261860d79eb35` |
| 22 | `def` | [Cone Category Namespaced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-conetostructu-source-edition-2.md) | 210 | `declaration-track:9250a763924da1f77a8a27d77de718d351d2b0ae978bface53d3d306e2f0bf79` |
| 23 | `def` | [Cocone.toCostructuredArrowCompProj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-tocostructuredarrowcompproj.md) | 220 | `declaration-track:15cf36faf5843c2547cf8d40577b1754e9be29a5ed69cd15f8fff77cc095023e` |
| 24 | `lemma` | [Cocone.toCostructuredArrow_comp_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-tocostructuredarrow-comp-proj.md) | 225 | `result-track:46d84ab6ff0b75fd51baa40240862e876176b898f5d4ae0f1dc25fc93f05fcf8` |
| 25 | `def` | [Cocone.toCostructuredArrowCompToOverCompForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-tocostructuredarrowcomptoovercompforget.md) | 233 | `declaration-track:7350fb857aa9d6797807720e198fab300c6524a417476420b2d8e8e6bcc6e681` |
| 26 | `lemma` | [Cocone.toCostructuredArrow_comp_toOver_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-tocostructuredarrow-comp-toover-comp-forget.md) | 238 | `result-track:b810601e1be5de9dcc0370f9e87cbd4d5ed2ec2ea3891f05e34458d0925cd181` |
| 27 | `def` | [Cocone.fromCostructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-fromcostructuredarrow.md) | 244 | `declaration-track:febf80736d70f8f177c51b3b409a9234c2a0487995efff2e8559e28a73a4dad2` |
| 28 | `def` | [Cocone.toCostructuredArrowCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-tocostructuredarrowcocone.md) | 251 | `declaration-track:726c1a9bf6f0928035c62f06f1aa72cf985a3a7ece8ccef6a762f597d43999e0` |
| 29 | `def` | [Cocone.toStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-tostructuredarrow.md) | 260 | `declaration-track:5ffd28a6f05e0f1157e1d7b99afe8a3f8086fcee1371c702443e726c401ff2b0` |
| 30 | `def` | [Cocone.fromStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-fromstructuredarrow.md) | 269 | `declaration-track:573eb298ef6f057d77a640612eb34910ce0387ada7213f10b358b40838fe2749` |
| 31 | `def` | [Cocone.equivStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-equivstructuredarrow.md) | 283 | `declaration-track:2ed4490618fce4d53809a4a107a86718753fbe99b2e504d01cdec0b94fc2e8e0` |
| 32 | `def` | [Cocone.isColimitEquivIsInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/cocone-iscolimitequivisinitial.md) | 290 | `declaration-track:942fd2607b689e591c9c0db3c8426493778f1711929d1b7ef64534e1b756d631` |
| 33 | `theorem` | [hasColimit_iff_hasInitial_cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/hascolimit-iff-hasinitial-cocone.md) | 298 | `result-track:f624357668dc325e23fea9093c2ab1b817778b60707034515f75b8c1a1142f0a` |
| 34 | `theorem` | [hasColimitsOfShape_iff_isRightAdjoint_const](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/hascolimitsofshape-iff-isrightadjoint-const.md) | 304 | `result-track:a7551779fa8d4db019938fc488a1b696418eeb2fb9669f54fab564fe44158140` |
| 35 | `theorem` | [IsColimit.descCoconeMorphism_eq_isInitial_to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/iscolimit-desccoconemorphism-eq-isinitial-to.md) | 316 | `result-track:56ce92107c810748fb9d4bd208f162e1cec7f1cd702ad6ac1ff5c1dd33cde8a5` |
| 36 | `theorem` | [IsInitial.to_eq_descCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/isinitial-to-eq-desccoconemorphism.md) | 322 | `result-track:e5ff2559ee5f425dfe2039486a6fe8bd90fda8f6728f167dc12c363c93912255` |
| 37 | `def` | [IsColimit.ofPreservesCoconeInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/iscolimit-ofpreservescoconeinitial.md) | 329 | `declaration-track:e9475cc0dab64ed95c430c705e92a6139e076cb784351d1f65ba001633391846` |
| 38 | `def` | [IsColimit.ofReflectsCoconeInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConeCategoryNamespaced.lean/declarations/iscolimit-ofreflectscoconeinitial.md) | 336 | `declaration-track:4dedde216e26676d500cc4afc5bc913dd936b54a36e3a1894766442cd1dc4567` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=646cd62e269fa8bd882f28e9dcc7df492f3aa8db8faae30077dd9a6a51bd9a51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variant52ed86e9d1b33d99bb94120ddcf894a3174592999a78778955d01b2daec1b611.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variant52ed86e9d1b33d99bb94120ddcf894a3174592999a78778955d01b2daec1b611.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

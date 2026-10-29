# Verification target: Classifier Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cba0db2064d48506716fd883ff835164b66e2b4f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Variant0365a8bc9bb504e4d9fefc9752a50a80fff0e55b7587c7a88e1820085e35457b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cba0db2064d48506716fd883ff835164b66e2b4f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Variant0365a8bc9bb504e4d9fefc9752a50a80fff0e55b7587c7a88e1820085e35457b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Variant0365a8bc9bb504e4d9fefc9752a50a80fff0e55b7587c7a88e1820085e35457b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Balanced` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Presheaf` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Classifier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/classifier-source-edition-2.md) | 88 | `declaration-track:6cc38cfcc3f53a6c9dc75c119654a31396840dc30a6643ff4f475f39601f077f` |
| 2 | `class` | [HasClassifier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/hasclassifier.md) | 103 | `declaration-track:08a52ddd363008468139cbcc8449a26a518b5f85350b44d1e0813d6a7504193a` |
| 3 | `abbrev` | [Ω](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/anonymous-source-edition-4.md) | 114 | `declaration-track:91e055ae408d1c30f48973cea576e842ddc0a673e936d0e8ddd0cee441759e24` |
| 4 | `abbrev` | [truth](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/truth.md) | 117 | `declaration-track:713c9bc540ef55d97e41c254745f58c778ce2fe957aa3c250ba8135f702cf8dc` |
| 5 | `def` | [χ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/anonymous.md) | 123 | `declaration-track:192774f3687696986b5474d08677f5830090a651f4996fab43e15e0150eec6d4` |
| 6 | `lemma` | [isPullback_χ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/ispullback-source-edition-2.md) | 137 | `result-track:e593681f157bdab44e6cc4e66b5ee8302d6fb062e38203c85f5bcb973ef86f07` |
| 7 | `lemma` | [comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/comm.md) | 152 | `result-track:190377875b3b1a7e5d595490cbcd1ad57c727d0cf350284abdfe7057daa79c77` |
| 8 | `lemma` | [unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/unique.md) | 157 | `result-track:4d217ddf8d3348b7d043e28bd4839db113ca02ba0609bc177076b3d6ccb2753b` |
| 9 | `instance` | [truthIsRegularMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/truthisregularmono.md) | 161 | `declaration-track:a26b1d0ba658e05d55424250493cea77a32803b50c0a0f92695e0c54f7684f45` |
| 10 | `instance` | [isRegularMonoCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/isregularmonocategory.md) | 179 | `declaration-track:bbf90d68e213f80720c29ab9de54515da0fb9d439494d95cbf2380ee8c996370` |
| 11 | `instance` | [reflectsIsomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/reflectsisomorphisms.md) | 186 | `declaration-track:261134547815e4730ec3a0d874b22fac411ddac172c85067e0ec1b1309b52162` |
| 12 | `instance` | [reflectsIsomorphismsOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/reflectsisomorphismsop.md) | 193 | `declaration-track:3fffe43a4cd508972930a80ff50d1ebadaea9e44dbfa66aa44045703390425d6` |
| 13 | `lemma` | [surjective_χ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/surjective.md) | 215 | `result-track:49cc281f82a5cf38bede4dac82ddf3385ef614cef0107cd96af471d13ecd8ad8` |
| 14 | `lemma` | [pullback_χ_obj_mk_truth](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/pullback-obj-mk-truth.md) | 222 | `result-track:072e025cf19d83ac6238259933d2c9f54c683602c5cd3e625818a709e469e72d` |
| 15 | `lemma` | [χ_pullback_obj_mk_truth_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/pullback-obj-mk-truth-arrow.md) | 227 | `result-track:8b07799ec955f2448709be8a331eed43d5b7ffe7726d36bdb16282db91407ecb` |
| 16 | `def` | [representableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/representableby.md) | 239 | `declaration-track:829c335893dfe66eafdea5633c3d5c8906a5f08e954e835eed8f4b41dba008f0` |
| 17 | `abbrev` | [SubobjectRepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/subobjectrepresentableby.md) | 259 | `declaration-track:7da9d968c49d219b5809623a5e5b1a5f7302aed5b957c527569137aac1027654` |
| 18 | `def` | [Ω₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/anonymous-source-edition-5.md) | 267 | `declaration-track:9f52b53ccd02424784ea7fbe41c4b9f77a4fbc056ca38f23c56e2c866a7a0028` |
| 19 | `lemma` | [homEquiv_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/homequiv-eq.md) | 271 | `result-track:17b668a19ccab7dab4c60ba25961a4f27d553c8f441faea599a60962998d25b8` |
| 20 | `lemma` | [pullback_homEquiv_symm_obj_Ω₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/pullback-homequiv-symm-obj.md) | 277 | `result-track:b4c50b16e7fde5b59ddab6a38d998cf8396fe87e02338e5e6067ebb6a13a39f8` |
| 21 | `def` | [χ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/anonymous-source-edition-3.md) | 286 | `declaration-track:6f67515932aed8f2577b7b2dd73e60421eb2194f1e69812f613e59675c25ca3e` |
| 22 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/iso.md) | 290 | `declaration-track:8cb0e341b38776753406df09d03d5964dcc7184b042cd204b8243f952cdeb647` |
| 23 | `def` | [π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/anonymous-source-edition-2.md) | 306 | `declaration-track:4ef6af7d7085aac5f6e7c825c7dfb09760470a82fde82fc7860cfb111e593932` |
| 24 | `lemma` | [iso_inv_left_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/iso-inv-left.md) | 310 | `result-track:55ef7068b94ff149aab9b899d35d8f13df668e5c82c5ddcb846b3e4c71511e9e` |
| 25 | `lemma` | [iso_inv_left_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/iso-inv-left-comp.md) | 318 | `result-track:d4cc62bde075bec2694e2e8db65db9e611c7c4f8e112799e6d40e491eb4e25a0` |
| 26 | `lemma` | [isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/ispullback.md) | 323 | `result-track:9f702936f0b5862f8d9bbb24466d39856b010b0882c1fbed22b746e7d6502bdf` |
| 27 | `lemma` | [uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/uniq.md) | 331 | `result-track:c9cae95370454fe26bc0d3f654057d19806edec5807c28113dee842861fcac54` |
| 28 | `def` | [isTerminalΩ₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/isterminal.md) | 340 | `declaration-track:217d7833e6cbac2ec7615aa1cb98566c020b615b16b650108f7f3f862737730e` |
| 29 | `lemma` | [hasTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/hasterminal.md) | 351 | `result-track:bc270e75c40cbf95afc88afab03940db821b0f1fafc635ff50b0ccfb4d413623` |
| 30 | `def` | [isoΩ₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/iso-source-edition-2.md) | 356 | `declaration-track:eb37ac452028a3310474c5ac905b0c40af3f0289e4db8f29e0c4f843d5619f79` |
| 31 | `def` | [classifier](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/classifier.md) | 361 | `declaration-track:62af08f888858e814efedef3546881826cc96606b0b03d53520aa494cb801385` |
| 32 | `theorem` | [isRepresentable_hasClassifier_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClassifierNamespaced.lean/declarations/isrepresentable-hasclassifier-iff.md) | 379 | `result-track:c40361cd94b02f69bc3f4afeb05e158478a4c45a7f2145b52ba4340abca94528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77b20549b9e15cd0cb3e46f138d0071d41a8be251f886ee41246aff4fad05c18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Variant0365a8bc9bb504e4d9fefc9752a50a80fff0e55b7587c7a88e1820085e35457b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Variant0365a8bc9bb504e4d9fefc9752a50a80fff0e55b7587c7a88e1820085e35457b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

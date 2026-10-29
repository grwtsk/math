# Verification target: Sites Sheaf Namespaced Is Separated

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64cf924e016cc5f22a15de45aadc0babea681345",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantbbd5eb31270ab2b7699c282006d878110dd1fbdebd1fba98158f8a22bd80005e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64cf924e016cc5f22a15de45aadc0babea681345`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantbbd5eb31270ab2b7699c282006d878110dd1fbdebd1fba98158f8a22bd80005e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantbbd5eb31270ab2b7699c282006d878110dd1fbdebd1fba98158f8a22bd80005e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.FunctorCategory` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.SheafOfTypes` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.EqualizerSheafCondition` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf.md) | 81 | `declaration-track:506e2c968b6c4bdd135a0dd18bf2b16ef2257a76a8a127bb2d6fa1399efd87cc` |
| 2 | `def` | [IsSeparated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/isseparated.md) | 86 | `declaration-track:b4262ebd12ea4715df43421d2030a0adc0e64a7b8ecb037060cde633dcab5b4f` |
| 3 | `def` | [conesEquivSieveCompatibleFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/conesequivsievecompatiblefamily.md) | 101 | `declaration-track:a3e12aff549fa61403dd3d4b082d39714c06402faa90b5bad8e00d50485f272b` |
| 4 | `def` | [Sites Sheaf Namespaced Is Separated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/cone.md) | 125 | `declaration-track:cee4342f5c7bc2754bc7ef8be77a677bf4b7535d6f1040203fa9ffd386744a29` |
| 5 | `def` | [homEquivAmalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/homequivamalgamation.md) | 133 | `declaration-track:d086602b22585fb4cff15e375eceeedea15dfcac9ed8d225b0dc60b1854753e1` |
| 6 | `theorem` | [isLimit_iff_isSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/islimit-iff-issheaffor.md) | 144 | `result-track:eaa0f0516dd4b44a4d75864d75e1882a37950fd0461f3471af951a940e64a131` |
| 7 | `theorem` | [subsingleton_iff_isSeparatedFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/subsingleton-iff-isseparatedfor.md) | 164 | `result-track:8640c57f9152db4f9a585f54ece48727ba504a14dbb17753b3d773d795cf656a` |
| 8 | `theorem` | [isSheaf_iff_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-iff-islimit.md) | 187 | `result-track:a345bbdf5a922f65070fc66d4b22f45386aff82fcd87e0e33619483d37110a0a` |
| 9 | `theorem` | [isSeparated_iff_subsingleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/isseparated-iff-subsingleton.md) | 196 | `result-track:5c08a818c3fe41487f26dd2e5fc38bf554c1f04d5ac74d1f215b22be65f4338d` |
| 10 | `theorem` | [isLimit_iff_isSheafFor_presieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/islimit-iff-issheaffor-presieve.md) | 205 | `result-track:3f39bc2406b4ef2063de5235706f160166a43cf907df3a83ea8c3f3ef02ca716` |
| 11 | `theorem` | [isSheaf_iff_isLimit_pretopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-iff-islimit-pretopology.md) | 213 | `result-track:9c4cef2bf2d75230a102f53dae821c655d099f255d934783bbe670035731bf4c` |
| 12 | `def` | [IsSheaf.amalgamate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-amalgamate.md) | 231 | `declaration-track:db0a4947ff5658f472f6d722655c2a7135142a5aec6bf2ab6b294ebd21bd63ad` |
| 13 | `theorem` | [IsSheaf.amalgamate_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-amalgamate-map.md) | 239 | `result-track:1899bffed4263cb72e8374c43c8bb408d37c325e015251e54408d1a1c1975e69` |
| 14 | `theorem` | [IsSheaf.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-hom-ext.md) | 247 | `result-track:003013ec84313a117db474a7cdf3dc0f55f4f66c3dd4d894af42caeab637177c` |
| 15 | `lemma` | [IsSheaf.hom_ext_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-hom-ext-ofarrows.md) | 252 | `result-track:371a9dc8597dcad4e80a42af03dc9714b3ba7dc5de8588ab249f44c7283e0233` |
| 16 | `lemma` | [IsSheaf.existsUnique_amalgamation_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-existsunique-amalgamation-ofarrows.md) | 271 | `result-track:c1217c8be18be924cd4d546f98d1c9462608f53b2b5b1e45a6b7e53219096270` |
| 17 | `def` | [IsSheaf.amalgamateOfArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-amalgamateofarrows.md) | 282 | `declaration-track:cb00d1426b52bab9fd9f7cd8446371171c53f8769ad930a48a2464e241535790` |
| 18 | `lemma` | [IsSheaf.amalgamateOfArrows_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-amalgamateofarrows-map.md) | 286 | `result-track:5732eb9c0c2883cd6a68f1ca86f9321b0a25e8ef30115d104eb690bc0fc8b470` |
| 19 | `theorem` | [isSheaf_of_iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-of-iso-iff.md) | 292 | `result-track:25f328280b7290cc001d052c8badc939f951096add0fbf4110c502e0a544f32d` |
| 20 | `theorem` | [isSheaf_of_isTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-of-isterminal.md) | 299 | `result-track:f4b22d387732a92ab0f35018b1b296bff732328055eec269d0618612391da4dd` |
| 21 | `structure` | [Sheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheaf.md) | 310 | `declaration-track:79f1baa7863cdb3f752cc86ec3aacbc13fc6c942ff984b69628df2edb2b9160b` |
| 22 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/hom.md) | 322 | `declaration-track:aa872c6cbf9862b12dcaf60f91b402396278b67765f62c06b347c1b4c116688e` |
| 23 | `instance` | [instCategorySheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instcategorysheaf.md) | 327 | `declaration-track:ff9a96401df237b85065659a1e4d1eeb21af90663583e6d836350a13d86ef154` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instance-source-edition-10.md) | 336 | `declaration-track:fffceb4aadf564b3e5b1c11c1352c09a4ccbb93e6d5e82923d0db95d6396fb90` |
| 25 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/hom-ext.md) | 340 | `result-track:b89b5824c5353d7aebad8d02f18c449b307dc565894409a71052bc0ee2a38b8b` |
| 26 | `def` | [sheafToPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheaftopresheaf.md) | 347 | `declaration-track:70905072ab6d33e2f393cffedb12920e514e1954b8a1120b6ca71e83db701e2d` |
| 27 | `abbrev` | [sheafSections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheafsections.md) | 354 | `declaration-track:ab0e057e89c6d263200539a15c6dc651dbca646c5de280bbd4d9bf6c2a14a13f` |
| 28 | `def` | [sheafSectionsNatIsoEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheafsectionsnatisoevaluation.md) | 358 | `declaration-track:9bae9e88f72fee3708db6eeb27af0d96f3264f290b9ef5a35d6e854ad4a11dcc` |
| 29 | `def` | [fullyFaithfulSheafToPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/fullyfaithfulsheaftopresheaf.md) | 364 | `declaration-track:c1f80c1ce7b55aa30bb112ce9662a5f2a027bf0b97aa4464a49d08a3db64dd78` |
| 30 | `abbrev` | [Sheaf.homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheaf-homequiv.md) | 369 | `declaration-track:86b97d0ea4be7ad15dcdab99b91101cfe573d252cab551c89c3f3ab458c9e952` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instance.md) | 372 | `declaration-track:43a7858acd1aa21ad5d3b4d7a272fe52e1e4bc46471551e3f18ff9bc0f9cb8d0` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instance-source-edition-8.md) | 375 | `declaration-track:e9f06bd543071ae3552eed6b00cb70e8c3a47b1dc0bf210ca1e84a3fd16a2b2c` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instance-source-edition-2.md) | 378 | `declaration-track:53d0559dad181dccb02f5b485ef5041d9635fed5c3ff94db90752f24357edb94` |
| 34 | `theorem` | [Sheaf.Hom.mono_of_presheaf_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheaf-hom-mono-of-presheaf-mono.md) | 383 | `result-track:414d477af9b28baa171d9723e54c291c0a3703dc30216c1594fec466d6a70c2b` |
| 35 | `instance` | [Sheaf.Hom.epi_of_presheaf_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheaf-hom-epi-of-presheaf-epi.md) | 386 | `declaration-track:46d9c3ab347c907c4f7b9e1d6bfd4e87a90860601573a07fd2a8be45ff6596e2` |
| 36 | `theorem` | [isSheaf_iff_isSheaf_of_type](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-iff-issheaf-of-type.md) | 389 | `result-track:3b98f586c007912246c862fafdfebe581689d20097da76ab5dd2de1a94dbc3ca` |
| 37 | `def` | [sheafOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheafover.md) | 411 | `declaration-track:b8c533af6f1935df5b37faa94ac60275f743de4ee11417b954c55e69bf6be5d2` |
| 38 | `lemma` | [Presheaf.IsSheaf.isSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/presheaf-issheaf-issheaffor.md) | 419 | `result-track:61f049acf814488ea7eb0d76924eee2ac135206aad345ac6304e3e6d7ab389c0` |
| 39 | `lemma` | [Presheaf.isSheaf_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/presheaf-issheaf-bot.md) | 425 | `result-track:2d0d7a53d8a62c1d8b4fb3c8c7c0ab594b07572e6b29eaf14d05e4626c725664` |
| 40 | `def` | [sheafBotEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheafbotequivalence.md) | 432 | `declaration-track:7c69515f3cbf1ea81da3fdc9195c761095e21e2854ea74fe6c1d4d058d38b47c` |
| 41 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instance-source-edition-9.md) | 440 | `declaration-track:fd26b72e5f0dfdcbf8980d1d9f18d10840ee508ee19ec3e4a528fe89cd451556` |
| 42 | `def` | [Sheaf.isTerminalOfBotCover](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheaf-isterminalofbotcover.md) | 446 | `declaration-track:644b310b7fa16a6a4dfad6c29616d09ae6b51d28196f649ceaa97034c2308e64` |
| 43 | `instance` | [sheafHomHasZSMul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheafhomhaszsmul.md) | 459 | `declaration-track:1e506e3229e2a8b6fd032f50ac82a040c79056fbeda1863438aa9727536de420` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instance-source-edition-5.md) | 471 | `declaration-track:96376c3deb0363fd342081cafdddf21f9bd8795ce8448405badce41bcef1bde1` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instance-source-edition-4.md) | 473 | `declaration-track:9510f292e2f2f65c3b8980e0127024128422783f9d8d657f71f3aede2a4d4efa` |
| 46 | `instance` | [sheafHomHasNSMul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheafhomhasnsmul.md) | 475 | `declaration-track:a15a06aed0e57af8e98ed5762a63b2b81209f71c80b302c4a5118167a0561937` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instance-source-edition-3.md) | 485 | `declaration-track:83bdfe45e8adec82f262c9344ac4ecd4533a1d906603610106c474f324f23480` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instance-source-edition-6.md) | 487 | `declaration-track:c721c7b0731c94a0e1c71a06aa4b910c2c8f698946f2b72afb9db304547b13ba` |
| 49 | `theorem` | [Sheaf.Hom.add_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheaf-hom-add-app.md) | 490 | `result-track:3207df6985632cba4991aa141a6d4b6d907cc53217e91aadae805abc26048a30` |
| 50 | `instance` | [Sheaf.Hom.addCommGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/sheaf-hom-addcommgroup.md) | 493 | `declaration-track:c9128f325fbb3c4a62ad8a110a128740f76d971030a9312c3d847f7ebb5b376f` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/instance-source-edition-7.md) | 498 | `declaration-track:d706777eefcb863aef89e74692f09c505769a59d3084526c2736601c3c082c8e` |
| 52 | `def` | [isLimitOfIsSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/islimitofissheaf.md) | 532 | `declaration-track:8fa0ab379fb2fc8929933d0c6ca634d58b18289893f79154410e41c983a8e38c` |
| 53 | `theorem` | [isSheaf_iff_multifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-iff-multifork.md) | 550 | `result-track:3636e8bd5fe7dd2360c54462ca796e80dc6dbfb3620035e5d7cc227f0b19c736` |
| 54 | `def` | [IsSheaf.isLimitMultifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-islimitmultifork.md) | 574 | `declaration-track:d544fc8c0ed7bea1f2f97c769ed5087ba3884b5a05e0b175465783ff18edf766` |
| 55 | `theorem` | [isSheaf_iff_multiequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-iff-multiequalizer.md) | 579 | `result-track:af4d7f2d7e97ce860d2f191d736317b3cc14aefbce7759eb8bb14282b40ef2ee` |
| 56 | `def` | [firstObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/firstobj.md) | 604 | `declaration-track:b367bd6740f7224cca38234eed04ce8dac72a082d4e2a473cbb9180032f3bdd3` |
| 57 | `def` | [forkMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/forkmap.md) | 610 | `declaration-track:d2e5cf2089754312dfe36ce90c92f7af1da157cd0c6cc8211d8c64f0af11c421` |
| 58 | `def` | [secondObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/secondobj.md) | 619 | `declaration-track:f4d277699de0d4244f7ecc7c2c4c8a8e36d16c42bbdc7daa9f72e7eaeb590eac` |
| 59 | `def` | [firstMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/firstmap.md) | 625 | `declaration-track:5df283349b038461c6f86fa9094d85e86e0e5ab50ead6b4cbd7366496543fe0c` |
| 60 | `def` | [secondMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/secondmap.md) | 630 | `declaration-track:3cdbc0489d59c7cbe8e827c4bf538d6549b61e80b05a0cf739694eadec4ed052` |
| 61 | `theorem` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/w.md) | 633 | `result-track:616d40617cd632f726b8fef7684735d27282a749f8888c63849ca7e4855dfaa4` |
| 62 | `def` | [IsSheaf'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-source-edition-2.md) | 644 | `declaration-track:64de0ce8acc986cbdbfd5fd9853bfa58f082500e19df48dbc7a3ae003375da64` |
| 63 | `def` | [isSheafForIsSheafFor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheafforissheaffor.md) | 650 | `declaration-track:5c51a272894fccef5493c8261db5c03b9a274ae6c53a9bfaf91c37bfe15cc221` |
| 64 | `theorem` | [isSheaf_iff_isSheaf'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-iff-issheaf.md) | 674 | `result-track:9dfa1e3ffa10f7eca096ca7ad7e445a19884efef6a17a8bf75dab98eab0513dd` |
| 65 | `theorem` | [isSheaf_of_isSheaf_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-of-issheaf-comp.md) | 698 | `result-track:b50c66c1e23f5f8000a413568e2971fbd2d22822fabaeea187091c15397ecf24` |
| 66 | `theorem` | [isSheaf_comp_of_isSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-comp-of-issheaf.md) | 703 | `result-track:603555362846f699dce2234e576817e2494fcb9f1b065d93dc310c2f5302afaa` |
| 67 | `theorem` | [isSheaf_iff_isSheaf_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-iff-issheaf-comp.md) | 708 | `result-track:c66b70193e9e9afcd7c353d23631f4265f8c1b72f9c5ef0542d2d4a8478f8a43` |
| 68 | `theorem` | [isSheaf_iff_isSheaf_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafNamespacedIsSeparated.lean/declarations/issheaf-iff-issheaf-forget.md) | 723 | `result-track:91e6c31efe138f792a6863f2c860248c55b4ebcfdb73315418429ab90497781a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b74b575f16b9602c9b8cbdd491dbb026f8959bb0743bc1cc1581351fbdb76feb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantbbd5eb31270ab2b7699c282006d878110dd1fbdebd1fba98158f8a22bd80005e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantbbd5eb31270ab2b7699c282006d878110dd1fbdebd1fba98158f8a22bd80005e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

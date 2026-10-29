# Verification target: Representable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "815f038e77ebf30bfbbeb3af62cc1e015ab8d2d7",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant14c23e2eef82b3ea66dcda06647bfaf4482a86cb9b62c33816fe757c4caeeef3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `815f038e77ebf30bfbbeb3af62cc1e015ab8d2d7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant14c23e2eef82b3ea66dcda06647bfaf4482a86cb9b62c33816fe757c4caeeef3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant14c23e2eef82b3ea66dcda06647bfaf4482a86cb9b62c33816fe757c4caeeef3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.relativelyRepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/functor-relativelyrepresentable.md) | 100 | `declaration-track:ec72c2c2898ae6ca97b70661ea2b444e34da942bec9f6a93deb92dad444b012d` |
| 2 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-source-edition-3.md) | 124 | `declaration-track:adf8c4b8ff6f4aa066053b48bdda264fea041d723713ff7c2831e69587f40dcd` |
| 3 | `abbrev` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/snd.md) | 137 | `declaration-track:1e313c05dd7179d8f51c2393eee406e19a6116ac761ede4c7163d5e9872d62a9` |
| 4 | `abbrev` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/fst.md) | 151 | `declaration-track:c24a2d324b06c991437fc527c4a94f4796af59b570b5513c6c332f4f15e154b8` |
| 5 | `abbrev` | [fst'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/fst-source-edition-2.md) | 156 | `declaration-track:e7b5fd96dc5c9000924b9efe2a339de09ac5a51c696b257f8f85e976a441db87` |
| 6 | `lemma` | [map_fst'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/map-fst.md) | 159 | `result-track:94278ff3291f506be2201b03f496a1f6cb3240290f7819cc284356cf270793d2` |
| 7 | `lemma` | [isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/ispullback.md) | 162 | `result-track:8e9493d3e6e8e03c538f21f100efd792deaa33e0607bb33e88538d5326a44777` |
| 8 | `lemma` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/w-source-edition-2.md) | 166 | `result-track:8facabbb05283333894dadc9becd52e1f4ffe592690a23f223395bc4517a0196` |
| 9 | `lemma` | [isPullback'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/ispullback-source-edition-2.md) | 169 | `result-track:cee405088163b30dc0754160820d811f5c3283bbd70b6c6bd815b0384a6b1075` |
| 10 | `lemma` | [w'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/w.md) | 173 | `result-track:83f9edf99fd766620bc95a05060481c5fddb5e9ab41f486a77bfddb8c71f23b9` |
| 11 | `lemma` | [isPullback_of_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/ispullback-of-map.md) | 177 | `result-track:5687d9955089f3169cd144df0ca48f0e52f5fc2145767201c74f09f39fc2d9dd` |
| 12 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/hom-ext.md) | 188 | `result-track:09f767c32622196443b35c72e86e7067a08dd828309b679ac22e200a382fb8e5` |
| 13 | `lemma` | [hom_ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/hom-ext-source-edition-2.md) | 199 | `result-track:ce5347fd2ada12c09c42b93d45eccb108f4f604bafcf3d5661a62f92108e9bab` |
| 14 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/lift-source-edition-3.md) | 210 | `declaration-track:da4b91c560f0920b0505221cef60241a607634a3a4cd78086dc73830c798884b` |
| 15 | `lemma` | [lift_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/lift-fst-source-edition-2.md) | 214 | `result-track:6eea99cf5f24ae978980cebca4ca22f3b6a79a4c75982e361f890c5d2de2a086` |
| 16 | `lemma` | [lift_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/lift-snd-source-edition-2.md) | 218 | `result-track:d375459c3bd0e1230e11373976a62a7d59ff9297f19b417b12e3ce75292d14e7` |
| 17 | `def` | [lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/lift-source-edition-2.md) | 229 | `declaration-track:d8df7e07bacfe23d4a8639618c4a4e0c0581450d96a6233661f7e27bb580b16f` |
| 18 | `lemma` | [lift'_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/lift-fst.md) | 232 | `result-track:55ae92835660616f7ca74fb60c9277202c91725c5a11d4568ef6ee5781603461` |
| 19 | `lemma` | [lift'_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/lift-snd.md) | 236 | `result-track:cbf9104223b4d0b737f78db5f74793a8fe98789147f1920af5e8dfb2c801b098` |
| 20 | `def` | [symmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/symmetry.md) | 243 | `declaration-track:5ec41a5dc1077ace65594357e362bf3294f0eede81a8176052507d9c0cd9791b` |
| 21 | `lemma` | [symmetry_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/symmetry-fst.md) | 247 | `result-track:fab88f7943d1e935d2138413ae3347036ec57fd0a4fc213a2cee3139664f39b6` |
| 22 | `lemma` | [symmetry_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/symmetry-snd.md) | 251 | `result-track:1008abdf2d3bae21e1384e035574e8f1f45dba414041fded44b605adaf4f9238` |
| 23 | `lemma` | [symmetry_symmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/symmetry-symmetry.md) | 255 | `result-track:e4de8de6659f896f723fd14a8a61c7a0095598cd342ae0b0105612b99d02c086` |
| 24 | `def` | [symmetryIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/symmetryiso.md) | 260 | `declaration-track:e699eabc4bf8a2cc0bc434a1755818da871456fb2f9e884f1a95d23dfc4925df` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/instance.md) | 264 | `declaration-track:7839275b54282bf02eff9cbcb24be18f9e56219cc917d5ef3a3f7441ee8c8b62` |
| 26 | `lemma` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/map.md) | 271 | `result-track:fc470e8e28125c7219aacf8c370edebacd7c4277d771603a948a83978be3fde6` |
| 27 | `lemma` | [of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/of-isiso.md) | 278 | `result-track:d217f2c43afa8c09e6f7b1610b86ef997bf312baea403f5f0874f05e2e92cbb7` |
| 28 | `lemma` | [isomorphisms_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/isomorphisms-le.md) | 281 | `result-track:42ab6420ad3edd18492b9066a6c08044b11ca1b51a007b6fba998c75e79d7515` |
| 29 | `instance` | [isMultiplicative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/ismultiplicative.md) | 284 | `declaration-track:432a9b4d23a39aa015fcdb94593bffdac67ecc3a319e4b6989cc34028c4da5dd` |
| 30 | `instance` | [isStableUnderBaseChange](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/isstableunderbasechange.md) | 290 | `declaration-track:abeff11a96d2c26b78289590147b4faf4b6e75c56e7518fafb72997ad327f4aa` |
| 31 | `instance` | [respectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/respectsiso.md) | 296 | `declaration-track:bc5ae50d26a3de1643c0077b43cab006204b8b0c184246107fa0e4867de104ee` |
| 32 | `def` | [relative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative.md) | 312 | `declaration-track:9b3b842f5f160c43b68b622d57daeafc897f4cd104d5558fd4adb866b0d3d672` |
| 33 | `abbrev` | [presheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/presheaf.md) | 324 | `declaration-track:2c8e85cb84e758d5108ce057aa53f960bcccf810f6a179da19c5f968b44ff2c0` |
| 34 | `lemma` | [relative.rep](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-rep.md) | 329 | `result-track:661b50b06f8809ea60ba4968279dbaae857e991a5ac14fb416ab255c2bfe9cb4` |
| 35 | `lemma` | [relative.property](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-property.md) | 332 | `result-track:ee268de979982e7e8757dfe7a4b7c71b35cedd5585f232bd3de61dc183ec9412` |
| 36 | `lemma` | [relative.property_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-property-snd.md) | 337 | `result-track:7623e1261afe92dbdb60b43258c6e46241b11218c80f3317d5d5d9bfc183f954` |
| 37 | `lemma` | [relative.of_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-of-exists.md) | 346 | `result-track:16ae6a546368539bff887685dfb3e5037f834ab2e02c5ba848f106dedbaba471` |
| 38 | `lemma` | [relative_of_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-of-snd.md) | 356 | `result-track:549e580aeaff119e80f9c883b781a14ab0a8dbaa4ad6ed7ed05b5d48c7e9053e` |
| 39 | `lemma` | [relative_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-map.md) | 364 | `result-track:5ac3158b8f75c1d61ae22a3adb279502b305294fbf27ad0d238ac5eff31f3495` |
| 40 | `lemma` | [of_relative_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/of-relative-map.md) | 372 | `result-track:74d23ff418b86cf8aae2b88b6d5d8e3eb4becaa0b8fcee91ef5eb4b1133bd85f` |
| 41 | `lemma` | [relative_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-map-iff.md) | 375 | `result-track:10bd34fa5fbc1bf2fe66babbd85a2e8582720638d231356f73c30ec29265424f` |
| 42 | `lemma` | [relative_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-monotone.md) | 382 | `result-track:3dceffb1587faa3c46bbbb8eebfe59050b41f6232fcb9ed43a378632a77b7749` |
| 43 | `lemma` | [relative_isStableUnderBaseChange](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-isstableunderbasechange.md) | 390 | `result-track:5ca9ba9117d4dad5b0d9fcfb8cef0f5b47bd1006a3ae60b6ae59ec7460a327ca` |
| 44 | `instance` | [relative_isStableUnderComposition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-isstableundercomposition.md) | 395 | `declaration-track:8d177e96d29265e2d602578b58565c55ce25c75ae27af8fb3409ea031a509612` |
| 45 | `instance` | [relative_respectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-respectsiso.md) | 407 | `declaration-track:7baba504e162b2ffa52d025eca74322ad466c5b33de215c681b83919775d6a0f` |
| 46 | `instance` | [relative_isMultiplicative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/relative-ismultiplicative.md) | 410 | `declaration-track:cf2570c3d4bc291ab304d4eb325691a6b03f8f9c1d57c6f3aa144358e45704b3` |
| 47 | `lemma` | [presheaf_monomorphisms_le_monomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/presheaf-monomorphisms-le-monomorphisms.md) | 421 | `result-track:b7e764735bc33725adaecd78ffe68c26079e083b6f5445e4f677903040f11791` |
| 48 | `lemma` | [presheaf_mono_of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/presheaf-mono-of-le.md) | 437 | `result-track:135b8a06c9a8f752c18a71a519d19fc94000d1b9af108968606a3e79c7e09dd6` |
| 49 | `lemma` | [fst'_self_eq_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/fst-self-eq-snd.md) | 442 | `result-track:c43c0258cda086a6ab3be0e3ab428842ec8f4410d8be0ee55008c9b1e8b99cfc` |
| 50 | `lemma` | [isIso_fst'_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/isiso-fst-self.md) | 448 | `result-track:ebe733c4189388bb63383cd525057bf6819fc009b1c04ce0732bb75b1dce5a3f` |
| 51 | `def` | [pullback₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback.md) | 481 | `declaration-track:18a4e9e52289f5a302915a97e7174d21a397af5a34d858bac1addf067dafff02` |
| 52 | `def` | [pullback₃.p₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-p-source-edition-2.md) | 483 | `declaration-track:7f15147a7e2890b166ee49c4c41a6495ed5aac459edbd38bff96e2a354eff3d2` |
| 53 | `def` | [pullback₃.p₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-p-source-edition-3.md) | 485 | `declaration-track:9973a24a7332dc7ca40e6cf5119af40be0f8a08ec3f4e802da0a0ecba29d88cf` |
| 54 | `def` | [pullback₃.p₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-p.md) | 487 | `declaration-track:7aaebe61caa32fd97bf8a10730ddd13c8d3bb68f233951ac322275ec7396f307` |
| 55 | `def` | [pullback₃.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-source-edition-2.md) | 490 | `declaration-track:5c3a33571708938936815779a8cc7412007a1604058e9c86037d83e9d807ea0e` |
| 56 | `lemma` | [pullback₃.map_p₁_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-map-p-comp-source-edition-3.md) | 494 | `result-track:cd9e2add4c7fad67124a12ed886584113c26f149c27370ad0c0e8e74b7a99986` |
| 57 | `lemma` | [pullback₃.map_p₂_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-map-p-comp-source-edition-2.md) | 498 | `result-track:193545e89b3c13adedd3151cc7f7ec1ed8e9bc7ac3242a4c91ee7402b700f9c3` |
| 58 | `lemma` | [pullback₃.map_p₃_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-map-p-comp.md) | 502 | `result-track:0429a665211802e5e51373cb21b4ef7a70432de12a82c18c305ce5db4717bf66` |
| 59 | `def` | [lift₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/lift.md) | 512 | `declaration-track:3cac43955339a032ff280499bd8b3ba887d2c61013948af43c54cab3eb3858bd` |
| 60 | `lemma` | [lift₃_p₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/lift-p-source-edition-2.md) | 517 | `result-track:b1711158f2c62d86b7d6881fa341d8083b32ac50b6043c7ac57cc24d5af07e1a` |
| 61 | `lemma` | [lift₃_p₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/lift-p.md) | 521 | `result-track:30ebe301839a967b59d683123e16cded83b664a791c2c15ee21399904b5a6948` |
| 62 | `lemma` | [lift₃_p₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/lift-p-source-edition-3.md) | 525 | `result-track:c016517492d2f2629194c8504eab2d55c0af7e81c8b5229cf60a6e23d30d3984` |
| 63 | `lemma` | [pullback₃.fst_fst'_eq_p₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-fst-fst-eq-p.md) | 531 | `result-track:2b9f856371869bfb18b0795566645c0e5dfc3b632bc1c1574fe7aeb31e3143b0` |
| 64 | `lemma` | [pullback₃.fst_snd_eq_p₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-fst-snd-eq-p.md) | 534 | `result-track:f0d569193f87e8d1bcd5147eb30fb54ff8be144f9531fab05b55629a7a5880df` |
| 65 | `lemma` | [pullback₃.snd_snd_eq_p₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-snd-snd-eq-p.md) | 537 | `result-track:f363e4966b7132148e1988528d27d59b197e03c8aaa54c8918792ee7008add64` |
| 66 | `lemma` | [pullback₃.snd_fst'_eq_p₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-snd-fst-eq-p.md) | 540 | `result-track:e53c891010858313a0e05fb556158cbe4f1ef2e7e861eceeebacfb20f939fb2b` |
| 67 | `lemma` | [pullback₃.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Representable.lean/declarations/pullback-hom-ext.md) | 546 | `result-track:d7ed5a05f8e736d1258d21f03a123d578e1b1f279ba75d14e4db14d76021973d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=978c2a2de99565bd77e0e44c20743facc0ceaa62678da4722a756fe11f2d54a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant14c23e2eef82b3ea66dcda06647bfaf4482a86cb9b62c33816fe757c4caeeef3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant14c23e2eef82b3ea66dcda06647bfaf4482a86cb9b62c33816fe757c4caeeef3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

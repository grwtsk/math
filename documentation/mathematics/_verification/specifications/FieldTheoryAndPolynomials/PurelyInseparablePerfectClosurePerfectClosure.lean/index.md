# Verification target: Purely Inseparable Perfect Closure Perfect Closure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3166de4a719f136cdbed6671d899571828a3ebee",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3166de4a719f136cdbed6671d899571828a3ebee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.IntermediateField` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [perfectClosure](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectclosure.md) | 57 | `declaration-track:3465d605f9b4211134e9245f50b483b86cb11fc907344bd5fbcfe70e66de9824` |
| 2 | `theorem` | [mem_perfectClosure_iff](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/mem-perfectclosure-iff.md) | 67 | `result-track:39dffdbfe03b73db154584f959168c0898efc8e02d466ef547dbba075c2fe499` |
| 3 | `theorem` | [mem_perfectClosure_iff_pow_mem](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/mem-perfectclosure-iff-pow-mem.md) | 70 | `result-track:62b23132196d213a6ae474ca61e9fa6e07fb4889a5ebc3eb952f5d5e95f67e90` |
| 4 | `theorem` | [mem_perfectClosure_iff_natSepDegree_eq_one](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/mem-perfectclosure-iff-natsepdegree-eq-one.md) | 76 | `result-track:c1cc5cff9064b1cadce46367f1fff13e23c68a5b1c465c4c1ee7b54058d9e2b0` |
| 5 | `theorem` | [isPurelyInseparable_iff_perfectClosure_eq_top](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/ispurelyinseparable-iff-perfectclosure-eq-top.md) | 82 | `result-track:afd4131d7ee54f45648fc2e3d4a1e004ebd52d9385aaf32e693e8bb58eafb1fa` |
| 6 | `instance` | [perfectClosure.isPurelyInseparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectclosure-ispurelyinseparable.md) | 90 | `declaration-track:d2f6f82fb419374292da3481e1bd4601da6cf139f2a69528aaf29dc0f11609c5` |
| 7 | `instance` | [perfectClosure.isAlgebraic](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectclosure-isalgebraic.md) | 95 | `declaration-track:ee1b85d5dcead4860364292ece011b959f0ac7cd377cc0109c852e6244cd6e30` |
| 8 | `theorem` | [perfectClosure.eq_bot_of_isSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectclosure-eq-bot-of-isseparable.md) | 101 | `result-track:1f595b60d3b7e2a5d2ffbaaad998a84b5c5df3d92e78ee4ec225276e844f0244` |
| 9 | `theorem` | [le_perfectClosure](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/le-perfectclosure.md) | 107 | `result-track:5fd06385e2f531e0c8c2784ba7c7bb57056cc43848302c580d7a4f771e9e22ef` |
| 10 | `theorem` | [le_perfectClosure_iff](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/le-perfectclosure-iff.md) | 116 | `result-track:7be04d2b244879a27194fb021337125b688a1643feba8352bd8c686761fccca7` |
| 11 | `theorem` | [separableClosure_inf_perfectClosure](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/separableclosure-inf-perfectclosure.md) | 123 | `result-track:6d3f314a4c68fa4f8e1e6ce0b1dd927473bc289532bc89a5936193b852ec9cdb` |
| 12 | `theorem` | [map_mem_perfectClosure_iff](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/map-mem-perfectclosure-iff.md) | 134 | `result-track:44972e5e8034ba51861644a865c006f0b31568dbe11016f0de80bcba3002eed2` |
| 13 | `theorem` | [perfectClosure.comap_eq_of_algHom](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectclosure-comap-eq-of-alghom.md) | 144 | `result-track:0961ecc0718bb6020f9f56b087ee2bd811e505dd68633c1472ac486f25289d4d` |
| 14 | `theorem` | [perfectClosure.map_le_of_algHom](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectclosure-map-le-of-alghom.md) | 151 | `result-track:20ffbd8b052d4f0a6cbb0b11b43376e749f7693d2acf0159064fd547f24e8eff` |
| 15 | `theorem` | [perfectClosure.map_eq_of_algEquiv](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectclosure-map-eq-of-algequiv.md) | 157 | `result-track:e65fb91c6a39246578f1373f0e1c25449b6b8ff9a6f9cda53fd8f33da278d420` |
| 16 | `def` | [perfectClosure.algEquivOfAlgEquiv](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectclosure-algequivofalgequiv.md) | 164 | `declaration-track:225f4ba056f882ae6062797f725b209ca4a7be9a43076682b9cea7e5354442ed` |
| 17 | `instance` | [perfectClosure.perfectRing](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectclosure-perfectring.md) | 175 | `declaration-track:b90d5c7278168291a72dd9ab062e95e2bb364de0bbf5022de344e9bcd85520f8` |
| 18 | `instance` | [perfectClosure.perfectField](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectclosure-perfectfield.md) | 187 | `declaration-track:2ee8976b480ad4325ed5e52cae7e373ef57a652d51ea0495b58570aa90bb0b99` |
| 19 | `theorem` | [isPurelyInseparable_adjoin_simple_iff_natSepDegree_eq_one](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/ispurelyinseparable-adjoin-simple-iff-natsepdegree-eq-one.md) | 196 | `result-track:5e10356f425fd5938bb628675eb286b67c9f69170d4d9d99077c0fe4aa8a4307` |
| 20 | `theorem` | [isPurelyInseparable_adjoin_simple_iff_pow_mem](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/ispurelyinseparable-adjoin-simple-iff-pow-mem.md) | 202 | `result-track:0574dfc0c68cb0411f134cf101dd70c046c692a9fa4f74f7e3df83dd3bfdd5d0` |
| 21 | `theorem` | [isPurelyInseparable_adjoin_iff_pow_mem](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/ispurelyinseparable-adjoin-iff-pow-mem.md) | 208 | `result-track:d16c6bdc2506ecbf4bf4291d0cab121c1b51bd9b2baadbbb44a7f0d37d3c1fa7` |
| 22 | `instance` | [isPurelyInseparable_sup](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/ispurelyinseparable-sup.md) | 214 | `declaration-track:631658835740f0e79bc53e97baf87161bc43662fd121170d4dcb50933700bd11` |
| 23 | `instance` | [isPurelyInseparable_iSup](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/ispurelyinseparable-isup.md) | 221 | `declaration-track:8658fcf8e99016a4680ed66d78ec1fa5f06cd8bc462a874eea4da798ad2d8732` |
| 24 | `theorem` | [adjoin_eq_adjoin_pow_expChar_pow_of_isSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/adjoin-eq-adjoin-pow-expchar-pow-of-isseparable.md) | 229 | `result-track:2576e3ef86022c05b967d3a2487841a4e27424afc50ad1793bf787f85d8e1c4b` |
| 25 | `theorem` | [adjoin_eq_adjoin_pow_expChar_pow_of_isSeparable'](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/adjoin-eq-adjoin-pow-expchar-pow-of-isseparable-source-edition-2.md) | 250 | `result-track:7de27508291ce71de78aa942f81f58e6cca0b6dc84bd81270f9771b4dd6b9a22` |
| 26 | `theorem` | [adjoin_eq_adjoin_pow_expChar_of_isSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/adjoin-eq-adjoin-pow-expchar-of-isseparable-source-edition-2.md) | 258 | `result-track:ce5789adaf0392f6004888ae3720bf9e8213a93cd63e3a147bc42109eabad549` |
| 27 | `theorem` | [adjoin_eq_adjoin_pow_expChar_of_isSeparable'](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/adjoin-eq-adjoin-pow-expchar-of-isseparable.md) | 264 | `result-track:94e874b398b3389215fa3860375b3151cab9da097f407601713cc966614751c3` |
| 28 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_pow_of_isSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-pow-of-isseparable-source-edition-2.md) | 272 | `result-track:b426b8c9fb6e0e07bc9c4b1b515c813d6bb32a3ccb25ad70c81d8e1cc4d35303` |
| 29 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_pow_of_isSeparable'](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-pow-of-isseparable.md) | 279 | `result-track:3871462d9838583a6eede5a227b3e2539886aa28ac5d6de59cdb37b4f4dc4654` |
| 30 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_of_isSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-of-isseparable-source-edition-2.md) | 286 | `result-track:63efd1ead0ec9162f729a34e3a15485eedefaab1a0a52c023098c98d6b6a51be` |
| 31 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_of_isSeparable'](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-of-isseparable.md) | 292 | `result-track:2ff0acbf3b256328504de9a4cdd8bfaa925e5c4e8eea2ef44fc6a349ae394f9d` |
| 32 | `theorem` | [Field.span_map_pow_expChar_pow_eq_top_of_isSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/field-span-map-pow-expchar-pow-eq-top-of-isseparable.md) | 305 | `result-track:73864c7c86de053f5994b370f47932143250647e4a236252b324d7e3df169d5e` |
| 33 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_fd_isSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/linearindependent-map-pow-expchar-pow-of-fd-isseparable.md) | 326 | `result-track:6f44b65d0fdf0e930d2f213a281381416d6fbf4324cc33d786fb2eeec2cf5279` |
| 34 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_isSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/linearindependent-map-pow-expchar-pow-of-isseparable.md) | 344 | `result-track:12c4864c410062a0bf0b12960f1da7c79745946d8e8fb1d3586efad3ea3f998a` |
| 35 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_isSeparable'](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/linearindependent-map-pow-expchar-pow-of-isseparable-source-edition-2.md) | 362 | `result-track:dab9a8a2f60ed44bcf545663dade6e047de69218103c959c39d1ca583c73bc77` |
| 36 | `def` | [Basis.mapPowExpCharPowOfIsSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/basis-mappowexpcharpowofisseparable.md) | 376 | `declaration-track:737f47ce6a4e008542f4108b5fd39c58ecc8685ef493f4aad19f1c8fdebe4608` |
| 37 | `theorem` | [minpoly.iterateFrobenius_of_isSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/minpoly-iteratefrobenius-of-isseparable.md) | 383 | `result-track:3a05212bcc41fce5c22224acba5fa983c8e6612064a773bda74ff75e6b324aa9` |
| 38 | `theorem` | [minpoly.frobenius_of_isSeparable](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/minpoly-frobenius-of-isseparable.md) | 403 | `result-track:ead1ef4969551d17194de455def39d5e24441bdc02029b6ca205033f51736c05` |
| 39 | `theorem` | [perfectField_of_perfectClosure_eq_bot](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectfield-of-perfectclosure-eq-bot.md) | 409 | `result-track:4cb993f656dff33fd7ab223d631f3c539d709886cc0ac2d838e7ce17c35675ce` |
| 40 | `theorem` | [perfectField_of_isSeparable_of_perfectField_top](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectfield-of-isseparable-of-perfectfield-top.md) | 422 | `result-track:fd7b2a5f615c0ff859ecdd0121e1079122371573d8d1297972c74a58e695da02` |
| 41 | `theorem` | [perfectField_iff_isSeparable_algebraicClosure](../../../../FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/declarations/perfectfield-iff-isseparable-algebraicclosure.md) | 428 | `result-track:a8e6f484c40932827eec69d6c50b8d6ecf269f4c1a8d015c9ea66d4335176a8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=209146f6a548c43a66991293f75b6d50f86386d46b10e3faf5873a32d2aa5c6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

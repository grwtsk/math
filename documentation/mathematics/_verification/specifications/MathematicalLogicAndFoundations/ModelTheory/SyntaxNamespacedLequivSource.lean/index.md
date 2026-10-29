# Verification target: Syntax Namespaced Lequiv Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e5c29613d9fe3c4c1ec28a8c11432152cf673e3",
  "lexical_observation_count": 141,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e5c29613d9fe3c4c1ec28a8c11432152cf673e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.ProdSigma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.LanguageMap` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/term.md) | 83 | `declaration-track:e893c5831d67b39a12131c1329de061ef851e016dbfdfb285af575e70b3a7ac2` |
| 2 | `def` | [varFinset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/varfinset.md) | 97 | `declaration-track:8e2a892b941f69eada8b7ee9eb9c799661557b20b52b39375b126017921a751c` |
| 3 | `def` | [varFinsetLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/varfinsetleft.md) | 105 | `declaration-track:c90738dd4bfe693bc34d4a8cae0603a1920347f2b27cd4ce26ebf44ffff4f3f6` |
| 4 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-source-edition-2.md) | 113 | `declaration-track:a34f1e0a4018d402c877c1bfa3c7097d51ce7397b8eca07e55a8dd0bb3193585` |
| 5 | `theorem` | [relabel_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-id.md) | 118 | `result-track:377e0f5baaf94b92c58c81204f1b326a7a7dbf6b6a4ddb16b1eaef3e05584b94` |
| 6 | `theorem` | [relabel_id_eq_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-id-eq-id.md) | 125 | `result-track:0b7a2c78296b301fdf16630915f60c6a0982ec921efc7fb0fe3c71a65a70baf6` |
| 7 | `theorem` | [relabel_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-relabel.md) | 130 | `result-track:87183fce3b002b15347f908afd81424a44d17bdf0c09c3456889b4b20cc144b1` |
| 8 | `theorem` | [relabel_comp_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-comp-relabel.md) | 138 | `result-track:968c7462cffe9a17ef7ea02fd74330e00793b5f3350299dc20160adadbb6dc79` |
| 9 | `def` | [relabelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabelequiv-source-edition-2.md) | 145 | `declaration-track:e7397668bca1700e4acde0368ecad52fef97d0230f34fff89041583f467d420f` |
| 10 | `def` | [restrictVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/restrictvar.md) | 151 | `declaration-track:1bd1897d88e81281053d5a295f8e45913b660b97077e0be0ca6bf55d5fdcd40b` |
| 11 | `def` | [restrictVarLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/restrictvarleft.md) | 160 | `declaration-track:7253661396ffb87e0209da587824710996247eb84aa5c343c6b092d5f3d223a9` |
| 12 | `def` | [Constants.term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/constants-term.md) | 173 | `declaration-track:a7eadce0f7f32b0f696c4f20b7b630f6856299924d72cdebc8aa1f4856b2f336` |
| 13 | `def` | [Functions.apply₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/functions-apply.md) | 178 | `declaration-track:23a9f852796920d522c8219fafab41aa294b476298277cf663849b758d3ec66a` |
| 14 | `def` | [Functions.apply₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/functions-apply-source-edition-2.md) | 183 | `declaration-track:5e0999cd73efd51468e6c620ad55bb4f18b34e68e0b3caadf61ab1537c9369dd` |
| 15 | `def` | [constantsToVars](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/constantstovars.md) | 192 | `declaration-track:adb1c8fe31f3d0e0707503bddcd920bef64455af376729975b56341851bdb414` |
| 16 | `def` | [varsToConstants](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/varstoconstants.md) | 203 | `declaration-track:b742ebb8d2247c822204fdfa3e13f6c6cb15c924b1b0f36ed3dcfa1afc88aaa3` |
| 17 | `def` | [constantsVarsEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/constantsvarsequiv-source-edition-2.md) | 211 | `declaration-track:6c236d831be2f32693d32a66f4e0aaecd41c6e91603080cf2ca67f27e2d1a3c6` |
| 18 | `def` | [constantsVarsEquivLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/constantsvarsequivleft.md) | 230 | `declaration-track:d034e019c3a50ee7d0ae908a29a2469f239c529f4723bb305c680acd4722249c` |
| 19 | `theorem` | [constantsVarsEquivLeft_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/constantsvarsequivleft-apply.md) | 235 | `result-track:0d9f35ca1f2f2412ad0751375c2587ee904c6bd0c70ceaf090ae8df2d17580a1` |
| 20 | `theorem` | [constantsVarsEquivLeft_symm_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/constantsvarsequivleft-symm-apply.md) | 241 | `result-track:51bda4aefb91e6d417948501f8ec8d9da82eddc58723cec69da830649cac16b0` |
| 21 | `instance` | [inhabitedOfVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/inhabitedofvar.md) | 246 | `declaration-track:e9b22167af43c5a942acd98a29f5045dd43dbfa04e439db802840d59238e3b24` |
| 22 | `instance` | [inhabitedOfConstant](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/inhabitedofconstant.md) | 250 | `declaration-track:ccd2e135e2ebcc590fc52495318c771c9cd1fe529403325aa0fa4837e261895d` |
| 23 | `def` | [liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/liftat-source-edition-2.md) | 255 | `declaration-track:dd842cac7455c50cab40eb166b89969963e96bc09b2a272981ee4acb8a39ec6c` |
| 24 | `def` | [subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/subst.md) | 262 | `declaration-track:5c0161d29d7b524a2f9852dc0e98b421ba53883d3e74ddd45d1f33f385499e66` |
| 25 | `def` | [onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/onterm.md) | 278 | `declaration-track:91a8a96fd788d4227345e6d84ab5932f366aab7563dc9326ee6a449b2d4eaee1` |
| 26 | `theorem` | [id_onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/id-onterm.md) | 285 | `result-track:f2246f2383d86079b2871124aeb981312346846ac7f8bac7b939ef4086a34bd0` |
| 27 | `theorem` | [comp_onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/comp-onterm.md) | 295 | `result-track:6ecc32de69b8d4b20697990c27b4b6155d06e5049c19ef367acbc19e382f5b3d` |
| 28 | `def` | [Lequiv.onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/lequiv-onterm.md) | 309 | `declaration-track:ba60d3a56ff43c5978fa3d5c1ccdb713bb9efdaf570b405e7cc868a19d465b0d` |
| 29 | `inductive` | [BoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/boundedformula.md) | 323 | `declaration-track:6daec3369c5e4238ee8122050cc497cb2aff4b3a12e737eebacdab6a035e8646` |
| 30 | `def` | [Formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/formula.md) | 333 | `declaration-track:68ea3e0b72fd51ce67ce996e3bac973408906533cd6f1c252d2c6024acdc2ac9` |
| 31 | `def` | [Sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/sentence.md) | 339 | `declaration-track:1d44352601939abd0d158d689a7bde16edab5a03e7ee23141f6d54fe34e62cc0` |
| 32 | `def` | [Theory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/theory.md) | 345 | `declaration-track:53ccfcbff7105337979d037909ab74b5233f469caa67ecee6b760a92bece3c0a` |
| 33 | `def` | [Relations.boundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relations-boundedformula-source-edition-3.md) | 353 | `declaration-track:c1db3aec83a3ada2e3b885d43c3a9fe2d00a14fc10fb5e9db79fd9b9c3366495` |
| 34 | `def` | [Relations.boundedFormula₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relations-boundedformula.md) | 359 | `declaration-track:0367213cbd7711f538b06ba2a5e1637744839d7373ad0c3b82e1085cb5d82832` |
| 35 | `def` | [Relations.boundedFormula₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relations-boundedformula-source-edition-2.md) | 365 | `declaration-track:50a1a6a267ff0934f85714103db9247910a0ab65e7f83191a5121305a9b47833` |
| 36 | `def` | [Term.bdEqual](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/term-bdequal.md) | 371 | `declaration-track:01005fda1494103207543a6b939019e14fc9a548285107eec57190877371b281` |
| 37 | `def` | [Relations.formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relations-formula.md) | 376 | `declaration-track:0f6668daf19051c5c00a6a09a1fbe0d0fae1ff900e6bdba12f5eabe8c7a0864b` |
| 38 | `def` | [Relations.formula₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relations-formula-source-edition-2.md) | 381 | `declaration-track:41070195c58b7b40fdb03d01637219a29e0d774afa2fce11015e0a8cd3a0f872` |
| 39 | `def` | [Relations.formula₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relations-formula-source-edition-3.md) | 386 | `declaration-track:afd7028c99384818aed2e34a109daf02496867cc1747529866228267b7effa5d` |
| 40 | `def` | [Term.equal](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/term-equal.md) | 391 | `declaration-track:2d734847926f44e8bbed5ef2ffcc5da1c88a729a71104c8b5c92ca62d0082c19` |
| 41 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/instance-source-edition-5.md) | 397 | `declaration-track:d4e84703fe6ce4c2c24bc3b0f317133d73265f71cf94c52f70d192bb3edfa3de` |
| 42 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/instance-source-edition-3.md) | 400 | `declaration-track:9220e80435680cb3ee1ce854267c7fc1fd8c533649de1ccb89ab95e97761bd8c` |
| 43 | `def` | [not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/not.md) | 405 | `declaration-track:c3591278d1d6f943c551ce3f0c7e68044506af9fb1384456c3762fd1469692c8` |
| 44 | `def` | [ex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/ex.md) | 411 | `declaration-track:9c3cea66375b1933e859338449f342f3f4d6b3a9dd8b1e00ef3b8d16f3174858` |
| 45 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/instance-source-edition-2.md) | 415 | `declaration-track:646f48c11c21cc704c45b523bfa2960732d656e5b70a5e6c9ea720864daca957` |
| 46 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/instance.md) | 418 | `declaration-track:41d603f35a548f75b75a62d25de6de92d228bcc82d21afd46c5ebd027d1bc01d` |
| 47 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/instance-source-edition-4.md) | 421 | `declaration-track:a96a37474b4e7b45e50762b9cc6840334dd2f5b932c4e66dbc0f2a14180dcd94` |
| 48 | `def` | [iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/iff-source-edition-2.md) | 425 | `declaration-track:7bff0df7fcb66f5506c25372ad98f158b9707c51c87df1a80411456b1968d152` |
| 49 | `def` | [freeVarFinset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/freevarfinset.md) | 434 | `declaration-track:3e483616f066652f2bdae882b8e85de085685cdb6fccadb6b4ac55c9dac9ba81` |
| 50 | `def` | [castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/castle.md) | 445 | `declaration-track:86ebd71b0344aca8474a443b47c2ab2c81cb86a50be83d0b452223eea71009d4` |
| 51 | `theorem` | [castLE_rfl](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/castle-rfl.md) | 455 | `result-track:81f13d166d14bad8c40f2ec00076d5f9f6ad705e291e880f1629901c5725cfa8` |
| 52 | `theorem` | [castLE_castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/castle-castle.md) | 465 | `result-track:beb33e116c06973992316b9f8305bb6c285d7c140ad465e784f7caba4a5fb06a` |
| 53 | `theorem` | [castLE_comp_castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/castle-comp-castle.md) | 479 | `result-track:f7ea6116f7f160fbb67d7c9b1fe206b802fe96f4a62a04ce80976c2d557c473e` |
| 54 | `def` | [restrictFreeVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/restrictfreevar.md) | 488 | `declaration-track:8f6fb9397b5ad9a3d98e480b3a432d62a842ce2391888b66120f3dfda9409d98` |
| 55 | `def` | [alls](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/alls.md) | 505 | `declaration-track:daefd36e190e51e946a2636efea2ca548f0aee8d6564c35587c5ce243f42e141` |
| 56 | `def` | [exs](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/exs.md) | 512 | `declaration-track:ab482ce26d556296659b457142923c701278ba8dacc2c5639e7be37f0b4497f0` |
| 57 | `def` | [mapTermRel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/maptermrel.md) | 519 | `declaration-track:80334dead9531932e84456c1b7d426a65c73ba6eb5ed3cdd04e5110379f41587` |
| 58 | `def` | [liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/liftat.md) | 531 | `declaration-track:954f68a3408085e5ddef29bacdf9615b3e7ae3bd8802a8b7c86b0a7dc2476487` |
| 59 | `theorem` | [mapTermRel_mapTermRel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/maptermrel-maptermrel.md) | 538 | `result-track:955f3732d2e8447b4b2308aee6c23bbfe1d6da41bd29de5e6a7f13cfb83a6380` |
| 60 | `theorem` | [mapTermRel_id_id_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/maptermrel-id-id-id.md) | 554 | `result-track:b925cb25cfe0f2d4058215e8540bacf1f89be29ab3d4ed434db2e28f2cb7d87a` |
| 61 | `def` | [mapTermRelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/maptermrelequiv.md) | 567 | `declaration-track:5191d8aaa876080dc218beaa3d0b1c4947b612e2a70a3bfdfb4c4f12639ed62f` |
| 62 | `def` | [relabelAux](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabelaux.md) | 575 | `declaration-track:7d1e0641d6698f7030137cc0ac4176c955d338fd8c61a11a01e1388545d78369` |
| 63 | `theorem` | [sum_elim_comp_relabelAux](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/sum-elim-comp-relabelaux.md) | 580 | `result-track:3e05ace5c0193ac0ab87b3eb3f5e9f846736808da9329260bc2c89c1df393128` |
| 64 | `theorem` | [relabelAux_sum_inl](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabelaux-sum-inl.md) | 591 | `result-track:b0075e6adbe28b0ad37c85866c63c07715443684b94cbbef299645b7dad8e85e` |
| 65 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel.md) | 598 | `declaration-track:7693209a72e3fa838d129b6c4b9328b2b603ddbae2b41d5f9e3662b61a6fcddc` |
| 66 | `def` | [relabelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabelequiv.md) | 604 | `declaration-track:b8555672c54fe6cde824f9bb49998c4d3ae48f66653e96e4b394d11cd7ca7571` |
| 67 | `theorem` | [relabel_falsum](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-falsum.md) | 610 | `result-track:d594bee07808b8f0dc687a463eb920caa6e09ee7ee5eff7d2958743857a9bc35` |
| 68 | `theorem` | [relabel_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-bot.md) | 616 | `result-track:523328ef44826003654096feda93fbf08c358519f7727b8c3d2c0771509b11bf` |
| 69 | `theorem` | [relabel_imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-imp.md) | 621 | `result-track:72617a4f85c6ab79ceb1a05ffe284aa86bbfeb69cdea4d90b39fdc132e07d4e8` |
| 70 | `theorem` | [relabel_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-not.md) | 627 | `result-track:ffcf082f0124670a6c53867ad7f7bc286925935bc58c969970c233f45a9656f2` |
| 71 | `theorem` | [relabel_all](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-all.md) | 632 | `result-track:b220ab17130a3e43fefd9a07f5df8d2ecab4f91c5d55fb304607832b17bae5e0` |
| 72 | `theorem` | [relabel_ex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-ex.md) | 639 | `result-track:4d0169b68d7de2b5e53a40e9387cd199ce9d985385faa1d8ed58231353840770` |
| 73 | `theorem` | [relabel_sum_inl](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-sum-inl.md) | 644 | `result-track:0abeea9af12893a8703cb60e7c2231cbacf92944b3b2926f2696a9a68275b019` |
| 74 | `def` | [subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/subst-source-edition-2.md) | 657 | `declaration-track:9f21e424830bf21fb236393ab73d318e95ec4b1e07379501167e14ac4b00c762` |
| 75 | `def` | [constantsVarsEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/constantsvarsequiv.md) | 663 | `declaration-track:511cdc7e3d5265f41319d48ad5fd22c9c060a18f63a10a266b5b3aff2f5622b6` |
| 76 | `def` | [toFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/toformula.md) | 670 | `declaration-track:db9499b4b3fe4d2c0942c2977a661d5974612c21f4f130454e7b1669a35a51b6` |
| 77 | `inductive` | [IsAtomic](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isatomic.md) | 686 | `declaration-track:b8514233e86151141fb864c397e58ab30aa2f66b156da21a86f9050b3b8e070a` |
| 78 | `theorem` | [not_all_isAtomic](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/not-all-isatomic.md) | 692 | `result-track:f3fc4fff0f7282a5d1441867cda488a76cd6a2064a75fc1489a520e7d178f8c3` |
| 79 | `theorem` | [not_ex_isAtomic](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/not-ex-isatomic.md) | 696 | `result-track:55e00f219486cd49a1964422a17a159086ccd84688063f8f4b74bf17fd4450db` |
| 80 | `theorem` | [IsAtomic.relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isatomic-relabel.md) | 699 | `result-track:569fcceab7fad9f2aa74f86510af181f7f390f5cd13eba669911ec6c5a128736` |
| 81 | `theorem` | [IsAtomic.liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isatomic-liftat.md) | 704 | `result-track:7f301ffc6478405987829108fa14ec22c28e19a245152bc3f2513286e91ecf2e` |
| 82 | `theorem` | [IsAtomic.castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isatomic-castle.md) | 708 | `result-track:11262d5cdcead27fc85e11c960e476ac4dec29bfa3ce5d1c1d480c7bf9e01a69` |
| 83 | `inductive` | [IsQF](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isqf.md) | 714 | `declaration-track:08c1a823b229957eabafd8b23a10b369d86e514dc52b7ea637b2dc38481016f6` |
| 84 | `theorem` | [IsAtomic.isQF](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isatomic-isqf.md) | 720 | `result-track:59ee8795263e6c05fe0a3f0e65cd885de102a7b4543c5a963fc02fbf7e27f91e` |
| 85 | `theorem` | [isQF_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isqf-bot.md) | 724 | `result-track:415003baee27b657a7dc90da1e9256bc25f9ae7b268d3322ce80e69b93e608fa` |
| 86 | `theorem` | [IsQF.not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isqf-not.md) | 728 | `result-track:c878a4e153d8f4882ccba0c7e9ce33ba803e8704e21d34d635a528b29e94f29e` |
| 87 | `theorem` | [IsQF.relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isqf-relabel.md) | 732 | `result-track:23b235fc0840ed264fc4dfd2526207179785a8ed2a47ed73c19286fb4f63b4a5` |
| 88 | `theorem` | [IsQF.liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isqf-liftat.md) | 737 | `result-track:f7ac13f1150825b13cac20ff165b0e45d2b4f825568daf2021e88516f783454c` |
| 89 | `theorem` | [IsQF.castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isqf-castle.md) | 741 | `result-track:2f0b0dc231577bdf4cabc91fb9f82b41c108da24c7f3a89091841305a10d265e` |
| 90 | `theorem` | [not_all_isQF](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/not-all-isqf.md) | 745 | `result-track:45f024dde647b26f572384dffdbd4aaa921a6faab484725cfb7a689ddae19483` |
| 91 | `theorem` | [not_ex_isQF](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/not-ex-isqf.md) | 750 | `result-track:f817ecc6c17db7126368def9781d82eee33ecda1b81b76b01657d9d9ec1d2ac3` |
| 92 | `inductive` | [IsPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isprenex.md) | 758 | `declaration-track:a3002fe0c21afdcb57352c3809870a51c5f5bfe4c23c7a5b9629a5df6e74f741` |
| 93 | `theorem` | [IsQF.isPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isqf-isprenex.md) | 764 | `result-track:383bf94fddbd164906f768aec50cc04d37269625933ad2af0c3a3e3da0b73b15` |
| 94 | `theorem` | [IsAtomic.isPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isatomic-isprenex.md) | 768 | `result-track:bd78f7e30f5a5abc1a7276d49db6d5b6c293a89ad57bef07d91be1e025fae010` |
| 95 | `theorem` | [IsPrenex.induction_on_all_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isprenex-induction-on-all-not.md) | 772 | `result-track:abe4c2211fa1c3ea25da7c362e705d98a6eaa11fa9269339938e005d15475448` |
| 96 | `theorem` | [IsPrenex.relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isprenex-relabel.md) | 780 | `result-track:74ab627e7bcb594db2ec3ff193e8f220539b7d72bc354acd7b9b81dd1f57898f` |
| 97 | `theorem` | [IsPrenex.castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isprenex-castle.md) | 786 | `result-track:80469503604e39c3577de45f366f0abc19f50b7e79426905084e4e1e82b9ccd7` |
| 98 | `theorem` | [IsPrenex.liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isprenex-liftat.md) | 793 | `result-track:dc661206ddf4f503d6ef5c99be247b34bf1da780742393914fe60a54e8cd974d` |
| 99 | `def` | [toPrenexImpRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/topreneximpright.md) | 802 | `declaration-track:95a1ed0411a47a1df98ee7a59ed608b0a88710d8cf79a42d5422169310eea259` |
| 100 | `theorem` | [IsQF.toPrenexImpRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isqf-topreneximpright.md) | 808 | `result-track:c91fecc8a4c74ba841973259d71ec33f6de43ee6134ed553b0e23351356fa980` |
| 101 | `theorem` | [isPrenex_toPrenexImpRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isprenex-topreneximpright.md) | 819 | `result-track:0aace905960ff82f6e3e199bc00521fe6166c22ef6ba2148b807429217b0950e` |
| 102 | `def` | [toPrenexImp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/topreneximp.md) | 832 | `declaration-track:5bbf58561a75217f17c62e9ceb07027d30e62aea67f6fdbbc68e7d6e2d4231b5` |
| 103 | `theorem` | [IsQF.toPrenexImp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isqf-topreneximp.md) | 838 | `result-track:c658b0668d4ae819fb2fc62bbbe791fac7e1ef87d1cc62233eb904cad073e462` |
| 104 | `theorem` | [isPrenex_toPrenexImp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isprenex-topreneximp.md) | 849 | `result-track:71c17bee0879d8e6f44624b2835beb3544b14aeb768a94f176da98f91ef9b972` |
| 105 | `def` | [toPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/toprenex.md) | 861 | `declaration-track:88029a66386817d652c0388e07c3426f88030bf42765beb88237daf7c34aceec` |
| 106 | `theorem` | [toPrenex_isPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/toprenex-isprenex.md) | 869 | `result-track:48bf1a2ec5ef7b48265018891e633ffeb02e5faab13a548c31f6e676b24fb327` |
| 107 | `def` | [onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/onboundedformula.md) | 884 | `declaration-track:18a7f113dba75fa070818c1fb435a26f28b2dbcd0c16dd50f892dca7b95afe0a` |
| 108 | `theorem` | [id_onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/id-onboundedformula.md) | 894 | `result-track:383eeadcd4dab562296bb77dc0ec683e5afd6ec884754d456bc0eb4dd683ee63` |
| 109 | `theorem` | [comp_onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/comp-onboundedformula.md) | 908 | `result-track:773307f0da5af279907729ba11a41c7fbf7ad599854bfba88a35940895d7358f` |
| 110 | `def` | [onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/onformula-source-edition-2.md) | 923 | `declaration-track:78f43044f148c583cde2683a5da81bfeeb3efeaa433205560b68473266e99ea2` |
| 111 | `def` | [onSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/onsentence-source-edition-2.md) | 929 | `declaration-track:cab6d4fc2e648c34c3eaab0046a66d233e59f265846bdf099bd0f7c7f21e07cc` |
| 112 | `def` | [onTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/ontheory.md) | 935 | `declaration-track:751ba6a36dedd96fb1780f025c2285790f284f9f9615cedcb5173c4029889414` |
| 113 | `theorem` | [mem_onTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/mem-ontheory.md) | 941 | `result-track:2ea2071ba93f780dc8a9aaedf5b08f5e56fff64e571ecfa249c644d99c2fa399` |
| 114 | `def` | [onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/onboundedformula-source-edition-2.md) | 953 | `declaration-track:aec337e596e5b36b2e20b98d121ee891c2d21d450baf9aaa23170049d5c04f21` |
| 115 | `theorem` | [onBoundedFormula_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/onboundedformula-symm.md) | 965 | `result-track:f87b8e288cb3449d2758ccaff6a001a83b34b6f50c9c64743854cc1373df85ac` |
| 116 | `def` | [onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/onformula.md) | 973 | `declaration-track:17d786f7af88007eec73848c7e5cd7d6c48de1cbe4ce377ea1c44a69b3a88744` |
| 117 | `theorem` | [onFormula_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/onformula-apply.md) | 979 | `result-track:0f450c67281bd7dde58b8afe63f52568c36e405b634b528072e2ac4a3cfc337d` |
| 118 | `theorem` | [onFormula_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/onformula-symm.md) | 986 | `result-track:0390e62d9f5f64f1a95f104b02b76bf8abb8c6a642679dfcb082fc7f9d0a7301` |
| 119 | `def` | [onSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/onsentence.md) | 994 | `declaration-track:bd32354b3864f36b381709f84c5778f22abae549345cfec2d25e27eeeed87225` |
| 120 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/relabel-source-edition-3.md) | 1021 | `declaration-track:da56d83d5a368ec1cf41c508bed5e1b3edb341bb2c1316c72dd3159619b96734` |
| 121 | `def` | [graph](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/graph.md) | 1026 | `declaration-track:12fd342dc74ba9762b29aa1dda5a7e404b537ac82fa70f516fceacf826c07497` |
| 122 | `abbrev` | [not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/not-source-edition-2.md) | 1031 | `declaration-track:cd898dc8dd3a1e59ad993a9c356609b3b1d730c7841276396b9910b3b8a10a5f` |
| 123 | `abbrev` | [imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/imp.md) | 1036 | `declaration-track:73ed6adda1d2b853d747cde689e2e32e2557edd18ca0003b5d3d50ff0533d3c1` |
| 124 | `abbrev` | [iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/iff.md) | 1041 | `declaration-track:79682f9a876cebf6074063e3bb71d1b0097acfe6d45c61e36771699adc3a5e96` |
| 125 | `theorem` | [isAtomic_graph](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/isatomic-graph.md) | 1045 | `result-track:3f9afaf13d2f4e16db215f67b482a126b93be1efcfc08112ff99ffd5ffe51509` |
| 126 | `def` | [equivSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/equivsentence.md) | 1050 | `declaration-track:d363262ea8b6dbc67e907c8c077a91b50014a4f45d435dc28ec82d31e3123bae` |
| 127 | `theorem` | [equivSentence_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/equivsentence-not.md) | 1054 | `result-track:666a87b9bcfcfd554222b880c18a19443e4ae6ede99e696b7431be77d74ce278` |
| 128 | `theorem` | [equivSentence_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/equivsentence-inf.md) | 1058 | `result-track:49bb90d8a440a4261bc5b4606fc76d4475280477b6ea90a4ea24c1f2d02c2126` |
| 129 | `def` | [reflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/reflexive.md) | 1070 | `declaration-track:0f2c39a61133b6ab23f0d38533c2e2856ebb76cf77f0337878b2f8a87fdd2cfb` |
| 130 | `def` | [irreflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/irreflexive.md) | 1075 | `declaration-track:b4699f92a21de65ba4b67297d0e540c3bd4a1e8723eb3b28a96bb09f5a55a2c9` |
| 131 | `def` | [symmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/symmetric.md) | 1080 | `declaration-track:3c3d41183eb9b2b10a2fd7818055cc0ce66ed168066d04ef509d09b8ec82b5f6` |
| 132 | `def` | [antisymmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/antisymmetric.md) | 1085 | `declaration-track:eaee2c1cc5d99792aadc180a3fc0779d175e4993c8f1062ba0f3f01687e8d194` |
| 133 | `def` | [transitive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/transitive.md) | 1090 | `declaration-track:24cd4a1c972c31a95d61e34c6be84117eac5104bb46a9f9bf70f3e6da5c4bf6d` |
| 134 | `def` | [total](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/total.md) | 1095 | `declaration-track:a7be9f19f312142870652bd6ec7a27f0c3ecbd5a63211f4aaba5fbfe607630e6` |
| 135 | `def` | [Sentence.cardGe](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/sentence-cardge.md) | 1106 | `declaration-track:c77fe4efd9cc5e724be2031b827bfa2d224895f3e6a6a15419304b8fd6200f27` |
| 136 | `def` | [infiniteTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/infinitetheory.md) | 1113 | `declaration-track:01df598cbdab3353271abaa9f56de182a9a12be28279a1be58815067739dc099` |
| 137 | `def` | [nonemptyTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/nonemptytheory.md) | 1118 | `declaration-track:f878948b92397157afbf51b808c6efd5e0b5c0f86ff1c9d75a04e5bdc849fa70` |
| 138 | `def` | [distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/distinctconstantstheory.md) | 1123 | `declaration-track:8366915bd9bd9e10d468b92c85941b65e042a8046f784c324e54eee1ba10c52c` |
| 139 | `theorem` | [monotone_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/monotone-distinctconstantstheory.md) | 1132 | `result-track:a484a239dc9e28a25bca4ca878a3ad5e25291a7a7b94877d1c68ec003d20b9b0` |
| 140 | `theorem` | [directed_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/directed-distinctconstantstheory.md) | 1137 | `result-track:f47e3218927bf7941531ca79beec1245e853a354f27b03879a15984e891fb138` |
| 141 | `theorem` | [distinctConstantsTheory_eq_iUnion](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLequivSource.lean/declarations/distinctconstantstheory-eq-iunion.md) | 1142 | `result-track:e0a4e701fb7948556f849f9a8333ff63d84720db1e31cff6ffa6bbe13732c8d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64bc2f6d001f8e2675249acf03cfc3acc3413c65438cf898e3572c841a5f0a01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

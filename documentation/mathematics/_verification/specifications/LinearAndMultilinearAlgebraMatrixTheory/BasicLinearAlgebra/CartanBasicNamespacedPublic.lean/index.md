# Verification target: Cartan Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f5baec033bd6085ce14502a05445fbedc803f54",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant66e90d54b50feb95ab5f562030a8880cc38b60aa0a1d4c603ef46aab23741769.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f5baec033bd6085ce14502a05445fbedc803f54`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant66e90d54b50feb95ab5f562030a8880cc38b60aa0a1d4c603ef46aab23741769.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant66e90d54b50feb95ab5f562030a8880cc38b60aa0a1d4c603ef46aab23741769.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.LinearCombination` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormDet` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [E](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-source-edition-3.md) | 67 | `declaration-track:e63cb7cde95864aff0f64c269d61f6a99666377eef25a048392b95ad9baa46ba` |
| 2 | `lemma` | [E_six_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-six-eq.md) | 76 | `result-track:436334c9e3fcca91e3f5a968ccd084d11ff7902fa9970e9e3302ae351563aa11` |
| 3 | `abbrev` | [E₆](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-source-edition-4.md) | 86 | `declaration-track:ee195409af3e4fc19096f523ae96bb1ba9bd882b2429d2d4e872e7bcf150275f` |
| 4 | `lemma` | [E_seven_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-seven-eq.md) | 89 | `result-track:c9c68d69a180a10e9dcf3f8b62f6be7deb71ad18a4fef6c7940bef2b6cfa1379` |
| 5 | `abbrev` | [E₇](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e.md) | 100 | `declaration-track:1390966978661f6b884329ff5804d03c8838915468f8076163e0c8fcedcc1d7e` |
| 6 | `lemma` | [E_eight_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-eight-eq.md) | 103 | `result-track:cd4a50ae04ff51e4adf1a4f4210649ff64c77d04f356303fa5b8e710016a81ae` |
| 7 | `abbrev` | [E₈](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-source-edition-2.md) | 115 | `declaration-track:8507232011a26d9ea3e69490029f897885ef1bce0c1f7a12d738800a73d8ed85` |
| 8 | `def` | [F₄](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/f.md) | 118 | `declaration-track:bcd874c78efb2771988da98c49f38237dc31556dd8f1c3e4b79d8b98a8b9d88b` |
| 9 | `def` | [G₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/g.md) | 126 | `declaration-track:953595ee8649daba628b34c0580b4f85fff6398585e3633f30a4b96d4f4ed14d` |
| 10 | `def` | [A](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/a.md) | 133 | `declaration-track:9f2ed9c19502b2d9ce1d61f02eb5dcc2a1bd02fe7fbb64ffe3ad32847c6af7fd` |
| 11 | `def` | [B](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/b.md) | 140 | `declaration-track:315ced4bbe2e8b6d1b730ced539eb7700dc608614a587c8c8bf35caa0c4bda00` |
| 12 | `def` | [C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/c.md) | 149 | `declaration-track:b1c0c78cb168aec65e38eec05aa0e6e88b46b32918ce13476594f2a29db8a549` |
| 13 | `def` | [D](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/d.md) | 158 | `declaration-track:728a1608666001bb672de1ec73da7aeb801b54728166c114ffabfb56a1e9b375` |
| 14 | `theorem` | [A_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/a-diag.md) | 174 | `result-track:bfc5162e9d37ecbd94bc4eb6c366f28b0be65e0b3f79bfdab25e6183b3196a1f` |
| 15 | `theorem` | [B_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/b-diag.md) | 175 | `result-track:c77b340679ec282061dd516d69dcef5c7ad1320b0eca7e5229197195d30be302` |
| 16 | `theorem` | [C_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/c-diag.md) | 176 | `result-track:5315cfb8ac2ae852139a4e3dcdca2d5aaa33c354b16ff4da43b994dda76e3217` |
| 17 | `theorem` | [D_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/d-diag.md) | 177 | `result-track:bb43bdb9a1c92ec753b00e0bb0e21a2407d2d0fb67a22c42cb459385ccc391ff` |
| 18 | `theorem` | [A_apply_le_zero_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/a-apply-le-zero-of-ne.md) | 179 | `result-track:a07718f1dd1f4f70a2e41964649461efbb9cc345c2c724486aeb998fc3581b3b` |
| 19 | `theorem` | [B_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/b-off-diag-nonpos.md) | 182 | `result-track:3d7ac4eb08bfa512c6e91b6e7e8231784498834afe6bcdd9140d4e9ccc4d19c7` |
| 20 | `theorem` | [C_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/c-off-diag-nonpos.md) | 185 | `result-track:6cc04acc85fb4de82f81b623cfa69ae3fd0824253e0c4d06650e4f46a3f5e900` |
| 21 | `theorem` | [D_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/d-off-diag-nonpos.md) | 188 | `result-track:c57ce7cc5dd58d3d839f918008171cfa470c90de933f9d164f7236ce3c46b54d` |
| 22 | `theorem` | [A_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/a-transpose.md) | 193 | `result-track:ad694895526ad6962f6e50c27466be23e86ef37df5438f93ce94060cf1e57784` |
| 23 | `theorem` | [A_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/a-issymm.md) | 196 | `result-track:6a7b002786850f1ffe5a668d9541c7ab6d910035d52d1f42e57262090e422014` |
| 24 | `theorem` | [B_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/b-transpose.md) | 198 | `result-track:35dcaec12adc73b84d5a4c3bfadc8c178b84ed18e51525ba9824042f8cc16643` |
| 25 | `theorem` | [C_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/c-transpose.md) | 201 | `result-track:f76569729d7f7fe45b550d2efc9363555f8c5499246059538f80f0e4e43e508f` |
| 26 | `theorem` | [D_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/d-transpose.md) | 204 | `result-track:5b301eeaf5f283ddacbc19e8474a2429727c535a6ee48ccd707992cdefafd8f4` |
| 27 | `theorem` | [D_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/d-issymm.md) | 207 | `result-track:d5a5de3bb5db0b02c10a6c90c7e217e6ac9040cff7e26b9a22b0e681f87e5499` |
| 28 | `theorem` | [A_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/a-one.md) | 211 | `result-track:49a7dc332c092c03af254e29de105923085ba31a701a572cedd7439d94badfd2` |
| 29 | `theorem` | [A_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/a-two.md) | 213 | `result-track:b15aaea12772239d1215bf9094c4ff62d525f89657877f60e1a7101313cbe485` |
| 30 | `theorem` | [A_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/a-three.md) | 216 | `result-track:a05c686030306222be2f33b0b2469a15565aa1f1f776af6cde54e4540d9e65a0` |
| 31 | `theorem` | [B_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/b-one.md) | 220 | `result-track:11f24f961c69e71aaf35fbaf052dfcce9da82d71d62bc231b31d1229c851b6eb` |
| 32 | `theorem` | [C_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/c-one.md) | 222 | `result-track:92d771616b708ee4f5ddadc8e9800f78c8eeff2bfdbd36d5204990943c432642` |
| 33 | `theorem` | [D_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/d-one.md) | 224 | `result-track:83e330f306451a0ed15cc6640a199646be3d5d6db931dfa817fd4cc4335b6588` |
| 34 | `theorem` | [D_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/d-two.md) | 226 | `result-track:9b1ca489f006b11166053e4e958f1ffddcea726c8b24dafc47b12e0fdc14300d` |
| 35 | `theorem` | [B_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/b-two.md) | 229 | `result-track:1bb7a679f669be549d90fd94e68f89b0c37a7340dfdf471c3d729ae2cb253111` |
| 36 | `theorem` | [C_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/c-two.md) | 232 | `result-track:4b9ddff479d94a2c62949e437e2ac6aff9dfba4c28120fd826551535af2f5741` |
| 37 | `theorem` | [D_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/d-three-source-edition-2.md) | 235 | `result-track:b6589081cdb1ae23da2e9072ade630e0273df76fdc81403c1f4b83a79eef77f7` |
| 38 | `theorem` | [D_three'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/d-three.md) | 239 | `result-track:3266b0cdaec0ef2e1350a99604289978764d9f6c95623155394711efda4c7e2d` |
| 39 | `theorem` | [D_four](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/d-four.md) | 241 | `result-track:d6f971ffa3c14a5252fa1fa99d211b787cc4bbe1c2c898eb3b98bfabddf64917` |
| 40 | `theorem` | [E_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-diag.md) | 250 | `result-track:45399256c18daee2cb6fb5bdb0352bb1edde29a7384641b020acb28bf2a0dabe` |
| 41 | `theorem` | [E₆_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-diag-source-edition-3.md) | 254 | `result-track:94770cedec3059534d4c97b544b112951e6c2d5370a3ac9630c30393c207e7da` |
| 42 | `theorem` | [E₇_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-diag-source-edition-2.md) | 257 | `result-track:5a26913c0003713dbaf72b352258a21d56d2d58e96679c7f5c725f09056e883e` |
| 43 | `theorem` | [E₈_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-diag-source-edition-4.md) | 260 | `result-track:d84a7b7a653b238bb0ef8f6e412e23ef48fbea3d68774c0ebdd2e252cc77e62b` |
| 44 | `theorem` | [F₄_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/f-diag.md) | 262 | `result-track:9d3b862ae7d60476e142dcc760cee1bbe81a31fe670e1c86d955d450554cfd0e` |
| 45 | `theorem` | [G₂_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/g-diag.md) | 264 | `result-track:085c460f9fbd5ecba5850dd5f2bd1d59de1381c8ab8b9380dc0807077e1d1606` |
| 46 | `theorem` | [E_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-off-diag-nonpos-source-edition-3.md) | 269 | `result-track:9993b119c8547745c2d27252777fbcd509ea4cd766df781ab870203c8026b701` |
| 47 | `theorem` | [E₆_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-off-diag-nonpos-source-edition-4.md) | 274 | `result-track:cc9c51de20ac45a39f0e6e8c885a64381fc00257d80ddc499d3c4da3e7b920a7` |
| 48 | `theorem` | [E₇_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-off-diag-nonpos-source-edition-2.md) | 278 | `result-track:98fc7a5d85795727702beaa936a8516a2eb836e4670f9977e1ef8f1a7b746cbb` |
| 49 | `theorem` | [E₈_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-off-diag-nonpos.md) | 282 | `result-track:22c85ac5236c896af1b7846b4ff3ae5cbaf99be15e68df078ee951fdfb2f2216` |
| 50 | `theorem` | [F₄_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/f-off-diag-nonpos.md) | 285 | `result-track:414c36737823d8b2f7fda968184f5564578e90abf717312640f5a2b96e4778db` |
| 51 | `theorem` | [G₂_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/g-off-diag-nonpos.md) | 288 | `result-track:d0e3d3388dd6be2e57d08572faf9329122f4e2570f2d6933607cc9bddddb53fa` |
| 52 | `theorem` | [E_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-transpose-source-edition-4.md) | 293 | `result-track:d3843d1d49ef57dbde30ccd7a4d2ef9f361baa0acf8cdefc0acc5f5a2530b925` |
| 53 | `theorem` | [E_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-issymm.md) | 298 | `result-track:026530de474294d720f471192760d9e89255eb50000b47ff63823a6be2a662d1` |
| 54 | `theorem` | [E₆_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-transpose-source-edition-3.md) | 301 | `result-track:7255a7a8420c43f19a8328a7030002bd85c5f08cf0f96f1ec5f229c400b63c36` |
| 55 | `theorem` | [E₇_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-transpose.md) | 304 | `result-track:156487a2609189c5138bd35568f4af7155c82a836c2434dc20f18582b820586a` |
| 56 | `theorem` | [E₈_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-transpose-source-edition-2.md) | 307 | `result-track:3c218eeb396097ff4dad960203e278cc5aff9e67d10d286972fba164b79269ec` |
| 57 | `theorem` | [E₆_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-issymm-source-edition-4.md) | 310 | `result-track:ee0a000f23dfbd11927b1d4ee4d353ac5c1d87b3a580deb8b06ab645e9b9908d` |
| 58 | `theorem` | [E₇_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-issymm-source-edition-2.md) | 313 | `result-track:8ed0336ddbe90a5f287fe224b1deef53493b61e2184e615353330651f9900cdf` |
| 59 | `theorem` | [E₈_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-issymm-source-edition-3.md) | 316 | `result-track:db4d6e45c74fe24f2706e45ac64f1b7dc56a05b50d79be25d2a9d79e82a1e0d0` |
| 60 | `theorem` | [G₂_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/g-det.md) | 320 | `result-track:36ad1f83c1119ed080752de62438d9085d619160e18a7bb940f4a027fe9699cb` |
| 61 | `theorem` | [F₄_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/f-det.md) | 322 | `result-track:c3e792decb39e007bcf57db79a5cfa4d0b410bad31c839b5dcf58135271f29b8` |
| 62 | `def` | [extendPath](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/extendpath.md) | 326 | `declaration-track:006bb570f615bc4d31783c8a922461db0a8852f45471385bda64dfdd98b93feb` |
| 63 | `theorem` | [extendPath_tail](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/extendpath-tail.md) | 333 | `result-track:e0e2aa971c065b281b9037c7b88a2b403ab59930a8197ee100fc7abc25db7152` |
| 64 | `theorem` | [extendPath_minor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/extendpath-minor.md) | 338 | `result-track:72ec0428e92f2d92dffa1e4268907123836bb88406d63a27a0a74d8df4a953e9` |
| 65 | `theorem` | [extendPath_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/extendpath-det.md) | 349 | `result-track:7ab647b234a8ed316f33c4e17ac193b8b9444fe8968e1265ecccd455f60ac156` |
| 66 | `theorem` | [E_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-succ.md) | 362 | `result-track:fd9cf06ea4fb2e444073bfe74b05590bd35001458d04f85231b7aa64d732a6d3` |
| 67 | `theorem` | [det_E_add_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/det-e-add-two.md) | 377 | `result-track:40a57f28118c4a28a80968853f827310c7736befb6196455d9138f29928a67b2` |
| 68 | `theorem` | [E_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-det-source-edition-2.md) | 384 | `result-track:470f3823b4a230a491ca3b7dbd6c982f394aa069cc3898350fe8842489422f1d` |
| 69 | `theorem` | [E₆_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-det-source-edition-4.md) | 401 | `result-track:d5d3ba30bfa5fa445e21d0ea8b1680a807128eaa54ee199cc2603871febf7429` |
| 70 | `theorem` | [E₇_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-det.md) | 404 | `result-track:30d2fefe208944a7544613569f240ac3552b798c414ab5ba51cf491440acc6f3` |
| 71 | `theorem` | [E₈_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/e-det-source-edition-3.md) | 407 | `result-track:99d33e52673d8a29ddbacc750fda4bd6dfc6e50339c049530c0962e632ec0c59` |
| 72 | `def` | [Cartan Basic Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/issimplylaced.md) | 411 | `declaration-track:1d36b23b24ad70cba4d69fb1098210c811e5f743ecb5aebb9aaf749695af6036` |
| 73 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/instance.md) | 415 | `declaration-track:35e438546ea33f33dfbff79aa08086f91382d6dfee5b299353030480c5cdb3af` |
| 74 | `lemma` | [Cartan Basic Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/issimplylaced-iff-of-linearorder.md) | 419 | `result-track:b067a8dfdb4dc1754582e0252e205c67175e1bc273f8b0c4d525c18e4c5dbdd4` |
| 75 | `theorem` | [Cartan Basic Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/issimplylaced-transpose.md) | 430 | `result-track:32c89022c6dac4c524272e68019b7bb8857ab55bd70437bc9cd08404eaaad2b1` |
| 76 | `theorem` | [isSimplyLaced_A](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/issimplylaced-a.md) | 435 | `result-track:573702082a73102ee53f52ae117c4ad95e3bb6715202a80ade91f2c912dc4387` |
| 77 | `theorem` | [isSimplyLaced_D](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/issimplylaced-d.md) | 440 | `result-track:91247deaab75480c9b212491d3e79a349436243d051a6255a59f46ff228ed3ec` |
| 78 | `theorem` | [isSimplyLaced_E](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/issimplylaced-e-source-edition-4.md) | 445 | `result-track:bd50675fddcb6ee294ae79f6c81dd31ef8abac62770a4ec3d502ce5a40c638fa` |
| 79 | `theorem` | [isSimplyLaced_E₆](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/issimplylaced-e-source-edition-2.md) | 451 | `result-track:5991ea4fccb6c982e037794614c9ada0efb2d401acacbad5e22ff23bfec0dce9` |
| 80 | `theorem` | [isSimplyLaced_E₇](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/issimplylaced-e.md) | 454 | `result-track:370b8fe5e135bef6be87ae0ec9c4cc1682d042802076c45f76f556da7e95ed5e` |
| 81 | `theorem` | [isSimplyLaced_E₈](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/issimplylaced-e-source-edition-3.md) | 457 | `result-track:a463bcf82e19ec2136fd8d3621baa31267ef32a4bdc74b0f57157f05cce950ed` |
| 82 | `theorem` | [not_isSimplyLaced_F₄](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/not-issimplylaced-f.md) | 462 | `result-track:50231fae79fbaeebbf2c154b6dfb953f6d57eafe66f0274992fbfe008ffe4f2a` |
| 83 | `theorem` | [not_isSimplyLaced_G₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/not-issimplylaced-g.md) | 464 | `result-track:171dd7e129280ff2da81abdc1e24b485ef5a1dce542173641c04c8ef5ab9c19b` |
| 84 | `structure` | [Matrix.IsFiniteCartan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/matrix-isfinitecartan.md) | 471 | `declaration-track:171d6981ea4924d2582dd4303c75d29ed3b7522493aa4e3e9a4b107f5bd3208a` |
| 85 | `lemma` | [det_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/det-pos.md) | 483 | `result-track:a7019683de414312a80ecd269ace33136d1a6bb6ca3c3b4d408129d69742dce3` |
| 86 | `lemma` | [isUnit_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/isunit-map.md) | 490 | `result-track:32cb9d53d67a0e3779d5ba0f43f6370d65ac0131db09088054a6d5ff7399daf8` |
| 87 | `lemma` | [transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/transpose.md) | 496 | `result-track:26f3fb13157e0dbd076e3cb473635960e4bb4b42d9b4b6c25bada18ac1c95316` |
| 88 | `lemma` | [transpose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicNamespacedPublic.lean/declarations/transpose-iff.md) | 526 | `result-track:04552992998e10c02b504d84c0cdf1897f685b62f32abb315dabdf3d4bc65641` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abe73245bcf327179b746d35cb03e5fb1e812853914094ae4cb1d1d4b19a2227 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant66e90d54b50feb95ab5f562030a8880cc38b60aa0a1d4c603ef46aab23741769.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant66e90d54b50feb95ab5f562030a8880cc38b60aa0a1d4c603ef46aab23741769.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

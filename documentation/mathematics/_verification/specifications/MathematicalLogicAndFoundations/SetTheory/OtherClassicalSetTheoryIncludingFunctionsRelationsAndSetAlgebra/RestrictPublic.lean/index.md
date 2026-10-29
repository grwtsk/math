# Verification target: Restrict Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8cb7a820a5558ce6de09c81e3a2df27be248e09",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8cb7a820a5558ce6de09c81e3a2df27be248e09`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [domRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict.md) | 32 | `declaration-track:8b1f370da4c74ce90cd5155718f13692c2ca01b74f9ad739bd885c3ed6963fd3` |
| 2 | `theorem` | [domRestrict_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-def.md) | 34 | `result-track:9df9e1206beadde2f2af3473beaea55ea7b97b2f44fcee34f7c973363218e6d2` |
| 3 | `theorem` | [domRestrict_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-eq.md) | 36 | `result-track:75ad579c66729ffd344c20ec6b8c08ec85f448853c45e16af379fe07b2cf1cfa` |
| 4 | `lemma` | [domRestrict_id](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-id.md) | 39 | `result-track:eb890bdcae920486d678b95744cb035027d20c33067decfe1d53d681a36879bd` |
| 5 | `theorem` | [domRestrict_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-apply.md) | 42 | `result-track:a8610cb3ec63a056a2f205d8c49221c2651fac6b64807363a5c95cf9f5245662` |
| 6 | `theorem` | [domRestrict_eq_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-eq-iff.md) | 45 | `result-track:1d1040e59350150db63527bc070daed371118e90df7a39b89b26ed2d22af5474` |
| 7 | `theorem` | [eq_domRestrict_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/eq-domrestrict-iff.md) | 49 | `result-track:e2fda6825495947e0d1bfb73fecbeb22011c1e67d31291c2ca71588afc3e2a55` |
| 8 | `theorem` | [range_domRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/range-domrestrict.md) | 54 | `result-track:f4538bc597906b5426a7f01573af8ed62e2ecb846d35c84153eb4e7d65ed55a7` |
| 9 | `theorem` | [image_domRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/image-domrestrict.md) | 57 | `result-track:39c7ef4f52e91fab7fa8248ae957b73f6e571f4346f1bbc6df2d77d051a74354` |
| 10 | `theorem` | [domRestrict_dite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-dite.md) | 62 | `result-track:6f8a41aaf8c28ddd12ffa9d5f5cc7d869eb6495b133ebba73510db06829c292e` |
| 11 | `theorem` | [domRestrict_dite_compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-dite-compl.md) | 68 | `result-track:fdfcbda12c8cf64dc6072c3bdb42d1f70cf4b34f077f152e79e756ea32d07951` |
| 12 | `theorem` | [domRestrict_ite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-ite.md) | 75 | `result-track:639c5e5199f7c200c9f7a2260c48cbd69c830bc311a1ded03b0e3feafc67f675` |
| 13 | `theorem` | [domRestrict_ite_compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-ite-compl.md) | 79 | `result-track:0ea403479e3b8873f1b94167b8c1f2a624f7dc3e524a312e98d578ca7b7a7c5d` |
| 14 | `theorem` | [domRestrict_piecewise](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-piecewise.md) | 84 | `result-track:6d192de7df219f033d229b1e6a154ea99fd621b62abfdca9aec05c3f018fd95a` |
| 15 | `theorem` | [domRestrict_piecewise_compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-piecewise-compl.md) | 88 | `result-track:bb2c39a15e9d4795f484e2e300c5f8a49b5aedd246c837d7985becd8df4d9b2d` |
| 16 | `theorem` | [domRestrict_extend_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-extend-range.md) | 91 | `result-track:4d54c34d0924ca3d78e647fd4e940dbd2576c0862292d2bbf18e451f674614a6` |
| 17 | `theorem` | [domRestrict_extend_compl_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-extend-compl-range.md) | 97 | `result-track:3cc003b4d04ec5b64cadd4cd33302f97d96b7e911ab4d8983d2000f42999966d` |
| 18 | `def` | [domRestrict₂](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-source-edition-2.md) | 104 | `declaration-track:ec3cb0c3dff139291bebd19319bd4ad7f0bc0fea3a1cc7b7772f43db4f02821c` |
| 19 | `theorem` | [domRestrict₂_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-def-source-edition-2.md) | 107 | `result-track:f2e65325c877423958114255d9bd108731372b63b253ee29ddd9b5b409dc33da` |
| 20 | `theorem` | [domRestrict₂_comp_domRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-comp-domrestrict.md) | 110 | `result-track:1b08bda53a345b80fa3f38d3f57df7a81300ade104e7dc6f11de6322477367f7` |
| 21 | `theorem` | [domRestrict₂_comp_domRestrict₂](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-comp-domrestrict-source-edition-2.md) | 113 | `result-track:1c59c1135e4f3b8ff5f8e11734fccf0b9d8fae9dd0608ae80a31999c347096ec` |
| 22 | `theorem` | [range_extend_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/range-extend-subset.md) | 116 | `result-track:4813532a2a42861ad5557d2cdc464e926eff281d6a844f9ae909601c045f849b` |
| 23 | `theorem` | [range_extend](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/range-extend.md) | 124 | `result-track:077865b7a9050758b44d8e07513b3ebedd7d59dd012c1f8fbae0f64ff0a583b5` |
| 24 | `lemma` | [_root_.Function.FactorsThrough.extend_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/root-function-factorsthrough-extend-injon.md) | 132 | `result-track:1d7fa724b09a41659bb5de552b4f96df2feafff0b2119461ea686cd96ecfea63` |
| 25 | `lemma` | [_root_.Function.Injective.extend_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/root-function-injective-extend-injon.md) | 140 | `result-track:f4d3dfb4e13c959966108ab4c1b9a8e3303a45f25f0983f83a4b5da00d923b86` |
| 26 | `lemma` | [_root_.Function.Injective.extend_of_disjoint](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/root-function-injective-extend-of-disjoint.md) | 147 | `result-track:dfcad8f6caa61cc1a473378b21437275fe84ef14deec9ed4f21bf07b70d19811` |
| 27 | `def` | [codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/codrestrict.md) | 164 | `declaration-track:2108dd32eeabfb28e04c346e37b338b0483e01fe3d4fcb9b6d8804eac40ef1a8` |
| 28 | `theorem` | [val_codRestrict_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/val-codrestrict-apply.md) | 167 | `result-track:85c1bee5a5758df0d893a4de2fbde4d0e689b086230dadc4db46e14f121072a2` |
| 29 | `theorem` | [domRestrict_comp_codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-comp-codrestrict.md) | 172 | `result-track:bef4c6c5f56677cc8700db6c665f166c1722cd920f78d3e8df5e59c8aed29a48` |
| 30 | `theorem` | [injective_codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/injective-codrestrict.md) | 177 | `result-track:1499576475bfbbcd5678a0c899f176eba97c0474b44a318ed8365a203b49d859` |
| 31 | `theorem` | [range_codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/range-codrestrict.md) | 183 | `result-track:4420ee11c6c58eeec0d3165a675e849e42fc9504e40da973cbf3ffb0665dad33` |
| 32 | `theorem` | [surjective_codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/surjective-codrestrict.md) | 187 | `result-track:019eaec1b5b430099a376bc270d62dcb72c5341a429e44972cfdb2b9edc9c176` |
| 33 | `theorem` | [codRestrict_range_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/codrestrict-range-surjective.md) | 191 | `result-track:114c8f9bf2a9216a63fdba82005687e2083c931021a1948cbfaf31ad3f9fe95f` |
| 34 | `theorem` | [domRestrict_eq_domRestrict_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/domrestrict-eq-domrestrict-iff.md) | 199 | `result-track:edcb718bb5bdd4bd00b8712b01a94e407e735f49bb29cb7f12f2fb380e903222` |
| 35 | `theorem` | [MapsTo.restrict_commutes](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/mapsto-restrict-commutes.md) | 236 | `result-track:4c64ee8b9c59d1fee2eba1f662e13dfe3a16ce099e6149253de0be954a2abed2` |
| 36 | `theorem` | [MapsTo.val_restrict_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/mapsto-val-restrict-apply.md) | 241 | `result-track:be3b65907f1aa0e49a610d070fc6922b175c084a1d19e2eb08e51a209360c2c3` |
| 37 | `theorem` | [MapsTo.coe_iterate_restrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/mapsto-coe-iterate-restrict.md) | 244 | `result-track:3052892f321d4c95e359b4842432c79e4cc324fd46291d48a8a2de83111876d5` |
| 38 | `theorem` | [codRestrict_domRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/codrestrict-domrestrict.md) | 252 | `result-track:df9b74c56411c8566c02d6c9388cff91bb390f621685e78fd3192820a2612ffe` |
| 39 | `theorem` | [MapsTo.restrict_eq_codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/mapsto-restrict-eq-codrestrict.md) | 259 | `result-track:6b3e9466d3a389d166230d009a753e3d1e5ed1fc4542cae56b768ab4a5ec7c58` |
| 40 | `theorem` | [MapsTo.coe_restrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/mapsto-coe-restrict.md) | 263 | `result-track:08442c43e179939e6dba502a0e8801a21d7544aff6306b05ddd1a317eca46c62` |
| 41 | `theorem` | [MapsTo.range_restrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/mapsto-range-restrict.md) | 267 | `result-track:475118a3b6746b3aac78c895e78fae11f4406b1b0cf6fe2c6d5dd4497263a4d8` |
| 42 | `theorem` | [mapsTo_iff_exists_map_subtype](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/mapsto-iff-exists-map-subtype.md) | 271 | `result-track:39b39dc09cd3d565345c5d243600b1675f2b2a9d012b4a44554aa86639b79e20` |
| 43 | `theorem` | [surjective_mapsTo_image_restrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/surjective-mapsto-image-restrict.md) | 276 | `result-track:ef3211bb80f2b84bd77b5e07eae2a1c7c038a7d16c077f2aa1974f8ee9067666` |
| 44 | `theorem` | [image_restrictPreimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/image-restrictpreimage.md) | 288 | `result-track:8cb251a8d7673014731546d74f501447524940bdf15e2672d152457f43cc4611` |
| 45 | `theorem` | [range_restrictPreimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/range-restrictpreimage.md) | 295 | `result-track:7db3a0a8d6dd23d96482d580d82239e3f421be0bc894e5a4cb6705f129fe0d34` |
| 46 | `theorem` | [restrictPreimage_mk](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/restrictpreimage-mk.md) | 299 | `result-track:7fbf83917a99eb59be30b10d0a46958605c35ff2b0bbe9816587d59175953297` |
| 47 | `theorem` | [image_val_preimage_restrictPreimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/image-val-preimage-restrictpreimage.md) | 301 | `result-track:04848e9e1d94329b6a0347d6e41db31c60b7f58250c7a2d3a6d02165306c8092` |
| 48 | `theorem` | [preimage_restrictPreimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/preimage-restrictpreimage.md) | 306 | `result-track:85b89d40a0b7a223de713da3bef5c6e64af1183e605d6fecc98f651e9d9c65e5` |
| 49 | `lemma` | [restrictPreimage_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/restrictpreimage-injective.md) | 311 | `result-track:34397b477a291ed43a66cb63c92c247b0372e58b985c928588b91e1d57ac6525` |
| 50 | `lemma` | [restrictPreimage_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/restrictpreimage-surjective.md) | 314 | `result-track:b01e7d69ed0d7cf98a067898d035dc8101518c9c8fe2a9c4fd2a98fc57604854` |
| 51 | `lemma` | [restrictPreimage_bijective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/restrictpreimage-bijective.md) | 317 | `result-track:a030cf78ae7bc7ca731a65f4b6aaf818205c745ab4e8c14eadb41bcc4505076b` |
| 52 | `theorem` | [injOn_iff_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/injon-iff-injective.md) | 329 | `result-track:ab256e8a372712215c8abc8561c7b08041e781e0b0de431e163694c9d825f901` |
| 53 | `theorem` | [MapsTo.restrict_inj](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/mapsto-restrict-inj.md) | 336 | `result-track:db9139cd3682a0e69b1c60b679e191ce5a4bdbfdd7877744f63baa632b05e1db` |
| 54 | `theorem` | [surjOn_iff_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/surjon-iff-surjective.md) | 344 | `result-track:a3f66b8509b918bb4ad8b2b3c2f5661d0a6980e88461c25e433436c79ead01ec` |
| 55 | `theorem` | [MapsTo.restrict_surjective_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictPublic.lean/declarations/mapsto-restrict-surjective-iff.md) | 353 | `result-track:d651c5db639321cc73e4767411a3646a82f2ba198ccea0d89784e4f206c9c805` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0befed7e0525be0bb4f4e5aae1c17c4c960337aa750e281d755f445dc42db25d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

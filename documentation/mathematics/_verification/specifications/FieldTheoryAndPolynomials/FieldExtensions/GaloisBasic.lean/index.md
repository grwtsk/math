# Verification target: Galois Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5a3abbd8f68b79aec9433460e8bc5bb0f90f8fd",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/index.md) · [Full source](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5a3abbd8f68b79aec9433460e8bc5bb0f90f8fd`.

Source path: `GRWTSK/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Fixed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Closure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.FixingSubgroup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isgalois.md) | 53 | `declaration-track:7976facc8b33a7cff4b5c371c9a89b7d2dbe40e67ce3727c123de0e8fec3f17e` |
| 2 | `theorem` | [isGalois_iff](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isgalois-iff.md) | 59 | `result-track:14a89a2ad115b4673eb841a57a891f54dc919db261a3fa535b28cbc169628d61` |
| 3 | `instance` | [self](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/self.md) | 71 | `declaration-track:d509b472680620e7b54bf0c73eb997769f985d65e43f868ad80b2e7e4a4bab1f` |
| 4 | `theorem` | [integral](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/integral.md) | 76 | `result-track:3574dfb0a5c39e33ac8d4537601d691727f367081ee94b0390047cc6126f6d30` |
| 5 | `theorem` | [separable](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/separable.md) | 79 | `result-track:34191cb537b2ba95979747a10df1c5141b13d8a5ac63bb1003b2dae84323c235` |
| 6 | `theorem` | [splits](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/splits.md) | 82 | `result-track:9ad5994a39f34e3b550f2bc3f9b75369247dfad240596a5c12acb582a29e4bfa` |
| 7 | `instance` | [of_fixed_field](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/of-fixed-field.md) | 90 | `declaration-track:44a2011a85b8aaca1e12b395ff51d1d2275a6ae3f6ddcba66cf990df8afb96a6` |
| 8 | `theorem` | [IntermediateField.AdjoinSimple.card_aut_eq_finrank](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/intermediatefield-adjoinsimple-card-aut-eq-finrank.md) | 94 | `result-track:3b5277aefda6b28cb13ddfebffd34de708ee2dcbefda534097dfb4a2a6a02f56` |
| 9 | `theorem` | [card_aut_eq_finrank](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/card-aut-eq-finrank.md) | 106 | `result-track:df28ebf8d7faa5ec8a4cea803cabe56b21ef4991443ae1ead0d0644cea687482` |
| 10 | `theorem` | [IsGalois.tower_top_of_isGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isgalois-tower-top-of-isgalois.md) | 142 | `result-track:5a52e25a2786b5066226366fd9dac63f72c4f62761b3514ec1d0c7a2897fd1eb` |
| 11 | `instance` | [(anonymous)](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/instance.md) | 149 | `declaration-track:3fc3b21101e6bc7677dddde2d492d1a8f8dab62c0cf2bda6c49e02a60de1544c` |
| 12 | `theorem` | [isGalois_iff_isGalois_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isgalois-iff-isgalois-bot.md) | 153 | `result-track:a326f6d59792b1555306beeafedda16a5ae4440aa5cd09b00fe79276ad8bf044` |
| 13 | `theorem` | [IsGalois.of_algEquiv](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isgalois-of-algequiv.md) | 159 | `result-track:ef4ef758eb098fdfaff420b2141a98afaf0d033f82db5c0b3ff21e09b7bf0126` |
| 14 | `theorem` | [AlgEquiv.transfer_galois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/algequiv-transfer-galois.md) | 163 | `result-track:097c9c7bef358618cc4783e1056b083ad2f5f4b92ac9c5d04b09428e1142b92b` |
| 15 | `theorem` | [isGalois_iff_isGalois_top](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isgalois-iff-isgalois-top.md) | 166 | `result-track:be637c46ca77bb2f430a70df7ea502ce08bda4d32970ce876e8bf7923e712ad9` |
| 16 | `instance` | [isGalois_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isgalois-bot.md) | 169 | `declaration-track:e84f272fc1d9fd06021493632d39caf9325ac298d655fa39c2d10112d7e6532a` |
| 17 | `def` | [FixedPoints.intermediateField](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixedpoints-intermediatefield.md) | 181 | `declaration-track:5192f45b11e5e0b622e82b17b30a1c62800c4dd77e5ab6c6bc27ad0da2880a60` |
| 18 | `def` | [fixedField](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixedfield.md) | 190 | `declaration-track:fa4c5d4c2287f93c703779b050adffc68e2be9fac44571f71bf28b3441e5c9b0` |
| 19 | `lemma` | [mem_fixedField_iff](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/mem-fixedfield-iff.md) | 193 | `result-track:d1a7bfac41a2f9d61dbebc8dd2f3e0ab7f7d87a12811f21a9a534fc8793d5f59` |
| 20 | `lemma` | [fixedField_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixedfield-bot.md) | 198 | `result-track:ac38c3cbde45784f9ff7909e220481dbd37357e8a1ebb608ab2ced843993938c` |
| 21 | `theorem` | [finrank_fixedField_eq_card](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/finrank-fixedfield-eq-card.md) | 202 | `result-track:d8cfc71a558eb36aa0cf778bdb380f17b2df060d6a56945ebc3666f7ae741425` |
| 22 | `def` | [fixingSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixingsubgroup.md) | 207 | `declaration-track:364df0f8ac63c107be6ff6d97cf072352e6369f4bacacfe50c2e3644f2698033` |
| 23 | `theorem` | [le_iff_le](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/le-iff-le.md) | 210 | `result-track:5fdf74d46a3d99b4f6ef41609459dad6c3eea7712c63303eba3c88d7b858b84e` |
| 24 | `theorem` | [fixingSubgroup_le](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixingsubgroup-le.md) | 214 | `result-track:ab0b97782040b2692df65d576f7b19a6da4aeb1c1967303c8f44b82dc206f0ca` |
| 25 | `theorem` | [fixedField_le](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixedfield-le.md) | 220 | `result-track:c8710b473ae7b1adad3dc1f9a464d9a57c861908c161fed0b7078ff97bbeddbd` |
| 26 | `lemma` | [fixingSubgroup_antitone](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixingsubgroup-antitone.md) | 224 | `result-track:0bdb83b571aa70986232401492b7a2fdeaf6c4c6122ac6487458ba2f2ed4448d` |
| 27 | `lemma` | [fixedField_antitone](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixedfield-antitone.md) | 229 | `result-track:c36f8bace483102cf58ae26c08d469970924c10a529c5e7b870115e21b0e9522` |
| 28 | `lemma` | [mem_fixingSubgroup_iff](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/mem-fixingsubgroup-iff.md) | 232 | `result-track:80bd9e245de5455b6f81d38ae6be542be0e3dcf0c6c3e7aa97f1d12286580017` |
| 29 | `lemma` | [fixingSubgroup_top](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixingsubgroup-top.md) | 235 | `result-track:8b53aab3bc96b9b7e6a3e92da38c1cfe34bfc3e755d78362cc0f1b1f0c85ecab` |
| 30 | `lemma` | [fixingSubgroup_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixingsubgroup-bot.md) | 239 | `result-track:e4fa6e2c1cb00a7b6fec2dcda45d5b8aab96ea8eabf48d05ced467da3af3822e` |
| 31 | `def` | [fixingSubgroupEquiv](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixingsubgroupequiv.md) | 244 | `declaration-track:a3f4a27777b15528dccd45dc895c5e1d6672506b388b375571cdf8aec4bbde65` |
| 32 | `theorem` | [fixingSubgroup_fixedField](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixingsubgroup-fixedfield.md) | 251 | `result-track:09ad10b71b807f4bfcaccf498b78b99b5de27c6bcc619e4e759c9904dbf71fbb` |
| 33 | `instance` | [fixedField.smul](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixedfield-smul.md) | 263 | `declaration-track:6f0ff30401723e5c72f9c359034b7cb0a9e4e546a5c77c9ecca98c381259e7b2` |
| 34 | `instance` | [fixedField.algebra](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixedfield-algebra.md) | 267 | `declaration-track:14c2f742a4f4ad96c946c71ad27bf762b6a9e8de4a60f028293b1d80d190ee26` |
| 35 | `instance` | [fixedField.isScalarTower](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixedfield-isscalartower.md) | 277 | `declaration-track:523b0befdbebb0944345eebebf82b5449bd9ced6ac5e96f9ed991979778e26ca` |
| 36 | `theorem` | [fixedField_fixingSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixedfield-fixingsubgroup.md) | 284 | `result-track:5bf5b60383f1878cded6eed79b95365b2fc464804936386734aacc8ca1d23841` |
| 37 | `lemma` | [fixedField_top](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixedfield-top.md) | 296 | `result-track:c19e932cc9110c2e30b4314c599fa35d059ac2f626d33761ca6935a902308840` |
| 38 | `theorem` | [mem_bot_iff_fixed](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/mem-bot-iff-fixed.md) | 300 | `result-track:a77ce54d65d8cf0006885d7018cbffa525fe923d725eb88b69f4fa4938e25536` |
| 39 | `theorem` | [mem_range_algebraMap_iff_fixed](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/mem-range-algebramap-iff-fixed.md) | 305 | `result-track:0b025303e3ed0c98fc48b30ef8bc9f89666da61b2c06c275c3aa5f90ee7cdc49` |
| 40 | `theorem` | [card_fixingSubgroup_eq_finrank](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/card-fixingsubgroup-eq-finrank.md) | 309 | `result-track:7921b8a242d95350240f5dba5f728a08f37649d0df125bdfdbcfc0d08206cbaa` |
| 41 | `def` | [intermediateFieldEquivSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/intermediatefieldequivsubgroup.md) | 316 | `declaration-track:adfec2ae1d54dc93218c8619fe048345ae0bcff6f8111f1192552bd56ded9245` |
| 42 | `def` | [galoisInsertionIntermediateFieldSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/galoisinsertionintermediatefieldsubgroup.md) | 327 | `declaration-track:dc4fc44f10ca87564541d97aa29c096ca71716b175c7525a99b9bce3f3931a41` |
| 43 | `def` | [galoisCoinsertionIntermediateFieldSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/galoiscoinsertionintermediatefieldsubgroup.md) | 338 | `declaration-track:2e98d8e6849f716afcb612ce1a9c94d4151c9d799c7d8de0f20005664cfe512f` |
| 44 | `lemma` | [IntermediateField.restrictNormalHom_ker](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/intermediatefield-restrictnormalhom-ker.md) | 358 | `result-track:d39caf876ebae4548925391d9c4f5a52c38ea3d2c7dbe15ba75e60433f93fe80` |
| 45 | `instance` | [of_fixedField_normal_subgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/of-fixedfield-normal-subgroup.md) | 368 | `declaration-track:26f4ba7c67534e64f6b0415ff959893aefe1269b242431961dc1e82202a6bb0f` |
| 46 | `def` | [normalAutEquivQuotient](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/normalautequivquotient.md) | 378 | `declaration-track:c471f379a3b42fce48bd6e21e8a784328b3a9aea4b7f2f73ec9bead8bfd898c9` |
| 47 | `lemma` | [normalAutEquivQuotient_apply](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/normalautequivquotient-apply.md) | 386 | `result-track:b9a215b7a5ee14919bdfcba70d462d217762c485534f7e887a0e3ca47e0bb01d` |
| 48 | `theorem` | [map_fixingSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/map-fixingsubgroup.md) | 393 | `result-track:1ead2dfb3db52ca858faf4f87e89b6d4304aa1a754cb1eab79aec95aaed253c2` |
| 49 | `instance` | [fixingSubgroup_normal_of_isGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/fixingsubgroup-normal-of-isgalois.md) | 404 | `declaration-track:e067637a580b835bb93b56569f09262b38659b7a370374ee39b6d9a639040d59` |
| 50 | `theorem` | [is_separable_splitting_field](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/is-separable-splitting-field.md) | 421 | `result-track:5ba56f8f0d4d00e5840d2757b4df100a43b35f65c6dbf7f917726b1140883fce` |
| 51 | `theorem` | [of_fixedField_eq_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/of-fixedfield-eq-bot.md) | 431 | `result-track:79f16af600d77ab144b987bfcfa43a7c934fdfc8326cb1b75fa857d6179b8faa` |
| 52 | `theorem` | [of_card_aut_eq_finrank](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/of-card-aut-eq-finrank.md) | 439 | `result-track:18d1d41bf3dc1c514f3cd711e02f28ade45d816c69d0f2d013cbed703ea3bb50` |
| 53 | `theorem` | [of_separable_splitting_field_aux](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/of-separable-splitting-field-aux.md) | 456 | `result-track:ea07ef03d4bb6029e41336c0184128bb802f124ea32cea364c38691e0b7a0b15` |
| 54 | `theorem` | [of_separable_splitting_field](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/of-separable-splitting-field.md) | 490 | `result-track:9a586ebf5db096bbc43d5ddfeec6b1bbe0bcaef83d2a84eee74b875479ef3e3e` |
| 55 | `theorem` | [tfae](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/tfae.md) | 524 | `result-track:320604274548360065f6b61ed2d4677e20688f51f2c48d0a90ab12dfe1564d65` |
| 56 | `instance` | [IsGalois.normalClosure](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isgalois-normalclosure.md) | 549 | `declaration-track:650d71fb38d6974dc8c67f78d6c1e0f1a4028b9a931afcca99830d85220a29a5` |
| 57 | `instance` | [(anonymous)](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/instance-source-edition-2.md) | 556 | `declaration-track:74ef87b77c446b47a489ae9610845f2c0300d788d32e22612b2e353f8c46570c` |
| 58 | `instance` | [IsQuadraticExtension.isGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isquadraticextension-isgalois.md) | 568 | `declaration-track:756c46ba5b066b8b7574e2970fb8bf1b437f211041ce450e73a044548f0a6b37` |
| 59 | `instance` | [IsQuadraticExtension.isCyclic](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isquadraticextension-iscyclic.md) | 573 | `declaration-track:226ccb35c6f03a266dd50be349783b1ca2e7a2b7c404c091dd09b8e83cb22b32` |
| 60 | `instance` | [IsQuadraticExtension.isMulCommutative_galoisGroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/declarations/isquadraticextension-ismulcommutative-galoisgroup.md) | 584 | `declaration-track:938a299a53b8bb29148be94ddb1e95a2dd44331382979ee09f9a3f23c01a75d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=407accac7bee788dd1bb1de47351a25f55c6bab9b1d4d12718a5ca22c7f5fa6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Morphism Property Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e49349dfd8c9b6020a6d39057af1edeba2165a8b",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5abcdbaec161c78ec09753b586cf32629e6a0cc18061caede94231a3168edf3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e49349dfd8c9b6020a6d39057af1edeba2165a8b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5abcdbaec161c78ec09753b586cf32629e6a0cc18061caede94231a3168edf3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5abcdbaec161c78ec09753b586cf32629e6a0cc18061caede94231a3168edf3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Arrow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteBooleanAlgebra` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MorphismProperty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/morphismproperty.md) | 35 | `declaration-track:20f61431fe239bdc2ab9592b04dd0e581f2bc8aa40decbceaaf9217fe5c41bc2` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/instance-source-edition-5.md) | 38 | `declaration-track:8d44eff836be0a5b63bf5a4898f3c2c9465a475bcb0a5d9110335e63b30dc27c` |
| 3 | `lemma` | [MorphismProperty.le_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/morphismproperty-le-def.md) | 42 | `result-track:e15500347497b5ba8d41d87b51df896e8b1c149d398dbe299b50f75316ca2e18` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/instance-source-edition-3.md) | 45 | `declaration-track:6c45881db45393f99327ea343c44f8eb2db610ee69da0c06624a09758561f42f` |
| 5 | `lemma` | [MorphismProperty.top_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/morphismproperty-top-eq.md) | 48 | `result-track:4747331fb3a6508d5e00cd9823fd727b270b5a05b09514aa56277a683579b199` |
| 6 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/ext.md) | 55 | `result-track:d4779a9164b18be47aef69976e3f5c6656cc9e1446e0c43ae693f91563cf7b5f` |
| 7 | `lemma` | [top_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/top-apply.md) | 61 | `result-track:951d4cca0b97581ae26380165824dbf4240dd1782eb0027430a55ccf18686beb` |
| 8 | `lemma` | [of_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/of-eq-top.md) | 64 | `result-track:c342f902b9f6639baef153a05fe0115ce368532811a9ff0948f58ee72b2102d4` |
| 9 | `lemma` | [sSup_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/ssup-iff.md) | 68 | `result-track:ba73c3b144d309d40bbfcff39e9b79132f57d873fafdb52caaf51d060776be47` |
| 10 | `lemma` | [iSup_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isup-iff.md) | 78 | `result-track:4600931d4664f0c9d71738c614137a9ae7940f18ca182c744802d9ee280b91cb` |
| 11 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/op.md) | 89 | `declaration-track:023dcaa26a2bd539a881ab3fcc4fed2ab4684ff15299f7ce37ee4628d747d930` |
| 12 | `def` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/unop.md) | 93 | `declaration-track:463eddda63b6ac86cee46b20c72a57f35165345600dc0d33f3dcb269b023d7d6` |
| 13 | `theorem` | [unop_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/unop-op.md) | 95 | `result-track:e64853647ffcca4cb5eee35dbb63a2fce76e5ae32a72bb0766d01fbb6be1ee66` |
| 14 | `theorem` | [op_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/op-unop.md) | 98 | `result-track:d316304615db0a0c4b087ae09d77aaf90a2fd67e72e476cf690a3e55087364b9` |
| 15 | `def` | [inverseImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/inverseimage.md) | 102 | `declaration-track:0b702c0ab8a205cc5d3da12b44c97c045b29d1e1d408e0fb7efedf7c7dc8df0d` |
| 16 | `lemma` | [inverseImage_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/inverseimage-iff.md) | 106 | `result-track:dc723f17888d5957e5f48d946737e860c508b68f39f396255dbf9b93fd421b29` |
| 17 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map.md) | 110 | `declaration-track:c4b18b5bc747e448f6a8c5bbfe66bf6d3ce310cae8986019ba8c4634b112e56f` |
| 18 | `lemma` | [map_mem_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map-mem-map.md) | 113 | `result-track:11a34f79f0d632faa7f6cbf3a49be1c4f11d9c5b4599fcad01191f7890a25fae` |
| 19 | `lemma` | [monotone_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/monotone-map.md) | 116 | `result-track:9cf210cfd24a3ff435a734bb819bb42b08282b69a84dbd08b35c65f8445efa45` |
| 20 | `def` | [toSet](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/toset.md) | 126 | `declaration-track:9cb3fcb7daa45d7cfb8eaae3c36a39940935968a884ae5d9da74cd2edc68ca02` |
| 21 | `def` | [homFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/homfamily.md) | 130 | `declaration-track:757b6884e3f05143e72acea5c4a16d837e9f27ed7615c40647b410391d6b1183` |
| 22 | `lemma` | [homFamily_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/homfamily-apply.md) | 132 | `result-track:0b5d1f62b8137d5e42387865337c31fb443824607b90992ac6158454a2df3e09` |
| 23 | `lemma` | [homFamily_arrow_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/homfamily-arrow-mk.md) | 135 | `result-track:ef9604b4d3be48a91a85e4e33db9dbdad5a12ca1add2cef8e83794ac95023c17` |
| 24 | `lemma` | [arrow_mk_mem_toSet_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/arrow-mk-mem-toset-iff.md) | 139 | `result-track:ae6992bf5c5e7159a6b2c53f9348689aa8082f11cdb0daeb8ad3d9b292351678` |
| 25 | `lemma` | [of_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/of-eq.md) | 141 | `result-track:db5c2f8b1782b0d8d1f4fc4220e6fd0d4b4d2dd8b36fb97bfd9871cdfa1b4d72` |
| 26 | `inductive` | [ofHoms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/ofhoms.md) | 151 | `declaration-track:95ef46cf1a1ad6c7d3460e4fcc45fde6528c4e8559b767b1d807e7632d2f080b` |
| 27 | `lemma` | [ofHoms_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/ofhoms-iff.md) | 154 | `result-track:b8ef2ae59f0fa79a9970359b76f8c2fdaa18b64092252e9e0881a5f85230defc` |
| 28 | `lemma` | [ofHoms_homFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/ofhoms-homfamily.md) | 164 | `result-track:518911ee762952ccaea3ca8cdd3ea04f6a1ba52d578e3c52eeebbe3d0697cffe` |
| 29 | `class` | [RespectsRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsright.md) | 177 | `declaration-track:c468d701136082e404ef409322af5d873374dfab98db2a4ce2a910b12a3768e7` |
| 30 | `class` | [RespectsLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsleft.md) | 183 | `declaration-track:7ce55c29ee0dc03e828f2d553c704d0af8174f66e699dc84dcc46815bbc0fab0` |
| 31 | `class` | [Respects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respects.md) | 188 | `declaration-track:f3fc3bae129f43b0f78e871607c4df7b4d189ad84bc0d4a4ec1d4fe560b71126` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/instance-source-edition-2.md) | 190 | `declaration-track:4c9fbfc83d7a75832b2e4283e274022e65da6f58b145d8a1408dcc6287ac4c73` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/instance.md) | 192 | `declaration-track:125cb849a250ca94ce28b66820f7f0488faae997edbdb9a3d87020d94206aed0` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/instance-source-edition-4.md) | 195 | `declaration-track:6e2fe2fb7973489db10e5a70c53ec9051d746cc531afe69bbf009db4744a520e` |
| 35 | `instance` | [RespectsLeft.inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsleft-inf.md) | 198 | `declaration-track:aaacb0bd392e34e56f06687bc623a9a45f3d0a6152ef7c8958302c9395af6ad3` |
| 36 | `instance` | [RespectsRight.inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsright-inf.md) | 202 | `declaration-track:f8061004dd69a5ecb84d062fea3bcf5dcdc4bb7d6fbfbdb2f767712b52442607` |
| 37 | `def` | [isomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isomorphisms.md) | 209 | `declaration-track:3425b635ea1323208160d9ae94e0e3bcf3b1831c10698e98833ccf7a85bae40e` |
| 38 | `def` | [monomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/monomorphisms.md) | 212 | `declaration-track:1571e6d407dd698265a7631651ad7a0f330ec06910465b865038c56d3808e4bb` |
| 39 | `def` | [epimorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/epimorphisms.md) | 215 | `declaration-track:f4c0f3ada92fc8ccd5b42dc7eeb3512017144b6f9af2deb345c417b94d9ee62b` |
| 40 | `abbrev` | [RespectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso.md) | 223 | `declaration-track:6dc0388edf18c2b997fc05bd1fa6394167ff72e89fb0240d7493a93c0a32bb99` |
| 41 | `lemma` | [RespectsIso.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso-mk.md) | 225 | `result-track:ed65280b8bbedc646ac388f5a59edfeb0191b33ca3d7188e8035db2fcc4b30da` |
| 42 | `lemma` | [RespectsIso.precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso-precomp.md) | 232 | `result-track:001dc1a00ee928be02fbd37aa7310dc56c26659856af302f50e1317e0ec63d18` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/instance-source-edition-6.md) | 236 | `declaration-track:a70b0c7f1d5c1c3d8fc544eeee700f504c5efc53359e613eb89ebaa8ee6b54ad` |
| 44 | `lemma` | [RespectsIso.postcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso-postcomp.md) | 240 | `result-track:4325e5178c725a3b554161f16ca66c80e2f8fff6ffcefd3cf88500f2b31aeaa1` |
| 45 | `instance` | [RespectsIso.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso-op.md) | 244 | `declaration-track:8f3428b540fa2417220bb0e33110b4fb9d24a65c76f1ba1cba53c5a4b2d48b3e` |
| 46 | `instance` | [RespectsIso.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso-unop.md) | 248 | `declaration-track:145434976e276dbb4c73c021d4b16fba7707160b44ef91ae25ff60659ab92cf0` |
| 47 | `def` | [isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isoclosure.md) | 253 | `declaration-track:0d8d3f24c2b970ddcc2503559944182a39a52f347f2d83175cd0d21d378a3457` |
| 48 | `lemma` | [le_isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/le-isoclosure.md) | 256 | `result-track:2768362d729188bf6af7a051382f15e1a1201b69f8629a006119dd4dcaabca4d` |
| 49 | `instance` | [isoClosure_respectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isoclosure-respectsiso.md) | 259 | `declaration-track:6080ec77e6b1f1b8ff072786129a6ccc0cee749124a8c0849da86ae287aba412` |
| 50 | `lemma` | [monotone_isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/monotone-isoclosure.md) | 266 | `result-track:7e298944268a1b28cce7f9ef0eab6c3e53b4b84d32b91679a5b52ff7489ce54f` |
| 51 | `theorem` | [cancel_left_of_respectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/cancel-left-of-respectsiso.md) | 270 | `result-track:3bfe587b447f5cc138d78dead4d46f94072b6144c772045769bd72fb95865e26` |
| 52 | `theorem` | [cancel_right_of_respectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/cancel-right-of-respectsiso.md) | 274 | `result-track:347026992f9d17b0353da6aab38b1a11bbbb2c1da60a2adfb938b31fcdac4236` |
| 53 | `lemma` | [comma_iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/comma-iso-iff.md) | 278 | `result-track:65092a42887589178981a0dc0c0de4f456467ffd8cb94f2e082413c04caaeea9` |
| 54 | `theorem` | [arrow_iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/arrow-iso-iff.md) | 283 | `result-track:f444b82474b6dd770ff8a1fff9936f7c0ce7874f046c5dd89e2c712852428b8c` |
| 55 | `theorem` | [arrow_mk_iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/arrow-mk-iso-iff.md) | 287 | `result-track:d872ae29c7d595e9cca90ae81599abc0fc0ca527d51088f965fbbd8beea70d0c` |
| 56 | `theorem` | [RespectsIso.of_respects_arrow_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso-of-respects-arrow-iso.md) | 291 | `result-track:f46e0e37eb61f7f0ac381122f159798fd2955f4e1455a6d0694829a4204e89d9` |
| 57 | `lemma` | [isoClosure_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isoclosure-eq-iff.md) | 300 | `result-track:26bf745c05daaebf3767717b9bbaf5d3954bef60cdb9f7f251146780d2838746` |
| 58 | `lemma` | [isoClosure_eq_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isoclosure-eq-self.md) | 306 | `result-track:b614e0bf5e4d504a00f19e3ba84d10265b4331e6a6e3d10a660bf7f272749a45` |
| 59 | `lemma` | [isoClosure_isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isoclosure-isoclosure.md) | 310 | `result-track:e49dac07830da06e49fe4d1097f63e3dfd9603df4bf186e80b9d1298c478e637` |
| 60 | `lemma` | [isoClosure_le_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isoclosure-le-iff.md) | 314 | `result-track:290e456504554612a965f7dc1a90437d7b30f13562c1691c606107a942a29384` |
| 61 | `instance` | [map_respectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map-respectsiso.md) | 321 | `declaration-track:0525ec0b37c094fbdafdae2f3a5eb8ac363bc659094216e8202dfd1d26123128` |
| 62 | `lemma` | [map_le_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map-le-iff.md) | 327 | `result-track:1ec8d2ee8186e80ae9a564c79691d8205d659a8439b8e742b03b446b41d00c3d` |
| 63 | `lemma` | [map_isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map-isoclosure.md) | 337 | `result-track:57bf173b4e1c0dabd104300b38c5e4f5d757a8e24d8c91660db2cecf56dd8fc4` |
| 64 | `lemma` | [map_id_eq_isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map-id-eq-isoclosure.md) | 345 | `result-track:275673550780b093d1b438e748d2a4509ffdcfd41048e90c10056ee607528a42` |
| 65 | `lemma` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map-id.md) | 354 | `result-track:05153d9c5f3b24bbdcbfd39476618648e5b25143718cf9a3ba241e6c1b52b019` |
| 66 | `lemma` | [map_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map-map.md) | 359 | `result-track:d08dc0d30f3bd79e28c73ce0eb39a68d5368e9d60b18a9e3217f710d69013606` |
| 67 | `instance` | [RespectsIso.inverseImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso-inverseimage.md) | 369 | `declaration-track:b33eb2f93e32d4b04034f5d549258d5a3f5a00c34989cfdc7051237f7435901a` |
| 68 | `lemma` | [map_eq_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map-eq-of-iso.md) | 376 | `result-track:69b0e48ba1838fba78a1f1ab0959cdacf6b4539f41c57c374b9ce75d08a0a4ca` |
| 69 | `lemma` | [map_inverseImage_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map-inverseimage-le.md) | 384 | `result-track:eda9181412c35f01f0ce79e3dc2d3f7592a462c4fb44aa927b1378969b6c545e` |
| 70 | `lemma` | [inverseImage_equivalence_inverse_eq_map_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/inverseimage-equivalence-inverse-eq-map-functor.md) | 388 | `result-track:0def3f0d8678477be46dbda099c8fd3cc53003c7f73aa5df6be151117f0fcf50` |
| 71 | `lemma` | [inverseImage_equivalence_functor_eq_map_inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/inverseimage-equivalence-functor-eq-map-inverse.md) | 400 | `result-track:9cb60e9918343c04f56ff701659e5bb097d37c5ca014fa808ec018c9828eba33` |
| 72 | `lemma` | [map_inverseImage_eq_of_isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/map-inverseimage-eq-of-isequivalence.md) | 405 | `result-track:3e4a04b981f8bfd268fdc1e339872a0be0cd2f4a6ca24742e8fa030794f49fca` |
| 73 | `lemma` | [inverseImage_map_eq_of_isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/inverseimage-map-eq-of-isequivalence.md) | 411 | `result-track:f8814d41efafac26030224538e2e8de2c4b81c19fe905ae5756c0220f7bacfcf` |
| 74 | `theorem` | [isomorphisms.iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isomorphisms-iff.md) | 425 | `result-track:c6b543e0befa83d87386e7824ff533c75350d91dc649fd36301b90eab884fedc` |
| 75 | `theorem` | [monomorphisms.iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/monomorphisms-iff.md) | 428 | `result-track:a7af31c5a784216a5bef369111b79b384c835d4628b593e3590435169ff0560d` |
| 76 | `theorem` | [epimorphisms.iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/epimorphisms-iff.md) | 431 | `result-track:23a78001e27339369d65a167b56d5853aecd1be840be912e23fd61db70b30370` |
| 77 | `theorem` | [isomorphisms.infer_property](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isomorphisms-infer-property.md) | 433 | `result-track:413961817c65aebe9fee1630c62d182b48a737328a6331d19d999883bf8ffd55` |
| 78 | `theorem` | [monomorphisms.infer_property](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/monomorphisms-infer-property.md) | 436 | `result-track:3fd0e5d420b044f8cf680939bd723a3c6e31f5e60b22efb78cadba1032fedb5a` |
| 79 | `theorem` | [epimorphisms.infer_property](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/epimorphisms-infer-property.md) | 439 | `result-track:c65e4955c4fc68bd9f011cee274d8c6211473fa47149d7b0cdcd7cf4fc478df6` |
| 80 | `lemma` | [isomorphisms_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isomorphisms-op.md) | 444 | `result-track:a39ffc9268073920043ac8cd0ebc095de37ccea0ce743d09301721cd1cd3703e` |
| 81 | `instance` | [RespectsIso.monomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso-monomorphisms.md) | 449 | `declaration-track:b7ea798b5ca57c0d1b8f2fc5230d8edc7f22337c5917f3c5c964a65a33951e30` |
| 82 | `instance` | [RespectsIso.epimorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso-epimorphisms.md) | 456 | `declaration-track:d1e535ad5db121255b9c23873ed3344d59cb7281dead1125e1593f055dc548ed` |
| 83 | `instance` | [RespectsIso.isomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/respectsiso-isomorphisms.md) | 463 | `declaration-track:8e09443cc4d9afbf848e5aa1c29c153afcd16b78b5f8d682bba42dde558087a7` |
| 84 | `def` | [prod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/prod.md) | 472 | `declaration-track:ea428ba678aae1e01e794f5498694c80da1abdd8e86e5f9edf86b07f7deed45a` |
| 85 | `def` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/pi.md) | 479 | `declaration-track:11b7d48423afd11948ebe0293f8e8e08d77423b1d350420ccc051af4be059505` |
| 86 | `def` | [functorCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/functorcategory.md) | 487 | `declaration-track:28ab9a044a21dc412cd0573229958af985c12b44400a92d51211fe3903fb39c8` |
| 87 | `def` | [arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/arrow.md) | 493 | `declaration-track:431248d3cda29aa8118d72a7aba5f0fb864fb78a11b8e4b415737f09dea9b1ea` |
| 88 | `lemma` | [isIso_app_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/declarations/isiso-app-iff-of-iso.md) | 501 | `result-track:301e480f35b44e641569eddb43767066c2ddb4ec5e4d3331c80dff83b6e83320` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41ef10033dfa455c210100bdfe2044c128fc6d9b9d220f292c3ca11063bbec5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5abcdbaec161c78ec09753b586cf32629e6a0cc18061caede94231a3168edf3c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5abcdbaec161c78ec09753b586cf32629e6a0cc18061caede94231a3168edf3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

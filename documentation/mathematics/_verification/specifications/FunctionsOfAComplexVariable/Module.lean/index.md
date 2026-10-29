# Verification target: Module

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72e9d3814d1ce9d7d1c2888c2f31f607a6e348b8",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Module/Variantdd486400abee281bf17215559ce9c5f886bccef5978b83f585d251ec659a9986.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/Module.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/Module.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72e9d3814d1ce9d7d1c2888c2f31f607a6e348b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Module/Variantdd486400abee281bf17215559ce9c5f886bccef5978b83f585d251ec659a9986.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Module/Variantdd486400abee281bf17215559ce9c5f886bccef5978b83f585d251ec659a9986.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Invertible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Star` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-8.md) | 62 | `declaration-track:a4eed171d3b33f7aeca71e6ee77d662f9977e8d1eb325a7b3f77835fafef0f50` |
| 2 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-6.md) | 66 | `declaration-track:9893bf420e8f4e5cca76cf360dee007c26440612d15d130144fd7ea3d8390a21` |
| 3 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance.md) | 71 | `declaration-track:02f6f5a0fe649c49d9f3b6ae34b4a7025ac71eeb96928aa241e4646fdea0ed6a` |
| 4 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-13.md) | 76 | `declaration-track:f0d27615a14ca1c1f5a95b561cbc46e2a98bf62f03c33350b07da08a9b567ac2` |
| 5 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-7.md) | 81 | `declaration-track:9d0d5593974542dfeeefba8baf59e852fd755fb805956980e3cd2c46ce0739e8` |
| 6 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-10.md) | 86 | `declaration-track:db0eb1352f8ee493084323bcc4cea5485d35c8cb519ba73771ab2611de9242dd` |
| 7 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-5.md) | 90 | `declaration-track:89142018f0fafd2881c51270e57ba9252e3ac883251aaf483d8a674530e47919` |
| 8 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-11.md) | 95 | `declaration-track:e326599b281827e9c507c4a60423448611945bcd24ae8f2b20ef7217c4ce3216` |
| 9 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-3.md) | 101 | `declaration-track:5b86275a1dba77e356202c6bf70189dde8b618b24efaab2591d0c354d977d235` |
| 10 | `theorem` | [coe_algebraMap](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/coe-algebramap.md) | 105 | `result-track:fab2d5a3b67d0eacc3be3274855689e34579e436a1f2aa251c950e5a08c1ef5c` |
| 11 | `theorem` | [_root_.AlgHom.map_coe_real_complex](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/root-alghom-map-coe-real-complex.md) | 115 | `result-track:a4977b44bdd4bd4ca0d5e31b4c119429cd4dede1972cb0781a6303282c8ac73d` |
| 12 | `theorem` | [algHom_ext](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/alghom-ext.md) | 120 | `result-track:2b2a9a4eeac9c1b14435c48c688e2a14fbe1014687f49e5e5629086358a04240` |
| 13 | `def` | [basisOneI](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/basisonei.md) | 129 | `declaration-track:721841d5883e0fc4b60ecb49520cc40c57109b76268c3139da2985d6393407c1` |
| 14 | `theorem` | [coe_basisOneI_repr](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/coe-basisonei-repr.md) | 141 | `result-track:5736426d7c427f02c7b1acfc0e30ef9b1e6a00c5d141f04081a38dd920124e24` |
| 15 | `theorem` | [coe_basisOneI](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/coe-basisonei.md) | 145 | `result-track:d110450079f82900bf87c366907ef3a13c374c980acfc2002c6ceadf482265df` |
| 16 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-9.md) | 155 | `declaration-track:c446dc7fa5d15cc505c09b5814a05954a1a82b9d0bb48631fb04707637bdfa3b` |
| 17 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-4.md) | 161 | `declaration-track:6cf0ced15058fb52cb8fcf92b7fb2ca1d12b1929cfb103f99df12c2f1ebfde96` |
| 18 | `example` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/example-source-edition-3.md) | 167 | `declaration-track:7e62e4dad1ddb3ac2289652c10b746131b5b5df8543cff0ed04668b057861f6e` |
| 19 | `example` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/example-source-edition-2.md) | 171 | `declaration-track:5962f10663335bba2e72358ab5a40a27681e4f47836e88225d0acf1f94aff872` |
| 20 | `example` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/example.md) | 175 | `declaration-track:26ae607074c6663104b4e8706382880cd40abfdb52ba3075d9cf2a919e9df2cf` |
| 21 | `theorem` | [Complex.coe_smul](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/complex-coe-smul.md) | 180 | `result-track:d3da2348aa02771a0329d2543b491845822e585adba00322e4b010e008c776c7` |
| 22 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-2.md) | 186 | `declaration-track:1715335268a82de51ce35e9de5f3b6844c7d230345d08904b4f0321a245ba892` |
| 23 | `instance` | [IsScalarTower.complexToReal](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/isscalartower-complextoreal.md) | 192 | `declaration-track:390d5edeb06d0748afd213dd37e9066f1784b27a95f70a332ceef5ac81fe538e` |
| 24 | `example` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/example-source-edition-4.md) | 197 | `declaration-track:d5e6d3bcb99ab4f1adfeb210bd1fba9fcf434d899bcb9366f8536f185babf112` |
| 25 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/instance-source-edition-12.md) | 199 | `declaration-track:e352f24332b4049df480ba6a4700eaa494b767999e26e09c7fb5598803e8385d` |
| 26 | `def` | [reLm](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/relm.md) | 208 | `declaration-track:dbf25ecb0ebfd99df3ceba84e823330207f08f8ef7f995acb7ab85ca73d462d9` |
| 27 | `theorem` | [reLm_coe](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/relm-coe.md) | 214 | `result-track:bd3f834421af1c8d10b6ad0b4bfba7b56007ce26bb6f40094e571939b8fd3d66` |
| 28 | `def` | [imLm](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imlm.md) | 218 | `declaration-track:599999ac926a9452183e9bc71cd35e1e4766e4bfb33b509e24b8cb054471b401` |
| 29 | `theorem` | [imLm_coe](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imlm-coe.md) | 224 | `result-track:59fc0fe6c54fb10403abaaebc516c5a8fa816ba44d8789a5d5a2d5152499f0e2` |
| 30 | `def` | [ofRealAm](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/ofrealam.md) | 228 | `declaration-track:d3077e73ded01d632afb30649f7a24764d39e94226e04ffa71c21ac18a12fdb0` |
| 31 | `theorem` | [ofRealAm_coe](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/ofrealam-coe.md) | 232 | `result-track:3bf34668f57f5e9db194b1da28fc806f0d8b41956d468acaf15817989249750c` |
| 32 | `def` | [conjAe](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/conjae.md) | 236 | `declaration-track:89a51d97a0b5d2b59be08bfc36f5ae96fd8e367debb1fc391ff633cb8f3094e2` |
| 33 | `theorem` | [conjAe_coe](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/conjae-coe.md) | 244 | `result-track:51c6bf0d58a944d6d7f43e7499293f9362d59ae68b26dc5b2098c438e6cc448f` |
| 34 | `theorem` | [toMatrix_conjAe](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/tomatrix-conjae.md) | 249 | `result-track:8a14d2b7b47f02f58eee4fff4c85c003dd3045b67cc9b50d0ae8d2b8f4ee390a` |
| 35 | `theorem` | [real_algHom_eq_id_or_conj](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/real-alghom-eq-id-or-conj.md) | 255 | `result-track:d7c550397199e711d49442e9202e244fef3b6a3d7f7c2dec0492b867e16949b9` |
| 36 | `def` | [equivRealProdLm](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/equivrealprodlm.md) | 263 | `declaration-track:ff8c44ec1e1497d7bdb959c579e1f6b7a84416a691da3aaa0a1082c23a9c58d6` |
| 37 | `theorem` | [equivRealProdLm_symm_apply](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/equivrealprodlm-symm-apply.md) | 267 | `result-track:9a5a55fdbcf4eb536c905402257d7c5a5a194a6e87ac57a50bbca568d7dc4d4c` |
| 38 | `def` | [liftAux](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/liftaux.md) | 276 | `declaration-track:b4dbf3f27d52ba44408b4564d0edcd89645fe3e73b20c09b1e8c842fb6935435` |
| 39 | `theorem` | [liftAux_apply](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/liftaux-apply.md) | 293 | `result-track:11974054664da01667cd1dba686513de2e323ef5b0b1fb0bb2f73a5300a58cc3` |
| 40 | `theorem` | [liftAux_apply_I](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/liftaux-apply-i.md) | 296 | `result-track:30bd20237157836aedde5804d8330476b68382958ebe922c468a168136ff28ca` |
| 41 | `def` | [lift](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/lift.md) | 305 | `declaration-track:6c3a45d17e6247be8aca1f74903d7ba1dd7024a7b9fb7ee617e1cd8b8af2dbd2` |
| 42 | `theorem` | [liftAux_I](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/liftaux-i.md) | 313 | `result-track:9b9756e7589f5bab473591e0f38acae44831532a1b07647351788922a1647137` |
| 43 | `theorem` | [liftAux_neg_I](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/liftaux-neg-i.md) | 318 | `result-track:8bcaeecc26b5a1edc5ebb7ab1828b6f75b107551af12a0e177147765e6a30d2a` |
| 44 | `def` | [skewAdjoint.negISMul](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/skewadjoint-negismul.md) | 334 | `declaration-track:14cbd2724c62c9bc4b811d1b0ef6c72489715dc9321bf22d24f94cea81b843ff` |
| 45 | `theorem` | [skewAdjoint.I_smul_neg_I](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/skewadjoint-i-smul-neg-i.md) | 348 | `result-track:6063ffa27e988a104d13c6236fb8bc02a23e37294ba784b3040a5f4308e7eec6` |
| 46 | `def` | [realPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/realpart.md) | 355 | `declaration-track:3ff885387c41a87cf87d388eeb9aeba7cc052da3974a6e13b11df0775a7c8caa` |
| 47 | `def` | [imaginaryPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imaginarypart.md) | 363 | `declaration-track:30acd1bfb236d4f92fe6576406eb26b60dee0e064dc55d8a228aade49352adc4` |
| 48 | `theorem` | [realPart_apply_coe](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/realpart-apply-coe.md) | 373 | `result-track:532f027408ca83de8ab78411bb6063b2c566f0e33b7148ba218705c594724962` |
| 49 | `theorem` | [imaginaryPart_apply_coe](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imaginarypart-apply-coe.md) | 377 | `result-track:980bcbd40f3f8289c5a6df64908d51f1e668f7a8592cff873c2336257f86d065` |
| 50 | `theorem` | [realPart_add_I_smul_imaginaryPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/realpart-add-i-smul-imaginarypart.md) | 384 | `result-track:0fea5d7a64c241fbd866b1a8f0aee8fa96f115a00c62f30416f1893a27c9614f` |
| 51 | `theorem` | [realPart_I_smul](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/realpart-i-smul.md) | 390 | `result-track:9eed4bd5d5e7f331f189463ab72a1659a03e913f590065ab110840a08e810d8e` |
| 52 | `theorem` | [imaginaryPart_I_smul](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imaginarypart-i-smul.md) | 395 | `result-track:175816018f44907c753ad87dbbaac42dcd4fc7959a0299ab7c3e0be3e1a12a81` |
| 53 | `theorem` | [realPart_smul](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/realpart-smul.md) | 399 | `result-track:e183c3b8850ae30107a1756d01d2b251cd422f2e72313b5d7006f27058dd4459` |
| 54 | `theorem` | [imaginaryPart_smul](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imaginarypart-smul.md) | 403 | `result-track:f8a0e8a2fa606b17a2c6cf77cb7b2f142fcf07f4b40a1f779ad121b9cc6a0781` |
| 55 | `lemma` | [skewAdjointPart_eq_I_smul_imaginaryPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/skewadjointpart-eq-i-smul-imaginarypart.md) | 407 | `result-track:7cd670d13d0f74c0eb0dbf21e7d9580e062c6066845d27942f52de8a047bd24e` |
| 56 | `lemma` | [imaginaryPart_eq_neg_I_smul_skewAdjointPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imaginarypart-eq-neg-i-smul-skewadjointpart.md) | 411 | `result-track:7293dea01393df062a736cd179c872121480ebc03b0cd4a61946f6c28a967bf3` |
| 57 | `lemma` | [IsSelfAdjoint.coe_realPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/isselfadjoint-coe-realpart.md) | 415 | `result-track:c8d798cccd17bbbbe5f7d3fada471f0b01694fa2d3da164b0682c91911092cae` |
| 58 | `lemma` | [IsSelfAdjoint.imaginaryPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/isselfadjoint-imaginarypart.md) | 419 | `result-track:07e5a27cf664444a28ca73e2a95c6dbfd72aab02c359da3ad05cbcf148edb7d7` |
| 59 | `lemma` | [realPart_comp_subtype_selfAdjoint](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/realpart-comp-subtype-selfadjoint.md) | 423 | `result-track:f260f19e6fc7a4c33c05e4b3fbc59c0f35c136393dcd701ebb6766bd5c1e37fa` |
| 60 | `lemma` | [imaginaryPart_comp_subtype_selfAdjoint](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imaginarypart-comp-subtype-selfadjoint.md) | 427 | `result-track:b2daeb64b9b56f1df84933d93c3be94e5c2cfdcc3b5156b3d2f2865f2850b528` |
| 61 | `lemma` | [imaginaryPart_realPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imaginarypart-realpart.md) | 433 | `result-track:2d748ba24506eff77e6a60695023aa2959470038e4be352e6a11ebfff07279a9` |
| 62 | `lemma` | [imaginaryPart_imaginaryPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imaginarypart-imaginarypart.md) | 437 | `result-track:22ae9b689b63d8d3e8bb91f94e662ca0e0a1889875cf7f8ef5104faac0d62b7c` |
| 63 | `lemma` | [realPart_idem](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/realpart-idem.md) | 441 | `result-track:eff9ac807d38366ef32321252a7b5375a11a41ff4efdcbd71dbc7d3f7d040522` |
| 64 | `lemma` | [realPart_imaginaryPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/realpart-imaginarypart.md) | 445 | `result-track:1ec0c3e4a1e1117185b6416e77769ecaae67e85d36289d1cb33b7c9b1a8d50c2` |
| 65 | `lemma` | [realPart_surjective](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/realpart-surjective.md) | 448 | `result-track:09262072ff2c01128d4a94aea3f565e7261be837a2b2e9ce7af15bb13a334928` |
| 66 | `lemma` | [imaginaryPart_surjective](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imaginarypart-surjective.md) | 451 | `result-track:39c2f50b260c72592e85bebd1bb9a167c287915b78ebb780b8487bfd0166fd9a` |
| 67 | `lemma` | [span_selfAdjoint](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/span-selfadjoint.md) | 457 | `result-track:54650a8fa80351786ff592b25ceaa33122ed9777cbddb7b78b37980467c0bad6` |
| 68 | `def` | [Complex.selfAdjointEquiv](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/complex-selfadjointequiv.md) | 465 | `declaration-track:1634d2e491655fa2c4910d3204edceb3c1bbed27fa10cbdc1c359576c9da6014` |
| 69 | `lemma` | [Complex.coe_selfAdjointEquiv](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/complex-coe-selfadjointequiv.md) | 473 | `result-track:df76e4f534f8ff2ec77e3a820d306b3bf6314c5f75bc2748f3dd86b6fdb25be7` |
| 70 | `lemma` | [realPart_ofReal](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/realpart-ofreal.md) | 479 | `result-track:3040b6ccb4bc63fec85c2155b09df81bca2edae5e1d458b425bed8abc897ce7d` |
| 71 | `lemma` | [imaginaryPart_ofReal](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/imaginarypart-ofreal.md) | 484 | `result-track:6210467fb5df995e74a8757dd35df40794bbe0d9f5994e3cec1bbffab08d47c3` |
| 72 | `lemma` | [Complex.coe_realPart](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/complex-coe-realpart.md) | 487 | `result-track:1efcb631afe039335e9822c2c965c109d2f97c11543d0e47990163e8c224b04d` |
| 73 | `lemma` | [star_mul_self_add_self_mul_star](../../../../FunctionsOfAComplexVariable/Module.lean/declarations/star-mul-self-add-self-mul-star.md) | 493 | `result-track:04bee490cd70708050342b264e4a8c2ba1bdea92939727ad6c66590d1e0a1bf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7595a6d5b2319d4b6b89ef74d68e1a13a63192d931ab30819792ebd1f180253 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Module/Variantdd486400abee281bf17215559ce9c5f886bccef5978b83f585d251ec659a9986.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Module/Variantdd486400abee281bf17215559ce9c5f886bccef5978b83f585d251ec659a9986.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

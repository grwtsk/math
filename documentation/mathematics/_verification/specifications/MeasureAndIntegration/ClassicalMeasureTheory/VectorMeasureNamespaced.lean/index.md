# Verification target: Vector Measure Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bc7047d4e9c89a107ff3c8d23514847ae0ce913",
  "lexical_observation_count": 155,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bc7047d4e9c89a107ff3c8d23514847ae0ce913`.

Source path: `GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [VectorMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/vectormeasure.md) | 64 | `declaration-track:831bf050f4aa5f74af90f0b80152ec62385e600de9a3cd391f386fc5a16dd548` |
| 2 | `abbrev` | [SignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/signedmeasure.md) | 78 | `declaration-track:697f5d6f7d2b46e8ebef9271868f918dbd565869779ed41401910fb658a43aea` |
| 3 | `abbrev` | [ComplexMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/complexmeasure.md) | 83 | `declaration-track:1a365faf8f6795726e27a0bbe3040a64e68f05fe9a06c7e71bdead10fe5ac8b7` |
| 4 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instcoefun.md) | 97 | `declaration-track:71c410b1b2d572f57b3cd845af8e0b08a8b88ff5d4b8227d74db0eebaf7ce712` |
| 5 | `theorem` | [empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/empty.md) | 106 | `result-track:d8e1d587d776333e7c4ad55688137dc3c4dc78d3dec533e51c5862a6866d9eee` |
| 6 | `theorem` | [not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/not-measurable.md) | 110 | `result-track:fe5bc1cab43932e85dc098ea279930f108a058d6a11683e91a41a1ac4a554756` |
| 7 | `theorem` | [m_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/m-iunion.md) | 114 | `result-track:fc36fc4a6478a80b8ac36ada000bb16d1eb876ab0032da42504062c4561cc192` |
| 8 | `theorem` | [of_disjoint_iUnion_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/of-disjoint-iunion-nat.md) | 119 | `result-track:a7b7f05692558c38ff7d8be25a9c9ddbad550e0fe12ab4315cf0f7d610362725` |
| 9 | `theorem` | [coe_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/coe-injective.md) | 125 | `result-track:a90e9d2002784fe0d654bfb7e0b5c95d878ff20e850eee7e3155a5f4734a30dc` |
| 10 | `theorem` | [ext_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/ext-iff.md) | 131 | `result-track:1f28925be616f07bf6a01eeaf8e997b6843a753580ec17a64c3435e2dadbe7f8` |
| 11 | `theorem` | [ext_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/ext-iff-source-edition-2.md) | 135 | `result-track:2545f4a036b1b4de83e776b00810d0324a542627e70dd92f6af2283ba2ad2ab2` |
| 12 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/ext.md) | 147 | `result-track:786c06747c4848a2913d78fbad2ce81c106ae034c7df005e49a8870dae5df1cc` |
| 13 | `theorem` | [hasSum_of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/hassum-of-disjoint-iunion.md) | 153 | `result-track:9eb7362ecfde3de73f7b6c592b91bff55c5eaa43f41e59ec8af03cc20e7d1d11` |
| 14 | `theorem` | [of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/of-disjoint-iunion.md) | 188 | `result-track:99b23f82d1b15c52d03a09d298e40462f9fbde255dcff0c0f919f9ddf28e0ced` |
| 15 | `theorem` | [of_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/of-union.md) | 193 | `result-track:32474725cc94c7a77dbe370f2cc27b0e6458a5f838316cb14da638385447e3f2` |
| 16 | `theorem` | [of_add_of_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/of-add-of-diff.md) | 199 | `result-track:dd4d47cb600903e582bee8d0d671e5f02e59c56b2fc55b8bc1e792869693ef94` |
| 17 | `theorem` | [of_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/of-diff.md) | 204 | `result-track:41ae1510c915712476ba609fc18ff244e539f53d675ba252aca2486be5b68c4e` |
| 18 | `theorem` | [of_diff_of_diff_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/of-diff-of-diff-eq-zero.md) | 210 | `result-track:40fdcd8979bbb446b11b79ada7022cae93068aaab8082d18dc830321f2dc3874` |
| 19 | `theorem` | [of_iUnion_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/of-iunion-nonneg.md) | 229 | `result-track:5d64c4fcfb0bc196574d62a2d6ff38c5ef0d46c1f6a754d7a63b23e6944ea2eb` |
| 20 | `theorem` | [of_iUnion_nonpos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/of-iunion-nonpos.md) | 235 | `result-track:7341e04ec0bc4a6affc4d0738cf6debc323135fbc9e280c2808df6571dcd3fb9` |
| 21 | `theorem` | [of_nonneg_disjoint_union_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/of-nonneg-disjoint-union-eq-zero.md) | 241 | `result-track:51f9a3a92664d8aab9f57c09c288c83dec42801607e4073f9843509be972d878` |
| 22 | `theorem` | [of_nonpos_disjoint_union_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/of-nonpos-disjoint-union-eq-zero.md) | 248 | `result-track:ccdfb256a83c9deceb1b34fa0603e26aa44b53ad63623dbe7c76daa269c2b0de` |
| 23 | `def` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/smul-source-edition-2.md) | 265 | `declaration-track:c906918f9b658814c68832d9458434f81748a51333de1221dff4d61d93c328a5` |
| 24 | `instance` | [instSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instsmul.md) | 272 | `declaration-track:6d32cef331dc4b13fc0ff732921bac8910dae8bcacf637e2b2189e0ca4a9e2e3` |
| 25 | `theorem` | [coe_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/coe-smul.md) | 277 | `result-track:ba00480b141a0481c772e66d565ae98f3f94d77473f7591422dc79f07842bbcf` |
| 26 | `theorem` | [smul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/smul-apply.md) | 280 | `result-track:f0da90005b50f3d2b1dea049bb653218a55af1138d4f49ed650b136c102e5571` |
| 27 | `instance` | [instZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instzero.md) | 289 | `declaration-track:93756a4848f33b9ff3116b5c3450bf6c0ec0e6a36fee61c3a7ad2d319197630b` |
| 28 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instinhabited.md) | 293 | `declaration-track:9ce1f402a0268569ed4d6719f790db485e6a21aebf0d90f5b469466ba95e6673` |
| 29 | `theorem` | [coe_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/coe-zero.md) | 298 | `result-track:d4c2e7e06456d23c4953c939fee9c567e7ac076a26983327732bda16ba619408` |
| 30 | `theorem` | [zero_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/zero-apply.md) | 301 | `result-track:340c1f48e464e26a9be2a6502660b2962b8500eb3aa54c612bf9cf04ee5cb6e4` |
| 31 | `def` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/add-source-edition-2.md) | 307 | `declaration-track:f1cc25589ad6f3f66a953c504e986c1ea3a6552ed9fde4577bbcf28fcc20a4eb` |
| 32 | `instance` | [instAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instadd.md) | 314 | `declaration-track:123962e910040acad312296ab0c420abb92877a3e37b7faf083e0b326e92a4fc` |
| 33 | `theorem` | [coe_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/coe-add.md) | 319 | `result-track:2d01f4829b7b52cfdb65fabb0d2bfcd40bb89e9dab5f1caa40c529016c834f3c` |
| 34 | `theorem` | [add_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/add-apply.md) | 322 | `result-track:b0838bc456cf1cf6464cf938a5307b3642c4d0fe4745624cbb18c6f8bb892e89` |
| 35 | `instance` | [instAddCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instaddcommmonoid.md) | 325 | `declaration-track:3d4ec24011ef91202e9f323486fdd7d788a9cdbcd7b7527286cdad6048bb3a57` |
| 36 | `def` | [coeFnAddMonoidHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/coefnaddmonoidhom.md) | 331 | `declaration-track:0433c476dac3f44d3f3f07e2e8e170c57f7a5f5495d5cb8da75079f5514c0b85` |
| 37 | `def` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/neg.md) | 344 | `declaration-track:96746064905622e2df5e613b97a3707f3ad92b01b03f95edb28c351645a50508` |
| 38 | `instance` | [instNeg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instneg.md) | 351 | `declaration-track:48616d774c4cd683db4ee1428a96cf5be9b1bc33878f61c6b8992c10936affda` |
| 39 | `theorem` | [coe_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/coe-neg.md) | 356 | `result-track:580824ff14bacdc19867082ecffc8c8daf3c8b26303de620af15bc19612a47d8` |
| 40 | `theorem` | [neg_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/neg-apply.md) | 359 | `result-track:211e200323b88cf28bf5bfb867a28cb2114958a1810f3093ae9dbb36f5d67fa3` |
| 41 | `def` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/sub-source-edition-2.md) | 363 | `declaration-track:c63e332a5ceafa8e68a686ec7f28729a1688efaa91b7518d858b9ff111264be4` |
| 42 | `instance` | [instSub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instsub.md) | 370 | `declaration-track:492fbea6087ee9497a196aad535a6291556e4c2a102ea8bad10081ab21408e65` |
| 43 | `theorem` | [coe_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/coe-sub.md) | 375 | `result-track:35fb8b100b3724c0cd94b45caebcec99380942923fdaacfe61725a0964406ade` |
| 44 | `theorem` | [sub_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/sub-apply.md) | 378 | `result-track:fb86c7d61f8b3235f265cbecc979ac39eefd01f6854584bef9da4ebc738a3428` |
| 45 | `instance` | [instAddCommGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instaddcommgroup.md) | 381 | `declaration-track:6b4f8eb5bb821b29837a06684d539b8a1de5660722b57287946b6ddad921d679` |
| 46 | `instance` | [instDistribMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instdistribmulaction.md) | 394 | `declaration-track:31448131be5ef71f32692f5a5efa6c247a53d4235b19a2de7b6fabd253e0139a` |
| 47 | `instance` | [instModule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instmodule.md) | 406 | `declaration-track:b13f4cc5b27188a1e8c05ac0c67a194d243cccf6b3a49c7d33e9f430df926202` |
| 48 | `def` | [toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tosignedmeasure.md) | 418 | `declaration-track:3feb76d35f7da8db5d523abc00393e67e1addd236034f47b52ced4c263b3463e` |
| 49 | `theorem` | [toSignedMeasure_apply_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tosignedmeasure-apply-measurable.md) | 443 | `result-track:62074dc2478476e6e3f90aae7c3a5286c31cf1f56e92a62f91a92dc2d63d01c7` |
| 50 | `theorem` | [toSignedMeasure_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tosignedmeasure-congr.md) | 450 | `result-track:2421b1dba31cf31abfe0d16e5437cd34db2c2111672d92404df4ea94ad0b27ab` |
| 51 | `theorem` | [toSignedMeasure_eq_toSignedMeasure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tosignedmeasure-eq-tosignedmeasure-iff.md) | 455 | `result-track:e4c86c2b68d202b03001577166a364b516d165545f7529234dbf722d275325eb` |
| 52 | `theorem` | [toSignedMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tosignedmeasure-zero.md) | 467 | `result-track:671ebb2158b783e01e1078a4596bb11a5f5265aa624b12c5c48ee177758eabc1` |
| 53 | `theorem` | [toSignedMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tosignedmeasure-add.md) | 473 | `result-track:c4b85c25dd7a4211357cce055611eb04170c713504d011b743df757949228a39` |
| 54 | `theorem` | [toSignedMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tosignedmeasure-smul.md) | 483 | `result-track:da47061a2a8520a0a15681b65db750dffbac6035c1d252de4179f074550b4482` |
| 55 | `def` | [toENNRealVectorMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/toennrealvectormeasure.md) | 492 | `declaration-track:c79809df7c668e5fb9d8e57b4a955d6f246b51161dc22d645543a5788abac363` |
| 56 | `theorem` | [toENNRealVectorMeasure_apply_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/toennrealvectormeasure-apply-measurable.md) | 503 | `result-track:e7291069dcf90b4a3fbd5a49a86954e917d6c14c248f33bf88107ce126fdf41b` |
| 57 | `theorem` | [toENNRealVectorMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/toennrealvectormeasure-zero.md) | 509 | `result-track:5c8f9dc44be99e5fde8697dadff001090133ed017734aab7c3ecbe86a3028d03` |
| 58 | `theorem` | [toENNRealVectorMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/toennrealvectormeasure-add.md) | 515 | `result-track:3ce9b1b41843f6470bfe7000ca987647833c9600c314d537719329fa876fbecc` |
| 59 | `theorem` | [toSignedMeasure_sub_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tosignedmeasure-sub-apply.md) | 522 | `result-track:98a28c107380dc5f91238021336000a3948f2e48607386ce99358ddb166ea5fb` |
| 60 | `def` | [ennrealToMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/ennrealtomeasure-source-edition-2.md) | 538 | `declaration-track:d4c8742637309b5334ebf1a8cfb91ef0baebfd511e90bed5fed34fc345d61dd3` |
| 61 | `theorem` | [ennrealToMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/ennrealtomeasure-apply.md) | 542 | `result-track:2a7b0116b89941c4b3eb0f60e8cc858cf6cca603db70fa7dce4bc0cd8c3063b5` |
| 62 | `def` | [equivMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/equivmeasure.md) | 551 | `declaration-track:f0fadb8cbce545ee3fbff7d74737f6ddb61630e7b49c3c48d4d217e79496bdea` |
| 63 | `def` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/map-source-edition-3.md) | 571 | `declaration-track:fd16316d0c43eab6cef384ad9668dbf6d3dcc0c1ac281d1664d9349eec983b7b` |
| 64 | `theorem` | [map_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/map-not-measurable.md) | 585 | `result-track:1295bbe04f9951a675fec6fdfbe3201193976b39a0cfd6d3f7a7879666ab251b` |
| 65 | `theorem` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/map-apply.md) | 589 | `result-track:fb34a24e1b3e2a07cf4061eae526ccfa71c14388f72a5bf4903a8d5ae80a1da0` |
| 66 | `theorem` | [map_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/map-id.md) | 596 | `result-track:c7e813bd13f8382886996cf3b13a2108815aae70c3f6f5dd5854704e20330d1d` |
| 67 | `theorem` | [map_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/map-zero.md) | 601 | `result-track:5d02776ceece7e266b5e700c6bedc32df34e1414048d44fc965d1db07991c815` |
| 68 | `def` | [mapRange](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/maprange.md) | 614 | `declaration-track:4d9e6f3b657a95c6307c47f9cd05e69e5213868cf909732642e346cdbc1d0157` |
| 69 | `theorem` | [mapRange_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/maprange-apply.md) | 622 | `result-track:5c05de7cdd7f4c8778948b15b267ab35e331dc31ea831d9120f9772802b6667b` |
| 70 | `theorem` | [mapRange_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/maprange-id.md) | 627 | `result-track:f6b0328affcf7c1dfbf595b3b924d48a930629caa2336fa7471fe7c30c15f359` |
| 71 | `theorem` | [mapRange_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/maprange-zero.md) | 633 | `result-track:8e822d5e72900943350bd2b4154796210f237db8ebd839a8210ba5ceb730db28` |
| 72 | `theorem` | [mapRange_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/maprange-add.md) | 644 | `result-track:a36f4997055d90ace8ab36ed74bc270e4cc051e71cdde60776944a8d79265a5a` |
| 73 | `def` | [mapRangeHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/maprangehom.md) | 652 | `declaration-track:e2f8bc9109bb765237a3e3f1d8b2990481848e8b72ce6feb87e4c2f5c1b60350` |
| 74 | `def` | [mapRangeₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/maprange-source-edition-2.md) | 668 | `declaration-track:f80acc067b89671497786f79f707ac05c27f15805a4ef4f7f6029f6edef34378` |
| 75 | `def` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict.md) | 682 | `declaration-track:01ea63595fbf1f5d9ded774763c1edf027852cd49c6c73a72daa176eeca92569` |
| 76 | `theorem` | [restrict_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-not-measurable.md) | 697 | `result-track:455465ec03f21debab42103264c77afa4dcd13c125aed635355284592c87176b` |
| 77 | `theorem` | [restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-apply.md) | 701 | `result-track:03fabc754572dc899aecc834ccaabf2c55724e0108639fe87d4a2ea37896fa2f` |
| 78 | `theorem` | [restrict_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-eq-self.md) | 707 | `result-track:7bcc43fa7191d0ab49ad7fc0a7f77461a7e453a204e94f4a34cb9d18cc888472` |
| 79 | `theorem` | [restrict_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-empty.md) | 713 | `result-track:7d166e84d206a7a66c3c0ecca7bd10f1e7b6cdda01d3483b58b996b88b7c1b7e` |
| 80 | `theorem` | [restrict_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-univ.md) | 719 | `result-track:26a28a8b3f89bd9275b6ef38fbe9ffc510cad0cc5c2890e78e633e09cc15b9ab` |
| 81 | `theorem` | [restrict_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-zero.md) | 724 | `result-track:51227c8ede80ce5429cacf9be61efee5babc9077c8c05b3dd0bfefae2a29fed4` |
| 82 | `theorem` | [map_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/map-add.md) | 736 | `result-track:2bb4030eb35db26d7e8383cd0e620bbaf23fe4218f37fe1c2cb6dc5817b7ad3b` |
| 83 | `def` | [mapGm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/mapgm.md) | 745 | `declaration-track:9b04c8b4ec7509dc512d2b374cdedabc75e574685e1b4bc207f504e157f08864` |
| 84 | `theorem` | [restrict_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-add.md) | 751 | `result-track:712b068f223d8ca44abb59a3ad8ca6db0d5151c4db315700d0930d9d46e9fa4b` |
| 85 | `def` | [restrictGm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrictgm.md) | 761 | `declaration-track:ff4e237ec739f653fb3b6cdf3bff21554a52ce5fd2ad1a2c88fe1965b35199d5` |
| 86 | `theorem` | [map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/map-smul.md) | 780 | `result-track:ab7db910271b4cc3990055aa22cfa8526617e73ada08a4c4ddd012b872755dd8` |
| 87 | `theorem` | [restrict_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-smul.md) | 791 | `result-track:5f52dadfac99df223ed6dbc4c6d47d3707eb8398757db611b7385659aaf28e50` |
| 88 | `def` | [mapₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/map-source-edition-2.md) | 814 | `declaration-track:e5a2d3b6ff218157898d9d4a08d8db25500ed45069b4e5da1e112cf8eb911294` |
| 89 | `def` | [restrictₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-source-edition-2.md) | 822 | `declaration-track:0c925490ba720e53e598833611653dc61e3ae6a815d389c486d4eef2706737c3` |
| 90 | `instance` | [instPartialOrder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/instpartialorder.md) | 837 | `declaration-track:107008372d7429b43738d5c8f511a3f0f53bb36e7f9c72f728d14ed08f8868ac` |
| 91 | `theorem` | [le_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/le-iff.md) | 845 | `result-track:16c1e3850c0c15dcb998a2d008e643394552dc4f235fc5e0b6309c7bf936752e` |
| 92 | `theorem` | [le_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/le-iff-source-edition-2.md) | 848 | `result-track:1f213a3e170937935da6fdb05c8295ef81521502a2b12816121c6a0c717e54d9` |
| 93 | `theorem` | [restrict_le_restrict_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-le-restrict-iff.md) | 869 | `result-track:e4221d3d8eaa23df97df02084e9c152d7ae1e7c9eaf9e10803d49b68a6fc32bc` |
| 94 | `theorem` | [subset_le_of_restrict_le_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/subset-le-of-restrict-le-restrict.md) | 877 | `result-track:c56090d7cbfc02e9d6c111bfea9859c6e1423e04da5e87480c2830197e71a1db` |
| 95 | `theorem` | [restrict_le_restrict_of_subset_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-le-restrict-of-subset-le.md) | 884 | `result-track:5bacc462d1e67efb768810bc0df32b4fff8e4a8dd3faeefae4cb963ff5859704` |
| 96 | `theorem` | [restrict_le_restrict_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-le-restrict-subset.md) | 891 | `result-track:1ca10fc2529bde019db9638f1f76b73004289dd2c6ad407fd360de90b28ee7a7` |
| 97 | `theorem` | [le_restrict_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/le-restrict-empty.md) | 897 | `result-track:8d61171111d79dcb91389a4b69d2acfa96d92d378e1c3f927eacc705a1a08c22` |
| 98 | `theorem` | [le_restrict_univ_iff_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/le-restrict-univ-iff-le.md) | 902 | `result-track:9bdad79d3ba797c4abf9d64fe8ee83d0b2a8dac22b8f0eed194ce7e4502f9ebf` |
| 99 | `theorem` | [neg_le_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/neg-le-neg.md) | 922 | `result-track:76c9cf80d7bd2a30ea0bb7fd210f986f366faf5d8e16374fd78cc6f42ca9eb5d` |
| 100 | `theorem` | [neg_le_neg_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/neg-le-neg-iff.md) | 931 | `result-track:67b9b3ef7bba12fafff8efdf87fb8e685a2b6033860cb65447265ed548a6970b` |
| 101 | `theorem` | [restrict_le_restrict_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-le-restrict-iunion.md) | 943 | `result-track:6be8ec628fb50f08b62b5deb7e7e760f753735d5faf461290ff2d5c17596e04b` |
| 102 | `theorem` | [restrict_le_restrict_countable_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-le-restrict-countable-iunion.md) | 965 | `result-track:9bc3bb72a30df305d824472ba265550fa6bba069ce548a2b6b1a21a72da7849d` |
| 103 | `theorem` | [restrict_le_restrict_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-le-restrict-union.md) | 978 | `result-track:b9fe6c981124ac4f6b8eabf087d821ff97ad3d6839ddcbce060bfda845887ad3` |
| 104 | `theorem` | [nonneg_of_zero_le_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/nonneg-of-zero-le-restrict.md) | 994 | `result-track:db2c1cfa48f3adf862e61f30e58485a4ab74578dd05817e7b9e71ac9cf3a377d` |
| 105 | `theorem` | [nonpos_of_restrict_le_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/nonpos-of-restrict-le-zero.md) | 1000 | `result-track:69d86529376663f03cbdf05038df45756c0ef562247dfc38ef00a63f3f67f7ec` |
| 106 | `theorem` | [zero_le_restrict_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/zero-le-restrict-not-measurable.md) | 1006 | `result-track:079e31ceb25bb8474e3380715a507c99b20e85d1113e92626b535912d6b79258` |
| 107 | `theorem` | [restrict_le_zero_of_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-le-zero-of-not-measurable.md) | 1010 | `result-track:ca0aeae7911d2882e2e32de9e3f26ff1da9fb49b30c9aad7686de43b7b69b3eb` |
| 108 | `theorem` | [measurable_of_not_zero_le_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/measurable-of-not-zero-le-restrict.md) | 1014 | `result-track:ee0bcbe4e2aef7633d12b0644b9c684aa98dd0a292b6404482c77ccb58f29759` |
| 109 | `theorem` | [measurable_of_not_restrict_le_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/measurable-of-not-restrict-le-zero.md) | 1018 | `result-track:da385b2147397d10a5f9272fe46b7d1ed9574926a5115eccaaedb7de2d90b082` |
| 110 | `theorem` | [zero_le_restrict_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/zero-le-restrict-subset.md) | 1022 | `result-track:7c1a0f058d6e0d71673fb70f136399b798a86c5c1276eebabf7ecc057adcf819` |
| 111 | `theorem` | [restrict_le_zero_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-le-zero-subset.md) | 1027 | `result-track:5375fd0772c301618581d12315a64f9987b01e603876bae59cc2b64ee587ec95` |
| 112 | `theorem` | [exists_pos_measure_of_not_restrict_le_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/exists-pos-measure-of-not-restrict-le-zero.md) | 1040 | `result-track:d1945c9278e171910d31b69a6d1e7a08a4c1aff4d2643e258def586c0605729b` |
| 113 | `instance` | [covariant_add_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/covariant-add-le.md) | 1055 | `declaration-track:cb30ce2bc1503652bc3fef847daaf247176058e8a0236b3485b4d26d2854f6be` |
| 114 | `def` | [AbsolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/absolutelycontinuous.md) | 1071 | `declaration-track:07404b3346ee97715198cf97ee7ae8cc4baee0457e48f5537a92bbf4180770a2` |
| 115 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/mk-source-edition-2.md) | 1085 | `result-track:eadf9e3bc22fba8183c4dc50810adcfe352ca56474cd4a00cce4c03a0574ed62` |
| 116 | `theorem` | [eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/eq.md) | 1092 | `result-track:d945bb8fa520e5dbafcd0250c6f01cfb37c7566c8e93a9f5e6cedfdc8e7aa7e3` |
| 117 | `theorem` | [refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/refl.md) | 1097 | `result-track:746ec5f1f10e19a0763f1dfcc2cedcc589d4f517b9125b6c6ac0bedbd244ec29` |
| 118 | `theorem` | [trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/trans.md) | 1102 | `result-track:e8e2556f5bde920405b2185f2bd2b5141558d43afec29b2696eda29fdc03880e` |
| 119 | `theorem` | [zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/zero.md) | 1107 | `result-track:0d5c3921e6166fdd742391512cdd6bbdc718b79f72866863d0439bf652ae4576` |
| 120 | `theorem` | [neg_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/neg-left-source-edition-2.md) | 1111 | `result-track:300fd8cef1c21915ebdd383453d6e4ddcb2f839b213fcbee03a705c950dab739` |
| 121 | `theorem` | [neg_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/neg-right.md) | 1117 | `result-track:438ba9018ce73fe315805c4a0518b3c55c20f079e565dadbad24f35747557cb5` |
| 122 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/add.md) | 1124 | `result-track:ce8a6b69e8dbe4aace2346ac0ea73ba270bb10a823b06e7b0b3b509d73b6dcdf` |
| 123 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/sub.md) | 1130 | `result-track:7ddf0d96e1e65eaaa3a8fa479d467fee50f88017eed7c4f2eb7b83f1a1259d4e` |
| 124 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/smul.md) | 1137 | `result-track:5c0130267cd479ad3383b0efb28700614962ebbd34ff53ab57734d1595a7dc34` |
| 125 | `theorem` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/map.md) | 1143 | `result-track:22c0d943ce1d5d7712d8f4dc69b960715ea0ae767e6599e2277373165586c6ee` |
| 126 | `theorem` | [ennrealToMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/ennrealtomeasure.md) | 1152 | `result-track:854eeb4e57d7ea21201501630145e5c654b47fbaa3e89ab19eb093ec78cd44d0` |
| 127 | `def` | [MutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/mutuallysingular.md) | 1173 | `declaration-track:65174a65320cdd8064a5262e025a8d96062c40ddf3bc937a4c614c28420a9635` |
| 128 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/mk.md) | 1185 | `result-track:634ee33e93d97e3a69b62d4e2ac93fbbd958c7cce3f821233625d58aabd87ce1` |
| 129 | `theorem` | [symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/symm.md) | 1194 | `result-track:9de7acaa5de2ee88e9e98f78176443200893b96f55c6327d4dc2f3dd987566e1` |
| 130 | `theorem` | [zero_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/zero-right.md) | 1199 | `result-track:5cd8dba0e61c135b6c06b4a3c743580c4cbf695164689e3e5452644dea53d18e` |
| 131 | `theorem` | [zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/zero-left.md) | 1204 | `result-track:c63693c39a46f1a7219c8de70f8c9082831604c6bc0e578884657255ab38a6bb` |
| 132 | `theorem` | [add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/add-left.md) | 1208 | `result-track:386cf92814d4b7b6c973f69000bea9d45eb92f8d0908c2c901f984caa2fe8293` |
| 133 | `theorem` | [add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/add-right.md) | 1228 | `result-track:f2753ada166771395eac48ec7a219c465b084f06bf4e14960e4d1ff85e432e51` |
| 134 | `theorem` | [smul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/smul-right.md) | 1232 | `result-track:3308b03ff8e75ed0b4e1eddb8ca206e26722462ed4a96f4fff51f3a6e90210b1` |
| 135 | `theorem` | [smul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/smul-left.md) | 1238 | `result-track:19655cd390be5a01315a31ad6e19c6c0481e2d16f71beb7300aecef5905f5312` |
| 136 | `theorem` | [neg_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/neg-left.md) | 1243 | `result-track:17c57c58c3ec0e65dd80ddf6c851f0341764ae9d1b39d502247735a4aab64ead` |
| 137 | `theorem` | [neg_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/neg-right-source-edition-2.md) | 1251 | `result-track:670e31c039e059ed7e9c83264822807e650b3a4a8dbf0501a42422a9758a1447` |
| 138 | `theorem` | [neg_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/neg-left-iff.md) | 1257 | `result-track:675bf7f2f2e4e339a938a1b70dcac070c6a51af8ba3059f206eb9d199960fa84` |
| 139 | `theorem` | [neg_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/neg-right-iff.md) | 1263 | `result-track:f972688f2518fd5b5fc4a12dcf36163e2f61466abe06fd8c08d51c10e64891ed` |
| 140 | `def` | [trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/trim.md) | 1274 | `declaration-track:fe9420bcb0900367524e335dc9e41585038e113ae0472f97d4ed103e4620a7bc` |
| 141 | `theorem` | [trim_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/trim-eq-self.md) | 1291 | `result-track:b1ec2aaaf8f53d11ba69526c95035390f634924887dc5e85bba22f0eeffdcf70` |
| 142 | `theorem` | [zero_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/zero-trim.md) | 1297 | `result-track:2bb145eb0246b37223fa5709a131bf7e7d47128afd046b90ef79a370858b82ed` |
| 143 | `theorem` | [trim_measurableSet_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/trim-measurableset-eq.md) | 1302 | `result-track:e73e8691b6753561ad70e20ca14e7865d24ac6764a8c0a7d0d6d0a23f8868341` |
| 144 | `theorem` | [restrict_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/restrict-trim.md) | 1307 | `result-track:a16d55c939c8c5e30f6109ae297de7da8722cfaed9829fa46797c891f6fe926e` |
| 145 | `def` | [toMeasureOfZeroLE'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tomeasureofzerole-source-edition-2.md) | 1327 | `declaration-track:f1ec5bf9ff284e9cd0b68e2592e8e5da7649e6daea06ed9f88c319c345807373` |
| 146 | `def` | [toMeasureOfZeroLE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tomeasureofzerole.md) | 1334 | `declaration-track:9f479d68eaa4b5a1e6f3cce49695d702092df08e52ad6b346d20dce260db9905` |
| 147 | `theorem` | [toMeasureOfZeroLE_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tomeasureofzerole-apply.md) | 1357 | `result-track:7daade6fee8c7216d1dc15e16503141f14e7efb19b65aca27a1232c9d1a9a8dd` |
| 148 | `def` | [toMeasureOfLEZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tomeasureoflezero.md) | 1366 | `declaration-track:22ba1ef3b6ede58f70285e7aae2c2276cf2448efb2296cfefe63fb731cb1e279` |
| 149 | `theorem` | [toMeasureOfLEZero_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tomeasureoflezero-apply.md) | 1371 | `result-track:7de16335401c2bfd8aa6a47f4a56ea2d5ecf078a615108fbc5f4301a32ff73d8` |
| 150 | `instance` | [toMeasureOfZeroLE_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tomeasureofzerole-finite.md) | 1381 | `declaration-track:6762430e4e0a8d588e866398c86249e6e71d28e59e1b44124e7c43e00765d821` |
| 151 | `instance` | [toMeasureOfLEZero_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tomeasureoflezero-finite.md) | 1389 | `declaration-track:ef770b6bdc97490ec3e557b8a92e5843acb547501756b25983234554d7c9d2b1` |
| 152 | `theorem` | [toMeasureOfZeroLE_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tomeasureofzerole-tosignedmeasure.md) | 1396 | `result-track:ce7ffbba496bba87047ac925c547093b5ade0a60c4d693b24641446ea7d4f695` |
| 153 | `theorem` | [toMeasureOfLEZero_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tomeasureoflezero-tosignedmeasure.md) | 1402 | `result-track:8d1355ba11ce2b91c4205b7d7bf9889cf1e72c9608d3c3a19a713cb66f94e487` |
| 154 | `theorem` | [zero_le_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/zero-le-tosignedmeasure.md) | 1416 | `result-track:ee424ac58a62d7c40ed69b3912003996a9f4987f014c42f2a197975d8035c053` |
| 155 | `theorem` | [toSignedMeasure_toMeasureOfZeroLE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureNamespaced.lean/declarations/tosignedmeasure-tomeasureofzerole.md) | 1423 | `result-track:b70938b057f2a179c3c334f2d361c589f0f214b6cebaa4448f31a7373acc6bef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14b1b9aae615b8afad80fcecfff293ddb75859e97adfd848e1ba8091044cdbd2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

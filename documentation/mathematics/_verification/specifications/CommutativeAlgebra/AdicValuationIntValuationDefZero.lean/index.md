# Verification target: Adic Valuation Int Valuation Def Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "832efdce7053f304164f3c839e771c8d8626427a",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `832efdce7053f304164f3c839e771c8d8626427a`.

Source path: `GRWTSK/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ExtendToLocalization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.ValuedField` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.WithVal` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intValuationDef](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluationdef.md) | 74 | `declaration-track:246524ddf5ef3bfd96b61ef50ebaf2e6480e32e791b5837be920dc92a06188dd` |
| 2 | `theorem` | [intValuationDef_if_pos](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluationdef-if-pos.md) | 80 | `result-track:1dc1162f8326fea4c290ac2f5290d2e080b7f993dfa26303d1ad33de5f97f702` |
| 3 | `theorem` | [intValuationDef_zero](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluationdef-zero.md) | 84 | `result-track:33f57bb7dd72bc50bdb73bbff365ee13e766e8ea9a063c33d5744362635c4454` |
| 4 | `theorem` | [intValuationDef_if_neg](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluationdef-if-neg.md) | 88 | `result-track:9b7e79853c036f067b93f5e65cea28e30641b987a0bcb6b11687350bab9bbf93` |
| 5 | `theorem` | [intValuation.map_zero'](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-map-zero.md) | 96 | `result-track:3a59d9c8aea4adebae02964da8a537a0e0ead348070748d4474d1702ff84f3c8` |
| 6 | `theorem` | [intValuation.map_one'](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-map-one.md) | 100 | `result-track:646b741008088e023b5ce95770c847e5cbd18878ad88cdbb39d89443c238c46b` |
| 7 | `theorem` | [intValuation.map_mul'](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-map-mul.md) | 108 | `result-track:4323318ee84c48905ec1464e8f684f4327545723451d96466f6d377b420166a2` |
| 8 | `theorem` | [intValuation.le_max_iff_min_le](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-le-max-iff-min-le.md) | 122 | `result-track:6534a7f7ab3eec433a5ae46085420d6ccf1c309e7186ce9f62949621be743b48` |
| 9 | `theorem` | [intValuation.map_add_le_max'](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-map-add-le-max.md) | 130 | `result-track:b0e2a5d474468d31937de80f23e7ca4e516f7ea3e24ac54ff4ad4175ecd2ac01` |
| 10 | `def` | [intValuation](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation.md) | 166 | `declaration-track:5c513189963eb18e6d4e18d75790636d2a4e8227d2f570272e8cd3498d6c4729` |
| 11 | `theorem` | [intValuation_apply](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-apply.md) | 173 | `result-track:675e3d935485588d822e5922ef1e2d963c57299cb0fa38bd4f594ba0cc249f84` |
| 12 | `theorem` | [intValuation_def](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-def.md) | 177 | `result-track:3485c8f5a924ffa44663458f88b93db085f683594bb5996be7fe55d374ca6a03` |
| 13 | `theorem` | [intValuation_toFun](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-tofun.md) | 184 | `result-track:655442002f200ac06e969abedab9a92b895aa2ad760d7e95ecd3985a8bfbc768` |
| 14 | `theorem` | [intValuation_if_neg](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-if-neg.md) | 188 | `result-track:cbcb1693742fbbea934c755790c517e53ad655333beeba475a1af35a871a821e` |
| 15 | `theorem` | [intValuation_ne_zero](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-ne-zero.md) | 195 | `result-track:0722b5805b04b9ddf2fcdd7b090482c9a72f52face582c16cdbf1e6e4430ff68` |
| 16 | `theorem` | [intValuation_ne_zero'](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-ne-zero-source-edition-2.md) | 200 | `result-track:61e0d256218f567ea986ad6c1a7f9122c980456b89ac5c16e7894756a06737f9` |
| 17 | `theorem` | [intValuation_zero_lt](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-zero-lt.md) | 204 | `result-track:1d8b6d8008318d5bab5b543ac5f651c3bc0402f63007537aeea7167f0512925a` |
| 18 | `theorem` | [intValuation_le_one](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-le-one.md) | 212 | `result-track:eb91f2638b319e0d02845ff4f10342443c2c1f67c664ab1fbd2dbade5a8ebe1c` |
| 19 | `theorem` | [intValuation_lt_one_iff_dvd](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-lt-one-iff-dvd.md) | 220 | `result-track:3b8b9e052bdecc0ab3bd28778ab15e36e421656cbc42de8eb61b5d21b8169e99` |
| 20 | `theorem` | [intValuation_lt_one_iff_mem](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-lt-one-iff-mem.md) | 233 | `result-track:ba7563808a15728705d192358925ff879eb865734c7b7b5879560e75e0310495` |
| 21 | `theorem` | [intValuation_le_pow_iff_dvd](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-le-pow-iff-dvd.md) | 239 | `result-track:9788f4e1bedf93cde0a410f5838636401d1c8b3daeef4740cc171b1c5454ef30` |
| 22 | `theorem` | [intValuation_le_pow_iff_mem](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-le-pow-iff-mem.md) | 251 | `result-track:70e41ebef1b63dd8271f8bea65e602a569d131c9090d25f482c5a1c1a708e24f` |
| 23 | `theorem` | [intValuation_exists_uniformizer](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-exists-uniformizer.md) | 256 | `result-track:2d8c75fc037748d315f74d34d35ff7f2659b98c1850605cb313fa7dcfce82369` |
| 24 | `theorem` | [intValuation_singleton](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/intvaluation-singleton.md) | 281 | `result-track:0776f140fca684d238273a47038f7ca8ea4c2f17344f3b053892cb8a61a10934` |
| 25 | `def` | [valuation](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuation.md) | 293 | `declaration-track:25b804d4fc1abc1a419f54646a473b3cafb0e45a6ebc9da10535380efa62b020` |
| 26 | `theorem` | [valuation_def](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuation-def.md) | 297 | `result-track:aeb11ed6ccffc37d3f2dd2455a526b839379a15efbfac4bbd63282b899946868` |
| 27 | `theorem` | [valuation_of_mk'](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuation-of-mk.md) | 304 | `result-track:f319ec7cd72461a7709a8526058cefe5459b61590d6c99f6f6e81c2148d4f1f3` |
| 28 | `theorem` | [valuation_of_algebraMap](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuation-of-algebramap.md) | 310 | `result-track:e3397fbbc2b2839f40570b721d98cdf2fd613c89f694dd51dcb43d5167af84b6` |
| 29 | `lemma` | [valuation_eq_intValuationDef](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuation-eq-intvaluationdef.md) | 315 | `result-track:4518c7e87b1d713dc4a09844b715b91f8982bd2c2e246a76fbed2c0ed1b3b325` |
| 30 | `theorem` | [valuation_le_one](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuation-le-one.md) | 320 | `result-track:7cf0a016c27823aa181216596c81f06548d4f31c0d7bcf3f24ff4f69eb6a75f3` |
| 31 | `theorem` | [valuation_lt_one_iff_dvd](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuation-lt-one-iff-dvd.md) | 325 | `result-track:3d3c1b47b3f42504a2b65b41c9038ca57a77dc0aa9c22c9a51171ae0f41c398b` |
| 32 | `theorem` | [valuation_lt_one_iff_mem](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuation-lt-one-iff-mem.md) | 331 | `result-track:24e1aa01fb12a7ed7f28d0c6fe5c0620545ed876bdef91f128dda0d181e74e88` |
| 33 | `theorem` | [valuation_exists_uniformizer](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuation-exists-uniformizer.md) | 338 | `result-track:4199093d2c73538aa58810c9362d443ec1c1ad2d881e171bd3ec15bf4fa4af6c` |
| 34 | `theorem` | [valuation_uniformizer_ne_zero](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuation-uniformizer-ne-zero.md) | 346 | `result-track:8606507085f272bfc1332007a16ae692c844e81785651cddab6fe98d5cd40696` |
| 35 | `theorem` | [mem_integers_of_valuation_le_one](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/mem-integers-of-valuation-le-one.md) | 350 | `result-track:f853d5386f919b4d10536af1e840dba7d26ba005f1d1521f2218f6a2adca830c` |
| 36 | `def` | [adicValued](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/adicvalued.md) | 385 | `declaration-track:df4b88af998badff80676f6f08f601d3482552f4d2f1b8d258d1856ce3d32d3a` |
| 37 | `theorem` | [adicValued_apply](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/adicvalued-apply-source-edition-2.md) | 388 | `result-track:b8ab5b2fc423f3b0e090e4af1526171da1f3962f340b76dd23c3d314691e0ce1` |
| 38 | `theorem` | [adicValued_apply'](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/adicvalued-apply.md) | 392 | `result-track:1661dd6bcb57016a90f0189359e2ced42361823de4b1dfc567b588921b025559` |
| 39 | `abbrev` | [adicCompletion](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/adiccompletion.md) | 398 | `declaration-track:9e22b2e091ac0efd4fd5f585d712c505e50803a6dc5b8caeef5b129f4c26caf9` |
| 40 | `theorem` | [valuedAdicCompletion_def](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuedadiccompletion-def.md) | 400 | `result-track:86265edfc608f69807d6cf870c214a2e0370c216c76220dc9447b7e7b99e0bb7` |
| 41 | `def` | [adicCompletionIntegers](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/adiccompletionintegers.md) | 408 | `declaration-track:934f84c41848db963e849f114adb56db7f280ce267bf32af51ecc61018ae5234` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/instance-source-edition-3.md) | 411 | `declaration-track:cebe8c645625d70364cc195e92b10662b1689ffa6ab9f4d5dcee02b1867f3127` |
| 43 | `theorem` | [mem_adicCompletionIntegers](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/mem-adiccompletionintegers.md) | 416 | `result-track:2f78752ac5d0b2a64387116e28fed6ea47d960dd839cbc184d56cd16276612b8` |
| 44 | `theorem` | [notMem_adicCompletionIntegers](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/notmem-adiccompletionintegers.md) | 420 | `result-track:2ca873f021c7ceb54c45cb022cab0c4c51d45b91179dd1469d4717fbf4650cae` |
| 45 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/instance-source-edition-2.md) | 430 | `declaration-track:a09cf34508b0f8e9a06d55016b52a6bb1ae232ed4c827bb41272db4834075b73` |
| 46 | `instance` | [adicValued.uniformContinuousConstSMul](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/adicvalued-uniformcontinuousconstsmul.md) | 437 | `declaration-track:2f305f10fbad1be57c8d8909e1681ec680f89c58dd10c6688880e65160e02de4` |
| 47 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/instance.md) | 444 | `declaration-track:00dec2596aad295e607776dd4c8b0d4c82042c863b1c1bc24bc9276a029bd1fd` |
| 48 | `theorem` | [coe_smul_adicCompletion](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/coe-smul-adiccompletion.md) | 465 | `result-track:b6531039cafda46a9d27d626a1dddbd750b727672ffd05da5808cb5b698d5b97` |
| 49 | `theorem` | [algebraMap_adicCompletion](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/algebramap-adiccompletion.md) | 469 | `result-track:6254541a605dd87bb18ba030e5068a676a8d8602f696d3cc78118764031b4d6c` |
| 50 | `theorem` | [coe_algebraMap_mem](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/coe-algebramap-mem.md) | 474 | `result-track:160b4ec3beb6dd60c04554b85f66b4bfc4f7f7d8ba765217c1aed283324680a7` |
| 51 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/instance-source-edition-4.md) | 481 | `declaration-track:f56947adea60de38fbe7eb6b73a471e5233c787723b34b43ca118dc05a6a5033` |
| 52 | `theorem` | [valuedAdicCompletion_eq_valuation](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuedadiccompletion-eq-valuation-source-edition-2.md) | 512 | `result-track:6d9832657184362e3fb6e85a7b9eb4f0579d1393073ca0140de53f198940f355` |
| 53 | `theorem` | [valuedAdicCompletion_eq_valuation'](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/valuedadiccompletion-eq-valuation.md) | 518 | `result-track:1cd376f822eedeba15e7abe7f662a77d12175d54f2575f60db48fa25d1bf739c` |
| 54 | `lemma` | [coe_mem_adicCompletionIntegers](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/coe-mem-adiccompletionintegers.md) | 525 | `result-track:7a24886a46f04ccb3acb9ea98ec2ddc6f17ca4c7d1520c81e27d42becf19243a` |
| 55 | `theorem` | [coe_smul_adicCompletionIntegers](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/coe-smul-adiccompletionintegers.md) | 531 | `result-track:724cf0ddd5a60a229eeb162a2e745b3c221d322737b24e60dd988cb151700def` |
| 56 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/instance-source-edition-5.md) | 535 | `declaration-track:fa8d1e2ade5772eaba1cbc5ef0bd60408d779b2c6af902e2d18b42edd56904e4` |
| 57 | `instance` | [adicCompletion.instIsScalarTower'](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/adiccompletion-instisscalartower.md) | 543 | `declaration-track:495e88c95574f8e860e241a8959bea7e9f1fdfd0960a2e5cd21be6d7b41e109c` |
| 58 | `lemma` | [adicCompletion.mul_nonZeroDivisor_mem_adicCompletionIntegers](../../../../CommutativeAlgebra/AdicValuationIntValuationDefZero.lean/declarations/adiccompletion-mul-nonzerodivisor-mem-adiccompletionintegers.md) | 551 | `result-track:fa32cffb92613ce8c92478dcfc634f707acaa383c83198e7d81338a017f22fef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6dc1e54adc2b07c47e8036d051a6cd66becca826f94a15344d9085bbefa7e7e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean","GRWTSK/_verification/specifications/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

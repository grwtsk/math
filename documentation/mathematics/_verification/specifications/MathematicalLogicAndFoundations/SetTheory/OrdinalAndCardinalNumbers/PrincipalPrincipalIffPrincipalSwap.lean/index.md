# Verification target: Principal Principal Iff Principal Swap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebd3f85e02445d20039fcd47eecc281d59dceb35",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebd3f85e02445d20039fcd47eecc281d59dceb35`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.FixedPoint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Principal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal.md) | 48 | `declaration-track:8f29afec9551a9ed9c2e5217f59c78524bffc9ac0cf51f3d1d722efb92caa261` |
| 2 | `theorem` | [principal_iff_principal_swap](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-iff-principal-swap.md) | 52 | `result-track:44ecbb6f56753769e029ccf703a7f4a16378afe0562727acf629e5309e23eb86` |
| 3 | `theorem` | [principal_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-zero.md) | 57 | `result-track:971adbef3f4e5581988d0af0ef88a1fd6adba72f298a3da3811cceb4d49a450f` |
| 4 | `theorem` | [principal_one_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-one-iff.md) | 62 | `result-track:d377114bc0795409d4f6e547549f82762cbab8d9e3e66f44b2900b340dd1c40b` |
| 5 | `theorem` | [Principal.iterate_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-iterate-lt.md) | 69 | `result-track:4a7832b80ba25b9103e8c6c0f5f3cb4cc17d613a453a52148bd37d8544179705` |
| 6 | `theorem` | [op_eq_self_of_principal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/op-eq-self-of-principal.md) | 77 | `result-track:2490af0060ddf29de92065e01307a804a505aad0e98a7fd1c4ab72953c3a34b6` |
| 7 | `theorem` | [nfp_le_of_principal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/nfp-le-of-principal.md) | 84 | `result-track:c51cbcc8e6d6e49c9b2dfcf07144f79f0599450ccb20c5f502dccf2ced537558` |
| 8 | `theorem` | [principal_nfp_blsub₂](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-nfp-blsub.md) | 91 | `result-track:4640e93a37771dcaf18e4752b3d185b4692484314619da03ce49c5fc0bdf502e` |
| 9 | `theorem` | [unbounded_principal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/unbounded-principal.md) | 108 | `result-track:c7d9868e6c4e42b89841590283e8492d22e40d7cbfc4f1f97afb41cff93fbfd9` |
| 10 | `theorem` | [principal_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-add-one.md) | 116 | `result-track:f64201fb7579fdb778a1f6e9f4914234279f2e81ce75c19ad72e40893c9690f3` |
| 11 | `theorem` | [principal_add_of_le_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-add-of-le-one.md) | 120 | `result-track:959275c62c91fba7dccdd9f8633ce776c2d377fa2379bf12c2459d318d66caaf` |
| 12 | `theorem` | [principal_add_isLimit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-add-islimit.md) | 126 | `result-track:ff6cec41716b37c3f43df1a952d456bd00154b1dac74bc3385680e2a130e7837` |
| 13 | `theorem` | [principal_add_iff_add_left_eq_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-add-iff-add-left-eq-self.md) | 138 | `result-track:4496bee61a6fc124ab477d6a2331d42b20774ce8551b7f537a87d5cad2bf4c5a` |
| 14 | `theorem` | [exists_lt_add_of_not_principal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/exists-lt-add-of-not-principal-add.md) | 151 | `result-track:04347c46ed8f8def8afcd949fb9a814d62ecf68c10d327250f7eea30dd31118d` |
| 15 | `theorem` | [principal_add_iff_add_lt_ne_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-add-iff-add-lt-ne-self.md) | 162 | `result-track:b0602bf427e4179abaf6c5cba1c9400e8eabe975c9d0b05e214292a971591826` |
| 16 | `theorem` | [add_omega](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/add-omega.md) | 170 | `result-track:64441ff722ec6e88f5555ae2878280dd34c65a7a73be2086812c04aaa458d0b8` |
| 17 | `theorem` | [principal_add_omega](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-add-omega.md) | 177 | `result-track:2122f0079af34f74b2fe13acb0b3344f3e357ecf6481861f4c4f360a355fe061` |
| 18 | `theorem` | [add_omega_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/add-omega-opow.md) | 181 | `result-track:929aca0f2f882594192a4f1961feda17bf9100df2411dbad10d0c6cb5c210d0e` |
| 19 | `theorem` | [principal_add_omega_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-add-omega-opow.md) | 199 | `result-track:a0963027644bdcab4d34a70b3d1a72683417dfcc8a5446cce27fecbabaac99eb` |
| 20 | `theorem` | [principal_add_iff_zero_or_omega_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-add-iff-zero-or-omega-opow.md) | 204 | `result-track:d1582f1c0f26e03deaf3826d789626a858013bc21a136e5eb497c1f8ccd9b55a` |
| 21 | `theorem` | [opow_principal_add_of_principal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/opow-principal-add-of-principal-add.md) | 228 | `result-track:ea95b0142975ff3ed182707054678dd2fee7fe0f54250d3dfd0a08fe27c0ab73` |
| 22 | `theorem` | [add_absorp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/add-absorp.md) | 239 | `result-track:536be2a5c8851b015d30dc02d51c4d194288618fd757295ae023c05198e516be` |
| 23 | `theorem` | [mul_principal_add_is_principal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/mul-principal-add-is-principal-add.md) | 243 | `result-track:a68c28aeebac1070873f70885fd06b39d924acc9d971fea388e8094fc6d18d50` |
| 24 | `theorem` | [principal_mul_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-mul-one.md) | 264 | `result-track:8d1f3700a9bf712ce1bb52e9801c485ef53a2afab4cb44ef5b972625e14175b9` |
| 25 | `theorem` | [principal_mul_two](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-mul-two.md) | 269 | `result-track:d02960af5932d1a09088404da1d6f62cb3b0812b3464fb8ca7dfa9b86f6b6e6e` |
| 26 | `theorem` | [principal_mul_of_le_two](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-mul-of-le-two.md) | 277 | `result-track:2a257d918eaac14ddd23d688f298949bf2001fb4950dd6d19e8ee943edc9a87c` |
| 27 | `theorem` | [principal_add_of_principal_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-add-of-principal-mul.md) | 288 | `result-track:09715c6c2953c3c6d587256ef8a164306eb0b54d5e1cd072a0a67a5d9eca8786` |
| 28 | `theorem` | [principal_mul_isLimit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-mul-islimit.md) | 300 | `result-track:3f6d3de1aa376fe7c5b07d62ecd11c0cc08375002c8885ee319d1498455109e4` |
| 29 | `theorem` | [principal_mul_iff_mul_left_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-mul-iff-mul-left-eq.md) | 306 | `result-track:140adfb287b419e8e0ae432635d8ea833e4fcaa2562e060dc0c9d68922771ab6` |
| 30 | `theorem` | [principal_mul_omega](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-mul-omega.md) | 323 | `result-track:873d679beb761cba4fd5a9ebc2d60596d1cd9b6407278a3afc1a3963ca3a424c` |
| 31 | `theorem` | [mul_omega](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/mul-omega.md) | 330 | `result-track:42bb0f9195ce032718399ad1f1f4b66f1271375fb210dd2803f690a8cc4e4e32` |
| 32 | `theorem` | [mul_lt_omega_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/mul-lt-omega-opow.md) | 334 | `result-track:3ef40ce118e7694b1bc355be362c6abac92aaca29b0b69227e44e8d8b9a535a1` |
| 33 | `theorem` | [mul_omega_opow_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/mul-omega-opow-opow.md) | 349 | `result-track:d52f3eb9b3f1000f9ad7837058cc461b8ddb1d8082df99359f5b3cb9c0f8b1fb` |
| 34 | `theorem` | [principal_mul_omega_opow_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-mul-omega-opow-opow.md) | 362 | `result-track:51eda50fba706dab0143b992d13a793b32efb88bb1e8743f4950294ca537d220` |
| 35 | `theorem` | [principal_add_of_principal_mul_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-add-of-principal-mul-opow.md) | 366 | `result-track:6a16669e78c06a39963295be0e838247a2d91b68644b93ac9652e61d2ebceaa9` |
| 36 | `theorem` | [principal_mul_iff_le_two_or_omega_opow_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-mul-iff-le-two-or-omega-opow-opow.md) | 373 | `result-track:b6a569991711342afdd7bec5dbb4aba4e1546a293dd49155c635685da10067ac` |
| 37 | `theorem` | [mul_omega_dvd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/mul-omega-dvd.md) | 392 | `result-track:9c7b6bfffcd5fcebef0b51b604d0c18876c5b0767c239fc192efc98da5111f03` |
| 38 | `theorem` | [mul_eq_opow_log_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/mul-eq-opow-log-succ.md) | 396 | `result-track:9baccb939f180da3a41abaceff42034da47f98214c33ca7a741688ab322844a6` |
| 39 | `theorem` | [principal_opow_omega](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/principal-opow-omega.md) | 418 | `result-track:b7410a83ca93d34db91a100a3dc515e986fd81d84342b6e06aae61172dd266eb` |
| 40 | `theorem` | [opow_omega](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPrincipalIffPrincipalSwap.lean/declarations/opow-omega.md) | 425 | `result-track:96c49b8cbecc5e80f66eda9031d1088c149fcf808e5c363f1a9f288bbd3c7cb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b86389d6c2ac89fd2064ceae119c2bbb5a03f17a2da6a196c0831387ed7420ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

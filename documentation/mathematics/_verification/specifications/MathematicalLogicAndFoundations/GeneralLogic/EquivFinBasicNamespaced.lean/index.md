# Verification target: Equiv Fin Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c5fbea9614d659794fbd68b911b9b8dadfea01d",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd531c0ac6f045db8f1cdb35bc1eae230fc5e1ec701c4c89efbeaa50dd57a8c39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c5fbea9614d659794fbd68b911b9b8dadfea01d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd531c0ac6f045db8f1cdb35bc1eae230fc5e1ec701c4c89efbeaa50dd57a8c39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd531c0ac6f045db8f1cdb35bc1eae230fc5e1ec701c4c89efbeaa50dd57a8c39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Option` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Init` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Fin.preimage_apply_01_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/fin-preimage-apply-01-prod-source-edition-2.md) | 35 | `result-track:cf9b59b51696fa806b6cd08c9ba1a5ae24b5ef575885e20daf8c6772a65bce49` |
| 2 | `theorem` | [Fin.preimage_apply_01_prod'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/fin-preimage-apply-01-prod.md) | 41 | `result-track:96bf151deeacc05cd2b4c1e0e900592a89fd84d65f52d9e66300d5758634c28d` |
| 3 | `def` | [prodEquivPiFinTwo](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/prodequivpifintwo.md) | 49 | `declaration-track:a4cd45223309b4cab711cf98bc99ef49809f4dbd324c4dd8791b5c9920601e68` |
| 4 | `def` | [finTwoArrowEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/fintwoarrowequiv.md) | 55 | `declaration-track:085c964fe2eaa0905b514e6afab3a663944cb65c2c72d04166e0f6df25a2d8e7` |
| 5 | `def` | [finSuccEquiv'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-source-edition-2.md) | 61 | `declaration-track:d0543ff33196721189565f3ad46a41c843e31168cf0af21e4491e486875ddc41` |
| 6 | `theorem` | [finSuccEquiv'_at](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-at.md) | 68 | `result-track:082d6e333e58a71b872aa28c1a6e1e76e29c62d1ffc8abfe2f420a10588d019f` |
| 7 | `theorem` | [finSuccEquiv'_succAbove](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-succabove.md) | 72 | `result-track:a81e05aafffc626b320474a3a10f3f56663f8572890ca18ea18e08ccdd75bf4d` |
| 8 | `theorem` | [finSuccEquiv'_below](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-below.md) | 76 | `result-track:ae451f291c4ab7e0096e2ed97b31266453dc93ef61beb0bf514fa86bda4fc044` |
| 9 | `theorem` | [finSuccEquiv'_above](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-above.md) | 80 | `result-track:e0a3ab3bdf00cc896e7f1ca188e4253f590d52370f0b08dec8cad819d6054379` |
| 10 | `theorem` | [finSuccEquiv'_symm_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-symm-none-source-edition-2.md) | 85 | `result-track:e5523bd5caf854d2a61e88e058303022fa1fefd7b0859464285052c25710db55` |
| 11 | `theorem` | [finSuccEquiv'_symm_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-symm-some.md) | 89 | `result-track:96d31a6f4c915606c08b2e536cd4d23916d5db7de4f85f8987b2c453b749ae3c` |
| 12 | `theorem` | [finSuccEquiv'_eq_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-eq-some.md) | 94 | `result-track:14c3b676e8a9e663bd4a5f13725eec3f9fbaf7ad109a62c7ae10c3a11da01b5a` |
| 13 | `theorem` | [finSuccEquiv'_eq_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-eq-none-source-edition-2.md) | 99 | `result-track:6d7cb850ede5b21bc0841751b8ea6be786026cb061ef47948fda85246d1f45cb` |
| 14 | `theorem` | [finSuccEquiv'_symm_some_below](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-symm-some-below.md) | 102 | `result-track:bb0db7a1a5323562b3200b880216c9af9e582cc770f988c3523397e5837ae68d` |
| 15 | `theorem` | [finSuccEquiv'_symm_some_above](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-symm-some-above.md) | 106 | `result-track:c977a42fa015bd09c161a780f1d6f9d172d7214faec19525b95f5b744e8692a4` |
| 16 | `theorem` | [finSuccEquiv'_symm_coe_below](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-symm-coe-below.md) | 110 | `result-track:dadf355e81e62b76d171a21d00e6f42a799e143e443e5a1e9d28cb6361feebed` |
| 17 | `theorem` | [finSuccEquiv'_symm_coe_above](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-symm-coe-above.md) | 114 | `result-track:f6185543ae942129347f916161ade04c5c22f3b1e39fb7707059c01df5b7089d` |
| 18 | `def` | [finSuccEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv.md) | 121 | `declaration-track:0fa22643f7f3afe27f42ced81c5a9ba3636bdd4d61f6104298c5cb2d98399832` |
| 19 | `theorem` | [finSuccEquiv_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-zero-source-edition-2.md) | 125 | `result-track:74d1c1e655d1ef326dec986bf377b993f3437b85bb6527367554e421e5aaa25c` |
| 20 | `theorem` | [finSuccEquiv_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-succ.md) | 129 | `result-track:aaf47eab8352ef53c83da89405ce83dd957688a89e0d8d7f5e14cfd1b09f4b86` |
| 21 | `theorem` | [finSuccEquiv_symm_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-symm-none.md) | 133 | `result-track:0fd7495f0eb99340f80cbf80ccb4f06f03aed351d9036f93fe976c0e44186152` |
| 22 | `theorem` | [finSuccEquiv_symm_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-symm-some-source-edition-2.md) | 137 | `result-track:c6872fbed57d46126a2e3323862bb0a84b1254bb136f71da9296350594f7c80a` |
| 23 | `theorem` | [finSuccEquiv_eq_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-eq-some-source-edition-2.md) | 141 | `result-track:be7aa49f9bbd643a4699beae48b36d39155fbfc8741576a664116452204edad0` |
| 24 | `theorem` | [finSuccEquiv_eq_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-eq-none.md) | 146 | `result-track:5b8761aaadf26618830ef7503cfeb99122eb47695db47bebd07aefe3dcac8025` |
| 25 | `theorem` | [finSuccEquiv'_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-zero.md) | 150 | `result-track:46af8e1bc018db6cf202d76b48dad5912184564b0ff041ce9241a1fd9a2af285` |
| 26 | `theorem` | [finSuccEquiv'_last_apply_castSucc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-last-apply-castsucc.md) | 153 | `result-track:3d93e2271724187628d9c4eb488bd480e04f91f6c1e66e50a1e3b039ad909400` |
| 27 | `theorem` | [finSuccEquiv'_last_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-last-apply.md) | 157 | `result-track:17b78760170becddced833bb8a3e9b762647b650951a3a348dc8104c2d7d303f` |
| 28 | `theorem` | [finSuccEquiv'_ne_last_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequiv-ne-last-apply.md) | 163 | `result-track:258e66f9fcb8b4f3cfc5a064c374554fb17f5ecbe1910989b44a25975d71748d` |
| 29 | `def` | [finSuccAboveEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccaboveequiv.md) | 170 | `declaration-track:477b86c3e7373c1363cfc725a4b4ea14cb089f1e7cfaa5aa39b698e42354ea30` |
| 30 | `theorem` | [finSuccAboveEquiv_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccaboveequiv-apply.md) | 173 | `result-track:b38c4945aaf9c42f679b062d06c7065f98619ba7617bfa2a304bb73ac2de17f4` |
| 31 | `theorem` | [finSuccAboveEquiv_symm_apply_last](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccaboveequiv-symm-apply-last.md) | 177 | `result-track:ba57286d4ea1f3651dee19886d198924bfc8fd9679fc1b0d45a1636557ed431b` |
| 32 | `theorem` | [finSuccAboveEquiv_symm_apply_ne_last](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccaboveequiv-symm-apply-ne-last.md) | 182 | `result-track:af85a45948351691a822d1c18f305cb51990b6236f9cf4d1e5fa83f71ecfb53f` |
| 33 | `def` | [finSuccEquivLast](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequivlast.md) | 189 | `declaration-track:49f518e05beff8288414b37f660e2337a4502de825c1d295db612297a487508b` |
| 34 | `theorem` | [finSuccEquivLast_castSucc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequivlast-castsucc.md) | 193 | `result-track:1603b5f3a8b0fdee682f6c78cc730ee4c0dfae6e36a1ad325366defb3abaa98f` |
| 35 | `theorem` | [finSuccEquivLast_last](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequivlast-last.md) | 197 | `result-track:86c1bd600b66e1de21c9cbe0fe3dba68036caf23a163c3242c02d7d59778da11` |
| 36 | `theorem` | [finSuccEquivLast_symm_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequivlast-symm-some.md) | 201 | `result-track:fd11d18b474536ac18fab730fbb8927dd6669d22f0d6df8566658122955d3f1f` |
| 37 | `theorem` | [finSuccEquivLast_symm_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsuccequivlast-symm-none.md) | 205 | `result-track:219b4a41239612dcf6de948c1b4e704b06991c9a756b5c0f8974fbc8b995f772` |
| 38 | `def` | [Equiv.embeddingFinSucc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/equiv-embeddingfinsucc.md) | 210 | `declaration-track:392b72020fd5e1715f15318e75d8c533472e98366946d1e1e504dd6fac8e1fa2` |
| 39 | `lemma` | [Equiv.embeddingFinSucc_fst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/equiv-embeddingfinsucc-fst.md) | 215 | `result-track:6c322d827756ba305c3b50419e67b0d637a578dbe88f7cb6d8a95a8ced8c719c` |
| 40 | `lemma` | [Equiv.embeddingFinSucc_snd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/equiv-embeddingfinsucc-snd.md) | 218 | `result-track:98cad014facc90fcdf20e05ce077df7a9903e8f4b3ad10cc929ffcb04602922e` |
| 41 | `lemma` | [Equiv.coe_embeddingFinSucc_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/equiv-coe-embeddingfinsucc-symm.md) | 221 | `result-track:6ebe103cb5d6c0bd079badfe9c6f2df0d8781a53b8e68f8f3b24e5674e3ff974` |
| 42 | `def` | [finSumFinEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsumfinequiv.md) | 228 | `declaration-track:12a349753de8d7dd6e87e7da1144fa1b87cc2312572891b67e51f7a3c34e757d` |
| 43 | `theorem` | [finSumFinEquiv_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsumfinequiv-apply-left.md) | 235 | `result-track:4a59455967fc2655c3a7433e1bc2d0e011a4e380052133dcf2aa7cbf037f4522` |
| 44 | `theorem` | [finSumFinEquiv_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsumfinequiv-apply-right.md) | 240 | `result-track:a9b32f4e9b5e510064ab7d99e80f44c2cf4a9965512ee7ae9909742c283c3361` |
| 45 | `theorem` | [finSumFinEquiv_symm_apply_castAdd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsumfinequiv-symm-apply-castadd.md) | 245 | `result-track:e719a14e7b5c017255b5c835b36ce3691e396a58ca9e7d9ab04d407df16ae9a9` |
| 46 | `theorem` | [finSumFinEquiv_symm_apply_natAdd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsumfinequiv-symm-apply-natadd.md) | 250 | `result-track:e3857a98188930f836af270cc77a96cae6d2d53d1aabb2b03c1e5980ccda54b6` |
| 47 | `theorem` | [finSumFinEquiv_symm_last](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finsumfinequiv-symm-last.md) | 255 | `result-track:6b864bca6dbbeceb3a7ce8006de3d0bf0ae6335d742e380f41568d849a13a278` |
| 48 | `def` | [finAddFlip](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finaddflip.md) | 259 | `declaration-track:2396d17a40865f65004cba996c63bf7c1d185db9d3148eb24c94d2ac8e0330cf` |
| 49 | `theorem` | [finAddFlip_apply_castAdd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finaddflip-apply-castadd.md) | 263 | `result-track:b3635640499e901bcf97dc54e164284a542aecb9c99b79516d1323e42bce6c42` |
| 50 | `theorem` | [finAddFlip_apply_natAdd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finaddflip-apply-natadd.md) | 267 | `result-track:f0bdf7e60dcc68507191a1f40dc352a8a0a0b7a32b2f813670a0794abdb492a3` |
| 51 | `theorem` | [finAddFlip_apply_mk_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finaddflip-apply-mk-left.md) | 271 | `result-track:e32c1439cecd2d39c49b93faf4755dbd4575d2cb0546aee3ee9a42ebfff14611` |
| 52 | `theorem` | [finAddFlip_apply_mk_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finaddflip-apply-mk-right.md) | 277 | `result-track:e6538cc1c91b1161a8b588f81ebeb8fd7089c5f5db9da9e119cb53cca4465fca` |
| 53 | `def` | [finProdFinEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/finprodfinequiv.md) | 284 | `declaration-track:8b5842d849be4a5f1b2802955f3b88eb1439567c91ea6c4b418f1427758b9bc3` |
| 54 | `def` | [Nat.divModEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/nat-divmodequiv.md) | 314 | `declaration-track:b07408519ca9c3ef234ff497960f5fa977137079b836532280e205142d508390` |
| 55 | `def` | [Int.divModEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/int-divmodequiv.md) | 328 | `declaration-track:623b7f245d940d3be3e009af9fb49db7f600159344657efce1747509214f90f2` |
| 56 | `def` | [Fin.castLEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/fin-castlequiv.md) | 349 | `declaration-track:bdcdd8b075686cb367880e93a442eb1e377f858cddea8c61ee325223c3298a7c` |
| 57 | `instance` | [subsingleton_fin_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/subsingleton-fin-zero.md) | 356 | `declaration-track:dca038d6065224dd07b0d6c88d7018f483fe53c59cb4b0421b49506c4c82916f` |
| 58 | `instance` | [subsingleton_fin_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/subsingleton-fin-one.md) | 360 | `declaration-track:bf90ab3314fe80bc6595e851bea8ac706afc7230eb26a6eba21e46c120ad742d` |
| 59 | `def` | [Fin.appendEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinBasicNamespaced.lean/declarations/fin-appendequiv.md) | 365 | `declaration-track:6a2463c4ec1e194c42614dcdbdbb701a6c5cb16aaf325c70762e24af7b1dfd72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c05efd2a25bfaa0d03419b5312e41aba405f12cbe01cb9d52f772bd219a91ffe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd531c0ac6f045db8f1cdb35bc1eae230fc5e1ec701c4c89efbeaa50dd57a8c39.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd531c0ac6f045db8f1cdb35bc1eae230fc5e1ec701c4c89efbeaa50dd57a8c39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

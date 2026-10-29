# Verification target: Cotangent Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f2038975295f3b1fda3e7832d8faabeb9144258",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cotangent/Variantda3f52cab4dbe568aebf46f7a3535aa9b2b58712bc5dea75f3f6c0696bf61eb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f2038975295f3b1fda3e7832d8faabeb9144258`.

Source path: `GRWTSK/Algebra/Cotangent/Variantda3f52cab4dbe568aebf46f7a3535aa9b2b58712bc5dea75f3f6c0696bf61eb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cotangent/Variantda3f52cab4dbe568aebf46f7a3535aa9b2b58712bc5dea75f3f6c0696bf61eb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangent.md) | 42 | `declaration-track:e17d487139d2c32e2bf1fc892d9070b06b7ac6f07704bd35e7de5bcd85485fa9` |
| 2 | `def` | [toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/tocotangent.md) | 54 | `declaration-track:d4416d105ddd2e4debebbd04e5872a52c6d2d550c383e9d33ed6b835c6dab94a` |
| 3 | `theorem` | [map_toCotangent_ker](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/map-tocotangent-ker.md) | 57 | `result-track:f06766d6e23fc0b8b957aec385b0795bdcba0be0cf849be3b4c41d74e492d458` |
| 4 | `theorem` | [mem_toCotangent_ker](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/mem-tocotangent-ker.md) | 61 | `result-track:93182b717fdf874678c52a1038d2f1f45d46061f2472a914304eb67ce39e5ad0` |
| 5 | `theorem` | [toCotangent_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/tocotangent-eq.md) | 65 | `result-track:0c07573acff39e4ad0e03a6b39875bedfa1ef802a5618e15005b1ce8e2253a8c` |
| 6 | `theorem` | [toCotangent_eq_zero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/tocotangent-eq-zero.md) | 69 | `result-track:11a951bc584cd270b94109dd873cc13fd1abb99df917c7a23c85cecdbe056e45` |
| 7 | `theorem` | [toCotangent_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/tocotangent-surjective.md) | 71 | `result-track:2899debf96aa3c4f8e53416d59b60ade5fdef958ff0109045eb2f474d787767e` |
| 8 | `theorem` | [toCotangent_range](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/tocotangent-range.md) | 73 | `result-track:81c66f596139fd6e7ba4e15ef45f453d55d7d005ae4e10f3c9c2b603b849c013` |
| 9 | `theorem` | [cotangent_subsingleton_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangent-subsingleton-iff.md) | 75 | `result-track:7f0b95d071a6a45380b3a3239a968d3f65409d8d1df381475b7a23f86901eeb7` |
| 10 | `def` | [cotangentToQuotientSquare](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangenttoquotientsquare.md) | 86 | `declaration-track:c9807bda31386dd8e3e0d079b3394387baabe14ac69d566acc63e3a2a78a2d23` |
| 11 | `theorem` | [to_quotient_square_comp_toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/to-quotient-square-comp-tocotangent.md) | 92 | `result-track:f37707724082a9b4fbaded239151ca4021104b2896f7ba31152b66c58d091924` |
| 12 | `theorem` | [toCotangent_to_quotient_square](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/tocotangent-to-quotient-square.md) | 97 | `result-track:7445cdee7bd5ac31dd856aa3e2cc203ed8cfb1e71dc7f97a8efa000f2105d97d` |
| 13 | `lemma` | [cotangentToQuotientSquare_injective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangenttoquotientsquare-injective.md) | 100 | `result-track:604a624a1cf8f5f28babc7e8ecb42e56a1245138c1b21875d2f4504687d2b569` |
| 14 | `lemma` | [Cotangent.smul_eq_zero_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangent-smul-eq-zero-of-mem.md) | 107 | `result-track:ab9168f1eea838b64cbc1146cd51712890dfb4d377b69a82d7cbee535cc6f0ee` |
| 15 | `lemma` | [isTorsionBySet_cotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/istorsionbyset-cotangent.md) | 113 | `result-track:37f21326c79537c8db37309e7c0edc7ae2896f8c4404ffb3d21e8fba2da1540e` |
| 16 | `def` | [cotangentIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangentideal.md) | 118 | `declaration-track:8d5d4ff3d5f7f01a8d68bc0f3d0139a66bc7b326cb91392cecf93fdbd5a4aeea` |
| 17 | `theorem` | [cotangentIdeal_square](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangentideal-square.md) | 121 | `result-track:267286aa67895dc4ee91f2f43bee567e4829ae87d53ef856a86a6f9f300b8cec` |
| 18 | `lemma` | [mk_mem_cotangentIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/mk-mem-cotangentideal.md) | 129 | `result-track:b62628fcc47e5479877408e639d4c31f14b8be669f231e486a0d6e44174d1b31` |
| 19 | `lemma` | [comap_cotangentIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/comap-cotangentideal.md) | 135 | `result-track:853aa35ca46b19efc7e73659c478ed741069cf9c266d2694bfbd0ef5e5610538` |
| 20 | `theorem` | [range_cotangentToQuotientSquare](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/range-cotangenttoquotientsquare.md) | 139 | `result-track:02785e2700cf00e41522f2e7bc61c43c452f180551c69e0a26aad8291012a616` |
| 21 | `def` | [cotangentEquivIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangentequivideal.md) | 147 | `declaration-track:52006683ec2d7fc73029a28da10801bbd3f73262d00394ef8f126f22923996f2` |
| 22 | `theorem` | [cotangentEquivIdeal_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangentequivideal-apply.md) | 163 | `result-track:e232db491275c74273fbc73c38379e3c460d926986703e3f874f75261f467629` |
| 23 | `theorem` | [cotangentEquivIdeal_symm_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangentequivideal-symm-apply.md) | 166 | `result-track:65217716f5f53c3a2bc8060da7f258bb8f012e680e9612b53d367b5b5cdb1285` |
| 24 | `abbrev` | [_root_.AlgHom.kerSquareLift](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/root-alghom-kersquarelift.md) | 174 | `declaration-track:1ac91eff120aac3d7c692bf19cce715bc1673448d57dbe6fd266e949a982e5bc` |
| 25 | `lemma` | [_root_.AlgHom.kerSquareLift_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/root-alghom-kersquarelift-mk.md) | 180 | `result-track:8106f9d976c749d0735e6244da138a1300f4b7952ae0f56ad1a2c0b84ee4e49e` |
| 26 | `theorem` | [_root_.AlgHom.ker_kerSquareLift](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/root-alghom-ker-kersquarelift.md) | 183 | `result-track:1022af532dd081ba8cb256f812898539a667ff404a403fdf07290e3e7af4ec48` |
| 27 | `instance` | [Algebra.kerSquareLift](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/algebra-kersquarelift.md) | 189 | `declaration-track:2c255f63e4b6b59ef7bf4cb8a765fe7c8f89696513f6803688ce6c4aafe36f04` |
| 28 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/instance-source-edition-4.md) | 192 | `declaration-track:9245bbb861822c8c79fa96b029da1ccdc01317c5f4793796fd52a0290621890d` |
| 29 | `def` | [quotCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/quotcotangent.md) | 198 | `declaration-track:32ff1c6761498443770cbb6377b9e8050a1339010ddc94b0d6839f818216c3b9` |
| 30 | `def` | [mapCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/mapcotangent.md) | 205 | `declaration-track:cb98314e3b80106450624fc27bf045c7a0fbd5b08c738301fa0c197dce2ed378` |
| 31 | `lemma` | [mapCotangent_toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/mapcotangent-tocotangent.md) | 222 | `result-track:7630a6080ed6774e70214e6bd31c0487c8af5671b61bbf3dcb95807744bf1305` |
| 32 | `def` | [lift](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/lift.md) | 235 | `declaration-track:8251aab5d6a0a2a5a5f49bd7c8baab6dfbb7c43290c773303992ff2a03d28b8e` |
| 33 | `lemma` | [lift_toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/lift-tocotangent.md) | 246 | `result-track:06c1d64cf233ca5c6d3a921fd77d2e75a5491aaad9c3f776179586ef61b0f73c` |
| 34 | `lemma` | [lift_comp_toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/lift-comp-tocotangent.md) | 251 | `result-track:99a9b68a0f26f12c9d64ef78d12e8ece545887268b58499f03edb3b82426e38d` |
| 35 | `lemma` | [lift_surjective_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/lift-surjective-iff.md) | 256 | `result-track:5fbd7c3016928756de247934739edea7fa70250e2978c6c5787618b7c1699153` |
| 36 | `def` | [equivOfEq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/equivofeq.md) | 267 | `declaration-track:135c91e02c91c00e63d0a72273b90e20423dc351d3a5131b24ef82391a0551bd` |
| 37 | `lemma` | [equivOfEq_toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/equivofeq-tocotangent.md) | 283 | `result-track:7a7358def9ab40ae10e084b8e8290e580d2fd70f39155a85c55d6fecdfc8d912` |
| 38 | `lemma` | [equivOfEq_symm](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/equivofeq-symm.md) | 288 | `result-track:32c60daa42a8585e9a853d64ece296922b4f8c835fdd3d63c804fabf219bdfd7` |
| 39 | `abbrev` | [CotangentSpace](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangentspace.md) | 299 | `declaration-track:7388bc9c8428ece3c7967333ca1dc6e7cbda78b13066f364bccced6ccbc183ab` |
| 40 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/instance-source-edition-2.md) | 301 | `declaration-track:411759ad1e1af3b3aad86cb6f0fc20451e8e80701107c83bfdc6094811b4a404` |
| 41 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/instance-source-edition-3.md) | 304 | `declaration-track:5a1c9ff5433253e8f67c374f6df0ed1423590345d2b757d960136ed9718c6d4f` |
| 42 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/instance.md) | 308 | `declaration-track:05212691d0fcc9371ccdb2d67518f421c52949bd584de58af9f37a658c44b88c` |
| 43 | `lemma` | [subsingleton_cotangentSpace_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/subsingleton-cotangentspace-iff.md) | 313 | `result-track:67eef141a4e601b53c59b7c163e4d512724995d71fd2ccd1a38c3a3b17b5ee4b` |
| 44 | `lemma` | [CotangentSpace.map_eq_top_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangentspace-map-eq-top-iff.md) | 320 | `result-track:cf87258ddc90aa44b4213e86c8755d5ce52371aed557ba264adb7e824e5f4c16` |
| 45 | `lemma` | [CotangentSpace.span_image_eq_top_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/cotangentspace-span-image-eq-top-iff.md) | 330 | `result-track:5bc510686d74bc26cca347cc18c590708ed680b75bf8b8b9efd1a6f7596f02b6` |
| 46 | `theorem` | [rank_cotangentSpace_eq_spanrank_maximalIdeal_of_fg](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/rank-cotangentspace-eq-spanrank-maximalideal-of-fg.md) | 342 | `result-track:5ca7a69284c2cd57b32383226d0d40c120aa57232c60e56fc0694eb0d767d9fb` |
| 47 | `theorem` | [rank_cotangentSpace_eq_spanrank_maximalIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/rank-cotangentspace-eq-spanrank-maximalideal.md) | 375 | `result-track:523d8070e1d74087367c8f318da0accadc2660a48f28c28648663dda2cc6d90e` |
| 48 | `lemma` | [finrank_cotangentSpace_eq_zero_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/finrank-cotangentspace-eq-zero-iff.md) | 381 | `result-track:1b51d7e9ac848a25402d7052946dcdfd3799d014cfd73db4173911b0e81ced63` |
| 49 | `lemma` | [finrank_cotangentSpace_eq_zero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/finrank-cotangentspace-eq-zero.md) | 385 | `result-track:ca5ef881ceb2ea6c20cbae656f8557628a2d87e5bbd497580d0df6afba0f630a` |
| 50 | `theorem` | [finrank_cotangentSpace_le_one_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/finrank-cotangentspace-le-one-iff.md) | 390 | `result-track:797913d27f3fb79e6d10c2232d367fd53762272d678d86aa2db06e3c9eee9164` |
| 51 | `lemma` | [Ideal.mapCotangent_surjective_of_comap_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/ideal-mapcotangent-surjective-of-comap-eq.md) | 403 | `result-track:a369d31200857459f2e4d658fc4e95cd7f7cbae82d53c299f29518e6c5ddb104` |
| 52 | `lemma` | [Ideal.mapCotangent_ker_of_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentPublic.lean/declarations/ideal-mapcotangent-ker-of-surjective.md) | 414 | `result-track:10a86c2e84c8c62d01d4ae9df63dfcd7cb0365236785ca8a2015b5935cab65f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d82c749d9934e8457bdb9301a23f480e43392abd5a44c3653475228e08256b67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Cotangent/Variantda3f52cab4dbe568aebf46f7a3535aa9b2b58712bc5dea75f3f6c0696bf61eb8.lean","GRWTSK/_verification/specifications/Algebra/Cotangent/Variantda3f52cab4dbe568aebf46f7a3535aa9b2b58712bc5dea75f3f6c0696bf61eb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

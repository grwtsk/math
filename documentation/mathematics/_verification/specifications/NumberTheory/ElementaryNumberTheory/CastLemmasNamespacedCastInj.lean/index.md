# Verification target: Cast Lemmas Namespaced Cast Inj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4762e2782dfbb5466cfe0c6d05a6ec7993cdf30d",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4762e2782dfbb5466cfe0c6d05a6ec7993cdf30d`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofNatHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/ofnathom.md) | 42 | `declaration-track:146e0aa4ec173163e20e5cf4abeb59f1621ddc1bfc18f19eca32177acaddb350` |
| 2 | `theorem` | [cast_ite](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/cast-ite.md) | 48 | `result-track:24862bf4ca3c5ebe9d52d60a461470889ce04968bc0052972d1b7226bbd09f6a` |
| 3 | `def` | [castAddHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/castaddhom.md) | 53 | `declaration-track:cf9c6b4ec73f4383238a96cc3276f3ae88ccfd272bdbe627987fe57cf88a3ef6` |
| 4 | `lemma` | [coe_castAddHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/coe-castaddhom.md) | 61 | `result-track:18958c86b8f1f47e92d46678b0468151bbf5473998623fc3400a930f3d412c8e` |
| 5 | `lemma` | [Cast Lemmas Namespaced Cast Inj](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast-source-line-63-occurrence-2.md) | 63 | `result-track:dced3c2102e4876a96ae0fd086e82d95ad9686ba308b6284d6f9dd97c93f3bad` |
| 6 | `lemma` | [cast_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/cast-eq-zero.md) | 67 | `result-track:a25b71402f73166570efde7fdcecd717a306ec2bd9fe538619d521e78f47c299` |
| 7 | `lemma` | [cast_inj](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/cast-inj.md) | 77 | `result-track:d6476a65a7f853ecb9f93087cf33ac0a131de1e3fcbc43a36c92238917bf8f8d` |
| 8 | `lemma` | [cast_injective](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/cast-injective.md) | 79 | `result-track:52e7b218619166bc685e2a20bdd5f9c5cd2896e39edf5cbc139a278376c547bf` |
| 9 | `lemma` | [cast_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/cast-ne-zero.md) | 81 | `result-track:895e7782d23c52a51e98ead7fd169ecb643cf5a34fbb0b3239a6bf5d438ef00e` |
| 10 | `lemma` | [cast_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/cast-eq-one.md) | 83 | `result-track:1cd59560ab169ded46bb49f7ef875e5757d705a33f1dd5b14ba5ddd80110499c` |
| 11 | `lemma` | [cast_ne_one](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/cast-ne-one.md) | 85 | `result-track:9c308d115b1d9567fa0dd14ddcf6f35763d4f60b27c0ba6b5e47336ba5a8cce1` |
| 12 | `def` | [castRingHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/castringhom.md) | 94 | `declaration-track:b4cd54d608426911cc761e16b21caa5e546ab080f096d79bfa8724e6a402daf3` |
| 13 | `lemma` | [coe_castRingHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/coe-castringhom.md) | 101 | `result-track:2fe5b5d79e92e2e664e5f26f5c02caf2302cdd658d40f806fbf4f656690d7a8c` |
| 14 | `lemma` | [cast_commute](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/cast-commute.md) | 103 | `result-track:e29787eb4c4d9138af34bacaa3809dc800a7f4ad2019265f630338bcbf09dd5d` |
| 15 | `lemma` | [cast_comm](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/cast-comm.md) | 109 | `result-track:19d4cd09f68a765182557f9b814641713f4a97fbe02c50f191237597aeba7fc3` |
| 16 | `lemma` | [commute_cast](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/commute-cast.md) | 111 | `result-track:a4531fd61b5e5fb5bafce52aa5a4fe35572eb1686cb508de0991d8a0de00e6d9` |
| 17 | `lemma` | [Cast Lemmas Namespaced Cast Inj](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zsmul-eq-mul-source-line-113-occurrence-2.md) | 113 | `result-track:9615b27e35db47dcd92618bd0c2a94d0ba60234ca15363b89585a74ba376a7fc` |
| 18 | `lemma` | [Cast Lemmas Namespaced Cast Inj](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zsmul-eq-mul.md) | 117 | `result-track:2f3e3a0eca79b46deb340d3fa9cd6ff50d901979c1f8c47134f88bf13f99bf29` |
| 19 | `lemma` | [Cast Lemmas Namespaced Cast Inj](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast.md) | 125 | `result-track:2fec931a6c0d4f6d2de4a2b66b8fa10b06ac23049b4c79bbb675950aac4a832a` |
| 20 | `theorem` | [cast_dvd_cast](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/cast-dvd-cast.md) | 129 | `result-track:254a9bbe88c30673c64b4d2dea7e4373ece76f122e8adfa9909455f9802aa3c9` |
| 21 | `lemma` | [intCast_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast-mul-right-source-edition-2.md) | 141 | `result-track:84a62d8e9dee92111eea84fb60ccf8dc29f23697e5048b4efd7d6ecd9bf5baf9` |
| 22 | `lemma` | [intCast_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast-mul-left-source-edition-2.md) | 144 | `result-track:d8404e517d7324c5adc3e97d02f037beec2160b2d6c45122d62dc55028c4f75a` |
| 23 | `lemma` | [intCast_mul_intCast_mul](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast-mul-intcast-mul-source-edition-2.md) | 147 | `result-track:43001e3746444e1e91db9831f5d0f70b9699f5973b80a9d613e1ffbc6f46903c` |
| 24 | `lemma` | [intCast_left](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast-left.md) | 156 | `result-track:fe1aed7f67047b9fb2e97a552dc2597def0608cba55b8bad3496e70aeec2177f` |
| 25 | `lemma` | [intCast_right](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast-right.md) | 158 | `result-track:3d60c0058709c86cb3c35deef4c4d7364eaa70ea4b224ab537832433782c8246` |
| 26 | `lemma` | [intCast_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast-mul-right.md) | 165 | `result-track:186b01c7968891128bbc2e42a2fa1954ee88505355bda7ee9e0fa69d9580b843` |
| 27 | `lemma` | [intCast_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast-mul-left.md) | 168 | `result-track:032183045c5254e8c677153c8232ec0e934979e719cd0ddfd8bd03f9e827d321` |
| 28 | `lemma` | [intCast_mul_intCast_mul](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast-mul-intcast-mul.md) | 171 | `result-track:4033265a83bdee273976f57f923e31cf7301d72c8dcccf38d8deb48117b5a313` |
| 29 | `lemma` | [self_intCast_mul](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/self-intcast-mul.md) | 176 | `result-track:f7b0ac8e24b5f0cba1d91063f0ea8bd4200d1dc1efb4fbbd0784b41678585a28` |
| 30 | `lemma` | [intCast_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/intcast-mul-self.md) | 178 | `result-track:61f732bb274455297bd140bf1350e9be536ccbc167f460ba5100cbef07ea7346` |
| 31 | `lemma` | [self_intCast_mul_intCast_mul](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/self-intcast-mul-intcast-mul.md) | 180 | `result-track:207b4614cb2f157ce06822c0027b9d52bf362553f2e2ebdea249547be39bb848` |
| 32 | `theorem` | [ext_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/ext-int-source-edition-4.md) | 193 | `result-track:963d86c4e975361838dd5790bf1634e9e790fbc02a3d9047c91b085951e98920` |
| 33 | `theorem` | [eq_intCastAddHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/eq-intcastaddhom.md) | 202 | `result-track:7170a3bc04b22fff6cd1504dd2aff58b26030437e7298be8a05f5839f4f71559` |
| 34 | `theorem` | [eq_intCast'](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/eq-intcast-source-edition-3.md) | 207 | `result-track:7e473ed990676ac959f3daad0bcff4f8cc7a605aff5363b04b55a66de6080583` |
| 35 | `theorem` | [map_intCast'](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/map-intcast-source-edition-2.md) | 213 | `result-track:57b1ac4942d357c57ebb5a95f8bfdd9418643ddab911c62bf41a6d61fbfe87b1` |
| 36 | `theorem` | [Int.castAddHom_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/int-castaddhom-int.md) | 218 | `result-track:1ca5f99cf44fe2daf12f82f1fce351462f4d797e8078113ced65361ddb440d9d` |
| 37 | `theorem` | [ext_mint](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/ext-mint.md) | 228 | `result-track:ca90b9736f15cd6c87340c894f2574945fead61c2b4d9bc09d56c082e4627dad` |
| 38 | `theorem` | [ext_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/ext-int-source-edition-2.md) | 233 | `result-track:2f3049d1efdaa6bb0a5191f83c5fa7eda0a8061796b576da4a5043ab7cf763e5` |
| 39 | `theorem` | [ext_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/ext-int-source-edition-3.md) | 249 | `result-track:7af0a9e369eb77ad021b3840546bb0a088ec13ec71291c7e0176bba6b60059b4` |
| 40 | `theorem` | [ext_int'](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/ext-int-source-edition-5.md) | 258 | `result-track:e701b21bf5a618177e2f2c7eb88f0613a77f4814f3033e7b95d133b0a51be1c1` |
| 41 | `def` | [zmultiplesHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zmultipleshom.md) | 272 | `declaration-track:646fdd1f3bdc68ca05901485145f990ffc509a5cf2974d111b76834c3ad89073` |
| 42 | `def` | [zpowersHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zpowershom.md) | 283 | `declaration-track:49814deaee926981b4c2de785c24b016910601b8a3cb521e6ee31889aa2b1a51` |
| 43 | `lemma` | [zmultiplesHom_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zmultipleshom-apply.md) | 286 | `result-track:1ce82d188730bd9443f1318f43ecc80004dc620312bcb664dd806a4ac9f896a4` |
| 44 | `lemma` | [zmultiplesHom_symm_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zmultipleshom-symm-apply.md) | 288 | `result-track:5c39b60a2c4d3497bd0f8d15f303ee0316063b98c350c40e26be73d31266a3a5` |
| 45 | `lemma` | [zpowersHom_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zpowershom-apply.md) | 290 | `result-track:8283c6e1636bb026a082bc935894752e446e570864ce0ad28a2e5e1df25b978a` |
| 46 | `lemma` | [zpowersHom_symm_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zpowershom-symm-apply.md) | 293 | `result-track:21a75305353c93ab51cf273456c269e5dffe09690b0b13e967f1a0209d4b2dea` |
| 47 | `lemma` | [MonoidHom.apply_mint](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/monoidhom-apply-mint.md) | 296 | `result-track:2291157699788e61be7fc44b5fbb98e6dc5b07b722735ef35b6bbe8f3da46fac` |
| 48 | `lemma` | [AddMonoidHom.apply_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/addmonoidhom-apply-int.md) | 300 | `result-track:8b92236c15162cad40c004b5848b3ea624e12d276dd8f9f735003caba5a81727` |
| 49 | `def` | [zmultiplesAddHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zmultiplesaddhom.md) | 309 | `declaration-track:1d087d9f0cc0a7da5ce19ff3aeebb1681dfa85bb4c13de2910aaddb5eed4a136` |
| 50 | `def` | [zpowersMulHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zpowersmulhom.md) | 313 | `declaration-track:0a5888909682afe1d7e1085f0e7e8571c39b2c89d1158afe8474e306621354e3` |
| 51 | `lemma` | [zpowersMulHom_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zpowersmulhom-apply.md) | 319 | `result-track:3d9dc49e803cea446f878c800a81a7544f724d9a70d7e5722b45f80c85a3c630` |
| 52 | `lemma` | [zpowersMulHom_symm_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zpowersmulhom-symm-apply.md) | 322 | `result-track:b61c24645bd954569db36f9f394b7697a9659961dd62e623ff5e31fe0be0f55f` |
| 53 | `lemma` | [zmultiplesAddHom_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zmultiplesaddhom-apply.md) | 325 | `result-track:d361dfc96e82d2a9bb6514c917c1be85ae0a224b4d65c8f6513fc55aac28fffe` |
| 54 | `lemma` | [zmultiplesAddHom_symm_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/zmultiplesaddhom-symm-apply.md) | 327 | `result-track:397f6cbc37cef52486a7aa0d6097711dcf0836eadd019c18201a19180445cb9e` |
| 55 | `theorem` | [eq_intCast](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/eq-intcast-source-edition-2.md) | 336 | `result-track:42ef8bd14f60cb3b49d435871fa83bdc4da53a42f60dfa06f52df4c3cbe35d85` |
| 56 | `theorem` | [map_intCast](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/map-intcast.md) | 340 | `result-track:11b6122310e55fe9e8ed20e7df1c49b76e624f9b255702a4dc2ea7f38d2b1b7f` |
| 57 | `theorem` | [eq_intCast'](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/eq-intcast.md) | 345 | `result-track:0f2d6977b9bb99c7ecb9a305816123246d1458531252dfc5ff9da51d9538e458` |
| 58 | `theorem` | [ext_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/ext-int.md) | 348 | `result-track:0d915b1e8325e23bdc528fbb8b3f868c59eabd4d393b2b9819bd6f604a89a630` |
| 59 | `instance` | [Int.subsingleton_ringHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/int-subsingleton-ringhom.md) | 351 | `declaration-track:edb54475f8b8a7d54a8e632cd0f8e32f6c0db22db97ed680627cc1c5ec93252d` |
| 60 | `theorem` | [Int.castRingHom_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedCastInj.lean/declarations/int-castringhom-int.md) | 359 | `result-track:0cdfc17f0163376ec30f9d087cbf3a45ea802dede1ea13137f3da37cc6d546c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed500ede7305bd5fe9f0593cd04aad5dab067331675d7b9ef6bcffefd6a8f4fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lemmas/Varianteb1e37ebfeca62b65082e7616c9d057a4253b2e42681f16a913e753443ab16ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

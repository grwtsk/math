# Verification target: Data Complex Norm Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de1b5bacb28d32fa8232a593e4b206f97ff07dae",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de1b5bacb28d32fa8232a593e4b206f97ff07dae`.

Source path: `GRWTSK/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNorm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/instnorm.md) | 29 | `declaration-track:cfacb17939debe8028c46962b803d9acccd1fc1bf22b03f1965fdd42991fccfa` |
| 2 | `theorem` | [norm_def](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-def.md) | 32 | `result-track:1f8a79642177aa6ee268f8d29060cf3656d20186b7385b68aeff001bea1a48a1` |
| 3 | `theorem` | [norm_mul_self_eq_normSq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-mul-self-eq-normsq.md) | 34 | `result-track:21bb941e29ffc5ba5bc80f002540f9c5bff29f67e4ca1daa0cbe964d3ffee51b` |
| 4 | `theorem` | [norm_nonneg](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-nonneg.md) | 39 | `result-track:32c35b153ca0e3197ba7749abf1c90ec868fa3bb56d6f121a16392673a07c1b5` |
| 5 | `theorem` | [abs_re_le_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/abs-re-le-norm.md) | 43 | `result-track:5e0fe4afd8bae56047e874c884f69495efc15155a3cb24c4a123fcfbf9a6569c` |
| 6 | `theorem` | [re_le_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/re-le-norm.md) | 48 | `result-track:455624a7000a9bebcfa9cb7f97b314021ea2d6e70dd0633c3bc3155860d8aa61` |
| 7 | `theorem` | [norm_add_le'](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-add-le.md) | 54 | `result-track:821f1e6315845108a2a954fc750dee0d0b622f3693beedbfec155a1d4124ca62` |
| 8 | `theorem` | [norm_eq_zero_iff](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-eq-zero-iff.md) | 62 | `result-track:67a5e1177eb07bb567fc90b2c49ae056cdc5d8a633e0d52189b85a105c0c6580` |
| 9 | `theorem` | [norm_map_zero'](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-map-zero.md) | 65 | `result-track:b49ca14622c129ea9b37d2bfcfdf69d283f315e92835ead4d673f781328147f8` |
| 10 | `theorem` | [norm_neg'](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-neg.md) | 68 | `result-track:51628b92cd130e0c34e4188bf1d1dcfcff65b7648ad9fcdcc95587ce066f06f3` |
| 11 | `instance` | [instNormedAddCommGroup](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/instnormedaddcommgroup.md) | 71 | `declaration-track:42c8ce80535a2e52e5fd9db9aa3026ad08e3ec51a128028c983b7942a57bf607` |
| 12 | `abbrev` | [abs](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/abs.md) | 81 | `declaration-track:89f9b970296dfaced8ae38a55752106c8d2f44881950487ef25335574032bf1f` |
| 13 | `theorem` | [norm_mul](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-mul.md) | 86 | `result-track:de5ce571e50c561a6d888a8a92a7677cc73f3e13fd60d9322571bea3147c548f` |
| 14 | `theorem` | [norm_div](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-div.md) | 90 | `result-track:ea156ce659c50342efd46148b1a293b0d5a1cf4694f684a56abc60aaaa7bc43b` |
| 15 | `instance` | [isAbsoluteValueNorm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/isabsolutevaluenorm.md) | 93 | `declaration-track:06fc4236ee3ac5ebae26fbc8d20cbfd8f321970741ec9c87b7617c73d00b0949` |
| 16 | `theorem` | [norm_pow](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-pow.md) | 99 | `result-track:3ac632cbe1c532790240e0624af48e235bc17627edee6f749424fa546b6486ca` |
| 17 | `theorem` | [norm_zpow](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-zpow.md) | 102 | `result-track:4d54911dc831aa8567e7e883ef75c29eb25e05ff4c0a43cc47f68eff664de850` |
| 18 | `theorem` | [norm_prod](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-prod.md) | 105 | `result-track:c85ae87666109f7e9780d9d2d127e1bb6f6ffb024a490be6eee2d1f8841a7418` |
| 19 | `theorem` | [norm_conj](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-conj.md) | 109 | `result-track:2b551657eaa047f6c6cdca0b5aa48d4e7ac470972289bf95585abe4186024274` |
| 20 | `lemma` | [norm_I](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-i.md) | 117 | `result-track:455ad2883d803a8e5b78d848549fe7296a157ef810eec73fa9cd5599b8c17fb5` |
| 21 | `lemma` | [nnnorm_I](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/nnnorm-i.md) | 121 | `result-track:5a6b8bc898b66a6a233b25b990cd91691823635b7127fc259a9aff01e2e55ee8` |
| 22 | `lemma` | [norm_real](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-real.md) | 124 | `result-track:68ce2b252354fdc255cb900dd0cd2088dac67fdc53590af81db9ae2e769e051a` |
| 23 | `theorem` | [norm_of_nonneg](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-of-nonneg.md) | 127 | `result-track:bc7f9a5c63ce63f356ca23b3cfb602fee6b62a234959bea5d64444834f189409` |
| 24 | `lemma` | [nnnorm_real](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/nnnorm-real.md) | 134 | `result-track:324c6763b762ff043218d40ed453f2657847fc71ae82264f9ea38b0a596a5565` |
| 25 | `lemma` | [norm_natCast](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-natcast.md) | 137 | `result-track:83596d12c57e417b1b4f3e87ff4f9084ab22e2e480cbc3969fe4bc7b97f3efcf` |
| 26 | `lemma` | [norm_ofNat](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-ofnat.md) | 140 | `result-track:47ef34bbf72c059e55ecc702b1ab5a7c14c33e6e309a77e60f913349bf9e744f` |
| 27 | `lemma` | [norm_two](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-two.md) | 143 | `result-track:78dafb0af478b28fc79dfe0c8ebee758fcfd9c8d0b196eb04b5da802a8a305a4` |
| 28 | `lemma` | [nnnorm_natCast](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/nnnorm-natcast.md) | 146 | `result-track:1411f29905d5d05b0b6942f5b18ee087b26051e7a99fae8c850e4857051ac3f9` |
| 29 | `lemma` | [nnnorm_ofNat](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/nnnorm-ofnat.md) | 149 | `result-track:4c8250cda8745eb4e2f8fad801116f7fc242fcb9fbae038ca35622ca59a6499c` |
| 30 | `lemma` | [norm_intCast](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-intcast.md) | 157 | `result-track:4ef095c20114a22a298487c1f33c889ef0288acd2ee90ab099b90dac6c318bea` |
| 31 | `theorem` | [norm_int_of_nonneg](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-int-of-nonneg.md) | 160 | `result-track:9a75a265fb95a1572ce36d4acf5e3ce7d56012094921a45d00403d13c553ec1f` |
| 32 | `lemma` | [norm_ratCast](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-ratcast.md) | 164 | `result-track:b0a97d4f720bb194c362a1ffc7d83c20561673f6a31052d869a642cb623cc57a` |
| 33 | `lemma` | [norm_nnratCast](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-nnratcast.md) | 167 | `result-track:e15bfe89eadae6c0327a327f1ef0df9b924f9bfea1f131b617ad35055c4c53d9` |
| 34 | `lemma` | [nnnorm_ratCast](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/nnnorm-ratcast.md) | 170 | `result-track:af29bc5ead901cd0af01c419c6130d2c16a79702c1a08dcf1b95c084011033ec` |
| 35 | `lemma` | [nnnorm_nnratCast](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/nnnorm-nnratcast.md) | 173 | `result-track:6a1464169a8ed15c6f47ade5c718ddb5885acdd44d3162316809417223359a26` |
| 36 | `lemma` | [normSq_eq_norm_sq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/normsq-eq-norm-sq.md) | 177 | `result-track:4784a8551782d446b72499d7570098401ddc237a0630324900809837af448241` |
| 37 | `theorem` | [sq_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/sq-norm.md) | 180 | `result-track:d7830002ad41dbad5c1f53c5c5bf57fba5907fdea64471686723cb8d8a5342db` |
| 38 | `theorem` | [sq_norm_sub_sq_re](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/sq-norm-sub-sq-re.md) | 183 | `result-track:64684956f4b9def25e71b73ecee32376774c29e644901b04a9ccc42a03344a11` |
| 39 | `theorem` | [sq_norm_sub_sq_im](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/sq-norm-sub-sq-im.md) | 187 | `result-track:f9947b8f488e35587f8681d181021a32033c9dac663b895a4133a5159fdab391` |
| 40 | `lemma` | [norm_add_mul_I](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-add-mul-i.md) | 190 | `result-track:5f80271a0d0dce0dd261d5fc0420bd480aeee9bf336cd2f672366b55284a0b3e` |
| 41 | `lemma` | [norm_eq_sqrt_sq_add_sq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-eq-sqrt-sq-add-sq.md) | 193 | `result-track:8905dfc935543b4caee1933f12b5f8cb4605064da55c9dd37447a4736c0c7c07` |
| 42 | `theorem` | [range_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/range-norm.md) | 204 | `result-track:1c46b1c3165780650aaca7a002ab8d004197740ccdab6a17216912982e9e10a1` |
| 43 | `theorem` | [range_normSq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/range-normsq.md) | 210 | `result-track:0839450c3a361b4f707857a683d04a9df8052c3329d1835247eb3c805970e3a7` |
| 44 | `theorem` | [norm_le_abs_re_add_abs_im](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-le-abs-re-add-abs-im.md) | 214 | `result-track:31264ef28c6feb5917f4bea969eb9ded2bb81001d5b9735af360aca1fff01bd3` |
| 45 | `theorem` | [abs_im_le_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/abs-im-le-norm.md) | 218 | `result-track:a0961cee59c74cededb185ce16af6e06b29cb2595adfa5534fef7e8cb11e8d64` |
| 46 | `theorem` | [im_le_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/im-le-norm.md) | 223 | `result-track:5cc3efd42085cf4366c375cb5c57eb632fca991e1a327b26d172764900660405` |
| 47 | `theorem` | [abs_re_lt_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/abs-re-lt-norm.md) | 227 | `result-track:192218ef2f2d3f197bab892344ffcc4ba134005e06ad7a080192f3b50433c550` |
| 48 | `theorem` | [abs_im_lt_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/abs-im-lt-norm.md) | 232 | `result-track:11d86d84f839c15624cab0bff620c2e3ed3256fe4ae15237e26eca70e59bdfc9` |
| 49 | `lemma` | [abs_re_eq_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/abs-re-eq-norm.md) | 236 | `result-track:eba217e24343aa4dbacd5d887b7d4ce6342e07301293b4f876a664ab726cadc0` |
| 50 | `lemma` | [abs_im_eq_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/abs-im-eq-norm.md) | 240 | `result-track:ac39e92f1bdeeab60dae97bd711f3afc3ceb12a2d1ca01b8613c61ac632c4dd1` |
| 51 | `theorem` | [norm_le_sqrt_two_mul_max](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/norm-le-sqrt-two-mul-max.md) | 251 | `result-track:69dce9f996b70f946ef77062756978b0beba255bcf1ce1be48d3c82eec823bec` |
| 52 | `theorem` | [abs_re_div_norm_le_one](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/abs-re-div-norm-le-one.md) | 263 | `result-track:7f5141d1e7509e6fbc026b2ffc312e55401477adbf36600a689fc22aa79e4ded` |
| 53 | `theorem` | [abs_im_div_norm_le_one](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/abs-im-div-norm-le-one.md) | 268 | `result-track:d9cb13db7d2ab798a0859792421364081dcb8311ed1e894d2f6bf6642de74233` |
| 54 | `theorem` | [dist_eq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/dist-eq.md) | 277 | `result-track:a4126a0348f58c459d18c71f71ee17f5ed5e738c3d9851654525c35905f413bd` |
| 55 | `theorem` | [dist_eq_re_im](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/dist-eq-re-im.md) | 279 | `result-track:01fa1dde8730f6eae8c3d33d63d6e4498bd210ea520ee25c2279145dc39df107` |
| 56 | `theorem` | [dist_mk](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/dist-mk.md) | 284 | `result-track:82b5d38510e968620233f5302dffeb8bdb574f463c72c5e7ae7b4fc7c0d9a4ac` |
| 57 | `theorem` | [dist_of_re_eq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/dist-of-re-eq.md) | 288 | `result-track:3edaf26e346decbdb096268685e2d03660a36cb48b22875c9461cd33d8ae98ea` |
| 58 | `theorem` | [nndist_of_re_eq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/nndist-of-re-eq.md) | 291 | `result-track:d6e68ed6d79bf2a0fa02a094f4b64c4e02174c7288b4d0f05b95136a2a1455d2` |
| 59 | `theorem` | [edist_of_re_eq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/edist-of-re-eq.md) | 294 | `result-track:a080e1d01e9f8711610b07bbfb202145884d84f982df4bc9e17c467d9d3af265` |
| 60 | `theorem` | [dist_of_im_eq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/dist-of-im-eq.md) | 297 | `result-track:4fcbd0ee288fbf5db69c4e286ca666b67fa209605bdaf3a1a140ac227da3ba8e` |
| 61 | `theorem` | [nndist_of_im_eq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/nndist-of-im-eq.md) | 300 | `result-track:b9c0142cb8692440434c37d0794931f3cf5c5f2a6e0a7ebc2fa52afbbff499e9` |
| 62 | `theorem` | [edist_of_im_eq](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/edist-of-im-eq.md) | 303 | `result-track:07db68710337738608e8bc9ba70076e79d0ace692012f09c13570b1ad1ec67b9` |
| 63 | `theorem` | [dist_conj_self](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/dist-conj-self.md) | 306 | `result-track:c85aec379fd85477b529380b790843017efdeb9fedc457879c9b8c28b933554a` |
| 64 | `theorem` | [nndist_conj_self](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/nndist-conj-self.md) | 310 | `result-track:8879cd8a50e03e4ca2f4646a5475e79972327e10c28c6d52eb3f9636304dd931` |
| 65 | `theorem` | [dist_self_conj](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/dist-self-conj.md) | 313 | `result-track:7e318cddd2a3b4fd8b620c83d73bf4c128191d2d7c7e08151da0e5bdf8b9502d` |
| 66 | `theorem` | [nndist_self_conj](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/nndist-self-conj.md) | 315 | `result-track:acde47f6eace481611333ff92adc9a44a21e9c4664ec728c36598d05d3569a0c` |
| 67 | `theorem` | [isCauSeq_re](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/iscauseq-re.md) | 320 | `result-track:81a972bc844306f21718765889fe3ad5095141802282b859a59104f5efdb4594` |
| 68 | `theorem` | [isCauSeq_im](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/iscauseq-im.md) | 324 | `result-track:ad62f5f4a16e6d4b7acdfeddd81c3153cea46874d180de4ab78d3d9379d44e09` |
| 69 | `def` | [cauSeqRe](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/causeqre.md) | 329 | `declaration-track:31067d81e0baa010f330dc596c36b1f586290fb004ce84bebefb2a74258bc3b6` |
| 70 | `def` | [cauSeqIm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/causeqim.md) | 333 | `declaration-track:711d6aa950b97dc8b12b0b0deec8fdcab6033135b2583a0d37493bfa6ccc3865` |
| 71 | `theorem` | [isCauSeq_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/iscauseq-norm.md) | 336 | `result-track:386153fb95ba6f740d599c9f50f1dc3a5769021cfe8df012880ed303390550d1` |
| 72 | `def` | [limAux](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/limaux.md) | 342 | `declaration-track:3b118656197276b4fb64b57331cc0189ccf8812b0284f4eb0c4abe6648d27b42` |
| 73 | `theorem` | [equiv_limAux](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/equiv-limaux.md) | 345 | `result-track:63f04490937e0dee30b7cd23888f4221d69e89b7c3e8cb20e2a6abb9450b7972` |
| 74 | `instance` | [instIsComplete](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/instiscomplete.md) | 357 | `declaration-track:c6b89e5208cd7a5d79bada5073dd17e7a893f04a37a431b278496ea397ae56ef` |
| 75 | `theorem` | [lim_eq_lim_im_add_lim_re](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/lim-eq-lim-im-add-lim-re.md) | 362 | `result-track:173dbe7657cf1fe5c7d9a6b49aa5bd301367ebfb4e1b692a52dedf235fb65341` |
| 76 | `theorem` | [lim_re](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/lim-re.md) | 372 | `result-track:8beec8abc2836094601a70acbff078a37b5724f162e7cd1ba8a9c2777d465739` |
| 77 | `theorem` | [lim_im](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/lim-im.md) | 375 | `result-track:142a1509c6639da0454d73d6a8ea61f96b8a49f75e22be618df0d3a627129dcc` |
| 78 | `theorem` | [isCauSeq_conj](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/iscauseq-conj.md) | 378 | `result-track:47acc685fb5efe12a583845a94e6181ffa37f94ba38f1f03a89298140cc37d8c` |
| 79 | `def` | [cauSeqConj](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/causeqconj.md) | 385 | `declaration-track:d19576887662a31095f4c0edbbfce226a34c4bda8202277e7886b3ee67ca40cd` |
| 80 | `theorem` | [lim_conj](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/lim-conj.md) | 388 | `result-track:477093ecc52f9ac90ed1d228facd929816c293dd5380012c14eb8ee1ab489f6c` |
| 81 | `def` | [cauSeqNorm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/causeqnorm.md) | 393 | `declaration-track:6d6d664db50307e30b6e1ef0de5ecc59231f74e0dca36be68ac1c2f54221ec75` |
| 82 | `theorem` | [lim_norm](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/lim-norm.md) | 396 | `result-track:2be04d7c426a6e97c35901556e14af2e6631fc86597927eaa00626c2fb03b4d4` |
| 83 | `lemma` | [ne_zero_of_re_pos](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/ne-zero-of-re-pos.md) | 405 | `result-track:c24d0d2acfb71c7d2146fb3d5a3f1853a41bdec87189899a755b21f995489e2b` |
| 84 | `lemma` | [ne_zero_of_one_lt_re](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/ne-zero-of-one-lt-re.md) | 408 | `result-track:344b2196954160d65fd64449cb5636dcff12dd02e61562ff151ee11c81b6491d` |
| 85 | `lemma` | [re_neg_ne_zero_of_re_pos](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/re-neg-ne-zero-of-re-pos.md) | 411 | `result-track:11be0700c6d355e4fcaf415a2c20c183275e031a0303159f106a012c89478349` |
| 86 | `lemma` | [re_neg_ne_zero_of_one_lt_re](../../../../FunctionsOfAComplexVariable/DataComplexNormNamespaced.lean/declarations/re-neg-ne-zero-of-one-lt-re.md) | 414 | `result-track:ec0e79148ef66cc422e12dd4494089a1834c63ca45e812b397e218c48ce8ccdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf466e88331df85e7d01a3c169318bb2d1fa54e26e722dbc905ad1d233e22d71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Norm/Variant9893b577c8f3a68be5c49888849560247ddae9686c1cc033dcab6a08566fddf0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

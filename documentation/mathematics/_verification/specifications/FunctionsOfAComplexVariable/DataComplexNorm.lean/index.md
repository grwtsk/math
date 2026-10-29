# Verification target: Data Complex Norm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6df8b18c717b91e0a94b985925e838fdb5d8900",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6df8b18c717b91e0a94b985925e838fdb5d8900`.

Source path: `GRWTSK/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNorm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/instnorm.md) | 21 | `declaration-track:11931d9823041e77b418146eb728911561bf14a4a294fa192938d8a733e5ba87` |
| 2 | `theorem` | [norm_def](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-def.md) | 24 | `result-track:c17fa9d2ee48134318ebcced4d5be2f396057c7d213060ca0b1926e64a19771d` |
| 3 | `theorem` | [norm_mul_self_eq_normSq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-mul-self-eq-normsq.md) | 26 | `result-track:62fde44cffaac181d7cb4c1b1baab51bb743834c75e82e9363a96459aa4a2c36` |
| 4 | `theorem` | [norm_nonneg](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-nonneg.md) | 31 | `result-track:b647a2ae177affce92d5a5aa9df69d1f8ace6aad1c3a88cb4cc1142361f2c222` |
| 5 | `theorem` | [abs_re_le_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/abs-re-le-norm.md) | 35 | `result-track:65884b9cea3484453ea866f883a1bffb50f1f6b726d857bbc3d1ed259bafbe1f` |
| 6 | `theorem` | [re_le_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/re-le-norm.md) | 40 | `result-track:27b2293f3001f390a68de3f54a011a31c2843bed8f3577cf89f5e2e1deaa1502` |
| 7 | `theorem` | [norm_add_le'](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-add-le.md) | 46 | `result-track:eec0abdf4082b96f0ae46c31b8a45db82219e2c1fbc394f9b3b5d74019e10f39` |
| 8 | `theorem` | [norm_eq_zero_iff](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-eq-zero-iff.md) | 54 | `result-track:ebdaef76049ac27a4e46189a9ea1c9bf9474a171da084d88f29db04d52249b9e` |
| 9 | `theorem` | [norm_map_zero'](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-map-zero.md) | 57 | `result-track:9936c7755721317db527492d6ffcd3a03ebc87adcb2672a07d70c3852e132cef` |
| 10 | `theorem` | [norm_neg'](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-neg.md) | 60 | `result-track:e859f586b655a4e563969cbbae0a1e41348984a6df0d52fdd08b76ef2c0276df` |
| 11 | `instance` | [instNormedAddCommGroup](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/instnormedaddcommgroup.md) | 63 | `declaration-track:35ff3dc7997d62695631ac506fb74ef1d053012edd28d750aa70e39d0082da27` |
| 12 | `abbrev` | [abs](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/abs.md) | 73 | `declaration-track:1760eb96a6b9fe497658eb04e74cfefb85919513f10210f1af05ccaf66b89174` |
| 13 | `theorem` | [norm_mul](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-mul.md) | 78 | `result-track:eca6e3d631b84c83dba45f69142054b67155b7d0be20ae8fdfd155fe2db74c9e` |
| 14 | `theorem` | [norm_div](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-div.md) | 82 | `result-track:13ba04dbd3682ff500df51502d934e9cfa289d798a4b9610581f4b9eea582c8a` |
| 15 | `instance` | [isAbsoluteValueNorm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/isabsolutevaluenorm.md) | 85 | `declaration-track:276a4a59cb92f802dfeebfbb92e6ba68d64efa11761bbc74b38fca1ed50155ee` |
| 16 | `theorem` | [norm_pow](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-pow.md) | 91 | `result-track:7439ea14de11a576bfd7c1e40ca454c2475ab479fe2ae8360cf8087df9534a52` |
| 17 | `theorem` | [norm_zpow](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-zpow.md) | 94 | `result-track:5ae5d1ec448aed25a5a0813d05188fb97b31ba3b14b00e781b2e3aa4fe021507` |
| 18 | `theorem` | [norm_prod](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-prod.md) | 97 | `result-track:066df734f600587607cdb0ac4e472ca48968a08f8b00c88e42b40ce06af902c8` |
| 19 | `theorem` | [norm_conj](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-conj.md) | 101 | `result-track:53271ad169826a24fa9ed1b1d3a2adc5fdcdc98d251e2ca49fa5e3d829836772` |
| 20 | `lemma` | [norm_I](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-i.md) | 109 | `result-track:03c59f8d15cd131145ead07c37104b5891c9e21a53c8d6d4ef11f3b47ebe266d` |
| 21 | `lemma` | [nnnorm_I](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/nnnorm-i.md) | 113 | `result-track:84890ac0e20889b1d5d4fb6aee3cd9dc51774b87ebc037784bc603ba7fcade8c` |
| 22 | `lemma` | [norm_real](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-real.md) | 116 | `result-track:c07b522bd640d89ce2c456fb6236fc63f87876135021036e86f482f13488375c` |
| 23 | `theorem` | [norm_of_nonneg](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-of-nonneg.md) | 119 | `result-track:e50077c5bc1c1942a9a6d8729786718d0c88421cda53d89638a8ba81bfc604a0` |
| 24 | `lemma` | [nnnorm_real](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/nnnorm-real.md) | 126 | `result-track:7d3104d974e73fc22c80bdb106c97b3778c45aee14457c957bee1ee06c1ac9e5` |
| 25 | `lemma` | [norm_natCast](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-natcast.md) | 129 | `result-track:41eb5b91ceb9f1f5b70a8c55058769260bfe270c36c00f696e42eb7aa58d74e1` |
| 26 | `lemma` | [norm_ofNat](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-ofnat.md) | 132 | `result-track:d80e5677d7ceea532ad75b4df802db5d2529c871e438ec176db71047229e4294` |
| 27 | `lemma` | [norm_two](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-two.md) | 135 | `result-track:0b14eb385aeddcaf3f47bc40b666a00bee4aa21a29520453491a9eae93407f65` |
| 28 | `lemma` | [nnnorm_natCast](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/nnnorm-natcast.md) | 138 | `result-track:8c0f64a3952dd889fe63404dbdf90cc16df42bf62c9bb76669b9e6398bfaef5f` |
| 29 | `lemma` | [nnnorm_ofNat](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/nnnorm-ofnat.md) | 141 | `result-track:5e7d415607039cc51d82bd2adb52531588d21661ae24ad8952636c79526689fa` |
| 30 | `lemma` | [norm_intCast](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-intcast.md) | 149 | `result-track:f53e5f3f26c137f775f3146cee34d19d294e5130cddfd06cdebcdd0d3b230cfe` |
| 31 | `theorem` | [norm_int_of_nonneg](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-int-of-nonneg.md) | 152 | `result-track:b41392e3685a09c209c03ea39bdd848565595984117a0e60090f1f8faea6a168` |
| 32 | `lemma` | [norm_ratCast](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-ratcast.md) | 156 | `result-track:715ebfa318491a2fe4c71271cc027638f893d6233bacd46ff122cc1a3ef4372c` |
| 33 | `lemma` | [norm_nnratCast](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-nnratcast.md) | 159 | `result-track:9227640850b3471e39edaeeec91b5a61c32c0e0fba0afa5386c73b28d5e66c52` |
| 34 | `lemma` | [nnnorm_ratCast](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/nnnorm-ratcast.md) | 162 | `result-track:61c7b70dd516144e14adffba52df587b5d716778dd41386eca061511f3da9c76` |
| 35 | `lemma` | [nnnorm_nnratCast](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/nnnorm-nnratcast.md) | 165 | `result-track:8f08e3d938c3f3b367d0b012ee6f57778326e35b0a21a947dce9dc0ea3b15c94` |
| 36 | `lemma` | [normSq_eq_norm_sq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/normsq-eq-norm-sq.md) | 169 | `result-track:ea800e3ded6b9431291d5ae69dfe0f629b03bcb11b2e35f65c39a81a8692dc17` |
| 37 | `theorem` | [sq_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/sq-norm.md) | 172 | `result-track:14680ede1eb9d21a23fa299ce96f7367f6ece9172f57573021f73f73626575ab` |
| 38 | `theorem` | [sq_norm_sub_sq_re](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/sq-norm-sub-sq-re.md) | 175 | `result-track:b7e7390c577170092090e247c34d248ec887b555540cea8e89034ab1f4691071` |
| 39 | `theorem` | [sq_norm_sub_sq_im](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/sq-norm-sub-sq-im.md) | 179 | `result-track:e2b8b5a42051a4c35205c71762e76ebd89135667806779b605d067a51427e019` |
| 40 | `lemma` | [norm_add_mul_I](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-add-mul-i.md) | 182 | `result-track:2e381d7032326a8ebdf1a5aa0599b9383ab4b42bf61ae66cea23b124cf2204c2` |
| 41 | `lemma` | [norm_eq_sqrt_sq_add_sq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-eq-sqrt-sq-add-sq.md) | 185 | `result-track:03af764ec8aa37991201c4ffbd89cbff58d00b6f993000de4d16676934a6cd06` |
| 42 | `theorem` | [range_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/range-norm.md) | 196 | `result-track:e9925e613da860cb9b597068840abb29a87d6b4cb5091391fc00060f28c610e4` |
| 43 | `theorem` | [range_normSq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/range-normsq.md) | 202 | `result-track:fe58623a33f89c76f54e45a1696d846d97f3059c59306c6c53fbbe0fcdf12465` |
| 44 | `theorem` | [norm_le_abs_re_add_abs_im](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-le-abs-re-add-abs-im.md) | 206 | `result-track:e0e548ec8d20d0322c1108846606183aea176098bc1d84c26de124cf5a603920` |
| 45 | `theorem` | [abs_im_le_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/abs-im-le-norm.md) | 210 | `result-track:b85b6d5a096c304939717eeccefca741b45457006c7acc08a74c474cad5d2137` |
| 46 | `theorem` | [im_le_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/im-le-norm.md) | 215 | `result-track:10269c87895129c8fd5a940db6fc6eb8b9a0502d89b3ebef8b9ae46843b7e241` |
| 47 | `theorem` | [abs_re_lt_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/abs-re-lt-norm.md) | 219 | `result-track:5b90f7170ab6837f42a7a44a0f3b78b4ea43ef7b8919fb0101cfb0d87ad5c74a` |
| 48 | `theorem` | [abs_im_lt_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/abs-im-lt-norm.md) | 224 | `result-track:ecffabee807caa825fab0bce720bebb3377fa819c37a29713b10712ced9d5c42` |
| 49 | `lemma` | [abs_re_eq_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/abs-re-eq-norm.md) | 228 | `result-track:057c425e09a50ccf14961d99701d4204ad87733684500925624597f1823e9de9` |
| 50 | `lemma` | [abs_im_eq_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/abs-im-eq-norm.md) | 232 | `result-track:8724cf63df99e2f5ecd3596370150b48b60828d4c2c94281238acfb6110faa80` |
| 51 | `theorem` | [norm_le_sqrt_two_mul_max](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/norm-le-sqrt-two-mul-max.md) | 243 | `result-track:588fea45b84a970323414e54331b01da13130b622b2b5a43d2e3d17ded98b147` |
| 52 | `theorem` | [abs_re_div_norm_le_one](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/abs-re-div-norm-le-one.md) | 255 | `result-track:fe493efc00b10415f084d68cacd190e3d45a32499b104800373f25d5972cd33f` |
| 53 | `theorem` | [abs_im_div_norm_le_one](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/abs-im-div-norm-le-one.md) | 260 | `result-track:ab9dce77f72e981a5597168b4a7c4bcf83b43d5db22c010a948f3ff6d6ee8dae` |
| 54 | `theorem` | [dist_eq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/dist-eq.md) | 269 | `result-track:b3663c88b599af7064c314374cf4f5c6c1874147f610c52303aff726966e57e6` |
| 55 | `theorem` | [dist_eq_re_im](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/dist-eq-re-im.md) | 271 | `result-track:47991ef94ac1ee82869e174c549afde683318a2c038a5958e554f7163b10172b` |
| 56 | `theorem` | [dist_mk](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/dist-mk.md) | 276 | `result-track:17001aea97d081d6968eed55e508974879c541eb9d8b1eb8fb3dd5dde5484286` |
| 57 | `theorem` | [dist_of_re_eq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/dist-of-re-eq.md) | 280 | `result-track:8359e98e9bc2a7228861cc9f7f05c3c40bdbcfb7b324abac2876eed5143a225a` |
| 58 | `theorem` | [nndist_of_re_eq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/nndist-of-re-eq.md) | 283 | `result-track:a28eca2576a0b8ba2f7f8a812bd30f2cab42c510edd5f1885ab5f768d5320409` |
| 59 | `theorem` | [edist_of_re_eq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/edist-of-re-eq.md) | 286 | `result-track:c6524d7086a0f7b510a28a1309184653639f55339226b39dbc8f555b1ca70fec` |
| 60 | `theorem` | [dist_of_im_eq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/dist-of-im-eq.md) | 289 | `result-track:2aa430cdf692fd4d5d7c283de2472c22d452fe81b8a882fa955439ea37be0e8b` |
| 61 | `theorem` | [nndist_of_im_eq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/nndist-of-im-eq.md) | 292 | `result-track:1843d26927f520f79480c8351042c1756a1f12ff7ca6d97134f9d27f85ccf919` |
| 62 | `theorem` | [edist_of_im_eq](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/edist-of-im-eq.md) | 295 | `result-track:f66c671314758b31fc43abb3126f745262f4edf9ad664ebd3ddaab6447147426` |
| 63 | `theorem` | [dist_conj_self](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/dist-conj-self.md) | 298 | `result-track:7e357dcdd1002e4ef309ae1133ff947c1ca805f086507776bdfa0b7de74289a8` |
| 64 | `theorem` | [nndist_conj_self](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/nndist-conj-self.md) | 302 | `result-track:6586d2b9c54d429888e1a912cbd62d4740f553aabfab373fd8e4c1bacf618090` |
| 65 | `theorem` | [dist_self_conj](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/dist-self-conj.md) | 305 | `result-track:fcd5cdb1e541e3aaebfa03ecdb47c3ddb6a572d3730a45b2a8ccb55f5d2f164a` |
| 66 | `theorem` | [nndist_self_conj](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/nndist-self-conj.md) | 307 | `result-track:b276f4dc6822cc275fc1f1eb74c733ef551f71794f0f7f8b07dbb487824ba86d` |
| 67 | `theorem` | [isCauSeq_re](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/iscauseq-re.md) | 312 | `result-track:830ae1349f2995b7456ce28d2a39f9a7f156cec14c5624c260b75251720c78be` |
| 68 | `theorem` | [isCauSeq_im](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/iscauseq-im.md) | 316 | `result-track:78bed1079de193308e4bbb2af5a333e31a33f660adabdd9cdd09b6fdae5ae726` |
| 69 | `def` | [cauSeqRe](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/causeqre.md) | 321 | `declaration-track:5cc7460580c6f90168eb0ad618738553e7b6ddc770e6d78798c59454a5ae3ad3` |
| 70 | `def` | [cauSeqIm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/causeqim.md) | 325 | `declaration-track:8ea31d05ff4d1a80a3b832bc4e39122d3c8e6018b71e66d3c1bbaa57631f54ea` |
| 71 | `theorem` | [isCauSeq_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/iscauseq-norm.md) | 328 | `result-track:7fc7480a91baf48752643a58d18929277eebe7d47a202e66327f4e0621879a94` |
| 72 | `def` | [limAux](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/limaux.md) | 334 | `declaration-track:277c58657c75e7f464bd90ffb4521abe4ef838982e1561e8e5b5f5c71e27d7b4` |
| 73 | `theorem` | [equiv_limAux](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/equiv-limaux.md) | 337 | `result-track:02ac4579b9a1edd95dc4bb7adbacd3d4282f78b43ca0be15d92e4c98d78266fa` |
| 74 | `instance` | [instIsComplete](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/instiscomplete.md) | 349 | `declaration-track:cf8b79b0acc74660576b06ebaf42acd18c9efc988bce5f728d9a36241a99a4c7` |
| 75 | `theorem` | [lim_eq_lim_im_add_lim_re](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/lim-eq-lim-im-add-lim-re.md) | 354 | `result-track:fc48b364ebfa3f88cc7b8ea5e90cadba864e25949e13eb726e891b4a5826aee9` |
| 76 | `theorem` | [lim_re](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/lim-re.md) | 364 | `result-track:5c3553ee5e1b85f9f2fb116971d3a1c60205162fdfb724bf53bd9a6b41bf3636` |
| 77 | `theorem` | [lim_im](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/lim-im.md) | 367 | `result-track:914fe19fa6b804463a94d42a20024bbcc976d61c45ed2a3df70e11951eb195c3` |
| 78 | `theorem` | [isCauSeq_conj](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/iscauseq-conj.md) | 370 | `result-track:60e300172b7688e5bb6995e103ad220ad7555a4e5d97b68955c04f2d9bb826e0` |
| 79 | `def` | [cauSeqConj](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/causeqconj.md) | 377 | `declaration-track:11d1589f7930b22b26d7dec04db9ff858ab968168fc38bd597f5a82afbc28962` |
| 80 | `theorem` | [lim_conj](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/lim-conj.md) | 380 | `result-track:c8ea35ecc3bdd05ade7514e9d8b502aab1f6fee5d2db461183d28499034d2f07` |
| 81 | `def` | [cauSeqNorm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/causeqnorm.md) | 385 | `declaration-track:0a0c9c4f68d9fa19056b8cca82cd5abd105d25cd98f053f47ed1ca45f7c420f7` |
| 82 | `theorem` | [lim_norm](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/lim-norm.md) | 388 | `result-track:751ebcdcb4f9f59ca41df5bc22256a7639708711b9d27807433e5dd1446dcb79` |
| 83 | `lemma` | [ne_zero_of_re_pos](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/ne-zero-of-re-pos.md) | 397 | `result-track:0da0380cfbf5e4414016c3f5f5a2517a39222a68b8674820e946d9affe087eb8` |
| 84 | `lemma` | [ne_zero_of_one_lt_re](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/ne-zero-of-one-lt-re.md) | 400 | `result-track:dd3026b6b00074f90a987e2fbd4a4bd0d053e62ee30764ca1575f18af75f569f` |
| 85 | `lemma` | [re_neg_ne_zero_of_re_pos](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/re-neg-ne-zero-of-re-pos.md) | 403 | `result-track:ef9d9adec8fdd53795f3904ebbe35206fd940f8cc8fd5b8c8211075d3452eef7` |
| 86 | `lemma` | [re_neg_ne_zero_of_one_lt_re](../../../../FunctionsOfAComplexVariable/DataComplexNorm.lean/declarations/re-neg-ne-zero-of-one-lt-re.md) | 406 | `result-track:e809332b50d9f01a4781924c70a114ef7057b3682a3441cdbd8e2cb4c54b2ba4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4b60cc676299dcc1fd27b006c0190f0e0b94962da58ed38078653a34065aabf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Cast Defs Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d90ad5f80b2f1cade997f93335de07427817b417",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variante9eea32ae22da1655b8c7cb4feada37153291a0d972fbeaa8451274a4b40254f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d90ad5f80b2f1cade997f93335de07427817b417`.

Source path: `GRWTSK/Algebra/Defs/Variante9eea32ae22da1655b8c7cb4feada37153291a0d972fbeaa8451274a4b40254f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variante9eea32ae22da1655b8c7cb4feada37153291a0d972fbeaa8451274a4b40254f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_natCast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-natcast-source-edition-2.md) | 34 | `result-track:b40a35e25b002ab1202a4e0c0d0698bc2732b55ea06f1a698ef61e1e595971fe` |
| 2 | `lemma` | [cast_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-ofnat.md) | 36 | `result-track:ba5a6cee13f4947b414b0dada22190dea31976f3cef71f572c8bced51ee4ff3c` |
| 3 | `lemma` | [cast_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-zero-source-edition-2.md) | 39 | `result-track:ca9a1cf070a28c9175471d40c978bdd2a6fbcaa01d90ae74f2c578a4444b6b68` |
| 4 | `lemma` | [cast_one](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-one.md) | 40 | `result-track:0825679f8781895a2e6035fcc6a53c885aaef99b5acec222fa31391f7a0cb6cb` |
| 5 | `lemma` | [cast_commute](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-commute-source-edition-2.md) | 42 | `result-track:648f35dbd6ff1b212d3e595bc4837c4e2cccdc4e756bc790bd4385261ad0588b` |
| 6 | `lemma` | [commute_cast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/commute-cast-source-edition-2.md) | 45 | `result-track:c28b3bbdb9400a3ae702f9945761cf2f9f817f99563dd21e7f6d9c30a7eee8cb` |
| 7 | `lemma` | [cast_comm](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-comm-source-edition-2.md) | 47 | `result-track:c0eac3faeac8c56761318f25ef878b006cefa1c4f47182b4b73e33a45db79227` |
| 8 | `lemma` | [cast_divNat_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-divnat-of-ne-zero.md) | 49 | `result-track:5498946b2e537980aa62d5abc41d68b09148d58bba28c80c91d5edbe9114119a` |
| 9 | `lemma` | [cast_add_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-add-of-ne-zero-source-edition-2.md) | 70 | `result-track:8692cd9ea33b0d01a1feb7e5b6bf29ff1f86a56b700ad3f5fdf7c63fc5a028db` |
| 10 | `lemma` | [cast_mul_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-mul-of-ne-zero-source-edition-2.md) | 80 | `result-track:dab8a90986078061d5df96cc39072b345e924d6a65ad0b8ea057e0ef3b60b614` |
| 11 | `lemma` | [cast_inv_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-inv-of-ne-zero.md) | 90 | `result-track:68fd3b228a90c507e139b867de27755e9da5e910cb41fd823794d8ef4418f16e` |
| 12 | `lemma` | [cast_div_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-div-of-ne-zero-source-edition-2.md) | 94 | `result-track:d08d5ae6f3387e27c30e61151670ddda6e31a094b8ea8c281e6b6313a03dbc9f` |
| 13 | `theorem` | [cast_intCast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-intcast.md) | 110 | `result-track:8d24d890ed09ee99e0fee45dc062caac11ece25a30c41d34eb8e7e3b086e6b66` |
| 14 | `theorem` | [cast_natCast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-natcast.md) | 114 | `result-track:52c03cd38c49fec75cc968a0857d3bda10bfe53e34b30113eb62adb79a6c23fe` |
| 15 | `lemma` | [cast_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-ofnat-source-edition-2.md) | 118 | `result-track:c12409f71eb2285b6e697c77d1ba2347df866398304458dddbba13647f35f990` |
| 16 | `theorem` | [cast_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-zero.md) | 123 | `result-track:2c89b53889282acfe53e8ecac28293de0a92f5e53ac5f94cac9fc6c6ada0dc6c` |
| 17 | `theorem` | [cast_one](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-one-source-edition-2.md) | 127 | `result-track:2b591ebdefcab0cbcc8e499a4865ab2287bcef049d3663f4cc0d3e2de8c170e6` |
| 18 | `theorem` | [cast_commute](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-commute.md) | 130 | `result-track:28135777284f6daef2411583f83841ff4f83e016d8da4c504ec2786a712d32c4` |
| 19 | `theorem` | [cast_comm](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-comm.md) | 133 | `result-track:a02f25ddb382c3bf8192dfd092a4834d3e2cbb5aa223a7cbd39260d1218ad8be` |
| 20 | `theorem` | [commute_cast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/commute-cast.md) | 136 | `result-track:05b881a129ebdbf7fc0e38127442b3472eae74bd34e38c32cb9ca1e8b45526d1` |
| 21 | `lemma` | [cast_divInt_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-divint-of-ne-zero.md) | 140 | `result-track:43823949ed61c6da7a33eb5684ea80a5fec0d9277e51a200bc94f199c0fb20d0` |
| 22 | `lemma` | [cast_mkRat_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-mkrat-of-ne-zero.md) | 160 | `result-track:f2551eebeebcc3c956b03f6db660ad852f8f4b7be141a864a11f6fcdff191eb2` |
| 23 | `lemma` | [cast_add_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-add-of-ne-zero.md) | 164 | `result-track:5602850d878db16879596211a0ae7839332d22a70f472903db0f686584ae9c38` |
| 24 | `lemma` | [cast_neg](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-neg.md) | 173 | `result-track:050fa47d310e3fdf292907c949a493dd02d8953be97e38a4d8c7ef96be239cf2` |
| 25 | `lemma` | [cast_sub_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-sub-of-ne-zero.md) | 175 | `result-track:9e0403377a91cd901c1aae11ec1963ee1dbafe97e6d771310b4debce01de3cea` |
| 26 | `lemma` | [cast_mul_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-mul-of-ne-zero.md) | 178 | `result-track:4b3986ee91fedc4d62d7580d370c9be91c0c4df5b3a8e153684b7e2a33254353` |
| 27 | `lemma` | [cast_inv_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-inv-of-ne-zero-source-edition-2.md) | 188 | `result-track:792a5aa43feb7d8a4a32c54164464d17ba467a6b4f63cd86b593cfdc28cc9097` |
| 28 | `lemma` | [cast_div_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/cast-div-of-ne-zero.md) | 191 | `result-track:cc1396e4b8d30d1bc366d0a809c243232806d09ef7a3e7adef4982ff24aa2049` |
| 29 | `lemma` | [map_nnratCast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/map-nnratcast.md) | 206 | `result-track:f23f9e4d0eb62bcff6bdbcfbace19512a93112de96ab49455f2d7768b44fde35` |
| 30 | `lemma` | [eq_nnratCast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/eq-nnratcast.md) | 210 | `result-track:1f9a016c051326ed58a182ae1b3df505d4c131792d89e3110c54aacd732c77f3` |
| 31 | `theorem` | [map_ratCast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/map-ratcast.md) | 214 | `result-track:310cd0967dba846abbedd03f9c572cf0e22ea48cc9af28091c1493ba9854970b` |
| 32 | `lemma` | [eq_ratCast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/eq-ratcast.md) | 217 | `result-track:df502c8947aca0639ae3d56743009ee4d48374c125e356a0e857aabe1f4d56b7` |
| 33 | `lemma` | [ext_nnrat'](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/ext-nnrat.md) | 228 | `result-track:71020503f2ee1c865bc94e1bdcf1db7ab0a1d9ef62d3fe1b45d1ef6ad1375e9b` |
| 34 | `lemma` | [ext_nnrat](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/ext-nnrat-source-edition-2.md) | 237 | `result-track:d1aed151e8323f2d7124947c776c51ce774c94ee17b7076c4fcd7adc39d3c59d` |
| 35 | `lemma` | [ext_nnrat_on_pnat](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/ext-nnrat-on-pnat.md) | 243 | `result-track:9b48afd92a7865012dfbb9b1c5ee06d926c82dbc71ba471ad30da79c69c0c8d2` |
| 36 | `theorem` | [ext_rat'](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/ext-rat-source-edition-2.md) | 254 | `result-track:84fc099250927ac6a031e646563ab636cbfdfe04d4eac683c29a201d19942ff8` |
| 37 | `theorem` | [ext_rat](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/ext-rat.md) | 264 | `result-track:098207f8bbcd30f19e12cb4dd9efe541be633dbf88d76ca734a0751c6d914f73` |
| 38 | `theorem` | [ext_rat_on_pnat](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/ext-rat-on-pnat.md) | 270 | `result-track:3001a867ed10c6e9724d422cf3f4166a6f816f4bed8d6a3d6d497476adf86825` |
| 39 | `theorem` | [RingHom.ext_rat](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/ringhom-ext-rat.md) | 284 | `result-track:22eb3b504454e0375e529dc74612347bfe1e730a00e23da1472f0923d0b6a3b0` |
| 40 | `instance` | [NNRat.subsingleton_ringHom](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/nnrat-subsingleton-ringhom.md) | 290 | `declaration-track:de12a465621ceece989122f131dc074831c0216ce254ee2106085b35980753ae` |
| 41 | `instance` | [Rat.subsingleton_ringHom](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition1.lean/declarations/rat-subsingleton-ringhom.md) | 293 | `declaration-track:d2bf5704eef701244e74e85715fa7ae33d7a993da350ae90e64cf272404fb4fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9cbeec9ebcb74ba617ac8a0b7a9974e6486c5c864212d2370f072ca3d141db7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variante9eea32ae22da1655b8c7cb4feada37153291a0d972fbeaa8451274a4b40254f.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variante9eea32ae22da1655b8c7cb4feada37153291a0d972fbeaa8451274a4b40254f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

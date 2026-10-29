# Verification target: Localization Basic Namespaced Map Pi Eval Ring Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebc1d510fa301928dba1741732dcf70d9c8802a4",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant42ec2437eb5eb31306a744bb82ec861d9d6bdad5c868c057d8f45a3db73a84d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebc1d510fa301928dba1741732dcf70d9c8802a4`.

Source path: `GRWTSK/Algebra/Basic/Variant42ec2437eb5eb31306a744bb82ec861d9d6bdad5c868c057d8f45a3db73a84d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant42ec2437eb5eb31306a744bb82ec861d9d6bdad5c868c057d8f45a3db73a84d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.IsField` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.MonoidWithZero` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.Ring` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mapPiEvalRingHom](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/mappievalringhom.md) | 90 | `declaration-track:352e853c4dce1fc5697e37dc7205dd2c75a1ad51f753c9be7754986111077a14` |
| 2 | `theorem` | [mapPiEvalRingHom_bijective](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/mappievalringhom-bijective.md) | 95 | `result-track:0a3b76cad2f57a1999f46a1a2b5e60925cd78a8dba3c64ad5e485a7439df2e8d` |
| 3 | `theorem` | [linearMap_compatibleSMul](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/linearmap-compatiblesmul.md) | 127 | `result-track:5a38c09ace8836fbfd85bdd7a3eef66781f4d739e01a6202620c77787f3b30c9` |
| 4 | `theorem` | [algHom_subsingleton](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/alghom-subsingleton.md) | 140 | `result-track:55f7e411c5928cb8dcc3eaadb9454ebc914bc338531e8200a4a2be3fce26db8b` |
| 5 | `def` | [algEquiv](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequiv.md) | 156 | `declaration-track:9bb65e0660123b1017d2dff5fac9e7bfede6d4fd4cb72ac66a7bc07894e366c8` |
| 6 | `theorem` | [algEquiv_mk'](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequiv-mk.md) | 162 | `result-track:0ae63f34b2f719c8bb434ab953b12365bb82df6aff937c286484465eac7cfd24` |
| 7 | `theorem` | [algEquiv_symm_mk'](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequiv-symm-mk.md) | 165 | `result-track:248eb5b7d6f5e09744b8a17d7f8826e2b7931fe1f8951335973df0256726d4ea` |
| 8 | `lemma` | [bijective](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/bijective.md) | 169 | `result-track:1dfeee03cc0df7dbe7cd312360d927c026d7d1079a9797db98fe9b3fe54cc998` |
| 9 | `def` | [liftAlgHom](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/liftalghom.md) | 187 | `declaration-track:f7f15459a32af7f1457ddbf8414a8a0419517935ebe39ad0504c59d036241426` |
| 10 | `theorem` | [liftAlgHom_toRingHom](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/liftalghom-toringhom.md) | 192 | `result-track:fab39502499c21966f467c0675703268dc21ccecda4a79e82487d0b9f2851a90` |
| 11 | `theorem` | [coe_liftAlgHom](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/coe-liftalghom.md) | 195 | `result-track:1bcdadaec515641249c4c246f1de661d75362a3577e848f03b556e289fda1725` |
| 12 | `theorem` | [liftAlgHom_apply](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/liftalghom-apply.md) | 197 | `result-track:158035b24a580c8206707bd81187ea17c2145c920bd5befd2c11f35d3d6b0c02` |
| 13 | `def` | [algEquivOfAlgEquiv](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequivofalgequiv.md) | 216 | `declaration-track:c86783f5a66a87c7fab96d5d0eee6f61bba064a89c538c034270121967513c8c` |
| 14 | `theorem` | [algEquivOfAlgEquiv_eq_map](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequivofalgequiv-eq-map.md) | 223 | `result-track:4b2421428da3756bd45a25573408b5b1d58b8c61295993b1eeed535e8d22ba74` |
| 15 | `theorem` | [algEquivOfAlgEquiv_eq](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequivofalgequiv-eq.md) | 228 | `result-track:40c02974ae1a85f589a3568ed1b7a0b495825ce62858872a08ad9823a1be5cae` |
| 16 | `theorem` | [algEquivOfAlgEquiv_mk'](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequivofalgequiv-mk.md) | 233 | `result-track:78576e5b4eff0e5b8515ab5e772786ef4262b1660fdd517e5af1bd28d5ed0bf4` |
| 17 | `theorem` | [algEquivOfAlgEquiv_symm](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequivofalgequiv-symm.md) | 238 | `result-track:1180cf029754ef0d5d5a7887eba2e96e1f467912b20727ffb0f7ac829714d590` |
| 18 | `lemma` | [smul_mem_iff](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/smul-mem-iff.md) | 254 | `result-track:24e5f807784f4836c841f5c3f9f0cad135a2490fc019ede724fcd976cbcbdb93` |
| 19 | `def` | [atUnits](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/atunits.md) | 267 | `declaration-track:ef88227368ab83f8058afffad4c625c10bed5e2ff3796ca1402adc6f98b374d6` |
| 20 | `theorem` | [isLocalization_of_algEquiv](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/islocalization-of-algequiv.md) | 289 | `result-track:cc8414d416b94267cdf8549c453d0193eaaf1b9efd85f6a25c63cbda15d351c0` |
| 21 | `theorem` | [isLocalization_iff_of_algEquiv](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/islocalization-iff-of-algequiv.md) | 305 | `result-track:bfda0d88e0d97f29ca011e1ad24454f9f04abb72929259052cb211e30693bd3a` |
| 22 | `theorem` | [isLocalization_iff_of_ringEquiv](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/islocalization-iff-of-ringequiv.md) | 309 | `result-track:a758942be0c2f56980439f01e20548a017498a7749569cd112ddf3c14663ce3e` |
| 23 | `theorem` | [isLocalization_iff_of_isLocalization](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/islocalization-iff-of-islocalization.md) | 318 | `result-track:15cbabfccb974c59bf52325c294ea2fdb737fb1b28bc119d217035b9c41a7879` |
| 24 | `theorem` | [iff_of_le_of_exists_dvd](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/iff-of-le-of-exists-dvd.md) | 323 | `result-track:15f0603a3498d77b263a549d04298e86fbd1cb448693ad244f5d16e95fa178cb` |
| 25 | `lemma` | [commutes](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/commutes.md) | 335 | `result-track:4eb4900bf23a30e46fa63bca7e8d30f8e9edd45d31d1ca46d6eb8f6da063f9c6` |
| 26 | `theorem` | [mk_natCast](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/mk-natcast.md) | 380 | `result-track:fafa136cc65c6d1d3366a7d81c0158584a92a4d88d92f965f4235d12ed1543c2` |
| 27 | `def` | [algEquiv](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequiv-source-edition-2.md) | 391 | `declaration-track:d516420c3a980e28106837e97a28fcdb3b772e3d744b02978ebfddf1db58e302` |
| 28 | `def` | [Localization Basic Namespaced Map Pi Eval Ring Hom](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/unique.md) | 395 | `declaration-track:aea12d53690acd7d25cdeb01259f1110cfb26fac0a0cfdd3fee6df7744aed7c1` |
| 29 | `theorem` | [algEquiv_mk'](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequiv-mk-source-edition-3.md) | 402 | `result-track:af927700587d495164681d893c22c9f495354cbd67f345c3662473bed1cf78cc` |
| 30 | `theorem` | [algEquiv_symm_mk'](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequiv-symm-mk-source-edition-3.md) | 405 | `result-track:a3fe8a7b18a09744ecaa06d7bc06b731b6dc4a73fc8580add1d802cb7d8f433c` |
| 31 | `theorem` | [algEquiv_mk](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequiv-mk-source-edition-2.md) | 409 | `result-track:79842fe71c9b7e5d2765e84b3580ac38b5e4c56fc1a9f7457db94d8f0f82f692` |
| 32 | `theorem` | [algEquiv_symm_mk](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/algequiv-symm-mk-source-edition-2.md) | 411 | `result-track:2ec59729d53a8f432b2963e9fd6cdd9471e98d969104e789ef8242de6ef2e721` |
| 33 | `lemma` | [coe_algEquiv](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/coe-algequiv.md) | 414 | `result-track:54117f7a02b1286022b6497879199a213b260e773932e9c6d6e6a53a706e9733` |
| 34 | `lemma` | [coe_algEquiv_symm](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/coe-algequiv-symm.md) | 418 | `result-track:c34a319419f9322e1d6fa8f6903c78ca129df701e9f5911b33e19edeedb47e87` |
| 35 | `theorem` | [mk_intCast](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/mk-intcast.md) | 433 | `result-track:38e8290447d47d4b00e984a0aae4a5e543f73d679d5c5cb683d7c2f749188a34` |
| 36 | `theorem` | [IsField.localization_map_bijective](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/isfield-localization-map-bijective.md) | 441 | `result-track:10b7f9059851598acd7113783f655d0a43e580da8cc1b83248e65a86e7278561` |
| 37 | `theorem` | [Field.localization_map_bijective](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/field-localization-map-bijective.md) | 452 | `result-track:1063e7566de5614b3f4652821cb306fa554624263c2313a77a7de55489dde9e9` |
| 38 | `def` | [localizationAlgebra](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/localizationalgebra.md) | 479 | `declaration-track:74134347f895b246b80c804402d83a59a4bbf9df236a88a1b29ee1b8d7a4305e` |
| 39 | `theorem` | [IsLocalization.map_units_map_submonoid](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/islocalization-map-units-map-submonoid.md) | 491 | `result-track:8e689a3dd4a1f5c2b356637444f0cfd70764d08eb7128923deb28334976dc849` |
| 40 | `theorem` | [IsLocalization.algebraMap_mk'](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/islocalization-algebramap-mk.md) | 496 | `result-track:8d29443595025024a8c6a6ecce86c8748f9e41dbea712285a132cb743ff2c55e` |
| 41 | `theorem` | [IsLocalization.algebraMap_eq_map_map_submonoid](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/islocalization-algebramap-eq-map-map-submonoid.md) | 515 | `result-track:c3457340e5cc90556d7c97c20096142764f71b02149df4cf28e35bf3338d3c75` |
| 42 | `theorem` | [IsLocalization.algebraMap_apply_eq_map_map_submonoid](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/islocalization-algebramap-apply-eq-map-map-submonoid.md) | 530 | `result-track:7cc8d30fd4357e8ace1d5dbbe5f17e86bc90da8897a71e60fd7d8104ee8e071b` |
| 43 | `theorem` | [IsLocalization.lift_algebraMap_eq_algebraMap](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/islocalization-lift-algebramap-eq-algebramap.md) | 536 | `result-track:536ae8528ae26444d9bdeee38cc37e5440f7d2aa488baf3e58d8c6c2c167d14c` |
| 44 | `theorem` | [localizationAlgebraMap_def](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/localizationalgebramap-def.md) | 545 | `result-track:067b423cb0810045052338b3bf134b5319864ba18fb2ac1070891af9bb5277e7` |
| 45 | `theorem` | [localizationAlgebra_injective](../../../../CommutativeAlgebra/LocalizationBasicNamespacedMapPiEvalRingHom.lean/declarations/localizationalgebra-injective.md) | 552 | `result-track:50fb388ceb4b12fcd1ecb924116c94eef49c9ef81f2addbad81b2e2acb5959c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=813bcb1e646f14ac1d0079d2940b98f10ba8e7bf7e33d79cff1152ace2da949a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant42ec2437eb5eb31306a744bb82ec861d9d6bdad5c868c057d8f45a3db73a84d7.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant42ec2437eb5eb31306a744bb82ec861d9d6bdad5c868c057d8f45a3db73a84d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

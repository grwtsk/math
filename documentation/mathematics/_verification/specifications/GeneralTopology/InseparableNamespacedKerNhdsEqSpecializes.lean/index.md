# Verification target: Inseparable Namespaced Ker Nhds Eq Specializes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc887ad763fd154a1fd2d6ab57a0bf33e102ec3d",
  "lexical_observation_count": 160,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variant15527a47336055bcf8e700b0dbfa77c289e01e2f712d415c59473760b52e0906.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/index.md) · [Full source](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc887ad763fd154a1fd2d6ab57a0bf33e102ec3d`.

Source path: `GRWTSK/Topology/GeneralTopology/Inseparable/Variant15527a47336055bcf8e700b0dbfa77c289e01e2f712d415c59473760b52e0906.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Inseparable/Variant15527a47336055bcf8e700b0dbfa77c289e01e2f712d415c59473760b52e0906.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.Closure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Fibration` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.OpenQuotient` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [specializes_TFAE](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-tfae.md) | 59 | `result-track:cd21c97cfdf82493501690fa92fee2db56d5b17ee45e9dbd7c07e7a24ee8e4f9` |
| 2 | `theorem` | [specializes_iff_nhds](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-iff-nhds.md) | 81 | `result-track:29034a2b1f917660bd563e27c412d07c913d4ab465b10e9ce0f4dbf07c23ea41` |
| 3 | `theorem` | [Specializes.not_disjoint](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-not-disjoint.md) | 84 | `result-track:dfe9e55e131d9b50735ac73748ddf05055ffd5b32620225ef0f43bcf3543855c` |
| 4 | `theorem` | [specializes_iff_pure](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-iff-pure.md) | 87 | `result-track:19449de2f8b1f55e288ff60d90ae31a9b90bcbeda03f7562f91eaa5fe0a24b85` |
| 5 | `theorem` | [ker_nhds_eq_specializes](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/ker-nhds-eq-specializes.md) | 94 | `result-track:67131c173a8208315c1aa25a7a643f328dda6957562dc726adf1bbd4edacbcf5` |
| 6 | `theorem` | [specializes_iff_forall_open](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-iff-forall-open.md) | 97 | `result-track:bc8e5f9fe04486dee9b6ee53912f413962897bf612434d881c816bb1d2ba2fc3` |
| 7 | `theorem` | [Specializes.mem_open](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-mem-open.md) | 100 | `result-track:f82022d239db87e4281a235873938c74b3a7cb83ee8b6fb0dd95ad95fc35a4fc` |
| 8 | `theorem` | [IsOpen.not_specializes](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isopen-not-specializes.md) | 103 | `result-track:f76755cfcf47f2806fe8fecd71c7e3127ef085d7f15febe593d0171e5b80751c` |
| 9 | `theorem` | [specializes_iff_forall_closed](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-iff-forall-closed.md) | 106 | `result-track:677a5fa6b95b1905230b3b0779b14764d1c14896a69b4e715784fe38b88ab1f3` |
| 10 | `theorem` | [Specializes.mem_closed](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-mem-closed.md) | 109 | `result-track:1efc54bd05cbe16d9a2c566b028fa3ce9d7a302b5db3e30fbd3297a1e7907382` |
| 11 | `theorem` | [IsClosed.not_specializes](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isclosed-not-specializes.md) | 112 | `result-track:c9796d7ad4f4de038af9f5199f760b04f8826c7e79825110cd02cafc6f11d110` |
| 12 | `theorem` | [specializes_iff_mem_closure](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-iff-mem-closure.md) | 115 | `result-track:a6a5da851f80c311b452727a4a5536acdbae78d3d5210fe96d30d7f82e184140` |
| 13 | `theorem` | [specializes_iff_closure_subset](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-iff-closure-subset.md) | 120 | `result-track:603d63bbf8ece78e443d9ca326940de18f57a8d630b0dca78d4787f1e07b6925` |
| 14 | `theorem` | [specializes_iff_clusterPt](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-iff-clusterpt.md) | 125 | `result-track:ea38a3cdb033c741a5dd0f775244139a19ea4b7638ce5cfff3851d6f86f12681` |
| 15 | `theorem` | [Filter.HasBasis.specializes_iff](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/filter-hasbasis-specializes-iff.md) | 128 | `result-track:79a71e9274f0e58a6117eaec143075f40f91fd479c299e09275398f085415951` |
| 16 | `theorem` | [specializes_rfl](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-rfl.md) | 132 | `result-track:413f8d14d23b0b3a36e8b4556e4c220e2055928910d00704d6c7d71e8325900a` |
| 17 | `theorem` | [specializes_refl](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-refl.md) | 135 | `result-track:3e5f8ecc5630019c8920c4c4091bb3c89fdd12cf5139d5765d4a010c3a5d4396` |
| 18 | `theorem` | [Specializes.trans](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-trans.md) | 139 | `result-track:c5ba136d595c3023d440a63b7cd968819cbf00ee0105478e0b159da0d44894e5` |
| 19 | `theorem` | [specializes_of_eq](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-of-eq.md) | 142 | `result-track:cda0c91ceb25e8a607029f5359236970cb0d7f7eb37b8f39fc3b2bf1d95e8cb1` |
| 20 | `theorem` | [specializes_of_nhdsWithin](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-of-nhdswithin.md) | 147 | `result-track:59b904af1221298687e71f03f662cc819b1cfc2bc1455332e20b33f084c96c85` |
| 21 | `theorem` | [Specializes.map_of_continuousWithinAt](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-map-of-continuouswithinat.md) | 154 | `result-track:b6e831b2c28db8421b500b1779c40782e30d688e8a47a47568bdfbf3cd6d75e9` |
| 22 | `theorem` | [Specializes.map_of_continuousOn](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-map-of-continuouson.md) | 163 | `result-track:d611b4f0e4ca4c9a72960c7efedd5debf65df79aee8acae53655559645c7542f` |
| 23 | `theorem` | [Specializes.map_of_continuousAt](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-map-of-continuousat.md) | 167 | `result-track:920c10645eec29b32ea5bd0d1e38bf104f79520d46561ee211471e23a17abc59` |
| 24 | `theorem` | [Specializes.map](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-map.md) | 170 | `result-track:1e217cd63d0d36a89ebb1da9a6a0428c213a85c606850725412b518d27fea538` |
| 25 | `theorem` | [Topology.IsInducing.specializes_iff](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/topology-isinducing-specializes-iff.md) | 173 | `result-track:0071bedfd981fa566c64e570ece8e005f6c2a00edbe3d35bf80bf97b4c1b3511` |
| 26 | `theorem` | [subtype_specializes_iff](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/subtype-specializes-iff.md) | 179 | `result-track:15c3338106ca49ea5142a750475b1a8e62f08337f10532c5bf0a8bf648371da4` |
| 27 | `theorem` | [specializes_prod](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-prod.md) | 183 | `result-track:037504b7cf3ae485d30b319e3b690053d27b713d29fd5d69e85fa960d36f0080` |
| 28 | `theorem` | [Specializes.prod](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-prod-source-edition-2.md) | 186 | `result-track:aadf4e5d2898411ec6d2f0d29febd43fa6878bc9d16a3c2b60f7898a7d4fd5ea` |
| 29 | `theorem` | [Specializes.fst](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-fst.md) | 190 | `result-track:47c0a2f881e4b8c113892b17d176778ae7307252866ad4b1ae1e85888aa4045b` |
| 30 | `theorem` | [Specializes.snd](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-snd.md) | 191 | `result-track:963144238eddece68e61d5170064a7aac0c528ecdc2eab89db350a42f46b9568` |
| 31 | `theorem` | [specializes_pi](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-pi.md) | 194 | `result-track:b4eccdfc0451004fe223d348348436bb3a8ca183f765a02cfa5431aff3a0c4ef` |
| 32 | `theorem` | [not_specializes_iff_exists_open](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/not-specializes-iff-exists-open.md) | 197 | `result-track:caeb5165f562bdcf68762c20113ccdd57c7d47b00206481e4afbe563bddcbb09` |
| 33 | `theorem` | [not_specializes_iff_exists_closed](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/not-specializes-iff-exists-closed.md) | 202 | `result-track:a5ad767959e2e7a292a8c91a726ad078f5f50a1332734a87f955d7da92408a1d` |
| 34 | `theorem` | [IsOpen.continuous_piecewise_of_specializes](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isopen-continuous-piecewise-of-specializes.md) | 207 | `result-track:1be05f018d1a52686123db6dc59fd094a23a90c421f0004ac929a15648f2b238` |
| 35 | `theorem` | [IsClosed.continuous_piecewise_of_specializes](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isclosed-continuous-piecewise-of-specializes.md) | 216 | `result-track:7c63c8d34aee76056a453596a0f6c4773ff66f3bd6515ff5896b2728770209b1` |
| 36 | `theorem` | [Continuous.specialization_monotone](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuous-specialization-monotone.md) | 225 | `result-track:31a488e23725cf4a50882237ab98748051a3d76a8ad8c00c22ef4d0ea993f98b` |
| 37 | `lemma` | [closure_singleton_eq_Iic](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/closure-singleton-eq-iic.md) | 228 | `result-track:002b2ff6a7d151fb1bfb9a55b67fc739cb3c2d7203bd9d9819f50df7f89c50f2` |
| 38 | `def` | [StableUnderSpecialization](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization.md) | 233 | `declaration-track:8c2ae81d2c71ded690a7f2ffabc0fd5981c34ff7f1613853563a65137fce0c3b` |
| 39 | `def` | [StableUnderGeneralization](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableundergeneralization.md) | 238 | `declaration-track:206606251c0c2123a5eb6f3902cd3a86e73593bb84ca69361eb89b997cd2cb14` |
| 40 | `example` | [(anonymous)](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/example-source-edition-2.md) | 241 | `declaration-track:d712798811468d043b72497569b418ae828d1d7ecdc854c07e3c3525bac9bd27` |
| 41 | `example` | [(anonymous)](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/example.md) | 242 | `declaration-track:8cc6d4be16f85cd156277cb70456455ccac889765bf078d39df509acffe20384` |
| 42 | `lemma` | [IsClosed.stableUnderSpecialization](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isclosed-stableunderspecialization.md) | 244 | `result-track:61e83b2c138d317d3dede2e49245450a11ed9b888218d0dfdee1338ce6bd9e8c` |
| 43 | `lemma` | [IsOpen.stableUnderGeneralization](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isopen-stableundergeneralization.md) | 248 | `result-track:4508e0ea5474b2172af5e0dfcced4d319d88463a4a6ad58678eff6ec82b532a1` |
| 44 | `lemma` | [stableUnderSpecialization_compl_iff](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization-compl-iff.md) | 253 | `result-track:b2f7c6c37d45058230848aaeb075321eaac3f8d96e5751d944c4da8d448fb0d1` |
| 45 | `lemma` | [stableUnderGeneralization_compl_iff](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableundergeneralization-compl-iff.md) | 258 | `result-track:94f6bcc6f075e00ab9495e8142044f94ecf2df26a051211dcf2db720b234fd24` |
| 46 | `lemma` | [stableUnderSpecialization_univ](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization-univ.md) | 265 | `result-track:6191c5d05f5548778032502eb53c2a328221f4cc5061aac38ca0d01af5a220f4` |
| 47 | `lemma` | [stableUnderSpecialization_empty](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization-empty.md) | 266 | `result-track:398f971e74e0ec3e58b7eb0e6a8b66c6a6123b7d6cf803872ebb8420f295a242` |
| 48 | `lemma` | [stableUnderGeneralization_univ](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableundergeneralization-univ.md) | 267 | `result-track:5542014ed269eb159ba33207b7dcc9dce88f40da06001c2cbc052cb636c1bb79` |
| 49 | `lemma` | [stableUnderGeneralization_empty](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableundergeneralization-empty.md) | 268 | `result-track:310763f01e09393fcdf750422ee5d1f3be032d2d09b821befb30cfc2c6b39ee0` |
| 50 | `lemma` | [stableUnderSpecialization_sUnion](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization-sunion.md) | 270 | `result-track:1f2976f67f15a6ea330705a7bb5308c18a64f12e2c626567a299459dd2ce81d9` |
| 51 | `lemma` | [stableUnderSpecialization_sInter](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization-sinter.md) | 274 | `result-track:4d2d082b0ec9ba5e49a759d4b693fdde6f7ff6c7e8e4aa468940b7a9f9c65d01` |
| 52 | `lemma` | [stableUnderGeneralization_sUnion](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableundergeneralization-sunion.md) | 278 | `result-track:33745bf57b99e72de1ba8745d0de51bc7ca3ec9114471612b1f13882aae20985` |
| 53 | `lemma` | [stableUnderGeneralization_sInter](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableundergeneralization-sinter.md) | 282 | `result-track:8af1f2d760695681ee09e7747a20e6fcb8a45643b47a3d535d4b72183c4d70f9` |
| 54 | `lemma` | [stableUnderSpecialization_iUnion](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization-iunion.md) | 286 | `result-track:0a7b256fd45950638251b0dd9086b9b7f42f302637705094bebb2ca9447b252f` |
| 55 | `lemma` | [stableUnderSpecialization_iInter](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization-iinter.md) | 290 | `result-track:594c8e216c5dacbb3603d32d0503cd74f602ad6af32bae4b3bf15baca3ba999c` |
| 56 | `lemma` | [stableUnderGeneralization_iUnion](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableundergeneralization-iunion.md) | 294 | `result-track:44a4943d87bc5c423e41792599f8b9dd939ace8c9bd806ae1ee9fbcae86f3eb2` |
| 57 | `lemma` | [stableUnderGeneralization_iInter](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableundergeneralization-iinter.md) | 298 | `result-track:acca4637392d0072fc58afd2c6ee11a2eae270bcd65667d1b7bb86cff63bead1` |
| 58 | `lemma` | [Union_closure_singleton_eq_iff](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/union-closure-singleton-eq-iff.md) | 302 | `result-track:16ef4ea3011c83e7237584b7e1bd3ce85a49a3e094b176b10d8ba8d7896a86d5` |
| 59 | `lemma` | [stableUnderSpecialization_iff_Union_eq](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization-iff-union-eq.md) | 306 | `result-track:79545c32d0898d56d6f71b9e10b64fbef23ec5492a0acde920cc65551dc5f2ae` |
| 60 | `lemma` | [stableUnderSpecialization_iff_exists_sUnion_eq](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization-iff-exists-sunion-eq.md) | 313 | `result-track:f3a05d7cae8321953ba76c6ad8e65edcbdf9aeafe94fbdf9a4cddee695d933ce` |
| 61 | `lemma` | [stableUnderGeneralization_iff_exists_sInter_eq](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableundergeneralization-iff-exists-sinter-eq.md) | 322 | `result-track:da957d0624cd19e7912b8f5035292991a9de5fce97c0ade76a136d1862ef58b7` |
| 62 | `lemma` | [StableUnderSpecialization.preimage](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableunderspecialization-preimage.md) | 330 | `result-track:491b6c7b01f17aadde61c794cf82efbb963ee2315e14d2d8ccd592b084d7203d` |
| 63 | `lemma` | [StableUnderGeneralization.preimage](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/stableundergeneralization-preimage.md) | 335 | `result-track:68b6c53c14ffa98a5034387e32a27f52252af0e043a64149ddc2d49bac357a7e` |
| 64 | `def` | [SpecializingMap](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializingmap.md) | 342 | `declaration-track:a3e46cb0aa306566c0f74f454a01528691bd5699a6ac25ecb9750453b33b314c` |
| 65 | `def` | [GeneralizingMap](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/generalizingmap.md) | 347 | `declaration-track:c323d3d720a9940bff07458a99f2aa55570d511d7dc1357c12d8408e593a6a7d` |
| 66 | `lemma` | [specializingMap_iff_closure_singleton_subset](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializingmap-iff-closure-singleton-subset.md) | 350 | `result-track:a76ed6d2abf7ad5419c7c2686f44e83118d1ebc23ab18914d3c07230cbbac7d0` |
| 67 | `lemma` | [SpecializingMap.stableUnderSpecialization_image](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializingmap-stableunderspecialization-image.md) | 356 | `result-track:939e30e44690039307eefd47d04f001e34bb03e8cf90e92d17ffa237840a65b2` |
| 68 | `lemma` | [specializingMap_iff_stableUnderSpecialization_image_singleton](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializingmap-iff-stableunderspecialization-image-singleton.md) | 362 | `result-track:f42f5508dd0514e4d10384311358372daacd5715741db98dbdae532b88484934` |
| 69 | `lemma` | [specializingMap_iff_stableUnderSpecialization_image](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializingmap-iff-stableunderspecialization-image.md) | 366 | `result-track:a3f02fcd1d975269294677fc514ed9fd942518ebb2f83580c57622c678bfe679` |
| 70 | `lemma` | [specializingMap_iff_closure_singleton](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializingmap-iff-closure-singleton.md) | 370 | `result-track:bb8fede50ee5d14747d5d1deb1cd8a21244c46919dc3d32d2d380d931409cb42` |
| 71 | `lemma` | [specializingMap_iff_isClosed_image_closure_singleton](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializingmap-iff-isclosed-image-closure-singleton.md) | 375 | `result-track:a4580e262a6c06cc018a981dd8a1814c0b7acdb75b82d677a0c9cc68e085ba39` |
| 72 | `lemma` | [SpecializingMap.comp](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializingmap-comp.md) | 382 | `result-track:6f969accdc3c9d9c015399b2f039d09a630672994e5afc3a5d94e99dc289dc93` |
| 73 | `lemma` | [IsClosedMap.specializingMap](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isclosedmap-specializingmap.md) | 388 | `result-track:8380c195a6d1de239123fee2a4568794c9d93fbcdcd36724ad176025c2e3c2fe` |
| 74 | `lemma` | [Topology.IsInducing.specializingMap](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/topology-isinducing-specializingmap.md) | 392 | `result-track:bcd8e77a82dd827fca687f6cd54d02240d28c4d696437ae8761d1e4817dfbdad` |
| 75 | `lemma` | [Topology.IsInducing.generalizingMap](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/topology-isinducing-generalizingmap.md) | 400 | `result-track:dd4b6f87fadced56d7611fc6f584cd3c4202125f6d4dddbdc997db0a378b414c` |
| 76 | `lemma` | [IsOpenEmbedding.generalizingMap](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isopenembedding-generalizingmap.md) | 408 | `result-track:351ed442af8b89498cda8f96f7a48cbbd994dd87c26d6a339590977423776e06` |
| 77 | `lemma` | [SpecializingMap.stableUnderSpecialization_range](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializingmap-stableunderspecialization-range.md) | 411 | `result-track:e1d2c51402a80abfb7f7e7c2db368acf8cad177263327a2eb52ef332875a048e` |
| 78 | `lemma` | [GeneralizingMap.stableUnderGeneralization_image](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/generalizingmap-stableundergeneralization-image.md) | 415 | `result-track:5a6faeb825a81a7d2db4c7640280a354b4e314ca8b0d982eaecc6df562742a5f` |
| 79 | `lemma` | [GeneralizingMap_iff_stableUnderGeneralization_image](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/generalizingmap-iff-stableundergeneralization-image.md) | 419 | `result-track:e1168075329434c163d8430c43fce59a77eb30e1c7a85d9c48d3152a43646a72` |
| 80 | `lemma` | [GeneralizingMap.stableUnderGeneralization_range](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/generalizingmap-stableundergeneralization-range.md) | 425 | `result-track:790352b40674a61ae75b6e93b2c2d777f7204034763521feb28a8dbb9b2e0393` |
| 81 | `lemma` | [GeneralizingMap.comp](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/generalizingmap-comp.md) | 429 | `result-track:28c11c7e3558eeb462c16a9eca4f296f66253b380d2424ea48ce65a17ea14b30` |
| 82 | `theorem` | [inseparable_def](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-def.md) | 441 | `result-track:8c2d2081921eacc556fa2b3893c5bf07b0852031c6f4157e4534cfa58d4daff0` |
| 83 | `theorem` | [inseparable_iff_specializes_and](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-iff-specializes-and.md) | 444 | `result-track:bdee8b2eda0675a22227b1000f4a1fea34bd2fd83001b3d8cc5fff440e4e71c8` |
| 84 | `theorem` | [Inseparable.specializes](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-specializes.md) | 447 | `result-track:602e094a59c363534c664b611f5dd1693b511ac934028dbf02fd42fe3edd9d8b` |
| 85 | `theorem` | [Inseparable.specializes'](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-specializes-source-edition-2.md) | 449 | `result-track:68217778b463c9d0b3c148505d9cf3484a3524c164ec55def6fd08693e2d738b` |
| 86 | `theorem` | [Specializes.antisymm](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/specializes-antisymm.md) | 451 | `result-track:4b08aca09d0c944e66e9ca29912d0d202651f98156a4163c1cf1022d541fc5d2` |
| 87 | `theorem` | [inseparable_iff_forall_isOpen](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-iff-forall-isopen.md) | 454 | `result-track:5e2cdb8687a11357350020ea4f0e918161921199dc8e01af5c7c4b3062853d6a` |
| 88 | `theorem` | [not_inseparable_iff_exists_open](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/not-inseparable-iff-exists-open.md) | 461 | `result-track:b44d6e74bea01a7d3d68d942919a66fdde1f0a708c9d8653014059a1060cc11a` |
| 89 | `theorem` | [inseparable_iff_forall_isClosed](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-iff-forall-isclosed.md) | 465 | `result-track:c673a8d3b6ec8d9b65e7be391af77382a1256dc1fbebfca1ec9cd480d2bc63a2` |
| 90 | `theorem` | [inseparable_iff_mem_closure](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-iff-mem-closure.md) | 471 | `result-track:628b14f4a16ad9b5641e55c7dfa9c7cdd4181278cc4bbb8ca1c671b96296fe3c` |
| 91 | `theorem` | [inseparable_iff_closure_eq](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-iff-closure-eq.md) | 475 | `result-track:35cb86c6996f7f492796d64a12746525b6baa512693af9b5273c602169f9543e` |
| 92 | `theorem` | [inseparable_of_nhdsWithin_eq](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-of-nhdswithin-eq.md) | 479 | `result-track:57affe22ea9c2513834f138dbab7b7bb30ac13d229ac925281cdc853cb389238` |
| 93 | `theorem` | [Topology.IsInducing.inseparable_iff](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/topology-isinducing-inseparable-iff.md) | 482 | `result-track:2cf95b44a0fdc83de7a3a6ec861ef5a2fcbc8c21b031ac755024eb1cd45ca079` |
| 94 | `theorem` | [subtype_inseparable_iff](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/subtype-inseparable-iff.md) | 487 | `result-track:7e24a7febae2a46b8ebcde4b0237c01a0b843a616ca86214612e3cc0d129b009` |
| 95 | `theorem` | [inseparable_prod](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-prod.md) | 490 | `result-track:21f0b6c8e1b1b8b13f83174139e73c0c533be16a3627b78c7f8ee64c90020551` |
| 96 | `theorem` | [Inseparable.prod](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-prod-source-edition-2.md) | 494 | `result-track:fb81fc54b460a122e2bc2a2a016c07b33793c50e9670cfa44073d0aae7438c1d` |
| 97 | `theorem` | [inseparable_pi](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/inseparable-pi.md) | 499 | `result-track:87bafe1cd4cd7ac4130a3a5bf9d425412b4357a463c6ae15ac44b2b8ef41c3a4` |
| 98 | `theorem` | [refl](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/refl.md) | 505 | `result-track:13f0bf9e9496eb1e6a5649db9b22d382caf8f08407a1202571e3423ad76286ec` |
| 99 | `theorem` | [rfl](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/rfl.md) | 508 | `result-track:1b3dd3dc327d094d3fc5b7765486a84097d15d90793d1e1499ae19228f935274` |
| 100 | `theorem` | [of_eq](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/of-eq.md) | 511 | `result-track:6924b167a92082a557a6733832fb11a2efdec8d56485308046503d66889136ba` |
| 101 | `theorem` | [symm](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/symm.md) | 515 | `result-track:c1fa0b2a6be89cbe05beaa898d80f553b01056794ab935641d7c4e8776642a03` |
| 102 | `theorem` | [trans](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/trans.md) | 518 | `result-track:cfe5b33fcb1a780ca61fc1f61647eb201727c7b0cce571c74338e24451540970` |
| 103 | `theorem` | [nhds_eq](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/nhds-eq.md) | 520 | `result-track:bfe459ec4e93a0333aa5dbd49fb5989b696ce187ae32a06630edcf3574786bdc` |
| 104 | `theorem` | [mem_open_iff](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/mem-open-iff.md) | 522 | `result-track:57cfeca18d0c55456f6267b44ff973b5798ef1f7dd465d456819f730ff8fe85a` |
| 105 | `theorem` | [mem_closed_iff](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/mem-closed-iff.md) | 525 | `result-track:dba33ca4d8c932bc80ce2bcecb391898b52df66ab937e8d0fe8f22f5d8466ac2` |
| 106 | `theorem` | [map_of_continuousWithinAt](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/map-of-continuouswithinat.md) | 528 | `result-track:883d89c28f496577073dba9b3adc0f0fa13c5c7d6eb15076bae15b20fb749950` |
| 107 | `theorem` | [map_of_continuousOn](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/map-of-continuouson.md) | 534 | `result-track:74b5fed2ca8064d10c399a03079881e37f0edbe3a68b8f1d969e5e2dbb96242f` |
| 108 | `theorem` | [map_of_continuousAt](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/map-of-continuousat.md) | 538 | `result-track:43e36fd33de7fe33a7ee96d84d5db5622133c00940690944dada80d1cf311551` |
| 109 | `theorem` | [map](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/map.md) | 542 | `result-track:ccdd54f597fb95414fa9ed1fa005431affca65ea843dbee372964fb4ed6ec6f6` |
| 110 | `theorem` | [IsClosed.not_inseparable](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isclosed-not-inseparable.md) | 547 | `result-track:ad83a39872439dff7f8eb0fbb94a034de1425213c136f096d7f3a3f286bd002a` |
| 111 | `theorem` | [IsOpen.not_inseparable](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isopen-not-inseparable.md) | 550 | `result-track:471f51cf79995077966f9eaa4b3ae1425d8968c7ecf5dc199882e5d268141f8d` |
| 112 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/instance-source-edition-2.md) | 560 | `declaration-track:10cc2ec6bad8e7f821dad4877fdf578118b8c8b263808537e1acb8f324688466` |
| 113 | `def` | [mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/mk.md) | 567 | `declaration-track:526d9838aed3e4cb534332df408fc40c3b613fb66d18cf3b7d3456cf2cad239c` |
| 114 | `theorem` | [isQuotientMap_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isquotientmap-mk.md) | 569 | `result-track:b38fe36cb60f3b89ee51ac745f46cee8ca27efb147b338e94420b2f500391658` |
| 115 | `theorem` | [continuous_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuous-mk.md) | 576 | `result-track:e8c4c4401fff6fd508e6f69826d21a612144b5bea13c3e7fbbaf9f7f02fdb67a` |
| 116 | `theorem` | [mk_eq_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/mk-eq-mk.md) | 580 | `result-track:57287f5ca5e6f861905a4ab0357825a09dce5ea34d54076f4021d11e2716a1d0` |
| 117 | `theorem` | [surjective_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/surjective-mk.md) | 583 | `result-track:bcf30f51bfb8fbeed6dc4362ef4762bde6711a5b98ffbc2c1f0d55bd3bcb054c` |
| 118 | `theorem` | [range_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/range-mk.md) | 587 | `result-track:e9daf6e0c7ef1453c8063dfcff4e974e951148323663b533b9ea0250ce6f0162` |
| 119 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/instance-source-edition-5.md) | 590 | `declaration-track:a4a64a67ca3fa39bab608d2a7614148991d83fa16dfc4b2946c0336fdd8018aa` |
| 120 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/instance.md) | 593 | `declaration-track:0a2bf5519e76e23e9d45538dde5e3831ec18f45de2a1a09a538d55d9b0c73cb8` |
| 121 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/instance-source-edition-4.md) | 596 | `declaration-track:2ed6bc362173647f4cbc6c359755415c199fc69a3e6e26d81bfb8285e1fd41b3` |
| 122 | `instance` | [(anonymous)](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/instance-source-edition-3.md) | 599 | `declaration-track:195d2d9c0b2a63c394ffac00d930e347b7aa07e3d0fae66b61371c66b0280167` |
| 123 | `theorem` | [mk_one](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/mk-one.md) | 601 | `result-track:794ca04c02f51ed71caad9f4fa1e3d3872c4ec1fea9e3bb0d27d3d9ea7e34dea` |
| 124 | `theorem` | [preimage_image_mk_open](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/preimage-image-mk-open.md) | 603 | `result-track:5cce9b82175590faf9fb32d1176f8e2e98cb10aaebc34edfe07ac8cd57ae82ff` |
| 125 | `theorem` | [isOpenMap_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isopenmap-mk.md) | 608 | `result-track:120027beb1c872783f33daaa5adfbf034e23d0fd5f0b53d037dbe031d284f91f` |
| 126 | `theorem` | [isOpenQuotientMap_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isopenquotientmap-mk.md) | 611 | `result-track:b88049e2a5e13921aaf34288a5bf7e112a26fedbd499c3c2e4ee59399c5ddf12` |
| 127 | `theorem` | [preimage_image_mk_closed](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/preimage-image-mk-closed.md) | 614 | `result-track:05a0d759c7a2a868996a48fdecfd1aae569b95a28686f4f3b76deb985dfa3b67` |
| 128 | `theorem` | [isInducing_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isinducing-mk.md) | 619 | `result-track:09473732300f1a62ee26adfec5db39c93e73eb0934c3d1e75668d98a6e704c53` |
| 129 | `theorem` | [isClosedMap_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isclosedmap-mk.md) | 625 | `result-track:4b32521d205f9fda51c88e6ab538da553c5e0dff66d398cceb0b328d9be33c53` |
| 130 | `theorem` | [comap_mk_nhds_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/comap-mk-nhds-mk.md) | 629 | `result-track:ab9ae064d3a4bd5ee9039dd05830e37ede26b43dffe8ae6a574a3151570dcb8b` |
| 131 | `theorem` | [comap_mk_nhdsSet_image](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/comap-mk-nhdsset-image.md) | 633 | `result-track:0db5deb096a71ba8d63e65a9353e9855ac53b13fa6533d7bcf0355cd44ad1c28` |
| 132 | `theorem` | [map_mk_nhds](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/map-mk-nhds.md) | 638 | `result-track:d112dfedcb5d212c6c1ea34c8ca6c93394f5abf51499113d630af2fa9d95ae72` |
| 133 | `theorem` | [nhds_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/nhds-mk.md) | 642 | `result-track:8baaad971a12706616d75eefc483c0e0dbf3036c170d52880fe6021afed89e7a` |
| 134 | `theorem` | [map_mk_nhdsSet](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/map-mk-nhdsset.md) | 644 | `result-track:de475e30cd898254e40ad81a5e18910e05ea3640bd04d18c46951a83e90f85df` |
| 135 | `theorem` | [comap_mk_nhdsSet](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/comap-mk-nhdsset.md) | 647 | `result-track:bc96179c46668595d32fda9eb1311e896c82a9779c18562d30a70ceff1124fbc` |
| 136 | `theorem` | [preimage_mk_closure](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/preimage-mk-closure.md) | 650 | `result-track:1da5d1bde57067c1afac72e260cd3b43a2cfaccf42eaf4af118d90cd29986700` |
| 137 | `theorem` | [preimage_mk_interior](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/preimage-mk-interior.md) | 653 | `result-track:b31c01fbd52af40507dde8abf00be1eb432cff7c94facc6e0d100dda2422f78e` |
| 138 | `theorem` | [preimage_mk_frontier](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/preimage-mk-frontier.md) | 656 | `result-track:7c3959abb5b036b8cf23302c7999bc26bde30f0a3a336160a4293378e3bb498c` |
| 139 | `theorem` | [image_mk_closure](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/image-mk-closure.md) | 659 | `result-track:fe7809fb6f32233166c36ffa9d0d290f7be6978d69ef1c9f26e888fe979d9cae` |
| 140 | `theorem` | [map_prod_map_mk_nhds](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/map-prod-map-mk-nhds.md) | 663 | `result-track:15799b182f72968f29588a2bba2890d00f13bac8f7ff54fb4eb65ea4c0d9e5aa` |
| 141 | `theorem` | [map_mk_nhdsWithin_preimage](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/map-mk-nhdswithin-preimage.md) | 667 | `result-track:f6a6d59bb6911e40f39b8e39bf6482e63177e776b10f7f0bfbeece67c1592802` |
| 142 | `theorem` | [isQuotientMap_prodMap_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/isquotientmap-prodmap-mk.md) | 672 | `result-track:8817dc741a11acc5c4d9d0f982a1cc7d9724b2902d3f536e4a0097ba440d0bad` |
| 143 | `def` | [lift](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/lift-source-edition-2.md) | 680 | `declaration-track:474e23f113ade54462dcd15691a64b01eac67bd8cc5d6b1a85aad071b1635931` |
| 144 | `theorem` | [lift_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/lift-mk.md) | 684 | `result-track:76b6f23ed769f9c78e8449d428120e6dc047143ae0138fabcbbccbb4ace84f87` |
| 145 | `theorem` | [lift_comp_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/lift-comp-mk.md) | 688 | `result-track:4ebc08e72eefcb382c2e15bedd30535bce4c1f99d2f512102eab2b0e2ebe942f` |
| 146 | `theorem` | [tendsto_lift_nhds_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/tendsto-lift-nhds-mk.md) | 692 | `result-track:f8f1edc54a97a0209c15e39dbc1f2dc673f122ad35447229dc3fe522efec3b43` |
| 147 | `theorem` | [tendsto_lift_nhdsWithin_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/tendsto-lift-nhdswithin-mk.md) | 697 | `result-track:de888a88692c7af695b5e9faa3b93baa3390305a7f41a0d52437816e1612cc59` |
| 148 | `theorem` | [continuousAt_lift](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuousat-lift.md) | 703 | `result-track:60d24de258d64094077feb8504c9ec564c51b199f8ad0b51069897b5c3441c59` |
| 149 | `theorem` | [continuousWithinAt_lift](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuouswithinat-lift-source-edition-2.md) | 708 | `result-track:44b11dd00fca3c305f7ff65379e6b796cea21bfe0d37e73c6314d1df48e5b221` |
| 150 | `theorem` | [continuousOn_lift](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuouson-lift.md) | 714 | `result-track:0a98eb71dd658869b78bb390eafdf909541f4f622155cf695767360ab3204627` |
| 151 | `theorem` | [continuous_lift](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuous-lift-source-edition-2.md) | 719 | `result-track:fee8b5f54b9881b15f81eba117e5059086e138fb1a1849652a314173f13d6de5` |
| 152 | `def` | [lift₂](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/lift.md) | 725 | `declaration-track:4690af40ff2cbcebbb53467a96e18750080f03006b9a229d40ea063360bf1e9c` |
| 153 | `theorem` | [lift₂_mk](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/lift-mk-source-edition-2.md) | 729 | `result-track:d7bda8553b99fe1108b2ce20b7b6678b97b1ab28ff9fa8a8211931ea56f2a581` |
| 154 | `theorem` | [tendsto_lift₂_nhds](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/tendsto-lift-nhds.md) | 734 | `result-track:c4d11a35fcc0ec43110726533f5ec224901a183eb74e76c2359cd135e4c33f32` |
| 155 | `theorem` | [tendsto_lift₂_nhdsWithin](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/tendsto-lift-nhdswithin.md) | 740 | `result-track:fd3928d94a5883e790f81407401056c3827532bd15794ec9204d7d9f2adf2f6c` |
| 156 | `theorem` | [continuousAt_lift₂](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuousat-lift-source-edition-2.md) | 749 | `result-track:ad4e74c3c8498f83b15d1526072c7f718794d0b543b331857f855585bac3cacc` |
| 157 | `theorem` | [continuousWithinAt_lift₂](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuouswithinat-lift.md) | 754 | `result-track:0ec3ea3c1735c8518fb4ee6a880a6da0a9969217735db51176b8fe78967b46ec` |
| 158 | `theorem` | [continuousOn_lift₂](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuouson-lift-source-edition-2.md) | 762 | `result-track:15c11ac923b108886b5039308cc917c6ff1f6142d767f48dc568901ee5fc68d3` |
| 159 | `theorem` | [continuous_lift₂](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuous-lift.md) | 770 | `result-track:4f8a4e9963af111e73e3649a7a715cb2034f9932542731fd2349fde6abf98c02` |
| 160 | `theorem` | [continuous_congr_of_inseparable](../../../../GeneralTopology/InseparableNamespacedKerNhdsEqSpecializes.lean/declarations/continuous-congr-of-inseparable.md) | 776 | `result-track:102c99d4c44ab62ad6b7db9ce722da19a12c73e8331719d8f19f12522999a230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0b14db00377912d580c43f467090c1df0b0a75a3011e5ae8bc652cc51efce12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Inseparable/Variant15527a47336055bcf8e700b0dbfa77c289e01e2f712d415c59473760b52e0906.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Inseparable/Variant15527a47336055bcf8e700b0dbfa77c289e01e2f712d415c59473760b52e0906.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

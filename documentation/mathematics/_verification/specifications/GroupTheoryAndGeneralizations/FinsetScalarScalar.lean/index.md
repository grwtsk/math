# Verification target: Finset Scalar Scalar

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f1f878bbacaf2a3ced1928cfa8fbd0ca0fc5c0b",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variantd670a239a8a3a6e4cebf6e0dd032503bb2c64ec3bd46ba64fea595fe22e5b33e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f1f878bbacaf2a3ced1928cfa8fbd0ca0fc5c0b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variantd670a239a8a3a6e4cebf6e0dd032503bb2c64ec3bd46ba64fea595fe22e5b33e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Scalar/Variantd670a239a8a3a6e4cebf6e0dd032503bb2c64ec3bd46ba64fea595fe22e5b33e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NAry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul.md) | 64 | `declaration-track:3dd1523fe60826c10b20c2b32430ef2d533df39281bdc69b3bb97940d57d0887` |
| 2 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-def.md) | 68 | `result-track:c8a2012e7fa0aacc58bd0e2a81d9485ca1875ed1c9d65bfadf8b90f197b4084a` |
| 3 | `lemma` | [image_smul_product](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/image-smul-product.md) | 71 | `result-track:3e7c6c065e34e91bb8ecbde38d95ab02ca64faf33682c1f3aace4b8f9f7caa89` |
| 4 | `lemma` | [mem_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/mem-smul.md) | 73 | `result-track:9453191bba87947f887adb51f6721bca39918642fd74c4b4b2787459bfe9f150` |
| 5 | `lemma` | [coe_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/coe-smul.md) | 76 | `result-track:3da8674f5e85aa15110660cbc790f29f2fe5dd8774ab712bc88062b528ab1633` |
| 6 | `lemma` | [smul_mem_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-mem-smul.md) | 78 | `result-track:f753f918f7c23dbe81a1fbe3af03680e089727425f56cb0757989765b77d2054` |
| 7 | `lemma` | [card_smul_le](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/card-smul-le.md) | 80 | `result-track:7ef647edb3dd397cd016661d66893fad1be968daaceb6a4f17246c76ffaa352f` |
| 8 | `lemma` | [empty_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/empty-smul.md) | 86 | `result-track:a47edc71726504b056642c1a4e2de27973f20a6210ae4f67043a1e7a6784dfee` |
| 9 | `lemma` | [smul_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-empty.md) | 89 | `result-track:051b2a83ebb7a9ed2546b30378bba2d95dc35911a4d16089803849eb58ca35f0` |
| 10 | `lemma` | [smul_eq_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-eq-empty.md) | 92 | `result-track:2c39ba821c7380eafdf761a5839b71b31fe36b04964a41403c8b4b101cd60db5` |
| 11 | `lemma` | [smul_nonempty_iff](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-nonempty-iff.md) | 95 | `result-track:c945110a207fea5943378ddb1caec98ed92eb1e00ab724e41d60ac4301379ac3` |
| 12 | `lemma` | [Nonempty.smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/nonempty-smul.md) | 98 | `result-track:76e6eef679615b9e9fb60cd7e8105a964fea06f486dd72fab98e6e0b802e05de` |
| 13 | `lemma` | [Nonempty.of_smul_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/nonempty-of-smul-left.md) | 100 | `result-track:ea8a287916293a1192084002924f5ab54f55d710bff7a57bd4291c0dcf81ee91` |
| 14 | `lemma` | [Nonempty.of_smul_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/nonempty-of-smul-right.md) | 101 | `result-track:050f928a2a60c24c431f38063f8ba254b48a31465835564aed922db8634918d4` |
| 15 | `lemma` | [smul_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-singleton.md) | 104 | `result-track:b070927c3a713360b30bc0174c64e193530576c7f2e45dda1facb436e97fa491` |
| 16 | `lemma` | [singleton_smul_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/singleton-smul-singleton.md) | 107 | `result-track:e98688b2c92959a700949a2056b4e56dd1d12818a73f2ec175f3449482013e9f` |
| 17 | `lemma` | [smul_subset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-subset-smul.md) | 111 | `result-track:c1afb095ca80f461ae8b3f5581e263cb19167cc3109f3b5936ad64633c727885` |
| 18 | `lemma` | [smul_subset_smul_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-subset-smul-left.md) | 113 | `result-track:be595d10600a4ef74ad8e8622554e1f26af73828bc44c3109193dc6dbb260ea5` |
| 19 | `lemma` | [smul_subset_smul_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-subset-smul-right.md) | 114 | `result-track:566dc0e1cffe8f8a5632a0d5d6b76cf97adccff05e77cc67ff6b82bd6e673a70` |
| 20 | `lemma` | [smul_subset_iff](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-subset-iff.md) | 115 | `result-track:f67c0594a5d062f534d55690e9051875bce4ad2838b51384d05d74e6d68ef714` |
| 21 | `lemma` | [union_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/union-smul.md) | 118 | `result-track:9ee77013b59c6e20e7a449b46df466efd4243ca780ec1ba8062da3a2f9e101c6` |
| 22 | `lemma` | [smul_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-union.md) | 121 | `result-track:1804dbb9e7626d79062f7dc1b4d250b4effc04e1226aba1bb93c6716a593a015` |
| 23 | `lemma` | [inter_smul_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/inter-smul-subset.md) | 124 | `result-track:f13749e861f98ce46b838bd0744c2880ec8b965a1dc663363c6caf3a2ceb364b` |
| 24 | `lemma` | [smul_inter_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-inter-subset.md) | 128 | `result-track:685cf06cddff8fbdef8e1a1f7a249e990ef4241bc6780f1e99aa1ca89536fa70` |
| 25 | `lemma` | [inter_smul_union_subset_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/inter-smul-union-subset-union.md) | 131 | `result-track:3f78899e8bcdab69320b28c4547241261332e8c953a1c1cd54ba76611f790bce` |
| 26 | `lemma` | [union_smul_inter_subset_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/union-smul-inter-subset-union.md) | 135 | `result-track:c68ef99c6ca96a34b9a810b326357a02df5c24caaaba943049332e989c9ab27a` |
| 27 | `lemma` | [subset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/subset-smul.md) | 143 | `result-track:e7d008ee1aaf91d27fa13126e1a23150fb9e9613aa26c60206d754b47e06acba` |
| 28 | `def` | [smulFinset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smulfinset.md) | 156 | `declaration-track:b918f5105188763d51b8099368c79a479b28473595aaf6675898e623cdfaa85b` |
| 29 | `lemma` | [smul_finset_def](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-def.md) | 160 | `result-track:dbd74f9d2191fe37065a97a98886149f54e5d881c1c33a71403bffa72fbed222` |
| 30 | `lemma` | [image_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/image-smul.md) | 162 | `result-track:063c505083ac450b0f1d3af348339f14b5a84fd252580f9e59ecd4ba28f8182d` |
| 31 | `lemma` | [mem_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/mem-smul-finset.md) | 165 | `result-track:7ac1609bad4d53e2ff8adfbae0920c7c65ae3376514a4ff655c06c1c8a7b5cba` |
| 32 | `lemma` | [coe_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/coe-smul-finset.md) | 169 | `result-track:6af473df635beeb2bfd353ec0c5f8a11a4f46f974450ca624c363459a095067b` |
| 33 | `lemma` | [smul_mem_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-mem-smul-finset.md) | 171 | `result-track:e0b632e0ecacd7d41851626c95c087d81dc7c89ec22481525f6d5e3e8ac222cb` |
| 34 | `lemma` | [smul_finset_card_le](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-card-le.md) | 173 | `result-track:6c31087f38739d07e2497e7e65b57b874f03ead92883c08164500a5d8bb9b8cb` |
| 35 | `lemma` | [smul_finset_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-empty.md) | 176 | `result-track:aba935b1afb8b3cd8495e10ad4620a07c5e43097ab3333c1382c833c5d69e6c4` |
| 36 | `lemma` | [smul_finset_eq_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-eq-empty.md) | 179 | `result-track:c4b6d7f0e6d6d490be381f11a786dcfa3b29e366ff7ce8d05d0a8e8aca586042` |
| 37 | `lemma` | [smul_finset_nonempty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-nonempty.md) | 182 | `result-track:841603c1abfb7758ff820c79a1df7ccfa6c9214a2ac9b74b0ee57f15c70d0d09` |
| 38 | `lemma` | [Nonempty.smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/nonempty-smul-finset.md) | 185 | `result-track:15dc3e3c82bcb9079ba49fdef6c3809dd7561ea2d60f289ef6f46946b8a4af62` |
| 39 | `lemma` | [singleton_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/singleton-smul.md) | 189 | `result-track:14986edd902d85d0357ecaaeb95482f6a0bce217468f53fefe13923cc0152e69` |
| 40 | `lemma` | [smul_finset_subset_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-subset-smul-finset.md) | 192 | `result-track:3e1f0381d51384d13f01e0bf2a8a439572302de6c9816490b0ba071df4793df6` |
| 41 | `lemma` | [smul_finset_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-singleton.md) | 195 | `result-track:a9a6142ffd33a70ba04499e13094529b0efc0d8cf2938cb12b2c9967bccbf867` |
| 42 | `lemma` | [smul_finset_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-union.md) | 198 | `result-track:c88232240904e1b8719715a35db091ca1290bb431ad83322a5cb625e020f73ba` |
| 43 | `lemma` | [smul_finset_insert](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-insert.md) | 201 | `result-track:4be85a79a9b4ce0d22c28bec0a8108383fd489e24a502ac813cb0faa902a24df` |
| 44 | `lemma` | [smul_finset_inter_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-inter-subset.md) | 205 | `result-track:8334eeb441879c8e237e5a01bcc03c028f5deaf4284608c25aca28974c7ceeb0` |
| 45 | `lemma` | [smul_finset_subset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/smul-finset-subset-smul.md) | 208 | `result-track:d317875ec3fb57ef335d761d0c19b7e800b85045d48967c7e5d39da7223228da` |
| 46 | `lemma` | [biUnion_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/biunion-smul-finset.md) | 211 | `result-track:ba88ded32c57a1ebd64e044d260c5959dc1f163a665c5261dc427dfc6b06bbcc` |
| 47 | `def` | [vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub.md) | 229 | `declaration-track:b2501845f10e7c704086126edb944b59b6a9193f470352350b7ec1bc550dbb4b` |
| 48 | `theorem` | [vsub_def](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-def.md) | 234 | `result-track:09a539182bf46fd5524711b147ed0c26c646a4faff844c4e93f059c29f2c0adf` |
| 49 | `theorem` | [image_vsub_product](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/image-vsub-product.md) | 238 | `result-track:f30ec44d1d25ae806b14cbb45325e6f0f8368388b7346f995ff38fb1497a012f` |
| 50 | `theorem` | [mem_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/mem-vsub.md) | 241 | `result-track:9ac11247c98a5f7a30a11e19d50728154028509baa239fc87ba48605075876cb` |
| 51 | `theorem` | [coe_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/coe-vsub.md) | 245 | `result-track:f1d92919d73924d70e6c7812c3594cc76d76421439bb6d6090f2aa0f9806bec6` |
| 52 | `theorem` | [vsub_mem_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-mem-vsub.md) | 248 | `result-track:88a12500f9436828a4821a1de3ae39f1c466254eee63fd0579e63d9b003e6d80` |
| 53 | `theorem` | [vsub_card_le](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-card-le.md) | 251 | `result-track:bddb862fae3ef2d689cd65f0961bc9eda26e0ce00c3033a6d122ed60e9b02945` |
| 54 | `theorem` | [empty_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/empty-vsub.md) | 255 | `result-track:23df0c0e0dc3550e4046b418ab9b4c924e23c3715600277947208ee8c69212e8` |
| 55 | `theorem` | [vsub_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-empty.md) | 259 | `result-track:59767a4445a2a890b184c29a24a632c6249ec49561609b5b5ff0dc4b5ee2c415` |
| 56 | `theorem` | [vsub_eq_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-eq-empty.md) | 263 | `result-track:c669dd8fe716644d4781e90940390ab46da4ee17f363ecb836a67cfa4576da49` |
| 57 | `theorem` | [vsub_nonempty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-nonempty.md) | 267 | `result-track:3b13c1b924954e62c21a825d6fddbeef3d79162076e31fa323519b8ad782c4ba` |
| 58 | `theorem` | [Nonempty.vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/nonempty-vsub.md) | 271 | `result-track:ee009d38463937c2317f5c2b0effefe262e9946f12b34073d7fc2a2af0eedbbe` |
| 59 | `theorem` | [Nonempty.of_vsub_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/nonempty-of-vsub-left.md) | 274 | `result-track:be2b3605a58f860ef5880ce5fc9aee34f6374bdd83ab4b2079ecf8a0cbea5dee` |
| 60 | `theorem` | [Nonempty.of_vsub_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/nonempty-of-vsub-right.md) | 277 | `result-track:123dce82f08c8b8040ad3d275daa7d4ac3501f8dcd2f6152944873163133d37d` |
| 61 | `theorem` | [vsub_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-singleton.md) | 281 | `result-track:c2313f0483b7f33231899a497f46546211b4844ee70ee7d8fe6047595807ed34` |
| 62 | `theorem` | [singleton_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/singleton-vsub.md) | 284 | `result-track:d7863f1d3ea9742a9002bf363b598f7f5905c17a05f1d12f2f54423f7488720c` |
| 63 | `theorem` | [singleton_vsub_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/singleton-vsub-singleton.md) | 287 | `result-track:5d917c51ffae1fef309eb96d27ded7a1107b710fd808814bed5b72a59ca50fee` |
| 64 | `theorem` | [vsub_subset_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-subset-vsub.md) | 291 | `result-track:b6499330a13495a5e57ab6af678dbaf28fc7cc05e62d3229d4f32c6989b8a062` |
| 65 | `theorem` | [vsub_subset_vsub_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-subset-vsub-left.md) | 294 | `result-track:dfdddb78aab8ed7589e584e5da37c9a6a0aef4d10364102449ab313d11d1d99a` |
| 66 | `theorem` | [vsub_subset_vsub_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-subset-vsub-right.md) | 297 | `result-track:ed18843a1d0ec4d34eb7390a87ac7db3430de6fe69f6140154cca4b9342e9f08` |
| 67 | `theorem` | [vsub_subset_iff](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-subset-iff.md) | 300 | `result-track:f3dcab0a0e65473e8e065a47ca304ecca17b09ae9b20c7f057a890b126418ceb` |
| 68 | `theorem` | [union_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/union-vsub.md) | 307 | `result-track:578625a30b8f949f75ebf4a8b65de49ba4d931ffa0493e2ba03562b39fefbd96` |
| 69 | `theorem` | [vsub_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-union.md) | 310 | `result-track:879c16437db833392bf6c8a1a32af2a2ff93c043006f5fca57d019e857fd7483` |
| 70 | `theorem` | [inter_vsub_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/inter-vsub-subset.md) | 313 | `result-track:79d762492c0437695ff6ec2bf49d1cc0a15e7ebc3b70a4a106ecdd04ea8efab0` |
| 71 | `theorem` | [vsub_inter_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/vsub-inter-subset.md) | 316 | `result-track:dc5de89c9322f9ecf695f852c4c3456a233b9ac6db7b36829ae92fd48448e571` |
| 72 | `theorem` | [subset_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/subset-vsub.md) | 323 | `result-track:234f0fc6225f19aab67ee00d94629c1ad11155ce0934992029e006a99b9fbaf3` |
| 73 | `theorem` | [op_smul_finset_smul_eq_smul_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/op-smul-finset-smul-eq-smul-smul-finset.md) | 335 | `result-track:6debbbe0fc153e544731e718ffb61abe887e285903631c8f17ef1466c13ba50c` |
| 74 | `theorem` | [image_smul_comm](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/image-smul-comm.md) | 363 | `result-track:866cb60569de4edf7c24bb7d5946e73c1cd718a64ceaeae0f73c8202ad1b6b25` |
| 75 | `theorem` | [toFinset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/tofinset-smul.md) | 384 | `result-track:e3c664bcfce4b09b95ac76259cf8e2f08ec88e97e46cf2d2e7e70f90404cd955` |
| 76 | `theorem` | [Finite.toFinset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/finite-tofinset-smul.md) | 389 | `result-track:9da75e69d678087ddbd026cb1f8fd2102bfe50fec3aec51f37ee8de5f2369a32` |
| 77 | `theorem` | [toFinset_smul_set](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/tofinset-smul-set.md) | 400 | `result-track:1ca0d30c634d19ebf33b40393545aadf128402ea823822de423aac23cc708dba` |
| 78 | `theorem` | [Finite.toFinset_smul_set](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/finite-tofinset-smul-set.md) | 405 | `result-track:393dbf2a50cd77ba53387db4185d4e1dc0d3db61f66ae7f95cbb32cc853364b8` |
| 79 | `theorem` | [toFinset_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/tofinset-vsub.md) | 416 | `result-track:a60884078744d55205ec2540fc99c6994d33c57cf59f9af629c6faa253dd60f2` |
| 80 | `theorem` | [Finite.toFinset_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalar.lean/declarations/finite-tofinset-vsub.md) | 420 | `result-track:3528e73db07027263e6227b9cb6aa4e28ed67f421afc2e442185411b433cfa9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8ff384a9784a7a232a7db39a625edcfbac7c5513ace29333afece833729b401 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variantd670a239a8a3a6e4cebf6e0dd032503bb2c64ec3bd46ba64fea595fe22e5b33e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Scalar/Variantd670a239a8a3a6e4cebf6e0dd032503bb2c64ec3bd46ba64fea595fe22e5b33e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

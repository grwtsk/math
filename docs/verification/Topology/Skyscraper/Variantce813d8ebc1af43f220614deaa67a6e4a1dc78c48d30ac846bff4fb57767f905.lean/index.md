# Verification target: GRWTSK.Topology.Skyscraper.Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64b8aa67a242a3e0c827bfc3f8f0b380cc06eb37",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/index.md) · [Full source](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64b8aa67a242a3e0c827bfc3f8f0b380cc06eb37`.

Source path: `GRWTSK/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.PUnit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [skyscraperPresheaf](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheaf--dcda7aaa757e0d2f48a2e77a.md) | 52 | `declaration-track:dcda7aaa757e0d2f48a2e77a8beeef4d20ddba957aa6ce9bbea91b5cfbbf51e3` |
| 2 | `theorem` | [skyscraperPresheaf_eq_pushforward](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheaf-eq-pushforward--dc6a694a7dbc62cadda2dec6.md) | 66 | `result-track:dc6a694a7dbc62cadda2dec631bde61a6d1ad732059ab5ffbf6552338ad37531` |
| 3 | `def` | [SkyscraperPresheafFunctor.map'](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheaffunctor-map--30cece31b784c5fea6d1f34a.md) | 80 | `declaration-track:30cece31b784c5fea6d1f34aea4ef575661592afb7140347d77c1866715e2ceb` |
| 4 | `theorem` | [SkyscraperPresheafFunctor.map'_id](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheaffunctor-map-id--19c91e86cb57f15fd3c9f412.md) | 93 | `result-track:19c91e86cb57f15fd3c9f412f788639764be8f080e7a51018a116347ff9aab0d` |
| 5 | `theorem` | [SkyscraperPresheafFunctor.map'_comp](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheaffunctor-map-comp--86a73cc8b0c269636b7e2a8a.md) | 98 | `result-track:86a73cc8b0c269636b7e2a8a5b6543fcd0336fb8a70e627a5f69b99652092442` |
| 6 | `def` | [skyscraperPresheafFunctor](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheaffunctor--1c91208fcc8220de4349ed03.md) | 110 | `declaration-track:1c91208fcc8220de4349ed03e41fdbc957849fb8b94a0af0fc883ca55df4cc45` |
| 7 | `def` | [skyscraperPresheafCoconeOfSpecializes](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheafcoconeofspecializes--d914e45939f8fbe89b25d3d0.md) | 127 | `declaration-track:d914e45939f8fbe89b25d3d0860e7b77561fc80be2980dfc73b4be2aa5bfd8dc` |
| 8 | `def` | [skyscraperPresheafCoconeIsColimitOfSpecializes](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheafcoconeiscolimitofspecializes--b10a56db17c265eb9f79bba1.md) | 143 | `declaration-track:b10a56db17c265eb9f79bba1cb4689a7602f18623c8e495939543e08e870e725` |
| 9 | `def` | [skyscraperPresheafStalkOfSpecializes](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheafstalkofspecializes--56a1b6e19e4e9cd1dfb55431.md) | 161 | `declaration-track:56a1b6e19e4e9cd1dfb55431bce1f78b0982aae53e6ea1648e53868033617769` |
| 10 | `lemma` | [germ_skyscraperPresheafStalkOfSpecializes_hom](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/germ-skyscraperpresheafstalkofspecializes-hom--ab8c6179b97eeebd34fd0cf1.md) | 166 | `result-track:ab8c6179b97eeebd34fd0cf1a8121386168bfd3ec110badea13c1061c3ede8a7` |
| 11 | `def` | [skyscraperPresheafCocone](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheafcocone--6e080a788045c6ac3470b0a4.md) | 174 | `declaration-track:6e080a788045c6ac3470b0a43cd72d757b48486e6d68ac3bfb4a4d6f1d6c6391` |
| 12 | `def` | [skyscraperPresheafCoconeIsColimitOfNotSpecializes](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheafcoconeiscolimitofnotspecializes--e4c08b6fda7c880456353804.md) | 185 | `declaration-track:e4c08b6fda7c8804563538044892da8cb6405c130442e26e1883ba2e323545a6` |
| 13 | `def` | [skyscraperPresheafStalkOfNotSpecializes](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheafstalkofnotspecializes--76555b28a39b75d85f12ef00.md) | 206 | `declaration-track:76555b28a39b75d85f12ef005ba775e8be00b22e3442c880681f377a583f82e9` |
| 14 | `def` | [skyscraperPresheafStalkOfNotSpecializesIsTerminal](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheafstalkofnotspecializesisterminal--193d38cd0a0b3956771d0fd3.md) | 212 | `declaration-track:193d38cd0a0b3956771d0fd305c1282777f7588eb2f5c5c7bd7ab6c47a1a7cef` |
| 15 | `theorem` | [skyscraperPresheaf_isSheaf](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheaf-issheaf--926087652e71ddbb3ce79828.md) | 216 | `result-track:926087652e71ddbb3ce79828ed0e875e5d1cd2dced87a44d8ef4cf8abb07f8a6` |
| 16 | `def` | [skyscraperSheaf](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscrapersheaf--c3e1fc5b2e71566ff4c4cb35.md) | 232 | `declaration-track:c3e1fc5b2e71566ff4c4cb35c82150e16abdd98e87fd6852d4e7b0974b1051cd` |
| 17 | `def` | [skyscraperSheafFunctor](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscrapersheaffunctor--32c266368ee52d0ac903f598.md) | 239 | `declaration-track:32c266368ee52d0ac903f5980e309424388a0faebcefb2aa15d0e98ceac1438a` |
| 18 | `def` | [toSkyscraperPresheaf](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/toskyscraperpresheaf--3dd146adb905ddf40b288d0c.md) | 254 | `declaration-track:3dd146adb905ddf40b288d0c4dd41a6430d13d187288259faa7a2dfeb7bcf7c2` |
| 19 | `def` | [fromStalk](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/fromstalk--18b218e40e6f91a321ff8300.md) | 271 | `declaration-track:18b218e40e6f91a321ff83006125ef8340e57ad4bad65ab56025c865fa195ad1` |
| 20 | `lemma` | [germ_fromStalk](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/germ-fromstalk--8614b1e40e713c12417a5691.md) | 285 | `result-track:8614b1e40e713c12417a56914d780d9259381257846b6827ed19b07921bd733f` |
| 21 | `theorem` | [to_skyscraper_fromStalk](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/to-skyscraper-fromstalk--1e284bb39da8045628c9a4f3.md) | 289 | `result-track:1e284bb39da8045628c9a4f30fc542c5957ee1675b66bce4e6185a72654df048` |
| 22 | `theorem` | [fromStalk_to_skyscraper](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/fromstalk-to-skyscraper--ae6de9b009225e63075cf867.md) | 299 | `result-track:ae6de9b009225e63075cf867fad2a5913b0bb7ad8d5b14c30ab42c79250e46a6` |
| 23 | `def` | [unit](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/unit--60b468ca6046605cf43b9683.md) | 308 | `declaration-track:60b468ca6046605cf43b9683c656e8db7f937b09127f50ee4d91a3b740518e27` |
| 24 | `def` | [counit](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/counit--ccd84bc0fafe52fecbd6d6ca.md) | 321 | `declaration-track:ccd84bc0fafe52fecbd6d6cade8c68623f506b6d8b74b86fe006f7d781139ca8` |
| 25 | `def` | [skyscraperPresheafStalkAdjunction](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/skyscraperpresheafstalkadjunction--fe1bd0c31220be3dff372b0f.md) | 334 | `declaration-track:fe1bd0c31220be3dff372b0f001c40c197508b66a79fc65c03153102c4a8a8d4` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/instance--36fd9dcaebe1e381256449d4.md) | 363 | `declaration-track:36fd9dcaebe1e381256449d4f6150a94b39a78663620a2aa1df747f50c586a49` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/instance--568556df840a5606a21925a7.md) | 366 | `declaration-track:568556df840a5606a21925a71b6b348e08fe76777fb723f0e77c9a3a65503e94` |
| 28 | `def` | [stalkSkyscraperSheafAdjunction](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/stalkskyscrapersheafadjunction--e2aabba98397427c14f8d277.md) | 373 | `declaration-track:e2aabba98397427c14f8d27720078afbc4d0cdb01b959e802e9e5a1a59807918` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/declarations/instance--71c3f284dcca93546a29a0ff.md) | 386 | `declaration-track:71c3f284dcca93546a29a0ffeba86ef220cee45cf77dcc3b1af545cfd0d27a15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

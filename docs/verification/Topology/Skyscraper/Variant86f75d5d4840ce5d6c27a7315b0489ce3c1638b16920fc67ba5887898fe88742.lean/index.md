# Verification target: GRWTSK.Topology.Skyscraper.Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9132a6ad081a9f67fcff93cb1987dec501dfd4ab",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/index.md) · [Full source](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9132a6ad081a9f67fcff93cb1987dec501dfd4ab`.

Source path: `GRWTSK/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean.json)

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
| 1 | `def` | [skyscraperPresheaf](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheaf--69c1feb605d51d6480649ee1.md) | 53 | `declaration-track:69c1feb605d51d6480649ee1e38f4849b1b4e3555df653dc05f830d21b18cc7e` |
| 2 | `theorem` | [skyscraperPresheaf_eq_pushforward](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheaf-eq-pushforward--9d23455deac3956f0348ad59.md) | 68 | `result-track:9d23455deac3956f0348ad59ce44dec141893445faac4478ad7f51636693272f` |
| 3 | `def` | [SkyscraperPresheafFunctor.map'](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheaffunctor-map--4b313b6124c5312271d3a1dc.md) | 82 | `declaration-track:4b313b6124c5312271d3a1dc06d49d7364e559d4b6305989f0534fcba0601fe0` |
| 4 | `theorem` | [SkyscraperPresheafFunctor.map'_id](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheaffunctor-map-id--20a6e1890e1e70aaf548609d.md) | 94 | `result-track:20a6e1890e1e70aaf548609dc57d40bd38ae2a6f0d8bad5e3307cea978300f9a` |
| 5 | `theorem` | [SkyscraperPresheafFunctor.map'_comp](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheaffunctor-map-comp--7aa4ed3c550c669cd96d895d.md) | 102 | `result-track:7aa4ed3c550c669cd96d895d109604340f40481d945c54790141c9dda62b0669` |
| 6 | `def` | [skyscraperPresheafFunctor](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheaffunctor--6e981e59652e946e716bf33b.md) | 119 | `declaration-track:6e981e59652e946e716bf33bcffa860214e166fcd954f41500de03f6043b4857` |
| 7 | `def` | [skyscraperPresheafCoconeOfSpecializes](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheafcoconeofspecializes--a45c3be098343f429182f8f0.md) | 137 | `declaration-track:a45c3be098343f429182f8f04bbea7a7c66b1a9e074aaf6eb8ebd9aa178d3663` |
| 8 | `def` | [skyscraperPresheafCoconeIsColimitOfSpecializes](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheafcoconeiscolimitofspecializes--3fecf4eb357a8d793d82ade7.md) | 153 | `declaration-track:3fecf4eb357a8d793d82ade7499b516025d9859870f3e4a153a6d8da395b4716` |
| 9 | `def` | [skyscraperPresheafStalkOfSpecializes](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheafstalkofspecializes--84a34f57d9dc5255216c72e3.md) | 172 | `declaration-track:84a34f57d9dc5255216c72e37b1e52002d4728c10a68dad52a871042317e2738` |
| 10 | `def` | [skyscraperPresheafCocone](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheafcocone--fe6b053f4497945ebf8b8978.md) | 180 | `declaration-track:fe6b053f4497945ebf8b8978e75b008af8c8613ad52d46f994160b8261d2af20` |
| 11 | `def` | [skyscraperPresheafCoconeIsColimitOfNotSpecializes](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheafcoconeiscolimitofnotspecializes--86b7a43021fd0ed127a00d24.md) | 192 | `declaration-track:86b7a43021fd0ed127a00d241a5233e53df7f32addba6b4a883270ed6b31f1be` |
| 12 | `def` | [skyscraperPresheafStalkOfNotSpecializes](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheafstalkofnotspecializes--fb17ac9a67f4055fc075135a.md) | 214 | `declaration-track:fb17ac9a67f4055fc075135ac9992cabb5c25079a01d5431241fe5a5c27e5c38` |
| 13 | `def` | [skyscraperPresheafStalkOfNotSpecializesIsTerminal](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheafstalkofnotspecializesisterminal--5e62f5ea7bdc45325bfac2e7.md) | 221 | `declaration-track:5e62f5ea7bdc45325bfac2e74cf0301cb2dd9c4e8ba6a36e0e7194506d88ed41` |
| 14 | `theorem` | [skyscraperPresheaf_isSheaf](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheaf-issheaf--8a03334ae42dc44063a038a5.md) | 226 | `result-track:8a03334ae42dc44063a038a5dbffd180bb76e47c59b8a64625d68b1e044b61a3` |
| 15 | `def` | [skyscraperSheaf](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscrapersheaf--8ab8c3957e43141aa25fc6d5.md) | 241 | `declaration-track:8ab8c3957e43141aa25fc6d58bfe78408d9bcdcda0425ccadda728594fcae9e0` |
| 16 | `def` | [skyscraperSheafFunctor](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscrapersheaffunctor--1ef9b25a9a498e8e5b5d34df.md) | 249 | `declaration-track:1ef9b25a9a498e8e5b5d34dfc73cccde2f1d296db8f200e6fef8190c643f4e0e` |
| 17 | `def` | [toSkyscraperPresheaf](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/toskyscraperpresheaf--6c4524545770c7de8631176f.md) | 265 | `declaration-track:6c4524545770c7de8631176fcd4adfc9119029af71ace31bf0b4331df57cdbf1` |
| 18 | `def` | [fromStalk](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/fromstalk--eeb2b96f558559886ee57086.md) | 283 | `declaration-track:eeb2b96f558559886ee570865f09c594dc0f8d7c56359fe940f9c6c61add0300` |
| 19 | `theorem` | [to_skyscraper_fromStalk](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/to-skyscraper-fromstalk--8c826487ea6a3e57fecffc52.md) | 299 | `result-track:8c826487ea6a3e57fecffc52135a82af8f6a3a6a444dd5219bcfc01eb4244ed2` |
| 20 | `theorem` | [fromStalk_to_skyscraper](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/fromstalk-to-skyscraper--c11f36a1d72faa6819b20d4c.md) | 312 | `result-track:c11f36a1d72faa6819b20d4c3e8286b908c10afc3f35e11528a88736c5d225b3` |
| 21 | `def` | [unit](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/unit--352e2b86b3ac9f9b103be428.md) | 324 | `declaration-track:352e2b86b3ac9f9b103be4281558cb1a5ac63afa473e597f2b6fd01a601577c0` |
| 22 | `def` | [counit](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/counit--68747dabaa4b41857501a902.md) | 342 | `declaration-track:68747dabaa4b41857501a902a189e5c64ffb52bab15c3410b2eeeb994fbba3ab` |
| 23 | `def` | [skyscraperPresheafStalkAdjunction](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/skyscraperpresheafstalkadjunction--1be1ef77b00eb2ab6c2b447d.md) | 363 | `declaration-track:1be1ef77b00eb2ab6c2b447d717a9deff07da2f07d18bce7b677ea544bb9c82a` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/instance--53d72059f688aa354ea55aa3.md) | 391 | `declaration-track:53d72059f688aa354ea55aa3579fa8ec1917e32eca9e196a7ad52a0fff014ca0` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/instance--d195a322f87e9a6dc899c3a2.md) | 394 | `declaration-track:d195a322f87e9a6dc899c3a21f536fb494dc432ff35d2b4c5e89973f18c545e5` |
| 26 | `def` | [stalkSkyscraperSheafAdjunction](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/stalkskyscrapersheafadjunction--de60a9a95e9d6afd01b0d948.md) | 399 | `declaration-track:de60a9a95e9d6afd01b0d948ec5f69f9e2e0e597b3be0527828972d8ba608d6e` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/declarations/instance--4aa49bfa00676f72e8603d50.md) | 415 | `declaration-track:4aa49bfa00676f72e8603d507c65529e754f4f13c365655e1b740baf92d99fdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

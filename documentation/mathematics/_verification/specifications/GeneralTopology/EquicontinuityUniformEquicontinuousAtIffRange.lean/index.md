# Verification target: Equicontinuity Uniform Equicontinuous At Iff Range

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60a2468370e4f1a1f108a196c7cbfd52a43d4cb0",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/index.md) · [Full source](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60a2468370e4f1a1f108a196c7cbfd52a43d4cb0`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformConvergenceTopology` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EquicontinuousAt](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat.md) | 94 | `declaration-track:a988da544cc3b8e67503b87a544785642c76603f8d01cb5c37b54e952efc87f8` |
| 2 | `abbrev` | [Set.EquicontinuousAt](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/set-equicontinuousat.md) | 100 | `declaration-track:963679740d46db9335556b9885d01d00cfce2d56dda3b89edcc7c3ca6bd8e282` |
| 3 | `def` | [Equicontinuous](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuous.md) | 106 | `declaration-track:6f5eaa9abd5610e79ad3cc8e18295de3af78cd75c3b19ef38f7833a4905b9ac8` |
| 4 | `abbrev` | [Set.Equicontinuous](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/set-equicontinuous.md) | 112 | `declaration-track:15f19c39bf4345217ee6e33e450e0457eecced672bef81ad1cbd2253f87124ae` |
| 5 | `def` | [UniformEquicontinuous](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniformequicontinuous.md) | 119 | `declaration-track:b62035383330e6e1102902735a3048f58ea5425775a903dc199128b061e06d95` |
| 6 | `abbrev` | [Set.UniformEquicontinuous](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/set-uniformequicontinuous.md) | 125 | `declaration-track:d25a939518bbeca020e441a8a95e721040a11d4c206f9a14c6864b85046c1e5d` |
| 7 | `lemma` | [equicontinuousAt_empty](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat-empty.md) | 129 | `result-track:8f4d756e64d3740037b520a199b178eecd95fdb80523601852f85e0d08977899` |
| 8 | `lemma` | [equicontinuous_empty](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuous-empty.md) | 133 | `result-track:9310a1275a62d70b0fc8ed5943d27fffbbaf50a8577be6998b651f113ef58d7a` |
| 9 | `lemma` | [uniformEquicontinuous_empty](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniformequicontinuous-empty.md) | 137 | `result-track:2e3875d0e4089ccf381315cee8c52d736a077ae140cad53cd708bb490baa2121` |
| 10 | `theorem` | [equicontinuousAt_iff_pair](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat-iff-pair.md) | 143 | `result-track:2d7712103b6020a0b782405aca2814828003c67388359114bb196493729004fa` |
| 11 | `theorem` | [UniformEquicontinuous.equicontinuous](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniformequicontinuous-equicontinuous.md) | 155 | `result-track:eeab5f316c1fcf2a1140817fc5dda188128889ab2b3042442286708a5b9735dc` |
| 12 | `theorem` | [EquicontinuousAt.continuousAt](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat-continuousat.md) | 161 | `result-track:63a321e7fe23da70b74d4c1fa3f8f8a053564ad7fa653918bc2bae167ce8840d` |
| 13 | `theorem` | [Set.EquicontinuousAt.continuousAt_of_mem](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/set-equicontinuousat-continuousat-of-mem.md) | 169 | `result-track:c82a4630bf678ac9c69d2fd2211b74c88f4b424cafde4a427e29a79ef28ea27b` |
| 14 | `theorem` | [Equicontinuous.continuous](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuous-continuous.md) | 175 | `result-track:c3631802ccf6cdaf6b5df080675b9ee79a0dff8dc46a17f7bd168157f52e2a87` |
| 15 | `theorem` | [Set.Equicontinuous.continuous_of_mem](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/set-equicontinuous-continuous-of-mem.md) | 180 | `result-track:662fb6d11cea91f1443b7fc9aba6b4d8ae5a58f29f1211a790ab43d01b22fec4` |
| 16 | `theorem` | [UniformEquicontinuous.uniformContinuous](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniformequicontinuous-uniformcontinuous.md) | 186 | `result-track:6e757e94b8b6a7dcd15b7c9c34b06d394b4f19b98bd8acc0e237fe640bc969f8` |
| 17 | `theorem` | [Set.UniformEquicontinuous.uniformContinuous_of_mem](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/set-uniformequicontinuous-uniformcontinuous-of-mem.md) | 191 | `result-track:3af008621a2562723c6dc7d617f74eb424dbb5fd3266a0e4da657f2069feeb0f` |
| 18 | `theorem` | [EquicontinuousAt.comp](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat-comp.md) | 197 | `result-track:a508552306988ebaf31b153ab29f3430ad08d12662b0ec2c0ad9508559be891b` |
| 19 | `theorem` | [Set.EquicontinuousAt.mono](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/set-equicontinuousat-mono.md) | 201 | `result-track:b813def96a295fcca40f91333915dae02f5c7d029ea08d86df3166effebe3496` |
| 20 | `theorem` | [Equicontinuous.comp](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuous-comp.md) | 207 | `result-track:5607e5ae0dc04f812323372f788b01de8ac0a318cbdda506c924d3a772ccad70` |
| 21 | `theorem` | [Set.Equicontinuous.mono](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/set-equicontinuous-mono.md) | 211 | `result-track:c92c168052ac483427b642ef1b71850fa1202f7328f2473bd97952ff298bfdd0` |
| 22 | `theorem` | [UniformEquicontinuous.comp](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniformequicontinuous-comp.md) | 217 | `result-track:b988746b4303d1219ec263e214be67471f6101ca9e065252c082ef9b91d55c43` |
| 23 | `theorem` | [Set.UniformEquicontinuous.mono](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/set-uniformequicontinuous-mono.md) | 221 | `result-track:603fe61b5fb8665c9db78488480ab7c0869688acb9e6b72213c2eb3715548a70` |
| 24 | `theorem` | [equicontinuousAt_iff_range](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat-iff-range.md) | 228 | `result-track:9848ddac1f74175882dd3c35cba2b5a25eb8f9b4e8cff4e53671476702675c6a` |
| 25 | `theorem` | [equicontinuous_iff_range](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuous-iff-range.md) | 236 | `result-track:52d6b5af676a001178556b812570ceb62541cb57296787da6ee15590d323ec99` |
| 26 | `theorem` | [uniformEquicontinuous_at_iff_range](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniformequicontinuous-at-iff-range.md) | 243 | `result-track:4e9894494a306be268ee0a4c6e459765ee7d414cdbf7b72013c096ab9316a2bf` |
| 27 | `theorem` | [equicontinuousAt_iff_continuousAt](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat-iff-continuousat.md) | 257 | `result-track:117fc7da3d2b25e9b9fca942c74855b3fa214be0fc325335b063c191079a3f5c` |
| 28 | `theorem` | [equicontinuous_iff_continuous](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuous-iff-continuous.md) | 267 | `result-track:6f186156b66cc579f096118e74bf25958058ad1ca26574f737a8c61f44ae94e5` |
| 29 | `theorem` | [uniformEquicontinuous_iff_uniformContinuous](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniformequicontinuous-iff-uniformcontinuous.md) | 276 | `result-track:a0ea25a0be16b899b70ed0a2109d38506b4cb37cd1e8abd52c62a41a57d00908` |
| 30 | `theorem` | [equicontinuousAt_iInf_rng](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat-iinf-rng.md) | 282 | `result-track:cc56a41e0d4071e9a207d0eef36f5858cfd883af3e4bc0807700da3f090bca67` |
| 31 | `theorem` | [equicontinuous_iInf_rng](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuous-iinf-rng.md) | 289 | `result-track:f1b977383396d90e5a9e7c06cbc1cfa090de3cad70256030d5c6c887fff2cda2` |
| 32 | `theorem` | [uniformEquicontinuous_iInf_rng](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniformequicontinuous-iinf-rng.md) | 294 | `result-track:493067acbd874265d4aac7cbc5cbbc516cf20408615a198d43a5a2ea7bc69405` |
| 33 | `theorem` | [equicontinuousAt_iInf_dom](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat-iinf-dom.md) | 299 | `result-track:79246e1ebc7ab6ec6c82610b1f7ae4456b3cc37ce4dfc51582c598d1ac1dc4ff` |
| 34 | `theorem` | [equicontinuous_iInf_dom](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuous-iinf-dom.md) | 307 | `result-track:adbb2e20f58ecd960ff9d50613a1843d6928b64b9ed1bfc91014352750989d6c` |
| 35 | `theorem` | [uniform_equicontinuous_infi_dom](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniform-equicontinuous-infi-dom.md) | 313 | `result-track:36e1e5fc8a0a83fc0922108f0d8865ad2fe385d0a3a76f4dbb1a2797231bf2f6` |
| 36 | `theorem` | [Filter.HasBasis.equicontinuousAt_iff_left](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/filter-hasbasis-equicontinuousat-iff-left.md) | 321 | `result-track:9cb3054f0cf326327ed7550c0bb71cab8395506d0ea30859ca0b92501ede8c00` |
| 37 | `theorem` | [Filter.HasBasis.equicontinuousAt_iff_right](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/filter-hasbasis-equicontinuousat-iff-right.md) | 330 | `result-track:a0774dad6bf5b59e8116a2a05ef793e86c0179c5283acdfe51fb17ff8400c865` |
| 38 | `theorem` | [Filter.HasBasis.equicontinuousAt_iff](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/filter-hasbasis-equicontinuousat-iff.md) | 340 | `result-track:01312ff1f79a23cc2818966d1430a43540bf4914cc0c0df5cbfd5704f432b31b` |
| 39 | `theorem` | [Filter.HasBasis.uniformEquicontinuous_iff_left](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/filter-hasbasis-uniformequicontinuous-iff-left.md) | 353 | `result-track:0df6d6d909df2bf655dda0cabe07f79b98bdbe511de16fdd6db98417c0368f4a` |
| 40 | `theorem` | [Filter.HasBasis.uniformEquicontinuous_iff_right](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/filter-hasbasis-uniformequicontinuous-iff-right.md) | 363 | `result-track:8e56008a33380a06be60256bc23fe2866be3aa713a4e4e7f7cd1602214d54656` |
| 41 | `theorem` | [Filter.HasBasis.uniformEquicontinuous_iff](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/filter-hasbasis-uniformequicontinuous-iff.md) | 373 | `result-track:e1f5390014d8ab80d3206914f3b545dc2fd40e549b7fb5818a09f79f0eff2032` |
| 42 | `theorem` | [UniformInducing.equicontinuousAt_iff](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniforminducing-equicontinuousat-iff.md) | 387 | `result-track:9c6dcf77f69ab6ba8a34d6939eb574707abc537579995971093e96e9da05a8eb` |
| 43 | `theorem` | [UniformInducing.equicontinuous_iff](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniforminducing-equicontinuous-iff.md) | 396 | `result-track:08a6ee1b93ab6a0544f0bab1d05d44d09d0c697b9ac452da30986a7fb79bbb9d` |
| 44 | `theorem` | [UniformInducing.uniformEquicontinuous_iff](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniforminducing-uniformequicontinuous-iff.md) | 405 | `result-track:93002bc279df346db6a6ce20355c25fa50ee85070134ba3d2d178072ac26067b` |
| 45 | `theorem` | [EquicontinuousAt.closure'](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat-closure-source-edition-2.md) | 417 | `result-track:a5bfd2d07435f21d933b811d5e77b687035ee776cac7b6adbc6ca9ea4b9682ae` |
| 46 | `theorem` | [EquicontinuousAt.closure](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuousat-closure.md) | 431 | `result-track:4fd00c19b7a464eb3b675ef7e5a4f212f7a778660d894dc139c8f14eb9fe097c` |
| 47 | `theorem` | [Filter.Tendsto.continuousAt_of_equicontinuousAt](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/filter-tendsto-continuousat-of-equicontinuousat.md) | 438 | `result-track:a2db3e36340d56c333601cac5fedd0968c72f31b3292c5ba704dcfcf6782e464` |
| 48 | `theorem` | [Equicontinuous.closure'](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuous-closure.md) | 449 | `result-track:325670a81e68ca90253cf97413f1e3f57ecee23f8e60b12776e54d3ab034465a` |
| 49 | `theorem` | [Equicontinuous.closure](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/equicontinuous-closure-source-edition-2.md) | 456 | `result-track:8ee59a040886cb622351bca3e10053b6a6e1837042a7b95d64b144ed1fb3a1b9` |
| 50 | `theorem` | [Filter.Tendsto.continuous_of_equicontinuous_at](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/filter-tendsto-continuous-of-equicontinuous-at.md) | 462 | `result-track:fc934ac7db70ff74f92e03b682bddeb1cf6d4a347863b59b26a7006b2e051d9e` |
| 51 | `theorem` | [UniformEquicontinuous.closure'](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniformequicontinuous-closure.md) | 471 | `result-track:3ec1e7577bfa87bdcb23abe0855e159c16ecdbc27fc277670bc666df0b44163e` |
| 52 | `theorem` | [UniformEquicontinuous.closure](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/uniformequicontinuous-closure-source-edition-2.md) | 486 | `result-track:ec2bbae4ff0554daef1f34f49115b9227b011f2e3c9853bd6daf3aabd2391735` |
| 53 | `theorem` | [Filter.Tendsto.uniformContinuous_of_uniformEquicontinuous](../../../../GeneralTopology/EquicontinuityUniformEquicontinuousAtIffRange.lean/declarations/filter-tendsto-uniformcontinuous-of-uniformequicontinuous.md) | 493 | `result-track:e275c1af227533e6ea5daa3ff16b06c32cb5f68a6d989a939d5db000fca46ab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=015be9fb2f70dbcddff1fe0184ccd98d01e6715b61799c38c144941d25759e78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

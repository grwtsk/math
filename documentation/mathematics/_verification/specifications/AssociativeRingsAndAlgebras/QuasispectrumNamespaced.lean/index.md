# Verification target: Quasispectrum Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbd8602c2cd8a81cb090f9586748676b155ace91",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbd8602c2cd8a81cb090f9586748676b155ace91`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Spectrum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Unitization` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PreQuasiregular](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/prequasiregular.md) | 75 | `declaration-track:2833a80dd6a89f023d973d02be316b17a3f91a4d665c529aadecb42f5f8ad449` |
| 2 | `def` | [equiv](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/equiv.md) | 85 | `declaration-track:dad5237410d0b0b4aad1c659389ba8f1144d165ca17f1036d283d6038e8b0ca8` |
| 3 | `instance` | [instOne](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/instone.md) | 91 | `declaration-track:0cab8489e7b29aafe8b47fe5e3252f6a31469f15c2d7235e4fa65519bcd01f3d` |
| 4 | `lemma` | [val_one](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/val-one.md) | 95 | `result-track:5bee70edc4e16904f9d7e05c5ca318964fddffe7ceb810520da180d1b77d884a` |
| 5 | `instance` | [instMul](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/instmul.md) | 97 | `declaration-track:1fcb806ef3ae32f3878440b3789908d5acd97dd054dfadde0c0dafe977e5c1f3` |
| 6 | `lemma` | [val_mul](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/val-mul.md) | 101 | `result-track:5f9be6ec7966bb77d227174263e0404a8d929a5112a324d1868f80cd98e6819b` |
| 7 | `instance` | [instMonoid](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/instmonoid.md) | 103 | `declaration-track:e428a62b176e88d4ac36b860f1395aada60183e556ca295d1e4d310c3c22bb7f` |
| 8 | `lemma` | [inv_add_add_mul_eq_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/inv-add-add-mul-eq-zero.md) | 111 | `result-track:76d6dbede083d6915a2be6fe31ee80f123824369639f6833a28e9726bf29c46f` |
| 9 | `lemma` | [add_inv_add_mul_eq_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/add-inv-add-mul-eq-zero.md) | 116 | `result-track:2627bec114238cdd293fc1ccea74c65497463992c59e8e32b31ef2f794f0a461` |
| 10 | `def` | [unitsFstOne](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/unitsfstone.md) | 130 | `declaration-track:fff5cb534a232aa55cee413cb05b3931beea09d8447c330af67f20007bab8491` |
| 11 | `lemma` | [mem_unitsFstOne](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/mem-unitsfstone.md) | 138 | `result-track:373a5c4c98dd216bc8a09a83de1308f08f66e486ecf858936527b6fa67177412` |
| 12 | `lemma` | [unitsFstOne_val_val_fst](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/unitsfstone-val-val-fst.md) | 141 | `result-track:ac79c73cdb7dfd56e93085b916fb6451f165f5c9a42012e26e1a299d66de2796` |
| 13 | `lemma` | [unitsFstOne_val_inv_val_fst](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/unitsfstone-val-inv-val-fst.md) | 145 | `result-track:3e437a5b308431ab1963a3ac6ca8c7b0dfa601d84c25c88a2e849753d9dde43e` |
| 14 | `def` | [unitsFstOne_mulEquiv_quasiregular](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/unitsfstone-mulequiv-quasiregular.md) | 153 | `declaration-track:2d66c7022e5e14772700ab7197b68e1d54c1e2d93e0db04e91ea9a2626eb49f3` |
| 15 | `def` | [IsQuasiregular](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/isquasiregular.md) | 192 | `declaration-track:ab00800d4d258a7901e70c6cdfee87c0c1fbe50d3c6c7eb96104c756048938d2` |
| 16 | `lemma` | [isQuasiregular_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/isquasiregular-zero.md) | 196 | `result-track:b70f350ff35c5ee3508522197b26b6e67b8952464a189ffdf53f8e4d6792f994` |
| 17 | `lemma` | [isQuasiregular_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/isquasiregular-iff-source-edition-2.md) | 198 | `result-track:68a48cf6b5c028c9a336863a3087d1f11c6bfa6e771ee56061649184dac3e423` |
| 18 | `lemma` | [isQuasiregular_iff'](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/isquasiregular-iff.md) | 209 | `result-track:3a4bca5a21fe134d51cf2961cc8a147d3ccb2ef11ef675092b533b122fa18182` |
| 19 | `lemma` | [IsQuasiregular.map](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/isquasiregular-map.md) | 215 | `result-track:e078d95f85636572d4b0cae47f3ab14cd6c03188042ec91527847743403e3c29` |
| 20 | `lemma` | [IsQuasiregular.isUnit_one_add](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/isquasiregular-isunit-one-add.md) | 222 | `result-track:ce51ffb9d9c5d5c7e20e93292a96214fb2f5b31776948d11d6fa93982fc5b749` |
| 21 | `lemma` | [isQuasiregular_iff_isUnit](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/isquasiregular-iff-isunit.md) | 229 | `result-track:25faa5b8cd949357f67ac66717d0b0961f65bce21c8c42522d5dd5c529a8f4dc` |
| 22 | `lemma` | [isQuasiregular_iff_isUnit'](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/isquasiregular-iff-isunit-source-edition-2.md) | 243 | `result-track:2b37bbae8193926d3b4cfa1ba2cdd8f902dad03de9ab82e3d3415ffc55f78565` |
| 23 | `def` | [quasispectrum](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum.md) | 259 | `declaration-track:fded0b9534d3717ab5cb884948aa9cbd1486d5eb2e2ac0bdf0486e501e3b222e` |
| 24 | `lemma` | [quasispectrum.not_isUnit_mem](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-not-isunit-mem.md) | 263 | `result-track:7fbd1f45e37924853daed647d252f04fa4697e0a08d7b6846dd71858880e413d` |
| 25 | `lemma` | [quasispectrum.zero_mem](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-zero-mem.md) | 267 | `result-track:6a908ba639a5eeb2239ff6c8b8c81f7a4641bb385d87bac90a3bd11a3df6114d` |
| 26 | `theorem` | [quasispectrum.nonempty](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-nonempty.md) | 270 | `result-track:504d08cb655d442aadfb2ca029b5e367233b4fac450081815fc0fa3e03a38478` |
| 27 | `instance` | [quasispectrum.instZero](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-instzero.md) | 273 | `declaration-track:ae6874f392c9e34038cfcbd43bd6af0ebfdf1e40073519b9839586b4e1db8bff` |
| 28 | `lemma` | [NonUnitalAlgHom.quasispectrum_apply_subset'](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/nonunitalalghom-quasispectrum-apply-subset.md) | 282 | `result-track:1de3972ff96d2e2e41ddfe442526efd78ca319152e9cbb01e7d252305fad8c89` |
| 29 | `lemma` | [NonUnitalAlgHom.quasispectrum_apply_subset](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/nonunitalalghom-quasispectrum-apply-subset-source-edition-2.md) | 296 | `result-track:95994b603323f54d5eea5514f21cfecc2563105bcec918a35ad70197658a0844` |
| 30 | `lemma` | [quasispectrum.coe_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-coe-zero.md) | 303 | `result-track:071747d6158d13a5fc6fbdf39dfc972d4e020488a7ed6e625249730a22861378` |
| 31 | `lemma` | [quasispectrum.mem_of_not_quasiregular](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-mem-of-not-quasiregular.md) | 305 | `result-track:05f9623cd4840cd779bbb28e70494a0b8d011efb9f71466f2b5371f56b556200` |
| 32 | `lemma` | [quasispectrum_eq_spectrum_union](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-eq-spectrum-union.md) | 309 | `result-track:c55b835198e345d5a5e3cea9d89b676cc8413c2ea969a45f661d28c48684eac4` |
| 33 | `lemma` | [spectrum_subset_quasispectrum](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/spectrum-subset-quasispectrum.md) | 318 | `result-track:c0aa592c317b1f802d324b4bdd716adac652c403fca31d4197e39ed33a174ebf` |
| 34 | `lemma` | [quasispectrum_eq_spectrum_union_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-eq-spectrum-union-zero.md) | 322 | `result-track:0e609cd6d332264a009dafabfc4647196f3cce1462177391aa6fd607067989d8` |
| 35 | `lemma` | [mem_quasispectrum_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/mem-quasispectrum-iff.md) | 328 | `result-track:868d219b5b3e038925f48d64002d6b16ea536daddd9bc8024bcfadfb8dc219ef` |
| 36 | `lemma` | [isQuasiregular_inr_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/isquasiregular-inr-iff.md) | 336 | `result-track:2f940c78a20a3c42d121a0c123af2cb7011b72f31801511641e4561e3bc3e54f` |
| 37 | `lemma` | [zero_mem_spectrum_inr](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/zero-mem-spectrum-inr.md) | 344 | `result-track:6cde4765169d3b3addaa6a61c113890009f62d35517305f9c2d062fa492b88de` |
| 38 | `lemma` | [mem_spectrum_inr_of_not_isUnit](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/mem-spectrum-inr-of-not-isunit.md) | 352 | `result-track:c522c753e45cf1ef534f4df037008d369c3e28287b3eb5240ad9d1f0a4704249` |
| 39 | `lemma` | [quasispectrum_eq_spectrum_inr](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-eq-spectrum-inr.md) | 357 | `result-track:2ff2e7a4124da67ed4e31c2cb4b484da476d42ff6e2ed1d318cf1b376f0ed8c6` |
| 40 | `lemma` | [quasispectrum_eq_spectrum_inr'](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-eq-spectrum-inr-source-edition-2.md) | 366 | `result-track:45fc00b20c498d7642d1864d87a34d7ca7c0410873d3bb35fdd8a2f25ed7691c` |
| 41 | `lemma` | [quasispectrum_inr_eq](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-inr-eq.md) | 376 | `result-track:75f7e493f740a209749cd22333591153f532b3bf1b3872cd93718af7bd519634` |
| 42 | `lemma` | [quasispectrum.mul_comm](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-mul-comm.md) | 386 | `result-track:a3a687fed60593c1d8c60ef5b2752cf9b3ac5bc0e4fd264555a5421f19ff2c5f` |
| 43 | `class` | [NonnegSpectrumClass](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/nonnegspectrumclass.md) | 399 | `declaration-track:da59d88cd69ad871cc4a5681fe62841d5d978f659b5fd58059bdee3e11069393` |
| 44 | `lemma` | [iff_spectrum_nonneg](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/iff-spectrum-nonneg.md) | 408 | `result-track:55bbf1ec928be6bcfd4b9e91987096276e9e1696787fe21fbfa0c5546cafa89f` |
| 45 | `lemma` | [spectrum_nonneg_of_nonneg](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/spectrum-nonneg-of-nonneg.md) | 417 | `result-track:99252bff462157c123d7f36756c7f68d30bfe2da296c55255f09725fb605e980` |
| 46 | `structure` | [QuasispectrumRestricts](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrumrestricts.md) | 435 | `declaration-track:437ef5e153cabaeb25c5802c333b30c687020c6b9605ba17e0cfc15f04bdaced` |
| 47 | `lemma` | [quasispectrumRestricts_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrumrestricts-iff.md) | 443 | `result-track:dbb90ef7062714526855c980f95b6ef0a712156b4feb3cdbb41d380f8a93a232` |
| 48 | `theorem` | [quasispectrum.algebraMap_mem_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-algebramap-mem-iff.md) | 451 | `result-track:1b93edcf26cae2163fd2d89d293babefdb00b72dfcc57e06571165a6593f0a9a` |
| 49 | `theorem` | [quasispectrum.preimage_algebraMap](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrum-preimage-algebramap.md) | 461 | `result-track:4bb9543e72a0b5718a5c5c0fec8ecf161b5fa9edd49617b4d00c3cb799199748` |
| 50 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/map-zero.md) | 474 | `result-track:46aede2f4fe6e53daa18b913a040df71c136c3c55cfba5886f4e6c0a56ba47c6` |
| 51 | `theorem` | [of_subset_range_algebraMap](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/of-subset-range-algebramap.md) | 477 | `result-track:c3dcfb8ffcef65b17d836da7b0d8b61d74be322096b01e409b754da6d6c0b93a` |
| 52 | `lemma` | [of_quasispectrum_eq](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/of-quasispectrum-eq.md) | 482 | `result-track:cb563754cb10665bdc91b6bfbe7d63ebded029178bea96fd3b272030089e1d7c` |
| 53 | `lemma` | [mul_comm_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/mul-comm-iff.md) | 489 | `result-track:a3dff63c02510c67ef30846c59974fb4e968f8f28cd7838aae9a4adad781c522` |
| 54 | `theorem` | [algebraMap_image](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/algebramap-image.md) | 497 | `result-track:31fa77bd36e55d3dcb97bc4d14d0e47a7ff8981bd4e10f352fc86ee8b05d6fe0` |
| 55 | `theorem` | [image](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/image-source-edition-2.md) | 504 | `result-track:46014cd6056edf6918fda7787a27eb4419f13fa80d57d7c65682696e086b9ed0` |
| 56 | `theorem` | [apply_mem](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/apply-mem-source-edition-2.md) | 507 | `result-track:cd3ddb5a2feee148542f0c9fdeef95f2d6c8613c7320a7dfe7e74c8882c2cf0d` |
| 57 | `theorem` | [subset_preimage](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/subset-preimage-source-edition-2.md) | 511 | `result-track:97ba3dc36722d942fb05231edfee4240b1f6034d3f57e6d0278b2c3a1c545c3d` |
| 58 | `lemma` | [comp](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/comp.md) | 515 | `result-track:2744cd173062d294304f3f564cab980fa202a7ecaa051af9ce13eedc04150ad0` |
| 59 | `def` | [SpectrumRestricts](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/spectrumrestricts.md) | 536 | `declaration-track:9d4491dfbd031b331c9b560bb6d4cf46ed708d7bc9f6510a86f22cd56ec45337` |
| 60 | `theorem` | [rightInvOn](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/rightinvon.md) | 548 | `result-track:bebc0716bd69451dab70b5c557eb22f45721d89102c40969a15ae20736577a27` |
| 61 | `theorem` | [of_rightInvOn](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/of-rightinvon.md) | 551 | `result-track:7b4fed2306f76fee970cdbab6950d3f9aa006756d4339ff8a493df09c6639f84` |
| 62 | `lemma` | [Quasispectrum Namespaced](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-prequasiregu.md) | 559 | `result-track:0d6f85c7a4bab426fafe788b32a208469ed2b77d07c64b936ac4e0265958bf46` |
| 63 | `theorem` | [of_subset_range_algebraMap](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/of-subset-range-algebramap-source-edition-2.md) | 564 | `result-track:f163ffa923a9789b17cf6ea160de7a03e96b1dbb87c9765b3cbfefb71c6dd1f7` |
| 64 | `lemma` | [of_spectrum_eq](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/of-spectrum-eq.md) | 574 | `result-track:c2407bd5463a9dd6866da0a58c91aab91f022c871e03ebfaf16e9b767e384f42` |
| 65 | `lemma` | [mul_comm_iff](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/mul-comm-iff-source-edition-2.md) | 581 | `result-track:a4986ebca85c00adcab26ad71e3d3400a9de7feb2f6a0c08fc994a838d8f46ba` |
| 66 | `theorem` | [algebraMap_image](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/algebramap-image-source-edition-2.md) | 590 | `result-track:4b7233fedc9f0f8e0c2afec9c1cdc5bd8ccbee3aa8acf94cbd223876859bf29e` |
| 67 | `theorem` | [image](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/image.md) | 597 | `result-track:3cbb9ce751501f4e906ece156a4c0d15631f2397e70da888a2c02a36c54e1016` |
| 68 | `theorem` | [apply_mem](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/apply-mem.md) | 600 | `result-track:60a10c43e7b3fb1295d63f8f26b571d860a73bb1c4a113f101518e986bf35cab` |
| 69 | `theorem` | [subset_preimage](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/subset-preimage.md) | 604 | `result-track:3668404b237af1d31c9d53abe15cec3f8caa5816e4ee2322a1cee1eac6ec0f00` |
| 70 | `theorem` | [quasispectrumRestricts_iff_spectrumRestricts_inr](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrumrestricts-iff-spectrumrestricts-inr-source-edition-2.md) | 611 | `result-track:c86e08e834c45f18d7ff53a11d00515802e6e11c8c9115c962f831ae15211f58` |
| 71 | `lemma` | [quasispectrumRestricts_iff_spectrumRestricts_inr'](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrumrestricts-iff-spectrumrestricts-inr.md) | 620 | `result-track:616f8ec31be512091db1d0bf596ad85a1506d59dad96c00a8148a438bf2b5033` |
| 72 | `theorem` | [quasispectrumRestricts_iff_spectrumRestricts](../../../../AssociativeRingsAndAlgebras/QuasispectrumNamespaced.lean/declarations/quasispectrumrestricts-iff-spectrumrestricts.md) | 628 | `result-track:d0ce8522bc1f8ac9dbdaebeb6f66f78f0fc15c04822128fa3a6cece35f1922eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08b5d3c5aaf56c3a312628ae48e04858c38d50bab2d306ea56cbe6741e0289c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

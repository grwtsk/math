# Verification target: Subalgebra Lattice Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85defdbbd40b7abc8a065ac810117f7de2e8ecb2",
  "lexical_observation_count": 152,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85defdbbd40b7abc8a065ac810117f7de2e8ecb2`.

Source path: `GRWTSK/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjoin](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin.md) | 40 | `declaration-track:63c56740f3dda679c1308f43fe24d078227bd06b129ab4561d742c24a01f152b` |
| 2 | `theorem` | [gc](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/gc.md) | 46 | `result-track:ee3d40b14983a3a93939c78bde64d283e5fd4946ce1c3b63be14f4fd5b5a70e6` |
| 3 | `def` | [gi](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/gi.md) | 52 | `declaration-track:3e8c07568cdc12e5532caeb5b1eb26941a5f08fa9cff0301b9cadd5d1a654051` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 58 | `declaration-track:b4428a7b7b95796557b6d930ad67d8e16c59d1840bee813f95c63996769f9d01` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 63 | `declaration-track:81239d44f913c675c855fa0c99801906b24a2f8ccf8498b950a6316572171134` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 66 | `declaration-track:6b5ce7d699f14676a02116a3875cd8f41c12d1f932623d49aa9515738b9adbc5` |
| 7 | `theorem` | [sup_def](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/sup-def.md) | 69 | `result-track:539c19dd74450215a3b663470560a2dfda8a50c2add1cd7c57841abb5f7d0273` |
| 8 | `theorem` | [sSup_def](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/ssup-def.md) | 71 | `result-track:ab93c337e8325fba22cdec6d02e692780a6e371597a22864c39eb989b5f81604` |
| 9 | `theorem` | [coe_top](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/coe-top.md) | 74 | `result-track:dcd1b03dfbe4361f9d06a971bd6e5d37072aeb885d31f666fc5bba3b5aaeb7ac` |
| 10 | `theorem` | [mem_top](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-top.md) | 77 | `result-track:4f68e4564f5e68561c8215b09301ef3ef920e48b877cfae8c7d495f9cb282c69` |
| 11 | `theorem` | [top_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/top-tosubmodule.md) | 80 | `result-track:b77108da46db2208fa85eed73771cd0b6535d8d26fc2fd8e965092840f0d3822` |
| 12 | `theorem` | [top_toSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/top-tosubsemiring.md) | 83 | `result-track:fa07210511549db6e4cc641c4a4aec0cda347f2d4ee8c1befae70ffb67c8331b` |
| 13 | `theorem` | [top_toSubring](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/top-tosubring.md) | 86 | `result-track:7c880b2c4fe842f66d8c2b428cf380f8a0fbd67eccb0067332280c7d7f8abaa3` |
| 14 | `theorem` | [toSubmodule_eq_top](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/tosubmodule-eq-top.md) | 90 | `result-track:7be69c5ea1a6d2a5b390058701570288c15f561351e25519f40a96a174c310b1` |
| 15 | `theorem` | [toSubsemiring_eq_top](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/tosubsemiring-eq-top.md) | 94 | `result-track:2ef2d9ad11eed9cbb3f7a75b45de4a792a18676f3164c8040e4343c36ad0a34c` |
| 16 | `theorem` | [toSubring_eq_top](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/tosubring-eq-top.md) | 98 | `result-track:730e3ce3d5081f34c852a2ac5b0bbc9bcbf14a64f4be490d5a5a6dc78caac0c3` |
| 17 | `theorem` | [mem_sup_left](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-sup-left.md) | 102 | `result-track:654753d73875f031de212f60f476fdcecef02d297b07f22f8b1ea71611a9180e` |
| 18 | `theorem` | [mem_sup_right](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-sup-right.md) | 105 | `result-track:cf4ec326ad3736656c80424bcce5f4e9804464a11cc8656140b464fd36c48065` |
| 19 | `theorem` | [mul_mem_sup](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mul-mem-sup.md) | 108 | `result-track:7760585b92178d9a75ca560086dd0400d40e52938bc14c4bea6ced09ae256df1` |
| 20 | `theorem` | [map_sup](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/map-sup.md) | 111 | `result-track:3acfccc5c0700370614f83d312d8e507818a8056cce39eb4cf64677fbd8ff4fc` |
| 21 | `theorem` | [map_inf](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/map-inf.md) | 114 | `result-track:91ffb300b3f95542f58c0e3a9a55cdb4cdd6ffbe6ca869802439ab99cb7e7b84` |
| 22 | `theorem` | [coe_inf](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/coe-inf.md) | 118 | `result-track:09b94f73f4e16928e863dff55e5fd6894588f4e84e0a84833035ad96b591fd92` |
| 23 | `theorem` | [mem_inf](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-inf.md) | 121 | `result-track:ded095b39abd8ded114f8b6669f21f0714cf35d5d3fbd7f0e40a646f8cc272f7` |
| 24 | `theorem` | [inf_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/inf-tosubmodule.md) | 125 | `result-track:56a7c1bdec87c0c2c2cbdc39a35f2e0b650d1694fe621f1382ceb96add121378` |
| 25 | `theorem` | [inf_toSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/inf-tosubsemiring.md) | 129 | `result-track:a3b0c00798104007ea3168cb06eb54b22d524206a1a77f5fe60c898bd153bfff` |
| 26 | `theorem` | [sup_toSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/sup-tosubsemiring.md) | 134 | `result-track:d657d9dbfbd498a7747c6faa754f84ba08597dab9053231dd52d7b47f5238bb2` |
| 27 | `theorem` | [coe_sInf](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/coe-sinf.md) | 144 | `result-track:a3440c73fd18cb11e3d25b662ccc0cd99b9537f2ebf5ff85ecbe77456c706d1c` |
| 28 | `theorem` | [mem_sInf](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-sinf.md) | 148 | `result-track:38329171fc72ab4ff63f70427d343d5528656c5eef9d047c1d8255c1e8e03e9d` |
| 29 | `theorem` | [sInf_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/sinf-tosubmodule.md) | 152 | `result-track:919e5d22e45a06faa7412e6adcee2c518eb4d438f1d31cb51f4879989670f383` |
| 30 | `theorem` | [sInf_toSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/sinf-tosubsemiring.md) | 157 | `result-track:a0f728bae138883c52f9e4badcfdce5a53179077f5a371c36d36e7603c7e4df5` |
| 31 | `theorem` | [sSup_toSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/ssup-tosubsemiring.md) | 163 | `result-track:71c2f3235df6f08311b6cb456df1ab7468849307d8e8ae2bd59a904a61072858` |
| 32 | `theorem` | [coe_iInf](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/coe-iinf.md) | 178 | `result-track:534cdd066da9c32e4dd9fd2534ebbbc2a72c371b937dd3ed4db6e7119445ddf4` |
| 33 | `theorem` | [mem_iInf](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-iinf.md) | 182 | `result-track:849e3b7756e1e9448d2de1c26f0937314f730e35f7e9bcc3413b6c2b3e5fb757` |
| 34 | `theorem` | [map_iInf](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/map-iinf.md) | 185 | `result-track:cf1afd7e41530e709b24b1752f000924f04740e52ebb61d3fea27fa0278d1375` |
| 35 | `theorem` | [iInf_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/iinf-tosubmodule.md) | 192 | `result-track:266eeea9c2be38d9edec23c1346abe95af51d656b8bbe3d6bcc49d9c8ee3069e` |
| 36 | `theorem` | [iInf_toSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/iinf-tosubsemiring.md) | 197 | `result-track:c5d9df1d549ab0e3cbff1bbf108abdf4389fcecd56945f547b7a62e32206e9c2` |
| 37 | `theorem` | [iSup_toSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/isup-tosubsemiring.md) | 202 | `result-track:ae6d9c307ab14688f16bfc9fd6c60de6f43c5c4b8b9c50287db02fa715751053` |
| 38 | `lemma` | [mem_iSup_of_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-isup-of-mem.md) | 206 | `result-track:06c1d9ec3c33eba709db63f9de0662868ebd78d9599520efc0b3059044179df5` |
| 39 | `lemma` | [iSup_induction](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/isup-induction-source-edition-2.md) | 211 | `result-track:c3f7d0ffd020b0dd27cd0283b89ddcc2467a6e8dcda8b4dafa5388813233d38a` |
| 40 | `theorem` | [iSup_induction'](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/isup-induction.md) | 227 | `result-track:6d31320ddac5926ef2180db2f6695632886fbce9083bc13b75c0ac0b00f3136a` |
| 41 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 239 | `declaration-track:70d5b3d76d12c33b34eef2dd2cbb1c77e82554a87793f6ac653f039558f5f3be` |
| 42 | `theorem` | [mem_bot](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-bot.md) | 241 | `result-track:c063f8260a58bd5f3516dfdddb8853b0851445a0439c6f36aedddc6106c03d7c` |
| 43 | `theorem` | [toSubmodule_bot](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/tosubmodule-bot.md) | 244 | `result-track:9ca90a37fcae4962b75ec76cf859d5b9489d62cf474c0551536d0ba9d171e85d` |
| 44 | `theorem` | [coe_bot](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/coe-bot.md) | 248 | `result-track:f59294e92992a0a434f2669ca7b1616c6e6257fbfa94ac3b6e9fbb5614db3fdf` |
| 45 | `theorem` | [toSubring_bot](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/tosubring-bot.md) | 251 | `result-track:fe4e05251ef6db02ec29d1e7a5c2e89ba3a613add8e40afd56c877305e028144` |
| 46 | `theorem` | [eq_top_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/eq-top-iff.md) | 255 | `result-track:3f6b95ec8fbc4e6fa65a7eb475abf237dcde403610da636871803d6848216199` |
| 47 | `theorem` | [Subalgebra Lattice Namespaced Public](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/range-eq-top.md) | 259 | `result-track:d95119d59cce8fbc06a5c3293c2b80db4f40de5fe7e52478c67416b67e5e6efc` |
| 48 | `theorem` | [range_ofId](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/range-ofid.md) | 264 | `result-track:aed91956fdff406e3e7781c85ff058c5a84fcf61fd9a11b5a47b6477e8884e24` |
| 49 | `theorem` | [range_id](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/range-id.md) | 267 | `result-track:2a0c8ec53428ebd1510f5bdc93a4c552fd1cc66ae540ef3f961a72191da36184` |
| 50 | `theorem` | [map_top](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/map-top.md) | 271 | `result-track:c49a22e377f9c951c9e44ab2eb3a410c123f12a1f5000eaec6e0bbf876fcb45b` |
| 51 | `theorem` | [map_bot](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/map-bot.md) | 275 | `result-track:536d3b987309a4c6bd7e12613d92658d5275061c5bd29608f180f764c1727e43` |
| 52 | `theorem` | [comap_top](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/comap-top.md) | 280 | `result-track:8ac412209836ddfe22791dbae025010ce96369e4b09cb2beb816b7cb2bfec19b` |
| 53 | `def` | [toTop](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/totop.md) | 284 | `declaration-track:eba209cf4bb30620dfd2dc68cefc4ee697d275e4caea957828baebd1fadc7e79` |
| 54 | `theorem` | [surjective_algebraMap_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/surjective-algebramap-iff.md) | 287 | `result-track:41f0f5faa109db77d72a14aa9ec031b02c2945627caa2052fbdb1f3ba107ea1e` |
| 55 | `theorem` | [bijective_algebraMap_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/bijective-algebramap-iff.md) | 295 | `result-track:2af26e385103861f3141cb5edc7b72c8451d295b4821442ad8f3b9022e158483` |
| 56 | `def` | [botEquivOfInjective](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/botequivofinjective.md) | 301 | `declaration-track:f47c0baaba632d80379579db67e1de776d58ce654935baaec0f2c41bb0e9e537` |
| 57 | `def` | [botEquiv](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/botequiv.md) | 312 | `declaration-track:d23093f92514211d6c481a6bd30ba68fcaec2e2415080e9ec549759a32557ff7` |
| 58 | `def` | [topEquiv](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/topequiv.md) | 330 | `declaration-track:55442cf377811e1a58451e32eb2cde376a518faab77475207e6c6e65f399fb8d` |
| 59 | `instance` | [Subalgebra Lattice Namespaced Public](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/subsingleton.md) | 333 | `declaration-track:added9c9e59761199e2d106c74cb5b2d8fe21edd7b479fcec694ac579dbc1ed0` |
| 60 | `instance` | [Subalgebra Lattice Namespaced Public](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/subsingleton-left.md) | 340 | `declaration-track:770936afc498ed620548d82d7b7f6f95df904b8c4c31d30d071d7f61c1077026` |
| 61 | `instance` | [Subalgebra Lattice Namespaced Public](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/subsingleton-right.md) | 344 | `declaration-track:0862804dffe41b12a821a67911963865f44c45b9d7844c867a01f64e594dd35a` |
| 62 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 348 | `declaration-track:7ef4d97378b4b85a70a9095410469ef457a7a9a40cd8ab5d38901cbc2a4151a8` |
| 63 | `theorem` | [center_eq_top](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/center-eq-top.md) | 361 | `result-track:d1ca666fdc2547be624698c42f49e4bd3bf2c65baad90a5c26e69583090e89da` |
| 64 | `theorem` | [centralizer_eq_top_iff_subset](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/centralizer-eq-top-iff-subset.md) | 371 | `result-track:db44191c511585b5b3f7f76285a7d9dcfd168c1af8ead50efcc46a0d02d94724` |
| 65 | `theorem` | [equalizer_eq_top](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/equalizer-eq-top.md) | 385 | `result-track:efd23271044fb624c61beedbf8dc30ed444e442021e4a564ce0b5ce2f1079f0b` |
| 66 | `theorem` | [equalizer_same](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/equalizer-same.md) | 389 | `result-track:04a5302a7391adf4805479ecd34f9bace53bade7b7b40cea1412e63787206f0d` |
| 67 | `theorem` | [eqOn_sup](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/eqon-sup.md) | 393 | `result-track:f9cfaf5ad4fe4524d08b5019605a6873438ca4a50e3a52e7adfe9a65a17ea149` |
| 68 | `theorem` | [ext_on_codisjoint](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/ext-on-codisjoint.md) | 398 | `result-track:56efc8fa10ab75515242d0227f0afdec19d28fcf9e2734fc06744a7019ce2d86` |
| 69 | `theorem` | [map_comap_eq](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/map-comap-eq.md) | 412 | `result-track:e7a2e65a1afbd5e3535051330b19385e641ba76bdb6522cdbc17c33ef9a0f0fa` |
| 70 | `theorem` | [map_comap_eq_self](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/map-comap-eq-self.md) | 415 | `result-track:ab2d977e94e4f4d25c29ff832ad46c2d55a100896eecff6706370ee18e194ffa` |
| 71 | `theorem` | [map_comap_eq_self_of_surjective](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/map-comap-eq-self-of-surjective.md) | 419 | `result-track:2a274a794075380fe630893d0937c97e0ad68becfb1acc280a183dc43e55dba9` |
| 72 | `def` | [saturation](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/saturation.md) | 436 | `declaration-track:7d83784304c0c989b89b02500e8a22e56f5dba3a9a30ff48a3098c1b1ad309cb` |
| 73 | `lemma` | [mem_saturation_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-saturation-iff.md) | 449 | `result-track:8d73f09a587a4a625dd5de3697a1f8d8c16a252d5e7be6ecb304145b5a22b98d` |
| 74 | `lemma` | [le_saturation](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/le-saturation.md) | 452 | `result-track:156b3374cdc28d254ef4181f2cd4ead711d746e110622a9a2e5fe24c9c7e96b1` |
| 75 | `lemma` | [saturation_saturation](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/saturation-saturation.md) | 455 | `result-track:def94476a4f97c835cf8e77e85f3fce1710327bee6993ea12d279e1e4da61596` |
| 76 | `lemma` | [mem_saturation_of_mul_mem_left](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-saturation-of-mul-mem-left.md) | 459 | `result-track:deec90334c28ad396968803d6381a6aefa2563cfe804123efa0b7c7a4d6e5005` |
| 77 | `lemma` | [mem_saturation_of_mul_mem_right](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-saturation-of-mul-mem-right.md) | 463 | `result-track:1d179b1d07e1faf977453123d714f952230a25f88119a2d2275cca8b12e1732e` |
| 78 | `macro_rules` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/macro-rules.md) | 487 | `declaration-track:3ac74e0d21c99863552b69f1868c4386d432a39cafd21bcf08aedd7113790f15` |
| 79 | `def` | [delabAdjoinNotation](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/delabadjoinnotation.md) | 496 | `declaration-track:89f810b529c49b910ae6a39173bb92217fc2a5dfe276cb8b6a1ebafda4a8c281` |
| 80 | `theorem` | [subset_adjoin](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/subset-adjoin.md) | 524 | `result-track:8a5490499a65e6bcffab5160b32febdda023933a9a95a18cea70ad97d88a12a3` |
| 81 | `theorem` | [mem_adjoin_of_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-adjoin-of-mem.md) | 528 | `result-track:d4aceb3676dd1e19ac4794416cc6356213129602a6895c686a521459fcf2f5c3` |
| 82 | `class` | [CoeAdjoinAux](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/coeadjoinaux.md) | 542 | `declaration-track:a5eded2429d3dfce358044717aee7e143b1fa9a2890f667fe8601549debbfb44` |
| 83 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 544 | `declaration-track:b3aa9d9202116c0fdbca05c652b7d8660ddef4f81bdf3ae710da122017dd32f5` |
| 84 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/instance.md) | 546 | `declaration-track:2f82cfb5e23340510dfa63950731eeedcb501e0cb243bb69361cfc4f21f9e3ec` |
| 85 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 548 | `declaration-track:83d74a74ca4a6e18eb387f48076a89d65cc29094c03af06ba62a00fed71fd91a` |
| 86 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 553 | `declaration-track:a82fe88ced51cda97a9490822d2f81e6132b14d7ea9b567fb39b569a40b5d327` |
| 87 | `theorem` | [adjoin_le](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-le.md) | 558 | `result-track:5413a924795d34feed8bab57f246a06e94a803d8a72d87703ff270b8021502c6` |
| 88 | `theorem` | [adjoin_singleton_le](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-singleton-le.md) | 561 | `result-track:ce0116990e857f1701f7d7d7a228a14d768d70a418a65dbee0987f8f248ce69c` |
| 89 | `theorem` | [adjoin_eq_sInf](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-eq-sinf.md) | 564 | `result-track:101d5f07bb800148d1114ee41f6229738d40245edd061aec51a4428e04117272` |
| 90 | `theorem` | [adjoin_le_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-le-iff.md) | 567 | `result-track:6a4439ac0d803ac1c0768b770df5218fa8b2af110da0fab05ad75cc93da58bdb` |
| 91 | `theorem` | [adjoin_mono](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-mono.md) | 571 | `result-track:43f0b3dbd66dd2fd4e9fa0e0b9b4630fc2c3225aabcb8b5cb9b27619031a2f13` |
| 92 | `theorem` | [adjoin_eq_of_le](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-eq-of-le.md) | 574 | `result-track:2714239ba78717dd35eda08891ae51a8e9a33835ad60b77522fd369ca2b8b776` |
| 93 | `theorem` | [adjoin_eq](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-eq.md) | 577 | `result-track:8ef10ec5d87ca9816de3bfbcc1eae67f06f310d3233776685ae4fd381d0f0f1d` |
| 94 | `theorem` | [adjoin_iUnion](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-iunion.md) | 580 | `result-track:688f1b22fef2af04209712ccfe117d3562ccf497772a79df7d49cb5f987095c9` |
| 95 | `theorem` | [adjoin_attach_biUnion](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-attach-biunion.md) | 584 | `result-track:bf71a1407eabda812b3b2ae04ae797359e5734ad835924e5560734f04c7758a9` |
| 96 | `theorem` | [adjoin_induction](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-induction-source-edition-2.md) | 588 | `result-track:3869f6b79f654bc7bceaf880ff37450272abeabac65fb2cef156bdd74ce000b7` |
| 97 | `theorem` | [adjoin_induction₂](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-induction.md) | 605 | `result-track:00a1aeca00dbfcc70765f19bff21d7e9f8558ff6eb464e9adae116c2ab3b1fe4` |
| 98 | `theorem` | [adjoin_adjoin_coe_preimage](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-adjoin-coe-preimage.md) | 635 | `result-track:6b23303459efe215cf4b68d3333734b25f6661bf95328c2675fca104ea096540` |
| 99 | `theorem` | [adjoin_union](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-union.md) | 643 | `result-track:e52b2d5f606482ad85cc8704144ba06bc163b6a81390ef358bcddcb818a223b2` |
| 100 | `theorem` | [adjoin_empty](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-empty.md) | 649 | `result-track:146e56091dd4d1693795f7d95d2d422d8b865f278418c5a595ce9a8313553108` |
| 101 | `theorem` | [adjoin_univ](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-univ.md) | 652 | `result-track:049b2c303460e8b41394b09b694676dce04ee8194abc6392c09297196b269913` |
| 102 | `theorem` | [adjoin_singleton_algebraMap](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-singleton-algebramap.md) | 656 | `result-track:d78ce571386d70c8fe8d9038aad9262e72533e91eba7f5b3da504090ba202a8c` |
| 103 | `theorem` | [adjoin_singleton_natCast](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-singleton-natcast.md) | 660 | `result-track:aeb93906004a8987532f380c28968a77db0599a94333a5519a491d94aa7373fb` |
| 104 | `theorem` | [adjoin_singleton_zero](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-singleton-zero.md) | 664 | `result-track:b00bfc55a054cbc289f8d6e6fb58dfcb3cb7ace57c4850dec440653769d432b4` |
| 105 | `theorem` | [adjoin_singleton_one](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-singleton-one.md) | 668 | `result-track:95e45186f671f17140c5e01545f8e7b1f8617bedb48492bdcf72ebb7cd5e35e0` |
| 106 | `theorem` | [adjoin_insert_algebraMap](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-insert-algebramap.md) | 675 | `result-track:6a50ed4e0dbfb51919690d5b4f1e19162fcb7fc0f57d719a5daf673b13f185b2` |
| 107 | `theorem` | [adjoin_insert_natCast](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-insert-natcast.md) | 681 | `result-track:14158cf6d9dd5d2d8ca71ebf351ede21f262825316a70898abc9b83411a5c1d1` |
| 108 | `theorem` | [adjoin_insert_zero](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-insert-zero.md) | 685 | `result-track:65335c68dc3f9b443aa89616c09cad3a13a009606b579ea6e69fa2dc154c2d46` |
| 109 | `theorem` | [adjoin_insert_one](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-insert-one.md) | 689 | `result-track:09fc18ec1607ea22aca32d7d18124b90f4118ab582c322efdde34c1abf4c7e83` |
| 110 | `theorem` | [adjoin_eq_span](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-eq-span.md) | 692 | `result-track:39d67f686c6923e49b27e9b378a8164e2469da233c3ffb152701a5478b1e0db1` |
| 111 | `theorem` | [span_le_adjoin](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/span-le-adjoin.md) | 725 | `result-track:a4c1ca804d00f54c4bc86e98e6e853141ca30d31a22d2bca15f7d5a0a2e8dd05` |
| 112 | `theorem` | [adjoin_toSubmodule_le](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-tosubmodule-le.md) | 728 | `result-track:4a5d8224a118928cc1a9d8c20af6c377e951f338317256cf5a476ff92a78eb06` |
| 113 | `theorem` | [adjoin_eq_span_of_subset](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-eq-span-of-subset.md) | 732 | `result-track:301e928f0d3df7feff1f27ca110fdc0d2224df9f2c990fd5464a56673cce1472` |
| 114 | `theorem` | [adjoin_span](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-span.md) | 737 | `result-track:251fd1c1c76733f51f895ee020e3616a2b7f941e091febe2bf42949cf7739127` |
| 115 | `theorem` | [adjoin_image](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-image.md) | 740 | `result-track:6abab810c77ef3c1dc4eb09427e93e0f7c378815f3cc46381eae5eb6f9622018` |
| 116 | `theorem` | [adjoin_insert_adjoin](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-insert-adjoin.md) | 744 | `result-track:87b797a21bb1f55ab67449062332e1749c8b842b64f07d570791260fa6810e77` |
| 117 | `theorem` | [mem_adjoin_of_map_mul](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-adjoin-of-map-mul.md) | 747 | `result-track:f9fd397cd216d6e85527aa05602c185fd3968d50b44bef592dbbdf5a0b0be1e9` |
| 118 | `lemma` | [adjoin_le_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-le-centralizer-centralizer.md) | 760 | `result-track:edc3419ff586e7390749204bc3f46bca9f8d5ce4201c02aed363ddc9ec642f5d` |
| 119 | `theorem` | [isMulCommutative_adjoin](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/ismulcommutative-adjoin.md) | 765 | `result-track:aec0db458af756eb8ed63122d560e84103f9b0bf1533e74fb69e0e78a1409382` |
| 120 | `instance` | [isMulCommutative_adjoin_singleton](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/ismulcommutative-adjoin-singleton.md) | 771 | `declaration-track:2cdb305db9dbad5b6ac692296e7ae0c087da3b170e9144cc2b69cf6ed240e71b` |
| 121 | `abbrev` | [adjoinCommSemiringOfComm](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoincommsemiringofcomm.md) | 781 | `declaration-track:d4db6f4dbe99a2b27edf0769872da8e00475af684a0d5221ac33490e0cd34ad2` |
| 122 | `instance` | [instIsMulCommutative_adjoin](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/instismulcommutative-adjoin.md) | 786 | `declaration-track:87ac41e09f83a71832bc5b14e636aadeaa993a59816e7b8da68246d7e888054a` |
| 123 | `lemma` | [commute_of_mem_adjoin_of_forall_mem_commute](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/commute-of-mem-adjoin-of-forall-mem-commute.md) | 792 | `result-track:807fc7f31670d0cab35c3472fcf7240520214fbc785baa20079d49b1842d256e` |
| 124 | `lemma` | [commute_of_mem_adjoin_singleton_of_commute](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/commute-of-mem-adjoin-singleton-of-commute.md) | 801 | `result-track:2c92a367f6525fce1cff296541502554c2828fcc73f398005932dd6b35e362b3` |
| 125 | `lemma` | [commute_of_mem_adjoin_self](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/commute-of-mem-adjoin-self.md) | 806 | `result-track:b3f0dc8ce318e79cc03c6f5fd94d2764cf935da164f951f2fff3cd0f6150e240` |
| 126 | `theorem` | [self_mem_adjoin_singleton](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/self-mem-adjoin-singleton.md) | 813 | `result-track:a5b2df02736707a4dc11251f80903f43a88c67d19a23156eae32ecc3c37ecb1f` |
| 127 | `theorem` | [adjoin_union_coe_submodule](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-union-coe-submodule.md) | 824 | `result-track:d8590607d2af484f1613270817e9165dff2aea2424e9ce55dbe77bcc4fc2e5b0` |
| 128 | `theorem` | [adjoin_singleton_intCast](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-singleton-intcast.md) | 838 | `result-track:d501bb4ac4b0caad69249083109320e2a37d724fcff182c2c7c2a2f7c5e176a3` |
| 129 | `theorem` | [adjoin_insert_intCast](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-insert-intcast.md) | 842 | `result-track:7c8894bec3f36eaf761f79a3d6134dd9cea036637185c19aa4f354329b517297` |
| 130 | `theorem` | [adjoin_eq_ring_closure](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-eq-ring-closure.md) | 845 | `result-track:d6e210d7a6268b71a8cfc06072e56d9cd12c77d4dcd7d65ba763c0d7f3e2adf1` |
| 131 | `theorem` | [mem_adjoin_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/mem-adjoin-iff.md) | 851 | `result-track:5e598b93af9b81bb2c5ede088ea2c90242ba1f7877f5aa42737308960d765ecd` |
| 132 | `abbrev` | [adjoinCommRingOfComm](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoincommringofcomm.md) | 861 | `declaration-track:fb1b7bde59a262e534706827fc25f82e9d302a260a747577acc59fab0220352d` |
| 133 | `theorem` | [map_adjoin](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/map-adjoin.md) | 876 | `result-track:35dafc7455ea261d8add41c42f6eb3bd7792ae373108ff659b0da7b6c9683e10` |
| 134 | `theorem` | [map_adjoin_singleton](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/map-adjoin-singleton.md) | 880 | `result-track:142951576f7925867875877be59cf2c610ec8546caa6e065eb3790572a0c4df6` |
| 135 | `theorem` | [adjoin_le_equalizer](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-le-equalizer.md) | 884 | `result-track:0a89f38c563cf3be823848571d284c5af1bd0e26750837edbad81fd9b6d0009f` |
| 136 | `theorem` | [ext_of_adjoin_eq_top](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/ext-of-adjoin-eq-top.md) | 888 | `result-track:d8f748cb47cebb5731ad40cf378139d3e9364588ce84b71e14a23c599a14490e` |
| 137 | `theorem` | [eqOn_adjoin_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/eqon-adjoin-iff.md) | 893 | `result-track:7a903092fc8caa486fcf384e0a576e953a94c16acc11f3206cb2248925f61a2b` |
| 138 | `theorem` | [adjoin_ext](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/adjoin-ext.md) | 898 | `result-track:a80b1d2d2d49d5741589688b34dbdc175c6fa243e2c2dbb789eca43baf481b2f` |
| 139 | `theorem` | [ext_of_eq_adjoin](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/ext-of-eq-adjoin.md) | 904 | `result-track:69dafa4f181402a12ff7eac10670daed1f85c51915eb00b8f480eb0447014222` |
| 140 | `theorem` | [Subalgebra Lattice Namespaced Public](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/forall-mem-adjoin-smul-eq-self-iff.md) | 909 | `result-track:907fad23c6a6137698d7fded47615073716cd300e67d95d7aa1d46701b85935e` |
| 141 | `theorem` | [Algebra.adjoin_nat](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/algebra-adjoin-nat.md) | 918 | `result-track:312af9c5703a59be78699d4457d4dbe827ebc34dabd3714c1d7b31e73b4abbc5` |
| 142 | `theorem` | [Algebra.adjoin_int](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/algebra-adjoin-int.md) | 923 | `result-track:52506fd7eae0a0f77b17a94a5f1db4c93abff0644522b0291bcd806c7b5d3bf6` |
| 143 | `def` | [Subsemiring.closureEquivAdjoinNat](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/subsemiring-closureequivadjoinnat.md) | 930 | `declaration-track:ed1344a3150b8dfca1718f584889a0587f557e6ade869beb114d0065a4c46020` |
| 144 | `def` | [Subring.closureEquivAdjoinInt](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/subring-closureequivadjoinint.md) | 936 | `declaration-track:5608236a1010259e0a1da41bd67696639889f90dd0ab1cb11f02f4f9048ebfe7` |
| 145 | `theorem` | [Submonoid.adjoin_eq_span_of_eq_span](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/submonoid-adjoin-eq-span-of-eq-span.md) | 948 | `result-track:526d5e0e080d375b5753b592b3c6ce8105effc797428f97baf3bd2468dd3b72d` |
| 146 | `theorem` | [Subalgebra.adjoin_eq_span_of_eq_span](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/subalgebra-adjoin-eq-span-of-eq-span.md) | 958 | `result-track:76c86958e2c81fe9390a7d3dc2bc8a8c73ed19be38182d58b8484e2ba3eb517e` |
| 147 | `lemma` | [NonUnitalAlgebra.adjoin_le_algebra_adjoin](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/nonunitalalgebra-adjoin-le-algebra-adjoin.md) | 967 | `result-track:e4e066d52f5f13cdb986930450e317338f3a9cb7a99ad3d4abf71c3ef46d0d40` |
| 148 | `lemma` | [Algebra.adjoin_nonUnitalSubalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/algebra-adjoin-nonunitalsubalgebra.md) | 970 | `result-track:9008bfe457aabaae7d3b9330ad7ee89e91a3ce71e1d2dfbdf7c3d7c9ae01cf2e` |
| 149 | `def` | [toNonUnitalSubalgebraOrderEmbedding](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/tononunitalsubalgebraorderembedding.md) | 985 | `declaration-track:a9532e1da755a6bd9cdb8cb1569b798c15a96f08ee578f50f505af2570f01c5e` |
| 150 | `lemma` | [toNonUnitalSubalgebra_le_toNonUnitalSubalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/tononunitalsubalgebra-le-tononunitalsubalgebra.md) | 991 | `result-track:c9a795113151d6c117991ca81fc0387152863f5cdcbc81ba2655e916fd40bd5a` |
| 151 | `theorem` | [comap_map_eq](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/comap-map-eq.md) | 1001 | `result-track:7797782edb2062bf48a1b2a376f817dba958e529ad5bffd51078def1657b1bc8` |
| 152 | `theorem` | [comap_map_eq_self](../../../../AssociativeRingsAndAlgebras/SubalgebraLatticeNamespacedPublic.lean/declarations/comap-map-eq-self.md) | 1016 | `result-track:e6a09f3026447b01b4ca6f351ec9f51cc9c457d1d5781db7db6c5c963989b31e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ce246498005200b6f265f3b53066220d6086475fd0370a2b17e4c9ff7780e0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean","GRWTSK/_verification/specifications/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: GRWTSK.Topology.MetricTopology.PicardLindelof.Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57187c188cb8d0269da55fb0ac05a6e8e581dcb5",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57187c188cb8d0269da55fb0ac05a6e8e581dcb5`.

Source path: `GRWTSK/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/macro-rules--7c69b97f72d6000b300604fc.md) | 37 | `declaration-track:7c69b97f72d6000b300604fc6117a66be23a37b464260d69df8bc647b35683e2` |
| 2 | `structure` | [IsPicardLindelof](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/ispicardlindelof--5321720ca34b285ea18ffe14.md) | 51 | `declaration-track:5321720ca34b285ea18ffe14b38e4ffaf3f96d733421711d4e72380d351ec300` |
| 3 | `structure` | [PicardLindelof](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/picardlindelof--fcc10cdffc5864980e5deca1.md) | 69 | `declaration-track:fcc10cdffc5864980e5deca12a1b2a3a81ce5a3f404d132c540649b687801daa` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/instance--5c02ba6e57037e451e049845.md) | 82 | `declaration-track:5c02ba6e57037e451e049845d7999f23549157d3303dacd96db227cdc2065a10` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/instance--fb587533462a532d1b4dd219.md) | 85 | `declaration-track:fb587533462a532d1b4dd21908aaafc21e9a8a3995deb21cee2a30df87e49ed4` |
| 6 | `theorem` | [tMin_le_tMax](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/tmin-le-tmax--7abc34dc6f14db8b21ffd1e5.md) | 94 | `result-track:7abc34dc6f14db8b21ffd1e51174f302f82a5fc9438557087131f9ba770fac38` |
| 7 | `theorem` | [nonempty_Icc](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/nonempty-icc--4f61fef2976f5894d2d67494.md) | 98 | `result-track:4f61fef2976f5894d2d67494682091e320aab973e3d9bad797f28a5a106c6adb` |
| 8 | `theorem` | [lipschitzOnWith](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/lipschitzonwith--e8886b1ea09f051a4caa73fc.md) | 102 | `result-track:e8886b1ea09f051a4caa73fc38e9daf40d279733d22c6172181d4f0dfbe63718` |
| 9 | `theorem` | [continuousOn](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/continuouson--00e85ae0e6b02553e1d42d50.md) | 107 | `result-track:00e85ae0e6b02553e1d42d508a8873b71b571f31a2e2b9788b8c82612e045947` |
| 10 | `theorem` | [norm_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/norm-le--42854bb02442cdd2f6ca4789.md) | 115 | `result-track:42854bb02442cdd2f6ca4789071c979bc7f7243f60ee8319df7da029368efe71` |
| 11 | `def` | [tDist](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/tdist--79aa4e14cc47ba0135501856.md) | 121 | `declaration-track:79aa4e14cc47ba01355018565990e16f6aeeaad600c8a18a872612ba87f6cbfe` |
| 12 | `theorem` | [tDist_nonneg](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/tdist-nonneg--28c471b61f023be3f773bf2e.md) | 125 | `result-track:28c471b61f023be3f773bf2eeece22a2dec16da9d2f2a6cc3ddfdbe3bfe35459` |
| 13 | `theorem` | [dist_t₀_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/dist-t-le--2120c2ee5ac40246822535f0.md) | 129 | `result-track:2120c2ee5ac40246822535f029ccad70b7473eca95a13b5150004ab629ce4931` |
| 14 | `def` | [proj](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/proj--e88a97285c327d7ea6851930.md) | 140 | `declaration-track:e88a97285c327d7ea6851930fe746ac22a6d9c24bc32f571a079ec6364076b0a` |
| 15 | `theorem` | [proj_coe](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/proj-coe--0a538170bd65619263c4dcf5.md) | 144 | `result-track:0a538170bd65619263c4dcf52584d1f1299436ba55f40fa7f5958f66dabd8ab5` |
| 16 | `theorem` | [proj_of_mem](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/proj-of-mem--51e9bc6717d9cfcb2020abd4.md) | 148 | `result-track:51e9bc6717d9cfcb2020abd415092e547d5de5a8c5d6e5aa98d3904b355e676e` |
| 17 | `theorem` | [continuous_proj](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/continuous-proj--ade043dc2067f96737bf0627.md) | 153 | `result-track:ade043dc2067f96737bf0627dc3a5d1789b10c6cb553c3c380fadb04532f01e5` |
| 18 | `structure` | [FunSpace](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/funspace--997278ae6451367d8051df64.md) | 161 | `declaration-track:997278ae6451367d8051df64249e35eb32bb1913b22edcb60ad3067005c26631` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/instance--b8baf3a00968d114f022fde0.md) | 171 | `declaration-track:b8baf3a00968d114f022fde006ac4819595fa3a8edf01f24fc4f50d323e246fd` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/instance--ab85a9316e2fbcb2974160c0.md) | 174 | `declaration-track:ab85a9316e2fbcb2974160c0f5a4ce26300f202c02e422af7c0aa0c3302ce775` |
| 21 | `theorem` | [lipschitz](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/lipschitz--a4fe0ad12a54ac790546cd98.md) | 177 | `result-track:a4fe0ad12a54ac790546cd98549e3f85a0c559eb1c872a442a4341f6b48b5059` |
| 22 | `theorem` | [continuous](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/continuous--b8e5dd9f56d2eb37b1b8716a.md) | 181 | `result-track:b8e5dd9f56d2eb37b1b8716ab5662f1b20eda205d555f8e00778d7bb8c9df831` |
| 23 | `def` | [toContinuousMap](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/tocontinuousmap--530e54e94a09af16fcc0d4c3.md) | 186 | `declaration-track:530e54e94a09af16fcc0d4c3dd49f877197604a3e3b65e3d343e254a57077bca` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/instance--5377e1e250890c8a267d51c6.md) | 190 | `declaration-track:5377e1e250890c8a267d51c64dc3160266b96573cb24fecdee176a953755cdec` |
| 25 | `theorem` | [uniformInducing_toContinuousMap](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/uniforminducing-tocontinuousmap--a48372c637f963d9fb2c195c.md) | 193 | `result-track:a48372c637f963d9fb2c195ce2a4fcc536c75d275a0c54a881a5846dba1f41ca` |
| 26 | `theorem` | [range_toContinuousMap](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/range-tocontinuousmap--2871e242bc380408c3375c00.md) | 197 | `result-track:2871e242bc380408c3375c00c96db819d8264cd99bbcdcb2ec3efe60a2655946` |
| 27 | `theorem` | [map_t₀](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/map-t--543e0e664fd098bec1fa6140.md) | 205 | `result-track:543e0e664fd098bec1fa6140c0c5dd0370ee2709c3b03a95d5a6e8062898d30b` |
| 28 | `theorem` | [mem_closedBall](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/mem-closedball--09c914466e8f391f348c989b.md) | 209 | `result-track:09c914466e8f391f348c989b98af18e3a8486257150a3ce9ef2ac474456fcdda` |
| 29 | `def` | [vComp](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/vcomp--cd3de523230af08523786832.md) | 220 | `declaration-track:cd3de523230af0852378683234664d89d10bf99d8640ab2a958cf293d7dbc5d2` |
| 30 | `theorem` | [vComp_apply_coe](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/vcomp-apply-coe--f4e3b2ef6385c14356b689bf.md) | 224 | `result-track:f4e3b2ef6385c14356b689bf6703b12d5f3ed72ca01ec3680e139ccc04307307` |
| 31 | `theorem` | [continuous_vComp](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/continuous-vcomp--f89f7d9c1dd0f6d959aa599e.md) | 228 | `result-track:f89f7d9c1dd0f6d959aa599ef2ba3bb81f401022e7a5a0489c4f6b60675f051d` |
| 32 | `theorem` | [norm_vComp_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/norm-vcomp-le--f80214887915ff0ebe0fa12f.md) | 234 | `result-track:f80214887915ff0ebe0fa12f9a475fc90e72138bafd2f075df70a4026e941e8c` |
| 33 | `theorem` | [dist_apply_le_dist](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/dist-apply-le-dist--963119d67813fb4c65b0b762.md) | 238 | `result-track:963119d67813fb4c65b0b762621cd971f1d330bd9046913dc6eb99e6b3d2fa7c` |
| 34 | `theorem` | [dist_le_of_forall](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/dist-le-of-forall--53e94e2e946dff62d1bb8838.md) | 243 | `result-track:53e94e2e946dff62d1bb8838307a7478a8657ae4728e7a5ad040c61c151746c0` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/instance--512ad9aeac590f6ea14c46b0.md) | 249 | `declaration-track:512ad9aeac590f6ea14c46b02c1ff1933304409781ee87346e8bb1014d958e7e` |
| 36 | `theorem` | [intervalIntegrable_vComp](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/intervalintegrable-vcomp--d788d5879f01fc64ae8cb8fe.md) | 258 | `result-track:d788d5879f01fc64ae8cb8fe66312c91017249c3edc5cf635f63412182e39213` |
| 37 | `def` | [next](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/next--1886567984fc06218d747264.md) | 268 | `declaration-track:1886567984fc06218d74726465a1f1ed5a658bf395b8a62ec966b8776833d6ba` |
| 38 | `theorem` | [next_apply](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/next-apply--f3d7767112d16176244adeb6.md) | 277 | `result-track:f3d7767112d16176244adeb6316d02bcadf713013101d3b892427522a421b369` |
| 39 | `theorem` | [hasDerivWithinAt_next](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/hasderivwithinat-next--6c5fefa5b600e504b4c2ccce.md) | 281 | `result-track:6c5fefa5b600e504b4c2ccce67607644ad2e66a99782e8c796387b2ad97afc05` |
| 40 | `theorem` | [dist_next_apply_le_of_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/dist-next-apply-le-of-le--47f18327ac480fd0bcb9b7e3.md) | 296 | `result-track:47f18327ac480fd0bcb9b7e34d9edef7fc308d75827af1f09a340b1c8809b2b5` |
| 41 | `theorem` | [dist_iterate_next_apply_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/dist-iterate-next-apply-le--2ccdca3e3d0d825168094bcb.md) | 322 | `result-track:2ccdca3e3d0d825168094bcb93552a0a5352f27bf863adc3edb78e343341b25f` |
| 42 | `theorem` | [dist_iterate_next_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/dist-iterate-next-le--5500314adbfc51ba49afcc1f.md) | 331 | `result-track:5500314adbfc51ba49afcc1ffd916c536dd58a5714ec550f1c2cfc3108187cf9` |
| 43 | `theorem` | [exists_contracting_iterate](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/exists-contracting-iterate--d84d92eac13a8aaf5df3c3c7.md) | 344 | `result-track:d84d92eac13a8aaf5df3c3c7d675a23c75bd6c26e0ad306c71f8d9662153b764` |
| 44 | `theorem` | [exists_fixed](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/exists-fixed--fd6b0ce8bd03ed0ef2b7cc96.md) | 354 | `result-track:fd6b0ce8bd03ed0ef2b7cc96e6687b8894109094ecf8e1fb62e407d83dfdf1d6` |
| 45 | `theorem` | [exists_solution](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/exists-solution--8a15b3478cd4dd168a322bff.md) | 363 | `result-track:8a15b3478cd4dd168a322bff8b17f47bee1efe87b738c61af355f2df6b1e6dff` |
| 46 | `theorem` | [IsPicardLindelof.norm_le₀](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/ispicardlindelof-norm-le--09b4d819ac1c7b28840ba6e2.md) | 376 | `result-track:09b4d819ac1c7b28840ba6e2a210c7f6ceb7c5edacdd2c95d7ebb76532ca5095` |
| 47 | `theorem` | [IsPicardLindelof.exists_forall_hasDerivWithinAt_Icc_eq](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/ispicardlindelof-exists-forall-hasderivwithinat-icc-eq--4ea966a1ccf66a0133036d45.md) | 383 | `result-track:4ea966a1ccf66a0133036d4545319a23cdc060e3068cea129878117a4f93080d` |
| 48 | `theorem` | [exists_isPicardLindelof_const_of_contDiffOn_nhds](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/exists-ispicardlindelof-const-of-contdiffon-nhds--bc0cf71355190fd5c9361941.md) | 398 | `result-track:bc0cf71355190fd5c9361941db33b4ef774cffc4c739f12d7486b0c7ab6344a1` |
| 49 | `theorem` | [exists_forall_deriv_at_Ioo_eq_of_contDiffOn_nhds](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/exists-forall-deriv-at-ioo-eq-of-contdiffon-nhds--8bb9a10a5865b8db03f1ad2a.md) | 437 | `result-track:8bb9a10a5865b8db03f1ad2a0c07c38d0a7bf836e77dbd81414d58d385063837` |
| 50 | `theorem` | [exists_forall_hasDerivAt_Ioo_eq_of_contDiff](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/declarations/exists-forall-hasderivat-ioo-eq-of-contdiff--41da9c82222afdbd856948d1.md) | 463 | `result-track:41da9c82222afdbd856948d1c1f21fc4404e0e9ea740a8eac46697b257300388` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

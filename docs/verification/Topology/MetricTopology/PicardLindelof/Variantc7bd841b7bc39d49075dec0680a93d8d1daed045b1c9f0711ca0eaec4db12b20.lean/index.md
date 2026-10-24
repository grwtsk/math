# Verification target: GRWTSK.Topology.MetricTopology.PicardLindelof.Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "453afc79087439710666327a609f0f22e9a6d64c",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `453afc79087439710666327a609f0f22e9a6d64c`.

Source path: `GRWTSK/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/macro-rules--28c3fbe70b8ddebcfb4e3415.md) | 45 | `declaration-track:28c3fbe70b8ddebcfb4e3415679e037231bbe9e4ceb9845d6fb76c78c22e0989` |
| 2 | `structure` | [IsPicardLindelof](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/ispicardlindelof--b46aba1c5259329e1878ad40.md) | 59 | `declaration-track:b46aba1c5259329e1878ad406ec2411519576ed42cfd6704ff4ff390c2af2cae` |
| 3 | `structure` | [PicardLindelof](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/picardlindelof--b9836756c54757a29842f429.md) | 77 | `declaration-track:b9836756c54757a29842f4292ff269537ce9801fb765edd51f24550f26a0f3e4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/instance--fa7238c4eaec75b851bed553.md) | 90 | `declaration-track:fa7238c4eaec75b851bed553f98d93e90400b07a22450220ac07a1dbe354b937` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/instance--e81829fb76493fbc6a389bf2.md) | 93 | `declaration-track:e81829fb76493fbc6a389bf2ce1917954c3e4fd5ebaa38b618582a5ae8e80a6b` |
| 6 | `theorem` | [tMin_le_tMax](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/tmin-le-tmax--4964cbcf2385dfae85302d4a.md) | 102 | `result-track:4964cbcf2385dfae85302d4aa2229aa57766a0519ddaf75cb43d1583920bcc46` |
| 7 | `theorem` | [nonempty_Icc](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/nonempty-icc--0409510e83f571b5397b155d.md) | 106 | `result-track:0409510e83f571b5397b155db79fa758b3f8d07f556b3c870caa75caf771e54b` |
| 8 | `theorem` | [lipschitzOnWith](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/lipschitzonwith--772f7abb0f45acde337ac751.md) | 110 | `result-track:772f7abb0f45acde337ac751be3c90722353acd5df2e17660cca77fbcabc614b` |
| 9 | `theorem` | [continuousOn](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/continuouson--611b4e026cd9669660e85303.md) | 115 | `result-track:611b4e026cd9669660e85303b7300c4c7471a936a9f928a3c1044d7b6a40e7d6` |
| 10 | `theorem` | [norm_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/norm-le--c3f29064a6594749c98b7b4f.md) | 123 | `result-track:c3f29064a6594749c98b7b4fbfbb0c8a6c040a1d1be63dfac29eb5369e511edc` |
| 11 | `def` | [tDist](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/tdist--0e9bdc9a89512d34b3b12cb5.md) | 129 | `declaration-track:0e9bdc9a89512d34b3b12cb5fa3a39381e380d3aeb617fa2be10af2afb7cc240` |
| 12 | `theorem` | [tDist_nonneg](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/tdist-nonneg--f591931773620b01ea904770.md) | 133 | `result-track:f591931773620b01ea904770ff6d2a91c805687ff9798937c7cd2e7abe994248` |
| 13 | `theorem` | [dist_t₀_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/dist-t-le--4f05308cc63c460d47e5c270.md) | 137 | `result-track:4f05308cc63c460d47e5c270c2ed11cc9c9ec72902f4bc58cfbf33d62fbb6204` |
| 14 | `def` | [proj](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/proj--0bd4e4b351982ca9b7eac81a.md) | 148 | `declaration-track:0bd4e4b351982ca9b7eac81a3183bdd9b1fa7a46396e40147113788853dbbdce` |
| 15 | `theorem` | [proj_coe](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/proj-coe--5b8c5c8706d8e3d5a1f469e8.md) | 152 | `result-track:5b8c5c8706d8e3d5a1f469e8440ff9ffdfd8b7a6df48d7724b72f19a80d375bf` |
| 16 | `theorem` | [proj_of_mem](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/proj-of-mem--cde93e8687ccbfacc9095186.md) | 156 | `result-track:cde93e8687ccbfacc90951863a40614eed1740192b5bd26d62f2a9eccba9d96f` |
| 17 | `theorem` | [continuous_proj](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/continuous-proj--cbc1745b59114bbb8fee1f48.md) | 161 | `result-track:cbc1745b59114bbb8fee1f489220984d2fb10c7753e1415137888ced5916c8e1` |
| 18 | `structure` | [FunSpace](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/funspace--dee20ce992e5a6ef634acfc7.md) | 169 | `declaration-track:dee20ce992e5a6ef634acfc72e23d2e2d35aac7c0beb75754534831c458062cf` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/instance--63deaa037970bddf542415f7.md) | 179 | `declaration-track:63deaa037970bddf542415f7724ccbe3ecc8c98ca1e80338964fa2237f8d8f04` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/instance--682da9bab96386bae73f7f41.md) | 182 | `declaration-track:682da9bab96386bae73f7f41bf5930c137c7526a247c0f2a37e3e92f051f7f5e` |
| 21 | `theorem` | [lipschitz](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/lipschitz--a4d06b4c9c97e3895c86442b.md) | 185 | `result-track:a4d06b4c9c97e3895c86442b5b7aa2c828ba4f099a7f33d3e86d4d8acd0547b0` |
| 22 | `theorem` | [continuous](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/continuous--0d0020faceebfe8db2686ed1.md) | 189 | `result-track:0d0020faceebfe8db2686ed164bc18a218f73d7a1a42c191337ec0a678847bbe` |
| 23 | `def` | [toContinuousMap](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/tocontinuousmap--541ed1c27d22d5735f283a49.md) | 194 | `declaration-track:541ed1c27d22d5735f283a49c933f9a51c09111f00252e074bfde8098cc767ab` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/instance--2e149199b6912b0f2671b997.md) | 198 | `declaration-track:2e149199b6912b0f2671b9978aac4f4a344cb638223794bc8bda9856864fb1d2` |
| 25 | `theorem` | [uniformInducing_toContinuousMap](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/uniforminducing-tocontinuousmap--1ac3501d3a25b0ab7a2d40e3.md) | 201 | `result-track:1ac3501d3a25b0ab7a2d40e34f2bf2ac436cf53f986f9e1dd16dffa6edd9a571` |
| 26 | `theorem` | [range_toContinuousMap](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/range-tocontinuousmap--d43c2370958183e3d728b85e.md) | 205 | `result-track:d43c2370958183e3d728b85e3421157e6371ef11703a6c101e50c84f44bfbde9` |
| 27 | `theorem` | [map_t₀](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/map-t--7b413f159d3e83ece228e6e5.md) | 213 | `result-track:7b413f159d3e83ece228e6e5b2ed37cde2e43b3558f059711c779fa1f6280698` |
| 28 | `theorem` | [mem_closedBall](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/mem-closedball--a32fb8c208fe64cff1cc95d4.md) | 217 | `result-track:a32fb8c208fe64cff1cc95d4310580333e1d666507af3acd9557229b6cb81da1` |
| 29 | `def` | [vComp](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/vcomp--1bdb029a7119a1b592adde9c.md) | 228 | `declaration-track:1bdb029a7119a1b592adde9c40306e7c3991db1fd04b4fd21baad6ac66bbbccd` |
| 30 | `theorem` | [vComp_apply_coe](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/vcomp-apply-coe--b6547f5830d1109e7e814115.md) | 232 | `result-track:b6547f5830d1109e7e8141155b5c0e45d1635a546bb745f50e7c14d87628d470` |
| 31 | `theorem` | [continuous_vComp](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/continuous-vcomp--05b214bbda1e53417c33d440.md) | 236 | `result-track:05b214bbda1e53417c33d4407cfdb90287ea4b02bebc6851a3328c1566883726` |
| 32 | `theorem` | [norm_vComp_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/norm-vcomp-le--8e50fa78375fe4173a6611b3.md) | 242 | `result-track:8e50fa78375fe4173a6611b34fe16a4b24f017f8f5a4c92aa2f262472855fa74` |
| 33 | `theorem` | [dist_apply_le_dist](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/dist-apply-le-dist--02ea8d314448515c088235c9.md) | 246 | `result-track:02ea8d314448515c088235c91d0cc781d2e21a7cd55702ca1ef7d5a150152994` |
| 34 | `theorem` | [dist_le_of_forall](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/dist-le-of-forall--f0824c049e0b3af3abaee374.md) | 251 | `result-track:f0824c049e0b3af3abaee374114ba55cc71078896da969866857d2558961d999` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/instance--8d56c64c1c3b50f4e3c814fa.md) | 257 | `declaration-track:8d56c64c1c3b50f4e3c814fa8e827950300a29bd79b4a712c1db0e9b285cd957` |
| 36 | `theorem` | [intervalIntegrable_vComp](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/intervalintegrable-vcomp--61e920817c55fdcb9f05bc88.md) | 266 | `result-track:61e920817c55fdcb9f05bc88b53a70b10f9686d80272d747777c3f33df9a9c15` |
| 37 | `def` | [next](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/next--aa8726031c20eef220df24f4.md) | 276 | `declaration-track:aa8726031c20eef220df24f4909c8b0005813f92e829f7bc8812d0198ce1c05d` |
| 38 | `theorem` | [next_apply](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/next-apply--b28fb9d2bb8f96c8596f61cb.md) | 285 | `result-track:b28fb9d2bb8f96c8596f61cbe98655ba246201a608d4cd2bc471783e749d22c0` |
| 39 | `theorem` | [hasDerivWithinAt_next](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/hasderivwithinat-next--79545386b8706a9a917da374.md) | 289 | `result-track:79545386b8706a9a917da374ad5ceb483fb4161bc0a9eb1ff46169426bce4562` |
| 40 | `theorem` | [dist_next_apply_le_of_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/dist-next-apply-le-of-le--9fa501a73a434b2151a78e68.md) | 304 | `result-track:9fa501a73a434b2151a78e682c02694ad0b74163c912dd8ca69ed9a859d85a7d` |
| 41 | `theorem` | [dist_iterate_next_apply_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/dist-iterate-next-apply-le--b07503886b717ca32708e50b.md) | 330 | `result-track:b07503886b717ca32708e50bcb47698b07f80bdf58975813a5faa6254bbe1301` |
| 42 | `theorem` | [dist_iterate_next_le](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/dist-iterate-next-le--986b0b55305a4e9039ff4531.md) | 339 | `result-track:986b0b55305a4e9039ff45316ce648fa5424f1289bc0a31cb6867a26ce780ca4` |
| 43 | `theorem` | [exists_contracting_iterate](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/exists-contracting-iterate--9895e6cc4ff1e79eb145e719.md) | 352 | `result-track:9895e6cc4ff1e79eb145e7192a0308ce724651b249f0ab69341d73cd2edc9ca5` |
| 44 | `theorem` | [exists_fixed](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/exists-fixed--9a71ea4a27837288dcd1c6a6.md) | 362 | `result-track:9a71ea4a27837288dcd1c6a63fb3479465fdefe10b5de2c7bcd3841e7b06d0d1` |
| 45 | `theorem` | [exists_solution](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/exists-solution--234b32a1e0139d8ff57f090d.md) | 371 | `result-track:234b32a1e0139d8ff57f090df11e10ee3febb6360f30279d1de63ddb6f961b5b` |
| 46 | `theorem` | [IsPicardLindelof.norm_le₀](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/ispicardlindelof-norm-le--1b8b40455839679a45ca8caf.md) | 384 | `result-track:1b8b40455839679a45ca8cafdc8f1dfd7b274f777cd86ff876b2b34594873506` |
| 47 | `theorem` | [IsPicardLindelof.exists_forall_hasDerivWithinAt_Icc_eq](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/ispicardlindelof-exists-forall-hasderivwithinat-icc-eq--96b1fdb0e3fae95a060e16e4.md) | 391 | `result-track:96b1fdb0e3fae95a060e16e47ae33fdf75d62082b25ae9f3ff026159b824366f` |
| 48 | `theorem` | [exists_isPicardLindelof_const_of_contDiffOn_nhds](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/exists-ispicardlindelof-const-of-contdiffon-nhds--3e5998e3846bd2b017706bdd.md) | 406 | `result-track:3e5998e3846bd2b017706bdd774738373670e6b3f465189a8a20e19f5511ab90` |
| 49 | `theorem` | [exists_forall_deriv_at_Ioo_eq_of_contDiffOn_nhds](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/exists-forall-deriv-at-ioo-eq-of-contdiffon-nhds--9aaeb71b1832f6285f2a3e3a.md) | 445 | `result-track:9aaeb71b1832f6285f2a3e3a39e804fa74258f72a2adbec4ba811776085e6406` |
| 50 | `theorem` | [exists_forall_hasDerivAt_Ioo_eq_of_contDiff](../../../../../mathematics/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/declarations/exists-forall-hasderivat-ioo-eq-of-contdiff--7e4967800dc1b53e1867e929.md) | 471 | `result-track:7e4967800dc1b53e1867e929da10e3e2f36661cad65e9ee6e7d6d5ba427b76d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

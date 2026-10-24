# Verification target: GRWTSK.Topology.GeneralTopology.SorgenfreyLine.Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b167425ffbeb3679fb09554f7bfa7fed9109a156",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b167425ffbeb3679fb09554f7bfa7fed9109a156`.

Source path: `GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Irrational` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Paracompact` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Metrizable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Paracompact` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Monotone` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.NotNormal` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SorgenfreyLine](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/sorgenfreyline--fd79fdd585c39691d96a74bd.md) | 55 | `declaration-track:fd79fdd585c39691d96a74bd7ab2921da64f63ec0c082ec0111a0365efdfadce` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--25f43068fe5f9699534d4646.md) | 62 | `declaration-track:25f43068fe5f9699534d4646cdd0d838eb0cbd033dd99bc69cf92a820dc03b49` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--4ac2065d86c694980e0c7416.md) | 65 | `declaration-track:4ac2065d86c694980e0c7416e67e7c3ba0d52f857c6ffdf948306c1a0c9b05e1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--c364083e0f5afc47d7787095.md) | 67 | `declaration-track:c364083e0f5afc47d77870955b4b928176de5b06fe49951abc7deb71deb895a0` |
| 5 | `def` | [toReal](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/toreal--0c6ac598730f58c12003f823.md) | 72 | `declaration-track:0c6ac598730f58c12003f823acc463e1ef1c5ccdfd753293c50fc4b0f0ab2839` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--bf29bbf4de1aad0abcb7e0c4.md) | 76 | `declaration-track:bf29bbf4de1aad0abcb7e0c457af728d944d3b169f190fdbc8cae426c8113b33` |
| 7 | `theorem` | [isOpen_Ico](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isopen-ico--f52dedf86cb701f69a3d1924.md) | 79 | `result-track:f52dedf86cb701f69a3d1924e97f676f6071a2e56987e5e78ad4dd81909fae4c` |
| 8 | `theorem` | [isOpen_Ici](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isopen-ici--19d472adb515a589fd49882a.md) | 83 | `result-track:19d472adb515a589fd49882a24c7781c8485b664eb297531f6934337931211fe` |
| 9 | `theorem` | [nhds_basis_Ico](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/nhds-basis-ico--8ad95ea01ac5542d9761a2cb.md) | 87 | `result-track:8ad95ea01ac5542d9761a2cb264d34ee5c875ab440db200503990bb463579a23` |
| 10 | `theorem` | [nhds_basis_Ico_rat](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/nhds-basis-ico-rat--204b468e8838a9a62d276457.md) | 102 | `result-track:204b468e8838a9a62d276457f75b541524444d2594bb8dc59ed64bae3716af9e` |
| 11 | `theorem` | [nhds_basis_Ico_inv_pnat](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/nhds-basis-ico-inv-pnat--a2243f582c2f39d8a2765f67.md) | 110 | `result-track:a2243f582c2f39d8a2765f675f66346a2fc5d2b06500835b5a7eefdfa959e735` |
| 12 | `theorem` | [nhds_countable_basis_Ico_inv_pnat](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/nhds-countable-basis-ico-inv-pnat--34d640be43a4c0c67c53633b.md) | 120 | `result-track:34d640be43a4c0c67c53633b046b4783f02121eb85c0c116cdb433f036f0882a` |
| 13 | `theorem` | [nhds_antitone_basis_Ico_inv_pnat](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/nhds-antitone-basis-ico-inv-pnat--86c7dd15adc126b273af23cd.md) | 125 | `result-track:86c7dd15adc126b273af23cdd44ecb480685dc7658aeff9371840001cab277f2` |
| 14 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isopen-iff--cc98f83bbfcfda534611f53a.md) | 132 | `result-track:cc98f83bbfcfda534611f53a26f66f936a3258f2f74d04ae98c3f3c7d9415174` |
| 15 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isclosed-iff--02f286b3713b121e4dfaca82.md) | 136 | `result-track:02f286b3713b121e4dfaca8235dba45e41af71f48932e5688b25a8e33da4d358` |
| 16 | `theorem` | [exists_Ico_disjoint_closed](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/exists-ico-disjoint-closed--fe2df1b2d4cd13413d24dbe8.md) | 140 | `result-track:fe2df1b2d4cd13413d24dbe8700c9891079ab7641858a7bd75b07d8d9fec0670` |
| 17 | `theorem` | [map_toReal_nhds](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/map-toreal-nhds--62c7079b1f91a26704b5daeb.md) | 146 | `result-track:62c7079b1f91a26704b5daeb1cfb1682b0d353b06efe5b6c8e74e7fba165df21` |
| 18 | `theorem` | [nhds_eq_map](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/nhds-eq-map--a27fa53b114590e96268827d.md) | 151 | `result-track:a27fa53b114590e96268827d7d47c35955b39b4991d4e494015f47f22573ee57` |
| 19 | `theorem` | [nhds_eq_comap](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/nhds-eq-comap--30067bad3b768ac5ba42efd6.md) | 155 | `result-track:30067bad3b768ac5ba42efd6cbc5470877a8168dde4dd76a6d84035ce2a8a995` |
| 20 | `theorem` | [continuous_toReal](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/continuous-toreal--23ba71870daa06082c95fd91.md) | 160 | `result-track:23ba71870daa06082c95fd912eff99d1aba43a1fa9b66cac2f9e8e973d32a05d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--c6b95dbf02b80ba0b33cd5fa.md) | 166 | `declaration-track:c6b95dbf02b80ba0b33cd5fa1cf7a0dc7a932980b658725431b964ccc31840d4` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--bcf75aa978da40c767019abd.md) | 169 | `declaration-track:bcf75aa978da40c767019abd3e11112e62a2bc11c02daf9152798fbe9cb12d3b` |
| 23 | `theorem` | [isClopen_Ici](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isclopen-ici--7cf43823bc7efdde07e0ba09.md) | 176 | `result-track:7cf43823bc7efdde07e0ba093c7c379d7b0cb4b6dcb72fe4cdb5c97a0c7a5b04` |
| 24 | `theorem` | [isClopen_Iio](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isclopen-iio--b998c2a3edfcc0bb364b63f8.md) | 180 | `result-track:b998c2a3edfcc0bb364b63f8f2d7e3c0d4433f24db1277a57d5c43f6c950a63b` |
| 25 | `theorem` | [isClopen_Ico](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isclopen-ico--b9a6d495a5dacaeab8b12517.md) | 184 | `result-track:b9a6d495a5dacaeab8b125178dabd2edafc1776bbd65f13b7bb25f50e85b4faf` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--eb7f6567ac550380436cc1d1.md) | 188 | `declaration-track:eb7f6567ac550380436cc1d1e86525f604f537e8ba8992b264a9ac7b483c57da` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--8f4480d7c44e94d71e9efa63.md) | 193 | `declaration-track:8f4480d7c44e94d71e9efa633fee13767578672a4494ff6b6cb703fe81db954c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--4973ac56c75ee6eb0d4ae9ee.md) | 197 | `declaration-track:4973ac56c75ee6eb0d4ae9ee40acf7ac3b2ab726cd29c35e8b14d5260ba10b5d` |
| 29 | `theorem` | [denseRange_coe_rat](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/denserange-coe-rat--fbc978b761b0747cab71ee71.md) | 225 | `result-track:fbc978b761b0747cab71ee710b3301d45cedebc11e0bbbc91d3d279970fae872` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--cd45ddf4cd1c43e0f96d5e8e.md) | 233 | `declaration-track:cd45ddf4cd1c43e0f96d5e8e01dd7c1ea257f76065d1676ffd19ef0eb7db6820` |
| 31 | `theorem` | [isClosed_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isclosed-antidiagonal--4b9ce1efefd796bffa6582a2.md) | 236 | `result-track:4b9ce1efefd796bffa6582a208e740e0e32b067b8d3deec22697bb9171fe9673` |
| 32 | `theorem` | [isClopen_Ici_prod](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isclopen-ici-prod--955d723c0bb2bf76ef97e93c.md) | 240 | `result-track:955d723c0bb2bf76ef97e93c706e6b413ebd636f0d431928e0ff52591ed06bdc` |
| 33 | `theorem` | [cardinal_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/cardinal-antidiagonal--76b2d734bda816c46e146f12.md) | 244 | `result-track:76b2d734bda816c46e146f1221136eee3fd6a2d4a9ce32efda3da5c4a56efdbb` |
| 34 | `theorem` | [isClosed_of_subset_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isclosed-of-subset-antidiagonal--4c0b275c63460e99bbf535df.md) | 251 | `result-track:4c0b275c63460e99bbf535df0dee1176d5acad74878b0322bf1bbe2a0e98e898` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/instance--f5918ba08f538d78eca4f343.md) | 268 | `declaration-track:f5918ba08f538d78eca4f3437b0f7c5579ae3ed2ef5e6e42d75c0cfc0b372755` |
| 36 | `theorem` | [not_normalSpace_prod](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/not-normalspace-prod--f642777247aaecc8e87cb430.md) | 274 | `result-track:f642777247aaecc8e87cb430d8b100f698f33ebd6d4d96e91605c65046d87d52` |
| 37 | `theorem` | [isSeparable_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/isseparable-antidiagonal--a51bf97c04e48d6b1bd1128a.md) | 279 | `result-track:a51bf97c04e48d6b1bd1128ac47fa21c804873933bc6bd46721adb398d272d74` |
| 38 | `theorem` | [not_separableSpace_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/not-separablespace-antidiagonal--cb6d1de4c6e7ac41ee25f741.md) | 283 | `result-track:cb6d1de4c6e7ac41ee25f7416a772e92b90d395cb24fb1af1582b46a2bfc8c61` |
| 39 | `theorem` | [nhds_prod_antitone_basis_inv_pnat](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/nhds-prod-antitone-basis-inv-pnat--78c13f4b457234da0fbf1c8c.md) | 288 | `result-track:78c13f4b457234da0fbf1c8c64b473d51bf905b8739432efea72c7f3dbe4e793` |
| 40 | `theorem` | [not_separatedNhds_rat_irrational_antidiag](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/not-separatednhds-rat-irrational-antidiag--89226addc82f7b0f67f2c2b8.md) | 296 | `result-track:89226addc82f7b0f67f2c2b88539484e9bb2b89b3b7a7eb0eb2e8a774b31330d` |
| 41 | `theorem` | [not_metrizableSpace](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/not-metrizablespace--ec9b09c855df4c10fe894ed4.md) | 350 | `result-track:ec9b09c855df4c10fe894ed4961928107178b8f61bd8ac0e509aaf6be30fcbc6` |
| 42 | `theorem` | [not_secondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/declarations/not-secondcountabletopology--43b2f82d226ffe931422c9a2.md) | 357 | `result-track:43b2f82d226ffe931422c9a2793b75ec67ea6ee3ff8fc1e6353fcf735446e9f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

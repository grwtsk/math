# Verification target: Bounded Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7b18a2f76582351c69ec6bcf0f9c21e4df7bce5",
  "lexical_observation_count": 115,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BoundedBasic.lean/index.md) · [Full source](../../../../GeneralTopology/BoundedBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7b18a2f76582351c69ec6bcf0f9c21e4df7bce5`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.BoundedOperation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundedContinuousFunction](../../../../GeneralTopology/BoundedBasic.lean/declarations/boundedcontinuousfunction.md) | 35 | `declaration-track:66d56fc50202ba6d9f3d85592a1085748b68ea29bae0f4a5a81ab02c4795e93e` |
| 2 | `class` | [BoundedContinuousMapClass](../../../../GeneralTopology/BoundedBasic.lean/declarations/boundedcontinuousmapclass.md) | 46 | `declaration-track:ee669a0c712a9f3a7f82d70ff90452ab740eb2eccc36ca1d2e7c24fe1f7ae4e6` |
| 3 | `instance` | [instFunLike](../../../../GeneralTopology/BoundedBasic.lean/declarations/instfunlike.md) | 61 | `declaration-track:0c84fedbfe166ccb2e513b22ad984b338e2c2d5b49f05144ed5d2fb3d9b06bd2` |
| 4 | `instance` | [instBoundedContinuousMapClass](../../../../GeneralTopology/BoundedBasic.lean/declarations/instboundedcontinuousmapclass.md) | 68 | `declaration-track:c602b5d55464cd69d97817760974ca866ad629892d2b98f993e5383c79b3e37f` |
| 5 | `instance` | [instCoeTC](../../../../GeneralTopology/BoundedBasic.lean/declarations/instcoetc.md) | 72 | `declaration-track:023b4b1adb21c08a272f2a20e4201c4b195f2cf2cf0791c18b10d3497f99baca` |
| 6 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/BoundedBasic.lean/declarations/coe-tocontinuousmap.md) | 79 | `result-track:41d225295e4c3692c3df725358dbf5ef74960b7e98f43281c6b01033971c6ec9` |
| 7 | `def` | [Simps.apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/simps-apply.md) | 85 | `declaration-track:79bb0ad4d9b6d8dec89b45ebe0cd8ebe01150429cf1dec39fe824d7039f86922` |
| 8 | `theorem` | [bounded](../../../../GeneralTopology/BoundedBasic.lean/declarations/bounded.md) | 89 | `result-track:0a9008c489204f7c256ce4960cf02e71d8c26cded66b6faeaeef1dffc7af6387` |
| 9 | `theorem` | [continuous](../../../../GeneralTopology/BoundedBasic.lean/declarations/continuous.md) | 92 | `result-track:93ab2b6f65993aedf9d05cee526969dc3cf4c97c44b6beeafeea846ffb387c74` |
| 10 | `theorem` | [ext](../../../../GeneralTopology/BoundedBasic.lean/declarations/ext.md) | 96 | `result-track:c1b65a002904a1e40bf77ae8e680ca3526e0a3273792a57553873320a3a70967` |
| 11 | `theorem` | [isBounded_range](../../../../GeneralTopology/BoundedBasic.lean/declarations/isbounded-range.md) | 99 | `result-track:3f4a45c1bf81872c0e93f45ea7b1a35e73e7d41688bc5188591ee874dba9f7f4` |
| 12 | `theorem` | [isBounded_image](../../../../GeneralTopology/BoundedBasic.lean/declarations/isbounded-image.md) | 102 | `result-track:a19ba010b7b6cabc1173dc058bd647edd9129651d5aec4f011c461be80ccc7f2` |
| 13 | `theorem` | [eq_of_empty](../../../../GeneralTopology/BoundedBasic.lean/declarations/eq-of-empty.md) | 105 | `result-track:5d3a74e0fa43382dcccdceab5a6661889db59dc6138c764fc05c2269509fa82c` |
| 14 | `def` | [mkOfBound](../../../../GeneralTopology/BoundedBasic.lean/declarations/mkofbound.md) | 109 | `declaration-track:f0c6c6d7f0397e200ca18a2dfe0788dc71e40e4fd1e6c2e8c191f18c6b4db36c` |
| 15 | `theorem` | [mkOfBound_coe](../../../../GeneralTopology/BoundedBasic.lean/declarations/mkofbound-coe.md) | 113 | `result-track:c857f5aca6e804c281d2e14f508d6aa9b33c0c3f91f6cf6fd34e66b26cabfa11` |
| 16 | `def` | [mkOfCompact](../../../../GeneralTopology/BoundedBasic.lean/declarations/mkofcompact.md) | 116 | `declaration-track:5783ae881052ff7c8a36432702ab7f9672fa6d8cd75089171e4ddedbab8be301` |
| 17 | `theorem` | [mkOfCompact_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/mkofcompact-apply.md) | 120 | `result-track:e862c4ed5cf6f5d43c63b720a0ccdc65002ce1a8a87dff5df56df0d91056ec27` |
| 18 | `def` | [mkOfDiscrete](../../../../GeneralTopology/BoundedBasic.lean/declarations/mkofdiscrete.md) | 125 | `declaration-track:e0c7c1297812284a697a2231af3f1a585b4bd5631b0a228ae610d2058d993d22` |
| 19 | `instance` | [instDist](../../../../GeneralTopology/BoundedBasic.lean/declarations/instdist.md) | 130 | `declaration-track:5f05c7c382d4519bf167c6e01567a2293d2e54e08d9d4c2cfe20af90ab31d507` |
| 20 | `theorem` | [dist_eq](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-eq.md) | 133 | `result-track:f0dee546ce9bae34f2f34772cc12d3ebdd133eb9fa2fda3b936558164305b5d7` |
| 21 | `theorem` | [dist_set_exists](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-set-exists.md) | 135 | `result-track:1de5bb25b205b19b52c9c59aca845ca0d02ecc770969376bcf0a3dad1e50b3ab` |
| 22 | `theorem` | [dist_coe_le_dist](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-coe-le-dist.md) | 142 | `result-track:ffb932d30efe7bc077521e0ac691241897c8e7d91a829e430d020eb79f1c4ae3` |
| 23 | `theorem` | [dist_nonneg'](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-nonneg.md) | 148 | `result-track:8e4b932b90fb02ef5795db03e2a0f4e0eb4008d46997effb6037decde0c3e0fb` |
| 24 | `theorem` | [dist_le](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-le.md) | 152 | `result-track:18cfef918d6bbcf81c26a4b88efdbc3a37f4487617ed6c251acd7f2f40dd9668` |
| 25 | `theorem` | [dist_le_iff_of_nonempty](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-le-iff-of-nonempty.md) | 155 | `result-track:7c7fa8155831b04ed858968175997644aba94336fdcea1777644938425d7163a` |
| 26 | `theorem` | [dist_lt_of_nonempty_compact](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-lt-of-nonempty-compact.md) | 159 | `result-track:95b6f983bf84b057105995825aa5c7bb5e48b488df433bc297a83ee684a00930` |
| 27 | `theorem` | [dist_lt_iff_of_compact](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-lt-iff-of-compact.md) | 166 | `result-track:86ccdf73def9fdcd477e375a891ed2c529b582a22624289cc1f606b983865c7d` |
| 28 | `theorem` | [dist_lt_iff_of_nonempty_compact](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-lt-iff-of-nonempty-compact.md) | 179 | `result-track:deb70813e5a9e2217c648d805d2a7b21b2f5b8551cb42ebf268c31f51ab86129` |
| 29 | `instance` | [instPseudoMetricSpace](../../../../GeneralTopology/BoundedBasic.lean/declarations/instpseudometricspace.md) | 184 | `declaration-track:fc4fa22dae47435ab04b402de0a90a9d59852daaff5144a8b24526551cd3164f` |
| 30 | `instance` | [instMetricSpace](../../../../GeneralTopology/BoundedBasic.lean/declarations/instmetricspace.md) | 191 | `declaration-track:47dcc12d04ab38cd8d15f82d4adafd252a997b416a2c715f61d0e76521de5692` |
| 31 | `theorem` | [nndist_eq](../../../../GeneralTopology/BoundedBasic.lean/declarations/nndist-eq.md) | 196 | `result-track:8b0bbc077b9fae8e85133f34c6993a55e83a4eee5e333f676be49ca90c3019e3` |
| 32 | `theorem` | [nndist_set_exists](../../../../GeneralTopology/BoundedBasic.lean/declarations/nndist-set-exists.md) | 201 | `result-track:ffcbe9a60bd1bf1d2a54603e20725854e4f5b0ed87064f3c1173cacefc257d32` |
| 33 | `theorem` | [nndist_coe_le_nndist](../../../../GeneralTopology/BoundedBasic.lean/declarations/nndist-coe-le-nndist.md) | 204 | `result-track:afadd02ad61a07fc5cfd250c3fff69c47bdaaf544ee9c303557df0fc0a0bed27` |
| 34 | `theorem` | [dist_zero_of_empty](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-zero-of-empty.md) | 208 | `result-track:b2856259e5df73b9aebe10bed41f56099501da4e386aedf03ee547ba6d9e7b24` |
| 35 | `theorem` | [dist_eq_iSup](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-eq-isup.md) | 211 | `result-track:d9b4f10bf5798130f65f51108a6b8b58ccab781c7020a2cacd0d8d9dc5ac2ff0` |
| 36 | `theorem` | [nndist_eq_iSup](../../../../GeneralTopology/BoundedBasic.lean/declarations/nndist-eq-isup.md) | 217 | `result-track:943c3ab5eb6290c40c94953f341048507d34482814656d67931d681adc28eea4` |
| 37 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../GeneralTopology/BoundedBasic.lean/declarations/tendsto-iff-tendstouniformly.md) | 220 | `result-track:58bccaa436def8d1a1474a064e7c9c7face40fdc413b3b7384e98af7245ff8cf` |
| 38 | `theorem` | [isInducing_coeFn](../../../../GeneralTopology/BoundedBasic.lean/declarations/isinducing-coefn.md) | 237 | `result-track:a4e84a6dd23c578a798f3242c040c5fcb8eb81b059908446d3500abeb01457ab` |
| 39 | `theorem` | [isEmbedding_coeFn](../../../../GeneralTopology/BoundedBasic.lean/declarations/isembedding-coefn.md) | 247 | `result-track:65318eb7a57475dec2c728652ffddbd00c6c9656f71ffcb486a62529e5d2d795` |
| 40 | `def` | [const](../../../../GeneralTopology/BoundedBasic.lean/declarations/const.md) | 256 | `declaration-track:019c138f5c5be704c7813f4371c98b83a4556e362b04f14f24461c25ba46e08b` |
| 41 | `theorem` | [const_apply'](../../../../GeneralTopology/BoundedBasic.lean/declarations/const-apply.md) | 259 | `result-track:d6136d99aebb1124eb854b91f7268e0e69bef417d6502d2074d1c2836f810259` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/BoundedBasic.lean/declarations/instance.md) | 262 | `declaration-track:62a510fe1d5f3b3d3bb83dfb6358437f2e61b1a1a080ac4b03db1e0e5e717015` |
| 43 | `theorem` | [lipschitz_evalx](../../../../GeneralTopology/BoundedBasic.lean/declarations/lipschitz-evalx.md) | 265 | `result-track:ee73e4b9a6617730e4bd4ca01e15d646a62177a34b7a87212389d51267b19e93` |
| 44 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/BoundedBasic.lean/declarations/uniformcontinuous-coe.md) | 268 | `result-track:3429fda2245658d74c6e51797c3a234b39fb96eeb3ebc716b94f9fe5b5adda3c` |
| 45 | `theorem` | [continuous_coe](../../../../GeneralTopology/BoundedBasic.lean/declarations/continuous-coe.md) | 271 | `result-track:ab288794d426a974d56f09dd897d5b85e7fe088d77939b973a6ad64d396ad463` |
| 46 | `theorem` | [continuous_eval_const](../../../../GeneralTopology/BoundedBasic.lean/declarations/continuous-eval-const.md) | 276 | `result-track:495e97c0e190d84d8e90ba43dfef15c087791a6db7a8d58340e9169c8e5a14d4` |
| 47 | `theorem` | [continuous_eval](../../../../GeneralTopology/BoundedBasic.lean/declarations/continuous-eval.md) | 281 | `result-track:413372f90c9f24c100885373d9f7e4d3236a3fe4f8fb64de32cfb3a02598cb0b` |
| 48 | `instance` | [instCompleteSpace](../../../../GeneralTopology/BoundedBasic.lean/declarations/instcompletespace.md) | 285 | `declaration-track:ce7f6061182c19270d2ad45136a2869425a9e6cd63449cd7e678c3ade2d1e315` |
| 49 | `def` | [compContinuous](../../../../GeneralTopology/BoundedBasic.lean/declarations/compcontinuous.md) | 320 | `declaration-track:a5c3d4dc259bf23172589b49e7d2402eabad2320a2796c0e4a8482a6155ccc3e` |
| 50 | `theorem` | [coe_compContinuous](../../../../GeneralTopology/BoundedBasic.lean/declarations/coe-compcontinuous.md) | 325 | `result-track:14d28f911ebae724ce7d5869b6ae2fc1629626f00f0458c176bef59f038d934f` |
| 51 | `theorem` | [compContinuous_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/compcontinuous-apply.md) | 329 | `result-track:87d90810ae4a874a4af7b63be3b9a45f828533ef41ddd21211e2d5b4daaf2d6e` |
| 52 | `theorem` | [lipschitz_compContinuous](../../../../GeneralTopology/BoundedBasic.lean/declarations/lipschitz-compcontinuous.md) | 332 | `result-track:77e1f0fc0394856256d3e6bb7e590c613f321d2e1957a037b2146ccae863c47c` |
| 53 | `theorem` | [continuous_compContinuous](../../../../GeneralTopology/BoundedBasic.lean/declarations/continuous-compcontinuous.md) | 336 | `result-track:1546f19655490b88f2e450006509bb43b046832f62f75654e14a14d7138927b0` |
| 54 | `def` | [restrict](../../../../GeneralTopology/BoundedBasic.lean/declarations/restrict.md) | 341 | `declaration-track:1879c7a0649a64bbd784094fb7ab716b56ec9d12f8d77bc3e4f809ded7c3fb85` |
| 55 | `theorem` | [coe_restrict](../../../../GeneralTopology/BoundedBasic.lean/declarations/coe-restrict.md) | 345 | `result-track:97738b957ec48a62243797099eea72a2123a6338fc55672732e4894ca081ab0d` |
| 56 | `theorem` | [restrict_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/restrict-apply.md) | 348 | `result-track:d7ae286dc84078a27b4501898b853ef8f302073340cc43c3c292d7bbc855b02f` |
| 57 | `def` | [comp](../../../../GeneralTopology/BoundedBasic.lean/declarations/comp.md) | 352 | `declaration-track:ad69288a094c0bfc77b9a84f9dea6f190f2e83da6730db134e7e7dafe765feca` |
| 58 | `theorem` | [comp_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/comp-apply.md) | 363 | `result-track:813f4aada4c6eb0fea0812d9368dc001c37fc502e7c86efc1bd565d9c2f9fb92` |
| 59 | `theorem` | [lipschitz_comp](../../../../GeneralTopology/BoundedBasic.lean/declarations/lipschitz-comp.md) | 367 | `result-track:ab22b32bfdc60552922e960ab0a167273da85247e672b59e0a559b69ddee2248` |
| 60 | `theorem` | [uniformContinuous_comp](../../../../GeneralTopology/BoundedBasic.lean/declarations/uniformcontinuous-comp.md) | 376 | `result-track:38b6569e3f92ba3bff3506811e04320d8f4b9130482434cfca3b61bdc78f704d` |
| 61 | `theorem` | [continuous_comp](../../../../GeneralTopology/BoundedBasic.lean/declarations/continuous-comp.md) | 381 | `result-track:b94929c7c8c8ffeec1bbc4e07e6587d3c117d54ec24feb3a48b906f36c9e9e8f` |
| 62 | `def` | [codRestrict](../../../../GeneralTopology/BoundedBasic.lean/declarations/codrestrict.md) | 386 | `declaration-track:d09967a102276f551e5bfd206decf3dfc4faa3e5c927e5fcce3805a0d5e997ee` |
| 63 | `def` | [extend](../../../../GeneralTopology/BoundedBasic.lean/declarations/extend.md) | 395 | `declaration-track:d07bd07f4376835dc51294dd70e20a064e3517cb2d18cd88bc9916e42cdbb69a` |
| 64 | `theorem` | [extend_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/extend-apply.md) | 403 | `result-track:1686740bb436a0625ecc31df38a6433eef3c6b084bf6aa03d1928a27a12e5a32` |
| 65 | `theorem` | [extend_comp](../../../../GeneralTopology/BoundedBasic.lean/declarations/extend-comp.md) | 407 | `result-track:3fedfa8a1332f02a09e087667c50de2ac76a2f29fef17a4ab83d61a90f623b96` |
| 66 | `theorem` | [extend_apply'](../../../../GeneralTopology/BoundedBasic.lean/declarations/extend-apply-source-edition-2.md) | 410 | `result-track:93874d549e97b5e6f8cf2c0fec734cab1b8eaf351711b7a140bc461db5fb29ee` |
| 67 | `theorem` | [extend_of_empty](../../../../GeneralTopology/BoundedBasic.lean/declarations/extend-of-empty.md) | 414 | `result-track:53de4d3d81084fa863b49cc22bf65ed414828ed869dd629fdd5729b48acd1ce3` |
| 68 | `theorem` | [dist_extend_extend](../../../../GeneralTopology/BoundedBasic.lean/declarations/dist-extend-extend.md) | 418 | `result-track:c213be697b914530a3703f4343c4e7207262b0c81f57991dad2554b7e5855007` |
| 69 | `theorem` | [isometry_extend](../../../../GeneralTopology/BoundedBasic.lean/declarations/isometry-extend.md) | 440 | `result-track:187e5a0c9f8d68d250043545a1bd810c48d8408533a5600d1f535972db1005df` |
| 70 | `def` | [indicator](../../../../GeneralTopology/BoundedBasic.lean/declarations/indicator.md) | 447 | `declaration-track:85ea069203c6b6f73531b46b1f290367773fb7bf6a60473c7500e38285b96619` |
| 71 | `instance` | [instOne](../../../../GeneralTopology/BoundedBasic.lean/declarations/instone.md) | 458 | `declaration-track:fcd5252eafd8b5c434ba659bba388a5d739e2e7711fb5932ca324c44ade6c3dc` |
| 72 | `theorem` | [coe_one](../../../../GeneralTopology/BoundedBasic.lean/declarations/coe-one.md) | 461 | `result-track:f35dd8040ecd4db1d34a6065b53cfcd2b6a4f41aff34926dbe17f44e67fea0c9` |
| 73 | `theorem` | [mkOfCompact_one](../../../../GeneralTopology/BoundedBasic.lean/declarations/mkofcompact-one.md) | 464 | `result-track:1999f6669f0a10bcde67f1b127f4c38971d31462bfa1af6da191ec5c5f4073ab` |
| 74 | `theorem` | [forall_coe_one_iff_one](../../../../GeneralTopology/BoundedBasic.lean/declarations/forall-coe-one-iff-one.md) | 467 | `result-track:17d70fa4f9df7b49c91937a71ab56efb5ea61bf801d43633ca1ab35565ac35a4` |
| 75 | `theorem` | [one_compContinuous](../../../../GeneralTopology/BoundedBasic.lean/declarations/one-compcontinuous.md) | 471 | `result-track:7c1adc8e3092a18b3c5cba7436d82424c90c46b7d389b27e755681bab41bda20` |
| 76 | `instance` | [instMul](../../../../GeneralTopology/BoundedBasic.lean/declarations/instmul.md) | 481 | `declaration-track:39a513c152c1023cbe6c3b09f52cc2e493e020d15f5a41ea0e3754138e2e388f` |
| 77 | `theorem` | [coe_mul](../../../../GeneralTopology/BoundedBasic.lean/declarations/coe-mul.md) | 489 | `result-track:bcdbe3b010ea8ec756f81a36c4ff7b12f7819846b1f2952b9ce52dc5524ed97b` |
| 78 | `theorem` | [mul_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/mul-apply.md) | 492 | `result-track:3ff8bd0bf7ea64d0f288c7f24a68a4a84d7f2324099cdfa6eff1e8e6a2a8e39d` |
| 79 | `theorem` | [coe_nsmulRec](../../../../GeneralTopology/BoundedBasic.lean/declarations/coe-nsmulrec.md) | 496 | `result-track:73d4678e855b2b510a4a33f9bd3ec3e1c6443db52113961c3684b11696e7ef70` |
| 80 | `instance` | [instSMulNat](../../../../GeneralTopology/BoundedBasic.lean/declarations/instsmulnat.md) | 501 | `declaration-track:1f034e0957d0d8b20bba115b1f712ae68f8b6af3d8f6d35df567ded6250a2c35` |
| 81 | `instance` | [instPow](../../../../GeneralTopology/BoundedBasic.lean/declarations/instpow.md) | 508 | `declaration-track:5a3dd61da586e597a1572762c43f26e9f10539c04ce31400b8cf806c670368b4` |
| 82 | `theorem` | [coe_pow](../../../../GeneralTopology/BoundedBasic.lean/declarations/coe-pow.md) | 517 | `result-track:43460fc1434eb4d095d662f6c3ac339d503f770e9327d693c3c7e3f17bcf2f32` |
| 83 | `theorem` | [pow_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/pow-apply.md) | 521 | `result-track:2bfe042dcfbaa0e00bcc0240129d2103d203c0141bf1fbe4e8e49eb8acf0b73b` |
| 84 | `instance` | [instMonoid](../../../../GeneralTopology/BoundedBasic.lean/declarations/instmonoid.md) | 525 | `declaration-track:34d4f0f04aaa203848ac2f4aa96782465b0232723650234487640917faec0839` |
| 85 | `instance` | [instCommMonoid](../../../../GeneralTopology/BoundedBasic.lean/declarations/instcommmonoid.md) | 530 | `declaration-track:4c085c3d98d1950992067042fb0d4f72155e90bbcae887498d51f150c6c1a426` |
| 86 | `instance` | [instMulOneClass](../../../../GeneralTopology/BoundedBasic.lean/declarations/instmuloneclass.md) | 536 | `declaration-track:37eff3a168971de4e538a712ff1ba56bcfb2597bc64a2191abde7ba772481c26` |
| 87 | `def` | [_root_.MonoidHom.compLeftContinuousBounded](../../../../GeneralTopology/BoundedBasic.lean/declarations/root-monoidhom-compleftcontinuousbounded.md) | 544 | `declaration-track:4b9f074b8352bc032417a798d0001a5aafd6d7421b1071b03f4cd32ec2d10736` |
| 88 | `theorem` | [mkOfCompact_add](../../../../GeneralTopology/BoundedBasic.lean/declarations/mkofcompact-add.md) | 561 | `result-track:687053344fcd2cbaf977f267ccb14bbe259d7946a2fa19b980b936a4257a5d2a` |
| 89 | `theorem` | [add_compContinuous](../../../../GeneralTopology/BoundedBasic.lean/declarations/add-compcontinuous.md) | 564 | `result-track:a7053f2823d8357cef0571483667adccfd80fad4082e94b53cdfda084e761541` |
| 90 | `def` | [coeFnAddHom](../../../../GeneralTopology/BoundedBasic.lean/declarations/coefnaddhom.md) | 570 | `declaration-track:85bbb61757c474f0cbd1ee8db75014a65d46dba04817f41c0469deff51d419ec` |
| 91 | `def` | [toContinuousMapAddHom](../../../../GeneralTopology/BoundedBasic.lean/declarations/tocontinuousmapaddhom.md) | 579 | `declaration-track:0c5237847a0dd5e2a2e56f329a86f8178087155b29642480e815f292fd3a4ce8` |
| 92 | `theorem` | [coe_sum](../../../../GeneralTopology/BoundedBasic.lean/declarations/coe-sum.md) | 595 | `result-track:44c68433c084ceb370e6706fe9696371705f5c9cbf84e504d431208ce9d9c229` |
| 93 | `theorem` | [sum_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/sum-apply.md) | 599 | `result-track:24999ad239927f7d70973e6fcc4bcd0ad09c58c1b6628da9912e2abbee23c7f2` |
| 94 | `instance` | [instLipschitzAdd](../../../../GeneralTopology/BoundedBasic.lean/declarations/instlipschitzadd.md) | 620 | `declaration-track:2c649c1c10af3347c70fe3c87b9ac08ffd7d82183f59ef863704f7254e0b1bb3` |
| 95 | `instance` | [instSub](../../../../GeneralTopology/BoundedBasic.lean/declarations/instsub.md) | 641 | `declaration-track:ce839b203e8418c7480bdf93fd23d989c5c5c0b73a6f2f3b32f632e1228e78dd` |
| 96 | `theorem` | [sub_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/sub-apply.md) | 646 | `result-track:052c41944aa500d7642dcbf061321f13e7ebda5aa05a57852090aed44f4cb511` |
| 97 | `theorem` | [coe_sub](../../../../GeneralTopology/BoundedBasic.lean/declarations/coe-sub.md) | 649 | `result-track:b29eb92fe5b7d655d8135152701cff21f5aac926ee9efd5e353f60e24e0805aa` |
| 98 | `instance` | [(anonymous)](../../../../GeneralTopology/BoundedBasic.lean/declarations/instance-source-edition-2.md) | 657 | `declaration-track:653b3a4533b8e544acd8e4530d8ee4b335d9b1b26eb05924d06aba9e8017a021` |
| 99 | `theorem` | [natCast_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/natcast-apply.md) | 660 | `result-track:72109bcd6490b3fb9a600d436440959f29cc993bd72ad064781c1857734709a0` |
| 100 | `instance` | [(anonymous)](../../../../GeneralTopology/BoundedBasic.lean/declarations/instance-source-edition-3.md) | 662 | `declaration-track:6af56c728632753485e8cbd00e8aa087675ceda1f9d593d89f128140b8f0421a` |
| 101 | `theorem` | [intCast_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/intcast-apply.md) | 665 | `result-track:0a3351ff71a95248f74ae18671093df4b69c5a3b796a422b5d43e455253b93aa` |
| 102 | `instance` | [instSemiring](../../../../GeneralTopology/BoundedBasic.lean/declarations/instsemiring.md) | 669 | `declaration-track:0d5b48d290d6c47ec97ec6e6c9e741e011e4489b78cbacd88131d131833c571c` |
| 103 | `instance` | [instSMul](../../../../GeneralTopology/BoundedBasic.lean/declarations/instsmul.md) | 693 | `declaration-track:e733d8106e7c1217692bdcdc1c1dd217c0769161ad3c653297ad467296fc0dc1` |
| 104 | `theorem` | [coe_smul](../../../../GeneralTopology/BoundedBasic.lean/declarations/coe-smul.md) | 704 | `result-track:9bb64c201d22d397fe94b9d1d41ed09969fa8e6666791c3d9c2edd6561b271f5` |
| 105 | `theorem` | [smul_apply](../../../../GeneralTopology/BoundedBasic.lean/declarations/smul-apply.md) | 706 | `result-track:e48b430ddbb91de4ef45d2d9a9e3786f33c31203be644287305d4c79cf178b75` |
| 106 | `instance` | [instIsScalarTower](../../../../GeneralTopology/BoundedBasic.lean/declarations/instisscalartower.md) | 708 | `declaration-track:42c4b4c199ade6437e9d23cab594ba27a94805f6e1fee04eb18277176f8fc1e1` |
| 107 | `instance` | [instSMulCommClass](../../../../GeneralTopology/BoundedBasic.lean/declarations/instsmulcommclass.md) | 713 | `declaration-track:6f5c816a04dd0e399814bccdecd0f2a74b4077e5f0a7799eb31ba31cbf3c1b2f` |
| 108 | `instance` | [instIsCentralScalar](../../../../GeneralTopology/BoundedBasic.lean/declarations/instiscentralscalar.md) | 718 | `declaration-track:0eab35267875def377553d2a49bacf3b93c07606712763596502016306373eef` |
| 109 | `instance` | [instIsBoundedSMul](../../../../GeneralTopology/BoundedBasic.lean/declarations/instisboundedsmul.md) | 721 | `declaration-track:79db6c3cda6f41326bc722999b6d22280f5b8359cefefb360d400d807408490e` |
| 110 | `instance` | [instMulAction](../../../../GeneralTopology/BoundedBasic.lean/declarations/instmulaction.md) | 741 | `declaration-track:4e23d57448d8faa22be0f495f130f0789cde339892a9d5a775587f17b74e7b04` |
| 111 | `instance` | [instDistribMulAction](../../../../GeneralTopology/BoundedBasic.lean/declarations/instdistribmulaction.md) | 751 | `declaration-track:8ddfbc50ab3e5f4e447131b52275ecd0689df89a3104c9a66bdefba8bea501c6` |
| 112 | `instance` | [instModule](../../../../GeneralTopology/BoundedBasic.lean/declarations/instmodule.md) | 762 | `declaration-track:e24df8e3724cd46961d08688b1abaecf6e38a1a25f8da2f8b618f787e5367ecd` |
| 113 | `def` | [evalCLM](../../../../GeneralTopology/BoundedBasic.lean/declarations/evalclm.md) | 769 | `declaration-track:767eefe57678c8ae62e7296930b6d483fe9cb21324b08aff7369c5c1e974f2cb` |
| 114 | `def` | [toContinuousMapLinearMap](../../../../GeneralTopology/BoundedBasic.lean/declarations/tocontinuousmaplinearmap.md) | 778 | `declaration-track:7af32296c4e59d028f9c226e0271ac4accefd887ac77950c882db1914a5b2214` |
| 115 | `theorem` | [NNReal.upper_bound](../../../../GeneralTopology/BoundedBasic.lean/declarations/nnreal-upper-bound.md) | 787 | `result-track:26ddcd1307469c692dc7f9f5f695e4aaf2d8de2efc0b9a28551b3b72222c57dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d40dfd3b74ab505fcf2e6c0122ec1d69b401a6a7b5241d4f98e16c1cd837e272 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

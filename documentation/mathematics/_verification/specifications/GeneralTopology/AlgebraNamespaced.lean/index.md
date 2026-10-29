# Verification target: Algebra Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a58c5304e2ff3ea638f999de8e3bb817156c0ce",
  "lexical_observation_count": 118,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant0d771e8ee71cb6ccfbd39f718bde7d729793349c760a6e065858b8f319515237.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AlgebraNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/AlgebraNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a58c5304e2ff3ea638f999de8e3bb817156c0ce`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant0d771e8ee71cb6ccfbd39f718bde7d729793349c760a6e065858b8f319515237.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Algebra/Variant0d771e8ee71cb6ccfbd39f718bde7d729793349c760a6e065858b8f319515237.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.LatticeGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Periodic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarAlgHom` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformGroup` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Ordered` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.CompactConvergence` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-34.md) | 55 | `declaration-track:ec7e1d27ac354fa520c40a4405efe53bea57c64db1ed1cbde46d034ed06ac8d5` |
| 2 | `instance` | [instMul](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instmul.md) | 68 | `declaration-track:6a2ff175a8cffca623d235a692dc2bf808b50c0fcd22237fc4a715b6e96e24fc` |
| 3 | `theorem` | [coe_mul](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-mul.md) | 74 | `result-track:28536e9a9572954275c4482c2cbd9b140669405f403e8ebabf871324a96be191` |
| 4 | `theorem` | [mul_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/mul-apply.md) | 80 | `result-track:6e19a50d4d608093f0c37f9b565043f324bc6f75e2b0af03dd022ce83bfd1c88` |
| 5 | `theorem` | [mul_comp](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/mul-comp.md) | 86 | `result-track:39ff7b8d4d5904e8d0de4f448acdf34f75b0396a1b6bf5c57ca6bd9fc46c2322` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-26.md) | 94 | `declaration-track:a6e1305506d66d44b20b0fdb64b59c1d2fffeecd1fe3742a917d7185c3aebfb7` |
| 7 | `theorem` | [coe_one](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-one.md) | 98 | `result-track:cd8facd91646a58d21afe841622d3abdf937ac89448e690c53f925993ea634f5` |
| 8 | `theorem` | [one_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/one-apply.md) | 104 | `result-track:5e3e8a896bd0a32cd6fb3684e8b8aae2d1379912e083eaef33b187b9ddab94fe` |
| 9 | `theorem` | [one_comp](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/one-comp.md) | 110 | `result-track:3f10bc5a0688103c304a3963db415614a89156080d8d83876318a44571a3d2e2` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-38.md) | 116 | `declaration-track:f6c6009b1434198cb1c7eb189d4b38a170158f573afa2f92b3bdf1fe5f1ccac6` |
| 11 | `theorem` | [coe_nat_cast](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-nat-cast.md) | 120 | `result-track:0f43c5843afc1d0c68a56f4a4350fca6ce40ca3cc7b42db4b8ba8ef4166d0cc1` |
| 12 | `theorem` | [nat_cast_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/nat-cast-apply.md) | 125 | `result-track:1e66aced5c032fd51359b6925fddf1a1cc9112a4b7e627b6455724ad3af61259` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-4.md) | 130 | `declaration-track:101861946e8fe296f0f9e0b86a03c0a6c10aa1302075f69ba9e1c709821c0dd8` |
| 14 | `theorem` | [coe_int_cast](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-int-cast.md) | 134 | `result-track:7db821220dc78d36f43b64c3c8572fdfffbf13604e060f44b0b468993db50f4a` |
| 15 | `theorem` | [int_cast_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/int-cast-apply.md) | 139 | `result-track:0dbc1e043ea62906fc17a5ef48119c7b0f426fb66a0c5d01406f97a82f054a92` |
| 16 | `instance` | [instNSMul](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instnsmul.md) | 144 | `declaration-track:8d11dd96faa7b29f70250e381dbdd2209a45f778468bf8c054a7bb8bf15a43d7` |
| 17 | `instance` | [instPow](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instpow.md) | 149 | `declaration-track:61a5c6c4a31e1a4649a22e8f2d2eb2ade53b054791dac928ddda5ad320435c6e` |
| 18 | `theorem` | [coe_pow](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-pow.md) | 154 | `result-track:ecf1b8d0504d00fb8b1dce490fc0ee5a39edcdbacdf6a8830d3d61719b46c3a0` |
| 19 | `theorem` | [pow_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/pow-apply.md) | 160 | `result-track:c30e0197702cbe7fef06a1c937b57f6c8f7230b0a252887b645c07ea2db57866` |
| 20 | `theorem` | [pow_comp](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/pow-comp.md) | 171 | `result-track:735c6e0731647552967239c76b7c930649882a694a11628a5decda48ebd6eb28` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-35.md) | 182 | `declaration-track:efc25d74b06a526d4eee0f746a384186e5f2dfdeaca8bdaf56001da16de34456` |
| 22 | `theorem` | [coe_inv](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-inv.md) | 185 | `result-track:478102be74cfdfba004e479cedc6c45691612841f1ca45ab4b624c28f94fd8d8` |
| 23 | `theorem` | [inv_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/inv-apply.md) | 191 | `result-track:8a82c3756342a97f2c31c3d73630ebd46f9511c962c6447146a76aa8ad5b01b1` |
| 24 | `theorem` | [inv_comp](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/inv-comp.md) | 197 | `result-track:b9e45a8145a8d809b848ea7d35ba1132e4f36c8569c41bc00991f83d1d77b48c` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-13.md) | 205 | `declaration-track:564b97bfa99dce864fe9c17d7cd94a896e42132cd0ad2a804c4b6b1742670e4b` |
| 26 | `theorem` | [coe_div](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-div.md) | 209 | `result-track:fbd297bb1107c79fe0f1f2d6adfa18c39c3d36956554d5200e8082e691c415a7` |
| 27 | `theorem` | [div_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/div-apply.md) | 215 | `result-track:2985fe5eb8088fbf53a5baccdbfebcdd3fef24f37e15da0bd150ab0328ec333c` |
| 28 | `theorem` | [div_comp](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/div-comp.md) | 221 | `result-track:d77f17eb3ff8b38e449866c3fdf02f234073f447ab16d1974e1d8f21ef7c9e04` |
| 29 | `instance` | [instZSMul](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instzsmul.md) | 228 | `declaration-track:613e73d56ae2fcd735f67ecbe6abe6114e67ea8be090f2e9f3e3e535c241cb1c` |
| 30 | `instance` | [instZPow](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instzpow.md) | 233 | `declaration-track:b19acf7dc6b1ade183f49b52d924c628f048ca06bff047f05fc9a5615b39afe1` |
| 31 | `theorem` | [coe_zpow](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-zpow.md) | 238 | `result-track:2c83c8686cf786fd180921ca7ecf4462df14c7abb36587a3beab8cbc4599f5d8` |
| 32 | `theorem` | [zpow_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/zpow-apply.md) | 244 | `result-track:83d411b91489246631f65ff4252bb5627fbe15ae658fbdbac178fd1680c5c578` |
| 33 | `theorem` | [zpow_comp](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/zpow-comp.md) | 255 | `result-track:fa40a6fa19545bc5ad4cd25b38152e88b6d34340e6c0490d90b41c84d4f55ec7` |
| 34 | `def` | [continuousSubmonoid](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuoussubmonoid.md) | 280 | `declaration-track:0d670266387103cf0ec86b41a0d81cf40959e50daf8e29484c059c29b66672b6` |
| 35 | `def` | [continuousSubgroup](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuoussubgroup.md) | 290 | `declaration-track:7865055cffff21766860245fe4092035f27c56c54e01ee99296e0bf191e263a7` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-15.md) | 303 | `declaration-track:610b223994ef917b0d1883a68a4366aab5334a21f18e1bb8834974464c053ac7` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-18.md) | 307 | `declaration-track:688655b4883520191fa73ffa3390086e511240fb548c4884a989da2c0aa25268` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-40.md) | 311 | `declaration-track:fa32652841edc856bc7001911913e44b6454e24021d7fdb8f65851b73f89ad6b` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-14.md) | 314 | `declaration-track:5e065046cc942dd1d02a04ff4d7bbe69f47b72ec38876ab4008636188faa5ea4` |
| 40 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-7.md) | 317 | `declaration-track:2acaa87858daffad0377af4215bfdddfe80b2b7783c9751c092b12ffaf12d16f` |
| 41 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-29.md) | 321 | `declaration-track:bc3595939521b2bc08d3545d80436d5e214b81bd3cd84ecaa5d2f4b126692605` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-32.md) | 324 | `declaration-track:e552cd16fb59eed077df05cc5835f2a8afd860f52b13f8c46ee2f57f51fe823f` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-37.md) | 328 | `declaration-track:f4d10194f62cbd369296db25ba1d39156030a29add0f907f5e790f9a24c75427` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-6.md) | 331 | `declaration-track:1f36c020a2067e630ba34ce5c53c487d607617f4f5991fe0a4441cf52962a97f` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-2.md) | 335 | `declaration-track:0c25d82b3a2c5093f988584d3d29076a70112049e32831498dd260f537a2c79d` |
| 46 | `def` | [coeFnMonoidHom](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coefnmonoidhom.md) | 347 | `declaration-track:57b8f71150c3919eac4b00040d236b98573ededecf5ec3ec19571a113ee03f6d` |
| 47 | `def` | [Algebra Namespaced](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/compleftcontinuous-source-line-361-occurrence-2.md) | 361 | `declaration-track:f29c8bbdc7b9cbbb6bdeb12e79568bc1d1204d8bff3c94a39f261dd40afd9fa9` |
| 48 | `def` | [compMonoidHom'](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/compmonoidhom.md) | 375 | `declaration-track:f1bf067c1987677cb0d011ee9130e78bfba2193560e3c05517abeaa899774395` |
| 49 | `theorem` | [coe_prod](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-prod.md) | 386 | `result-track:e33dabc7d15dfcdbec476b0c13a38bd03678766cc6c04e676e9ea11442c69306` |
| 50 | `theorem` | [prod_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/prod-apply.md) | 393 | `result-track:0e9e2e3577284b4c0dec07e38f38c86c3e07be26ee6b881ed0c405bd91cdd903` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-17.md) | 399 | `declaration-track:6575237186677faa3932f8ce363fa1c2b918f6422354128be8c1b6ba607b6082` |
| 52 | `instance` | [instCommGroupContinuousMap](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instcommgroupcontinuousmap.md) | 403 | `declaration-track:6982f2fcd570f983d0fe1c9b68b03ddb17462634e96cd6c2d86ade4e7a2e080e` |
| 53 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-30.md) | 407 | `declaration-track:ccd288600e147d600ead68a3e85e1283fdabf7acf65a64bd72a354ecb393b0a4` |
| 54 | `theorem` | [hasSum_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/hassum-apply.md) | 433 | `result-track:29848bdd3045f7732e19a90f60749185dcc6442215be7ee569714b6f2f900e91` |
| 55 | `theorem` | [summable_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/summable-apply.md) | 440 | `result-track:e5a95c36b1a0bd50ad686f85d25d7e0b3cfbb5be6e6b4aa744509515c4513d18` |
| 56 | `theorem` | [tsum_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/tsum-apply.md) | 445 | `result-track:a7a89705ed5f0b4c3cdc51f1aae39e9236d03b681c51ed11c2b7a24b8973f42b` |
| 57 | `def` | [continuousSubsemiring](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuoussubsemiring.md) | 468 | `declaration-track:ba1c3875b148c2d010c6f684a1aa5688cd77014d6f48e60252fa6f9ff0b50760` |
| 58 | `def` | [continuousSubring](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuoussubring.md) | 474 | `declaration-track:8f65f122917dd9c918c79277f656094ffdd6dc340a629217d6b9bb366d6f9dda` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-10.md) | 483 | `declaration-track:42f88b15da4666db40e3645b70b9fcefe34da9a4ce710714d0b6db6fbe85e17c` |
| 60 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-8.md) | 487 | `declaration-track:34a52a0dd6fcd3c696fd59ad2bdc70a2ed814516fc0e34f118c4f9e708824d46` |
| 61 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-3.md) | 491 | `declaration-track:0d0f2a0ea883a126c2dca2cb8530a72ca86c8999d70fde30aa04bc040c87f83c` |
| 62 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-27.md) | 495 | `declaration-track:aea8616a9d81013996e9064b507b84922f5f08eb3c77d7ba9348bcb4afe6af55` |
| 63 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-11.md) | 499 | `declaration-track:441416eb7c23b90fac00d212da00b2ffe03040d4486a700cd933247200d4cea4` |
| 64 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-31.md) | 503 | `declaration-track:ccdd8d094f50e771d21f4d34eff5a189696fbdb9e1850b567a4898c95f06e012` |
| 65 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-21.md) | 507 | `declaration-track:71cf93fffa7f714cce36e1630e309e0f654db793a7f3eeebcd31cd46a93d3f45` |
| 66 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-39.md) | 511 | `declaration-track:f6d550a0a55cea5ebe7c140bee6870f66e11cf737a99662bece802e5104d1c9a` |
| 67 | `instance` | [instRingContinuousMap](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instringcontinuousmap.md) | 516 | `declaration-track:b720308b48f5262c858113c553763f49f8d160bfe01e7261601d5a248beb14a0` |
| 68 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-16.md) | 521 | `declaration-track:6458818c692d3dcbeeedceeef92202b31013cd453adcc37df2258f82a71d44cb` |
| 69 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-28.md) | 525 | `declaration-track:b4f0c371fa108c2fdbea22af11c81e4f60087983cc721714e6a95c0d64774d09` |
| 70 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-20.md) | 529 | `declaration-track:6ce5189d5abd751a16d2146095d309cb31ea68cc04affbf0bf494819a0da2c53` |
| 71 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-25.md) | 533 | `declaration-track:9b6f17b2a4ecfe2e8dd268dbc23fff3babbc18015d513a69a0ea58065886e263` |
| 72 | `def` | [Algebra Namespaced](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/compleftcontinuous-source-line-541-occurrence-2.md) | 541 | `declaration-track:ff408ef857f198162a4ba3db7b3bf24b6da2dfdf6519b859ed4d0840c7d33242` |
| 73 | `def` | [coeFnRingHom](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coefnringhom.md) | 550 | `declaration-track:73f127a890536f809ed79c01d252e108a9f0bef3434f7f9cb3c12626b9a33720` |
| 74 | `def` | [continuousSubmodule](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuoussubmodule.md) | 584 | `declaration-track:a44320092cf22c9f64c9a6f5158c7ce640027102ffee71205728129e190cfa97` |
| 75 | `instance` | [instSMul](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instsmul-source-edition-2.md) | 598 | `declaration-track:81eef0da5ce86ae5e0ff25c058ee9c6b2beb92c697f10a8879328488a1b3fb23` |
| 76 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-41.md) | 604 | `declaration-track:feb8884d0da6f5ad31e7543552a00489c6a40d2a1618f3c91b5ee5e80bf68992` |
| 77 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-24.md) | 609 | `declaration-track:9950408b935d0b10742983c782309c0d4185ef89d539a71446fab395e7200835` |
| 78 | `theorem` | [coe_smul](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-smul.md) | 618 | `result-track:68d63cf83fceb4d0ed1a8a689db3a4cd80c5f2c5320d665ba25c60ca85d9a28c` |
| 79 | `theorem` | [smul_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/smul-apply.md) | 625 | `result-track:50b7f0dc8f587b40b5bb0805f4f138f3d4cbc02aa216a7c9b596b75dad2ba68e` |
| 80 | `theorem` | [smul_comp](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/smul-comp.md) | 632 | `result-track:4a30f76ab7f69ab940c7b445f910ae5add55f063ddd67108cbcbd5f0a9b9e220` |
| 81 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-9.md) | 639 | `declaration-track:3c88f2a40a11c5cf9ee0caf8db464c29843aad6d47610b9c6b645ca8be7884a5` |
| 82 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-19.md) | 643 | `declaration-track:68dda4813515918f14befdab14430b38649fc45f0823ea47f729d1e910e2e2cd` |
| 83 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-12.md) | 647 | `declaration-track:4e9f8821a3d506703105add21519b0ca053cd639384bad4d5bf61b1d0599d13a` |
| 84 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-23.md) | 650 | `declaration-track:977b7ca46db26fb6c34ed8e4f6d66317121fbd3cd2145b3d878ff8961e8ca587` |
| 85 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-5.md) | 653 | `declaration-track:114607c90550175b4c9044e8a0b891e5ddf4c6ca192e498981ab474e710c0336` |
| 86 | `instance` | [module](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/module.md) | 663 | `declaration-track:ccf92b03498082c1548335d3043226085c142a1d6013a8e297b4927004460b68` |
| 87 | `def` | [Algebra Namespaced](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/compleftcontinuous.md) | 672 | `declaration-track:2232d9c4c37074a399a5dd49e67ca548c10af6ee7f9f58ee5c6591c26c980f7f` |
| 88 | `def` | [coeFnLinearMap](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coefnlinearmap.md) | 680 | `declaration-track:cdf4276356c69a72413101a16fef9cb923e86f611254e7e9e79ec822c28cf434` |
| 89 | `def` | [continuousSubalgebra](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuoussubalgebra.md) | 705 | `declaration-track:4a726b180cfc5f453da10695d8af26e5d2e51d2689560325b656a26a984bd38a` |
| 90 | `def` | [ContinuousMap.C](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuousmap-c.md) | 720 | `declaration-track:8dfc40fc4fdb5bfb647a4f2b7ba149c618cb70db0f1d76e44ef4d36a86b8d5af` |
| 91 | `theorem` | [ContinuousMap.C_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuousmap-c-apply.md) | 730 | `result-track:5c84e763c7773825b159adeebf597e52d158cbde558ae2b4450549e2b81b0207` |
| 92 | `instance` | [ContinuousMap.algebra](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuousmap-algebra.md) | 735 | `declaration-track:5858a4636b57282dfe3bcb49008a37d82709f11d4c39f4804ea02e1aed9454f1` |
| 93 | `def` | [AlgHom.compLeftContinuous](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/alghom-compleftcontinuous.md) | 746 | `declaration-track:33d282631655347de5f5885fa86d126ece410bf101949aa9b1129e5fd64b136b` |
| 94 | `def` | [ContinuousMap.compRightAlgHom](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuousmap-comprightalghom.md) | 757 | `declaration-track:a881f11e62326f9dafe5b2f5d92d9fe9201d7ac0f4f064142e730364bcf9eb2a` |
| 95 | `def` | [ContinuousMap.coeFnAlgHom](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuousmap-coefnalghom.md) | 781 | `declaration-track:04b0fb8c8d760f229a88265624e724eabf92634e3421f8051af9f36d62690001` |
| 96 | `abbrev` | [Subalgebra.SeparatesPoints](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/subalgebra-separatespoints.md) | 791 | `declaration-track:8b76f909352d2b7cf8a848ca53c826fa9f745b6cc7a38845ba847f19fc8eba61` |
| 97 | `theorem` | [Subalgebra.separatesPoints_monotone](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/subalgebra-separatespoints-monotone.md) | 795 | `result-track:ff799803373e2410471b36bea2269a2d3c72dba249cc72d9061ffc9ef3333e31` |
| 98 | `theorem` | [algebraMap_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/algebramap-apply.md) | 803 | `result-track:54eded065fe60222a8adbb026ace3747e5e463546b3a2836b3f547719861abe4` |
| 99 | `def` | [Set.SeparatesPointsStrongly](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/set-separatespointsstrongly.md) | 824 | `declaration-track:6498672f1116766bd1231e7bb399044088547b8d54ea93dcc948cc57b9cdb106` |
| 100 | `theorem` | [Subalgebra.SeparatesPoints.strongly](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/subalgebra-separatespoints-strongly.md) | 836 | `result-track:9d2f962bfe6b3a77b1abc226497f3a316d1d9ba77d8abba567562c0f7d8267b7` |
| 101 | `instance` | [ContinuousMap.subsingleton_subalgebra](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/continuousmap-subsingleton-subalgebra.md) | 854 | `declaration-track:6b14a0f491937cd3bd0e3ccb456dd2bf8310cb82487b0b329f0f5623c1d41c2a` |
| 102 | `instance` | [instSMul'](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instsmul.md) | 885 | `declaration-track:3d604002b7dfb3f7363119b98a279e1ab3b8843a7d0c367801f857c6e4820d6e` |
| 103 | `instance` | [module'](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/module-source-edition-2.md) | 891 | `declaration-track:d049df63f40337ac322b61593423bf98cdd7f87ae4136898a0b4343deb5d729d` |
| 104 | `instance` | [covariant_class_mul_le_left](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/covariant-class-mul-le-left.md) | 923 | `declaration-track:45603c8acd631ee9ebbee6a5d6726019a43357374e67d7409abe6eeef135a595` |
| 105 | `instance` | [covariant_class_mul_le_right](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/covariant-class-mul-le-right.md) | 929 | `declaration-track:baaaf5104e02a36662cd52e699b57111f95c4f91722ae35b6878db3d73efc543` |
| 106 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-36.md) | 960 | `declaration-track:f12b576e037212eafb33a3c07e81ac7cae7f86f6cf4bef23b9201bdc1ed6b5a6` |
| 107 | `theorem` | [coe_star](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/coe-star.md) | 963 | `result-track:e6dc3a9523bea5b43b99976600099245e8ddcee1c4379a0c8f87d773b44240f1` |
| 108 | `theorem` | [star_apply](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/star-apply.md) | 968 | `result-track:0c0a3eede7ec3d0858e8a7e6a56d273edc343f1bbfb0f28da449a3bcd3f0ef30` |
| 109 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-33.md) | 974 | `declaration-track:e837c9d6b36e0c9a2d04de2e5a40393d83b18e490103d0f053b21afaa1643e03` |
| 110 | `instance` | [starAddMonoid](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/staraddmonoid.md) | 977 | `declaration-track:a73e5def3ed1e28dbd7111ed5b9c00d54ef9ce36ea694e3a22c0d907916e65d4` |
| 111 | `instance` | [starMul](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/starmul.md) | 981 | `declaration-track:10a73e1250a49437dea34391a50eb00127c9e51b9e472d1f16a66dfd65e4b8f7` |
| 112 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance-source-edition-22.md) | 985 | `declaration-track:7e14a73938e2db11d529a4e464a36e6ed0a1acbc6461b05acd208e104fcf63d8` |
| 113 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/instance.md) | 989 | `declaration-track:04466686ec3604348d1667d5f4c1cd0cdde261d044004955433797844713938b` |
| 114 | `def` | [compStarAlgHom'](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/compstaralghom.md) | 1009 | `declaration-track:20c16d1b424f985ea6b1a321a92d5d145d88ac655422fa2e3156e63fa9a01b14` |
| 115 | `theorem` | [compStarAlgHom'_id](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/compstaralghom-id.md) | 1021 | `result-track:854c3ce7623d70f38dfc54687dfbba75e7fd14f34cf9a66708d3f728822174ae` |
| 116 | `theorem` | [compStarAlgHom'_comp](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/compstaralghom-comp.md) | 1026 | `result-track:63c74b3c5028e9ebb9399e030fb37f6ffbdadcda1997776ee3d99e42130115cc` |
| 117 | `theorem` | [periodic_tsum_comp_add_zsmul](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/periodic-tsum-comp-add-zsmul.md) | 1038 | `result-track:cef3ca57783fbb557896f3217c30e0e174afef1d2efa95761a4a670c700075d2` |
| 118 | `def` | [compStarAlgEquiv'](../../../../GeneralTopology/AlgebraNamespaced.lean/declarations/compstaralgequiv.md) | 1073 | `declaration-track:f815533aac315ac5eb99bd3744baa5ff6dfd52df0baf187780e18e570a415a30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2827ed602ae978392ec5bebcaf6b016036826b888bf342fa5c89fe909f227b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant0d771e8ee71cb6ccfbd39f718bde7d729793349c760a6e065858b8f319515237.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Algebra/Variant0d771e8ee71cb6ccfbd39f718bde7d729793349c760a6e065858b8f319515237.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: GRWTSK.Topology.PiProd.Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "644ce80ee538180c4241f9bf5c53c25a92ff9b71",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/index.md) · [Full source](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `644ce80ee538180c4241f9bf5c53c25a92ff9b71`.

Source path: `GRWTSK/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/prod--d5a107de527bcd81c7120f95.md) | 85 | `declaration-track:d5a107de527bcd81c7120f95a3e1b5fee19fda81c9fc8759a9cfaa89c9cce11d` |
| 2 | `theorem` | [coe_prod](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-prod--294ffdd4a22c03696857c965.md) | 90 | `result-track:294ffdd4a22c03696857c9656cc91eb3b45520b572600b6922bab69d2e384051` |
| 3 | `theorem` | [prod_apply](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/prod-apply--919af2ec55b1892da2c3ee6f.md) | 95 | `result-track:919af2ec55b1892da2c3ee6f1fb9b2c0b68e5c355932aaf4645ee7f1a693d61d` |
| 4 | `def` | [inl](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/inl--4f4b3b35426155fd0bd864a8.md) | 104 | `declaration-track:4f4b3b35426155fd0bd864a84a07bb51bbb9968a2df6a7093ebc82f6cecbd93b` |
| 5 | `def` | [inr](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/inr--60838a817b5cd567927a99e8.md) | 108 | `declaration-track:60838a817b5cd567927a99e8d4b8183b38d85418f351f0731199e8c1bc2d5552` |
| 6 | `theorem` | [inl_apply](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/inl-apply--68e9e796e2b1f9ffd36e1c60.md) | 114 | `result-track:68e9e796e2b1f9ffd36e1c60c0f2bf859242e20183309b288528833411eb9e3c` |
| 7 | `theorem` | [inr_apply](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/inr-apply--fc152480f82dcd68f2fe5f4c.md) | 118 | `result-track:fc152480f82dcd68f2fe5f4c9f1fbf44265d92b52c62a5a6b8786ac4d3f626e7` |
| 8 | `theorem` | [coe_inl](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-inl--4c9427975643e199b416f13a.md) | 122 | `result-track:4c9427975643e199b416f13ac17498c39628782ad67b84dc89a15e22423b77ae` |
| 9 | `theorem` | [coe_inr](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-inr--8f4db77b7f2b5d50bc6f2c43.md) | 126 | `result-track:8f4db77b7f2b5d50bc6f2c43ef87603d9ae644e6927d830fe90c600a417fc7cb` |
| 10 | `lemma` | [comp_inl_add_comp_inr](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/comp-inl-add-comp-inr--1271d2bbb6f02b178646a939.md) | 129 | `result-track:1271d2bbb6f02b178646a9393169d177f1d3c5e12ba612bc2e141bbcd7bafac7` |
| 11 | `theorem` | [ker_prod](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/ker-prod--7e7d5fe43a26a6917acf4ebd.md) | 132 | `result-track:7e7d5fe43a26a6917acf4ebdef21165ba0c0f905148f71ecf6412f69be0a0da4` |
| 12 | `def` | [fst](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/fst--c47c341eb55cadf9edce1577.md) | 139 | `declaration-track:c47c341eb55cadf9edce157727cc23b70e0826cb7ad63d15e4fc1cf4628fa3ac` |
| 13 | `def` | [snd](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/snd--25545aa5d4d41ce1ed98ca3b.md) | 143 | `declaration-track:25545aa5d4d41ce1ed98ca3baabcba9b85a2cd7432b999491cc69e462907e7d6` |
| 14 | `theorem` | [coe_fst](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-fst--04306f91d627e22f59a93237.md) | 149 | `result-track:04306f91d627e22f59a932377640c2a344da018b5a4d36e7db78c7cf0701e55d` |
| 15 | `theorem` | [coe_fst'](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-fst--9a027e2351177a26519af66c.md) | 153 | `result-track:9a027e2351177a26519af66c8021adc62c7cfccefe02977195d7e00cc8a4d343` |
| 16 | `theorem` | [coe_snd](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-snd--8de0f5614dc0cbfc9de50464.md) | 157 | `result-track:8de0f5614dc0cbfc9de504643bddbc9be46cbefab08e695c74017b400e6ed19c` |
| 17 | `theorem` | [coe_snd'](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-snd--369be0209fd28bdab36fae92.md) | 161 | `result-track:369be0209fd28bdab36fae92637477a7f6a428680ffea662e6b32cefd5a2b5c3` |
| 18 | `theorem` | [fst_prod_snd](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/fst-prod-snd--e6bfef01e703cdd158fb50ec.md) | 165 | `result-track:e6bfef01e703cdd158fb50ecbc10c4992d64f364dcec64e9dabc4f836b3fbabf` |
| 19 | `theorem` | [fst_comp_prod](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/fst-comp-prod--a2a9e8f0e6661eb0ee79f98f.md) | 169 | `result-track:a2a9e8f0e6661eb0ee79f98ff91fb29602e8fa23ac3e7d96d2ae13e43aeb3c6c` |
| 20 | `theorem` | [snd_comp_prod](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/snd-comp-prod--e25badb9b5b773c5bf2114a2.md) | 174 | `result-track:e25badb9b5b773c5bf2114a293ff1ea111b1e915ca8c9cdacdd72586ff30e456` |
| 21 | `theorem` | [fst_comp_inl](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/fst-comp-inl--f4ead82304c81240e087f0d5.md) | 178 | `result-track:f4ead82304c81240e087f0d53c3b2da86024a0b45146a58679ddd912b4683f95` |
| 22 | `theorem` | [fst_comp_inr](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/fst-comp-inr--32b10bf31a0aec608d0810a0.md) | 179 | `result-track:32b10bf31a0aec608d0810a0b8fd4c0c81b4a68a44e6abdd7b9ff47dbd57b77a` |
| 23 | `theorem` | [snd_comp_inl](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/snd-comp-inl--0e7a1881d15d53bb52a63d37.md) | 180 | `result-track:0e7a1881d15d53bb52a63d37f303e5458452c3f80ef069b3415e13326822e4f9` |
| 24 | `theorem` | [snd_comp_inr](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/snd-comp-inr--0545562e2687c0e2b98c6f33.md) | 181 | `result-track:0545562e2687c0e2b98c6f33e4d94cc0109a73b00f80d9976ce68542b4652174` |
| 25 | `def` | [prodMap](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/prodmap--4893e1f509bb04ce308f2eb6.md) | 184 | `declaration-track:4893e1f509bb04ce308f2eb60833a6a453ecad97ecab38676f89a7067680e531` |
| 26 | `theorem` | [coe_prodMap](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-prodmap--5701a4d9ec614f1b53621f1a.md) | 189 | `result-track:5701a4d9ec614f1b53621f1aeea6bc18a33a86a91c97b5021dea16a4a004e2b6` |
| 27 | `theorem` | [coe_prodMap'](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-prodmap--4c3d89b097cc2a84c7db1920.md) | 194 | `result-track:4c3d89b097cc2a84c7db19208f3c8b75d5037edafc46569aeefa63f3021dcccb` |
| 28 | `def` | [pi](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/pi--16eca9b305611629732a992b.md) | 208 | `declaration-track:16eca9b305611629732a992b043978468b6d7c281a2457e435385f16185cbf7b` |
| 29 | `theorem` | [coe_pi'](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-pi--6f31979909164c14e84c9979.md) | 212 | `result-track:6f31979909164c14e84c99793dd1e0380b71056425bb23b877c10ccfa049394a` |
| 30 | `theorem` | [coe_pi](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-pi--6862802dbcf77ce7f56600ef.md) | 216 | `result-track:6862802dbcf77ce7f56600efabe74ae56ce3d3920fb1dad827ec26e355096e40` |
| 31 | `theorem` | [pi_apply](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/pi-apply--b5483addb0d7df4d015a2c31.md) | 219 | `result-track:b5483addb0d7df4d015a2c3152506be53db1ca1c667afa56f33efacc0c05e67f` |
| 32 | `theorem` | [pi_eq_zero](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/pi-eq-zero--5a54fa7de65535b7b6c84e9a.md) | 222 | `result-track:5a54fa7de65535b7b6c84e9a1dd8a46c24b69198fd02c83898b787eca1d5de5a` |
| 33 | `theorem` | [pi_zero](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/pi-zero--2e547ff6f500e440f08ee005.md) | 226 | `result-track:2e547ff6f500e440f08ee0052336632254be89481a7f7b1d350d8fb8e3ce4757` |
| 34 | `theorem` | [pi_comp](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/pi-comp--3c82a63f933dc9f179b89f59.md) | 229 | `result-track:3c82a63f933dc9f179b89f59ce52a379cf5c69f2c02651d695ffe660f0638c89` |
| 35 | `def` | [proj](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/proj--348abdda6af9395330fadf9a.md) | 234 | `declaration-track:348abdda6af9395330fadf9ab5dc19d061baf55939d438f553282bea07430d56` |
| 36 | `theorem` | [proj_apply](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/proj-apply--8a8a329a3ff60df212cdd6bb.md) | 238 | `result-track:8a8a329a3ff60df212cdd6bbdacaa801bf383c4376e57955d4fbcdc46e98c164` |
| 37 | `theorem` | [proj_pi](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/proj-pi--248260374485d23f1a878dd3.md) | 242 | `result-track:248260374485d23f1a878dd3b33e7885791dc82ab987886a698be93a935595fe` |
| 38 | `theorem` | [coe_proj](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-proj--48b44616d3d04b91989fb732.md) | 245 | `result-track:48b44616d3d04b91989fb732c33ab6c25d40cd00d8594ee26e2b14981a9245fd` |
| 39 | `theorem` | [pi_proj](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/pi-proj--95f4acd6244e0235bdf800de.md) | 249 | `result-track:95f4acd6244e0235bdf800de84a340ba12cb6a4a224d6160af33976cab6a5be5` |
| 40 | `theorem` | [pi_proj_comp](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/pi-proj-comp--059542218375ae75fe0ccca6.md) | 252 | `result-track:059542218375ae75fe0ccca64b2bc298b4bd6cb3b72e1777b18f44d9fc965be4` |
| 41 | `theorem` | [iInf_ker_proj](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/iinf-ker-proj--344d1a36ee45765d46eb4098.md) | 254 | `result-track:344d1a36ee45765d46eb409854cfd3aedad11b1d82ec16820e9a8bb2b1972393` |
| 42 | `def` | [piMap](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/pimap--6a58d192a7425c2f0f4eb0f4.md) | 268 | `declaration-track:6a58d192a7425c2f0f4eb0f46281c133b5585020e497c42fe2be4b45729aaeda` |
| 43 | `theorem` | [coe_piMap](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-pimap--97091171396833799aa149b1.md) | 272 | `result-track:97091171396833799aa149b19a576217b59bf9d5f13d2c60cd7f6321b205bb6c` |
| 44 | `theorem` | [coe_piMap'](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coe-pimap--677a818b8d1989d6bc7a4b43.md) | 277 | `result-track:677a818b8d1989d6bc7a4b43cbb2bc8225b527d0a967b604881aec8ee478e1a8` |
| 45 | `def` | [_root_.Pi.compRightL](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/root-pi-comprightl--0c5e70a5e27baa188aa186ff.md) | 286 | `declaration-track:0c5e70a5e27baa188aa186ffe769f99f4a3dc8b9eb1e3d17603c3d0395426430` |
| 46 | `lemma` | [_root_.Pi.compRightL_apply](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/root-pi-comprightl-apply--5b00a97655c6fc472cbc336c.md) | 291 | `result-track:5b00a97655c6fc472cbc336cd55a78f3681c2f950cb2531fe844bb4b5da1bb94` |
| 47 | `def` | [single](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/single--261fdacc006ecff228e193a0.md) | 296 | `declaration-track:261fdacc006ecff228e193a04e9904f166886135f03522db2367261c208dde91` |
| 48 | `lemma` | [sum_comp_single](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/sum-comp-single--8f25873e1894f5dfb483b308.md) | 299 | `result-track:8f25873e1894f5dfb483b3081df02619b7d2a3c684ba4eb78e3e49bcafb2193e` |
| 49 | `theorem` | [range_prod_eq](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/range-prod-eq--1855ce377a3225bf06d0cc91.md) | 312 | `result-track:1855ce377a3225bf06d0cc9148cbbd3284b4fff38a4b25719736e4f1c7d76c45` |
| 50 | `theorem` | [ker_prod_ker_le_ker_coprod](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/ker-prod-ker-le-ker-coprod--6f273a07ffaa057e8551e7a6.md) | 316 | `result-track:6f273a07ffaa057e8551e7a6887667f508eb31736b3a85f1fa09732ad65150fb` |
| 51 | `def` | [prodEquiv](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/prodequiv--59131018aca48b8aba53b0e8.md) | 332 | `declaration-track:59131018aca48b8aba53b0e809ae7a08a3e000390ba1e5f3afcfd44d6a414354` |
| 52 | `theorem` | [prod_ext_iff](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/prod-ext-iff--b8c87b707beae495f614a6f0.md) | 336 | `result-track:b8c87b707beae495f614a6f08840794d062f5e7a1ee65b4205a813e90531ca73` |
| 53 | `theorem` | [prod_ext](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/prod-ext--19b69306afc876a1f2227c4b.md) | 342 | `result-track:19b69306afc876a1f2227c4bd27781e516af14898bf0c2d89e1cc1737f5d9b52` |
| 54 | `def` | [prodₗ](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/prod--f707abc429335e4f9f3c4130.md) | 354 | `declaration-track:f707abc429335e4f9f3c41300eaa0b68876ad3e518b12a87b8f0f9bea88e9d83` |
| 55 | `def` | [coprod](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coprod--c5a2b5801d523d95b13389c0.md) | 373 | `declaration-track:c5a2b5801d523d95b13389c016826c480565b9ffbd00d56709d4e4fbfd8f182e` |
| 56 | `lemma` | [coprod_add](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coprod-add--4e1f8cef01b5f88859912db9.md) | 376 | `result-track:4e1f8cef01b5f88859912db97fed0f93c6814b0276a4ef178e13f04b43cc0909` |
| 57 | `lemma` | [range_coprod](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/range-coprod--8274dec8bccd7a61ce4c54f1.md) | 379 | `result-track:8274dec8bccd7a61ce4c54f1b2ee6921791d6df197a875a557b2498083d79468` |
| 58 | `lemma` | [comp_fst_add_comp_snd](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/comp-fst-add-comp-snd--9e069b588e666b8228f87b4d.md) | 382 | `result-track:9e069b588e666b8228f87b4d316d2f77037acc3529583c548cbc75dc37e087e1` |
| 59 | `lemma` | [comp_coprod](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/comp-coprod--1d9816b437ca9799833ff8e2.md) | 385 | `result-track:1d9816b437ca9799833ff8e264b84a0cc735f22a2d4cbf6437e70b6e120e441d` |
| 60 | `lemma` | [coprod_comp_inl](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coprod-comp-inl--6612c85c86a55ba12ea15a8e.md) | 389 | `result-track:6612c85c86a55ba12ea15a8eab3ba6e088da86f4d6674e3d5469142f79e852a4` |
| 61 | `lemma` | [coprod_comp_inr](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coprod-comp-inr--70370db394ba3e261ba87c41.md) | 392 | `result-track:70370db394ba3e261ba87c418234348fd57ad58c4a4bca099ae375e47afc0ea9` |
| 62 | `lemma` | [coprod_inl_inr](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coprod-inl-inr--81076df94a04118e3bf1022a.md) | 396 | `result-track:81076df94a04118e3bf1022af74bf42572a8880acfc3078b0440ecdcdfb875b5` |
| 63 | `lemma` | [coprod_comp_inl_inr](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coprod-comp-inl-inr--2c2f26397ad68a59e85c4be8.md) | 400 | `result-track:2c2f26397ad68a59e85c4be89f16ce543c76114c743178c0d89be7447148ef0e` |
| 64 | `def` | [coprodEquiv](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/coprodequiv--a8bfcc4ce479d86b3ff72a7f.md) | 411 | `declaration-track:a8bfcc4ce479d86b3ff72a7fde70aeb75c82019ac936879e016cee4de3aaf0e2` |
| 65 | `lemma` | [ker_coprod_of_disjoint_range](../../../../mathematics/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/declarations/ker-coprod-of-disjoint-range--8062e5b6f57572ee9f7f27fe.md) | 430 | `result-track:8062e5b6f57572ee9f7f27feb3ad4cda4f88f2c896d08d4797017653d5459cda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

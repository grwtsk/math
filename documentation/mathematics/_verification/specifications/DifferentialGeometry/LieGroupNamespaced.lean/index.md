# Verification target: Lie Group Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ade2c9a1688396460956a6205fdad7f2ea573f7e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/LieGroupNamespaced.lean/index.md) · [Full source](../../../../DifferentialGeometry/LieGroupNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ade2c9a1688396460956a6205fdad7f2ea573f7e`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.Monoid` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LieAddGroup](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/lieaddgroup.md) | 65 | `declaration-track:31fd6cf32e4c2da6cdb9f5a0eae63d2851075ef16cab8529b3c5394174124423` |
| 2 | `class` | [LieGroup](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/liegroup.md) | 76 | `declaration-track:dff28a4f34255dc558c3685a612015ea9abfa9e484e07dd8e2fe43a5ab8a091c` |
| 3 | `theorem` | [LieGroup.of_le](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/liegroup-of-le.md) | 98 | `result-track:5122de7c15c46314859a16603c853033b90259c455e92a1c8ab72c333295430d` |
| 4 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/instance-source-edition-7.md) | 104 | `declaration-track:c4ad05353d15bfcccc09b42fdb130b3f8aeee454b6fe77f64bbfd35d854ee31d` |
| 5 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/instance-source-edition-8.md) | 108 | `declaration-track:c633b350ee48cd66dafd4a9a8d34b0fa33a24cf3b56c0b0be87a68189cee4dcc` |
| 6 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/instance-source-edition-4.md) | 112 | `declaration-track:8517fb08a219acacc3e1e2fa4fb3c7ead63af899e958dc12f8618bdf15021143` |
| 7 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/instance-source-edition-9.md) | 118 | `declaration-track:d142e1291425b83c91a0cf534c798a7f79e9f0a562c78c9f4a744488e945f5ce` |
| 8 | `theorem` | [contMDiff_inv](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiff-inv.md) | 129 | `result-track:aae3d5b86d1d2607e8b9e0c1003127c3c19de2820e92f1bc74c4e6bf132401d1` |
| 9 | `theorem` | [topologicalGroup_of_lieGroup](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/topologicalgroup-of-liegroup.md) | 140 | `result-track:9227f6a68233116472a20202ce31a61bc92a3550eabfff08814cbf4cbbd88125` |
| 10 | `theorem` | [ContMDiffWithinAt.inv](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffwithinat-inv-source-edition-2.md) | 146 | `result-track:7b7082365367163f6ede38f2a3e7df08b48aaebb11851aee2796ba310e06882a` |
| 11 | `theorem` | [ContMDiffAt.inv](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffat-inv-source-edition-3.md) | 151 | `result-track:abe8370d562dc5c0ec715afc30f8de4857d5df20c8390df75af39e0ffad67a89` |
| 12 | `theorem` | [ContMDiffOn.inv](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffon-inv.md) | 156 | `result-track:68343c40659d142980f107aa383908a5c81eb01c4526fb7ea0b48173c6dc425d` |
| 13 | `theorem` | [ContMDiff.inv](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiff-inv-source-edition-2.md) | 160 | `result-track:b748cad26953bf12c008d2287c418f7a98c038e3ff005846eb334a34b62ddb66` |
| 14 | `theorem` | [ContMDiffWithinAt.div](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffwithinat-div-source-edition-2.md) | 174 | `result-track:5f5ea495351a721387bc9beeaf4d9027ab227251c9f7cccab49a1018968cb7be` |
| 15 | `theorem` | [ContMDiffAt.div](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffat-div.md) | 180 | `result-track:18b418b767b6c35af7d1b53433afa23db90ee35d77e1c6b88f2c3ccf1e24461d` |
| 16 | `theorem` | [ContMDiffOn.div](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffon-div-source-edition-2.md) | 185 | `result-track:9996e68ecb1f14c9f6482b701dd153b91e69acd446e2ff323f5e95382413c2f6` |
| 17 | `theorem` | [ContMDiff.div](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiff-div.md) | 190 | `result-track:69b1f5e7a339d67beeff17551532701216674daf9021c2f7c75e0074ceb07530` |
| 18 | `instance` | [Prod.instLieGroup](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/prod-instliegroup.md) | 210 | `declaration-track:3a51662acfc84cd5afec9cd0b9f7ea1eaac2ae8511b8f9d6c942bf1c199d4cb6` |
| 19 | `instance` | [instNormedSpaceLieAddGroup](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/instnormedspacelieaddgroup.md) | 223 | `declaration-track:80b341bc0f1f8d0987feaf88ffd03a774adfc563377a6fb6cda1e5924cd01ae3` |
| 20 | `class` | [ContMDiffInv₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffinv.md) | 237 | `declaration-track:50479fb2f62fcbf0edf130af1f4b7d7f1b9dfaab10c7716eb4ed84c60efb86de` |
| 21 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/instance-source-edition-2.md) | 246 | `declaration-track:49474e25776b80bc8d8188305bccc8b7470773a9c1722a56d3ab7c3e9d756ded` |
| 22 | `theorem` | [ContMDiffInv₀.of_le](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffinv-of-le.md) | 260 | `result-track:0dfc6e2726ed6849ea9ab399fd1159cb1d6fab313c56c9de2cd4fa339b958bca` |
| 23 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/instance-source-edition-3.md) | 264 | `declaration-track:5a0f5bb97f3b796cdbeee1a2f1487181424e3e334760789371193e41130d3df9` |
| 24 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/instance-source-edition-6.md) | 267 | `declaration-track:bfd3917ab2a2d84c608e7652f39c05d55881240539367eaf48e03597095fedac` |
| 25 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/instance.md) | 270 | `declaration-track:0cfa31acd77f80df2e4e6463c67adc977c51af3db55fd4578013d91b1a96bdb4` |
| 26 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/instance-source-edition-5.md) | 281 | `declaration-track:934e0ad79cefcc8296c47712d140de5fd1bb42818ffa887eb9e1a01de78136fb` |
| 27 | `theorem` | [contMDiffAt_inv₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffat-inv-source-edition-2.md) | 286 | `result-track:745e478257f3c411c042219f875aae64e6b175a2d1ea1f1cebb0ce9825548c50` |
| 28 | `theorem` | [hasContinuousInv₀_of_hasContMDiffInv₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/hascontinuousinv-of-hascontmdiffinv.md) | 295 | `result-track:f682c6f771c6107e5e7057c34627ae73364aed4f5a9174790d2862e62badd9b6` |
| 29 | `theorem` | [contMDiffOn_inv₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffon-inv-source-edition-3.md) | 301 | `result-track:a25c3420de0cd9404d98fd20f93ae6b5f7ccac9e8bf62eaa22cfdab10279d0e9` |
| 30 | `theorem` | [ContMDiffWithinAt.inv₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffwithinat-inv.md) | 309 | `result-track:5b5216ff52eb7296ef1da6b0709fe265ad76ed09e305553e0dfab0d3138cdb8c` |
| 31 | `theorem` | [ContMDiffAt.inv₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffat-inv.md) | 313 | `result-track:1e0589e2d91cb1e17b34e49b00e6729dcf57edb9edb22f7d2f835dd96ea37d38` |
| 32 | `theorem` | [ContMDiff.inv₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiff-inv-source-edition-3.md) | 317 | `result-track:c8f37a76305b1580ca6655dd758f8fa8a626782085a49423464700ad845ebd48` |
| 33 | `theorem` | [ContMDiffOn.inv₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffon-inv-source-edition-2.md) | 321 | `result-track:75ecf8f919ac3a34840de54673222a22285d1e2caca567740b75d290a6bf91c1` |
| 34 | `theorem` | [ContMDiffWithinAt.div₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffwithinat-div.md) | 349 | `result-track:28400a1419fcb3347600e2c1005705db84a5c78671f2c774ccd5dc0fc635ebd7` |
| 35 | `theorem` | [ContMDiffOn.div₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffon-div.md) | 354 | `result-track:39207e0799cf31292a1728c44a188d1667d88f5191383bdf2f383cd18e0c6d4d` |
| 36 | `theorem` | [ContMDiffAt.div₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiffat-div-source-edition-2.md) | 358 | `result-track:ac421df7650548b2462b4e4d14a2eb3283981a5f9d86904135468b98d57cdaa1` |
| 37 | `theorem` | [ContMDiff.div₀](../../../../DifferentialGeometry/LieGroupNamespaced.lean/declarations/contmdiff-div-source-edition-2.md) | 362 | `result-track:d0a312c8b49f198efd68be474cd58734f8c8b18abd7fca02d5b96fa417738206` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71a4c402738ed39c4dca4c3a6aef78a4489a2ef180a494c32ade19afcd89edf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

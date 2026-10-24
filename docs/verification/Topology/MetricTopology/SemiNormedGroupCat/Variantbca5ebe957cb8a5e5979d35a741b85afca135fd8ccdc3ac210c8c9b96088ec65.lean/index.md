# Verification target: GRWTSK.Topology.MetricTopology.SemiNormedGroupCat.Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55969c4ceb839c3eb4379814ead7cfcd55101624",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55969c4ceb839c3eb4379814ead7cfcd55101624`.

Source path: `GRWTSK/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.BundledHom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SemiNormedGroupCat](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/seminormedgroupcat--14f6202bb4e0b941cd0ae546.md) | 37 | `declaration-track:14f6202bb4e0b941cd0ae5460b99eab38a701d42f5b70eecc0ecda4219e280c8` |
| 2 | `instance` | [bundledHom](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/bundledhom--19276512eaf6e892bb4ae3cc.md) | 43 | `declaration-track:19276512eaf6e892bb4ae3ccbe234bd0cb681465f3f0614364751caf355ca90c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--5cdc2bf60776416dc69d12fd.md) | 54 | `declaration-track:5cdc2bf60776416dc69d12fda2d5c798bda03d65d97ce52bea8dd5961653762a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--9fd9d360958f62baae6506e7.md) | 58 | `declaration-track:9fd9d360958f62baae6506e76706c8ccfcc35db7de1a45854f1e0e7e65b61d30` |
| 5 | `def` | [of](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/of--f8776cac97457d2364cbc1b9.md) | 62 | `declaration-track:f8776cac97457d2364cbc1b9d362d508bd08e7f50576433558b7c90540e07fff` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--0c3446872076e7e6346b0e50.md) | 66 | `declaration-track:0c3446872076e7e6346b0e50d6203e14c145ab26d051c77505a3387e1285435a` |
| 7 | `instance` | [toAddMonoidHomClass](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/toaddmonoidhomclass--9b7c9355846acc0415c9f8e6.md) | 70 | `declaration-track:9b7c9355846acc0415c9f8e6ec55c932aa0c70b2debe7a9d7db811a9a6a786ce` |
| 8 | `lemma` | [ext](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/ext--2fd99204b720a49f6469f147.md) | 78 | `result-track:2fd99204b720a49f6469f1473acb3ac0aa845e443091074ec8ad27460b5555ab` |
| 9 | `theorem` | [coe_of](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/coe-of--460beaf48503b102fb69206f.md) | 82 | `result-track:460beaf48503b102fb69206f91aabf1e89a28130ae427f5aca68f1778b1302a2` |
| 10 | `theorem` | [coe_id](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/coe-id--721bd1e87dcab5073b9a4b3e.md) | 88 | `result-track:721bd1e87dcab5073b9a4b3e7c3a6cc05319ec7c97e73d76f1d791ed370f3c8d` |
| 11 | `theorem` | [coe_comp](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/coe-comp--84fd087c24ef4cd29cfe519a.md) | 94 | `result-track:84fd087c24ef4cd29cfe519ab1d50a95f8f7487ba7e3659b8fc5b71511648d92` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--e67a7e3dadd3c1825be10504.md) | 99 | `declaration-track:e67a7e3dadd3c1825be10504c25d67b607ed92de3aab251d2c59c1824435f476` |
| 13 | `instance` | [ofUnique](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/ofunique--2d9b6f630221715fb05b2512.md) | 102 | `declaration-track:2d9b6f630221715fb05b2512958f5e95739ef7f8c4394b7403482e23a2b30146` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--e0f919b42005ed03ecffe5f4.md) | 107 | `declaration-track:e0f919b42005ed03ecffe5f40f23ba4733d2c0e2c46cf293fef37cdb5ca668ff` |
| 15 | `theorem` | [zero_apply](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/zero-apply--703c90707bfca19606377584.md) | 111 | `result-track:703c90707bfca196063775849a16c022d5469a8a0be2bacee5cf94629bf5db82` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--3d55a9dc18dc8af389a79d2c.md) | 115 | `declaration-track:3d55a9dc18dc8af389a79d2ca2ba1842cf352859fba0134004af146124cc561b` |
| 17 | `theorem` | [isZero_of_subsingleton](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/iszero-of-subsingleton--03899e385eae5c3d83d2e79b.md) | 117 | `result-track:03899e385eae5c3d83d2e79b91deceba20399792363fa6cf9beceb1bbe92959c` |
| 18 | `instance` | [hasZeroObject](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/haszeroobject--05a8f9382de3389c463a5dd7.md) | 123 | `declaration-track:05a8f9382de3389c463a5dd7ca1542555593ac802a6eb83d6f2b2850ed9a2762` |
| 19 | `theorem` | [iso_isometry_of_normNoninc](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/iso-isometry-of-normnoninc--67ff74be315c1d68ef069cd2.md) | 127 | `result-track:67ff74be315c1d68ef069cd2555c0165ce660873aaa4a9ad7627f054e8f3ad71` |
| 20 | `def` | [SemiNormedGroupCat₁](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/seminormedgroupcat--ff1982571f51cb9ddb8d54f7.md) | 142 | `declaration-track:ff1982571f51cb9ddb8d54f79ffa8642328b4f325f4e46ce2e3bca9cffb96875` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--ce76f4b8f2d82db24722e600.md) | 148 | `declaration-track:ce76f4b8f2d82db24722e600c91d32250130da22928eb8da17c8d11652065614` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--4f5c3c75fe26d2468919854a.md) | 151 | `declaration-track:4f5c3c75fe26d2468919854ac74ee354754049f0abec746dc993a3cf7cb1024b` |
| 23 | `instance` | [instFunLike](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instfunlike--52b6aae650d1678343406269.md) | 157 | `declaration-track:52b6aae650d1678343406269f4f2389ec7611a79f2c3220388e571cd54619375` |
| 24 | `theorem` | [hom_ext](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/hom-ext--f3fc8f61f118e547d8b09daf.md) | 162 | `result-track:f3fc8f61f118e547d8b09dafcff6083cd48896da4a6b7902a1764c2e10593b04` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--7a2b56d259f8a8ed565953ea.md) | 167 | `declaration-track:7a2b56d259f8a8ed565953ead1ff41aadee9a1e1a1d7dda68965c26e8cdc88b8` |
| 26 | `instance` | [toAddMonoidHomClass](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/toaddmonoidhomclass--aa645cfcd4f6b60b3d50142f.md) | 174 | `declaration-track:aa645cfcd4f6b60b3d50142f23b1f211b3a59d5b268362bae7e3be18ce894407` |
| 27 | `def` | [of](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/of--a4d965230924b69e6e03870c.md) | 179 | `declaration-track:a4d965230924b69e6e03870ce4475d5efe4d05b4ae321aee06bf715b22dc3945` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--f5da1245eb638ff2ef97d333.md) | 183 | `declaration-track:f5da1245eb638ff2ef97d333e7350e66a28a78f0cb0762c70d36f40b9bea9409` |
| 29 | `def` | [mkHom](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/mkhom--cbf5a16ef091bb34ade14a0d.md) | 187 | `declaration-track:cbf5a16ef091bb34ade14a0d87f68fc704928936281f460dbaee812940175833` |
| 30 | `theorem` | [mkHom_apply](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/mkhom-apply--ccfe31b951143df9c994d714.md) | 193 | `result-track:ccfe31b951143df9c994d7140bc71ac74d4b217bab7e665d8b73fb6d7e898778` |
| 31 | `def` | [mkIso](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/mkiso--23485f435fc4ece9bee667a8.md) | 200 | `declaration-track:23485f435fc4ece9bee667a8d232a49caca80906bae419916b1b14f70e7e41cd` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--3bce4bd454543be1f7666868.md) | 208 | `declaration-track:3bce4bd454543be1f7666868ba6f4fdf77c202f444d1c0e1f11cd971de9765bc` |
| 33 | `theorem` | [coe_of](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/coe-of--f6ca9915d4325f196d547035.md) | 214 | `result-track:f6ca9915d4325f196d547035f5e80a4df3b090bd52fdf2e2da394b4be06b56f5` |
| 34 | `theorem` | [coe_id](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/coe-id--5940277c64b67030b34a212c.md) | 220 | `result-track:5940277c64b67030b34a212cd19763c8c0d08f1f12d9c84a4e7985466938c028` |
| 35 | `theorem` | [coe_comp](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/coe-comp--944d692c71690a076f2310a4.md) | 226 | `result-track:944d692c71690a076f2310a422976e859b431aa8ba2014965d07d870c5ab69be` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--2960a8e21229687d41fe2a2d.md) | 234 | `declaration-track:2960a8e21229687d41fe2a2d705d5d7538ce5b5b002a05304ca74cff95aa1ce5` |
| 37 | `instance` | [ofUnique](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/ofunique--e87a4bd77f515bdffcbf6a4a.md) | 237 | `declaration-track:e87a4bd77f515bdffcbf6a4adb07dfa94cba50c168bb398d63f52f054047ae78` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--cbd30f45146a6de2541a1f19.md) | 243 | `declaration-track:cbd30f45146a6de2541a1f198c92bc7631f8a75c04b1b2d735093eea9b8569db` |
| 39 | `theorem` | [zero_apply](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/zero-apply--317edd28e08aefd8f7c8dd95.md) | 247 | `result-track:317edd28e08aefd8f7c8dd952f7c0ee4374e2f3f69a537f9eda44695960a2cb3` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/instance--70e7ca383cdf4e6fe9abc471.md) | 251 | `declaration-track:70e7ca383cdf4e6fe9abc471f69be46d7b9af1c7fd87183a3f7527a699c8ac71` |
| 41 | `theorem` | [isZero_of_subsingleton](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/iszero-of-subsingleton--3efd59558d37aabb892e0c81.md) | 253 | `result-track:3efd59558d37aabb892e0c8146979dbb53b13251f490e8d0aa272910540b083c` |
| 42 | `instance` | [hasZeroObject](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/haszeroobject--d74f8b58c520251fc3bac744.md) | 259 | `declaration-track:d74f8b58c520251fc3bac74435e780078f64c734767b021958b19340e706b944` |
| 43 | `theorem` | [iso_isometry](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/declarations/iso-isometry--58736f300563208de687ddd6.md) | 263 | `result-track:58736f300563208de687ddd61f2638123ad34a34037cac251dfa6bdff966c48b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

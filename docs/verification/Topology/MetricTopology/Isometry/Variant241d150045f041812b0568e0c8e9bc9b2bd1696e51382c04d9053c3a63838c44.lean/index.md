# Verification target: GRWTSK.Topology.MetricTopology.Isometry.Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a33951d8b6b0f33e44b313218b3426c0b755aa3d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a33951d8b6b0f33e44b313218b3426c0b755aa3d`.

Source path: `GRWTSK/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Isometry](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/isometry--b2d4acbca09f09f52c909aaa.md) | 36 | `declaration-track:b2d4acbca09f09f52c909aaaf264fba131193c285f670d5daecc78aa21e3b454` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/instfunlike--27c65e75031dfc8350e9f053.md) | 49 | `declaration-track:27c65e75031dfc8350e9f053a5b75ba7e9abc8b98970ca969169f97c5647dfb9` |
| 3 | `instance` | [instLinearMapClass](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/instlinearmapclass--1b4aafea82003030b48719da.md) | 53 | `declaration-track:1b4aafea82003030b48719da87bfaeb0a3d399d1e8c17be04122743e1fb439c5` |
| 4 | `theorem` | [toLinearMap_injective](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/tolinearmap-injective--4ac592b54e860a591d420c49.md) | 57 | `result-track:4ac592b54e860a591d420c49f238a3c0c4bfa2c5abf7307a20663df8fd43b2ce` |
| 5 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/ext--31e0b4255d1f644872f97f44.md) | 62 | `result-track:31e0b4255d1f644872f97f44d28bec52ac82dc2d2850c54e0ab14ab6f1dd0b80` |
| 6 | `def` | [Simps.apply](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/simps-apply--3544d71f0039326c14c28693.md) | 66 | `declaration-track:3544d71f0039326c14c286931876a208910618367b2d6260d02805c06f3dad9a` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/map-app--4fd679602986897606629c2e.md) | 71 | `result-track:4fd679602986897606629c2e5b588b8217c567a23949c8a5128b803dac9cfcae` |
| 8 | `theorem` | [coe_toLinearMap](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/coe-tolinearmap--74856cb2d0243d78200b22a3.md) | 75 | `result-track:74856cb2d0243d78200b22a3a78998c7c2070276c6a5ee3b7ce5b433d02fef2a` |
| 9 | `def` | [id](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/id--58198039be2867bebf3134cb.md) | 80 | `declaration-track:58198039be2867bebf3134cbfa50a6e38d1086e34123b4bd6bff18a5121bbffa` |
| 10 | `def` | [ofEq](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/ofeq--4d8b54d10ebbf2e9ed3dc81e.md) | 86 | `declaration-track:4d8b54d10ebbf2e9ed3dc81e0b738053924bdcfc9a51b8e79265a39a513995a6` |
| 11 | `theorem` | [ofEq_rfl](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/ofeq-rfl--d3cc334c8a35a8122947f47b.md) | 91 | `result-track:d3cc334c8a35a8122947f47b4a7abb484557e0ce79437ee89020d4eaac3e1d15` |
| 12 | `def` | [comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/comp--651d5e8b7bb4b0d508bab0c4.md) | 95 | `declaration-track:651d5e8b7bb4b0d508bab0c410a1feb6a8283ccc3c0bba75ac857a014b7dc7b4` |
| 13 | `theorem` | [toLinearMap_comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/tolinearmap-comp--658a3dbbdcbc0f11c0e08622.md) | 101 | `result-track:658a3dbbdcbc0f11c0e08622735125708b52a0417b36f1d59d6dc1ff33c07979` |
| 14 | `theorem` | [id_comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/id-comp--32462269bae7baf8d536b13c.md) | 106 | `result-track:32462269bae7baf8d536b13cc7a7d4e0a909ffed8a900c39c9f5f7693321102d` |
| 15 | `theorem` | [comp_id](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/comp-id--dfaac31727e6c4911b2cc27f.md) | 110 | `result-track:dfaac31727e6c4911b2cc27f1fe73ea9413674b72770ca60ab7b02c9ed9ce02e` |
| 16 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/comp-assoc--520c343598c05ac5f3ed707c.md) | 113 | `result-track:520c343598c05ac5f3ed707c9354752799d8935f844e19e6ce55b29aa7ab510f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/instance--82c8293cdb126ccf6c7b4792.md) | 118 | `declaration-track:82c8293cdb126ccf6c7b47920d16e5c285edacd5964c229bb2cfb5369c9095c3` |
| 18 | `instance` | [hasZeroOfSubsingleton](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/haszeroofsubsingleton--2980a8dd8cc8a4db65f129ea.md) | 122 | `declaration-track:2980a8dd8cc8a4db65f129eae689e1bcbca9c1ec9b6b812697853f1fc299fcaf` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/declarations/instance--b14321dc6a208abf30cf2daa.md) | 128 | `declaration-track:b14321dc6a208abf30cf2daac80d21d550056e29e16b84ff329b7abd55294946` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.Units.Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53f18f912db98510cdac71c94bc5ee125281111f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53f18f912db98510cdac71c94bc5ee125281111f`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean.json)

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
| 1 | `lemma` | [Submonoid.isOpen_units](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/submonoid-isopen-units--13d5b95677acf272da91999d.md) | 29 | `result-track:13d5b95677acf272da91999d7dc0f6f93550cabba831a4f0cb7e76a3337970af` |
| 2 | `def` | [ContinuousMulEquiv.piUnits](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/continuousmulequiv-piunits--4995021229f02931170e4d1e.md) | 37 | `declaration-track:4995021229f02931170e4d1ef9fde6c0a85527b7b9c589208f6895af4c3c9c47` |
| 3 | `def` | [mapContinuousMulEquiv](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/mapcontinuousmulequiv--49facd71b7cb0cfdf97b5c59.md) | 54 | `declaration-track:49facd71b7cb0cfdf97b5c596209c446914c2ecae0411db3089adbbb03f934b9` |
| 4 | `theorem` | [symm_mapContinuousMulEquiv](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/symm-mapcontinuousmulequiv--9131cd91f1312833b49165f3.md) | 60 | `result-track:9131cd91f1312833b49165f3193cb1639dfcd006802e930ecfbd7d029f7c37c8` |
| 5 | `theorem` | [toMulEquiv_mapContinuousMulEquiv](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/tomulequiv-mapcontinuousmulequiv--ae99a8e6484d577670477813.md) | 64 | `result-track:ae99a8e6484d577670477813e2c4a669483caf6f1e0eeb57a58cf29a267f0964` |
| 6 | `def` | [toUnits_homeomorph](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/tounits-homeomorph--61eb5b1ab32aac3617522c88.md) | 76 | `declaration-track:61eb5b1ab32aac3617522c88ecbd6d9029f9e44aee94f1d00be10ed3c2d7bd0f` |
| 7 | `theorem` | [Units.isEmbedding_val](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/units-isembedding-val--46d4a516b2ffab798a3ec157.md) | 80 | `result-track:46d4a516b2ffab798a3ec157ee9ce3d7f57f835b7b7b3cc29c350c6a61d37bc1` |
| 8 | `lemma` | [Continuous.of_coeHom_comp](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/continuous-of-coehom-comp--7ac7750c656854061484cf9e.md) | 84 | `result-track:7ac7750c656854061484cf9ecf5da0c50dbc2e182171f4eac2dbe8b737dd90a3` |
| 9 | `theorem` | [range_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/range-embedproduct--f3b5aa3cd4ae43efa6d41c6d.md) | 94 | `result-track:f3b5aa3cd4ae43efa6d41c6d12047cc5cd6cddf1f4f2cb981ba05028ce2ace9a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/instance--6078e189508bb34325493d1d.md) | 102 | `declaration-track:6078e189508bb34325493d1d22054685d0710f66c1ca1a08c9d620825070bafc` |
| 11 | `theorem` | [isClosedEmbedding_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/isclosedembedding-embedproduct--63d239ca7761b1c9fc6a72f2.md) | 106 | `result-track:63d239ca7761b1c9fc6a72f2091bd1bc1aaf038628094e11974d1b402d5c2e78` |
| 12 | `lemma` | [_root_.Topology.IsClosedEmbedding.units_map](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/root-topology-isclosedembedding-units-map--57dda2817259ad6ae32577cc.md) | 114 | `result-track:57dda2817259ad6ae32577cc9c912f612e5133acc0f55f4800a2de00ba7327f8` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/instance--b2119d7eed00d6158f484927.md) | 121 | `declaration-track:b2119d7eed00d6158f484927051e936adf9c8f4f30b602d35b8c9d637f12922a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/instance--92cf48239fbe41dc68fec1ff.md) | 125 | `declaration-track:92cf48239fbe41dc68fec1ff2130ed2362d5a12db86b4dde1ea59b43b4d2365e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/instance--5f3d9890edfc69a4e22d1991.md) | 130 | `declaration-track:5f3d9890edfc69a4e22d19910b623fdb3f45ecf82fe98559bae4408211fbd18e` |
| 16 | `lemma` | [_root_.Submonoid.units_isCompact](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/root-submonoid-units-iscompact--a5e2b03bc74c514433e1b084.md) | 133 | `result-track:a5e2b03bc74c514433e1b084d84f5f1217c181be4c83ae6c751628d2f49773eb` |
| 17 | `def` | [_root_.Homeomorph.prodUnits](../../../../../mathematics/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/declarations/root-homeomorph-produnits--43efb3a3075dcdddf838cbaf.md) | 143 | `declaration-track:43efb3a3075dcdddf838cbaf24b8eab26e0a508658ea8bf4d40a582b96284b3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

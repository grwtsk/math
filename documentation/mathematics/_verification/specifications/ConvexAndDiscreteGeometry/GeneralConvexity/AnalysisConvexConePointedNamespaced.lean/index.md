# Verification target: Analysis Convex Cone Pointed Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "693a38b74f6e7c17fdb370a701c346a77d19933d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `693a38b74f6e7c17fdb370a701c346a77d19933d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.InnerDual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PointedCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/pointedcone.md) | 33 | `declaration-track:61135c65832f644564ad34946d1c3747b68ecdd41fb283b7bf5f366bab9b5e0b` |
| 2 | `def` | [toConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/toconvexcone.md) | 48 | `declaration-track:07dda5d7e82c549c7ab08022a95aaf30fa41ed25202621f18c64dc33b32117ef` |
| 3 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/instance.md) | 53 | `declaration-track:0c9ba190f488f79b2b860cd4bb51b3b400deca29b0a2d438bc87deef8b413d61` |
| 4 | `theorem` | [toConvexCone_injective](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/toconvexcone-injective.md) | 56 | `result-track:ece02bb6414b55cfe5e8dd1394c32f76ac1eb161c5825499ac98b4ff24f890bb` |
| 5 | `theorem` | [toConvexCone_pointed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/toconvexcone-pointed.md) | 60 | `result-track:7863ae77963af0ffa1d0a086ff3c5cf9ac37b739dd30485a206b0577971476ba` |
| 6 | `theorem` | [ext](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/ext.md) | 64 | `result-track:720c7dc86f8f4aef00ad520e945834b48811e486d59fc477e83d4f5ef3bf0edd` |
| 7 | `instance` | [instZero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/instzero.md) | 67 | `declaration-track:4f49c9067367cab97e6344b0e1334e4db5200d249648feae06d6b3f72c0219bf` |
| 8 | `def` | [Analysis Convex Cone Pointed Namespaced](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/topointedcone.md) | 71 | `declaration-track:cd7b056489d6cb6ed9b1f6642555eb007a7af6e23e08659407b8249ba23f3c9f` |
| 9 | `lemma` | [Analysis Convex Cone Pointed Namespaced](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/mem-topointedcone.md) | 86 | `result-track:a9cd8dc49491523ab12962651ea6e0706dc272bc3a5a329790c0e3dfdad80dda` |
| 10 | `lemma` | [Analysis Convex Cone Pointed Namespaced](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/coe-topointedcone.md) | 91 | `result-track:c3256ad679e68600540100d1b23d5e79cf75dab1bd7e54b97eecc415d68ec8bc` |
| 11 | `instance` | [canLift](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/canlift.md) | 95 | `declaration-track:4773e9ea56811fbc19a8bb1c511f0ac2e726839dba4bf8a61be30db64ac3dc10` |
| 12 | `def` | [map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/map.md) | 120 | `declaration-track:2c05a2519928b87e2aed82dcccc7ee212ec2d95822d711ecaa657a7acaa45ead` |
| 13 | `theorem` | [toConvexCone_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/toconvexcone-map.md) | 124 | `result-track:2818d9c5f17f37a95be2d1e6f8c7cf0d87d9dd1410a0ef6c731abc7d465ce6ed` |
| 14 | `theorem` | [coe_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/coe-map.md) | 129 | `result-track:372e1a89d6dd414ecd0039d7439d77dddc6778558c80cc7f1ae508edb54631ce` |
| 15 | `theorem` | [mem_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/mem-map.md) | 133 | `result-track:913d33f06a4d15c91dd26439e2598054a4b4842fb7592367d20c0deafb4bfd24` |
| 16 | `theorem` | [map_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/map-map.md) | 136 | `result-track:ef2b44b01cc45c900113374a7299fc1782aafc5fbafe6f59befe18ff75e91bcf` |
| 17 | `theorem` | [map_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/map-id.md) | 141 | `result-track:d501a13c72988884e70f4e9ffb33e5fc8c9639d821902920357ac1e082fea6ea` |
| 18 | `def` | [comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/comap.md) | 145 | `declaration-track:df668445f48905eb53ac6c79754f286726804cef7b6712cbcf43c91b51ea27ef` |
| 19 | `theorem` | [coe_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/coe-comap.md) | 149 | `result-track:b643a6531c1bf87d25d88165164d330da339c1528dac184510eaf9a0261d0c30` |
| 20 | `theorem` | [comap_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/comap-id.md) | 153 | `result-track:1b8fa3eaa58d3b36166af259836b484ce4817bf469816ddd55936bd8ddb1eebc` |
| 21 | `theorem` | [comap_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/comap-comap.md) | 156 | `result-track:f2ec576eb8fd39c9641959a0f47a3deaf084d19e813b8482214743b90e0cb84a` |
| 22 | `theorem` | [mem_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/mem-comap.md) | 161 | `result-track:94c007029d4d5dc910e0000d8fc108a6bc30bba6fd758aae316b331340c30775` |
| 23 | `def` | [positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/positive.md) | 174 | `declaration-track:6f0c1b09d5e06f59d2deb4f62121eccde5e57375a24be9c1e0f39b644494503b` |
| 24 | `theorem` | [mem_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/mem-positive.md) | 178 | `result-track:4659c04fd34211afff1c15766577668ceabba65a0f422ed77159510118fce741` |
| 25 | `theorem` | [toConvexCone_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/toconvexcone-positive.md) | 182 | `result-track:98743b81d2da79f62f8b32031a28815b2e26d75089b41052e4db418e341d0b73` |
| 26 | `def` | [dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/dual.md) | 191 | `declaration-track:0a49037ff90c171381674692ac011e0c6df74d8cd6cc2ad5fb28a8696e9d2177` |
| 27 | `theorem` | [toConvexCone_dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/toconvexcone-dual.md) | 195 | `result-track:29685b4624353d20360d46fd50cb4f7027f1feda79aad942cfa6c93b7980b601` |
| 28 | `theorem` | [mem_dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/AnalysisConvexConePointedNamespaced.lean/declarations/mem-dual.md) | 200 | `result-track:f4e85daae44ff1110ff0755347852e658b9b371ecc9f70ac77344815bb0cd750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=544cb2bffe533df89ea8bcbbcea2b63c801907195cfd1ff19638e32a28558d1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

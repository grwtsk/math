# Verification target: Convex Body Body Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1cbb0d4d64551ce893de0aaa77338238450b54d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Body/Variant6dcf01c73c37123f0c34cdbcd06392181322bcf066594d93ce181739b15de41a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1cbb0d4d64551ce893de0aaa77338238450b54d`.

Source path: `GRWTSK/Topology/GeneralTopology/Body/Variant6dcf01c73c37123f0c34cdbcd06392181322bcf066594d93ce181739b15de41a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Body/Variant6dcf01c73c37123f0c34cdbcd06392181322bcf066594d93ce181739b15de41a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConvexBody](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/convexbody.md) | 48 | `declaration-track:21301b6f66bb49cbf67ce61aea0ac28aa9f9cbae0b51a51cbf88668dd683d7ee` |
| 2 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:264fa4636a814274540a76b67fd71b466bb78c493aeec04bbdcb6dc3e9df10e1` |
| 3 | `theorem` | [convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/convex.md) | 71 | `result-track:6f1eee21ba7795c18fbe4aa821c45109a9721a1a4d9f9208ad3e434d29f61573` |
| 4 | `theorem` | [isCompact](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/iscompact.md) | 74 | `result-track:b3a896c9ace42bdaf0a079fe612e4bccf5a131dba0ac5353670b4961b6ae3d45` |
| 5 | `theorem` | [isClosed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/isclosed.md) | 77 | `result-track:98473985147bf6c153399bd1e4e1180ac9b6afbee42c18c8b53e8ee5029ed49e` |
| 6 | `theorem` | [nonempty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/nonempty.md) | 80 | `result-track:c9cb05491ecbd30eff0c4cd45d97d96dc3093ec9b8d5a03e9455d15ba3493121` |
| 7 | `theorem` | [ext](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/ext.md) | 84 | `result-track:c8d542cbbbec4843fae2ffba903c7690b6c4969be0d11dceaa53f546431a3f8c` |
| 8 | `theorem` | [coe_mk](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/coe-mk.md) | 88 | `result-track:51c0fe1de6c8520f2165e30af42d8ef870ad2982a5cfccfb4e6c617eb89084b0` |
| 9 | `theorem` | [zero_mem_of_symmetric](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/zero-mem-of-symmetric.md) | 92 | `result-track:df99f7fd1fa77f93a22b906e051102d76463e3cbeb28d0ed7de80c6138d831b8` |
| 10 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-6.md) | 100 | `declaration-track:6798f8ed38d92f58a95956e14748bb1f02109756c154754dd4771439e3e31211` |
| 11 | `theorem` | [coe_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/coe-zero.md) | 104 | `result-track:cde2474f6a3cb618b1defae635c7e4bc46bfe8fc1263b047c53730102e6c181b` |
| 12 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 107 | `declaration-track:4961781da7607567c95f136eccc693bc738852bc3356baf85e13e23ecfa21950` |
| 13 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-12.md) | 112 | `declaration-track:f60aa4cdc130fc4ced43cd25520b9330999894dde2e74515a0cc6b683a114e57` |
| 14 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-8.md) | 117 | `declaration-track:aa4b5943ec311256fc1ad6dc2042518cd4dfde61fef6086f5e73df274c540511` |
| 15 | `theorem` | [coe_nsmul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/coe-nsmul.md) | 121 | `result-track:f5d6fd7fca7d9d67baf7e742fd23f107888718e7cfae16e66dd94994a41086f6` |
| 16 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 125 | `declaration-track:47ef65e53172662e2225ee8a60b9fe63fb2f0f8ec8664069a2f8cb0dda0a3162` |
| 17 | `theorem` | [coe_add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/coe-add.md) | 129 | `result-track:cb5651cafed50c5fc2e93468ea5109a7aded9d7afc13822b749abebb5e55e10e` |
| 18 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-10.md) | 132 | `declaration-track:c902ff3b9cb8ea7224a196d7069426105efbb9a4bb5656199f3d7533b7a272a3` |
| 19 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-7.md) | 139 | `declaration-track:68653e7a3ebdfd4912e827c2b08cb6a16a399b60a8b79b614ccf2b173ae84b55` |
| 20 | `theorem` | [coe_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/coe-smul-source-edition-2.md) | 143 | `result-track:e9cbdff811700f33ebfceaa994e7903bb933c36b18145a5f9cae96b2dfeff816` |
| 21 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance.md) | 148 | `declaration-track:014291305aaf827b81e605a1eb6c4e508f29b5d20d31beb0f9d39278c763da16` |
| 22 | `theorem` | [coe_smul'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/coe-smul.md) | 152 | `result-track:c2dd78622ab49bbf0609fee6998ee10ad2ff6814d0c83b4b079af010d9669c1a` |
| 23 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 157 | `declaration-track:42fe7fd259b1564bc14efd39afef0e946e22b1f0c0164e2f0617d8590e21e481` |
| 24 | `theorem` | [smul_le_of_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/smul-le-of-le.md) | 161 | `result-track:4b5c5f235c1dc622306c37a8cb36c33a19e376cbbbafe3265bb4af5ed8a55d2b` |
| 25 | `theorem` | [isBounded](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/isbounded.md) | 179 | `result-track:f22a569b7ebbc7220dc6b6f96410a66fe2795f699ca9a8a20f0e12c1a5a8b858` |
| 26 | `theorem` | [hausdorffEdist_ne_top](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/hausdorffedist-ne-top.md) | 182 | `result-track:a1999543e754ba07e4a881360b97969e1de8390c10e11b794303ad3d7c591142` |
| 27 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-9.md) | 188 | `declaration-track:af07adbb0f78eaea568d5946d3c2335089798da7263979e5464682b166b76c3d` |
| 28 | `theorem` | [hausdorffDist_coe](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/hausdorffdist-coe.md) | 195 | `result-track:3c2bde1529484cb01931158c0a65ce532ed5ca4aaa565c03d3a5aad9351c3eb8` |
| 29 | `theorem` | [hausdorffEdist_coe](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/hausdorffedist-coe.md) | 199 | `result-track:ad2e08e9a23bee3a8f3c0bd028efaf7e38b00f05c8a0001ed998bfbb08eeea3f` |
| 30 | `theorem` | [iInter_smul_eq_self](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/iinter-smul-eq-self.md) | 208 | `result-track:f0d46e1501db293a57dd11c0fc42a34b82e679a022f0f2d920a327678df5475b` |
| 31 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBodyBodyNamespacedSourceEdition2.lean/declarations/instance-source-edition-11.md) | 236 | `declaration-track:cae58b6e6f8927498e14978ae49c3a8daa1900d386a7b976ba66ba48d00878a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df740fafb6bf6e9192f78e9f8b2d98245b9e2e9057962ec444799b15d99f5d0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Body/Variant6dcf01c73c37123f0c34cdbcd06392181322bcf066594d93ce181739b15de41a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Body/Variant6dcf01c73c37123f0c34cdbcd06392181322bcf066594d93ce181739b15de41a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

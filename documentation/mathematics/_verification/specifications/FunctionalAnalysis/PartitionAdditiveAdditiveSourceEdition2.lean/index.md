# Verification target: Partition Additive Additive Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5564eb075473d695f3a8de0c8325ab042066ce56",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Additive/Variantd763d64e09b8202f580e256179c8658b673fba775ce3c0f6b2426dd8a1244b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5564eb075473d695f3a8de0c8325ab042066ce56`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Additive/Variantd763d64e09b8202f580e256179c8658b673fba775ce3c0f6b2426dd8a1244b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Additive/Variantd763d64e09b8202f580e256179c8658b673fba775ce3c0f6b2426dd8a1244b28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Split` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoxAdditiveMap](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/boxadditivemap.md) | 45 | `declaration-track:92afce391aabd92f0f68479e2e0d6c144cf4ed5302642a082193338c61f5442e` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/instance-source-edition-6.md) | 61 | `declaration-track:e6eaa8af4ed54aebb04755ac263cd54ab497b8d7c3b33a3dc043c94979968e12` |
| 3 | `theorem` | [coe_mk](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/coe-mk.md) | 70 | `result-track:83c6e05827cce121a83d1894aec03e98102ac35b92f590b8745680b95d621741` |
| 4 | `theorem` | [coe_injective](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/coe-injective.md) | 73 | `result-track:de419aa8f65ed2c3f213461110e3d87f46ecb826c26a672d368af1b055b9ddae` |
| 5 | `theorem` | [coe_inj](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/coe-inj.md) | 78 | `result-track:41c54b37456ff2e9235eb2a15c10c4b8975ecf55abe90030ab29e4fa53d04966` |
| 6 | `theorem` | [sum_partition_boxes](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/sum-partition-boxes.md) | 81 | `result-track:ada303f1d32335f9523b160132685c60a4884b9c1da36d04674dd4f0ae33a1f2` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/instance-source-edition-5.md) | 87 | `declaration-track:e53d556fafbf4388aacfb82584db04ae54a3d99d51025e62014062a02abdde91` |
| 8 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/instance.md) | 90 | `declaration-track:2a8936cec66b94f1fdf70b726ad4d63cb72db6de458a25a869a06dde9d681f84` |
| 9 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:41f193a465b641a29f257d5b50743007377337180a89290b7c261ee2db45274b` |
| 10 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/instance-source-edition-3.md) | 98 | `declaration-track:cf22efcabbbf0d0f3ca6876c99edb930abba26ab521979fed871e94387199a30` |
| 11 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/instance-source-edition-4.md) | 103 | `declaration-track:d96a9c8d99107ed39a12602d9803e22de53a651cb2c40ff3664c27dc68dfe42b` |
| 12 | `theorem` | [map_split_add](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/map-split-add.md) | 107 | `result-track:436b3f92b5615f036e034f6bcb93a63f80688f7d5fca551a2cc291c0c1a28c07` |
| 13 | `def` | [restrict](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/restrict.md) | 115 | `declaration-track:dbc3bd126c5bda590b063117253cf98afb6159e42fd809178757a840c0ff2dd3` |
| 14 | `def` | [ofMapSplitAdd](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/ofmapsplitadd.md) | 121 | `declaration-track:b9e88f7570591a69e26fefb6d95a7d8a6920faed74ae55798003a5111b831e50` |
| 15 | `def` | [map](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/map.md) | 146 | `declaration-track:9f5ce6fea351d7ae280df559d93884db760c15dba436f2987b26ff8f2e4a4035` |
| 16 | `theorem` | [sum_boxes_congr](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/sum-boxes-congr.md) | 153 | `result-track:cd5c12c8e3005e4b6d64ebae5516eb7fc0e0a5bf9c370f9703a83e06aaf853f5` |
| 17 | `def` | [toSMul](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/tosmul.md) | 178 | `declaration-track:c0e09ab2bc414971b5e446a378451e4b8a1fe4d6a191b7fcb5784ada61289041` |
| 18 | `theorem` | [toSMul_apply](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/tosmul-apply.md) | 183 | `result-track:cae0eb14818ff4c86f468ee22589fc0f0c75ba7f15c6b643428640092bdb2913` |
| 19 | `def` | [upperSubLower.](../../../../FunctionalAnalysis/PartitionAdditiveAdditiveSourceEdition2.lean/declarations/uppersublower.md) | 193 | `declaration-track:daf012c3ed8ae02a193dd48e1cb022d9eb5018b762bdf2c211b625ebb0e783c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7eb0172b8eaca234b9d7297e49feb2c721f06e59da03e642396ee11bdd8f5b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Additive/Variantd763d64e09b8202f580e256179c8658b673fba775ce3c0f6b2426dd8a1244b28.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Additive/Variantd763d64e09b8202f580e256179c8658b673fba775ce3c0f6b2426dd8a1244b28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: GRWTSK.Topology.GeneralTopology.UniformField.Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59d989061f1cf8ba29eddd57d82dc92d4ebec9b0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/index.md) · [Full source](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59d989061f1cf8ba29eddd57d82dc92d4ebec9b0`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompletableTopField](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/completabletopfield--024e1598a940deda949d9346.md) | 61 | `declaration-track:024e1598a940deda949d93465222cd5b510a113d53eee2000b7b45bc42af6c32` |
| 2 | `instance` | [(anonymous)](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/instance--c554040aabb35448c24d3f5f.md) | 68 | `declaration-track:c554040aabb35448c24d3f5f6ce04141e1e2bc6e557d7ade06b77984c551fe28` |
| 3 | `def` | [hatInv](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/hatinv--14dfa17515806e3ab30c3765.md) | 74 | `declaration-track:14dfa17515806e3ab30c3765c04e3e81ba2aa694911212cba6443130ffd50cb8` |
| 4 | `theorem` | [continuous_hatInv](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/continuous-hatinv--6a24f7c186002edbb8dc612e.md) | 78 | `result-track:6a24f7c186002edbb8dc612ede749e6da4428723178640f23525af51416e0499` |
| 5 | `instance` | [instInvCompletion](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/instinvcompletion--a3fe6d302a5a43b8eced0409.md) | 107 | `declaration-track:a3fe6d302a5a43b8eced0409cdff5dea30b18217409bd5339596485d9f483acd` |
| 6 | `theorem` | [hatInv_extends](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/hatinv-extends--adc896a3d0c24e7fad501752.md) | 112 | `result-track:adc896a3d0c24e7fad501752287d1b589193d9afaf18699a8c803e2c6725bc4e` |
| 7 | `theorem` | [coe_inv](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/coe-inv--a511dfe4ce7c04d1073e122f.md) | 118 | `result-track:a511dfe4ce7c04d1073e122fc9846f2ec6f1e43687b343b0976640955d80430d` |
| 8 | `theorem` | [mul_hatInv_cancel](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/mul-hatinv-cancel--3f6555d6d92872a0af36b81c.md) | 131 | `result-track:3f6555d6d92872a0af36b81cba2e713225eed310b6c4c933fc4905e6a2c15cbd` |
| 9 | `instance` | [instField](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/instfield--f3a5da2baa5fc44202f1f361.md) | 156 | `declaration-track:f3a5da2baa5fc44202f1f361b1ccd98208fedc90e371c335882a7fc11f32e34f` |
| 10 | `instance` | [(anonymous)](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/instance--ba5cca1c05226d1dbc665410.md) | 165 | `declaration-track:ba5cca1c05226d1dbc665410ea184bbec833011f919490fd9460603aeba4389d` |
| 11 | `instance` | [Subfield.completableTopField](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/subfield-completabletopfield--c6671019deb80d2411b8f524.md) | 184 | `declaration-track:c6671019deb80d2411b8f5240418e1e88542b42949b0f71d079d5d4bc7c812b1` |
| 12 | `instance` | [(anonymous)](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/instance--6c2fdfd680e4c5e452dcc4bb.md) | 193 | `declaration-track:6c2fdfd680e4c5e452dcc4bb80ba4a1248059d3144e64674cf2a9df21ecaebb0` |
| 13 | `theorem` | [IsUniformInducing.completableTopField](../../../../../../Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean/declarations/isuniforminducing-completabletopfield--cab98930d112fb48a27174da.md) | 212 | `result-track:cab98930d112fb48a27174da51e2745ad780431deef4390be4b5995a552e1a8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=293e84fd421b757a9f559d6b90a35b7f1db959972a9dfb86d2692251ef438a60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformField/Variantfef2719f89e9b1aff8e0b8e193a2be7ec1ade9138b30cfdf24a8f65cc19e9bff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

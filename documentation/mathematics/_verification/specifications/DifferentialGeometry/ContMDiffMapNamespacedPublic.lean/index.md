# Verification target: Cont MDiff Map Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b70b8bbdf0e02015f0cca9fa8df16a60ba24e2aa",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variant613056f721c7ce85f3920e7c670237e42313c38d23dbd9f9326174d3109392dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b70b8bbdf0e02015f0cca9fa8df16a60ba24e2aa`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variant613056f721c7ce85f3920e7c670237e42313c38d23dbd9f9326174d3109392dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiffMap/Variant613056f721c7ce85f3920e7c670237e42313c38d23dbd9f9326174d3109392dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContMDiffMap](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/contmdiffmap.md) | 46 | `declaration-track:7c3a1c5fcfef70b2b065488ad807ed6632e1b26c0d1400358a24e5d91f6e695a` |
| 2 | `instance` | [instFunLike](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/instfunlike.md) | 63 | `declaration-track:91e88a95f94010ef3bfda9f2df0946b799856e435d382fed86968255658e23fc` |
| 3 | `theorem` | [contMDiff](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/contmdiff.md) | 67 | `result-track:bd6e87cae6a81663a670cb24613d83ee560901b2b49655e28e7bffb3dd1ca06e` |
| 4 | `theorem` | [coeFn_mk](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/coefn-mk.md) | 74 | `result-track:ba2d5d5ba21a0dc83128488358da56e82b5ff9695ac9284261b9627c90154e48` |
| 5 | `theorem` | [coe_injective](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/coe-injective.md) | 78 | `result-track:683ab44d92fc336c5c2477345df1e725fbf82cbfbb69602acffc6a6c32af202c` |
| 6 | `theorem` | [ext](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/ext.md) | 82 | `result-track:4cc98c107b90b1151e48990a75fc6d8d11e98b0e28981e92b824356b35ae3c6e` |
| 7 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 84 | `declaration-track:65efc9aec2dc8514eab4bf5595fa26816257a43d19389511bcff3072f249a648` |
| 8 | `def` | [id](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/id.md) | 88 | `declaration-track:86dda383d0877f59e5e8f0832a722d3258b1c5b39f0b9ed61ee24af5b6901b41` |
| 9 | `def` | [comp](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/comp.md) | 92 | `declaration-track:d4a5fba8bef1b89fe68d6267880c8b482bb38476d3238757cb48ee4d7efdb737` |
| 10 | `theorem` | [comp_apply](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/comp-apply.md) | 97 | `result-track:424dd42b7e887626427b503d2b5e8ed195837a7000eb6a45f331d765ca599d86` |
| 11 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/instance.md) | 101 | `declaration-track:5660b6f590e5f241fc4f33667c822b5546d8038f43ce8f3071f9f88f5e723d19` |
| 12 | `def` | [const](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/const.md) | 105 | `declaration-track:18aa4f1db467d8067d611b223aa5f1488b8dddb00a73d9f4d95db9aa5bebe57c` |
| 13 | `def` | [fst](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/fst.md) | 109 | `declaration-track:207daedd82280fee4ff6d7b211bfd5025493c87138f19d8cdd73e032aafd928e` |
| 14 | `def` | [snd](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/snd.md) | 113 | `declaration-track:5468d13c8b6ed9b614909dbf187ae45c045df2768753435c0a5b6fcd9089f5d7` |
| 15 | `def` | [prodMk](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/prodmk.md) | 117 | `declaration-track:77a5cf03312d3059559052d222ec21acac430e45f3b09d1b45537babe143175b` |
| 16 | `instance` | [ContinuousLinearMap.hasCoeToContMDiffMap](../../../../DifferentialGeometry/ContMDiffMapNamespacedPublic.lean/declarations/continuouslinearmap-hascoetocontmdiffmap.md) | 122 | `declaration-track:94858c78adfb41e26088d9ea2e5159a2f7a3b5455ebe9b4066bebca418361404` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6898faf9090512df0536833d89ebc9b4da357fc00736863ef850be9e4db65acc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variant613056f721c7ce85f3920e7c670237e42313c38d23dbd9f9326174d3109392dd.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/ContMDiffMap/Variant613056f721c7ce85f3920e7c670237e42313c38d23dbd9f9326174d3109392dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Binary Matrix Surface Flow Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f734857e60865c76676aea25405e1600d842212a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant92306c0c0be539e45bd3ca7896d998abb6fae65ef3eaed4db12bda9c06350dba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f734857e60865c76676aea25405e1600d842212a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant92306c0c0be539e45bd3ca7896d998abb6fae65ef3eaed4db12bda9c06350dba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant92306c0c0be539e45bd3ca7896d998abb6fae65ef3eaed4db12bda9c06350dba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.DiscreteGeometry.BinaryMatrixHomology` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinarySurfaceFlow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/binarysurfaceflow.md) | 37 | `declaration-track:4d4e398d2ad3f05384c5d6595c74bc85717a594f38bc3b8f914200063317d1df` |
| 2 | `def` | [NonFlowingAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/nonflowingat.md) | 51 | `declaration-track:b0538ea6551c52e4058d8d47e8efc2fe0063230201e68cd59931a324a9a46bb5` |
| 3 | `def` | [RelaxedAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/relaxedat.md) | 56 | `declaration-track:da0ac7d94a147c7a9246de35b0455c79d965018b52fcf96324f2c8e61e08eac6` |
| 4 | `def` | [UniformRadialAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/uniformradialat.md) | 61 | `declaration-track:87da43a28fba5b2fad834ef65b4cedbbbf912059fd310512ec949f81a5a02581` |
| 5 | `def` | [DirectionalAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/directionalat.md) | 66 | `declaration-track:71dcf55a57b540db07f316de07570d507be7f0871a6a48ed07993dd8537ff487` |
| 6 | `theorem` | [all_flows_trichotomy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/all-flows-trichotomy.md) | 74 | `result-track:a2c1f78a078a18330c26341cda35058e3157403182478911b030a27d2873cb8a` |
| 7 | `theorem` | [nonflowing_iff_relaxed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/nonflowing-iff-relaxed.md) | 90 | `result-track:3e81862697c7505a826bf5ee69eb5c6ef05c012d31c4cb9da9c59829560b52f5` |
| 8 | `theorem` | [nonrelaxed_nondirectional_is_uniform_radial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/nonrelaxed-nondirectional-is-uniform-radial.md) | 96 | `result-track:10645009fe687cdc864b1ef2b441f71743dd357cb52ece7ebbae64b5750df20a` |
| 9 | `theorem` | [otherwise_directional](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/otherwise-directional.md) | 110 | `result-track:19fbb6895dad12ffb0c555f45be7e45e6f71bc7aaaf749f8b6ef3972f63f24e4` |
| 10 | `structure` | [HomologicalBinarySurfaceFlow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/homologicalbinarysurfaceflow.md) | 131 | `declaration-track:ed05729273c28163c54d5448c695c2ed461c7f6b8570de83961aebb63bfbedd4` |
| 11 | `def` | [toDirectionalBinaryCellFlow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/todirectionalbinarycellflow.md) | 145 | `declaration-track:2b0b0b5c9f67788f31b830c25d1ae933c1ff76af428b0d81de1db819389886d8` |
| 12 | `theorem` | [total_defect_index_constant](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/total-defect-index-constant.md) | 155 | `result-track:124c4a1d9a838c8da13dfb6a03313a79afafe36f7da62ccf1bf76fcebc8b040a` |
| 13 | `theorem` | [sphere_like_directional_branch_not_defectless](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlowNamespaced.lean/declarations/sphere-like-directional-branch-not-defectless.md) | 164 | `result-track:60bb7fa04bbe9535b66e6cd4f96b7f82518e1874334031796cd37d2e4e80ce2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e07c4ba7ae53333b1dc9073f7cf183129a805744ac46d7b5837108159b66d6c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant92306c0c0be539e45bd3ca7896d998abb6fae65ef3eaed4db12bda9c06350dba.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant92306c0c0be539e45bd3ca7896d998abb6fae65ef3eaed4db12bda9c06350dba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

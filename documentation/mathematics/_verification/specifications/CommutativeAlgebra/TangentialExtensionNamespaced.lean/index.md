# Verification target: Tangential Extension Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1aa1917f23f873a3864d61458495c7cbe8105e8c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1aa1917f23f873a3864d61458495c7cbe8105e8c`.

Source path: `GRWTSK/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.SmoothFramedSurgery.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FramingActionConvention](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/framingactionconvention.md) | 41 | `declaration-track:dcb331652c80474557cb71c12532eaae202bf50b238281882b04369887b885fa` |
| 2 | `structure` | [OrderedZeroSphereEndpoints](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/orderedzerosphereendpoints.md) | 46 | `declaration-track:10511552d8623f6e3d9c5ed41b960e0b31b9f54666b5d1e464cc2bf44c02b0ed` |
| 3 | `structure` | [TangentialObstructionTheory](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/tangentialobstructiontheory.md) | 54 | `declaration-track:d2df60b8cbe667ec87987def5d4d9558249f0408df13cac4f3c340177c19065c` |
| 4 | `structure` | [ZeroSphereAbelianDifferenceModel](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/zerosphereabeliandifferencemodel.md) | 129 | `declaration-track:28c97c4b4cfd64c6494e5a61500e52e504e8754050910c6cf7dc30a012811c7f` |
| 5 | `def` | [obstructionMap](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/obstructionmap.md) | 163 | `declaration-track:707fcc0a00f9f4aa83db1b6e0e94efa6bc16258f404bdaab5bdf7bd961a81e15` |
| 6 | `def` | [boundary](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/boundary.md) | 169 | `declaration-track:6dbafde6ff4aa7f2d1d7cb50a5017956c47e9fa8d66439ab6aeaea48a05757e9` |
| 7 | `theorem` | [extends_after_change_iff](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/extends-after-change-iff.md) | 181 | `result-track:5083f975dc1444c7c4cb7ceabef889d2850e3dd95f3aa99f72ecaf2b408e8053` |
| 8 | `theorem` | [extends_after_change_of_defect_eq_neg](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/extends-after-change-of-defect-eq-neg.md) | 194 | `result-track:c147e9546dacea692ce2fe990faa72afa0419b51f0524487195f535221887b1f` |
| 9 | `theorem` | [boundaryClass_eq_zero_of_extends](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/boundaryclass-eq-zero-of-extends.md) | 209 | `result-track:25f050c745c23b692dbbbdeaa52354ab7728a57ab0b2abca9d6c77428cab57b7` |
| 10 | `theorem` | [boundaryClass_zero_change](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/boundaryclass-zero-change.md) | 219 | `result-track:79c7902ce14651d933faf2f122138c4d103e7e2513cfcf7dcddc802cfbeaaa30` |
| 11 | `theorem` | [extends_iff_nonempty_nullhomotopy](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/extends-iff-nonempty-nullhomotopy.md) | 230 | `result-track:d42bb8913ee9382cdbe99a5485843136803d59994d38056771181f2a70c0a044` |
| 12 | `theorem` | [framingAction_reference](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/framingaction-reference.md) | 240 | `result-track:16819957306fcb80fbeafcf0a5b6841d1af0043bde9216194162ca50dd3e864e` |
| 13 | `theorem` | [stableBoundaryClass_stabilize](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/stableboundaryclass-stabilize.md) | 249 | `result-track:ead60b7d22546b6ad7917fc3a69a434ab3d9fcc7597d8cc2223f973e22b279e7` |
| 14 | `theorem` | [framingAction_comm](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/framingaction-comm.md) | 256 | `result-track:d2161de2cb9b98c9b649a16571c1f6da60033b3532d7b75b45aff48f9fc4c4eb` |
| 15 | `theorem` | [action_is_left](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/action-is-left.md) | 267 | `result-track:38fb54698c2b0407d3fb2fdf8bd106dd059e2bc630467f0411807aba2c2481bc` |
| 16 | `theorem` | [extends_zeroSphere_iff_endpoints_samePathComponent](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/extends-zerosphere-iff-endpoints-samepathcomponent.md) | 277 | `result-track:506005c618712993bfc37c6e8636e743a597bcdc43fbaefb5ecb0263df6957d3` |
| 17 | `theorem` | [obstructionMap_zeroSphere_abelian_difference](../../../../CommutativeAlgebra/TangentialExtensionNamespaced.lean/declarations/obstructionmap-zerosphere-abelian-difference.md) | 291 | `result-track:b4b69567d0ba3fe2ae88f23155d293dd901a7ce0295a420846c31c73b1efeb1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c174a85c889fd1c78023e6df8d9bf4bc5867b434d5d943cf6cd6f9a30831ee93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean","GRWTSK/_verification/specifications/Algebra/TangentialExtension/Variant5786af59f005010638c8c69dbecaa7ee9424dd1eb5f2a3100f2947c36eb043e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

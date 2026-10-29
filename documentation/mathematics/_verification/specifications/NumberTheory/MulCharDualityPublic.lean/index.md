# Verification target: Mul Char Duality Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de835ef1a4c41b855cc38812438fbdb4477f440",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Duality/Variant0a7fec19f789096f6ee3517c4c998534149aeba93b753a0f23595db2b407f454.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/MulCharDualityPublic.lean/index.md) · [Full source](../../../../NumberTheory/MulCharDualityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de835ef1a4c41b855cc38812438fbdb4477f440`.

Source path: `GRWTSK/Algebra/GroupTheory/Duality/Variant0a7fec19f789096f6ee3517c4c998534149aeba93b753a0f23595db2b407f454.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Duality/Variant0a7fec19f789096f6ee3517c4c998534149aeba93b753a0f23595db2b407f454.lean.json)

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
| 1 | `instance` | [finite](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/finite.md) | 39 | `declaration-track:07666f6c5924f8a66a6f7f6ddc899d66428ad8f9de1c66564f36798d5b610f00` |
| 2 | `lemma` | [exists_apply_ne_one_iff_exists_monoidHom](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/exists-apply-ne-one-iff-exists-monoidhom.md) | 41 | `result-track:9c5875d4da33f8ff9ddedd0d0120780e971ae737e88e26b65333c0befffd42ec` |
| 3 | `theorem` | [exists_apply_ne_one_of_hasEnoughRootsOfUnity](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/exists-apply-ne-one-of-hasenoughrootsofunity.md) | 55 | `result-track:23e1a228db09161a1101b8d6147e88e5b3a2f4cc30ef875552f829db9edcf0bb` |
| 4 | `lemma` | [mulEquiv_units](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/mulequiv-units.md) | 67 | `result-track:00ca99566967503891d8fd8bc2c0bcafbec736a07032d13b95280cde7a1cb0a8` |
| 5 | `lemma` | [card_eq_card_units_of_hasEnoughRootsOfUnity](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/card-eq-card-units-of-hasenoughrootsofunity.md) | 74 | `result-track:01109b457f852ddc8da58000e1bc52929301e92176aa0e7d772cce4ec4e90e71` |
| 6 | `theorem` | [domRestrictHom_surjective](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/domrestricthom-surjective.md) | 83 | `result-track:9046be2d46fd08fad939d567a391cd6d35d7980db5eb01fa0e2a55f855283689` |
| 7 | `def` | [mulCharEquiv](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/mulcharequiv.md) | 98 | `declaration-track:c83bf53c2b485e2597e78c1124f15d4862764659416006935e2fc8e865499ba8` |
| 8 | `theorem` | [mulCharEquiv_symm_apply_apply](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/mulcharequiv-symm-apply-apply.md) | 105 | `result-track:548b0c98b05829a965d3fe91923d082236fbdd7034ba6f86f9d43e1f2cc8f676` |
| 9 | `theorem` | [apply_mulCharEquiv](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/apply-mulcharequiv.md) | 113 | `result-track:20732ea226fac4ea61a3c5855346bc48ecabdd0486d10d5dfc14bb7218280ac3` |
| 10 | `def` | [subgroupOrderIsoSubgroupMulChar](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/subgrouporderisosubgroupmulchar.md) | 123 | `declaration-track:0c9b9a09d1e153443b535adcb71c1c6fae12b14726ac0dafc896c543c8f50454` |
| 11 | `theorem` | [mem_subgroupOrderIsoSubgroupMulChar_iff](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/mem-subgrouporderisosubgroupmulchar-iff.md) | 127 | `result-track:2d69a225d729781ecb672ee23d1c338da9dd4fa12c8dee10e4d8cd0e855812de` |
| 12 | `theorem` | [mem_subgroupOrderIsoSubgroupMulChar_symm_iff](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/mem-subgrouporderisosubgroupmulchar-symm-iff.md) | 134 | `result-track:8d414e81f17e0b7ec6637fee45bc2f9b6a9c1e976b3a03e80b4331dd71a91dd6` |
| 13 | `theorem` | [card_subgroupOrderIsoSubgroupMulChar](../../../../NumberTheory/MulCharDualityPublic.lean/declarations/card-subgrouporderisosubgroupmulchar.md) | 140 | `result-track:8e01f28677705bec1fc0097654df8b71c61d4741ef981346eae3e264c3ee99ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ce3885fabe70b5bf555a24b6b48d03cd384214b5eaaf87c0235aebcfe4ff32e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Duality/Variant0a7fec19f789096f6ee3517c4c998534149aeba93b753a0f23595db2b407f454.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Duality/Variant0a7fec19f789096f6ee3517c4c998534149aeba93b753a0f23595db2b407f454.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

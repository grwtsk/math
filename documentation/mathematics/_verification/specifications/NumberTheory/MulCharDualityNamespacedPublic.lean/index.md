# Verification target: Mul Char Duality Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb95ac3e0d723ed195d2d352ec4c4f1b45083f77",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Duality/Variant66f528686f9276f3f9a234831b8f93a6a95fc3c6cde0da8b572f4a39d2ff1f0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb95ac3e0d723ed195d2d352ec4c4f1b45083f77`.

Source path: `GRWTSK/Algebra/GroupTheory/Duality/Variant66f528686f9276f3f9a234831b8f93a6a95fc3c6cde0da8b572f4a39d2ff1f0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Duality/Variant66f528686f9276f3f9a234831b8f93a6a95fc3c6cde0da8b572f4a39d2ff1f0c.lean.json)

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
| 1 | `instance` | [finite](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/finite.md) | 47 | `declaration-track:9daf9b7eef5938ccba7c3df27c15a73394b16ec269edcc7aa5ede84c726c4a6a` |
| 2 | `lemma` | [exists_apply_ne_one_iff_exists_monoidHom](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/exists-apply-ne-one-iff-exists-monoidhom.md) | 49 | `result-track:330b9a14e01b9eed31765911838d144f5ab8fe4ee49801f7c99eae458a071f05` |
| 3 | `theorem` | [exists_apply_ne_one_of_hasEnoughRootsOfUnity](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/exists-apply-ne-one-of-hasenoughrootsofunity.md) | 63 | `result-track:7223f47b784c6b814b0896c83b52c29a0b7fe68950726a1799cedcc2fe0ea9c5` |
| 4 | `lemma` | [mulEquiv_units](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/mulequiv-units.md) | 75 | `result-track:9eb6f1987b9edbd716c630fa5f14df5b02a9e654b7e0aa08522f75b757e51388` |
| 5 | `lemma` | [card_eq_card_units_of_hasEnoughRootsOfUnity](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/card-eq-card-units-of-hasenoughrootsofunity.md) | 82 | `result-track:dc36c0dbf02526f604296587150b51978b2a6f9d6690b278c957ad63bf00c6d6` |
| 6 | `theorem` | [domRestrictHom_surjective](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/domrestricthom-surjective.md) | 91 | `result-track:dcc3cd00cbc048d37aff870161d9971534e90902bc20ccc28524cb58b817abe4` |
| 7 | `def` | [mulCharEquiv](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/mulcharequiv.md) | 106 | `declaration-track:ef00c39667f8e31483f4602d206fbd7ec3c82dde68383ef32370e0c4bb2bfa08` |
| 8 | `theorem` | [mulCharEquiv_symm_apply_apply](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/mulcharequiv-symm-apply-apply.md) | 113 | `result-track:bbe601edc43c5d5e0996f3a38873907df30fcfc5b4f872d250e17fc384f9e23c` |
| 9 | `theorem` | [apply_mulCharEquiv](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/apply-mulcharequiv.md) | 121 | `result-track:b9fcaa68e782f59692ed7c823b578b09ebc1a1668b4ec31b79aa9d18bbbe9619` |
| 10 | `def` | [subgroupOrderIsoSubgroupMulChar](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/subgrouporderisosubgroupmulchar.md) | 131 | `declaration-track:f146a1bbb7f5702f17d0ad8a6dd0d4a598715a30dc0d05c2c888c7363fa42e56` |
| 11 | `theorem` | [mem_subgroupOrderIsoSubgroupMulChar_iff](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/mem-subgrouporderisosubgroupmulchar-iff.md) | 135 | `result-track:61ec284b164ba81f629257410565cca3aaecbdb94f3ae8193209b5507f72e69a` |
| 12 | `theorem` | [mem_subgroupOrderIsoSubgroupMulChar_symm_iff](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/mem-subgrouporderisosubgroupmulchar-symm-iff.md) | 142 | `result-track:aea728d50e8548dbeb295671a6174abe1b564d79248051952efd6a2b961e0669` |
| 13 | `theorem` | [card_subgroupOrderIsoSubgroupMulChar](../../../../NumberTheory/MulCharDualityNamespacedPublic.lean/declarations/card-subgrouporderisosubgroupmulchar.md) | 148 | `result-track:31e8d572ea4e07f5f819c14742082ee2aef6d31d63eb8e908d3f0f08fa7a8eb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ab9416eac3c5d0f123692f4989cc58518aad20483db727df58406d455fad828 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Duality/Variant66f528686f9276f3f9a234831b8f93a6a95fc3c6cde0da8b572f4a39d2ff1f0c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Duality/Variant66f528686f9276f3f9a234831b8f93a6a95fc3c6cde0da8b572f4a39d2ff1f0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

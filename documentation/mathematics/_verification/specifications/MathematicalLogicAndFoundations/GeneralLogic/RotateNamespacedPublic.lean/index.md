# Verification target: Rotate Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dcd1b3209c3174307aa08bb0506cda724f079a8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant910d93d013fbc5ce1ddb55fa66ec3c52ebca0c2407267ea19429bbe1d96323f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dcd1b3209c3174307aa08bb0506cda724f079a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant910d93d013fbc5ce1ddb55fa66ec3c52ebca0c2407267ea19429bbe1d96323f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant910d93d013fbc5ce1ddb55fa66ec3c52ebca0c2407267ea19429bbe1d96323f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finRotate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate.md) | 35 | `declaration-track:bb47b5a44ae16121485ef2f539b758db06d331ab2577751de3d6189160f1a8ee` |
| 2 | `lemma` | [finRotate_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-zero.md) | 39 | `result-track:ba722603696a035600c28d09ff458fbb00fdbc145547aa9d26fa252a14691765` |
| 3 | `lemma` | [finRotate_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-succ.md) | 41 | `result-track:84cdacd024e5f92557207a33afaab35ad010dc18d131142b039a5db39e343b8e` |
| 4 | `theorem` | [finRotate_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-of-lt.md) | 44 | `result-track:52e8ab67908a822ee7ecd2ab9c443a66f55be3a7efb1facb322672cba01d4939` |
| 5 | `theorem` | [finRotate_last'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-last.md) | 50 | `result-track:c0df4fc82d995a94f3fd2e49ccf42e7cf5f454db5783c8bb7459c3496739150e` |
| 6 | `theorem` | [finRotate_last](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-last-source-edition-2.md) | 55 | `result-track:c5d187ececc177566935df241851b67a9cdfded520d003cfe724dd538fb41de7` |
| 7 | `theorem` | [Fin.snoc_eq_cons_rotate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/fin-snoc-eq-cons-rotate.md) | 58 | `result-track:ef71d5416b06dbe714dcad55bd615ed5d4c3acc35227c00c605f5a560efe8f75` |
| 8 | `theorem` | [finRotate_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-one.md) | 72 | `result-track:7ba9d90e6701056cd27e68f08805e1bda2df523cba2cd8a8bc52c3f9890cb3f0` |
| 9 | `theorem` | [finRotate_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-apply.md) | 76 | `result-track:de0ff86a8e2efbb626c76470fcebcb510a3ce6678b6ad75c76e17fdf8ba70d8b` |
| 10 | `theorem` | [finRotate_succ_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-succ-apply.md) | 88 | `result-track:c7a008e2cd269415385bff1680965888d81814935551b089bf960bb55f167593` |
| 11 | `theorem` | [finRotate_apply_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-apply-zero.md) | 91 | `result-track:0b8ad45ea6e4f81a323802e438239918f8960802d0f23eb347898d8056b3948c` |
| 12 | `theorem` | [coe_finRotate_of_ne_last](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/coe-finrotate-of-ne-last.md) | 94 | `result-track:dede97467049664ea9b29562d6171e6fba235f72271a9ca531e49aeebadc5d4c` |
| 13 | `theorem` | [coe_finRotate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/coe-finrotate.md) | 100 | `result-track:9503f11634006573765732cbd34fb122c244dd654709641b763a99e1fa3e3206` |
| 14 | `theorem` | [lt_finRotate_iff_ne_last](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/lt-finrotate-iff-ne-last.md) | 104 | `result-track:b801ef455fed4ec4ea789d1ee15cfa33208c173e8b6053230286e9b02e8f2f40` |
| 15 | `theorem` | [lt_finRotate_iff_ne_neg_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/lt-finrotate-iff-ne-neg-one.md) | 108 | `result-track:c2fdc237ccf0d8d07947a8e3ef008af552c0be86c53009343bb916c717d76a97` |
| 16 | `lemma` | [finRotate_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-symm-apply.md) | 114 | `result-track:d59e9463344051bd966b008508ae9fd9705ea5d126fd60968da5e533bfc0584d` |
| 17 | `lemma` | [finRotate_succ_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-succ-symm-apply.md) | 120 | `result-track:a7348d4db91b12b18a5428d72001e1bfd3feeb2335adb1ce14d9b7c6114152ca` |
| 18 | `lemma` | [coe_finRotate_symm_of_ne_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/coe-finrotate-symm-of-ne-zero.md) | 123 | `result-track:79975912460a3fc91a49e13bbcf2140394712e254b2d617ee87b6638a7ad5112` |
| 19 | `theorem` | [finRotate_symm_lt_iff_ne_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/finrotate-symm-lt-iff-ne-zero.md) | 127 | `result-track:ff7273ada6ded827306737632b4168fcddefcc3973211659065a3d0edc4c2ab1` |
| 20 | `def` | [finCycle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/fincycle.md) | 136 | `declaration-track:1aa71b06f622f2e06d5e0f0b9242356452907f00e0aad87dcde383144ab7a8f8` |
| 21 | `lemma` | [finCycle_eq_finRotate_iterate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RotateNamespacedPublic.lean/declarations/fincycle-eq-finrotate-iterate.md) | 142 | `result-track:7952048c01d972b29198a88693fab5d7c9c1ed08a111bb356b4e74a79b5ee5bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acb13e22cbc06e7ed9edc010e1beea61c85c6b8f6f4a1d46716ccc595727d6f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant910d93d013fbc5ce1ddb55fa66ec3c52ebca0c2407267ea19429bbe1d96323f3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant910d93d013fbc5ce1ddb55fa66ec3c52ebca0c2407267ea19429bbe1d96323f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

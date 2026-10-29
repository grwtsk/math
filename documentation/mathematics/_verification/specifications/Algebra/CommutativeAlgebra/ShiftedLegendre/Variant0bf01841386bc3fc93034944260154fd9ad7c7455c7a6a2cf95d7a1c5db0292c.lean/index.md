# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ShiftedLegendre.Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39712fd040bfe7e96b77a5ef6d77798eec06e3de",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/index.md) · [Full source](../../../../../../Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39712fd040bfe7e96b77a5ef6d77798eec06e3de`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean.json)

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
| 1 | `def` | [shiftedLegendre](../../../../../../Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/declarations/shiftedlegendre--7b418b1538d1f304703a73bf.md) | 40 | `declaration-track:7b418b1538d1f304703a73bfd9a5e406d9dde8084dd4a7e286a4f6169c7a38c9` |
| 2 | `theorem` | [factorial_mul_shiftedLegendre_eq](../../../../../../Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/declarations/factorial-mul-shiftedlegendre-eq--7e0ca7aaeaaaa3a1f4e9d18b.md) | 46 | `result-track:7e0ca7aaeaaaa3a1f4e9d18b99c9bb8903acfc03ab5966982dfb821f906cd2c2` |
| 3 | `theorem` | [coeff_shiftedLegendre](../../../../../../Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/declarations/coeff-shiftedlegendre--be09ce7becd4fad3e171ffdd.md) | 84 | `result-track:be09ce7becd4fad3e171ffdd5d74b4461ca29f1afedb859e13c70de5de8b6be5` |
| 4 | `theorem` | [degree_shiftedLegendre](../../../../../../Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/declarations/degree-shiftedlegendre--781d56fa1769fdd5723912b7.md) | 91 | `result-track:781d56fa1769fdd5723912b714e3ada4dbe70ac3fe31934af550552640c46ec8` |
| 5 | `theorem` | [natDegree_shiftedLegendre](../../../../../../Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/declarations/natdegree-shiftedlegendre--e70158f6a2df274743ffd987.md) | 99 | `result-track:e70158f6a2df274743ffd9870851a25cdf0f43afe5aba2fccd143ea9c8437ba8` |
| 6 | `theorem` | [neg_one_pow_mul_shiftedLegendre_comp_one_sub_X_eq](../../../../../../Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/declarations/neg-one-pow-mul-shiftedlegendre-comp-one-sub-x-eq--833507ccf178c7fae2cf3b6d.md) | 102 | `result-track:833507ccf178c7fae2cf3b6d4cb11987ca26e2a6bd94e4735ec4ba11c5df26fc` |
| 7 | `lemma` | [shiftedLegendre_eval_symm](../../../../../../Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean/declarations/shiftedlegendre-eval-symm--01e1eefae8e8348f5ec09f44.md) | 110 | `result-track:01e1eefae8e8348f5ec09f44578a09887f9fc98d3863b4a945e931aecb31e128` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef80ac24c11ad5f47a3248a4ea1e07d1a8d824f65b9c93b337e999c642f91a61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ShiftedLegendre/Variant0bf01841386bc3fc93034944260154fd9ad7c7455c7a6a2cf95d7a1c5db0292c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

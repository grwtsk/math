# Verification target: Symmetric Eval Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86fe652e3130992e4cd18280ed104cd494ff4478",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant173018cc86b306b5a795ea6f403c2ad75153fd786badd31b8fa170aeed13e0b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86fe652e3130992e4cd18280ed104cd494ff4478`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant173018cc86b306b5a795ea6f403c2ad75153fd786badd31b8fa170aeed13e0b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Eval/Variant173018cc86b306b5a795ea6f403c2ad75153fd786badd31b8fa170aeed13e0b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Fintype` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Vieta` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.ScaleRoots` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aevalMultiset](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/aevalmultiset.md) | 45 | `declaration-track:357dc8dbf8922e21abc3367516b21a6413635fb74a4c80bc3d54fb555c563ac9` |
| 2 | `theorem` | [aevalMultiset_apply](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/aevalmultiset-apply.md) | 49 | `result-track:0b4c5f0c7c502158e88408aa4c78c490f190bd07f961c70a63f0a087e45a0b16` |
| 3 | `theorem` | [aevalMultiset_esymm](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/aevalmultiset-esymm.md) | 53 | `result-track:74acf57163e1d79d0d7044e4c4abfc005a3fdc572affe10b1da7b7d566fe556f` |
| 4 | `theorem` | [aevalMultiset_map](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/aevalmultiset-map.md) | 57 | `result-track:8315a5d0fb278cf27f837768ecdf8d4180884eb5867c7d2ab0f01cc8084bdb4d` |
| 5 | `theorem` | [aevalMultiset_map_of_card_eq](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/aevalmultiset-map-of-card-eq.md) | 65 | `result-track:f7ea21a40e0efece20b77cbe7c934aee4ed37f89dcce583a5216b8efe15c1890` |
| 6 | `def` | [sumPolynomial](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/sumpolynomial.md) | 75 | `declaration-track:a54f0ef14c3e8207964821cbe7bf2c4aa5d99de3d2e77805ea34b57aba2e4de6` |
| 7 | `theorem` | [coe_sumPolynomial](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/coe-sumpolynomial.md) | 80 | `result-track:8ba9d6d3ee5f6635c1498d8c9472f624818712e91d3f761690b6b3713f6d14cf` |
| 8 | `theorem` | [aevalMultiset_sumPolynomial](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/aevalmultiset-sumpolynomial.md) | 83 | `result-track:5218da4cf0ce65d3b63beba861dbd9078ee0328587219b19c1d6fe2d33a6c2a0` |
| 9 | `theorem` | [aevalMultiset_mem](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/aevalmultiset-mem.md) | 94 | `result-track:e096d91c6619f7cfa299b97ee68e81fef4f648d809c696524a7f17028cdba0ce` |
| 10 | `theorem` | [esymm_map_smul_aroots_mem_range_algebraMap](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/esymm-map-smul-aroots-mem-range-algebramap.md) | 108 | `result-track:ebf93f91980201134bf7a18de81afb42dc2735b57187dcf6b6f9c651f6e91807` |
| 11 | `theorem` | [aevalMultiset_map_aroots_mem_range_algebraMap](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/aevalmultiset-map-aroots-mem-range-algebramap.md) | 134 | `result-track:e8b9592a73138f407efd863784ad5e1136f4f1ecdbaa70023de9364a5f601d67` |
| 12 | `theorem` | [leadingCoeff_pow_natDegree_smul_sum_map_aroots_aeval_mem_range_algebraMap](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/leadingcoeff-pow-natdegree-smul-sum-map-aroots-aeval-mem-range-algebrama.md) | 152 | `result-track:aa87233406ec55250e7c903f60c2d3c4e79f36378a6377330ef7d46562214fe1` |
| 13 | `theorem` | [pow_smul_sum_map_aroots_aeval_mem_range_algebraMap](../../../../CommutativeAlgebra/SymmetricEvalPublic.lean/declarations/pow-smul-sum-map-aroots-aeval-mem-range-algebramap.md) | 166 | `result-track:c10970a71582f393eb494223e2ada89e56c4ae7261fc594facc6cd0740179229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4308a5eea0be932bfef850fcbf63764a4cfd5da72d27858ff8dc4a44fdb51d79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant173018cc86b306b5a795ea6f403c2ad75153fd786badd31b8fa170aeed13e0b4.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Eval/Variant173018cc86b306b5a795ea6f403c2ad75153fd786badd31b8fa170aeed13e0b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

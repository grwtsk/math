# Verification target: GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicJacobi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87b59d75ed5f4a0e57a24148f1da613fc568ee28",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicJacobi.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PositiveThirdCyclotomicJacobi.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PositiveThirdCyclotomicJacobi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87b59d75ed5f4a0e57a24148f1da613fc568ee28`.

Source path: `GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicJacobi.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicJacobi.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi`](../../../../CommutativeAlgebra/CyclotomicThirdCyclotomicJacobi.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [quotientFintype](../../../../CommutativeAlgebra/PositiveThirdCyclotomicJacobi.lean/declarations/quotientfintype.md) | 19 | `declaration-track:4c5de81e76e8762d467c84b66f0c1952704c80e6b6d46371b0412167435e71c8` |
| 2 | `instance` | [quotientField](../../../../CommutativeAlgebra/PositiveThirdCyclotomicJacobi.lean/declarations/quotientfield.md) | 22 | `declaration-track:d9a4a9056300f1b786c45f2a537452f4eb662ce8570fad2e7e7e8f5956106756` |
| 3 | `instance` | [quotientDecidableEq](../../../../CommutativeAlgebra/PositiveThirdCyclotomicJacobi.lean/declarations/quotientdecidableeq.md) | 25 | `declaration-track:7d69b77e4ac2e92f941c9cd8762425c851ff2411f6ebcc5d54b8b968791770a4` |
| 4 | `theorem` | [actual_zero_summand](../../../../CommutativeAlgebra/PositiveThirdCyclotomicJacobi.lean/declarations/actual-zero-summand.md) | 29 | `result-track:c8928c106a91c968353982cb6e4bfe699d0a1da21873eb434e59b122860ed86d` |
| 5 | `theorem` | [actual_one_summand](../../../../CommutativeAlgebra/PositiveThirdCyclotomicJacobi.lean/declarations/actual-one-summand.md) | 34 | `result-track:43ec3dcf357721add9cda41cdfc4e4e3843cbd56f6c5c684fe5150ed7987350a` |
| 6 | `theorem` | [actual_sum_excludes_endpoints](../../../../CommutativeAlgebra/PositiveThirdCyclotomicJacobi.lean/declarations/actual-sum-excludes-endpoints.md) | 39 | `result-track:9b96c44abaf2e99e2878888206e431bf1277371e2b88eb6d600440d5051405ee` |
| 7 | `theorem` | [actual_good_jacobi_nonvacuous](../../../../CommutativeAlgebra/PositiveThirdCyclotomicJacobi.lean/declarations/actual-good-jacobi-nonvacuous.md) | 48 | `result-track:5f3fbaf48fc1f55021555664e9b8982c5c5381fc2da853858ca214d8144144dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d27837a6211225c5cdd2ec289ea9476252341a536c13ac68114c4474763bcfb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicJacobi.lean","GRWTSK/_verification/specifications/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicJacobi.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

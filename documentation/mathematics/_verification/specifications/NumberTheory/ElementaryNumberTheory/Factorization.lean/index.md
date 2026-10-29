# Verification target: Factorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "346759f9b68c8214d7d6a21d878489524bfa6e2f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `346759f9b68c8214d7d6a21d878489524bfa6e2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Central` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Multiplicity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_choose_le_log](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/factorization-choose-le-log.md) | 34 | `result-track:c011800b2d017a892f5cc69b209be0edee0942dacd2d4428ed2594b0b0314b28` |
| 2 | `theorem` | [pow_factorization_choose_le](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/pow-factorization-choose-le.md) | 48 | `result-track:e24834014edc5080aad437820ee749b68af5a45c9c2365ce1859925123c6c1a7` |
| 3 | `theorem` | [factorization_choose_le_one](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/factorization-choose-le-one.md) | 53 | `result-track:810a04aa5ee1764607f5ad28d96137f71fe8e97c2587c29c11020f83964e0dc4` |
| 4 | `theorem` | [factorization_choose_of_lt_three_mul](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/factorization-choose-of-lt-three-mul.md) | 58 | `result-track:89d659cd4413c0c12722a8914a489ed7c065d7a71222c8ecd0b2aded2e6251e1` |
| 5 | `theorem` | [factorization_centralBinom_of_two_mul_self_lt_three_mul](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/factorization-centralbinom-of-two-mul-self-lt-three-mul.md) | 90 | `result-track:1f965dbba7c5858bbd1df803c6676a0a31d95b81dab24698089016e4b70e63ad` |
| 6 | `theorem` | [factorization_factorial_eq_zero_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/factorization-factorial-eq-zero-of-lt.md) | 96 | `result-track:c3641a2d0b5cfea941b6618e248af1ac9d18adcef8207df59ef98d8e93fcf351` |
| 7 | `theorem` | [factorization_choose_eq_zero_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/factorization-choose-eq-zero-of-lt.md) | 101 | `result-track:9973c1255cdd79daa13662a4e2c07f942bf31fa8050781b52f3e13a4b9456888` |
| 8 | `theorem` | [factorization_centralBinom_eq_zero_of_two_mul_lt](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/factorization-centralbinom-eq-zero-of-two-mul-lt.md) | 109 | `result-track:cd0c2a6769561e688486e753b19cbe3849ebd54a9b48f78ff86daeddd3f8269d` |
| 9 | `theorem` | [le_two_mul_of_factorization_centralBinom_pos](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/le-two-mul-of-factorization-centralbinom-pos.md) | 114 | `result-track:f98c22f16e8557f56226e0ad2c23bffa73b48f5f9faf77f1f6b32a1f2edbfa83` |
| 10 | `theorem` | [prod_pow_factorization_choose](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/prod-pow-factorization-choose.md) | 119 | `result-track:fb1dc9eb10e0b068406e98c9cd8010900916a842ec70614f552e1178d5cfe13a` |
| 11 | `theorem` | [prod_pow_factorization_centralBinom](../../../../../NumberTheory/ElementaryNumberTheory/Factorization.lean/declarations/prod-pow-factorization-centralbinom.md) | 133 | `result-track:7276a053a6bcef26cfcafc8c1c2e2703ac20601e2868b151fa215cb8cbf5aa76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e2aa4c661927986a528ecf9ae6e7ff11a1e092cca0fb3826931150fe145bfd0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

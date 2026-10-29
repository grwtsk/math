# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachLocalFactorControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0d869d096e9dd7f5cdf054d3faf58bdedc56af5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachLocalFactorControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0d869d096e9dd7f5cdf054d3faf58bdedc56af5`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachLocalFactorControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachLocalFactorControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachLocalFactors`](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactors.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [two_even_residue_count](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/two-even-residue-count.md) | 26 | `result-track:2e1cedadd4db624b62644dad314cd019d0f7a3cd0d8c023538ff0fcc22aa16fb` |
| 2 | `theorem` | [two_odd_residue_count](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/two-odd-residue-count.md) | 30 | `result-track:e49b8922b9954b7218bc9cb87459249088c2e1ff084e9e8c69b2f7c077b715bd` |
| 3 | `theorem` | [three_divisor_residue_count](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/three-divisor-residue-count.md) | 34 | `result-track:97317d63dda659c0fa5560b550784ee430ca99a020b430aa7eb4d5a10f3c3ce2` |
| 4 | `theorem` | [three_nondivisor_residue_count](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/three-nondivisor-residue-count.md) | 38 | `result-track:e1df477ef81e5f0956ea473745f08753c5ebb1ada70feee8cb85d56bdd6bbb5a` |
| 5 | `theorem` | [two_even_local_factor](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/two-even-local-factor.md) | 42 | `result-track:009efe7b55c7fd0807dcdfae7ef61578c065de1562dad2763e1894584d6e346d` |
| 6 | `theorem` | [two_odd_local_factor](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/two-odd-local-factor.md) | 48 | `result-track:613dddc0acffc0b00d031d8c73396a5b1508b2d47aa49f2d153e09a974d388eb` |
| 7 | `theorem` | [five_divisor_local_factor](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/five-divisor-local-factor.md) | 54 | `result-track:2a43c298d41e7788bc73d4cd4d69ba0d23ad2be48664091cdfc3a966c7f4f169` |
| 8 | `theorem` | [five_nondivisor_local_factor](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/five-nondivisor-local-factor.md) | 60 | `result-track:1434f7597b15acbe6c0858ed93bf03c440e2b09b5ed3f5f2d8ecf47babbc49c9` |
| 9 | `theorem` | [five_divisor_correction](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/five-divisor-correction.md) | 66 | `result-track:7542c913076afc5769aada50fb5a6e7d15b4477df063b85a18e98441d9d049fc` |
| 10 | `theorem` | [odd_local_factor_not_global_witness](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/odd-local-factor-not-global-witness.md) | 72 | `result-track:3c9d23f9be1108ccdd45d64137d456d9f0dc7ef7a39a7768b699adbb261c7e71` |
| 11 | `theorem` | [omitted_two_false_positive](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/omitted-two-false-positive.md) | 81 | `result-track:7680f5247ebd7866c29e2f885fa9b36a56100824bb1f7a343e923137d0fb9435` |
| 12 | `theorem` | [retained_two_rejects_odd](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachLocalFactorControls.lean/declarations/retained-two-rejects-odd.md) | 87 | `result-track:761f5f2e3d46f67b5ede93afe10ff7bcede68cc5cf22eace47b90d80653f05cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=122e9769c5d2653993083928235192282c8f7984bdb9eca918288998ce3dd4ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/Checks/GoldbachLocalFactorControls.lean","GRWTSK/_verification/specifications/NumberTheory/Primes/Checks/GoldbachLocalFactorControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

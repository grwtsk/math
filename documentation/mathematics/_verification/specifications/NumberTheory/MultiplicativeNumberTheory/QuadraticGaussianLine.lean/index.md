# Verification target: GRWTSK.NumberTheory.Primes.QuadraticGaussianLine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e65b8efef6f359537834a8c64bf116d8f7419a53",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/QuadraticGaussianLine.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e65b8efef6f359537834a8c64bf116d8f7419a53`.

Source path: `GRWTSK/NumberTheory/Primes/QuadraticGaussianLine.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/QuadraticGaussianLine.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.QuadraticPlusOneResidueCounting`](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Zsqrtd.GaussianInt` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticGaussianLine](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/quadraticgaussianline.md) | 32 | `declaration-track:efd2dfa253ab86cc00e6d286d7c0d83842335f5545b94fb15f10cbbc7d5db4fe` |
| 2 | `theorem` | [quadraticGaussianLine_re](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/quadraticgaussianline-re.md) | 36 | `result-track:15f368e5c04070a99e01cc8db078ebcd35d57157993e2c4a9361198b271d1d0c` |
| 3 | `theorem` | [quadraticGaussianLine_im](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/quadraticgaussianline-im.md) | 40 | `result-track:b03f3a6cd07d82ed6071b7611470acbd0386b8d5e6d78044a6acb83a30de2fb9` |
| 4 | `theorem` | [quadraticGaussianLine_norm](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/quadraticgaussianline-norm.md) | 44 | `result-track:733d06c15b46b6330a6af439ae20f6328e0a2dcdc1bf6f32ca6d21146258bcd6` |
| 5 | `theorem` | [quadraticGaussianLine_norm_nat](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/quadraticgaussianline-norm-nat.md) | 51 | `result-track:6cd01c44a415f7a700c8aa7489691af8f314ed99debcb47b018b42d2ceace467` |
| 6 | `theorem` | [star_quadraticGaussianLine](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/star-quadraticgaussianline.md) | 60 | `result-track:3653cbbecd9d77a82d5c424c0ec37207107d295d4b7dbeb8144631cb14224530` |
| 7 | `theorem` | [quadraticGaussianLine_mul_star](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/quadraticgaussianline-mul-star.md) | 67 | `result-track:224efb42c3cb9b6f2cf3ce2226aa1d426a2549015734b3cd629a8ed197728261` |
| 8 | `theorem` | [gaussian_product_re](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/gaussian-product-re.md) | 76 | `result-track:2ea52a89baa6e6edf3ecf71e8205ddc26d4c395decc4d65a7dae4d64dc2184c4` |
| 9 | `theorem` | [gaussian_product_im](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/gaussian-product-im.md) | 85 | `result-track:bb2af09f2f7c24e09d9027e8ed68c002c1e2f92d653b3b4c695e52fcf664a9c0` |
| 10 | `theorem` | [gaussian_product_eq_quadraticLine_iff](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/gaussian-product-eq-quadraticline-iff.md) | 93 | `result-track:1f396e238ec672e6695378061d9f11e3b7de37d2c06f3b9b639bdd4f7cfe15f1` |
| 11 | `theorem` | [gaussian_factor_norm_product](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/gaussian-factor-norm-product.md) | 118 | `result-track:6cf34682423c6de62982e752b293c750dc54f531bfa22181ccadee6609ead4f6` |
| 12 | `theorem` | [mem_quadraticGaussianLine_iff](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/mem-quadraticgaussianline-iff.md) | 127 | `result-track:6a2ed162ac044da6b91cd6f37effa8a8470cf57184d022a4e9bb0a553356ac16` |
| 13 | `theorem` | [gaussian_unit_refactor](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticGaussianLine.lean/declarations/gaussian-unit-refactor.md) | 142 | `result-track:12f0d669dabad008a7e0e9a58f3867a8de4ddc2d4bbaf59db484dd8d526c9e31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=084ab1f3b109d13549efd29794b0fef6fc24c4dd3ced8349a8e46d43e3cdc8d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/QuadraticGaussianLine.lean","GRWTSK/_verification/specifications/NumberTheory/Primes/QuadraticGaussianLine.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

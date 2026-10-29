# Verification target: Eval Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a228be8e757d1f3d4c9f6603d6f30bb0b084b3f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a228be8e757d1f3d4c9f6603d6f30bb0b084b3f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Arg` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval_one_cyclotomic_prime](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/eval-one-cyclotomic-prime.md) | 35 | `result-track:66d7c816fba45747dcb10cddbe72321217ca009600373f22fb26c9a63401f3b8` |
| 2 | `theorem` | [eval₂_one_cyclotomic_prime](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/eval-one-cyclotomic-prime-source-edition-2.md) | 40 | `result-track:ac9420cabad8a8df1f4d74722a78a297ac9520c3d0416747b9568f9ce6ccdb2f` |
| 3 | `theorem` | [eval_one_cyclotomic_prime_pow](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/eval-one-cyclotomic-prime-pow.md) | 44 | `result-track:0cb827c2dd16a99a68c58d4c2a5d823141aea723bba310c864f6380343e71dda` |
| 4 | `theorem` | [eval₂_one_cyclotomic_prime_pow](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/eval-one-cyclotomic-prime-pow-source-edition-2.md) | 49 | `result-track:d18432de134b553eb0e1aead96d6540e201e67589bdcdbb2d73cb7ae1cac04d6` |
| 5 | `theorem` | [cyclotomic_neg_one_pos](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/cyclotomic-neg-one-pos.md) | 52 | `result-track:0f9514531fa00ff3d51fbc42b5af5476c7fd86f629d9a975c7db23b6d96aea21` |
| 6 | `theorem` | [cyclotomic_pos](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/cyclotomic-pos.md) | 71 | `result-track:4fdb9ff7f5aba458343413a29c566f0d6afaee74d159690f87584f8228751778` |
| 7 | `theorem` | [cyclotomic_pos_and_nonneg](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/cyclotomic-pos-and-nonneg.md) | 115 | `result-track:01d2cdef69f29682d112f2193d83cc830cc6af04a8b52dff2d02c6a4b093e655` |
| 8 | `theorem` | [cyclotomic_pos'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/cyclotomic-pos-source-edition-2.md) | 129 | `result-track:759a233b694b8ed26549915fc67dbceac1413b75d1627b647f0a2b2d242ade70` |
| 9 | `theorem` | [cyclotomic_nonneg](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/cyclotomic-nonneg.md) | 135 | `result-track:9a1e9dbb32fa757871ed16661526e08370d19d48c767e16ef6e9a06c649cfa0e` |
| 10 | `theorem` | [eval_one_cyclotomic_not_prime_pow](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/eval-one-cyclotomic-not-prime-pow.md) | 140 | `result-track:af9425670069288e933f3ca5a8f8bb1db72d92592579cc36ae6e69f28878ab3e` |
| 11 | `theorem` | [sub_one_pow_totient_lt_cyclotomic_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/sub-one-pow-totient-lt-cyclotomic-eval.md) | 174 | `result-track:868f22f2fce49eab1a48b722980bfc283a936ac73469b3858f023b338031774c` |
| 12 | `theorem` | [sub_one_pow_totient_le_cyclotomic_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/sub-one-pow-totient-le-cyclotomic-eval.md) | 221 | `result-track:ccd8ba90847bd91f602f3ed72510775180407ea8117f9a9b52e71d544f79798e` |
| 13 | `theorem` | [cyclotomic_eval_lt_add_one_pow_totient](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/cyclotomic-eval-lt-add-one-pow-totient.md) | 227 | `result-track:5222b74ef7df09999c7ea828409d66919aafd476bd1431c741e8e1282916b679` |
| 14 | `theorem` | [cyclotomic_eval_le_add_one_pow_totient](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/cyclotomic-eval-le-add-one-pow-totient.md) | 290 | `result-track:2ebd9f4192e615985e82717e40737adaefee3d8afda37678bdfb181396e72c82` |
| 15 | `theorem` | [sub_one_pow_totient_lt_natAbs_cyclotomic_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/sub-one-pow-totient-lt-natabs-cyclotomic-eval.md) | 297 | `result-track:1dc76cda3d731c2632b2d342be214396427d123ca92b58b8ea61f41972dd6dc2` |
| 16 | `theorem` | [sub_one_lt_natAbs_cyclotomic_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EvalNamespaced.lean/declarations/sub-one-lt-natabs-cyclotomic-eval.md) | 308 | `result-track:44e746f69f5dbc3991c378fdaba2965f941d6ed01895161f9faf2957b419b134` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=310a49098f0c2d9155e9e6d6e7a5248a857b91af289ef90e2d80c5a9d79cd1dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

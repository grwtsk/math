# Verification target: Quotient Index Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc61ea58c96a4ddf4582acd323f363820e078fbd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientIndexNamespaced.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientIndexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc61ea58c96a4ddf4582acd323f363820e078fbd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fintype` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Quotient` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Submodule.finite_quotient_smul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientIndexNamespaced.lean/declarations/submodule-finite-quotient-smul.md) | 43 | `result-track:47fb9866cf815252686b10a402709f149f5fd2401d181c4d445984996c15d96a` |
| 2 | `lemma` | [Submodule.index_smul_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientIndexNamespaced.lean/declarations/submodule-index-smul-le.md) | 66 | `result-track:0e47ee577ec58f1082e43e007b0d920d9f595fb693dbe999935d180e7339271f` |
| 3 | `lemma` | [Ideal.finite_quotient_prod](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientIndexNamespaced.lean/declarations/ideal-finite-quotient-prod.md) | 94 | `result-track:fc5b1a30a04163a7534ae3970cbe48ca766f0ab08d1f60342221701c88f691d9` |
| 4 | `lemma` | [Ideal.finite_quotient_pow](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientIndexNamespaced.lean/declarations/ideal-finite-quotient-pow.md) | 105 | `result-track:264710749faa8c10868fda3ea2a40e44e25e3460c269bcd05b6bb9065718ed5d` |
| 5 | `lemma` | [Ideal.index_pow_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientIndexNamespaced.lean/declarations/ideal-index-pow-le.md) | 113 | `result-track:955bc9146fc16a1d59ee287adb59234d012ec574d5ae2e6bcdba94f5ae656f9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2db72dc15258d5251c25be557c931d100ccad1064493747417f4f257194c31b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

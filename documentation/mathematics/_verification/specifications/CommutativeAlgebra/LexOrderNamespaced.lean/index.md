# Verification target: Lex Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "596e2c44b9e3aa8d5477f9cc5c048af97ada8da5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `596e2c44b9e3aa8d5477f9cc5c048af97ada8da5`.

Source path: `GRWTSK/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.WellFounded` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lexOrder](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/lexorder.md) | 38 | `declaration-track:d469b60e726ca12c9ab3150014db0dc8b02ecd702aa55f351a6a1385b1f4a391` |
| 2 | `theorem` | [lexOrder_def_of_ne_zero](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/lexorder-def-of-ne-zero.md) | 48 | `result-track:199bd27248a49580431ba0f622c087b13f62a872ab29ef66c4b98aa4d6ef0f2f` |
| 3 | `theorem` | [lexOrder_eq_top_iff_eq_zero](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/lexorder-eq-top-iff-eq-zero.md) | 59 | `result-track:a02a468d09603dd5771e3f45d9e8e4dc719946ba16747a071ab7a9f71f3e6578` |
| 4 | `theorem` | [lexOrder_zero](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/lexorder-zero.md) | 66 | `result-track:40c1adb0b9db8fb78df47016802a020dbc7c26d93fffa9585736dca8e3ba9c3e` |
| 5 | `theorem` | [exists_finsupp_eq_lexOrder_of_ne_zero](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/exists-finsupp-eq-lexorder-of-ne-zero.md) | 70 | `result-track:903d0473100542957c4cc4620bd3aac6bc7006947612d9e248d008281a9a984f` |
| 6 | `theorem` | [coeff_ne_zero_of_lexOrder](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/coeff-ne-zero-of-lexorder.md) | 76 | `result-track:c79b9036488ba67afb69aa38b3607d9fb477e301dc52cdeb5dd36b6f37dcd70f` |
| 7 | `theorem` | [coeff_eq_zero_of_lt_lexOrder](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/coeff-eq-zero-of-lt-lexorder.md) | 89 | `result-track:bdd84af0773859fb0938bdaee9d9d5630d48c79d97da18d6a2fdb7defbd711df` |
| 8 | `theorem` | [lexOrder_le_of_coeff_ne_zero](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/lexorder-le-of-coeff-ne-zero.md) | 98 | `result-track:85e872822929f53323a61bdcf05a5300b722eb825111b7d675338f73b74a8fca` |
| 9 | `theorem` | [le_lexOrder_iff](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/le-lexorder-iff.md) | 104 | `result-track:ade226031fd8f072e4e19757bcc031e976f7396114179fc053eb9ce32140b08d` |
| 10 | `theorem` | [min_lexOrder_le](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/min-lexorder-le.md) | 120 | `result-track:318c346fafc31f427844b84c2977b47b8c13a482356cb16b60cb665b716383d4` |
| 11 | `theorem` | [coeff_mul_of_add_lexOrder](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/coeff-mul-of-add-lexorder.md) | 127 | `result-track:023585fbf771ad8a2973092d015a414281da9b686c8fe7ef4274824dfc5410e4` |
| 12 | `theorem` | [le_lexOrder_mul](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/le-lexorder-mul.md) | 142 | `result-track:278059339566adad3cc83cdde38adc952d9ab8c3f3678a5b6e394c2a0de8306d` |
| 13 | `theorem` | [lexOrder_mul](../../../../CommutativeAlgebra/LexOrderNamespaced.lean/declarations/lexorder-mul.md) | 163 | `result-track:8f4d8577131a5b3c13762e9839927185dc762d44c8f108b1264721c85a27a945` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b6a8259a6ff3d3c0d69a4da9c2848acd0f39aba3f25d55c3fba31943624c7ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

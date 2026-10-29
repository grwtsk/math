# Verification target: Period Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55dbef8d72ec105d615e1414473c95d1b9905d45",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Period/Variantcfd6aa8885f8260ac1f03667afe5eb56176be2e9aa36f14e651b6c4c07b7aed1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55dbef8d72ec105d615e1414473c95d1b9905d45`.

Source path: `GRWTSK/Algebra/GroupTheory/Period/Variantcfd6aa8885f8260ac1f03667afe5eb56176be2e9aa36f14e651b6c4c07b7aed1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Period/Variantcfd6aa8885f8260ac1f03667afe5eb56176be2e9aa36f14e651b6c4c07b7aed1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.PeriodicPts.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_period](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/le-period.md) | 39 | `result-track:17743bead2454d67158298545030982c6398a7bd36e766a1721a9b6bad7bcf1a` |
| 2 | `theorem` | [period_le_of_fixed](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-le-of-fixed.md) | 46 | `result-track:341890a5e8e36481e41c3125ec5ae3d1739511d5e9ee3e632576fa7a2abd2282` |
| 3 | `theorem` | [period_pos_of_fixed](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-pos-of-fixed.md) | 52 | `result-track:079b38bfa59c19896fe7ae05a5af1a0bd58372e0cba63924420a1ff286dc5ab4` |
| 4 | `theorem` | [period_eq_one_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-eq-one-iff.md) | 57 | `result-track:0b3db47b14e478158c1163d55b627447b3b42a7200656c36def5e2b495f1d7bb` |
| 5 | `theorem` | [pow_smul_ne_of_lt_period](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/pow-smul-ne-of-lt-period.md) | 65 | `result-track:0717f3543525101af784c9bceed697b45c9c6154a402503485bd0473bf85addf` |
| 6 | `theorem` | [period_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-one.md) | 76 | `result-track:c0f7dbed638da0e10cda7c2bbf1a63179196cbd32a82a20b74608a8bd824186c` |
| 7 | `theorem` | [period_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-inv.md) | 79 | `result-track:c953dd00ef55bdfe764568e6f977e4651034d7d8fb035e05a9f2462a488fbcda` |
| 8 | `theorem` | [period_dvd_orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-dvd-orderof.md) | 95 | `result-track:d5d18f4bc6b584b9cb058bdad956bb915bb1a2b9e4d5c1799bc7ff37d55046ef` |
| 9 | `theorem` | [period_pos_of_orderOf_pos](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-pos-of-orderof-pos.md) | 99 | `result-track:76648bb5fa124c383fab67d453d1fac0b804aee0b4eeb3e223b1ce70838453b6` |
| 10 | `theorem` | [period_le_orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-le-orderof.md) | 104 | `result-track:276497d00e28952acb6b6c627302a3bad291af4c4151744515216237f55516a2` |
| 11 | `theorem` | [period_dvd_exponent](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-dvd-exponent.md) | 109 | `result-track:8af332e06b00149157a65757de7152b8677fc723e95f0e21d09a6563a9bfd719` |
| 12 | `theorem` | [period_pos_of_exponent_pos](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-pos-of-exponent-pos.md) | 113 | `result-track:968503c588cfa1d13be51ae883dd135037af9fdbaaadb33246fec5a6eaa1e417` |
| 13 | `theorem` | [period_le_exponent](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-le-exponent.md) | 118 | `result-track:259f064d352a0b16c1ba80478637e9fd40fc4faaf0aee444b9d4b70ea0749dca` |
| 14 | `theorem` | [period_bounded_of_exponent_pos](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PeriodNamespaced.lean/declarations/period-bounded-of-exponent-pos.md) | 125 | `result-track:9a48a293308bc20c90db158bf9a3baab249595cc1f6adcf89d0650911a13c0b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b618512c9cec14946bc9a74a4aa9f5205c60a6caeeb52614776252667bb0651 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Period/Variantcfd6aa8885f8260ac1f03667afe5eb56176be2e9aa36f14e651b6c4c07b7aed1.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Period/Variantcfd6aa8885f8260ac1f03667afe5eb56176be2e9aa36f14e651b6c4c07b7aed1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

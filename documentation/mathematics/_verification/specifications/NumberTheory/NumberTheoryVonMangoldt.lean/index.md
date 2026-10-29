# Verification target: Number Theory Von Mangoldt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6859af42a7aa3cb1691adbcc0abfd654dbeb76b6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant44aad5df3bba3bde6f8d17045a8617fffbd5d305099a9bf8791d259078b0599d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6859af42a7aa3cb1691adbcc0abfd654dbeb76b6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant44aad5df3bba3bde6f8d17045a8617fffbd5d305099a9bf8791d259078b0599d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant44aad5df3bba3bde6f8d17045a8617fffbd5d305099a9bf8791d259078b0599d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/log.md) | 44 | `declaration-track:3bb40e48ad2c19ea0a692401c929e5ae9521a31a9bd63cd64acb479fec3b3458` |
| 2 | `theorem` | [log_apply](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/log-apply.md) | 48 | `result-track:4b0171fe78201c0e5e2707f5cb14f21586519b550d1fa7a52306221271e1070c` |
| 3 | `def` | [vonMangoldt](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt.md) | 61 | `declaration-track:a7eac9a5c9b146ecde53b864089c95a6cc8eaab02b7b67de46a332006f977cb5` |
| 4 | `theorem` | [vonMangoldt_apply](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-apply.md) | 69 | `result-track:a838a23bcaa7b7bdee85c617dfed19a578d5b381de0e9266048442835cff7cf6` |
| 5 | `theorem` | [vonMangoldt_apply_one](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-apply-one.md) | 73 | `result-track:a9ad448dc110a2321cd40f6a9be1c4ae7cdfafce9224a2a5c6e87ee526722785` |
| 6 | `theorem` | [vonMangoldt_nonneg](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-nonneg.md) | 76 | `result-track:cb3479792df9de872097a3c10baf845849ea1c9d7e467bb4adf8f7f1474d6618` |
| 7 | `theorem` | [vonMangoldt_apply_pow](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-apply-pow.md) | 82 | `result-track:47a52bd9d217dd01dd7ef680ab56b607a877f867702b3a1567fba716bc360c34` |
| 8 | `theorem` | [vonMangoldt_apply_prime](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-apply-prime.md) | 85 | `result-track:0b7deb1abd66ba9080beeb70338b877d3846b000cd31726e76bdd063c63647a9` |
| 9 | `theorem` | [vonMangoldt_ne_zero_iff](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-ne-zero-iff.md) | 88 | `result-track:08ba2723e64bf03f4a186ca679931f44100b09590bf73de5507dea2e2e0d5cce` |
| 10 | `theorem` | [vonMangoldt_pos_iff](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-pos-iff.md) | 92 | `result-track:301cd340116b5764cfa70ea14e0abd55a6b9c1fed8bc3ebec4a245fc411e92ea` |
| 11 | `theorem` | [vonMangoldt_eq_zero_iff](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-eq-zero-iff.md) | 95 | `result-track:5f6674e0895c4a0bfcaa5414c3a861c03047db9d4aeccee07b84c519d87914c6` |
| 12 | `theorem` | [vonMangoldt_sum](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-sum.md) | 98 | `result-track:80af01faf21bc0d5635712d9ece88b393186c3720e2ae46b22c5b19d6b788b29` |
| 13 | `theorem` | [vonMangoldt_mul_zeta](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-mul-zeta.md) | 112 | `result-track:3961be209680eee9ad54ba89aa36361baba6f0c6b1c631e578584c163373b140` |
| 14 | `theorem` | [zeta_mul_vonMangoldt](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/zeta-mul-vonmangoldt.md) | 116 | `result-track:9dcc967d3a157a3fbac2c48c8eca429cd913175f581745207b8a24bc6eb430ba` |
| 15 | `theorem` | [log_mul_moebius_eq_vonMangoldt](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/log-mul-moebius-eq-vonmangoldt.md) | 119 | `result-track:e9c7ee089946c34c3ea9f0a901aa78b2bca206ebf45864ac8248e1d255401d5e` |
| 16 | `theorem` | [moebius_mul_log_eq_vonMangoldt](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/moebius-mul-log-eq-vonmangoldt.md) | 123 | `result-track:222485a79d8f7aad9534b9fa471a8f968838b3b08a15e683e5405cec9e9ec83f` |
| 17 | `theorem` | [sum_moebius_mul_log_eq](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/sum-moebius-mul-log-eq.md) | 126 | `result-track:ec74df6f37102413081eb3a71a0d1d3375a018f54210b929625e31862d1edc78` |
| 18 | `theorem` | [vonMangoldt_le_log](../../../../NumberTheory/NumberTheoryVonMangoldt.lean/declarations/vonmangoldt-le-log.md) | 144 | `result-track:bb5a01013c5cda7ffe80da022358d9d79380b8a5af42208c3720691e10126bf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8277fac56a6a91ace7badbd647f9286282c8676d33080619ed4ee938d49e9340 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant44aad5df3bba3bde6f8d17045a8617fffbd5d305099a9bf8791d259078b0599d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant44aad5df3bba3bde6f8d17045a8617fffbd5d305099a9bf8791d259078b0599d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

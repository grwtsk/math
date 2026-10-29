# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f228c00f6b1a3ff949d8bb1c6d200c335a5372bf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/index.md) · [Full source](../../../../../../NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f228c00f6b1a3ff949d8bb1c6d200c335a5372bf`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCoefficientRecovery`](../../../../../../NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PinnedVonMangoldtSourceRecord](../../../../../../NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/declarations/pinnedvonmangoldtsourcerecord--b85f47aa69fe537e3fc33eb6.md) | 30 | `declaration-track:b85f47aa69fe537e3fc33eb66c3ed73130977b85985561f5ff4cab567618ad40` |
| 2 | `def` | [pinnedVonMangoldtSource](../../../../../../NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/declarations/pinnedvonmangoldtsource--5fd43e61edf2bfbe6f4a70bf.md) | 41 | `declaration-track:5fd43e61edf2bfbe6f4a70bf4aaf0c731cfcdcb9637f49d94cf2d2300b7ed291` |
| 3 | `def` | [mathlibVonMangoldtCoefficient](../../../../../../NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/declarations/mathlibvonmangoldtcoefficient--17bd0f0df20e8b189559d005.md) | 53 | `declaration-track:17bd0f0df20e8b189559d005e611251a2744606a2dc45b4f5fdf8141145b1a20` |
| 4 | `theorem` | [mathlibVonMangoldtCoefficient_eq_mangoldtScale](../../../../../../NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/declarations/mathlibvonmangoldtcoefficient-eq-mangoldtscale--1d1a6aafe486f8676ec83417.md) | 62 | `result-track:1d1a6aafe486f8676ec834174386d5b59179472dfff5c0eaba7b2ff7e4a343d7` |
| 5 | `theorem` | [mathlibVonMangoldt_testWeight_eq_one](../../../../../../NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/declarations/mathlibvonmangoldt-testweight-eq-one--72377f5c29326b0bfaeecea9.md) | 75 | `result-track:72377f5c29326b0bfaeecea9befd84743e352df08f51259d5c4df78c56a6a8eb` |
| 6 | `theorem` | [mathlibVonMangoldt_packingPoint_eq_raw](../../../../../../NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/declarations/mathlibvonmangoldt-packingpoint-eq-raw--6a6a7268311f744399355356.md) | 85 | `result-track:6a6a7268311f744399355356cad9ec011acad42a1e0c50ece3045806710fcfed` |
| 7 | `theorem` | [pinned_vonMangoldt_lseries_eq_neg_logDeriv](../../../../../../NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/declarations/pinned-vonmangoldt-lseries-eq-neg-logderiv--2e626d098febafdae1cee658.md) | 100 | `result-track:2e626d098febafdae1cee658ff358264492bb5cadd508e5efb782b15c3b907fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d631855fd10f26620aa5bc55ef511e20bf4dab10958f052362967b25954fbf66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

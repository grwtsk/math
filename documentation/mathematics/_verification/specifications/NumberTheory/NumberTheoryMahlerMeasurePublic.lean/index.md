# Verification target: Number Theory Mahler Measure Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "902fac0cc8dda6b31573fc50a152887021a970c7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `902fac0cc8dda6b31573fc50a152887021a970c7`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_le_mahlerMeasure_of_ne_zero](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/one-le-mahlermeasure-of-ne-zero.md) | 42 | `result-track:573c551ce9560830ecfa41e6478b86a887c2d89e72a9389a393add62827c3f84` |
| 2 | `def` | [boxPoly](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/boxpoly.md) | 55 | `declaration-track:cd9a4fd3407d69ffb0fa1ffc6dd9920a069b2e63323ff7e678a0fec947620ca5` |
| 3 | `theorem` | [ncard_boxPoly](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/ncard-boxpoly.md) | 57 | `result-track:7a6136548f410412fc778bc04aa346efc909e41574235f09535021d77df1cb22` |
| 4 | `lemma` | [card_mahlerMeasure](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/card-mahlermeasure.md) | 73 | `result-track:e31e3fa076fc4079cbeb4ee276fe212425a2acde5e3f765e71143cb27ac3f37a` |
| 5 | `theorem` | [finite_mahlerMeasure_le](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/finite-mahlermeasure-le.md) | 107 | `result-track:2d4aaf8a3278df9f15a1c8dc8c6afa2583154ce488a324375d5a38264deeb15a` |
| 6 | `theorem` | [card_mahlerMeasure_le_prod](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/card-mahlermeasure-le-prod.md) | 113 | `result-track:585735a43f3f6722864bb019b505add8cdd4582930780f9f363b6f5103314c07` |
| 7 | `theorem` | [cyclotomic_mahlerMeasure_eq_one](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/cyclotomic-mahlermeasure-eq-one.md) | 122 | `result-track:4b4bf1d346f094048a3e13550566784dce8a8b20390689a8f280d01e6d53ba3d` |
| 8 | `lemma` | [norm_leadingCoeff_eq_one_of_mahlerMeasure_eq_one](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/norm-leadingcoeff-eq-one-of-mahlermeasure-eq-one.md) | 137 | `result-track:fb906213cbcc7ea28e8ad7d93c31f533179fd0ea073af1046dc90e732c3d9a97` |
| 9 | `lemma` | [abs_leadingCoeff_eq_one_of_mahlerMeasure_eq_one](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/abs-leadingcoeff-eq-one-of-mahlermeasure-eq-one.md) | 147 | `result-track:c2597a52e657b908b242d4558d73da85b24b5acb3851e95408361202b7e24429` |
| 10 | `theorem` | [isIntegral_of_mahlerMeasure_eq_one](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/isintegral-of-mahlermeasure-eq-one.md) | 157 | `result-track:410fe03c9dc8a9c7d7e4622d980b9f7928295170e82d3d6dc0abc4113644af5a` |
| 11 | `lemma` | [norm_root_le_one_of_mahlerMeasure_eq_one](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/norm-root-le-one-of-mahlermeasure-eq-one.md) | 168 | `result-track:f5a3db0dd01608a95ceeb8a37019d6e2cc4ddbc66bc845758c717edcf179ca72` |
| 12 | `theorem` | [pow_eq_one_of_mahlerMeasure_eq_one](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/pow-eq-one-of-mahlermeasure-eq-one.md) | 180 | `result-track:0a2edc768c09a4fa9dd28181653d68fe155218f07a7f9fbdd8093b26eaeef882` |
| 13 | `theorem` | [isPrimitiveRoot_of_mahlerMeasure_eq_one](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/isprimitiveroot-of-mahlermeasure-eq-one.md) | 210 | `result-track:2f547ec653951ea0a0676d07045cf886b4f82c350684e38b7c06e71cdeae05f4` |
| 14 | `theorem` | [cyclotomic_dvd_of_mahlerMeasure_eq_one](../../../../NumberTheory/NumberTheoryMahlerMeasurePublic.lean/declarations/cyclotomic-dvd-of-mahlermeasure-eq-one.md) | 217 | `result-track:08e36bb5093cc30a9e3ed49f70eb918495e2addc405d9903d48b1998d0ed9a72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=baf0143c8c9f2bbe58af984874dd3c528a4984e65152dce051be5a39a79ee822 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

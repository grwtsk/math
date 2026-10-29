# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitZModDFTParseval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b33dd290e6721a5fe505484dd1864d9b9cd2e45",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitZModDFTParseval.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitZModDFTParseval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b33dd290e6721a5fe505484dd1864d9b9cd2e45`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitMathlibZModDFTBridge`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitMathlibZModDFTBridge.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Analysis.Complex.Norm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_stdAddChar_mul_eq_ite](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitZModDFTParseval.lean/declarations/sum-stdaddchar-mul-eq-ite.md) | 40 | `result-track:4b030e6009899c6648f3bb7a7017a4a2d089e67de06050a8714b7c188bd8d9a5` |
| 2 | `theorem` | [sum_stdAddChar_sub_mul](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitZModDFTParseval.lean/declarations/sum-stdaddchar-sub-mul.md) | 52 | `result-track:a8fe0de4a690645c8c5a6f99f226d7cb0b2d39fe88c153bdb8e1434e59b18543` |
| 3 | `theorem` | [sum_conj_dft_mul_dft](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitZModDFTParseval.lean/declarations/sum-conj-dft-mul-dft.md) | 65 | `result-track:23ddc9bd4f8a09b4619bd633d7319319d7076ac984bc52c2363ec9b357403516` |
| 4 | `theorem` | [unnormalizedZModDFTParseval_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitZModDFTParseval.lean/declarations/unnormalizedzmoddftparseval-sq.md) | 83 | `result-track:d9ab94911352c055454a55fc244f86eb8bc35e80112a007585c040c9e3ff83be` |
| 5 | `theorem` | [unnormalizedZModDFTParseval](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitZModDFTParseval.lean/declarations/unnormalizedzmoddftparseval.md) | 100 | `result-track:67c6bbc51904b1e0e7537ca34d55ad7d0c07f2bfc9fdd3a6d5367b0f68dac009` |
| 6 | `theorem` | [stdAddCharSquareModulusParseval](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitZModDFTParseval.lean/declarations/stdaddcharsquaremodulusparseval.md) | 108 | `result-track:533700fee91a5466b1a00afc54f260a245282eeb9744ef7ef266239613294437` |
| 7 | `def` | [finiteOrthogonalityToStdAddCharParsevalAdapter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitZModDFTParseval.lean/declarations/finiteorthogonalitytostdaddcharparsevaladapter.md) | 118 | `declaration-track:0fbf1e88d3ffc74ad64577fc6bddc09651509f297cd4515a6a074e677127d6eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07e567f3a2bcc68b9932a0130ea9e3e6c6cc984e4a27d63a927daee70bae9852 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

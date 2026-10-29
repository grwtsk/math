# Verification target: GRWTSK.Analysis.MeasureTheory.ChebyshevMarkov.Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0c67e8b7e09e4bbfc7ae098b191b9dbfdc00eb1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/index.md) · [Full source](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0c67e8b7e09e4bbfc7ae098b191b9dbfdc00eb1`.

Source path: `GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LpSeminorm.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_mul_meas_ge_le_eLpNorm](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/declarations/pow-mul-meas-ge-le-elpnorm--9b4b6943482f21d523c3ee9e.md) | 30 | `result-track:9b4b6943482f21d523c3ee9e45f5e67aed8326f01637b807e2f4eaae5630a6d4` |
| 2 | `theorem` | [mul_meas_ge_le_pow_eLpNorm](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/declarations/mul-meas-ge-le-pow-elpnorm--8502fde1cc66b5bc63159692.md) | 37 | `result-track:8502fde1cc66b5bc63159692da8b684f59e9a149f14b3d176e3c85cad73bb1b4` |
| 3 | `theorem` | [mul_meas_ge_le_pow_eLpNorm'](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/declarations/mul-meas-ge-le-pow-elpnorm--18bdbb86f745d02076c3cfd6.md) | 49 | `result-track:18bdbb86f745d02076c3cfd6cca280642fc6d4b0a0c8d83f23226bcf22648760` |
| 4 | `theorem` | [meas_ge_le_mul_pow_eLpNorm_enorm](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/declarations/meas-ge-le-mul-pow-elpnorm-enorm--06cc53a4c97f3379f1dea3be.md) | 56 | `result-track:06cc53a4c97f3379f1dea3be55d4a2d7c9b157950fdbc8af4eeec306c38c7373` |
| 5 | `theorem` | [meas_ge_le_mul_pow_eLpNorm](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/declarations/meas-ge-le-mul-pow-elpnorm--a6c75f2a421004708b1396e1.md) | 71 | `result-track:a6c75f2a421004708b1396e1af225adfdd83a3fbc3fc4312d6aa9ec6303c80ac` |
| 6 | `theorem` | [MemLp.meas_ge_lt_top'_enorm](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/declarations/memlp-meas-ge-lt-top-enorm--8a190e955ae0552f900d98bd.md) | 76 | `result-track:8a190e955ae0552f900d98bd11ded94ca1bb7bf7093622109f23c171b98a8e83` |
| 7 | `theorem` | [MemLp.meas_ge_lt_top'](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/declarations/memlp-meas-ge-lt-top--6980df59fea273c0eb814a0d.md) | 85 | `result-track:6980df59fea273c0eb814a0db6cf9582d52427586480daa07c046551f04490ad` |
| 8 | `theorem` | [MemLp.meas_ge_lt_top_enorm](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/declarations/memlp-meas-ge-lt-top-enorm--d28e577e313f2461630ba454.md) | 95 | `result-track:d28e577e313f2461630ba454bff37d9ae52c9e8808845325dc61dfc23cf4ae22` |
| 9 | `theorem` | [MemLp.meas_ge_lt_top](../../../../../../Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/declarations/memlp-meas-ge-lt-top--79ab06dddacce54b31a8a356.md) | 100 | `result-track:79ab06dddacce54b31a8a3561b552f89a4cf4902f8144f895169b91763db371a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d7ec1282ddd5e9830a199ab34d9c848468fc4d424401305d1c1a49e0b41770c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Full Line Chi Assembly

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2b8da4f4226a668cb8a6102ad529304e7ba7452",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FullLineChiAssembly.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FullLineChiAssembly.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2b8da4f4226a668cb8a6102ad529304e7ba7452`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.FullLineChiProof` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.FullLineChiFold` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.HorizontalChi` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.FullLineAssembly` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_heights_chi](../../../../MeasureAndIntegration/FullLineChiAssembly.lean/declarations/exists-heights-chi.md) | 34 | `result-track:946058a4b773461c8605602ffddee733aa5fc14866f856c6c5f350c5fe1a1c5f` |
| 2 | `theorem` | [completedL_ne_zero_on_horizontals](../../../../MeasureAndIntegration/FullLineChiAssembly.lean/declarations/completedl-ne-zero-on-horizontals.md) | 62 | `result-track:df10a0b314f2b9fa033666c7879e930c18329c27daf8ab07f25a5b19516c178b` |
| 3 | `theorem` | [integrable_FlineChi](../../../../MeasureAndIntegration/FullLineChiAssembly.lean/declarations/integrable-flinechi.md) | 94 | `result-track:9ee891f468064a18beec3e444e301631ae16d8d14526a9c9fdd955469dc71991` |
| 4 | `theorem` | [tendsto_interval_FlineChi](../../../../MeasureAndIntegration/FullLineChiAssembly.lean/declarations/tendsto-interval-flinechi.md) | 140 | `result-track:e3bf2bd594c695ec5817b888b1872ef34dc6f3f71fb6a8dc5f3700e6cf025354` |
| 5 | `theorem` | [full_line_identity_chi'](../../../../MeasureAndIntegration/FullLineChiAssembly.lean/declarations/full-line-identity-chi.md) | 152 | `result-track:97ccf35a0c5533489b407e1af3bae9330614aa952ee8971f5442ed45103d4020` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e23569f97c55396aaae5bfde2dfea85e2303b2d9dddfa5b13fc4464783cbe9cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

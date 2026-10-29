# Verification target: Main Chi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8152319d611d6a0fa0144ce96ad28b81750e9b34",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainChi/Variant5cf5e43bc377eb132f0dcc001bb94b0a4d4e398b61670c5b8cfbd6c1d59629d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/MainChi.lean/index.md) · [Full source](../../../../MeasureAndIntegration/MainChi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8152319d611d6a0fa0144ce96ad28b81750e9b34`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainChi/Variant5cf5e43bc377eb132f0dcc001bb94b0a4d4e398b61670c5b8cfbd6c1d59629d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainChi/Variant5cf5e43bc377eb132f0dcc001bb94b0a4d4e398b61670c5b8cfbd6c1d59629d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.FullLineChi` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.EFLitChi` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Main` — import line 8; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.FullLineChiProof` — import line 9; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.FullLineChiAssembly` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv_coeff_eq_conj](../../../../MeasureAndIntegration/MainChi.lean/declarations/inv-coeff-eq-conj.md) | 28 | `result-track:dbbb032a0e30b13f39dc138e5f4bedd9cd423a7d523a19d217c055eca2c11ed2` |
| 2 | `theorem` | [EF_lit_chi_L](../../../../MeasureAndIntegration/MainChi.lean/declarations/ef-lit-chi-l.md) | 37 | `result-track:ed52f10c6cf818aaef1becba9bc775db29330195948a7297cbfa8a73127a05a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95d81e9943699ea8d3fc5cd1991af9effe3a45adf3a12a283a3071b549908941 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainChi/Variant5cf5e43bc377eb132f0dcc001bb94b0a4d4e398b61670c5b8cfbd6c1d59629d9.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainChi/Variant5cf5e43bc377eb132f0dcc001bb94b0a4d4e398b61670c5b8cfbd6c1d59629d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

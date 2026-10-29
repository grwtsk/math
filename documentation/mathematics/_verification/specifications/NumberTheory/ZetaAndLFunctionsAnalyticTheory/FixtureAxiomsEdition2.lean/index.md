# Verification target: Fixture Axioms Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fbfd85e2522e3b2c061386dd81ddc707038e4e2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixtureAxioms/Variant6fb75a8be615fcf400e209790f41867fcb8d426df28e4a0f6782c967e8e03d7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FixtureAxiomsEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FixtureAxiomsEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fbfd85e2522e3b2c061386dd81ddc707038e4e2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixtureAxioms/Variant6fb75a8be615fcf400e209790f41867fcb8d426df28e4a0f6782c967e8e03d7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixtureAxioms/Variant6fb75a8be615fcf400e209790f41867fcb8d426df28e4a0f6782c967e8e03d7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCorrelationSignChange` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sign_positive_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FixtureAxiomsEdition2.lean/declarations/sign-positive-one.md) | 10 | `result-track:c7b2b4a4311f07dd1e2b8913d8f10685eb036da97e26f03cec0510556da96b5b` |
| 2 | `theorem` | [sign_positive_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FixtureAxiomsEdition2.lean/declarations/sign-positive-half.md) | 13 | `result-track:2f08eec6e359d6c4ccfd68185a380ef05a7ee2c69ecdf3716758168441597c71` |
| 3 | `theorem` | [sign_positive_seven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FixtureAxiomsEdition2.lean/declarations/sign-positive-seven.md) | 16 | `result-track:86a4e9966097de7ef247f9d08c09410be96d214ddd759584044b20283b57e54c` |
| 4 | `theorem` | [sign_zero_excluded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FixtureAxiomsEdition2.lean/declarations/sign-zero-excluded.md) | 20 | `result-track:dcf601627216c1b8be33d9bdb00787851bfbe2ee31f3e9e5522f6c6eb1150d1e` |
| 5 | `theorem` | [sign_endpoint_excluded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FixtureAxiomsEdition2.lean/declarations/sign-endpoint-excluded.md) | 24 | `result-track:0e308917047acda75ecfe12ae62ea867aa83534bc03486f6b24651667c72a4ec` |
| 6 | `theorem` | [sign_even_partner](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FixtureAxiomsEdition2.lean/declarations/sign-even-partner.md) | 29 | `result-track:729af5c286d15213e680e0f063c955650a65e149fd482650c98e1e6c26c187d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55e8c6756cfd5a46196a262d0a528b802bf944b79019b12302f75d6416128c79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixtureAxioms/Variant6fb75a8be615fcf400e209790f41867fcb8d426df28e4a0f6782c967e8e03d7b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixtureAxioms/Variant6fb75a8be615fcf400e209790f41867fcb8d426df28e4a0f6782c967e8e03d7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

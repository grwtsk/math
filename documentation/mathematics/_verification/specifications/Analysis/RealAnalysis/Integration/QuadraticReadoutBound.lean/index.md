# Verification target: GRWTSK.Analysis.Integration.QuadraticReadoutBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "768dc0993c39e81f75613fd23e2b6bbc8f43b487",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Integration/QuadraticReadoutBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/RealAnalysis/Integration/QuadraticReadoutBound.lean/index.md) · [Full source](../../../../../../Analysis/RealAnalysis/Integration/QuadraticReadoutBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `768dc0993c39e81f75613fd23e2b6bbc8f43b487`.

Source path: `GRWTSK/Analysis/Integration/QuadraticReadoutBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Integration/QuadraticReadoutBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Inequalities.ResidualEnclosure`](../../../../../../Analysis/Inequalities/ResidualEnclosure.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_product_bound](../../../../../../Analysis/RealAnalysis/Integration/QuadraticReadoutBound.lean/declarations/integral-product-bound--446c1db3d985b0aa53b2e535.md) | 21 | `result-track:446c1db3d985b0aa53b2e5351fccdc60d453ff801cd461f2301948b0dbf37b4e` |
| 2 | `theorem` | [reconstructed_readout_sq_le](../../../../../../Analysis/RealAnalysis/Integration/QuadraticReadoutBound.lean/declarations/reconstructed-readout-sq-le--9fe525ce0aae4bdb0aaf4f6c.md) | 41 | `result-track:9fe525ce0aae4bdb0aaf4f6c12a664f9ba885c927b36ea21e4285854cb46efce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51fe930f6544dea5f1c13750be1024452c9e6adc7a19c59bf03e2e5d1a045ce1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Integration/QuadraticReadoutBound.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/QuadraticReadoutBound.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

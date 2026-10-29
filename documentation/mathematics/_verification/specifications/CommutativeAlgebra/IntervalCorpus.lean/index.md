# Verification target: Interval Corpus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1458a0a9a16d5f7d32ffccafea9228bd8eb370e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IntervalCorpus.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IntervalCorpus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1458a0a9a16d5f7d32ffccafea9228bd8eb370e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Discovery.IdeasCorpus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Polynomial.Interval` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [source](../../../../CommutativeAlgebra/IntervalCorpus.lean/declarations/source.md) | 17 | `declaration-track:8d7303b7fab977633d400e017e6b783cf9354c6e2688970d673d01f03b20b425` |
| 2 | `def` | [endpointDifference](../../../../CommutativeAlgebra/IntervalCorpus.lean/declarations/endpointdifference.md) | 42 | `declaration-track:9cbb7056e18f66b65d83cbc7ee1a113cb052db2b27cce1842392f40961f081b5` |
| 3 | `def` | [endpointDifferenceSelf](../../../../CommutativeAlgebra/IntervalCorpus.lean/declarations/endpointdifferenceself.md) | 61 | `declaration-track:6d02f28acb9074de2c7c98a43d890ee0d5e96f64d60cccbe9c3e0a85c246d268` |
| 4 | `def` | [endpointDifferenceComposition](../../../../CommutativeAlgebra/IntervalCorpus.lean/declarations/endpointdifferencecomposition.md) | 80 | `declaration-track:fe17623da75da250e50654ce11b368f3ee50f602ac475d28a222381f8ba10fd5` |
| 5 | `def` | [genuineIntervalIntegral](../../../../CommutativeAlgebra/IntervalCorpus.lean/declarations/genuineintervalintegral.md) | 99 | `declaration-track:22526046b911c20b141a0137102decea5aba490756b94ac0de19598f128cb03d` |
| 6 | `def` | [links](../../../../CommutativeAlgebra/IntervalCorpus.lean/declarations/links.md) | 118 | `declaration-track:21a1c0890cb643ce9f8c6d8a533cccff446b2cc06019d9f75cd87c71a3553aca` |
| 7 | `theorem` | [links_length](../../../../CommutativeAlgebra/IntervalCorpus.lean/declarations/links-length.md) | 125 | `result-track:1be855832d912fa9055d8441e05cb9579db0880f5c75ecc84ae2f512b31f0aea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8164732135185200274e241323c61020e61b0181472ae961ce0c7db11f47222a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

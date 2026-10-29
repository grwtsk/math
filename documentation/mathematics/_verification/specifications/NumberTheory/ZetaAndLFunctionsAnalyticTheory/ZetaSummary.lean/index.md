# Verification target: Zeta Summary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9caebb5f05750ce05b765a1d2e2ccc03dd4fdea1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Variant5e087bda176eeca708f374ac5a91efb69c656598cd7ee73a5cdc62788ccec537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaSummary.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaSummary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9caebb5f05750ce05b765a1d2e2ccc03dd4fdea1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Variant5e087bda176eeca708f374ac5a91efb69c656598cd7ee73a5cdc62788ccec537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Variant5e087bda176eeca708f374ac5a91efb69c656598cd7ee73a5cdc62788ccec537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.KLN` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldZeta` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.ZetaAppendix` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HSW.main_theorem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaSummary.lean/declarations/hsw-main-theorem.md) | 35 | `result-track:8f8b9d7550c738ac371470e6a94b5d138457cde200225fdacb536b36b6c466f8` |
| 2 | `theorem` | [MT_theorem_1](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaSummary.lean/declarations/mt-theorem-1.md) | 48 | `result-track:a2ae18797ee57e13ddf4ca30cf3f5238b63cb7d1dc866e82600fa0346ba4044c` |
| 3 | `theorem` | [MTY_theorem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaSummary.lean/declarations/mty-theorem.md) | 58 | `result-track:7dcea4a6336b8f91b3da6613d1e91318ee0de91a804d197ca4d4e74ecf6cd97d` |
| 4 | `theorem` | [Platt_theorem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaSummary.lean/declarations/platt-theorem.md) | 68 | `result-track:2a986a4006432debc9dd4041635deb10bac4836083e3ed9f315ad699a38a8c7a` |
| 5 | `theorem` | [GW_theorem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaSummary.lean/declarations/gw-theorem.md) | 78 | `result-track:f107136ea75c2d68ef2f8d372124edfd1d365aa2d7392db8b4086fbf93c5b51b` |
| 6 | `theorem` | [PT_theorem_1](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaSummary.lean/declarations/pt-theorem-1.md) | 88 | `result-track:be568ca3b9df828cbe58266fbd4578e723cb61663fea8c6c09eb3540249607d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5aa7145998e8a1869648391c96993bd4b7c93d82b9f0107e9de4f9c770c24e31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Variant5e087bda176eeca708f374ac5a91efb69c656598cd7ee73a5cdc62788ccec537.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaSummary/Variant5e087bda176eeca708f374ac5a91efb69c656598cd7ee73a5cdc62788ccec537.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

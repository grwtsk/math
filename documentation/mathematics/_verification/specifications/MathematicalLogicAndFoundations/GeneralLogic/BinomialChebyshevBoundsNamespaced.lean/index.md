# Verification target: Binomial Chebyshev Bounds Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca75aedcd681a91e9e65b032c89d25d5bc9b68e5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBoundsNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBoundsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca75aedcd681a91e9e65b032c89d25d5bc9b68e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.LcmChebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Central` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralBinomial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBoundsNamespaced.lean/declarations/centralbinomial.md) | 23 | `declaration-track:4c68ccfabbaee6213b9b9f19155dcab36c06692fc0b70b985d3af54321e7f045` |
| 2 | `theorem` | [centralBinomial_pos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBoundsNamespaced.lean/declarations/centralbinomial-pos.md) | 27 | `result-track:a3a48fda99a686e10c648a65e2222870618e462514ce3a68d851830d8d5a5f84` |
| 3 | `theorem` | [centralBinomial_le_four_pow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBoundsNamespaced.lean/declarations/centralbinomial-le-four-pow.md) | 32 | `result-track:237c6a4f71244a035d1d0b86d1c14e61d3dc43d7e9023b48dcdc7488fd430aba` |
| 4 | `theorem` | [log_centralBinomial_le_n_log_four](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBoundsNamespaced.lean/declarations/log-centralbinomial-le-n-log-four.md) | 37 | `result-track:5ec25bca93a72d28414d6a9e1d36df5135ceb5cb91538a6d954204bdee9bcb2d` |
| 5 | `def` | [CentralBinomialThetaDifferenceTarget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinomialChebyshevBoundsNamespaced.lean/declarations/centralbinomialthetadifferencetarget.md) | 53 | `declaration-track:09a286af7cc72139c0c1507746d0f7871f917cfc67be1864b034e6bd8d46030a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9dc580dd4b3ba1fb92a4c3cc4dfb8c45684576a16e75ae34a4d62d86c39050a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Varianteb41098e74f06eb60b8bb75892a80ca565ed2bb029b2dd904d5d996db69ea307.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

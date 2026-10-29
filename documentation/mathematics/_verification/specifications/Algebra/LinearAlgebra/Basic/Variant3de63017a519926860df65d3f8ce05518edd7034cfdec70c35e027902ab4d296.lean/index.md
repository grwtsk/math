# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9857a4274b6f5f6dc5b8ac429c4d023dc324cc08",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9857a4274b6f5f6dc5b8ac429c4d023dc324cc08`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Algebra` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BoolMatrix](../../../../../../Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean/declarations/boolmatrix--e480c0f7b7ef49a64e2edaeb.md) | 19 | `declaration-track:e480c0f7b7ef49a64e2edaeb7089ea230c221179508e2b1be32091e1f5c0e25c` |
| 2 | `def` | [BoolMatrix.entry](../../../../../../Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean/declarations/boolmatrix-entry--41c20453cc0c54c2f5da25c6.md) | 23 | `declaration-track:41c20453cc0c54c2f5da25c630ece46abbadfe07dab7030dee323613452274ab` |
| 3 | `def` | [BoolMatrix.row](../../../../../../Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean/declarations/boolmatrix-row--784981897841fb96ffcec6a9.md) | 31 | `declaration-track:784981897841fb96ffcec6a99446e1d500a8dba5822e76a016af437c21da9fd7` |
| 4 | `def` | [BoolMatrix.col](../../../../../../Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean/declarations/boolmatrix-col--28ccd95ab8cfb1d712edbab4.md) | 38 | `declaration-track:28ccd95ab8cfb1d712edbab4d6f8d8829a9cb008d128739b45c2188021a1827c` |
| 5 | `theorem` | [BoolMatrix.entry_eq_false_or_true](../../../../../../Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean/declarations/boolmatrix-entry-eq-false-or-true--60c470dfd1a97f96b7f9e8f0.md) | 45 | `result-track:60c470dfd1a97f96b7f9e8f0b2d50d51ea102be001a00f586c09f83977ae9397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=082204a06edf1968dcd8fd2e28717a10da3e2da0f15ebd6041677b5c9333c5d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

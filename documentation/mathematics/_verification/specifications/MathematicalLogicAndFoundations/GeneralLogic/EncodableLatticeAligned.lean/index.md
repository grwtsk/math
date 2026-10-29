# Verification target: Encodable Lattice Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b8a9684ed7810d8bf9ac9cd6132d206e57b11d5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant07025155910bfeab7c95a1390694c5ca7f2b7ca1c38ce0a89b96653ccdf22bae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableLatticeAligned.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableLatticeAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b8a9684ed7810d8bf9ac9cd6132d206e57b11d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant07025155910bfeab7c95a1390694c5ca7f2b7ca1c38ce0a89b96653ccdf22bae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant07025155910bfeab7c95a1390694c5ca7f2b7ca1c38ce0a89b96653ccdf22bae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iSup_decode₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableLatticeAligned.lean/declarations/isup-decode.md) | 29 | `result-track:323d97dc67a81a0ff18db405153d48704c317db937d1edf3f35219fa1bd07edd` |
| 2 | `theorem` | [iUnion_decode₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableLatticeAligned.lean/declarations/iunion-decode.md) | 35 | `result-track:cf90d058c198b824342496af2c6066423b6229b31d61fd6f50a5ed293bb540d1` |
| 3 | `theorem` | [iUnion_decode₂_cases](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableLatticeAligned.lean/declarations/iunion-decode-cases.md) | 41 | `result-track:e2dad538ab79b1f433fd7ff2d250543cb72e9625509532dd6e1b66542ccfb084` |
| 4 | `theorem` | [iUnion_decode₂_disjoint_on](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableLatticeAligned.lean/declarations/iunion-decode-disjoint-on.md) | 52 | `result-track:9ba380a2fd28ffd4772005d22c5036b68dd6f549a37ab1888bf91fd97869cf10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67e9a766bb34011c6b38104b9dbf3b337c4e5086e749f64e6f1e7fb2155d08ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant07025155910bfeab7c95a1390694c5ca7f2b7ca1c38ce0a89b96653ccdf22bae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant07025155910bfeab7c95a1390694c5ca7f2b7ca1c38ce0a89b96653ccdf22bae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

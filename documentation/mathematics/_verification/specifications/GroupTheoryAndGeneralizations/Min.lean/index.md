# Verification target: Min

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b1ced396e12041d5c02bd3419b971bee2ad8ae6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Min/Variant733191975c447ecc6adde2f26bcde31e93bc5bf2a528c02cfa66957e1f146209.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Min.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Min.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b1ced396e12041d5c02bd3419b971bee2ad8ae6`.

Source path: `GRWTSK/Algebra/GroupTheory/Min/Variant733191975c447ecc6adde2f26bcde31e93bc5bf2a528c02cfa66957e1f146209.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Min/Variant733191975c447ecc6adde2f26bcde31e93bc5bf2a528c02cfa66957e1f146209.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minOrder](../../../../GroupTheoryAndGeneralizations/Min.lean/declarations/minorder-source-edition-2.md) | 34 | `declaration-track:ad71860e355a12c40883fe2bcc8633e734088b624179fb42c76f6035a9024ba4` |
| 2 | `lemma` | [minOrder_eq_top](../../../../GroupTheoryAndGeneralizations/Min.lean/declarations/minorder-eq-top.md) | 39 | `result-track:5127f989e578d65308198c0bf12d4441f9c218f5b20d5688699fd4ece42a597f` |
| 3 | `lemma` | [le_minOrder](../../../../GroupTheoryAndGeneralizations/Min.lean/declarations/le-minorder.md) | 44 | `result-track:dcbf3b5444b463bd73071c4b901a20220443a69dd44558a1a652780ebfffbfa9` |
| 4 | `lemma` | [minOrder_le_orderOf](../../../../GroupTheoryAndGeneralizations/Min.lean/declarations/minorder-le-orderof.md) | 48 | `result-track:5c6524c1b7b94c2fd659785f3c45b648f16e10647301c8b41a59b319759ebe38` |
| 5 | `lemma` | [le_minOrder_iff_forall_subgroup](../../../../GroupTheoryAndGeneralizations/Min.lean/declarations/le-minorder-iff-forall-subgroup.md) | 56 | `result-track:6aeea6f003fece62ecd613c4f2705f35b3c75034c28c5f7b046b2270c5fc4be1` |
| 6 | `lemma` | [minOrder_le_natCard](../../../../GroupTheoryAndGeneralizations/Min.lean/declarations/minorder-le-natcard.md) | 67 | `result-track:0a6295f05dd7430bbecea01f4190b2f47d18bf175ea475340e68ac97ddbf8458` |
| 7 | `lemma` | [minOrder](../../../../GroupTheoryAndGeneralizations/Min.lean/declarations/minorder.md) | 77 | `result-track:660dce0eddcfd299ab9bc78ddad9f1a1f1687747585310af2045e19a2e090c66` |
| 8 | `lemma` | [minOrder_of_prime](../../../../GroupTheoryAndGeneralizations/Min.lean/declarations/minorder-of-prime.md) | 94 | `result-track:bd10b7241c95394e66b4632a146839f102e3082bdab95486817949f005ac59e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84078c2b62a6a0b4b182d00f5337a5ab10ade118d5303b48deefe8d8d20a0bdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Min/Variant733191975c447ecc6adde2f26bcde31e93bc5bf2a528c02cfa66957e1f146209.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Min/Variant733191975c447ecc6adde2f26bcde31e93bc5bf2a528c02cfa66957e1f146209.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

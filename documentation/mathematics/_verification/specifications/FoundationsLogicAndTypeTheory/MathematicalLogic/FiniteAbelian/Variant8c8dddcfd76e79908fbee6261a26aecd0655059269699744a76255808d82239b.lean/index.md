# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteAbelian.Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20af28b463b2ae6cfe0fb7e900c3385cd3905833",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20af28b463b2ae6cfe0fb7e900c3385cd3905833`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.PID` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Quotient` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_of_fg_torsion](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean/declarations/finite-of-fg-torsion--fa1c3e871462886abb6d0bd5.md) | 39 | `result-track:fa1c3e871462886abb6d0bd55ad65dc5873d44ef75599c7d04a1417544bae1ce` |
| 2 | `theorem` | [equiv_free_prod_directSum_zmod](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean/declarations/equiv-free-prod-directsum-zmod--b92229ef0e5808b48071eb73.md) | 62 | `result-track:b92229ef0e5808b48071eb73a6a1c2594fcf7af97bb188bfca2af94db838b8e2` |
| 3 | `theorem` | [equiv_directSum_zmod_of_fintype](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean/declarations/equiv-directsum-zmod-of-fintype--3570f75bdc002cde057ed367.md) | 79 | `result-track:3570f75bdc002cde057ed367b8e46b30545ff59a87884850e03b5e80fe13eddf` |
| 4 | `theorem` | [finite_of_fg_torsion](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean/declarations/finite-of-fg-torsion--d9848087e7d18f61f793a546.md) | 94 | `result-track:d9848087e7d18f61f793a546ad3fb284d7ed333ad6645a723833c48c872d172b` |
| 5 | `theorem` | [finite_of_fg_torsion](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean/declarations/finite-of-fg-torsion--d3bb404a09d75b6c808e71c2.md) | 103 | `result-track:d3bb404a09d75b6c808e71c256ced0f54429c67bd8e6c873766b9e07567a535b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=596e0e765af0e92c00c611ab3eb96eeec24cda5f9f298661635f9fa727a7bbfa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteAbelian/Variant8c8dddcfd76e79908fbee6261a26aecd0655059269699744a76255808d82239b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: GRWTSK.Algebra.UniversalAlgebra.Field.Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1538e812a2ce446f74f0d55e97a8e5d4759a896",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Field/Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/UniversalAlgebra/Field/Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789.lean/index.md) · [Full source](../../../../../../Algebra/UniversalAlgebra/Field/Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1538e812a2ce446f74f0d55e97a8e5d4759a896`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Field/Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Field/Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharZero.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_div](../../../../../../Algebra/UniversalAlgebra/Field/Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789.lean/declarations/cast-div--5f474458b9f1d619928dfdcd.md) | 28 | `result-track:5f474458b9f1d619928dfdcd7ab5712c20b30d1912d2f517f72f0fae3ce0bddd` |
| 2 | `lemma` | [cast_div_charZero](../../../../../../Algebra/UniversalAlgebra/Field/Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789.lean/declarations/cast-div-charzero--062bb7102c643e3d63d57c7d.md) | 37 | `result-track:062bb7102c643e3d63d57c7d5e209991e5c4b353295ab615983807634c6d6794` |
| 3 | `lemma` | [cast_div_div_div_cancel_right](../../../../../../Algebra/UniversalAlgebra/Field/Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789.lean/declarations/cast-div-div-div-cancel-right--02acff8cc09b1394eaa668e9.md) | 40 | `result-track:02acff8cc09b1394eaa668e9eab99ea24a28bb02e287db2f672de476a508adfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be180b1cd9a1416cd4c17e8038852e753f8ff4c7a66c17b435c981567d2e5ae8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Field/Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Field/Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

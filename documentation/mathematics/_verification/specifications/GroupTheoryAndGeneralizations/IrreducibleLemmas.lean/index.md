# Verification target: Irreducible Lemmas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a7af39737eea6b023175ee1fd6532071cf2e888",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant9a27340336d2801aaf8c5aa1864207d3f618d9db956e2bd0b4afd9a68fd592d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a7af39737eea6b023175ee1fd6532071cf2e888`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant9a27340336d2801aaf8c5aa1864207d3f618d9db956e2bd0b4afd9a68fd592d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant9a27340336d2801aaf8c5aa1864207d3f618d9db956e2bd0b4afd9a68fd592d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Even` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Irreducible.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [not_irreducible_pow](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/declarations/not-irreducible-pow.md) | 23 | `result-track:b7ce58919ea202db5231d1ffcf4474b4205209d2d8c183e8ed43e3072f1064b7` |
| 2 | `lemma` | [irreducible_units_mul](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/declarations/irreducible-units-mul.md) | 32 | `result-track:3bda25def0498149f567eac81b6a6439d646caaebf74b49c8635b1220fbfb047` |
| 3 | `lemma` | [irreducible_isUnit_mul](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/declarations/irreducible-isunit-mul.md) | 43 | `result-track:f65e336dc69aaf1ced5113ea7713519d8432c1eff2a12e0cedfc9a9a9a89068f` |
| 4 | `lemma` | [irreducible_mul_units](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/declarations/irreducible-mul-units.md) | 48 | `result-track:7bd6cdc9bc5c089fe6652aa16d3b31d5355821bb34db70cff212c42dd6d05c78` |
| 5 | `lemma` | [irreducible_mul_isUnit](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/declarations/irreducible-mul-isunit.md) | 59 | `result-track:eabd28f8963e2860343792faf03858e861955979bee2a7ea38681d9b31a10502` |
| 6 | `lemma` | [irreducible_mul_iff](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/declarations/irreducible-mul-iff.md) | 64 | `result-track:74f1d43e40f020192bcdef8f615c6fe9654c95eb927b4ab713a201b2b20d2923` |
| 7 | `lemma` | [MulEquiv.irreducible_iff](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/declarations/mulequiv-irreducible-iff.md) | 78 | `result-track:5a494e387916f7021967c33be8b93cf34bbef7ad6b61a77d99f3df3a668d38bf` |
| 8 | `lemma` | [Irreducible.of_map](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/declarations/irreducible-of-map.md) | 92 | `result-track:9353c84c75c19649c9f5ef78cb88ce904df5f2d1b9879c015cabba4b334e39e0` |
| 9 | `lemma` | [Irreducible.not_isSquare](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/declarations/irreducible-not-issquare.md) | 99 | `result-track:d8b167d5a846299ab06cf62d335a71ea7a88df51a7afece1a3f782f46a478316` |
| 10 | `lemma` | [IsSquare.not_irreducible](../../../../GroupTheoryAndGeneralizations/IrreducibleLemmas.lean/declarations/issquare-not-irreducible.md) | 109 | `result-track:cd4b7cdd07edf2e639b341b2c9d3aacfbdbfc17f84251dad22c1eaa5ca3e660e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eebfa174362cd96138f6269b09458d5bf6f901331274b724b26afca5626dccc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lemmas/Variant9a27340336d2801aaf8c5aa1864207d3f618d9db956e2bd0b4afd9a68fd592d5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lemmas/Variant9a27340336d2801aaf8c5aa1864207d3f618d9db956e2bd0b4afd9a68fd592d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

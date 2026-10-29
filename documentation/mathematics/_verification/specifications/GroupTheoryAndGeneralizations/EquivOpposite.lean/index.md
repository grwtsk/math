# Verification target: Equiv Opposite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "830f21c395ad6b00e40ab0a367d5727d5978ccea",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantb82fab9f63553a3f19e1e42cf8b1811ce470a8d4d0e4d07a21077c8d5728999f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `830f21c395ad6b00e40ab0a367d5727d5978ccea`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variantb82fab9f63553a3f19e1e42cf8b1811ce470a8d4d0e4d07a21077c8d5728999f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variantb82fab9f63553a3f19e1e42cf8b1811ce470a8d4d0e4d07a21077c8d5728999f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opAddEquiv](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/opaddequiv.md) | 19 | `declaration-track:3ae4383761f1930cf03e9b2b63179e334defcc1605a0bcd539e74e32d8fcd496` |
| 2 | `lemma` | [opAddEquiv_toEquiv](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/opaddequiv-toequiv.md) | 23 | `result-track:1d613674be0909a87b4fa635ae4261932135efe9541cf6dfcaa27cd80c73c045` |
| 3 | `def` | [opMulEquiv](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/opmulequiv.md) | 31 | `declaration-track:776f1644e390efd11e2502927d393c0f4a457a69730c0e171bf19170b1483788` |
| 4 | `lemma` | [opMulEquiv_toEquiv](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/opmulequiv-toequiv.md) | 35 | `result-track:fe6cfb1dd17df8ab8db949fb9a34e24bdfa3ab22a2eaaec5e91431c6e14aff73` |
| 5 | `def` | [MulEquiv.inv'](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/mulequiv-inv.md) | 46 | `declaration-track:be18fc3e50cd415bfdffdf7914231edf770c4e4da63d636e90f0679c9c30f276` |
| 6 | `def` | [MulHom.toOpposite](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/mulhom-toopposite.md) | 54 | `declaration-track:5b460a7afe99b7858520973a0e382b2bd7244f2893b03e3d65427ee17d0e2b4c` |
| 7 | `def` | [MulHom.fromOpposite](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/mulhom-fromopposite.md) | 64 | `declaration-track:126f45d1b8f020fb678719ed766de60615080163ccfa2edfacba3305c643812b` |
| 8 | `def` | [MonoidHom.toOpposite](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/monoidhom-toopposite.md) | 74 | `declaration-track:ac9001aea7d3e3f9a1e9a5283f44435d6790269b6e734031d3aab00a59b8d2b8` |
| 9 | `def` | [MonoidHom.fromOpposite](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/monoidhom-fromopposite.md) | 85 | `declaration-track:20a5c3296429edb3384c10e44e384a9432535e5dd9d612612a1a8787cb4413be` |
| 10 | `def` | [MulHom.op](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/mulhom-op.md) | 97 | `declaration-track:dda1edf235ef54591379cc9e8bada1e5cd68e1239652e6f16dd3d2d213e32c48` |
| 11 | `def` | [MulHom.unop](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/mulhom-unop.md) | 110 | `declaration-track:b3669495b7b3e87d1d7b4c16418f0cfc2e5b8688facfba53819401e72fef18ff` |
| 12 | `def` | [AddHom.mulOp](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/addhom-mulop.md) | 117 | `declaration-track:53701133821fcaf2bac1742d03ca7a49e8851d3ebb96368efc6292a1c42e880d` |
| 13 | `def` | [AddHom.mulUnop](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/addhom-mulunop.md) | 131 | `declaration-track:1ed608b2a6d54788ec7d04843002d102fbc85e794cfafdc33e1f925128d50513` |
| 14 | `def` | [MonoidHom.op](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/monoidhom-op.md) | 140 | `declaration-track:1be52fe9b8f271bc92e7e1e9b82ae57924b7b0fc02415105c1e7a2c7f6eed9e2` |
| 15 | `def` | [MonoidHom.unop](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/monoidhom-unop.md) | 153 | `declaration-track:8507a361ff98d8eae22ac28617d4014371c6cff4939f2c7d1113e36d09201f7e` |
| 16 | `def` | [MulEquiv.opOp](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/mulequiv-opop.md) | 159 | `declaration-track:364c0aa4ae988d86c820db7421496450267c79ef8eb37e523f24deeb6dc85cb5` |
| 17 | `def` | [AddMonoidHom.mulOp](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/addmonoidhom-mulop.md) | 166 | `declaration-track:759bcd5a9c97de579a54d65953b1b30aaf82171ee398f9c176f0c72af19fc640` |
| 18 | `def` | [AddMonoidHom.mulUnop](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/addmonoidhom-mulunop.md) | 181 | `declaration-track:f89768dacd6c75cc5f8fd25b1c422f5845f85324d209123f77d633409dda5cbf` |
| 19 | `def` | [AddEquiv.mulOp](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/addequiv-mulop.md) | 186 | `declaration-track:cbd0bd1a80f22125d6bbaea28ecbe8bb371ee2a622d37a44acfae84cf0010aea` |
| 20 | `def` | [AddEquiv.mulUnop](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/addequiv-mulunop.md) | 194 | `declaration-track:93b0393121a2887a885b5f0c9a8f0739dfa5124a67b9721a547dcf653fc89077` |
| 21 | `def` | [MulEquiv.op](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/mulequiv-op.md) | 200 | `declaration-track:4ca0742e0ee78a57aae378c57c70cc7811ab27922809f3c71f310db83c61d35c` |
| 22 | `def` | [MulEquiv.unop](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/mulequiv-unop.md) | 217 | `declaration-track:685f90069d37c0bfabf02c71e3a23dbd42e819df7b75c49a84c0960dac4b055c` |
| 23 | `lemma` | [AddMonoidHom.mul_op_ext](../../../../GroupTheoryAndGeneralizations/EquivOpposite.lean/declarations/addmonoidhom-mul-op-ext.md) | 225 | `result-track:97dc678fb1d6df58d54ca260abcad96ecedb2069b841be92bda28a68ff9fdec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0b15bbd68f5f7ca348476cae3dcf7cd12c84ec1bcbcf1595112739aff8ba5e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Opposite/Variantb82fab9f63553a3f19e1e42cf8b1811ce470a8d4d0e4d07a21077c8d5728999f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Opposite/Variantb82fab9f63553a3f19e1e42cf8b1811ce470a8d4d0e4d07a21077c8d5728999f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

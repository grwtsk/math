# Verification target: Equiv Type Tags

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a53bbe89eed3c222c4b6e391f52a33c181c8f0a9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variant7fd82546123448bd6ad1f043f1e54cbc13c573c2758cc0b6a935c7df0268270b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a53bbe89eed3c222c4b6e391f52a33c181c8f0a9`.

Source path: `GRWTSK/Algebra/GroupTheory/TypeTags/Variant7fd82546123448bd6ad1f043f1e54cbc13c573c2758cc0b6a935c7df0268270b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/TypeTags/Variant7fd82546123448bd6ad1f043f1e54cbc13c573c2758cc0b6a935c7df0268270b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddEquiv.toMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/addequiv-tomultiplicative-source-edition-3.md) | 20 | `declaration-track:9a3ac151e07e703b673c26bebb2b594e5a0616ffb695108e7a1a453af7653f83` |
| 2 | `def` | [MulEquiv.toAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/mulequiv-toadditive-source-edition-3.md) | 39 | `declaration-track:da2794617b0e394503d8c608eb9f43d3675ea0cc4e83ba4fcb77017d27681143` |
| 3 | `def` | [AddEquiv.toMultiplicative'](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/addequiv-tomultiplicative.md) | 58 | `declaration-track:677e75712179768d9197037d18da94e424404200869a25225ef27ef1f4261300` |
| 4 | `abbrev` | [MulEquiv.toAdditive'](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/mulequiv-toadditive-source-edition-2.md) | 76 | `declaration-track:aa5b5216bac63fb66b9298b600a790a0fe53118da933fa6a2c770a6018431fc5` |
| 5 | `def` | [AddEquiv.toMultiplicative''](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/addequiv-tomultiplicative-source-edition-2.md) | 82 | `declaration-track:958c3e2510acbd008a9d76ed2eafd95c518766a75684c43fdc352a32dad94947` |
| 6 | `abbrev` | [MulEquiv.toAdditive''](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/mulequiv-toadditive.md) | 100 | `declaration-track:54ba03fc95f1df9ee8837235b86a431c3f19bb4f177f8af541023c17ad7c446f` |
| 7 | `def` | [monoidEndToAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/monoidendtoadditive.md) | 106 | `declaration-track:2299d75c4bf0552937f7d87972cc58db20b1204e1451be195d661af7c4956814` |
| 8 | `def` | [addMonoidEndToMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/addmonoidendtomultiplicative.md) | 113 | `declaration-track:3eaf8a867e04d09b159902007c86cb40358e1ed6fdcc91b9cee204e579912a8e` |
| 9 | `def` | [MulEquiv.piMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/mulequiv-pimultiplicative.md) | 120 | `declaration-track:bf7f5f72a77e2401470b3d5017ee352a81c93b9671537684d4a784702d0a11e2` |
| 10 | `abbrev` | [MulEquiv.funMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/mulequiv-funmultiplicative.md) | 130 | `declaration-track:3ddd408251e962e45f06ec5bffa548c6e50cff376f9e2c519bcfba4ab27b3fb8` |
| 11 | `def` | [AddEquiv.piAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/addequiv-piadditive.md) | 136 | `declaration-track:ec3ad59ab0e99cfd5c2d541c9e7a83ac1d74e825cfa5314d6abe97ba92122915` |
| 12 | `abbrev` | [AddEquiv.funAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/addequiv-funadditive.md) | 146 | `declaration-track:23e74de4e3fb76a3fdfc5c4d0c4a71088df0683584f5027bfe6b60a1eb97573a` |
| 13 | `def` | [AddEquiv.additiveMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/addequiv-additivemultiplicative.md) | 156 | `declaration-track:8a522efc1965d7b5408aa2d903c953736c26a0295c0d250fd1554d561eb8c76f` |
| 14 | `def` | [MulEquiv.multiplicativeAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/mulequiv-multiplicativeadditive.md) | 161 | `declaration-track:3a5cf22974fa687a78c0dbc1307e7abcc073393b721e3470a4c78379cdd84770` |
| 15 | `def` | [MulEquiv.prodMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/mulequiv-prodmultiplicative.md) | 166 | `declaration-track:a52fb59e0c01c04048e39671b575aa184638d69bf1d491c5d538351fce025f29` |
| 16 | `def` | [AddEquiv.prodAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/addequiv-prodadditive.md) | 177 | `declaration-track:30e4a09d99a6e620d8d47579bfb93716435f242af1fd9294fb76eabd9d151857` |
| 17 | `def` | [MulEquiv.Monoid.End](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/mulequiv-monoid-end.md) | 194 | `declaration-track:b8d06f298d5c048e6d3de0a45e3b6dc4f851b067cb2c91ec9191fbd1e08fcbec` |
| 18 | `def` | [MulEquiv.AddMonoid.End](../../../../GroupTheoryAndGeneralizations/EquivTypeTags.lean/declarations/mulequiv-addmonoid-end.md) | 200 | `declaration-track:4045a28b9348b37d61751c0770549af3bfed03c2c4777a97862c01f243fc843b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f9ca6be8073d984103a0960ffa560f4495ed846c9d24c59ae3d214339a98ef4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/TypeTags/Variant7fd82546123448bd6ad1f043f1e54cbc13c573c2758cc0b6a935c7df0268270b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/TypeTags/Variant7fd82546123448bd6ad1f043f1e54cbc13c573c2758cc0b6a935c7df0268270b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

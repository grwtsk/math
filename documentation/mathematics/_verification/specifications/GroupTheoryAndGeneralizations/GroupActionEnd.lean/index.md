# Verification target: Group Action End

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8934b180c4eb5184209332a7ebae11afa12d495a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8934b180c4eb5184209332a7ebae11afa12d495a`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [applyMulAction](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/applymulaction.md) | 52 | `declaration-track:7f9d587daa92796c02281a1414d5225d5f2ce91c30e1143c66be3227d993e6bc` |
| 2 | `instance` | [applyAddAction](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/applyaddaction.md) | 58 | `declaration-track:40638cdc32180677d86827b1b84f3e986e58a1fcebeb3f683d57dc48b97eb4ac` |
| 3 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/smul-def-source-edition-2.md) | 60 | `result-track:566adb4dcafe3d1673d09011a122b0eab578f25283a3fde652f069f41c84b1b6` |
| 4 | `lemma` | [mul_def](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/mul-def.md) | 63 | `result-track:6d3bee7175f078ab2ff658764fab5ad185900fef7a8fc02353142780966982c7` |
| 5 | `lemma` | [one_def](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/one-def.md) | 66 | `result-track:00323532511a4f9f772633c36f1e647b260b4e1b916c17ae8d8c720e4ca948a0` |
| 6 | `instance` | [apply_FaithfulSMul](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/apply-faithfulsmul-source-edition-2.md) | 69 | `declaration-track:ac699c9085c80f21b896c5116dd9a92268f9ee30f85317d55f44eb7c1c6b6a4b` |
| 7 | `instance` | [applyMulAction](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/applymulaction-source-edition-4.md) | 80 | `declaration-track:e3204b5009c211d59c32e1676412cd4b1bb1d35524a59880de00dcd97ed4144b` |
| 8 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/smul-def.md) | 86 | `result-track:03e4dbfde5dafd3554284fb9ca3d92ab6d6ba58c363a997d5aef5be92578b73d` |
| 9 | `instance` | [applyFaithfulSMul](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/applyfaithfulsmul.md) | 89 | `declaration-track:82a4a97b78d6405c20b66ce70d08b23368a51237282a661918a24b249c2b02dc` |
| 10 | `instance` | [applyMulAction](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/applymulaction-source-edition-2.md) | 99 | `declaration-track:caa13bd9d9b68b0213af808be808216a8dffc033762ec759a90a26250a53b62e` |
| 11 | `instance` | [applyMulDistribMulAction](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/applymuldistribmulaction.md) | 107 | `declaration-track:74b695c331da7e3c13863be6f0eeebb4d215a5d811067a3bce63e42d234218de` |
| 12 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/smul-def-source-edition-3.md) | 114 | `result-track:9b4280b0e5d719559501bbcbd85b6f40bfa896cddda9040bcca280ca992baa7b` |
| 13 | `instance` | [apply_faithfulSMul](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/apply-faithfulsmul.md) | 117 | `declaration-track:985a42d5cd9547e19b477fa7046f69a3700beec505ea9f66b900c1d1a4a46ed6` |
| 14 | `instance` | [applyMulAction](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/applymulaction-source-edition-3.md) | 127 | `declaration-track:cacb4c007c7f267bcdbdc986202db20f115ac3e1aa6c0f81746b397eaebfca32` |
| 15 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/smul-def-source-edition-4.md) | 132 | `result-track:a825ebb5d325bba0f536931c76b5ad3191fa2808df5f6629a24990535126a057` |
| 16 | `instance` | [apply_faithfulSMul](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/apply-faithfulsmul-source-edition-3.md) | 135 | `declaration-track:adf76eb4569a9a03f34b7f3061142c4188277ab6a0a81d4dd69cbda96161aafd` |
| 17 | `def` | [MulAction.toEndHom](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/mulaction-toendhom.md) | 147 | `declaration-track:eba5c00a3cecf116254a02544dcabfeb520a17f6e034f8d365b298f94b42c17f` |
| 18 | `abbrev` | [MulAction.ofEndHom](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/mulaction-ofendhom.md) | 155 | `declaration-track:34c8d823cb9707b7a8f5e671b40bd64359a1ef1e2fcc080199ffa003990a3149` |
| 19 | `def` | [AddAction.toEndHom](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/addaction-toendhom.md) | 165 | `declaration-track:bac1aaeb2d6bf8daf844e276ebfe03f156661537c2f00b927ef1991cc4610897` |
| 20 | `abbrev` | [AddAction.ofEndHom](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/addaction-ofendhom.md) | 171 | `declaration-track:d50d0ace4d4a13896ae43308b3f557bff6110bcfc5f62f86befc0f97e4e5bc34` |
| 21 | `def` | [MulAction.toPermHom](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/mulaction-topermhom.md) | 180 | `declaration-track:c6d53319930a9340265085eca097bb13686338fdcf539166f31928b16691e521` |
| 22 | `def` | [AddAction.toPermHom](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/addaction-topermhom.md) | 193 | `declaration-track:63c6732e9d4af55b8a83c11558328b5118f0372158e164ddd9b410acc36f20d1` |
| 23 | `def` | [MulDistribMulAction.toMulEquiv](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/muldistribmulaction-tomulequiv.md) | 205 | `declaration-track:10b7c1caca90b0a687710ec93b34cfad6f68d896b72ad23eb4b61ddaab9d91ef` |
| 24 | `def` | [MulDistribMulAction.toMulAut](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/muldistribmulaction-tomulaut.md) | 213 | `declaration-track:2afb83a335e207a778f7dfb9ec70c43759868a9c9f3521db750b6d255c2625c4` |
| 25 | `def` | [mulAutArrow](../../../../GroupTheoryAndGeneralizations/GroupActionEnd.lean/declarations/mulautarrow.md) | 227 | `declaration-track:dca58a4d6a63aa52825cb44e398a8eaa1db3b35c8f173b1de44c1dca9e7237a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3613b05a044ad2e8b025721d48c974fe714658291b62c9f2be7073723a5870ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

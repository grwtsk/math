# Verification target: Action Pi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7621b3ea3b02554a2966c4684e294d1377212410",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7621b3ea3b02554a2966c4684e294d1377212410`.

Source path: `GRWTSK/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Piecewise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smul'](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/smul.md) | 38 | `declaration-track:60eb9b8c2a90580418ad3da29fe435ffe4f5d1cd288305deab881bd8e8933bd9` |
| 2 | `lemma` | [smul_def'](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/smul-def.md) | 41 | `result-track:d442d86ca9c42084a3fade600e315d84e384953798236d6991f7453845be580b` |
| 3 | `lemma` | [smul_apply'](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/smul-apply.md) | 45 | `result-track:b350555d6fc307ad7c6565adc84147f6c1c747caf296315453b1b02439b3c5d8` |
| 4 | `instance` | [isScalarTower](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/isscalartower-source-edition-3.md) | 49 | `declaration-track:f16ce5189fecddc3162c92dd19f7a7490c3bb462f1e638419a90411f47f77ef0` |
| 5 | `instance` | [isScalarTower'](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/isscalartower.md) | 54 | `declaration-track:09cafcb2703b5a3b3c0e25a85535f1c1dd804805f43d099e6af6d0bf9feb8ac8` |
| 6 | `instance` | [isScalarTower''](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/isscalartower-source-edition-2.md) | 59 | `declaration-track:5a45146c3fff9e83e1afdf497eb51073de9f5d2b301efb6572103552291155ee` |
| 7 | `instance` | [smulCommClass](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/smulcommclass-source-edition-2.md) | 64 | `declaration-track:4f420a7d7a2dec37d7c716852ad8f322ff2d3cf5f9e3e663e3ca865fbc270521` |
| 8 | `instance` | [smulCommClass'](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/smulcommclass-source-edition-3.md) | 69 | `declaration-track:9ab7c2141a94d088d494b5cbbabcf81e000b0d3b6b772a7d74a9a05cd73154fa` |
| 9 | `instance` | [smulCommClass''](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/smulcommclass-source-edition-4.md) | 74 | `declaration-track:f776cf2f38df91021d075bf3f2560034f6d180f5065576a8f46b41d9738efe84` |
| 10 | `instance` | [isCentralScalar](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/iscentralscalar.md) | 79 | `declaration-track:160beccd2799d72da1157da1ecb44422c56aaa1793e171c23a8e58de5003e1dd` |
| 11 | `lemma` | [faithfulSMul_at](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/faithfulsmul-at.md) | 88 | `result-track:d80a043ebd024a39800919d8cde234544c6c6997affb4ebb36f0492c72ac56f7` |
| 12 | `instance` | [faithfulSMul](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/faithfulsmul.md) | 96 | `declaration-track:59f83f4d1d5bd1889e84dae537bf0a382a593335dbbfe884b10798be7a469e1a` |
| 13 | `instance` | [mulAction](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/mulaction-source-edition-2.md) | 102 | `declaration-track:3d2cd433c9905b02b0b34398ce12e11484eb59d91137203e2b63e2981f360968` |
| 14 | `instance` | [mulAction'](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/mulaction.md) | 108 | `declaration-track:3bc59dd4f83c2bf981c1ed76070b4c1f941d7cf836fe853c5223f368ae5fc822` |
| 15 | `instance` | [hasSMul](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/hassmul.md) | 124 | `declaration-track:af667b00ba39fb477ad1073cecc7229ecb831122c318d96694adf193e498d32e` |
| 16 | `instance` | [if](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/if.md) | 130 | `declaration-track:38b792434bfe9f7bee56c6143ff3a3463638956c6c3b22588244ba26466d0fc7` |
| 17 | `instance` | [smulCommClass](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/smulcommclass.md) | 131 | `declaration-track:053c096872ea517368e71673b5dc3850d10abebd0a253e5752e1de11b4c568ef` |
| 18 | `lemma` | [update_smul](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/update-smul.md) | 135 | `result-track:7fe8e08780b01facb6f8d2a88444acf2d063ea1a56d643bc4f897da0b54bb0ce` |
| 19 | `lemma` | [extend_smul](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/extend-smul.md) | 140 | `result-track:5947e4e10b997378fe4c632ff7cbd15fdf51f6def423b54accfafdc6a6d792c6` |
| 20 | `lemma` | [piecewise_smul](../../../../GroupTheoryAndGeneralizations/ActionPiNamespaced.lean/declarations/piecewise-smul.md) | 152 | `result-track:00365557ffda47882799c93a1b9965a8bfec912bb290467546a87645dbc0d051` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9f71cf7d1d6795bb944c0f7fa411f3d4004f256306b8e989a41ec1ae48faec5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

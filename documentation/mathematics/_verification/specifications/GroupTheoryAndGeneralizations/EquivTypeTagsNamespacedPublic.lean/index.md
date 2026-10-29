# Verification target: Equiv Type Tags Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6d0560328a120f98dcd68329d146060c9ba502e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6d0560328a120f98dcd68329d146060c9ba502e`.

Source path: `GRWTSK/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddEquiv.toMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/addequiv-tomultiplicative.md) | 33 | `declaration-track:32df8e4d0b769d592483da06643db4c3d6ab97cf832802d6eb2f3adbafc1bdce` |
| 2 | `def` | [MulEquiv.toAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/mulequiv-toadditive.md) | 50 | `declaration-track:afca99ecf60fbb425e718b2543be607e1ae44b9c9f14cd66f7ce5935ccbf24b5` |
| 3 | `def` | [AddEquiv.toMultiplicativeRight](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/addequiv-tomultiplicativeright.md) | 67 | `declaration-track:d7eea9a1c27db66a8414910c2980661aad020309f570e0e6d10c361a36e690d1` |
| 4 | `abbrev` | [MulEquiv.toAdditiveLeft](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/mulequiv-toadditiveleft.md) | 83 | `declaration-track:e70a3f392f91ae5846fa2f5c13b6569a3a8621dfcf6e7471007673a68b6813db` |
| 5 | `def` | [AddEquiv.toMultiplicativeLeft](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/addequiv-tomultiplicativeleft.md) | 89 | `declaration-track:1649bdfb80645cbbb038d85d75bbead3982c4831605fe87c861f95db5d980727` |
| 6 | `abbrev` | [MulEquiv.toAdditiveRight](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/mulequiv-toadditiveright.md) | 105 | `declaration-track:2554493409c6d5adadb6876ad7e4a6f2f782f279fe6a9e6885c9e32333470c30` |
| 7 | `def` | [MulEquiv.monoidEnd](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/mulequiv-monoidend.md) | 111 | `declaration-track:2101909afb98949844f55443ea0a95db1e9be98220f74760b85763b1609e913f` |
| 8 | `def` | [MulEquiv.addMonoidEnd](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/mulequiv-addmonoidend.md) | 118 | `declaration-track:0911b64b913b363ef26945accf232051ab2b9a91fafa6733ee922e40d6a9abf8` |
| 9 | `def` | [MulEquiv.piMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/mulequiv-pimultiplicative.md) | 146 | `declaration-track:6a362ac6e56395bbf8e26413cb09742493a4d50a3fe50a96f6f53df7d3262b7f` |
| 10 | `abbrev` | [MulEquiv.funMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/mulequiv-funmultiplicative.md) | 154 | `declaration-track:9d63de8d1bb11f69ff7ec083509dedc21306e647b52a5e881c24c6c44b0b1ba4` |
| 11 | `def` | [AddEquiv.piAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/addequiv-piadditive.md) | 160 | `declaration-track:07fc8a3c5793db430cf9f9b4d5e430ed1c57ad864fc5d7214e4e99c8ecc30943` |
| 12 | `abbrev` | [AddEquiv.funAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/addequiv-funadditive.md) | 168 | `declaration-track:59ebc84bc20e5eba02369c9c1db26bdbe7ed06d78589ba110953fc253da1ccb7` |
| 13 | `def` | [AddEquiv.additiveMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/addequiv-additivemultiplicative.md) | 178 | `declaration-track:3da8b13891aff82b69776614a228915f11afa6e6d3ec924c2e46894629e45754` |
| 14 | `def` | [MulEquiv.multiplicativeAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/mulequiv-multiplicativeadditive.md) | 183 | `declaration-track:f6543a11e0400dbb6ea2caeb65a3f983def44a1e693196a1b1ee16a8399121df` |
| 15 | `def` | [MulEquiv.prodMultiplicative](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/mulequiv-prodmultiplicative.md) | 201 | `declaration-track:ec28478ad21fdd5167e16e6dc48c35a77a9f19be418e0cb8024b25df15261044` |
| 16 | `def` | [AddEquiv.prodAdditive](../../../../GroupTheoryAndGeneralizations/EquivTypeTagsNamespacedPublic.lean/declarations/addequiv-prodadditive.md) | 210 | `declaration-track:c1b0b5779f4d1a8fbfeccc29878d1888558e853d951d755665ce16336a1df9bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=186681816210e0fc1a409521beb401f36b2850398d993c4795c10fb618b6226c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

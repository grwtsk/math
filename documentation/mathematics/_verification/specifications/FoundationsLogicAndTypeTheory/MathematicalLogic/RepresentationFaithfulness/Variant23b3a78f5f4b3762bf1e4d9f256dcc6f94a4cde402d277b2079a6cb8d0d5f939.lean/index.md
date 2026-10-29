# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RepresentationFaithfulness.Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab6f4e0fd106872f4bfcd37679ef6627ad10c53a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab6f4e0fd106872f4bfcd37679ef6627ad10c53a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Monodromy.Representation` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Research.TorsionShellComparison` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SelectedTwistGroup](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean/declarations/selectedtwistgroup--23ca7f210a28775ceed69407.md) | 21 | `declaration-track:23ca7f210a28775ceed6940742e6c7e44d775e6daf8c3d75639cc0c998850e86` |
| 2 | `def` | [Faithful](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean/declarations/faithful--c9bade382a91e9deacf385fe.md) | 29 | `declaration-track:c9bade382a91e9deacf385fe6ab0d74776265dce6df705de39e0956330dd31ac` |
| 3 | `def` | [SurjectiveOn](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean/declarations/surjectiveon--530372cebd8df98d7ae33762.md) | 36 | `declaration-track:530372cebd8df98d7ae337629a2f19edcb1b41e5f3934629bfa84d16e2465bbf` |
| 4 | `structure` | [ClassifiesSelectedTwists](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean/declarations/classifiesselectedtwists--a1b69f7f695401a62914dde1.md) | 44 | `declaration-track:a1b69f7f695401a62914dde14c89db866a1c0a9daea2e74536032a459fbb96cb` |
| 5 | `theorem` | [every_selected_twist_has_preimage](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean/declarations/every-selected-twist-has-preimage--d0074062663862ef7b8e96c7.md) | 53 | `result-track:d0074062663862ef7b8e96c7e774a31d42669467697fdeeb545c114ef0edccdb` |
| 6 | `theorem` | [selected_twist_preimage_unique_of_faithful](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean/declarations/selected-twist-preimage-unique-of-faithful--c1340d62fb43e0c651ab04a1.md) | 65 | `result-track:c1340d62fb43e0c651ab04a1c20ccd8837e80b9a7f970cabcb7b46c0c11d78bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd2386a038ab550f8827ea1cda4809ed6e0ef94d1f123194e4782200a3620501 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

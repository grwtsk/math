# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Basic.Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9fa94ef29b81ac6b2872b60d2dfc513e60c3557",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9fa94ef29b81ac6b2872b60d2dfc513e60c3557`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FieldAxiom](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/declarations/fieldaxiom--bad4b39879819a34b73daa33.md) | 50 | `declaration-track:bad4b39879819a34b73daa3345a123f5f2c75ef876e50000746c8117f29a9a43` |
| 2 | `def` | [FieldAxiom.toSentence](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/declarations/fieldaxiom-tosentence--ed6ead99bf0b307ec7a9fb0b.md) | 63 | `declaration-track:ed6ead99bf0b307ec7a9fb0b5fc3bb6e1fd29966b8d7c5cf5f0e2c059656cd11` |
| 3 | `def` | [FieldAxiom.toProp](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/declarations/fieldaxiom-toprop--152560049ba7aaab5880435b.md) | 76 | `declaration-track:152560049ba7aaab5880435bca502ad1af89eef72cec4cbbc3454275d48d7cec` |
| 4 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.FieldAxiom.Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.FirstOrder.Language.Theory.field](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/declarations/root-grwtsk-foundationslogicandtypetheory-modeltheory-fieldaxiom-variant--8e24413cc8d8eb267423d56f.md) | 89 | `declaration-track:8e24413cc8d8eb267423d56f0d5cb7c5b886bf23bf122bdbcdda2a7ae51ce0f5` |
| 5 | `theorem` | [FieldAxiom.realize_toSentence_iff_toProp](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/declarations/fieldaxiom-realize-tosentence-iff-toprop--8da92b4b644990234c0fe2e3.md) | 92 | `result-track:8da92b4b644990234c0fe2e3f86652c52e0b28b5bb5a18609532fbaff6945887` |
| 6 | `theorem` | [FieldAxiom.toProp_of_model](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/declarations/fieldaxiom-toprop-of-model--3adb22a74df5fcd5ff3d2fff.md) | 99 | `result-track:3adb22a74df5fcd5ff3d2fff7d80bc60e0de487a9df894330559239b85c4bb15` |
| 7 | `abbrev` | [fieldOfModelField](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/declarations/fieldofmodelfield--4aec0c016c3a811f801fffa0.md) | 113 | `declaration-track:4aec0c016c3a811f801fffa0d48d9176c283b65407a03c74ae5b0aa8a454575f` |
| 8 | `abbrev` | [compatibleRingOfModelField](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/declarations/compatibleringofmodelfield--fb82693839d5ee0cab588f28.md) | 148 | `declaration-track:fb82693839d5ee0cab588f28b7d784a3c9d473b85c576785d49fcd038beaf489` |
| 9 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean/declarations/instance--4418fd39b1c1008aebb875f6.md) | 154 | `declaration-track:4418fd39b1c1008aebb875f6680239b97dac0ac961fa4cc8da607a70d081699e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb23bccd35d0306f9e4b603e1e601c6917801411df355e72cdff77f902f8a656 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant458fb7de62d06d07b6e6e5c7e5a8adae18c9dbc834457123498975816547a77f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

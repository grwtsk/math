# Verification target: External Rigidifier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f72435315c6a914ca5b0274b5fbb066deff6bf13",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f72435315c6a914ca5b0274b5fbb066deff6bf13`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.IntrinsicRepresentative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExternalRigidifierCert](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/externalrigidifiercert.md) | 20 | `declaration-track:e070a176fcc2e65fbdf3ecc615c8e788879cc5010731dd7d793b29e6eff96eb6` |
| 2 | `def` | [labelValue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/labelvalue.md) | 58 | `declaration-track:6d5b65e0dc9d29095bfa1d86de945c61e7e4bc7f7272488eecbc304e24ee5a66` |
| 3 | `theorem` | [labelValue_spec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/labelvalue-spec.md) | 63 | `result-track:4b1f0ea7135309d4d459ca48438fc70b60cbc47c010fea103a34cf4209682dfc` |
| 4 | `theorem` | [labelValue_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/labelvalue-injective.md) | 69 | `result-track:e1d1d82fcd2194bef0e299da054ee9324a527499f5aec18bafd8b53e2c6ae4b1` |
| 5 | `def` | [externalLabel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/externallabel.md) | 82 | `declaration-track:8d4014af66bf8777d32e9aa34dc47995792abc3d84146376c5873f696cb46fc5` |
| 6 | `theorem` | [externalLabel_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/externallabel-surjective.md) | 88 | `result-track:bb47997c7a07dbf07fd6515600e87110fcce3d08def37a644a7352dbbb59716f` |
| 7 | `def` | [externalLabelEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/externallabelequiv.md) | 104 | `declaration-track:be4263b44e432ab8ebb40613a8e9b975af75c12d304f3ce7d39923acd27df6a1` |
| 8 | `def` | [RigidifiedAut](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/rigidifiedaut.md) | 114 | `declaration-track:b397d51fb6b1397e86c986c3b59da45b4659c9444150eb99654b83a7bfb2f66b` |
| 9 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/instance.md) | 123 | `declaration-track:75d9b8e916d51339891ad6a32558a78fe0f7ed1e784c89c2b074f764907b997f` |
| 10 | `theorem` | [fixesEveryElement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/fixeseveryelement.md) | 128 | `result-track:c635c9b33e6161eefea0633c8c8d78e3bf9ae9264dec8034205c5838007e8396` |
| 11 | `theorem` | [rigidifiedAut_trivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/rigidifiedaut-trivial.md) | 136 | `result-track:c96837385ac0900776b951b0c8f1fee21fca842b3713921bc7fd2660e9e42ca9` |
| 12 | `def` | [rigidifiedElementOrbit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/rigidifiedelementorbit.md) | 148 | `declaration-track:007d97fd8cb06e2fcb0e120b6a12fd978eac9d2f5151cfb540878fd93209241f` |
| 13 | `theorem` | [rigidified_element_orbit_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/rigidified-element-orbit-singleton.md) | 155 | `result-track:e527db914ddf621176e03ca736082d25b44fa679feaef15c5d17908ae65d5c42` |
| 14 | `def` | [rigidifiedProjectionOrbit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/rigidifiedprojectionorbit.md) | 171 | `declaration-track:371dba18a051bdc191e304d3ce06bbbc5ca82d2f4cd2c3a7cb32d3921abf1c2f` |
| 15 | `theorem` | [rigidified_projection_orbit_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifier.lean/declarations/rigidified-projection-orbit-singleton.md) | 179 | `result-track:b28a4586d80b67af9d05e596ecb7a80f7ad2bb0f689ff617ec99f60135b2a62f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=493327830aaa545e9d6f6c72d40388c5adadaec2c7dec65ba58c952e62f22a90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

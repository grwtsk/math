# Verification target: Char Zero Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53b503a6516628c068448c1cf64ad8ba27554c34",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant4e00adaead9e395b42d432698efe1fa4f7d6d61732b1fedc941eee5fae65a74c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53b503a6516628c068448c1cf64ad8ba27554c34`.

Source path: `GRWTSK/Algebra/Defs/Variant4e00adaead9e395b42d432698efe1fa4f7d6d61732b1fedc941eee5fae65a74c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant4e00adaead9e395b42d432698efe1fa4f7d6d61732b1fedc941eee5fae65a74c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CharZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/charzero-source-edition-2.md) | 42 | `declaration-track:ab4f787cd4949113f75463341c0785ab6e805d8bdea871a97ea86a77abb50a1d` |
| 2 | `theorem` | [charZero_of_inj_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/charzero-of-inj-zero.md) | 49 | `result-track:ae4fdb1d1a82383d69465576531684a700cd48f47e1577466eb8e96a3d954944` |
| 3 | `theorem` | [cast_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/cast-injective.md) | 63 | `result-track:61badb20dabb9ffaba714db9253bc68ec83d3872a751cdd8faf58d0b584b0545` |
| 4 | `theorem` | [cast_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/cast-inj.md) | 67 | `result-track:6c2e1f38b16263754969d267e339b3f43ed3fc76f96bc92c67c7d3143b1dd41f` |
| 5 | `theorem` | [cast_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/cast-eq-zero.md) | 71 | `result-track:fc67453cc3ea58b4a9172fa941965c66c6ad0f0a0fb9f02215b2833fd347097b` |
| 6 | `theorem` | [cast_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/cast-ne-zero.md) | 74 | `result-track:645315e78d4377ac7d908db6f18b37c442c5f8ec7db5eb77b97f0babfe552660` |
| 7 | `theorem` | [cast_add_one_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/cast-add-one-ne-zero.md) | 77 | `result-track:eb2e97a17d08c2e5750d984230e57e1c8e97422cb6ae0e35960f4d6c7ceaee11` |
| 8 | `theorem` | [cast_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/cast-eq-one.md) | 81 | `result-track:ef988314f9a29fe02b6257b68d4a9f4ac46a0dae86765df59ddfcea53609c4c6` |
| 9 | `theorem` | [cast_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/cast-ne-one.md) | 84 | `result-track:b85e8e2afad0f02e3498dc070982a1d09a8a85d908aecec0a17199605362b8e9` |
| 10 | `lemma` | [ofNat_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/ofnat-ne-zero.md) | 93 | `result-track:622f7469a83d41f3db4d4111b452dc348e177a660d07de8c9851074e1b96fa4e` |
| 11 | `lemma` | [zero_ne_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/zero-ne-ofnat.md) | 96 | `result-track:f88a728efd77dc40435cc6f9ee26cb675e6f6d7e0d598ada76b81ed6511785ca` |
| 12 | `lemma` | [ofNat_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/ofnat-ne-one.md) | 99 | `result-track:91796a4405dfcf2691634785df3ab59c65d8847075db944efde14b6487d82c3f` |
| 13 | `lemma` | [one_ne_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/one-ne-ofnat.md) | 102 | `result-track:3589edef3162cccb4459bffcb7c28861ddfbc7958f954c08cf6e3ea1dba98b13` |
| 14 | `lemma` | [ofNat_eq_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/ofnat-eq-ofnat.md) | 105 | `result-track:70fb5284dacae5813cc54d49d053f6997a3f410adc3531c0dba9795d4e0b0112` |
| 15 | `instance` | [charZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/charzero.md) | 113 | `declaration-track:a6a5387c2d1b0e09e369e780122ad2d4dd282e77f962d5f0a3a90f4ecc5d56a9` |
| 16 | `instance` | [charZero_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/charzero-one.md) | 116 | `declaration-track:43f4a21fadea1eee49b59db5722f6d089f6806dd894e76ef38fd36b0123a091f` |
| 17 | `instance` | [charZero_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharZeroDefsPublic.lean/declarations/charzero-ofnat.md) | 121 | `declaration-track:7d9c14c7e09caf3dd92bc70c9d925526407eb51571f190500e6b48ca011e1242` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea9f45a1e38079cf081f92679a28b8ca7c38f9ead78032cb44db298dd48362dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variant4e00adaead9e395b42d432698efe1fa4f7d6d61732b1fedc941eee5fae65a74c.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variant4e00adaead9e395b42d432698efe1fa4f7d6d61732b1fedc941eee5fae65a74c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

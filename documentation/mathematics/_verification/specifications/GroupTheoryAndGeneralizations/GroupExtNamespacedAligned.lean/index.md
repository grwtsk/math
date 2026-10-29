# Verification target: Group Ext Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe4dc64b2b95ffcb53cfdacab38c4717ee8631bb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ext/Variant7909b86b07f3156b17c0701a6a37b8559d7c9abb91a8b87e7faa0ebccec97866.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe4dc64b2b95ffcb53cfdacab38c4717ee8631bb`.

Source path: `GRWTSK/Algebra/GroupTheory/Ext/Variant7909b86b07f3156b17c0701a6a37b8559d7c9abb91a8b87e7faa0ebccec97866.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ext/Variant7909b86b07f3156b17c0701a6a37b8559d7c9abb91a8b87e7faa0ebccec97866.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Monoid.ext](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/monoid-ext.md) | 37 | `result-track:d52f202eed6212239c67330c7501c3a2ed5dd78cdf989764d51e47cc2d36e48c` |
| 2 | `theorem` | [CommMonoid.toMonoid_injective](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/commmonoid-tomonoid-injective.md) | 53 | `result-track:03135dd56632aafb3727fc8ae21b16071df6f52d415acbcf91fa7d36e3c6bc3c` |
| 3 | `theorem` | [CommMonoid.ext](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/commmonoid-ext.md) | 61 | `result-track:fecef16a44d11120da38d34e27dc81b6fb36c26641203558e9490cf4e0627ea6` |
| 4 | `theorem` | [LeftCancelMonoid.toMonoid_injective](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/leftcancelmonoid-tomonoid-injective.md) | 67 | `result-track:db08054a465fd9f5d37d2a79f2c8b6c146974a1668b01c86f90598494173dba7` |
| 5 | `theorem` | [LeftCancelMonoid.ext](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/leftcancelmonoid-ext.md) | 75 | `result-track:d7566a54c55289b7fff3c95d6bd8dfa5f9865f2f6189a7ba1d20e04b5f5b020b` |
| 6 | `theorem` | [RightCancelMonoid.toMonoid_injective](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/rightcancelmonoid-tomonoid-injective.md) | 82 | `result-track:5aa985483eb6ad3c1780e226932e7064196e00aac1f49d66d2ab2b62afd8e3d6` |
| 7 | `theorem` | [RightCancelMonoid.ext](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/rightcancelmonoid-ext.md) | 90 | `result-track:4db65a520ca5ed98316dd92a1af01e921b32f4115a8a8237f1568c667852a545` |
| 8 | `theorem` | [CancelMonoid.toLeftCancelMonoid_injective](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/cancelmonoid-toleftcancelmonoid-injective.md) | 97 | `result-track:c75237e720b7f241c528b4446e247ae556ddafbef8ab0c01f909e64cdeb04044` |
| 9 | `theorem` | [CancelMonoid.ext](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/cancelmonoid-ext.md) | 105 | `result-track:73d6662949a18741ca08739266f041a0421575f05687fac8ae730ebb19b7b938` |
| 10 | `theorem` | [CancelCommMonoid.toCommMonoid_injective](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/cancelcommmonoid-tocommmonoid-injective.md) | 112 | `result-track:2de4a902f15a115e683b92d5dccd8d53b55d3ec11d58c95153b5c8f192691cdb` |
| 11 | `theorem` | [CancelCommMonoid.ext](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/cancelcommmonoid-ext.md) | 122 | `result-track:67da850b9718b27ae7f490bf3d4557dad623fb9ace34b808536ff24e2725bec8` |
| 12 | `theorem` | [DivInvMonoid.ext](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/divinvmonoid-ext.md) | 129 | `result-track:263e75128cd4ec35f03af5a45123d8171df79661384930b615d076bd62a27f5b` |
| 13 | `theorem` | [Group.ext](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/group-ext.md) | 152 | `result-track:9038c40de77405982e4bd11c09a2e74ac0bb8fa5d9fafcd765c32535a9188c5e` |
| 14 | `theorem` | [CommGroup.ext](../../../../GroupTheoryAndGeneralizations/GroupExtNamespacedAligned.lean/declarations/commgroup-ext.md) | 165 | `result-track:8286d9e0cad11d4ea663e713e2f639de9015e6b940ea7bb5ed8827997f8de88f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4312c02dfd29c6bfc12a7fc3602c25c485f569ebd76b175eb885f781cead7b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Ext/Variant7909b86b07f3156b17c0701a6a37b8559d7c9abb91a8b87e7faa0ebccec97866.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Ext/Variant7909b86b07f3156b17c0701a6a37b8559d7c9abb91a8b87e7faa0ebccec97866.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

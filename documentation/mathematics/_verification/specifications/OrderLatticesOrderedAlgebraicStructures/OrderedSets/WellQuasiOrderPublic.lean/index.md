# Verification target: Well Quasi Order Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b98e7a4a79637344bf8b3b04e1119a82f1528f4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant05f5d13396059cf3b2aed431c60a1b513c48abaf17820a33bcc46dbf7b8f4cf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b98e7a4a79637344bf8b3b04e1119a82f1528f4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant05f5d13396059cf3b2aed431c60a1b513c48abaf17820a33bcc46dbf7b8f4cf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant05f5d13396059cf3b2aed431c60a1b513c48abaf17820a33bcc46dbf7b8f4cf0.lean.json)

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
| 1 | `def` | [WellQuasiOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiordered.md) | 42 | `declaration-track:6c1f2ea53cb80f6f4d0677ce7b6aa413f4889313fb2adcf6ef1bf9545aaa1b18` |
| 2 | `theorem` | [wellQuasiOrdered_of_isEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiordered-of-isempty.md) | 45 | `result-track:df55468d05b57513a4a22c3b0e2a9aacb0e17508bb322ad7469f95d7e96ca94c` |
| 3 | `theorem` | [IsAntichain.finite_of_wellQuasiOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/isantichain-finite-of-wellquasiordered.md) | 48 | `result-track:146af6acfa49380c3d7fa386ed5f06fbe77f55f628c3019aa012a4c6fe480b36` |
| 4 | `theorem` | [Finite.wellQuasiOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/finite-wellquasiordered.md) | 55 | `result-track:f49ff84b40435ac655cf507ebd141d9257b838cc5626f74a141bc1c29aff42af` |
| 5 | `theorem` | [WellQuasiOrdered.exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiordered-exists-monotone-subseq.md) | 62 | `result-track:90844ed6758cf6283ceeeae1482af7e5ba531e2288e72d961eeb81af7ee95a9b` |
| 6 | `theorem` | [wellQuasiOrdered_iff_exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiordered-iff-exists-monotone-subseq.md) | 71 | `result-track:489227968f53250feb222b3901ccc6a5b7bc0a3d6bdc68c2f13a738812afa95a` |
| 7 | `theorem` | [WellQuasiOrdered.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiordered-prod.md) | 78 | `result-track:068001c051c45d591275f0b09cfdc5dd6fcc31af003f771ff5ad87cabea8e838` |
| 8 | `theorem` | [WellQuasiOrdered.pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiordered-pi.md) | 88 | `result-track:f7089034d5f63bfe995664bde0361aa6b30c52907836e155f020af1059ed5f55` |
| 9 | `theorem` | [RelIso.wellQuasiOrdered_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/reliso-wellquasiordered-iff.md) | 110 | `result-track:1f7a19f3f6063cf9ec8a0fc9621384d81e45619b6874a3a3f4ee1f161a61022f` |
| 10 | `theorem` | [WellQuasiOrdered.of_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiordered-of-surjective.md) | 116 | `result-track:765411a364c2c0ffdfb076de62feb541367eb49fcfc596e945284e43d9d5251b` |
| 11 | `class` | [WellQuasiOrderedLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiorderedle.md) | 127 | `declaration-track:dc161dd973902f6b1f68867aa198596e6628e41ebf55ace00892d4fdca281f45` |
| 12 | `theorem` | [wellQuasiOrdered_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiordered-le.md) | 130 | `result-track:8adba48fb1022b13c5369dba1609f5b49c76aecb8113e6b32bfe625c1b9c0423` |
| 13 | `theorem` | [OrderIso.wellQuasiOrderedLE_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/orderiso-wellquasiorderedle-iff.md) | 133 | `result-track:1a00d8354c1ab4adea021f1bf0ea53569c7f173cd6c06a8c0522c3cd183d47a8` |
| 14 | `lemma` | [Finite.to_wellQuasiOrderedLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/finite-to-wellquasiorderedle.md) | 142 | `result-track:88ed1cd65ab2457ed53fce655bfad4add81cfec07cd0291c6d06d939895697e3` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/instance-source-edition-2.md) | 145 | `declaration-track:d1beeaba2efeca698f8f302c824c12834caea4eb05981fa1f183e8b12792d3ef` |
| 16 | `theorem` | [WellQuasiOrdered.wellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiordered-wellfounded.md) | 152 | `result-track:8b70e356e66a9f5355f9e966270966f3a2131b3300d3d8eb9e4831fa4cf416ca` |
| 17 | `theorem` | [WellQuasiOrderedLE.finite_of_isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiorderedle-finite-of-isantichain.md) | 161 | `result-track:b3c8eb256306bdd48b21797237bab2e1acf991fd2b525fd6d8008873790c4205` |
| 18 | `theorem` | [wellQuasiOrderedLE_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiorderedle-iff.md) | 166 | `result-track:2b628b957a2eb2fc72e7b2d5cf60cb5ce1f151c2150f5fec23d24b77f6726893` |
| 19 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/instance-source-edition-3.md) | 185 | `declaration-track:f630c88be38150137b506f621a737de1fc567dca9528fd48476ddeacfd9480ab` |
| 20 | `theorem` | [Monotone.wellQuasiOrderedLE_of_wellQuasiOrderedLE_of_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/monotone-wellquasiorderedle-of-wellquasiorderedle-of-surjective.md) | 188 | `result-track:88688872cd27604062a34603e52954b85a06244997914f6e732cddcce9dce76c` |
| 21 | `theorem` | [OrderHom.wellQuasiOrderedLE_of_wellQuasiOrderedLE_of_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/orderhom-wellquasiorderedle-of-wellquasiorderedle-of-surjective.md) | 193 | `result-track:6fc35fe596d717da872e45acf141c7c9ac7442491a07a070a93bfd4ee3c86c10` |
| 22 | `theorem` | [wellQuasiOrderedLE_iff_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/wellquasiorderedle-iff-wellfoundedlt.md) | 204 | `result-track:656b55d239c2630254f7768dfa73158751c69ff8d8adc80a719958cd87c8e369` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/instance.md) | 208 | `declaration-track:7d6f7e4e719f9eb2e4ce29612e9f49d7194deb24c76ca40ea7397c88ff9f6158` |
| 24 | `instance` | [Pi.wellQuasiOrderedLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderPublic.lean/declarations/pi-wellquasiorderedle.md) | 215 | `declaration-track:bf390f89781c3d021f6e866bcae408bac6064c3b4cb737984e888a8046632f97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77fec97102b3bae5215238ce1a5aaab2fe252dd69068af3e674decf519dfa324 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant05f5d13396059cf3b2aed431c60a1b513c48abaf17820a33bcc46dbf7b8f4cf0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant05f5d13396059cf3b2aed431c60a1b513c48abaf17820a33bcc46dbf7b8f4cf0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: ZGroup Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b4f92c099e07a62923cab608512dad29a855750",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b4f92c099e07a62923cab608512dad29a855750`.

Source path: `GRWTSK/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean.json)

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
| 1 | `class` | [IsZGroup](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/iszgroup.md) | 39 | `declaration-track:748aa9b3a27f4bc8bce528bb33a12a726c03e4a8bd1787908ffde82e235e7b05` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/instance-source-edition-4.md) | 46 | `declaration-track:6b95b915f9f2738456bef3da9687de2204e227590def8a0295f7d3e470b50916` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/instance-source-edition-2.md) | 49 | `declaration-track:1030faac39c501b88302a5df803e5cc92a16d002f95b24109469904f2d6af821` |
| 4 | `theorem` | [_root_.IsPGroup.isCyclic_of_isZGroup](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/root-ispgroup-iscyclic-of-iszgroup.md) | 52 | `result-track:be1b1ac18ea69dfa7948a54a555edb52ca64ab55130397725e5788c419eaeeee` |
| 5 | `theorem` | [of_squarefree](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/of-squarefree.md) | 57 | `result-track:184892b566c55b1b1c687179248f39d5a562a20a4502b4f35abf839b60abac28` |
| 6 | `theorem` | [of_injective](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/of-injective.md) | 64 | `result-track:d2c486f5261365d174e0580a8a9f41253ad7b7fed4b2c79a3fb1a88436194160` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/instance.md) | 73 | `declaration-track:0ffdddfac2369930ffc393259b72b8bb2e5c3771d25da032c4a34d6761eefd4c` |
| 8 | `theorem` | [of_surjective](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/of-surjective.md) | 75 | `result-track:ab45ad4659a59bd8b29c8df44157515cd60f37ec3db618e8b956bb91f5f9ecd1` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/instance-source-edition-6.md) | 83 | `declaration-track:af7596d772c3acfef1a5681fa2a69a894d6d90d3cd8dd6e57453646436a7ccab` |
| 10 | `theorem` | [commutator_lt](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/commutator-lt.md) | 90 | `result-track:6d3d6b873dc96f36ebdda1748ff42407b1c86db73ec7aa3887d4224059ac6e6b` |
| 11 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/instance-source-edition-5.md) | 103 | `declaration-track:84141f260b14e632b45f6099c2124dbf6760e888dc12f4de3a550bc48c551b52` |
| 12 | `theorem` | [exponent_eq_card](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/exponent-eq-card.md) | 116 | `result-track:0c9598cf879babbe75a1f0e4f77f8668de24b9c93e78a62c0c663c191538dc32` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/instance-source-edition-3.md) | 127 | `declaration-track:63db49089b1a6a7c071e64cd271e424550073b1d3f68190ab65cd3d0a5934c2e` |
| 14 | `instance` | [isCyclic_abelianization](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/iscyclic-abelianization.md) | 136 | `declaration-track:6ff4525f575803c3a0774b3e4cc4c028b45f792190255f5c9e1f37d3418ffcf1` |
| 15 | `theorem` | [isCyclic_commutator](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/iscyclic-commutator.md) | 146 | `result-track:1d8c2ca545b64b2a3ea869a8a3fc15cd8ee325847855099388f9a08b31af132b` |
| 16 | `theorem` | [smul_mul_inv_trivial_or_surjective](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/smul-mul-inv-trivial-or-surjective.md) | 187 | `result-track:7037c047160b3537fa227d9ade43e64cc573102950aa8c8ccefd8fd5699768e6` |
| 17 | `theorem` | [commutator_eq_bot_or_commutator_eq_self](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/commutator-eq-bot-or-commutator-eq-self.md) | 214 | `result-track:ce4f7af377294a6027f1dd57de6bb758b1c3b6a5291066bde233a1761ddfb010` |
| 18 | `theorem` | [commutator_eq_bot_or_commutator_eq_self](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/commutator-eq-bot-or-commutator-eq-self-source-edition-2.md) | 235 | `result-track:fc2bd9b80efe0b2eff2cab879e6dda098da587d405601018a1f1a35fc6d23a4e` |
| 19 | `theorem` | [le_center_or_le_commutator](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/le-center-or-le-commutator.md) | 241 | `result-track:924aa058357bbff8c1e780b2879b24cc4c43c34c4e84b995f67192f43498f1ef` |
| 20 | `theorem` | [normalizer_le_centralizer_or_le_commutator](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/normalizer-le-centralizer-or-le-commutator.md) | 251 | `result-track:408e3147e9dd7799f409d3a5b0b810f6a4def7fe88b7caffcbed23f6dbd9ac3a` |
| 21 | `theorem` | [not_dvd_card_commutator_or_not_dvd_index_commutator](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/not-dvd-card-commutator-or-not-dvd-index-commutator.md) | 272 | `result-track:0b380457d870bdb27aa7cec1508e43400c8b1dbbb98e15f060fd236de2b9c501` |
| 22 | `theorem` | [IsZGroup.coprime_commutator_index](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/iszgroup-coprime-commutator-index.md) | 284 | `result-track:4d50a88586a3b2c7bc12ba920f9be2641b16a8211fca4d7c7561db3a2aeca362` |
| 23 | `theorem` | [isZGroup_of_coprime](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/iszgroup-of-coprime.md) | 298 | `result-track:4cce42f4165854dae69f697e30c294912630e17113a34862470991385eb581bc` |
| 24 | `theorem` | [isZGroup_iff_exists_mulEquiv](../../../../GroupTheoryAndGeneralizations/ZGroupPublic.lean/declarations/iszgroup-iff-exists-mulequiv.md) | 319 | `result-track:65a5c688e3fb0f7dcc1a33e05172b558b62fdaa8b684db07396b9b1f952f294a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02d017a74754575eb9383be473f2c1a5ff26ba1abb4b90ff3c1b9e47a86ace7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

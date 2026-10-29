# Verification target: Directed Restriction Of Certificate Families

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ff2610092a1742f3d5e46683f77591d2a01592c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant3c81fab67b018cc5e61477ef5d831da987c4b1b7bab5278af6bfae18385ba952.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ff2610092a1742f3d5e46683f77591d2a01592c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant3c81fab67b018cc5e61477ef5d831da987c4b1b7bab5278af6bfae18385ba952.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant3c81fab67b018cc5e61477ef5d831da987c4b1b7bab5278af6bfae18385ba952.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.CertificationEquivalence` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertificateRestriction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/certificaterestriction.md) | 23 | `declaration-track:aa279ab17594a80ec56e1cb3a1281939bbfa03f0ac23137fc0ede009ef3c1b64` |
| 2 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/refl.md) | 40 | `declaration-track:a53cbcc8d130edb65ae904c80e2beff0b4591b39ad4fda57e72923e2e6de7b20` |
| 3 | `def` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/trans.md) | 46 | `declaration-track:d0932c2298b6a88baf9d8d30afb264946475e38107be93d0ca09ddd6ac00d2d7` |
| 4 | `def` | [representation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/representation.md) | 56 | `declaration-track:085ea77dfe8e9f7567f81a15680b4d73de154b36af80b8a221cf1ff78985a129` |
| 5 | `def` | [map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map.md) | 67 | `declaration-track:526ad97713c27e9359f72a23a125b4d3b5535f6fd80947e7ec1137da6625427d` |
| 6 | `theorem` | [map_compress](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map-compress.md) | 75 | `result-track:5be473ef656ed374fe01e4b4ad779cfb8f02486ad911e3c9979c41b5db117785` |
| 7 | `theorem` | [map_unique_on_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map-unique-on-image.md) | 82 | `result-track:805e067c1b91be406de48b9ea72046cd9fc8c2cce74fe3744f77487be719d1c1` |
| 8 | `theorem` | [map_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map-unique.md) | 92 | `result-track:562fc1588f5b54713e1f970d27e54d813c13c55f7d1b77243504b589041af462` |
| 9 | `theorem` | [map_recover_on_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map-recover-on-image.md) | 104 | `result-track:3d257d1b1e29ab4cd1c42b72d2a18a8cf135e3c5fbd75f8c56666d64ce65d42a` |
| 10 | `theorem` | [map_recover](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map-recover.md) | 113 | `result-track:96e02d74cb66b89c9caa93fca241857e4e32235fc437b3e04f46ce5490352f93` |
| 11 | `theorem` | [map_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map-refl.md) | 121 | `result-track:d4e1d4b4d10e916897ec9e657295bef57086b99aec12740ea2a5028e62ab4487` |
| 12 | `theorem` | [map_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map-trans.md) | 127 | `result-track:535f649d485d4b50e50c5a79f65461743417505a5a83633b0d0d73f3070fa190` |
| 13 | `theorem` | [map_equiv_natural](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map-equiv-natural.md) | 143 | `result-track:ce96e08527dc4084c3adc65a5f7e0d6cbc0a781087cd3807d718305e1457af24` |
| 14 | `theorem` | [map_evolution_on_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map-evolution-on-image.md) | 160 | `result-track:015bb1d8408fd757c91e072be902b8289f9fc7373d75ba1a51773b93b8138a5b` |
| 15 | `theorem` | [map_evolution](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirectedRestrictionOfCertificateFamilies.lean/declarations/map-evolution.md) | 173 | `result-track:e33e6509568b088284ab3b1d5bd0325693d3d45d9e0efd67832a04b814cd6e98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b059c32248e19f0af326a2abb78a22346f449e16978ef60cb99c15c04d6ef2f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant3c81fab67b018cc5e61477ef5d831da987c4b1b7bab5278af6bfae18385ba952.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant3c81fab67b018cc5e61477ef5d831da987c4b1b7bab5278af6bfae18385ba952.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

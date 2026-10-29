# Verification target: Bilinear Packet Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da2288df812fac8b0c35c47d0d63ae4788fef9ce",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant29321df6600c51c4be71044bb0b3c9c2290ad3eb17d94382718e3b203af5ac2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da2288df812fac8b0c35c47d0d63ae4788fef9ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant29321df6600c51c4be71044bb0b3c9c2290ad3eb17d94382718e3b203af5ac2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant29321df6600c51c4be71044bb0b3c9c2290ad3eb17d94382718e3b203af5ac2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeVaughanLeft](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/conductorthreevaughanleft.md) | 50 | `declaration-track:524261870aeb11b4524932a4dcc5f73591a9781d50c1bbaeb1efb7ec2c9ef6aa` |
| 2 | `def` | [conductorThreeVaughanRight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/conductorthreevaughanright.md) | 59 | `declaration-track:9c4c1d38a70b9c7b35c2c8a8ddf43e89cd865081719c72a4f4738b2612f1559a` |
| 3 | `def` | [typeIICutoffMatrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/typeiicutoffmatrix.md) | 71 | `declaration-track:b52e66edbfb12ff1a8c09c5e91efbda2e6479d74032e50e3ba9f886430bbe925` |
| 4 | `def` | [typeIIMatrixPairing](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/typeiimatrixpairing.md) | 80 | `declaration-track:94c68c78a7b1467e5fc47d15f0b4a1d45c35bc48c05a71f074eb613e7344edfb` |
| 5 | `theorem` | [typeIIMatrixPairing_add](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/typeiimatrixpairing-add.md) | 87 | `result-track:6ede3a641ac244ff568c759f34142af47fd5ff84507dc0235fb9cb827d9f460b` |
| 6 | `theorem` | [typeIIMatrixPairing_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/typeiimatrixpairing-sum.md) | 98 | `result-track:40a1ec0311836152b4b02cd425acad1d4f8c7eedfc7dd61c4f1f8cf775f32a5c` |
| 7 | `structure` | [TypeIIBilinearPacketFactorization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/typeiibilinearpacketfactorization.md) | 132 | `declaration-track:b2121f875e8e6796bc3d721b0e677264654e7e5617074a658d48373e87d066cf` |
| 8 | `def` | [TypeIIBilinearPacketFactorization.packetMatrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/typeiibilinearpacketfactorization-packetmatrix.md) | 178 | `declaration-track:fdaab980c36518a386521b495e6e636ac4f92fc372f413bb71d5e89a83ce7bce` |
| 9 | `def` | [TypeIIBilinearPacketFactorization.packetPairing](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/typeiibilinearpacketfactorization-packetpairing.md) | 199 | `declaration-track:8be2dc0ede86d12f2d0db3f84afdd091c475641dbd6475b92a095dbfecb64cf8` |
| 10 | `theorem` | [TypeIIBilinearPacketFactorization.matrixPairing_packetMatrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/typeiibilinearpacketfactorization-matrixpairing-packetmatrix.md) | 220 | `result-track:e888a1e568336928f3735a72f668309ea5d057bf7d023feb77c63259e0c4a8e4` |
| 11 | `theorem` | [typeII_eq_packetPairing_add_residual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketNamespacedPublicEdition2.lean/declarations/typeii-eq-packetpairing-add-residual.md) | 250 | `result-track:ee1b77e09fd39bb8f0982f920287ef74f0626870518bf3686ee514a161681b8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=937f36ab6c286402b38a59237f03e2c009fc92cd38d736b9cf66ff9bb08f3636 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant29321df6600c51c4be71044bb0b3c9c2290ad3eb17d94382718e3b203af5ac2b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant29321df6600c51c4be71044bb0b3c9c2290ad3eb17d94382718e3b203af5ac2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

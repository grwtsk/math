# Verification target: Bilinear Packet Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ab6ccf750f9699969862d4ba77528e65ca76069",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ab6ccf750f9699969862d4ba77528e65ca76069`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeVaughanLeft](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/conductorthreevaughanleft.md) | 42 | `declaration-track:b1eed08d8e39ed82d46bc2525caebc928b70646cffa7fba64aa64da62594135d` |
| 2 | `def` | [conductorThreeVaughanRight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/conductorthreevaughanright.md) | 51 | `declaration-track:0e442364a25df42a23088e864ca08c6f466880f296aef203da95bea1caa87ba9` |
| 3 | `def` | [typeIICutoffMatrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/typeiicutoffmatrix.md) | 63 | `declaration-track:bdf2b204bc057728524f6b157bd0f5e990c0b26f256cad4a7ba1c89b27a423e9` |
| 4 | `def` | [typeIIMatrixPairing](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/typeiimatrixpairing.md) | 72 | `declaration-track:9fb2477dd04b12e09922c4c957cdc5c5775b3c19bd9ca5d026826bd50ffdc2cc` |
| 5 | `theorem` | [typeIIMatrixPairing_add](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/typeiimatrixpairing-add.md) | 79 | `result-track:82a6d26cba8bb3826ccf5daa4c346f22a6081e82175a91fab2556e57db161c89` |
| 6 | `theorem` | [typeIIMatrixPairing_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/typeiimatrixpairing-sum.md) | 90 | `result-track:b0c6aea9c5ba3f5638971beaaaf1513450ad01aac8b9b9d881dddb0fb7896128` |
| 7 | `structure` | [TypeIIBilinearPacketFactorization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/typeiibilinearpacketfactorization.md) | 124 | `declaration-track:0519cad2fc2f5fc78a99a6b4f098a46d6cde49ebc8486a8994f0430d3d00b392` |
| 8 | `def` | [TypeIIBilinearPacketFactorization.packetMatrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/typeiibilinearpacketfactorization-packetmatrix.md) | 170 | `declaration-track:2c24c381954418724fcd47c268fbcc319a4d213adeeafc3ff58daca79d873ae0` |
| 9 | `def` | [TypeIIBilinearPacketFactorization.packetPairing](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/typeiibilinearpacketfactorization-packetpairing.md) | 191 | `declaration-track:ac30648e22070f1b6eaa025a60d8583343b005674b34fae269817f860af37ad4` |
| 10 | `theorem` | [TypeIIBilinearPacketFactorization.matrixPairing_packetMatrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/typeiibilinearpacketfactorization-matrixpairing-packetmatrix.md) | 212 | `result-track:f37895179609d64c6ea0f6ccb098f73749857115b747a4c29a31f3e09969970b` |
| 11 | `theorem` | [typeII_eq_packetPairing_add_residual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/BilinearPacketPublicEdition2.lean/declarations/typeii-eq-packetpairing-add-residual.md) | 242 | `result-track:8d66ee5b08e3d3d21d8fb2b1b96534740d3b5f3034445ce374456cbc82ecf64e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d9196ff56fa680ee937ae56371702002d7ebfba9a6ad2e8df4c548596e8a092 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

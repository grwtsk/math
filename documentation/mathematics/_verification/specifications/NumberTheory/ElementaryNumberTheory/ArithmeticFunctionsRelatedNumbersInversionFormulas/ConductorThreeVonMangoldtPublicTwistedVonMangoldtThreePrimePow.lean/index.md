# Verification target: Conductor Three Von Mangoldt Public Twisted Von Mangoldt Three Prime Pow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35905e8c3bac767979335fb884708100309a9e1b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variante3a83e2ed4b6d06f62f6e96ff03c00b6df26a3e08b37a159d0544487e655aff2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35905e8c3bac767979335fb884708100309a9e1b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variante3a83e2ed4b6d06f62f6e96ff03c00b6df26a3e08b37a159d0544487e655aff2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variante3a83e2ed4b6d06f62f6e96ff03c00b6df26a3e08b37a159d0544487e655aff2.lean.json)

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
| 1 | `def` | [twistedVonMangoldtThree](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/twistedvonmangoldtthree.md) | 32 | `declaration-track:4149056cedc476623a5561182eb938547dc4dcebad76c34cc5bb10312ade604c` |
| 2 | `def` | [conductorThreePsi](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/conductorthreepsi.md) | 39 | `declaration-track:5656e60e8734c1d786bb116de3c54c26d383b70ba6f1ced4a21119fe3e64575c` |
| 3 | `theorem` | [twistedVonMangoldtThree_mod_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/twistedvonmangoldtthree-mod-zero.md) | 43 | `result-track:9e7a0310c011c8f536eaedebc68349236637951f326758a595c2eec286fa7e1c` |
| 4 | `theorem` | [twistedVonMangoldtThree_mod_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/twistedvonmangoldtthree-mod-one.md) | 49 | `result-track:3d04c8266468326c094be48e0e952392dd6a71d4c0170ed96448a709e1c67bc3` |
| 5 | `theorem` | [twistedVonMangoldtThree_mod_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/twistedvonmangoldtthree-mod-two.md) | 55 | `result-track:dd974556c192fee8295cb2d65975d4895b242ff2c8a502dbf9a018dae4599b00` |
| 6 | `theorem` | [twistedVonMangoldtThree_prime_pow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/twistedvonmangoldtthree-prime-pow.md) | 62 | `result-track:35c56921924fc5fd687f94a170569d35bc9a3b3672cb488583468f11a8fc91ca` |
| 7 | `theorem` | [twistedVonMangoldtThree_eq_residue_difference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/twistedvonmangoldtthree-eq-residue-difference.md) | 74 | `result-track:5913965311adadcf326bc6513e633b61bf3690bbc8a9b1f71c6ec1b6170f7092` |
| 8 | `def` | [residueVonMangoldtThree](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/residuevonmangoldtthree.md) | 84 | `declaration-track:c4c85a56c4f1d096b897f9e0915294d9bea5eabf4a1def7db284b8347bde8919` |
| 9 | `theorem` | [conductorThreePsi_eq_residue_difference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/conductorthreepsi-eq-residue-difference.md) | 90 | `result-track:d2213b279e0937deca7918e32e965398678989758d13ab6418cd39154e87b022` |
| 10 | `def` | [conductorThreePsiComplex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/conductorthreepsicomplex.md) | 100 | `declaration-track:39d1aa8f696ce4f1d722a28f268dba7ae6edb93b6c6047fbd510d4f55c79861e` |
| 11 | `theorem` | [conductorThreePsiComplex_eq_real](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ConductorThreeVonMangoldtPublicTwistedVonMangoldtThreePrimePow.lean/declarations/conductorthreepsicomplex-eq-real.md) | 106 | `result-track:b97908532946b33cf9187db29aedcaa9dc918e83e8f07bbd0104eb2681a38bf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6451c66ecded326bc0fcaf33cd7bc1d48a49df9a4442c1306e3e306c54c33847 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variante3a83e2ed4b6d06f62f6e96ff03c00b6df26a3e08b37a159d0544487e655aff2.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variante3a83e2ed4b6d06f62f6e96ff03c00b6df26a3e08b37a159d0544487e655aff2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
